; ModuleID = 'lib/crypto/mpi/generic_mpih-rshift.c'
source_filename = "lib/crypto/mpi/generic_mpih-rshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @mpihelp_rshift(ptr noundef %wp, ptr noundef %up, i32 noundef %usize, i32 noundef %cnt) #0 align 16 !dbg !11 {
entry:
  %wp.addr = alloca ptr, align 8
  %up.addr = alloca ptr, align 8
  %usize.addr = alloca i32, align 4
  %cnt.addr = alloca i32, align 4
  %high_limb = alloca i64, align 8
  %low_limb = alloca i64, align 8
  %sh_1 = alloca i32, align 4
  %sh_2 = alloca i32, align 4
  %i = alloca i32, align 4
  %retval1 = alloca i64, align 8
  store ptr %wp, ptr %wp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wp.addr, metadata !24, metadata !DIExpression()), !dbg !34
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !25, metadata !DIExpression()), !dbg !35
  store i32 %usize, ptr %usize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usize.addr, metadata !26, metadata !DIExpression()), !dbg !36
  store i32 %cnt, ptr %cnt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !27, metadata !DIExpression()), !dbg !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %high_limb) #3, !dbg !38
  call void @llvm.dbg.declare(metadata ptr %high_limb, metadata !28, metadata !DIExpression()), !dbg !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_limb) #3, !dbg !38
  call void @llvm.dbg.declare(metadata ptr %low_limb, metadata !29, metadata !DIExpression()), !dbg !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %sh_1) #3, !dbg !41
  call void @llvm.dbg.declare(metadata ptr %sh_1, metadata !30, metadata !DIExpression()), !dbg !42
  call void @llvm.lifetime.start.p0(i64 4, ptr %sh_2) #3, !dbg !41
  call void @llvm.dbg.declare(metadata ptr %sh_2, metadata !31, metadata !DIExpression()), !dbg !43
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3, !dbg !44
  call void @llvm.dbg.declare(metadata ptr %i, metadata !32, metadata !DIExpression()), !dbg !45
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #3, !dbg !46
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !33, metadata !DIExpression()), !dbg !47
  %0 = load i32, ptr %cnt.addr, align 4, !dbg !48
  store i32 %0, ptr %sh_1, align 4, !dbg !49
  %1 = load ptr, ptr %wp.addr, align 8, !dbg !50
  %add.ptr = getelementptr i64, ptr %1, i64 -1, !dbg !50
  store ptr %add.ptr, ptr %wp.addr, align 8, !dbg !50
  %2 = load i32, ptr %sh_1, align 4, !dbg !51
  %sub = sub i32 64, %2, !dbg !52
  store i32 %sub, ptr %sh_2, align 4, !dbg !53
  %3 = load ptr, ptr %up.addr, align 8, !dbg !54
  %arrayidx = getelementptr i64, ptr %3, i64 0, !dbg !54
  %4 = load i64, ptr %arrayidx, align 8, !dbg !54
  store i64 %4, ptr %high_limb, align 8, !dbg !55
  %5 = load i64, ptr %high_limb, align 8, !dbg !56
  %6 = load i32, ptr %sh_2, align 4, !dbg !57
  %sh_prom = zext i32 %6 to i64, !dbg !58
  %shl = shl i64 %5, %sh_prom, !dbg !58
  store i64 %shl, ptr %retval1, align 8, !dbg !59
  %7 = load i64, ptr %high_limb, align 8, !dbg !60
  store i64 %7, ptr %low_limb, align 8, !dbg !61
  store i32 1, ptr %i, align 4, !dbg !62
  br label %for.cond, !dbg !64

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %i, align 4, !dbg !65
  %9 = load i32, ptr %usize.addr, align 4, !dbg !67
  %cmp = icmp slt i32 %8, %9, !dbg !68
  br i1 %cmp, label %for.body, label %for.end, !dbg !69

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %up.addr, align 8, !dbg !70
  %11 = load i32, ptr %i, align 4, !dbg !72
  %idxprom = sext i32 %11 to i64, !dbg !70
  %arrayidx2 = getelementptr i64, ptr %10, i64 %idxprom, !dbg !70
  %12 = load i64, ptr %arrayidx2, align 8, !dbg !70
  store i64 %12, ptr %high_limb, align 8, !dbg !73
  %13 = load i64, ptr %low_limb, align 8, !dbg !74
  %14 = load i32, ptr %sh_1, align 4, !dbg !75
  %sh_prom3 = zext i32 %14 to i64, !dbg !76
  %shr = lshr i64 %13, %sh_prom3, !dbg !76
  %15 = load i64, ptr %high_limb, align 8, !dbg !77
  %16 = load i32, ptr %sh_2, align 4, !dbg !78
  %sh_prom4 = zext i32 %16 to i64, !dbg !79
  %shl5 = shl i64 %15, %sh_prom4, !dbg !79
  %or = or i64 %shr, %shl5, !dbg !80
  %17 = load ptr, ptr %wp.addr, align 8, !dbg !81
  %18 = load i32, ptr %i, align 4, !dbg !82
  %idxprom6 = sext i32 %18 to i64, !dbg !81
  %arrayidx7 = getelementptr i64, ptr %17, i64 %idxprom6, !dbg !81
  store i64 %or, ptr %arrayidx7, align 8, !dbg !83
  %19 = load i64, ptr %high_limb, align 8, !dbg !84
  store i64 %19, ptr %low_limb, align 8, !dbg !85
  br label %for.inc, !dbg !86

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4, !dbg !87
  %inc = add i32 %20, 1, !dbg !87
  store i32 %inc, ptr %i, align 4, !dbg !87
  br label %for.cond, !dbg !88, !llvm.loop !89

for.end:                                          ; preds = %for.cond
  %21 = load i64, ptr %low_limb, align 8, !dbg !93
  %22 = load i32, ptr %sh_1, align 4, !dbg !94
  %sh_prom8 = zext i32 %22 to i64, !dbg !95
  %shr9 = lshr i64 %21, %sh_prom8, !dbg !95
  %23 = load ptr, ptr %wp.addr, align 8, !dbg !96
  %24 = load i32, ptr %i, align 4, !dbg !97
  %idxprom10 = sext i32 %24 to i64, !dbg !96
  %arrayidx11 = getelementptr i64, ptr %23, i64 %idxprom10, !dbg !96
  store i64 %shr9, ptr %arrayidx11, align 8, !dbg !98
  %25 = load i64, ptr %retval1, align 8, !dbg !99
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #3, !dbg !100
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3, !dbg !100
  call void @llvm.lifetime.end.p0(i64 4, ptr %sh_2) #3, !dbg !100
  call void @llvm.lifetime.end.p0(i64 4, ptr %sh_1) #3, !dbg !100
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_limb) #3, !dbg !100
  call void @llvm.lifetime.end.p0(i64 8, ptr %high_limb) #3, !dbg !100
  ret i64 %25, !dbg !101
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.generic_mpih-rshift.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22generic_mpih_rshift\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/generic_mpih-rshift.ll lib/crypto/mpi/generic_mpih-rshift.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lib/crypto/mpi/generic_mpih-rshift.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58cb76eaa2b9a7ff01ccb49308341c4")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!11 = distinct !DISubprogram(name: "mpihelp_rshift", scope: !1, file: !1, line: 29, type: !12, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !17, !17, !20, !22}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !15, line: 26, baseType: !16)
!15 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_ptr_t", file: !18, line: 52, baseType: !19)
!18 = !DIFile(filename: "lib/crypto/mpi/mpi-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cffaba334cfde932ee1944172d38d6ce")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_size_t", file: !18, line: 53, baseType: !21)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!24 = !DILocalVariable(name: "wp", arg: 1, scope: !11, file: !1, line: 29, type: !17)
!25 = !DILocalVariable(name: "up", arg: 2, scope: !11, file: !1, line: 29, type: !17)
!26 = !DILocalVariable(name: "usize", arg: 3, scope: !11, file: !1, line: 29, type: !20)
!27 = !DILocalVariable(name: "cnt", arg: 4, scope: !11, file: !1, line: 29, type: !22)
!28 = !DILocalVariable(name: "high_limb", scope: !11, file: !1, line: 31, type: !14)
!29 = !DILocalVariable(name: "low_limb", scope: !11, file: !1, line: 31, type: !14)
!30 = !DILocalVariable(name: "sh_1", scope: !11, file: !1, line: 32, type: !22)
!31 = !DILocalVariable(name: "sh_2", scope: !11, file: !1, line: 32, type: !22)
!32 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 33, type: !20)
!33 = !DILocalVariable(name: "retval", scope: !11, file: !1, line: 34, type: !14)
!34 = !DILocation(line: 29, column: 26, scope: !11)
!35 = !DILocation(line: 29, column: 40, scope: !11)
!36 = !DILocation(line: 29, column: 55, scope: !11)
!37 = !DILocation(line: 29, column: 71, scope: !11)
!38 = !DILocation(line: 31, column: 2, scope: !11)
!39 = !DILocation(line: 31, column: 13, scope: !11)
!40 = !DILocation(line: 31, column: 24, scope: !11)
!41 = !DILocation(line: 32, column: 2, scope: !11)
!42 = !DILocation(line: 32, column: 11, scope: !11)
!43 = !DILocation(line: 32, column: 17, scope: !11)
!44 = !DILocation(line: 33, column: 2, scope: !11)
!45 = !DILocation(line: 33, column: 13, scope: !11)
!46 = !DILocation(line: 34, column: 2, scope: !11)
!47 = !DILocation(line: 34, column: 13, scope: !11)
!48 = !DILocation(line: 36, column: 9, scope: !11)
!49 = !DILocation(line: 36, column: 7, scope: !11)
!50 = !DILocation(line: 37, column: 5, scope: !11)
!51 = !DILocation(line: 38, column: 29, scope: !11)
!52 = !DILocation(line: 38, column: 27, scope: !11)
!53 = !DILocation(line: 38, column: 7, scope: !11)
!54 = !DILocation(line: 39, column: 14, scope: !11)
!55 = !DILocation(line: 39, column: 12, scope: !11)
!56 = !DILocation(line: 40, column: 11, scope: !11)
!57 = !DILocation(line: 40, column: 24, scope: !11)
!58 = !DILocation(line: 40, column: 21, scope: !11)
!59 = !DILocation(line: 40, column: 9, scope: !11)
!60 = !DILocation(line: 41, column: 13, scope: !11)
!61 = !DILocation(line: 41, column: 11, scope: !11)
!62 = !DILocation(line: 42, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !11, file: !1, line: 42, column: 2)
!64 = !DILocation(line: 42, column: 7, scope: !63)
!65 = !DILocation(line: 42, column: 14, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !1, line: 42, column: 2)
!67 = !DILocation(line: 42, column: 18, scope: !66)
!68 = !DILocation(line: 42, column: 16, scope: !66)
!69 = !DILocation(line: 42, column: 2, scope: !63)
!70 = !DILocation(line: 43, column: 15, scope: !71)
!71 = distinct !DILexicalBlock(scope: !66, file: !1, line: 42, column: 30)
!72 = !DILocation(line: 43, column: 18, scope: !71)
!73 = !DILocation(line: 43, column: 13, scope: !71)
!74 = !DILocation(line: 44, column: 12, scope: !71)
!75 = !DILocation(line: 44, column: 24, scope: !71)
!76 = !DILocation(line: 44, column: 21, scope: !71)
!77 = !DILocation(line: 44, column: 33, scope: !71)
!78 = !DILocation(line: 44, column: 46, scope: !71)
!79 = !DILocation(line: 44, column: 43, scope: !71)
!80 = !DILocation(line: 44, column: 30, scope: !71)
!81 = !DILocation(line: 44, column: 3, scope: !71)
!82 = !DILocation(line: 44, column: 6, scope: !71)
!83 = !DILocation(line: 44, column: 9, scope: !71)
!84 = !DILocation(line: 45, column: 14, scope: !71)
!85 = !DILocation(line: 45, column: 12, scope: !71)
!86 = !DILocation(line: 46, column: 2, scope: !71)
!87 = !DILocation(line: 42, column: 26, scope: !66)
!88 = !DILocation(line: 42, column: 2, scope: !66)
!89 = distinct !{!89, !69, !90, !91, !92}
!90 = !DILocation(line: 46, column: 2, scope: !63)
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = !DILocation(line: 47, column: 10, scope: !11)
!94 = !DILocation(line: 47, column: 22, scope: !11)
!95 = !DILocation(line: 47, column: 19, scope: !11)
!96 = !DILocation(line: 47, column: 2, scope: !11)
!97 = !DILocation(line: 47, column: 5, scope: !11)
!98 = !DILocation(line: 47, column: 8, scope: !11)
!99 = !DILocation(line: 49, column: 9, scope: !11)
!100 = !DILocation(line: 50, column: 1, scope: !11)
!101 = !DILocation(line: 49, column: 2, scope: !11)
