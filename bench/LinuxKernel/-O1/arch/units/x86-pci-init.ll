; ModuleID = 'arch/x86/pci/init.c'
source_filename = "arch/x86/pci/init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall3.init..kmod_init__292_51_pci_arch_init\22, \22a\22\09\09"
module asm "__initcall__kmod_init__292_51_pci_arch_init3:\09\09\09"
module asm ".long\09__initstub__kmod_init__292_51_pci_arch_init3 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.x86_init_ops = type { %struct.x86_init_resources, %struct.x86_init_mpparse, %struct.x86_init_irqs, %struct.x86_init_oem, %struct.x86_init_paging, %struct.x86_init_timers, %struct.x86_init_iommu, %struct.x86_init_pci, %struct.x86_hyper_init, %struct.x86_init_acpi }
%struct.x86_init_resources = type { ptr, ptr, ptr, ptr }
%struct.x86_init_mpparse = type { ptr, ptr, ptr }
%struct.x86_init_irqs = type { ptr, ptr, ptr, ptr, ptr }
%struct.x86_init_oem = type { ptr, ptr }
%struct.x86_init_paging = type { ptr }
%struct.x86_init_timers = type { ptr, ptr, ptr }
%struct.x86_init_iommu = type { ptr }
%struct.x86_init_pci = type { ptr, ptr, ptr, ptr }
%struct.x86_hyper_init = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x86_init_acpi = type { ptr, ptr, ptr }

@__UNIQUE_ID___addressable___initstub__kmod_init__292_51_pci_arch_init3293 = internal global ptr @__initstub__kmod_init__292_51_pci_arch_init3, section ".discard.addressable", align 8, !dbg !0
@pci_probe = external dso_local global i32, align 4
@x86_init = external dso_local global %struct.x86_init_ops, align 8
@raw_pci_ops = external dso_local global ptr, align 8
@raw_pci_ext_ops = external dso_local global ptr, align 8
@.str = private unnamed_addr constant [53 x i8] c"\013PCI: Fatal: No config space access function found\0A\00", align 1, !dbg !7
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_init__292_51_pci_arch_init3293], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_init__292_51_pci_arch_init3() #0 section ".init.text" align 16 !dbg !22 {
entry:
  %call = call i32 @pci_arch_init() #6, !dbg !26
  ret i32 %call, !dbg !26
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pci_arch_init() #0 section ".init.text" align 16 !dbg !27 {
entry:
  %retval = alloca i32, align 4
  %type = alloca i32, align 4
  %pcbios = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #7, !dbg !31
  call void @llvm.dbg.declare(metadata ptr %type, metadata !29, metadata !DIExpression()), !dbg !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %pcbios) #7, !dbg !31
  call void @llvm.dbg.declare(metadata ptr %pcbios, metadata !30, metadata !DIExpression()), !dbg !33
  store i32 1, ptr %pcbios, align 4, !dbg !33
  %call = call i32 @pci_direct_probe() #8, !dbg !34
  store i32 %call, ptr %type, align 4, !dbg !35
  %0 = load i32, ptr @pci_probe, align 4, !dbg !36
  %and = and i32 %0, 16, !dbg !38
  %tobool = icmp ne i32 %and, 0, !dbg !38
  br i1 %tobool, label %if.end, label %if.then, !dbg !39

if.then:                                          ; preds = %entry
  call void @pci_mmcfg_early_init() #6, !dbg !40
  br label %if.end, !dbg !40

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 7), align 8, !dbg !41
  %tobool1 = icmp ne ptr %1, null, !dbg !43
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !44

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 7), align 8, !dbg !45
  %call3 = call i32 %2() #8, !dbg !46
  store i32 %call3, ptr %pcbios, align 4, !dbg !47
  br label %if.end4, !dbg !48

if.end4:                                          ; preds = %if.then2, %if.end
  call void @x86_create_pci_msi_domain() #8, !dbg !49
  %3 = load i32, ptr %pcbios, align 4, !dbg !50
  %tobool5 = icmp ne i32 %3, 0, !dbg !50
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !52

if.then6:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !53
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !53

if.end7:                                          ; preds = %if.end4
  call void @pci_pcbios_init() #8, !dbg !54
  %4 = load i32, ptr %type, align 4, !dbg !55
  call void @pci_direct_init(i32 noundef %4) #8, !dbg !56
  %5 = load ptr, ptr @raw_pci_ops, align 8, !dbg !57
  %tobool8 = icmp ne ptr %5, null, !dbg !57
  br i1 %tobool8, label %if.end12, label %land.lhs.true, !dbg !59

land.lhs.true:                                    ; preds = %if.end7
  %6 = load ptr, ptr @raw_pci_ext_ops, align 8, !dbg !60
  %tobool9 = icmp ne ptr %6, null, !dbg !60
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !61

if.then10:                                        ; preds = %land.lhs.true
  br label %do.body, !dbg !62

do.body:                                          ; preds = %if.then10
  br label %do.cond, !dbg !64

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !64

do.end:                                           ; preds = %do.cond
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #6, !dbg !62
  store i32 %call11, ptr %tmp, align 4, !dbg !64
  %7 = load i32, ptr %tmp, align 4, !dbg !62
  br label %if.end12, !dbg !66

if.end12:                                         ; preds = %do.end, %land.lhs.true, %if.end7
  call void @dmi_check_pciprobe() #6, !dbg !67
  call void @dmi_check_skip_isa_align() #6, !dbg !68
  store i32 0, ptr %retval, align 4, !dbg !69
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !69

cleanup:                                          ; preds = %if.end12, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %pcbios) #7, !dbg !70
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #7, !dbg !70
  %8 = load i32, ptr %retval, align 4, !dbg !70
  ret i32 %8, !dbg !70
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !71 dso_local i32 @pci_direct_probe() #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !73 dso_local void @pci_mmcfg_early_init() #4 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !77 dso_local void @x86_create_pci_msi_domain() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_pcbios_init() #5 align 16 !dbg !79 {
entry:
  ret void, !dbg !80
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !81 dso_local void @pci_direct_init(i32 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !84 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !90 dso_local void @dmi_check_pciprobe() #4 section ".init.text"

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !91 dso_local void @dmi_check_skip_isa_align() #4 section ".init.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_init__292_51_pci_arch_init3293", scope: !2, file: !3, line: 51, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/pci/.init.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/pci/init\22 -D KBUILD_BASENAME=\22init\22 -D KBUILD_MODNAME=\22init\22 -D __KBUILD_MODNAME=kmod_init -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/pci/init.ll arch/x86/pci/init.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/pci/init.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "25cb4752702accc8162616367fead3ff")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 424, elements: !11)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{!12}
!12 = !DISubrange(count: 53)
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 8, !"cf-protection-branch", i32 1}
!17 = !{i32 4, !"function_return_thunk_extern", i32 1}
!18 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!19 = !{i32 1, !"Code Model", i32 2}
!20 = !{i32 1, !"override-stack-alignment", i32 8}
!21 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!22 = distinct !DISubprogram(name: "__initstub__kmod_init__292_51_pci_arch_init3", scope: !3, file: !3, line: 51, type: !23, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{!25}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DILocation(line: 51, column: 1, scope: !22)
!27 = distinct !DISubprogram(name: "pci_arch_init", scope: !3, file: !3, line: 10, type: !23, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !28)
!28 = !{!29, !30}
!29 = !DILocalVariable(name: "type", scope: !27, file: !3, line: 12, type: !25)
!30 = !DILocalVariable(name: "pcbios", scope: !27, file: !3, line: 12, type: !25)
!31 = !DILocation(line: 12, column: 2, scope: !27)
!32 = !DILocation(line: 12, column: 6, scope: !27)
!33 = !DILocation(line: 12, column: 12, scope: !27)
!34 = !DILocation(line: 14, column: 9, scope: !27)
!35 = !DILocation(line: 14, column: 7, scope: !27)
!36 = !DILocation(line: 16, column: 8, scope: !37)
!37 = distinct !DILexicalBlock(scope: !27, file: !3, line: 16, column: 6)
!38 = !DILocation(line: 16, column: 18, scope: !37)
!39 = !DILocation(line: 16, column: 6, scope: !27)
!40 = !DILocation(line: 17, column: 3, scope: !37)
!41 = !DILocation(line: 19, column: 19, scope: !42)
!42 = distinct !DILexicalBlock(scope: !27, file: !3, line: 19, column: 6)
!43 = !DILocation(line: 19, column: 6, scope: !42)
!44 = !DILocation(line: 19, column: 6, scope: !27)
!45 = !DILocation(line: 20, column: 25, scope: !42)
!46 = !DILocation(line: 20, column: 12, scope: !42)
!47 = !DILocation(line: 20, column: 10, scope: !42)
!48 = !DILocation(line: 20, column: 3, scope: !42)
!49 = !DILocation(line: 26, column: 2, scope: !27)
!50 = !DILocation(line: 28, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !27, file: !3, line: 28, column: 6)
!52 = !DILocation(line: 28, column: 6, scope: !27)
!53 = !DILocation(line: 29, column: 3, scope: !51)
!54 = !DILocation(line: 31, column: 2, scope: !27)
!55 = !DILocation(line: 39, column: 18, scope: !27)
!56 = !DILocation(line: 39, column: 2, scope: !27)
!57 = !DILocation(line: 41, column: 7, scope: !58)
!58 = distinct !DILexicalBlock(scope: !27, file: !3, line: 41, column: 6)
!59 = !DILocation(line: 41, column: 19, scope: !58)
!60 = !DILocation(line: 41, column: 23, scope: !58)
!61 = !DILocation(line: 41, column: 6, scope: !27)
!62 = !DILocation(line: 42, column: 3, scope: !63)
!63 = distinct !DILexicalBlock(scope: !58, file: !3, line: 42, column: 3)
!64 = !DILocation(line: 42, column: 3, scope: !65)
!65 = distinct !DILexicalBlock(scope: !63, file: !3, line: 42, column: 3)
!66 = !DILocation(line: 42, column: 3, scope: !58)
!67 = !DILocation(line: 45, column: 2, scope: !27)
!68 = !DILocation(line: 47, column: 2, scope: !27)
!69 = !DILocation(line: 49, column: 2, scope: !27)
!70 = !DILocation(line: 50, column: 1, scope: !27)
!71 = !DISubprogram(name: "pci_direct_probe", scope: !72, file: !72, line: 134, type: !23, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!72 = !DIFile(filename: "./arch/x86/include/asm/pci_x86.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c32a69340c2514dde4670e44e5a823b3")
!73 = !DISubprogram(name: "pci_mmcfg_early_init", scope: !74, file: !74, line: 2313, type: !75, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!74 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!75 = !DISubroutineType(types: !76)
!76 = !{null}
!77 = !DISubprogram(name: "x86_create_pci_msi_domain", scope: !78, file: !78, line: 55, type: !75, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!78 = !DIFile(filename: "./arch/x86/include/asm/irqdomain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2bc4706fb07cfd8e9ed646beaa0668fd")
!79 = distinct !DISubprogram(name: "pci_pcbios_init", scope: !72, file: !72, line: 144, type: !75, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!80 = !DILocation(line: 144, column: 44, scope: !79)
!81 = !DISubprogram(name: "pci_direct_init", scope: !72, file: !72, line: 135, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !25}
!84 = !DISubprogram(name: "_printk", scope: !85, file: !85, line: 153, type: !86, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!86 = !DISubroutineType(types: !87)
!87 = !{!25, !88, null}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!90 = !DISubprogram(name: "dmi_check_pciprobe", scope: !72, file: !72, line: 147, type: !75, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!91 = !DISubprogram(name: "dmi_check_skip_isa_align", scope: !72, file: !72, line: 148, type: !75, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
