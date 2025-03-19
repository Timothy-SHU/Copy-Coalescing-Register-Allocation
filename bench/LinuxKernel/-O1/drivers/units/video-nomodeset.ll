; ModuleID = 'drivers/video/nomodeset.c'
source_filename = "drivers/video/nomodeset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_video_firmware_drivers_only: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad video_firmware_drivers_only ; .previous"

%struct.obs_kernel_param = type { ptr, ptr, i32 }

@video_nomodeset = internal global i8 0, align 1, !dbg !0
@__UNIQUE_ID___addressable_video_firmware_drivers_only195 = internal global ptr @video_firmware_drivers_only, section ".discard.addressable", align 8, !dbg !14
@__setup_str_disable_modeset = internal constant [10 x i8] c"nomodeset\00", section ".init.rodata", align 1, !dbg !32
@__setup_disable_modeset = internal global %struct.obs_kernel_param { ptr @__setup_str_disable_modeset, ptr @disable_modeset, i32 0 }, section ".init.setup", align 8, !dbg !16
@.str = private unnamed_addr constant [86 x i8] c"\014Booted with the nomodeset parameter. Only the system framebuffer will be available\0A\00", align 1, !dbg !37
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_video_firmware_drivers_only195, ptr @__setup_disable_modeset], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @video_firmware_drivers_only() #0 align 16 !dbg !54 {
entry:
  %0 = load i8, ptr @video_nomodeset, align 1, !dbg !57, !range !58, !noundef !59
  %tobool = trunc i8 %0 to i1, !dbg !57
  ret i1 %tobool, !dbg !60
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @disable_modeset(ptr noundef %str) #1 section ".init.text" align 16 !dbg !61 {
entry:
  %str.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !63, metadata !DIExpression()), !dbg !64
  store i8 1, ptr @video_nomodeset, align 1, !dbg !65
  br label %do.body, !dbg !66

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !68

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str) #4, !dbg !66
  store i32 %call, ptr %tmp, align 4, !dbg !68
  %0 = load i32, ptr %tmp, align 4, !dbg !66
  ret i32 1, !dbg !70
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !71 dso_local i32 @_printk(ptr noundef, ...) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "video_nomodeset", scope: !2, file: !3, line: 8, type: !42, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/video/.nomodeset.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/video/nomodeset\22 -D KBUILD_BASENAME=\22nomodeset\22 -D KBUILD_MODNAME=\22nomodeset\22 -D __KBUILD_MODNAME=kmod_nomodeset -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/video/nomodeset.ll drivers/video/nomodeset.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/nomodeset.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9d483387e96c12624e1b5fcd8e5cdb2")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!14, !16, !0, !32, !37}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_video_firmware_drivers_only195", scope: !2, file: !3, line: 14, type: !12, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "__setup_disable_modeset", scope: !2, file: !3, line: 26, type: !18, isLocal: true, isDefinition: true, align: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !19, line: 324, size: 192, elements: !20)
!19 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!20 = !{!21, !25, !31}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !18, file: !19, line: 325, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !18, file: !19, line: 326, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !30}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !18, file: !19, line: 327, baseType: !29, size: 32, offset: 128)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "__setup_str_disable_modeset", scope: !2, file: !3, line: 26, type: !34, isLocal: true, isDefinition: true, align: 8)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 80, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 10)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !3, line: 20, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 688, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 86)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !43, line: 35, baseType: !44)
!43 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!44 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!45 = !{i32 7, !"Dwarf Version", i32 5}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 8, !"cf-protection-branch", i32 1}
!49 = !{i32 4, !"function_return_thunk_extern", i32 1}
!50 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!51 = !{i32 1, !"Code Model", i32 2}
!52 = !{i32 1, !"override-stack-alignment", i32 8}
!53 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!54 = distinct !DISubprogram(name: "video_firmware_drivers_only", scope: !3, file: !3, line: 10, type: !55, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{!42}
!57 = !DILocation(line: 12, column: 9, scope: !54)
!58 = !{i8 0, i8 2}
!59 = !{}
!60 = !DILocation(line: 12, column: 2, scope: !54)
!61 = distinct !DISubprogram(name: "disable_modeset", scope: !3, file: !3, line: 16, type: !27, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !62)
!62 = !{!63}
!63 = !DILocalVariable(name: "str", arg: 1, scope: !61, file: !3, line: 16, type: !30)
!64 = !DILocation(line: 16, column: 41, scope: !61)
!65 = !DILocation(line: 18, column: 18, scope: !61)
!66 = !DILocation(line: 20, column: 2, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !3, line: 20, column: 2)
!68 = !DILocation(line: 20, column: 2, scope: !69)
!69 = distinct !DILexicalBlock(scope: !67, file: !3, line: 20, column: 2)
!70 = !DILocation(line: 22, column: 2, scope: !61)
!71 = !DISubprogram(name: "_printk", scope: !72, file: !72, line: 153, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!72 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!73 = !DISubroutineType(types: !74)
!74 = !{!29, !22, null}
