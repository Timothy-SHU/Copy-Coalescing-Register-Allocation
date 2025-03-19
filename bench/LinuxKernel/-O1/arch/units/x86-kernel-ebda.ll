; ModuleID = 'arch/x86/kernel/ebda.c'
source_filename = "arch/x86/kernel/ebda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.x86_legacy_features, ptr, ptr, ptr, %struct.x86_hyper_runtime, %struct.x86_guest }
%struct.x86_legacy_features = type { i32, i32, i32, i32, i32, %struct.x86_legacy_devices }
%struct.x86_legacy_devices = type { i32 }
%struct.x86_hyper_runtime = type { ptr, ptr, ptr, ptr }
%struct.x86_guest = type { ptr, ptr, ptr, ptr }

@x86_platform = external dso_local global %struct.x86_platform_ops, align 8
@page_offset_base = external dso_local global i64, align 8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @reserve_bios_regions() #0 section ".init.text" align 16 !dbg !16 {
entry:
  %bios_start = alloca i32, align 4
  %ebda_start = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bios_start) #5, !dbg !23
  call void @llvm.dbg.declare(metadata ptr %bios_start, metadata !20, metadata !DIExpression()), !dbg !24
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebda_start) #5, !dbg !23
  call void @llvm.dbg.declare(metadata ptr %ebda_start, metadata !22, metadata !DIExpression()), !dbg !25
  %0 = load i32, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 11, i32 4), align 8, !dbg !26
  %tobool = icmp ne i32 %0, 0, !dbg !28
  br i1 %tobool, label %if.end, label %if.then, !dbg !29

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !30

if.end:                                           ; preds = %entry
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !31
  %add = add i64 1043, %1, !dbg !31
  %2 = inttoptr i64 %add to ptr, !dbg !31
  %3 = load i16, ptr %2, align 2, !dbg !32
  %conv = zext i16 %3 to i32, !dbg !32
  store i32 %conv, ptr %bios_start, align 4, !dbg !33
  %4 = load i32, ptr %bios_start, align 4, !dbg !34
  %shl = shl i32 %4, 10, !dbg !34
  store i32 %shl, ptr %bios_start, align 4, !dbg !34
  %5 = load i32, ptr %bios_start, align 4, !dbg !35
  %cmp = icmp ult i32 %5, 131072, !dbg !37
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !38

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, ptr %bios_start, align 4, !dbg !39
  %cmp2 = icmp ugt i32 %6, 651264, !dbg !40
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !41

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 651264, ptr %bios_start, align 4, !dbg !42
  br label %if.end5, !dbg !43

if.end5:                                          ; preds = %if.then4, %lor.lhs.false
  %call = call i32 @get_bios_ebda() #6, !dbg !44
  store i32 %call, ptr %ebda_start, align 4, !dbg !45
  %7 = load i32, ptr %ebda_start, align 4, !dbg !46
  %cmp6 = icmp uge i32 %7, 131072, !dbg !48
  br i1 %cmp6, label %land.lhs.true, label %if.end11, !dbg !49

land.lhs.true:                                    ; preds = %if.end5
  %8 = load i32, ptr %ebda_start, align 4, !dbg !50
  %9 = load i32, ptr %bios_start, align 4, !dbg !51
  %cmp8 = icmp ult i32 %8, %9, !dbg !52
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !53

if.then10:                                        ; preds = %land.lhs.true
  %10 = load i32, ptr %ebda_start, align 4, !dbg !54
  store i32 %10, ptr %bios_start, align 4, !dbg !55
  br label %if.end11, !dbg !56

if.end11:                                         ; preds = %if.then10, %land.lhs.true, %if.end5
  %11 = load i32, ptr %bios_start, align 4, !dbg !57
  %conv12 = zext i32 %11 to i64, !dbg !57
  %12 = load i32, ptr %bios_start, align 4, !dbg !58
  %sub = sub i32 1048576, %12, !dbg !59
  %conv13 = zext i32 %sub to i64, !dbg !60
  %call14 = call i32 @memblock_reserve(i64 noundef %conv12, i64 noundef %conv13) #6, !dbg !61
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !62
  br label %cleanup, !dbg !62

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebda_start) #5, !dbg !62
  call void @llvm.lifetime.end.p0(i64 4, ptr %bios_start) #5, !dbg !62
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !62

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_bios_ebda() #3 align 16 !dbg !63 {
entry:
  %address = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %address) #5, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %address, metadata !68, metadata !DIExpression()), !dbg !70
  %call = call ptr @phys_to_virt(i64 noundef 1038) #6, !dbg !71
  %0 = load i16, ptr %call, align 2, !dbg !72
  %conv = zext i16 %0 to i32, !dbg !72
  store i32 %conv, ptr %address, align 4, !dbg !70
  %1 = load i32, ptr %address, align 4, !dbg !73
  %shl = shl i32 %1, 4, !dbg !73
  store i32 %shl, ptr %address, align 4, !dbg !73
  %2 = load i32, ptr %address, align 4, !dbg !74
  call void @llvm.lifetime.end.p0(i64 4, ptr %address) #5, !dbg !75
  ret i32 %2, !dbg !76
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !77 dso_local i32 @memblock_reserve(i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @phys_to_virt(i64 noundef %address) #3 align 16 !dbg !89 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !94, metadata !DIExpression()), !dbg !95
  %0 = load i64, ptr %address.addr, align 8, !dbg !96
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !96
  %add = add i64 %0, %1, !dbg !96
  %2 = inttoptr i64 %add to ptr, !dbg !96
  ret ptr %2, !dbg !97
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.ebda.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/ebda\22 -D KBUILD_BASENAME=\22ebda\22 -D KBUILD_MODNAME=\22ebda\22 -D __KBUILD_MODNAME=kmod_ebda -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/ebda.ll arch/x86/kernel/ebda.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/kernel/ebda.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0868161e8e399b1813e81e7a0d5e46f9")
!2 = !{!3, !5, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 8, !"cf-protection-branch", i32 1}
!11 = !{i32 4, !"function_return_thunk_extern", i32 1}
!12 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!13 = !{i32 1, !"Code Model", i32 2}
!14 = !{i32 1, !"override-stack-alignment", i32 8}
!15 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!16 = distinct !DISubprogram(name: "reserve_bios_regions", scope: !1, file: !1, line: 56, type: !17, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !{!20, !22}
!20 = !DILocalVariable(name: "bios_start", scope: !16, file: !1, line: 58, type: !21)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DILocalVariable(name: "ebda_start", scope: !16, file: !1, line: 58, type: !21)
!23 = !DILocation(line: 58, column: 2, scope: !16)
!24 = !DILocation(line: 58, column: 15, scope: !16)
!25 = !DILocation(line: 58, column: 27, scope: !16)
!26 = !DILocation(line: 66, column: 27, scope: !27)
!27 = distinct !DILexicalBlock(scope: !16, file: !1, line: 66, column: 6)
!28 = !DILocation(line: 66, column: 7, scope: !27)
!29 = !DILocation(line: 66, column: 6, scope: !16)
!30 = !DILocation(line: 67, column: 3, scope: !27)
!31 = !DILocation(line: 74, column: 34, scope: !16)
!32 = !DILocation(line: 74, column: 15, scope: !16)
!33 = !DILocation(line: 74, column: 13, scope: !16)
!34 = !DILocation(line: 75, column: 13, scope: !16)
!35 = !DILocation(line: 82, column: 6, scope: !36)
!36 = distinct !DILexicalBlock(scope: !16, file: !1, line: 82, column: 6)
!37 = !DILocation(line: 82, column: 17, scope: !36)
!38 = !DILocation(line: 82, column: 34, scope: !36)
!39 = !DILocation(line: 82, column: 37, scope: !36)
!40 = !DILocation(line: 82, column: 48, scope: !36)
!41 = !DILocation(line: 82, column: 6, scope: !16)
!42 = !DILocation(line: 83, column: 14, scope: !36)
!43 = !DILocation(line: 83, column: 3, scope: !36)
!44 = !DILocation(line: 86, column: 15, scope: !16)
!45 = !DILocation(line: 86, column: 13, scope: !16)
!46 = !DILocation(line: 93, column: 6, scope: !47)
!47 = distinct !DILexicalBlock(scope: !16, file: !1, line: 93, column: 6)
!48 = !DILocation(line: 93, column: 17, scope: !47)
!49 = !DILocation(line: 93, column: 35, scope: !47)
!50 = !DILocation(line: 93, column: 38, scope: !47)
!51 = !DILocation(line: 93, column: 51, scope: !47)
!52 = !DILocation(line: 93, column: 49, scope: !47)
!53 = !DILocation(line: 93, column: 6, scope: !16)
!54 = !DILocation(line: 94, column: 16, scope: !47)
!55 = !DILocation(line: 94, column: 14, scope: !47)
!56 = !DILocation(line: 94, column: 3, scope: !47)
!57 = !DILocation(line: 97, column: 19, scope: !16)
!58 = !DILocation(line: 97, column: 42, scope: !16)
!59 = !DILocation(line: 97, column: 40, scope: !16)
!60 = !DILocation(line: 97, column: 31, scope: !16)
!61 = !DILocation(line: 97, column: 2, scope: !16)
!62 = !DILocation(line: 98, column: 1, scope: !16)
!63 = distinct !DISubprogram(name: "get_bios_ebda", scope: !64, file: !64, line: 10, type: !65, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!64 = !DIFile(filename: "./arch/x86/include/asm/bios_ebda.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5bad262402ea3230888712025074e72a")
!65 = !DISubroutineType(types: !66)
!66 = !{!21}
!67 = !{!68}
!68 = !DILocalVariable(name: "address", scope: !63, file: !64, line: 16, type: !21)
!69 = !DILocation(line: 16, column: 2, scope: !63)
!70 = !DILocation(line: 16, column: 15, scope: !63)
!71 = !DILocation(line: 16, column: 44, scope: !63)
!72 = !DILocation(line: 16, column: 25, scope: !63)
!73 = !DILocation(line: 17, column: 10, scope: !63)
!74 = !DILocation(line: 18, column: 9, scope: !63)
!75 = !DILocation(line: 19, column: 1, scope: !63)
!76 = !DILocation(line: 18, column: 2, scope: !63)
!77 = !DISubprogram(name: "memblock_reserve", scope: !78, file: !78, line: 116, type: !79, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!78 = !DIFile(filename: "./include/linux/memblock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee488cc8c6522cca1567fc06e1716948")
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !82, !82}
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !83, line: 159, baseType: !84)
!83 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !85, line: 23, baseType: !86)
!85 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !87, line: 31, baseType: !88)
!87 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!88 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!89 = distinct !DISubprogram(name: "phys_to_virt", scope: !90, file: !90, line: 147, type: !91, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!90 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!91 = !DISubroutineType(types: !92)
!92 = !{!5, !82}
!93 = !{!94}
!94 = !DILocalVariable(name: "address", arg: 1, scope: !89, file: !90, line: 147, type: !82)
!95 = !DILocation(line: 147, column: 46, scope: !89)
!96 = !DILocation(line: 149, column: 9, scope: !89)
!97 = !DILocation(line: 149, column: 2, scope: !89)
