; ModuleID = 'arch/x86/mm/maccess.c'
source_filename = "arch/x86/mm/maccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }

@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @copy_from_kernel_nofault_allowed(ptr noundef %unsafe_src, i64 noundef %size) #0 align 16 !dbg !25 {
entry:
  %retval = alloca i1, align 1
  %unsafe_src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %vaddr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %unsafe_src, ptr %unsafe_src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unsafe_src.addr, metadata !38, metadata !DIExpression()), !dbg !41
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !39, metadata !DIExpression()), !dbg !42
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr) #6, !dbg !43
  call void @llvm.dbg.declare(metadata ptr %vaddr, metadata !40, metadata !DIExpression()), !dbg !44
  %0 = load ptr, ptr %unsafe_src.addr, align 8, !dbg !45
  %1 = ptrtoint ptr %0 to i64, !dbg !46
  store i64 %1, ptr %vaddr, align 8, !dbg !44
  %2 = load i64, ptr %vaddr, align 8, !dbg !47
  %call = call i64 @task_size_max() #7, !dbg !49
  %add = add i64 %call, 4096, !dbg !50
  %cmp = icmp ult i64 %2, %add, !dbg !51
  br i1 %cmp, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !53
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !53

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %vaddr, align 8, !dbg !54
  %call1 = call zeroext i1 @is_vsyscall_vaddr(i64 noundef %3) #7, !dbg !56
  br i1 %call1, label %if.then2, label %if.end3, !dbg !57

if.then2:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !58
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !58

if.end3:                                          ; preds = %if.end
  %4 = load i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 4), align 8, !dbg !59
  %tobool = icmp ne i8 %4, 0, !dbg !61
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !62

if.then4:                                         ; preds = %if.end3
  store i1 true, ptr %retval, align 1, !dbg !63
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !63

if.end5:                                          ; preds = %if.end3
  %5 = load i64, ptr %vaddr, align 8, !dbg !64
  %6 = load i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 4), align 8, !dbg !65
  %call6 = call i64 @__is_canonical_address(i64 noundef %5, i8 noundef zeroext %6) #7, !dbg !66
  %tobool7 = icmp ne i64 %call6, 0, !dbg !66
  store i1 %tobool7, ptr %retval, align 1, !dbg !67
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !67

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr) #6, !dbg !68
  %7 = load i1, ptr %retval, align 1, !dbg !68
  ret i1 %7, !dbg !68
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @task_size_max() #3 align 16 !dbg !69 {
entry:
  %ret = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !74, metadata !DIExpression()), !dbg !76
  %0 = call i64 asm sideeffect "# ALT: oldnstr\0A661:\0A\09movq $2,$0\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (16*32+16)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09movq $3,$0\0A6651:\0A.popsection\0A", "=r,i,i,i,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 140737488351232, i64 72057594037923840) #6, !dbg !77, !srcloc !78
  store i64 %0, ptr %ret, align 8, !dbg !77
  %1 = load i64, ptr %ret, align 8, !dbg !79
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !80
  ret i64 %1, !dbg !81
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_vsyscall_vaddr(i64 noundef %vaddr) #4 align 16 !dbg !82 {
entry:
  %vaddr.addr = alloca i64, align 8
  store i64 %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !87, metadata !DIExpression()), !dbg !88
  %0 = load i64, ptr %vaddr.addr, align 8, !dbg !89
  %and = and i64 %0, -4096, !dbg !89
  %cmp = icmp eq i64 %and, -10485760, !dbg !89
  %lnot = xor i1 %cmp, true, !dbg !89
  %lnot1 = xor i1 %lnot, true, !dbg !89
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !89
  %conv = sext i32 %lnot.ext to i64, !dbg !89
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !89
  %tobool = icmp ne i64 %expval, 0, !dbg !89
  ret i1 %tobool, !dbg !90
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__is_canonical_address(i64 noundef %vaddr, i8 noundef zeroext %vaddr_bits) #3 align 16 !dbg !91 {
entry:
  %vaddr.addr = alloca i64, align 8
  %vaddr_bits.addr = alloca i8, align 1
  store i64 %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !102, metadata !DIExpression()), !dbg !104
  store i8 %vaddr_bits, ptr %vaddr_bits.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %vaddr_bits.addr, metadata !103, metadata !DIExpression()), !dbg !105
  %0 = load i64, ptr %vaddr.addr, align 8, !dbg !106
  %1 = load i8, ptr %vaddr_bits.addr, align 1, !dbg !107
  %call = call i64 @__canonical_address(i64 noundef %0, i8 noundef zeroext %1) #7, !dbg !108
  %2 = load i64, ptr %vaddr.addr, align 8, !dbg !109
  %cmp = icmp eq i64 %call, %2, !dbg !110
  %conv = zext i1 %cmp to i32, !dbg !110
  %conv1 = sext i32 %conv to i64, !dbg !108
  ret i64 %conv1, !dbg !111
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__canonical_address(i64 noundef %vaddr, i8 noundef zeroext %vaddr_bits) #3 align 16 !dbg !112 {
entry:
  %vaddr.addr = alloca i64, align 8
  %vaddr_bits.addr = alloca i8, align 1
  store i64 %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !114, metadata !DIExpression()), !dbg !116
  store i8 %vaddr_bits, ptr %vaddr_bits.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %vaddr_bits.addr, metadata !115, metadata !DIExpression()), !dbg !117
  %0 = load i64, ptr %vaddr.addr, align 8, !dbg !118
  %1 = load i8, ptr %vaddr_bits.addr, align 1, !dbg !119
  %conv = zext i8 %1 to i32, !dbg !119
  %sub = sub i32 64, %conv, !dbg !120
  %sh_prom = zext i32 %sub to i64, !dbg !121
  %shl = shl i64 %0, %sh_prom, !dbg !121
  %2 = load i8, ptr %vaddr_bits.addr, align 1, !dbg !122
  %conv1 = zext i8 %2 to i32, !dbg !122
  %sub2 = sub i32 64, %conv1, !dbg !123
  %sh_prom3 = zext i32 %sub2 to i64, !dbg !124
  %shr = ashr i64 %shl, %sh_prom3, !dbg !124
  ret i64 %shr, !dbg !125
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/mm/.maccess.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/mm/maccess\22 -D KBUILD_BASENAME=\22maccess\22 -D KBUILD_MODNAME=\22maccess\22 -D __KBUILD_MODNAME=kmod_maccess -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/mm/maccess.ll arch/x86/mm/maccess.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/mm/maccess.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "249b23b47e80c693ebb011001b02a732")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "false", value: 0)
!8 = !DIEnumerator(name: "true", value: 1)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !12, line: 22, baseType: !13)
!12 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !14, line: 30, baseType: !15)
!14 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!15 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 8, !"cf-protection-branch", i32 1}
!20 = !{i32 4, !"function_return_thunk_extern", i32 1}
!21 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!22 = !{i32 1, !"Code Model", i32 2}
!23 = !{i32 1, !"override-stack-alignment", i32 8}
!24 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!25 = distinct !DISubprogram(name: "copy_from_kernel_nofault_allowed", scope: !1, file: !1, line: 9, type: !26, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !31, !33}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !29, line: 35, baseType: !30)
!29 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!30 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 61, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !35, line: 72, baseType: !36)
!35 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !35, line: 16, baseType: !10)
!37 = !{!38, !39, !40}
!38 = !DILocalVariable(name: "unsafe_src", arg: 1, scope: !25, file: !1, line: 9, type: !31)
!39 = !DILocalVariable(name: "size", arg: 2, scope: !25, file: !1, line: 9, type: !33)
!40 = !DILocalVariable(name: "vaddr", scope: !25, file: !1, line: 11, type: !10)
!41 = !DILocation(line: 9, column: 51, scope: !25)
!42 = !DILocation(line: 9, column: 70, scope: !25)
!43 = !DILocation(line: 11, column: 2, scope: !25)
!44 = !DILocation(line: 11, column: 16, scope: !25)
!45 = !DILocation(line: 11, column: 39, scope: !25)
!46 = !DILocation(line: 11, column: 24, scope: !25)
!47 = !DILocation(line: 17, column: 6, scope: !48)
!48 = distinct !DILexicalBlock(scope: !25, file: !1, line: 17, column: 6)
!49 = !DILocation(line: 17, column: 14, scope: !48)
!50 = !DILocation(line: 17, column: 28, scope: !48)
!51 = !DILocation(line: 17, column: 12, scope: !48)
!52 = !DILocation(line: 17, column: 6, scope: !25)
!53 = !DILocation(line: 18, column: 3, scope: !48)
!54 = !DILocation(line: 25, column: 24, scope: !55)
!55 = distinct !DILexicalBlock(scope: !25, file: !1, line: 25, column: 6)
!56 = !DILocation(line: 25, column: 6, scope: !55)
!57 = !DILocation(line: 25, column: 6, scope: !25)
!58 = !DILocation(line: 26, column: 3, scope: !55)
!59 = !DILocation(line: 33, column: 21, scope: !60)
!60 = distinct !DILexicalBlock(scope: !25, file: !1, line: 33, column: 6)
!61 = !DILocation(line: 33, column: 7, scope: !60)
!62 = !DILocation(line: 33, column: 6, scope: !25)
!63 = !DILocation(line: 34, column: 3, scope: !60)
!64 = !DILocation(line: 36, column: 32, scope: !25)
!65 = !DILocation(line: 36, column: 53, scope: !25)
!66 = !DILocation(line: 36, column: 9, scope: !25)
!67 = !DILocation(line: 36, column: 2, scope: !25)
!68 = !DILocation(line: 37, column: 1, scope: !25)
!69 = distinct !DISubprogram(name: "task_size_max", scope: !70, file: !70, line: 83, type: !71, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!70 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!71 = !DISubroutineType(types: !72)
!72 = !{!10}
!73 = !{!74}
!74 = !DILocalVariable(name: "ret", scope: !69, file: !70, line: 85, type: !10)
!75 = !DILocation(line: 85, column: 2, scope: !69)
!76 = !DILocation(line: 85, column: 16, scope: !69)
!77 = !DILocation(line: 87, column: 2, scope: !69)
!78 = !{i64 2149177250, i64 2149177278, i64 2149177284, i64 2149177300, i64 2149177316, i64 2149177343, i64 2149177673, i64 2149176988, i64 2149177679, i64 2149177727, i64 2149177791, i64 2149177855, i64 2149177912, i64 2149177069, i64 2149177094, i64 2149178119, i64 2149178251, i64 2149178180, i64 2149178265, i64 2149177186}
!79 = !DILocation(line: 93, column: 9, scope: !69)
!80 = !DILocation(line: 94, column: 1, scope: !69)
!81 = !DILocation(line: 93, column: 2, scope: !69)
!82 = distinct !DISubprogram(name: "is_vsyscall_vaddr", scope: !83, file: !83, line: 32, type: !84, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!83 = !DIFile(filename: "./arch/x86/include/asm/vsyscall.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b053b7e2f15fe85fedc46775209d8f75")
!84 = !DISubroutineType(types: !85)
!85 = !{!28, !10}
!86 = !{!87}
!87 = !DILocalVariable(name: "vaddr", arg: 1, scope: !82, file: !83, line: 32, type: !10)
!88 = !DILocation(line: 32, column: 52, scope: !82)
!89 = !DILocation(line: 34, column: 9, scope: !82)
!90 = !DILocation(line: 34, column: 2, scope: !82)
!91 = distinct !DISubprogram(name: "__is_canonical_address", scope: !92, file: !92, line: 82, type: !93, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !101)
!92 = !DIFile(filename: "./arch/x86/include/asm/page.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a6e97e761984fe2bbe50c4dfb6c2f4a3")
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !95, !98}
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !12, line: 23, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !14, line: 31, baseType: !97)
!97 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !12, line: 17, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !14, line: 21, baseType: !100)
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !{!102, !103}
!102 = !DILocalVariable(name: "vaddr", arg: 1, scope: !91, file: !92, line: 82, type: !95)
!103 = !DILocalVariable(name: "vaddr_bits", arg: 2, scope: !91, file: !92, line: 82, type: !98)
!104 = !DILocation(line: 82, column: 55, scope: !91)
!105 = !DILocation(line: 82, column: 65, scope: !91)
!106 = !DILocation(line: 84, column: 29, scope: !91)
!107 = !DILocation(line: 84, column: 36, scope: !91)
!108 = !DILocation(line: 84, column: 9, scope: !91)
!109 = !DILocation(line: 84, column: 51, scope: !91)
!110 = !DILocation(line: 84, column: 48, scope: !91)
!111 = !DILocation(line: 84, column: 2, scope: !91)
!112 = distinct !DISubprogram(name: "__canonical_address", scope: !92, file: !92, line: 77, type: !93, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !113)
!113 = !{!114, !115}
!114 = !DILocalVariable(name: "vaddr", arg: 1, scope: !112, file: !92, line: 77, type: !95)
!115 = !DILocalVariable(name: "vaddr_bits", arg: 2, scope: !112, file: !92, line: 77, type: !98)
!116 = !DILocation(line: 77, column: 52, scope: !112)
!117 = !DILocation(line: 77, column: 62, scope: !112)
!118 = !DILocation(line: 79, column: 15, scope: !112)
!119 = !DILocation(line: 79, column: 30, scope: !112)
!120 = !DILocation(line: 79, column: 28, scope: !112)
!121 = !DILocation(line: 79, column: 21, scope: !112)
!122 = !DILocation(line: 79, column: 52, scope: !112)
!123 = !DILocation(line: 79, column: 50, scope: !112)
!124 = !DILocation(line: 79, column: 43, scope: !112)
!125 = !DILocation(line: 79, column: 2, scope: !112)
