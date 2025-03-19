; ModuleID = 'lib/crypto/mpi/mpih-cmp.c'
source_filename = "lib/crypto/mpi/mpih-cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mpihelp_cmp(ptr noundef %op1_ptr, ptr noundef %op2_ptr, i32 noundef %size) #0 align 16 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %op1_ptr.addr = alloca ptr, align 8
  %op2_ptr.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %op1_word = alloca i64, align 8
  %op2_word = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op1_ptr, ptr %op1_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op1_ptr.addr, metadata !23, metadata !DIExpression()), !dbg !30
  store ptr %op2_ptr, ptr %op2_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op2_ptr.addr, metadata !24, metadata !DIExpression()), !dbg !31
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !25, metadata !DIExpression()), !dbg !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3, !dbg !33
  call void @llvm.dbg.declare(metadata ptr %i, metadata !26, metadata !DIExpression()), !dbg !34
  call void @llvm.lifetime.start.p0(i64 8, ptr %op1_word) #3, !dbg !35
  call void @llvm.dbg.declare(metadata ptr %op1_word, metadata !27, metadata !DIExpression()), !dbg !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %op2_word) #3, !dbg !35
  call void @llvm.dbg.declare(metadata ptr %op2_word, metadata !28, metadata !DIExpression()), !dbg !37
  %0 = load i32, ptr %size.addr, align 4, !dbg !38
  %sub = sub i32 %0, 1, !dbg !40
  store i32 %sub, ptr %i, align 4, !dbg !41
  br label %for.cond, !dbg !42

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !43
  %cmp = icmp sge i32 %1, 0, !dbg !45
  br i1 %cmp, label %for.body, label %for.end, !dbg !46

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %op1_ptr.addr, align 8, !dbg !47
  %3 = load i32, ptr %i, align 4, !dbg !49
  %idxprom = sext i32 %3 to i64, !dbg !47
  %arrayidx = getelementptr i64, ptr %2, i64 %idxprom, !dbg !47
  %4 = load i64, ptr %arrayidx, align 8, !dbg !47
  store i64 %4, ptr %op1_word, align 8, !dbg !50
  %5 = load ptr, ptr %op2_ptr.addr, align 8, !dbg !51
  %6 = load i32, ptr %i, align 4, !dbg !52
  %idxprom1 = sext i32 %6 to i64, !dbg !51
  %arrayidx2 = getelementptr i64, ptr %5, i64 %idxprom1, !dbg !51
  %7 = load i64, ptr %arrayidx2, align 8, !dbg !51
  store i64 %7, ptr %op2_word, align 8, !dbg !53
  %8 = load i64, ptr %op1_word, align 8, !dbg !54
  %9 = load i64, ptr %op2_word, align 8, !dbg !56
  %cmp3 = icmp ne i64 %8, %9, !dbg !57
  br i1 %cmp3, label %if.then, label %if.end, !dbg !58

if.then:                                          ; preds = %for.body
  br label %diff, !dbg !59

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !60

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !dbg !61
  %dec = add i32 %10, -1, !dbg !61
  store i32 %dec, ptr %i, align 4, !dbg !61
  br label %for.cond, !dbg !62, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !67
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !67

diff:                                             ; preds = %if.then
  call void @llvm.dbg.label(metadata !29), !dbg !68
  %11 = load i64, ptr %op1_word, align 8, !dbg !69
  %12 = load i64, ptr %op2_word, align 8, !dbg !70
  %cmp4 = icmp ugt i64 %11, %12, !dbg !71
  %13 = zext i1 %cmp4 to i64, !dbg !72
  %cond = select i1 %cmp4, i32 1, i32 -1, !dbg !72
  store i32 %cond, ptr %retval, align 4, !dbg !73
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !73

cleanup:                                          ; preds = %diff, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %op2_word) #3, !dbg !74
  call void @llvm.lifetime.end.p0(i64 8, ptr %op1_word) #3, !dbg !74
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3, !dbg !74
  %14 = load i32, ptr %retval, align 4, !dbg !74
  ret i32 %14, !dbg !74
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.mpih-cmp.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22mpih_cmp\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/mpih-cmp.ll lib/crypto/mpi/mpih-cmp.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lib/crypto/mpi/mpih-cmp.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "efafa351f8ac634293dc7405b81ec2f8")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!11 = distinct !DISubprogram(name: "mpihelp_cmp", scope: !1, file: !1, line: 25, type: !12, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !22)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !15, !21}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_ptr_t", file: !16, line: 52, baseType: !17)
!16 = !DIFile(filename: "lib/crypto/mpi/mpi-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cffaba334cfde932ee1944172d38d6ce")
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !19, line: 26, baseType: !20)
!19 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_size_t", file: !16, line: 53, baseType: !14)
!22 = !{!23, !24, !25, !26, !27, !28, !29}
!23 = !DILocalVariable(name: "op1_ptr", arg: 1, scope: !11, file: !1, line: 25, type: !15)
!24 = !DILocalVariable(name: "op2_ptr", arg: 2, scope: !11, file: !1, line: 25, type: !15)
!25 = !DILocalVariable(name: "size", arg: 3, scope: !11, file: !1, line: 25, type: !21)
!26 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 27, type: !21)
!27 = !DILocalVariable(name: "op1_word", scope: !11, file: !1, line: 28, type: !18)
!28 = !DILocalVariable(name: "op2_word", scope: !11, file: !1, line: 28, type: !18)
!29 = !DILabel(scope: !11, name: "diff", file: !1, line: 38)
!30 = !DILocation(line: 25, column: 27, scope: !11)
!31 = !DILocation(line: 25, column: 46, scope: !11)
!32 = !DILocation(line: 25, column: 66, scope: !11)
!33 = !DILocation(line: 27, column: 2, scope: !11)
!34 = !DILocation(line: 27, column: 13, scope: !11)
!35 = !DILocation(line: 28, column: 2, scope: !11)
!36 = !DILocation(line: 28, column: 13, scope: !11)
!37 = !DILocation(line: 28, column: 23, scope: !11)
!38 = !DILocation(line: 30, column: 11, scope: !39)
!39 = distinct !DILexicalBlock(scope: !11, file: !1, line: 30, column: 2)
!40 = !DILocation(line: 30, column: 16, scope: !39)
!41 = !DILocation(line: 30, column: 9, scope: !39)
!42 = !DILocation(line: 30, column: 7, scope: !39)
!43 = !DILocation(line: 30, column: 21, scope: !44)
!44 = distinct !DILexicalBlock(scope: !39, file: !1, line: 30, column: 2)
!45 = !DILocation(line: 30, column: 23, scope: !44)
!46 = !DILocation(line: 30, column: 2, scope: !39)
!47 = !DILocation(line: 31, column: 14, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 30, column: 34)
!49 = !DILocation(line: 31, column: 22, scope: !48)
!50 = !DILocation(line: 31, column: 12, scope: !48)
!51 = !DILocation(line: 32, column: 14, scope: !48)
!52 = !DILocation(line: 32, column: 22, scope: !48)
!53 = !DILocation(line: 32, column: 12, scope: !48)
!54 = !DILocation(line: 33, column: 7, scope: !55)
!55 = distinct !DILexicalBlock(scope: !48, file: !1, line: 33, column: 7)
!56 = !DILocation(line: 33, column: 19, scope: !55)
!57 = !DILocation(line: 33, column: 16, scope: !55)
!58 = !DILocation(line: 33, column: 7, scope: !48)
!59 = !DILocation(line: 34, column: 4, scope: !55)
!60 = !DILocation(line: 35, column: 2, scope: !48)
!61 = !DILocation(line: 30, column: 30, scope: !44)
!62 = !DILocation(line: 30, column: 2, scope: !44)
!63 = distinct !{!63, !46, !64, !65, !66}
!64 = !DILocation(line: 35, column: 2, scope: !39)
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !DILocation(line: 36, column: 2, scope: !11)
!68 = !DILocation(line: 38, column: 1, scope: !11)
!69 = !DILocation(line: 42, column: 10, scope: !11)
!70 = !DILocation(line: 42, column: 21, scope: !11)
!71 = !DILocation(line: 42, column: 19, scope: !11)
!72 = !DILocation(line: 42, column: 9, scope: !11)
!73 = !DILocation(line: 42, column: 2, scope: !11)
!74 = !DILocation(line: 43, column: 1, scope: !11)
