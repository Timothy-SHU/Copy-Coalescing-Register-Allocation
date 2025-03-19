; ModuleID = 'drivers/gpu/drm/display/drm_display_helper_mod.c'
source_filename = "drivers/gpu/drm/display/drm_display_helper_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_drm_display_helper__198_21_drm_display_helper_module_init\22, \22a\22\09\09"
module asm "__initcall__kmod_drm_display_helper__198_21_drm_display_helper_module_init6:\09\09\09"
module asm ".long\09__initstub__kmod_drm_display_helper__198_21_drm_display_helper_module_init6 - .\09"
module asm ".previous\09\09\09\09\09"

@__UNIQUE_ID_description195 = internal constant [58 x i8] c"drm_display_helper.description=DRM display adapter helper\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_file196 = internal constant [67 x i8] c"drm_display_helper.file=drivers/gpu/drm/display/drm_display_helper\00", section ".modinfo", align 1, !dbg !7
@__UNIQUE_ID_license197 = internal constant [53 x i8] c"drm_display_helper.license=GPL and additional rights\00", section ".modinfo", align 1, !dbg !14
@__UNIQUE_ID___addressable___initstub__kmod_drm_display_helper__198_21_drm_display_helper_module_init6199 = internal global ptr @__initstub__kmod_drm_display_helper__198_21_drm_display_helper_module_init6, section ".discard.addressable", align 8, !dbg !19
@__exitcall_drm_display_helper_module_exit = internal global ptr @drm_display_helper_module_exit, section ".exitcall.exit", align 8, !dbg !21
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description195, ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197, ptr @drm_display_helper_module_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_drm_display_helper__198_21_drm_display_helper_module_init6199, ptr @__exitcall_drm_display_helper_module_exit], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @drm_display_helper_module_exit() #0 section ".exit.text" align 16 !dbg !40 {
entry:
  call void @drm_dp_aux_dev_exit() #2, !dbg !41
  ret void, !dbg !42
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_dp_aux_dev_exit() #1 align 16 !dbg !43 {
entry:
  ret void, !dbg !45
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_drm_display_helper__198_21_drm_display_helper_module_init6() #0 section ".init.text" align 16 !dbg !46 {
entry:
  %call = call i32 @drm_display_helper_module_init() #3, !dbg !50
  ret i32 %call, !dbg !50
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @drm_display_helper_module_init() #0 section ".init.text" align 16 !dbg !51 {
entry:
  %call = call i32 @drm_dp_aux_dev_init() #2, !dbg !52
  ret i32 %call, !dbg !53
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_dp_aux_dev_init() #1 align 16 !dbg !54 {
entry:
  ret i32 0, !dbg !55
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone }
attributes #3 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description195", scope: !2, file: !3, line: 7, type: !28, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/display/.drm_display_helper_mod.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/display/drm_display_helper\22 -D KBUILD_BASENAME=\22drm_display_helper_mod\22 -D KBUILD_MODNAME=\22drm_display_helper\22 -D __KBUILD_MODNAME=kmod_drm_display_helper -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/display/drm_display_helper_mod.ll drivers/gpu/drm/display/drm_display_helper_mod.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/display/drm_display_helper_mod.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0241bbd56c987ac49d23b6a9ce4a27eb")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !14, !19, !21}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file196", scope: !2, file: !3, line: 8, type: !9, isLocal: true, isDefinition: true, align: 8)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 536, elements: !12)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !{!13}
!13 = !DISubrange(count: 67)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license197", scope: !2, file: !3, line: 8, type: !16, isLocal: true, isDefinition: true, align: 8)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 424, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 53)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_drm_display_helper__198_21_drm_display_helper_module_init6199", scope: !2, file: !3, line: 21, type: !5, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "__exitcall_drm_display_helper_module_exit", scope: !2, file: !3, line: 22, type: !23, isLocal: true, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !24, line: 120, baseType: !25)
!24 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{null}
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 464, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 58)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 8, !"cf-protection-branch", i32 1}
!35 = !{i32 4, !"function_return_thunk_extern", i32 1}
!36 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!37 = !{i32 1, !"Code Model", i32 2}
!38 = !{i32 1, !"override-stack-alignment", i32 8}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = distinct !DISubprogram(name: "drm_display_helper_module_exit", scope: !3, file: !3, line: 15, type: !26, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!41 = !DILocation(line: 18, column: 2, scope: !40)
!42 = !DILocation(line: 19, column: 1, scope: !40)
!43 = distinct !DISubprogram(name: "drm_dp_aux_dev_exit", scope: !44, file: !44, line: 19, type: !26, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!44 = !DIFile(filename: "drivers/gpu/drm/display/drm_dp_helper_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4cbd3bf59155dd373c44694e29d054f7")
!45 = !DILocation(line: 21, column: 1, scope: !43)
!46 = distinct !DISubprogram(name: "__initstub__kmod_drm_display_helper__198_21_drm_display_helper_module_init6", scope: !3, file: !3, line: 21, type: !47, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!47 = !DISubroutineType(types: !48)
!48 = !{!49}
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DILocation(line: 21, column: 1, scope: !46)
!51 = distinct !DISubprogram(name: "drm_display_helper_module_init", scope: !3, file: !3, line: 10, type: !47, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!52 = !DILocation(line: 12, column: 9, scope: !51)
!53 = !DILocation(line: 12, column: 2, scope: !51)
!54 = distinct !DISubprogram(name: "drm_dp_aux_dev_init", scope: !44, file: !44, line: 14, type: !47, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!55 = !DILocation(line: 16, column: 2, scope: !54)
