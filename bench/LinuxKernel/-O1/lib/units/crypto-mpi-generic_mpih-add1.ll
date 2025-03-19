; ModuleID = 'lib/crypto/mpi/generic_mpih-add1.c'
source_filename = "lib/crypto/mpi/generic_mpih-add1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @mpihelp_add_n(ptr noundef %res_ptr, ptr noundef %s1_ptr, ptr noundef %s2_ptr, i32 noundef %size) #0 align 16 !dbg !11 {
entry:
  %res_ptr.addr = alloca ptr, align 8
  %s1_ptr.addr = alloca ptr, align 8
  %s2_ptr.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %cy = alloca i64, align 8
  %j = alloca i32, align 4
  store ptr %res_ptr, ptr %res_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res_ptr.addr, metadata !23, metadata !DIExpression()), !dbg !31
  store ptr %s1_ptr, ptr %s1_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1_ptr.addr, metadata !24, metadata !DIExpression()), !dbg !32
  store ptr %s2_ptr, ptr %s2_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2_ptr.addr, metadata !25, metadata !DIExpression()), !dbg !33
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !26, metadata !DIExpression()), !dbg !34
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #3, !dbg !35
  call void @llvm.dbg.declare(metadata ptr %x, metadata !27, metadata !DIExpression()), !dbg !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #3, !dbg !35
  call void @llvm.dbg.declare(metadata ptr %y, metadata !28, metadata !DIExpression()), !dbg !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy) #3, !dbg !35
  call void @llvm.dbg.declare(metadata ptr %cy, metadata !29, metadata !DIExpression()), !dbg !38
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3, !dbg !39
  call void @llvm.dbg.declare(metadata ptr %j, metadata !30, metadata !DIExpression()), !dbg !40
  %0 = load i32, ptr %size.addr, align 4, !dbg !41
  %sub = sub i32 0, %0, !dbg !42
  store i32 %sub, ptr %j, align 4, !dbg !43
  %1 = load i32, ptr %j, align 4, !dbg !44
  %2 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !45
  %idx.ext = sext i32 %1 to i64, !dbg !45
  %idx.neg = sub i64 0, %idx.ext, !dbg !45
  %add.ptr = getelementptr i64, ptr %2, i64 %idx.neg, !dbg !45
  store ptr %add.ptr, ptr %s1_ptr.addr, align 8, !dbg !45
  %3 = load i32, ptr %j, align 4, !dbg !46
  %4 = load ptr, ptr %s2_ptr.addr, align 8, !dbg !47
  %idx.ext1 = sext i32 %3 to i64, !dbg !47
  %idx.neg2 = sub i64 0, %idx.ext1, !dbg !47
  %add.ptr3 = getelementptr i64, ptr %4, i64 %idx.neg2, !dbg !47
  store ptr %add.ptr3, ptr %s2_ptr.addr, align 8, !dbg !47
  %5 = load i32, ptr %j, align 4, !dbg !48
  %6 = load ptr, ptr %res_ptr.addr, align 8, !dbg !49
  %idx.ext4 = sext i32 %5 to i64, !dbg !49
  %idx.neg5 = sub i64 0, %idx.ext4, !dbg !49
  %add.ptr6 = getelementptr i64, ptr %6, i64 %idx.neg5, !dbg !49
  store ptr %add.ptr6, ptr %res_ptr.addr, align 8, !dbg !49
  store i64 0, ptr %cy, align 8, !dbg !50
  br label %do.body, !dbg !51

do.body:                                          ; preds = %do.cond, %entry
  %7 = load ptr, ptr %s2_ptr.addr, align 8, !dbg !52
  %8 = load i32, ptr %j, align 4, !dbg !54
  %idxprom = sext i32 %8 to i64, !dbg !52
  %arrayidx = getelementptr i64, ptr %7, i64 %idxprom, !dbg !52
  %9 = load i64, ptr %arrayidx, align 8, !dbg !52
  store i64 %9, ptr %y, align 8, !dbg !55
  %10 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !56
  %11 = load i32, ptr %j, align 4, !dbg !57
  %idxprom7 = sext i32 %11 to i64, !dbg !56
  %arrayidx8 = getelementptr i64, ptr %10, i64 %idxprom7, !dbg !56
  %12 = load i64, ptr %arrayidx8, align 8, !dbg !56
  store i64 %12, ptr %x, align 8, !dbg !58
  %13 = load i64, ptr %cy, align 8, !dbg !59
  %14 = load i64, ptr %y, align 8, !dbg !60
  %add = add i64 %14, %13, !dbg !60
  store i64 %add, ptr %y, align 8, !dbg !60
  %15 = load i64, ptr %y, align 8, !dbg !61
  %16 = load i64, ptr %cy, align 8, !dbg !62
  %cmp = icmp ult i64 %15, %16, !dbg !63
  %conv = zext i1 %cmp to i32, !dbg !63
  %conv9 = sext i32 %conv to i64, !dbg !61
  store i64 %conv9, ptr %cy, align 8, !dbg !64
  %17 = load i64, ptr %x, align 8, !dbg !65
  %18 = load i64, ptr %y, align 8, !dbg !66
  %add10 = add i64 %18, %17, !dbg !66
  store i64 %add10, ptr %y, align 8, !dbg !66
  %19 = load i64, ptr %y, align 8, !dbg !67
  %20 = load i64, ptr %x, align 8, !dbg !68
  %cmp11 = icmp ult i64 %19, %20, !dbg !69
  %conv12 = zext i1 %cmp11 to i32, !dbg !69
  %conv13 = sext i32 %conv12 to i64, !dbg !67
  %21 = load i64, ptr %cy, align 8, !dbg !70
  %add14 = add i64 %21, %conv13, !dbg !70
  store i64 %add14, ptr %cy, align 8, !dbg !70
  %22 = load i64, ptr %y, align 8, !dbg !71
  %23 = load ptr, ptr %res_ptr.addr, align 8, !dbg !72
  %24 = load i32, ptr %j, align 4, !dbg !73
  %idxprom15 = sext i32 %24 to i64, !dbg !72
  %arrayidx16 = getelementptr i64, ptr %23, i64 %idxprom15, !dbg !72
  store i64 %22, ptr %arrayidx16, align 8, !dbg !74
  br label %do.cond, !dbg !75

do.cond:                                          ; preds = %do.body
  %25 = load i32, ptr %j, align 4, !dbg !76
  %inc = add i32 %25, 1, !dbg !76
  store i32 %inc, ptr %j, align 4, !dbg !76
  %tobool = icmp ne i32 %inc, 0, !dbg !75
  br i1 %tobool, label %do.body, label %do.end, !dbg !75, !llvm.loop !77

do.end:                                           ; preds = %do.cond
  %26 = load i64, ptr %cy, align 8, !dbg !81
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3, !dbg !82
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy) #3, !dbg !82
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #3, !dbg !82
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #3, !dbg !82
  ret i64 %26, !dbg !83
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

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.generic_mpih-add1.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22generic_mpih_add1\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/generic_mpih-add1.ll lib/crypto/mpi/generic_mpih-add1.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lib/crypto/mpi/generic_mpih-add1.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "47e0a60db5aa91ee46e15a43bb18d74e")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!11 = distinct !DISubprogram(name: "mpihelp_add_n", scope: !1, file: !1, line: 21, type: !12, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !22)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !17, !17, !17, !20}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !15, line: 26, baseType: !16)
!15 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_ptr_t", file: !18, line: 52, baseType: !19)
!18 = !DIFile(filename: "lib/crypto/mpi/mpi-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cffaba334cfde932ee1944172d38d6ce")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_size_t", file: !18, line: 53, baseType: !21)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30}
!23 = !DILocalVariable(name: "res_ptr", arg: 1, scope: !11, file: !1, line: 21, type: !17)
!24 = !DILocalVariable(name: "s1_ptr", arg: 2, scope: !11, file: !1, line: 21, type: !17)
!25 = !DILocalVariable(name: "s2_ptr", arg: 3, scope: !11, file: !1, line: 22, type: !17)
!26 = !DILocalVariable(name: "size", arg: 4, scope: !11, file: !1, line: 22, type: !20)
!27 = !DILocalVariable(name: "x", scope: !11, file: !1, line: 24, type: !14)
!28 = !DILocalVariable(name: "y", scope: !11, file: !1, line: 24, type: !14)
!29 = !DILocalVariable(name: "cy", scope: !11, file: !1, line: 24, type: !14)
!30 = !DILocalVariable(name: "j", scope: !11, file: !1, line: 25, type: !20)
!31 = !DILocation(line: 21, column: 25, scope: !11)
!32 = !DILocation(line: 21, column: 44, scope: !11)
!33 = !DILocation(line: 22, column: 18, scope: !11)
!34 = !DILocation(line: 22, column: 37, scope: !11)
!35 = !DILocation(line: 24, column: 2, scope: !11)
!36 = !DILocation(line: 24, column: 13, scope: !11)
!37 = !DILocation(line: 24, column: 16, scope: !11)
!38 = !DILocation(line: 24, column: 19, scope: !11)
!39 = !DILocation(line: 25, column: 2, scope: !11)
!40 = !DILocation(line: 25, column: 13, scope: !11)
!41 = !DILocation(line: 29, column: 7, scope: !11)
!42 = !DILocation(line: 29, column: 6, scope: !11)
!43 = !DILocation(line: 29, column: 4, scope: !11)
!44 = !DILocation(line: 32, column: 12, scope: !11)
!45 = !DILocation(line: 32, column: 9, scope: !11)
!46 = !DILocation(line: 33, column: 12, scope: !11)
!47 = !DILocation(line: 33, column: 9, scope: !11)
!48 = !DILocation(line: 34, column: 13, scope: !11)
!49 = !DILocation(line: 34, column: 10, scope: !11)
!50 = !DILocation(line: 36, column: 5, scope: !11)
!51 = !DILocation(line: 37, column: 2, scope: !11)
!52 = !DILocation(line: 38, column: 7, scope: !53)
!53 = distinct !DILexicalBlock(scope: !11, file: !1, line: 37, column: 5)
!54 = !DILocation(line: 38, column: 14, scope: !53)
!55 = !DILocation(line: 38, column: 5, scope: !53)
!56 = !DILocation(line: 39, column: 7, scope: !53)
!57 = !DILocation(line: 39, column: 14, scope: !53)
!58 = !DILocation(line: 39, column: 5, scope: !53)
!59 = !DILocation(line: 40, column: 8, scope: !53)
!60 = !DILocation(line: 40, column: 5, scope: !53)
!61 = !DILocation(line: 41, column: 8, scope: !53)
!62 = !DILocation(line: 41, column: 12, scope: !53)
!63 = !DILocation(line: 41, column: 10, scope: !53)
!64 = !DILocation(line: 41, column: 6, scope: !53)
!65 = !DILocation(line: 42, column: 8, scope: !53)
!66 = !DILocation(line: 42, column: 5, scope: !53)
!67 = !DILocation(line: 43, column: 9, scope: !53)
!68 = !DILocation(line: 43, column: 13, scope: !53)
!69 = !DILocation(line: 43, column: 11, scope: !53)
!70 = !DILocation(line: 43, column: 6, scope: !53)
!71 = !DILocation(line: 44, column: 16, scope: !53)
!72 = !DILocation(line: 44, column: 3, scope: !53)
!73 = !DILocation(line: 44, column: 11, scope: !53)
!74 = !DILocation(line: 44, column: 14, scope: !53)
!75 = !DILocation(line: 45, column: 2, scope: !53)
!76 = !DILocation(line: 45, column: 11, scope: !11)
!77 = distinct !{!77, !51, !78, !79, !80}
!78 = !DILocation(line: 45, column: 14, scope: !11)
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !DILocation(line: 47, column: 9, scope: !11)
!82 = !DILocation(line: 48, column: 1, scope: !11)
!83 = !DILocation(line: 47, column: 2, scope: !11)
