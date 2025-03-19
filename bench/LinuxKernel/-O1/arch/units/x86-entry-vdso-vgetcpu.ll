; ModuleID = 'arch/x86/entry/vdso/vgetcpu.c'
source_filename = "arch/x86/entry/vdso/vgetcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getcpu = weak alias i64 (ptr, ptr, ptr), ptr @__vdso_getcpu

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define i64 @__vdso_getcpu(ptr noundef %cpu, ptr noundef %node, ptr noundef %unused) #0 align 16 !dbg !12 {
entry:
  %cpu.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %unused.addr = alloca ptr, align 8
  store ptr %cpu, ptr %cpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !28, metadata !DIExpression()), !dbg !31
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !29, metadata !DIExpression()), !dbg !32
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !30, metadata !DIExpression()), !dbg !33
  %0 = load ptr, ptr %cpu.addr, align 8, !dbg !34
  %1 = load ptr, ptr %node.addr, align 8, !dbg !35
  call void @vdso_read_cpunode(ptr noundef %0, ptr noundef %1) #4, !dbg !36
  ret i64 0, !dbg !37
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint noredzone nounwind null_pointer_is_valid uwtable
define internal void @vdso_read_cpunode(ptr noundef %cpu, ptr noundef %node) #2 align 16 !dbg !38 {
entry:
  %cpu.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %p = alloca i32, align 4
  store ptr %cpu, ptr %cpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !43, metadata !DIExpression()), !dbg !46
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !44, metadata !DIExpression()), !dbg !47
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #5, !dbg !48
  call void @llvm.dbg.declare(metadata ptr %p, metadata !45, metadata !DIExpression()), !dbg !49
  %0 = call i32 asm sideeffect "# ALT: oldnstr\0A661:\0A\09lsl $2,$0\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (16*32+22)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0xf3,0x0f,0xc7,0xf8\0A6651:\0A.popsection\0A", "={ax},i,r,~{dirflag},~{fpsr},~{flags}"(i32 0, i32 123) #5, !dbg !50, !srcloc !51
  store i32 %0, ptr %p, align 4, !dbg !50
  %1 = load ptr, ptr %cpu.addr, align 8, !dbg !52
  %tobool = icmp ne ptr %1, null, !dbg !52
  br i1 %tobool, label %if.then, label %if.end, !dbg !54

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %p, align 4, !dbg !55
  %and = and i32 %2, 4095, !dbg !56
  %3 = load ptr, ptr %cpu.addr, align 8, !dbg !57
  store i32 %and, ptr %3, align 4, !dbg !58
  br label %if.end, !dbg !59

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %node.addr, align 8, !dbg !60
  %tobool1 = icmp ne ptr %4, null, !dbg !60
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !62

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %p, align 4, !dbg !63
  %shr = lshr i32 %5, 12, !dbg !64
  %6 = load ptr, ptr %node.addr, align 8, !dbg !65
  store i32 %shr, ptr %6, align 4, !dbg !66
  br label %if.end3, !dbg !67

if.end3:                                          ; preds = %if.then2, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #5, !dbg !68
  ret void, !dbg !68
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { noredzone nounwind null_pointer_is_valid uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { inlinehint noredzone nounwind null_pointer_is_valid uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/entry/vdso/.vgetcpu.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -mcmodel=small -fPIC -O1 -fasynchronous-unwind-tables -m64 -fno-stack-protector -fno-omit-frame-pointer -foptimize-sibling-calls -D DISABLE_BRANCH_PROFILING -D BUILD_VDSO -mretpoline -D KBUILD_MODFILE=\22arch/x86/entry/vdso/vgetcpu\22 -D KBUILD_BASENAME=\22vgetcpu\22 -D KBUILD_MODNAME=\22vgetcpu\22 -D __KBUILD_MODNAME=kmod_vgetcpu -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/entry/vdso/vgetcpu.ll arch/x86/entry/vdso/vgetcpu.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/entry/vdso/vgetcpu.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac158ae3a3abef4ff201b32fae18c7f1")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 1, !"Code Model", i32 1}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{i32 1, !"override-stack-alignment", i32 8}
!11 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!12 = distinct !DISubprogram(name: "__vdso_getcpu", scope: !1, file: !1, line: 14, type: !13, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !16, !16, !18}
!15 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "getcpu_cache", file: !20, line: 15, size: 1024, elements: !21)
!20 = !DIFile(filename: "./include/linux/getcpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b892d1c5d1ff691eb387e5e5f86b10c")
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !19, file: !20, line: 16, baseType: !23, size: 1024)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1024, elements: !25)
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !{!26}
!26 = !DISubrange(count: 16)
!27 = !{!28, !29, !30}
!28 = !DILocalVariable(name: "cpu", arg: 1, scope: !12, file: !1, line: 14, type: !16)
!29 = !DILocalVariable(name: "node", arg: 2, scope: !12, file: !1, line: 14, type: !16)
!30 = !DILocalVariable(name: "unused", arg: 3, scope: !12, file: !1, line: 14, type: !18)
!31 = !DILocation(line: 14, column: 25, scope: !12)
!32 = !DILocation(line: 14, column: 40, scope: !12)
!33 = !DILocation(line: 14, column: 67, scope: !12)
!34 = !DILocation(line: 16, column: 20, scope: !12)
!35 = !DILocation(line: 16, column: 25, scope: !12)
!36 = !DILocation(line: 16, column: 2, scope: !12)
!37 = !DILocation(line: 18, column: 2, scope: !12)
!38 = distinct !DISubprogram(name: "vdso_read_cpunode", scope: !39, file: !39, line: 245, type: !40, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !42)
!39 = !DIFile(filename: "./arch/x86/include/asm/segment.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0acd26a367bd989e3418ddf9d21a076")
!40 = !DISubroutineType(types: !41)
!41 = !{null, !16, !16}
!42 = !{!43, !44, !45}
!43 = !DILocalVariable(name: "cpu", arg: 1, scope: !38, file: !39, line: 245, type: !16)
!44 = !DILocalVariable(name: "node", arg: 2, scope: !38, file: !39, line: 245, type: !16)
!45 = !DILocalVariable(name: "p", scope: !38, file: !39, line: 247, type: !17)
!46 = !DILocation(line: 245, column: 48, scope: !38)
!47 = !DILocation(line: 245, column: 63, scope: !38)
!48 = !DILocation(line: 247, column: 2, scope: !38)
!49 = !DILocation(line: 247, column: 15, scope: !38)
!50 = !DILocation(line: 257, column: 2, scope: !38)
!51 = !{i64 2148058399, i64 2148058427, i64 2148058433, i64 2148058449, i64 2148058465, i64 2148058492, i64 2148058821, i64 2148058129, i64 2148058827, i64 2148058875, i64 2148058939, i64 2148059003, i64 2148059060, i64 2148058210, i64 2148058235, i64 2148059267, i64 2148059408, i64 2148059328, i64 2148059422, i64 2148058327}
!52 = !DILocation(line: 262, column: 6, scope: !53)
!53 = distinct !DILexicalBlock(scope: !38, file: !39, line: 262, column: 6)
!54 = !DILocation(line: 262, column: 6, scope: !38)
!55 = !DILocation(line: 263, column: 11, scope: !53)
!56 = !DILocation(line: 263, column: 13, scope: !53)
!57 = !DILocation(line: 263, column: 4, scope: !53)
!58 = !DILocation(line: 263, column: 8, scope: !53)
!59 = !DILocation(line: 263, column: 3, scope: !53)
!60 = !DILocation(line: 264, column: 6, scope: !61)
!61 = distinct !DILexicalBlock(scope: !38, file: !39, line: 264, column: 6)
!62 = !DILocation(line: 264, column: 6, scope: !38)
!63 = !DILocation(line: 265, column: 12, scope: !61)
!64 = !DILocation(line: 265, column: 14, scope: !61)
!65 = !DILocation(line: 265, column: 4, scope: !61)
!66 = !DILocation(line: 265, column: 9, scope: !61)
!67 = !DILocation(line: 265, column: 3, scope: !61)
!68 = !DILocation(line: 266, column: 1, scope: !38)
