; ModuleID = 'arch/x86/kernel/platform-quirks.c'
source_filename = "arch/x86/kernel/platform-quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.x86_legacy_features, ptr, ptr, ptr, %struct.x86_hyper_runtime, %struct.x86_guest }
%struct.x86_legacy_features = type { i32, i32, i32, i32, i32, %struct.x86_legacy_devices }
%struct.x86_legacy_devices = type { i32 }
%struct.x86_hyper_runtime = type { ptr, ptr, ptr, ptr }
%struct.x86_guest = type { ptr, ptr, ptr, ptr }
%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type <{ i64, i64, i32 }>
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon, %union.anon.5, i8, i8 }>
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { i64 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i8, i8, i16, i32, i64 }

@x86_platform = external dso_local global %struct.x86_platform_ops, align 8
@boot_params = external dso_local global %struct.boot_params, align 1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @x86_early_init_platform_quirks() #0 section ".init.text" align 16 !dbg !28 {
entry:
  store i32 2, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 11), align 8, !dbg !31
  store i32 1, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 11, i32 1), align 4, !dbg !32
  store i32 1, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 11, i32 2), align 8, !dbg !33
  store i32 0, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 11, i32 4), align 8, !dbg !34
  store i32 1, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 11, i32 5), align 4, !dbg !35
  %0 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 30), align 1, !dbg !36
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb2
  ], !dbg !37

sw.bb:                                            ; preds = %entry
  store i32 1, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 11, i32 4), align 8, !dbg !38
  br label %sw.epilog, !dbg !40

sw.bb1:                                           ; preds = %entry
  store i32 0, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 11, i32 5), align 4, !dbg !41
  store i32 0, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 11, i32 1), align 4, !dbg !42
  br label %sw.epilog, !dbg !43

sw.bb2:                                           ; preds = %entry, %entry
  store i32 0, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 11, i32 5), align 4, !dbg !44
  store i32 0, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 11, i32 1), align 4, !dbg !45
  store i32 0, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 11), align 8, !dbg !46
  br label %sw.epilog, !dbg !47

sw.epilog:                                        ; preds = %entry, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 12), align 8, !dbg !48
  %tobool = icmp ne ptr %1, null, !dbg !50
  br i1 %tobool, label %if.then, label %if.end, !dbg !51

if.then:                                          ; preds = %sw.epilog
  %2 = load ptr, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 12), align 8, !dbg !52
  call void %2() #1, !dbg !53
  br label %if.end, !dbg !53

if.end:                                           ; preds = %if.then, %sw.epilog
  ret void, !dbg !54
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden zeroext i1 @x86_pnpbios_disabled() #0 section ".init.text" align 16 !dbg !55 {
entry:
  %0 = load i32, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 11, i32 5), align 4, !dbg !61
  %cmp = icmp eq i32 %0, 0, !dbg !62
  ret i1 %cmp, !dbg !63
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.platform-quirks.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/platform-quirks\22 -D KBUILD_BASENAME=\22platform_quirks\22 -D KBUILD_MODNAME=\22platform_quirks\22 -D __KBUILD_MODNAME=kmod_platform_quirks -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/platform-quirks.ll arch/x86/kernel/platform-quirks.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/kernel/platform-quirks.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98aa140dcbd9ab8b99583ae711cca132")
!2 = !{!3, !10}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "x86_legacy_i8042_state", file: !4, line: 225, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "X86_LEGACY_I8042_PLATFORM_ABSENT", value: 0)
!8 = !DIEnumerator(name: "X86_LEGACY_I8042_FIRMWARE_ABSENT", value: 1)
!9 = !DIEnumerator(name: "X86_LEGACY_I8042_EXPECTED_PRESENT", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "x86_hardware_subarch", file: !11, line: 274, baseType: !5, size: 32, elements: !12)
!11 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!12 = !{!13, !14, !15, !16, !17, !18}
!13 = !DIEnumerator(name: "X86_SUBARCH_PC", value: 0)
!14 = !DIEnumerator(name: "X86_SUBARCH_LGUEST", value: 1)
!15 = !DIEnumerator(name: "X86_SUBARCH_XEN", value: 2)
!16 = !DIEnumerator(name: "X86_SUBARCH_INTEL_MID", value: 3)
!17 = !DIEnumerator(name: "X86_SUBARCH_CE4100", value: 4)
!18 = !DIEnumerator(name: "X86_NR_SUBARCHS", value: 5)
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 8, !"cf-protection-branch", i32 1}
!23 = !{i32 4, !"function_return_thunk_extern", i32 1}
!24 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!25 = !{i32 1, !"Code Model", i32 2}
!26 = !{i32 1, !"override-stack-alignment", i32 8}
!27 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!28 = distinct !DISubprogram(name: "x86_early_init_platform_quirks", scope: !1, file: !1, line: 9, type: !29, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!29 = !DISubroutineType(types: !30)
!30 = !{null}
!31 = !DILocation(line: 11, column: 28, scope: !28)
!32 = !DILocation(line: 12, column: 26, scope: !28)
!33 = !DILocation(line: 13, column: 33, scope: !28)
!34 = !DILocation(line: 14, column: 43, scope: !28)
!35 = !DILocation(line: 15, column: 38, scope: !28)
!36 = !DILocation(line: 17, column: 26, scope: !28)
!37 = !DILocation(line: 17, column: 2, scope: !28)
!38 = !DILocation(line: 19, column: 44, scope: !39)
!39 = distinct !DILexicalBlock(scope: !28, file: !1, line: 17, column: 44)
!40 = !DILocation(line: 20, column: 3, scope: !39)
!41 = !DILocation(line: 22, column: 39, scope: !39)
!42 = !DILocation(line: 23, column: 27, scope: !39)
!43 = !DILocation(line: 24, column: 3, scope: !39)
!44 = !DILocation(line: 27, column: 39, scope: !39)
!45 = !DILocation(line: 28, column: 27, scope: !39)
!46 = !DILocation(line: 29, column: 29, scope: !39)
!47 = !DILocation(line: 30, column: 3, scope: !39)
!48 = !DILocation(line: 33, column: 19, scope: !49)
!49 = distinct !DILexicalBlock(scope: !28, file: !1, line: 33, column: 6)
!50 = !DILocation(line: 33, column: 6, scope: !49)
!51 = !DILocation(line: 33, column: 6, scope: !28)
!52 = !DILocation(line: 34, column: 16, scope: !49)
!53 = !DILocation(line: 34, column: 3, scope: !49)
!54 = !DILocation(line: 35, column: 1, scope: !28)
!55 = distinct !DISubprogram(name: "x86_pnpbios_disabled", scope: !1, file: !1, line: 37, type: !56, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!56 = !DISubroutineType(types: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !59, line: 35, baseType: !60)
!59 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!60 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!61 = !DILocation(line: 39, column: 37, scope: !55)
!62 = !DILocation(line: 39, column: 45, scope: !55)
!63 = !DILocation(line: 39, column: 2, scope: !55)
