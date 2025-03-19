; ModuleID = 'lib/crypto/mpi/generic_mpih-lshift.c'
source_filename = "lib/crypto/mpi/generic_mpih-lshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @mpihelp_lshift(ptr noundef %wp, ptr noundef %up, i32 noundef %usize, i32 noundef %cnt) #0 align 16 !dbg !11 {
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
  %add.ptr = getelementptr i64, ptr %1, i64 1, !dbg !50
  store ptr %add.ptr, ptr %wp.addr, align 8, !dbg !50
  %2 = load i32, ptr %sh_1, align 4, !dbg !51
  %sub = sub i32 64, %2, !dbg !52
  store i32 %sub, ptr %sh_2, align 4, !dbg !53
  %3 = load i32, ptr %usize.addr, align 4, !dbg !54
  %sub2 = sub i32 %3, 1, !dbg !55
  store i32 %sub2, ptr %i, align 4, !dbg !56
  %4 = load ptr, ptr %up.addr, align 8, !dbg !57
  %5 = load i32, ptr %i, align 4, !dbg !58
  %idxprom = sext i32 %5 to i64, !dbg !57
  %arrayidx = getelementptr i64, ptr %4, i64 %idxprom, !dbg !57
  %6 = load i64, ptr %arrayidx, align 8, !dbg !57
  store i64 %6, ptr %low_limb, align 8, !dbg !59
  %7 = load i64, ptr %low_limb, align 8, !dbg !60
  %8 = load i32, ptr %sh_2, align 4, !dbg !61
  %sh_prom = zext i32 %8 to i64, !dbg !62
  %shr = lshr i64 %7, %sh_prom, !dbg !62
  store i64 %shr, ptr %retval1, align 8, !dbg !63
  %9 = load i64, ptr %low_limb, align 8, !dbg !64
  store i64 %9, ptr %high_limb, align 8, !dbg !65
  br label %while.cond, !dbg !66

while.cond:                                       ; preds = %while.body, %entry
  %10 = load i32, ptr %i, align 4, !dbg !67
  %dec = add i32 %10, -1, !dbg !67
  store i32 %dec, ptr %i, align 4, !dbg !67
  %cmp = icmp sge i32 %dec, 0, !dbg !68
  br i1 %cmp, label %while.body, label %while.end, !dbg !66

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %up.addr, align 8, !dbg !69
  %12 = load i32, ptr %i, align 4, !dbg !71
  %idxprom3 = sext i32 %12 to i64, !dbg !69
  %arrayidx4 = getelementptr i64, ptr %11, i64 %idxprom3, !dbg !69
  %13 = load i64, ptr %arrayidx4, align 8, !dbg !69
  store i64 %13, ptr %low_limb, align 8, !dbg !72
  %14 = load i64, ptr %high_limb, align 8, !dbg !73
  %15 = load i32, ptr %sh_1, align 4, !dbg !74
  %sh_prom5 = zext i32 %15 to i64, !dbg !75
  %shl = shl i64 %14, %sh_prom5, !dbg !75
  %16 = load i64, ptr %low_limb, align 8, !dbg !76
  %17 = load i32, ptr %sh_2, align 4, !dbg !77
  %sh_prom6 = zext i32 %17 to i64, !dbg !78
  %shr7 = lshr i64 %16, %sh_prom6, !dbg !78
  %or = or i64 %shl, %shr7, !dbg !79
  %18 = load ptr, ptr %wp.addr, align 8, !dbg !80
  %19 = load i32, ptr %i, align 4, !dbg !81
  %idxprom8 = sext i32 %19 to i64, !dbg !80
  %arrayidx9 = getelementptr i64, ptr %18, i64 %idxprom8, !dbg !80
  store i64 %or, ptr %arrayidx9, align 8, !dbg !82
  %20 = load i64, ptr %low_limb, align 8, !dbg !83
  store i64 %20, ptr %high_limb, align 8, !dbg !84
  br label %while.cond, !dbg !66, !llvm.loop !85

while.end:                                        ; preds = %while.cond
  %21 = load i64, ptr %high_limb, align 8, !dbg !89
  %22 = load i32, ptr %sh_1, align 4, !dbg !90
  %sh_prom10 = zext i32 %22 to i64, !dbg !91
  %shl11 = shl i64 %21, %sh_prom10, !dbg !91
  %23 = load ptr, ptr %wp.addr, align 8, !dbg !92
  %24 = load i32, ptr %i, align 4, !dbg !93
  %idxprom12 = sext i32 %24 to i64, !dbg !92
  %arrayidx13 = getelementptr i64, ptr %23, i64 %idxprom12, !dbg !92
  store i64 %shl11, ptr %arrayidx13, align 8, !dbg !94
  %25 = load i64, ptr %retval1, align 8, !dbg !95
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #3, !dbg !96
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3, !dbg !96
  call void @llvm.lifetime.end.p0(i64 4, ptr %sh_2) #3, !dbg !96
  call void @llvm.lifetime.end.p0(i64 4, ptr %sh_1) #3, !dbg !96
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_limb) #3, !dbg !96
  call void @llvm.lifetime.end.p0(i64 8, ptr %high_limb) #3, !dbg !96
  ret i64 %25, !dbg !97
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

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.generic_mpih-lshift.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22generic_mpih_lshift\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/generic_mpih-lshift.ll lib/crypto/mpi/generic_mpih-lshift.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lib/crypto/mpi/generic_mpih-lshift.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "508107047dd451134fb111b6ff211f3e")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!11 = distinct !DISubprogram(name: "mpihelp_lshift", scope: !1, file: !1, line: 28, type: !12, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
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
!24 = !DILocalVariable(name: "wp", arg: 1, scope: !11, file: !1, line: 28, type: !17)
!25 = !DILocalVariable(name: "up", arg: 2, scope: !11, file: !1, line: 28, type: !17)
!26 = !DILocalVariable(name: "usize", arg: 3, scope: !11, file: !1, line: 28, type: !20)
!27 = !DILocalVariable(name: "cnt", arg: 4, scope: !11, file: !1, line: 28, type: !22)
!28 = !DILocalVariable(name: "high_limb", scope: !11, file: !1, line: 30, type: !14)
!29 = !DILocalVariable(name: "low_limb", scope: !11, file: !1, line: 30, type: !14)
!30 = !DILocalVariable(name: "sh_1", scope: !11, file: !1, line: 31, type: !22)
!31 = !DILocalVariable(name: "sh_2", scope: !11, file: !1, line: 31, type: !22)
!32 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 32, type: !20)
!33 = !DILocalVariable(name: "retval", scope: !11, file: !1, line: 33, type: !14)
!34 = !DILocation(line: 28, column: 26, scope: !11)
!35 = !DILocation(line: 28, column: 40, scope: !11)
!36 = !DILocation(line: 28, column: 55, scope: !11)
!37 = !DILocation(line: 28, column: 75, scope: !11)
!38 = !DILocation(line: 30, column: 2, scope: !11)
!39 = !DILocation(line: 30, column: 13, scope: !11)
!40 = !DILocation(line: 30, column: 24, scope: !11)
!41 = !DILocation(line: 31, column: 2, scope: !11)
!42 = !DILocation(line: 31, column: 11, scope: !11)
!43 = !DILocation(line: 31, column: 17, scope: !11)
!44 = !DILocation(line: 32, column: 2, scope: !11)
!45 = !DILocation(line: 32, column: 13, scope: !11)
!46 = !DILocation(line: 33, column: 2, scope: !11)
!47 = !DILocation(line: 33, column: 13, scope: !11)
!48 = !DILocation(line: 35, column: 9, scope: !11)
!49 = !DILocation(line: 35, column: 7, scope: !11)
!50 = !DILocation(line: 36, column: 5, scope: !11)
!51 = !DILocation(line: 37, column: 29, scope: !11)
!52 = !DILocation(line: 37, column: 27, scope: !11)
!53 = !DILocation(line: 37, column: 7, scope: !11)
!54 = !DILocation(line: 38, column: 6, scope: !11)
!55 = !DILocation(line: 38, column: 12, scope: !11)
!56 = !DILocation(line: 38, column: 4, scope: !11)
!57 = !DILocation(line: 39, column: 13, scope: !11)
!58 = !DILocation(line: 39, column: 16, scope: !11)
!59 = !DILocation(line: 39, column: 11, scope: !11)
!60 = !DILocation(line: 40, column: 11, scope: !11)
!61 = !DILocation(line: 40, column: 23, scope: !11)
!62 = !DILocation(line: 40, column: 20, scope: !11)
!63 = !DILocation(line: 40, column: 9, scope: !11)
!64 = !DILocation(line: 41, column: 14, scope: !11)
!65 = !DILocation(line: 41, column: 12, scope: !11)
!66 = !DILocation(line: 42, column: 2, scope: !11)
!67 = !DILocation(line: 42, column: 9, scope: !11)
!68 = !DILocation(line: 42, column: 13, scope: !11)
!69 = !DILocation(line: 43, column: 14, scope: !70)
!70 = distinct !DILexicalBlock(scope: !11, file: !1, line: 42, column: 19)
!71 = !DILocation(line: 43, column: 17, scope: !70)
!72 = !DILocation(line: 43, column: 12, scope: !70)
!73 = !DILocation(line: 44, column: 12, scope: !70)
!74 = !DILocation(line: 44, column: 25, scope: !70)
!75 = !DILocation(line: 44, column: 22, scope: !70)
!76 = !DILocation(line: 44, column: 34, scope: !70)
!77 = !DILocation(line: 44, column: 46, scope: !70)
!78 = !DILocation(line: 44, column: 43, scope: !70)
!79 = !DILocation(line: 44, column: 31, scope: !70)
!80 = !DILocation(line: 44, column: 3, scope: !70)
!81 = !DILocation(line: 44, column: 6, scope: !70)
!82 = !DILocation(line: 44, column: 9, scope: !70)
!83 = !DILocation(line: 45, column: 15, scope: !70)
!84 = !DILocation(line: 45, column: 13, scope: !70)
!85 = distinct !{!85, !66, !86, !87, !88}
!86 = !DILocation(line: 46, column: 2, scope: !11)
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = !DILocation(line: 47, column: 10, scope: !11)
!90 = !DILocation(line: 47, column: 23, scope: !11)
!91 = !DILocation(line: 47, column: 20, scope: !11)
!92 = !DILocation(line: 47, column: 2, scope: !11)
!93 = !DILocation(line: 47, column: 5, scope: !11)
!94 = !DILocation(line: 47, column: 8, scope: !11)
!95 = !DILocation(line: 49, column: 9, scope: !11)
!96 = !DILocation(line: 50, column: 1, scope: !11)
!97 = !DILocation(line: 49, column: 2, scope: !11)
