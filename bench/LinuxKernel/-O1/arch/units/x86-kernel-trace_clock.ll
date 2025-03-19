; ModuleID = 'arch/x86/kernel/trace_clock.c'
source_filename = "arch/x86/kernel/trace_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @trace_clock_x86_tsc() #0 align 16 !dbg !11 {
entry:
  %call = call i64 @rdtsc_ordered() #4, !dbg !19
  ret i64 %call, !dbg !20
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rdtsc_ordered() #1 align 16 !dbg !21 {
entry:
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #5, !dbg !29
  call void @llvm.dbg.declare(metadata ptr %low, metadata !26, metadata !DIExpression()), !dbg !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #5, !dbg !29
  call void @llvm.dbg.declare(metadata ptr %high, metadata !28, metadata !DIExpression()), !dbg !29
  %0 = call { i64, i64 } asm sideeffect "# ALT: oldinstr2\0A661:\0A\09rdtsc\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ( 1*32+27)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence; rdtsc\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09rdtscp\0A6652:\0A.popsection\0A", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !30, !srcloc !31
  %asmresult = extractvalue { i64, i64 } %0, 0, !dbg !30
  %asmresult1 = extractvalue { i64, i64 } %0, 1, !dbg !30
  store i64 %asmresult, ptr %low, align 8, !dbg !30
  store i64 %asmresult1, ptr %high, align 8, !dbg !30
  %1 = load i64, ptr %low, align 8, !dbg !32
  %2 = load i64, ptr %high, align 8, !dbg !32
  %shl = shl i64 %2, 32, !dbg !32
  %or = or i64 %1, %shl, !dbg !32
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #5, !dbg !33
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #5, !dbg !33
  ret i64 %or, !dbg !34
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.trace_clock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/trace_clock\22 -D KBUILD_BASENAME=\22trace_clock\22 -D KBUILD_MODNAME=\22trace_clock\22 -D __KBUILD_MODNAME=kmod_trace_clock -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/trace_clock.ll arch/x86/kernel/trace_clock.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/kernel/trace_clock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2c8d0cd5f75af15c24d2b73c6ea2f9cf")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!11 = distinct !DISubprogram(name: "trace_clock_x86_tsc", scope: !1, file: !1, line: 14, type: !12, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !15, line: 23, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !17, line: 31, baseType: !18)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!18 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!19 = !DILocation(line: 16, column: 9, scope: !11)
!20 = !DILocation(line: 16, column: 2, scope: !11)
!21 = distinct !DISubprogram(name: "rdtsc_ordered", scope: !22, file: !22, line: 197, type: !23, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !25)
!22 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!23 = !DISubroutineType(types: !24)
!24 = !{!18}
!25 = !{!26, !28}
!26 = !DILocalVariable(name: "low", scope: !21, file: !22, line: 199, type: !27)
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !DILocalVariable(name: "high", scope: !21, file: !22, line: 199, type: !27)
!29 = !DILocation(line: 199, column: 2, scope: !21)
!30 = !DILocation(line: 215, column: 2, scope: !21)
!31 = !{i64 2148868917, i64 2148868950, i64 2148868956, i64 2148868972, i64 2148868991, i64 2148869022, i64 2148869974, i64 2148868548, i64 2148869980, i64 2148870028, i64 2148870092, i64 2148870156, i64 2148870213, i64 2148870420, i64 2148870468, i64 2148870532, i64 2148870596, i64 2148870653, i64 2148868666, i64 2148868691, i64 2148870860, i64 2148870989, i64 2148870921, i64 2148871003, i64 2148871017, i64 2148871139, i64 2148871078, i64 2148871153, i64 2148868825}
!32 = !DILocation(line: 222, column: 9, scope: !21)
!33 = !DILocation(line: 223, column: 1, scope: !21)
!34 = !DILocation(line: 222, column: 2, scope: !21)
