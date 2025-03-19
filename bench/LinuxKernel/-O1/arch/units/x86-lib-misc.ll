; ModuleID = 'arch/x86/lib/misc.c'
source_filename = "arch/x86/lib/misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @num_digits(i32 noundef %val) #0 align 16 !dbg !11 {
entry:
  %val.addr = alloca i32, align 4
  %m = alloca i64, align 8
  %d = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !16, metadata !DIExpression()), !dbg !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #3, !dbg !21
  call void @llvm.dbg.declare(metadata ptr %m, metadata !17, metadata !DIExpression()), !dbg !22
  store i64 10, ptr %m, align 8, !dbg !22
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #3, !dbg !23
  call void @llvm.dbg.declare(metadata ptr %d, metadata !19, metadata !DIExpression()), !dbg !24
  store i32 1, ptr %d, align 4, !dbg !24
  %0 = load i32, ptr %val.addr, align 4, !dbg !25
  %cmp = icmp slt i32 %0, 0, !dbg !27
  br i1 %cmp, label %if.then, label %if.end, !dbg !28

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %d, align 4, !dbg !29
  %inc = add i32 %1, 1, !dbg !29
  store i32 %inc, ptr %d, align 4, !dbg !29
  %2 = load i32, ptr %val.addr, align 4, !dbg !31
  %sub = sub i32 0, %2, !dbg !32
  store i32 %sub, ptr %val.addr, align 4, !dbg !33
  br label %if.end, !dbg !34

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !35

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, ptr %val.addr, align 4, !dbg !36
  %conv = sext i32 %3 to i64, !dbg !36
  %4 = load i64, ptr %m, align 8, !dbg !37
  %cmp1 = icmp sge i64 %conv, %4, !dbg !38
  br i1 %cmp1, label %while.body, label %while.end, !dbg !35

while.body:                                       ; preds = %while.cond
  %5 = load i64, ptr %m, align 8, !dbg !39
  %mul = mul i64 %5, 10, !dbg !39
  store i64 %mul, ptr %m, align 8, !dbg !39
  %6 = load i32, ptr %d, align 4, !dbg !41
  %inc3 = add i32 %6, 1, !dbg !41
  store i32 %inc3, ptr %d, align 4, !dbg !41
  br label %while.cond, !dbg !35, !llvm.loop !42

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr %d, align 4, !dbg !46
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #3, !dbg !47
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #3, !dbg !47
  ret i32 %7, !dbg !48
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

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.misc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/misc\22 -D KBUILD_BASENAME=\22misc\22 -D KBUILD_MODNAME=\22misc\22 -D __KBUILD_MODNAME=kmod_misc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/misc.ll arch/x86/lib/misc.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/lib/misc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7ad97f8efb2d04e1104799653c6464b")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!11 = distinct !DISubprogram(name: "num_digits", scope: !1, file: !1, line: 9, type: !12, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !19}
!16 = !DILocalVariable(name: "val", arg: 1, scope: !11, file: !1, line: 9, type: !14)
!17 = !DILocalVariable(name: "m", scope: !11, file: !1, line: 11, type: !18)
!18 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!19 = !DILocalVariable(name: "d", scope: !11, file: !1, line: 12, type: !14)
!20 = !DILocation(line: 9, column: 20, scope: !11)
!21 = !DILocation(line: 11, column: 2, scope: !11)
!22 = !DILocation(line: 11, column: 12, scope: !11)
!23 = !DILocation(line: 12, column: 2, scope: !11)
!24 = !DILocation(line: 12, column: 6, scope: !11)
!25 = !DILocation(line: 14, column: 6, scope: !26)
!26 = distinct !DILexicalBlock(scope: !11, file: !1, line: 14, column: 6)
!27 = !DILocation(line: 14, column: 10, scope: !26)
!28 = !DILocation(line: 14, column: 6, scope: !11)
!29 = !DILocation(line: 15, column: 4, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 14, column: 15)
!31 = !DILocation(line: 16, column: 10, scope: !30)
!32 = !DILocation(line: 16, column: 9, scope: !30)
!33 = !DILocation(line: 16, column: 7, scope: !30)
!34 = !DILocation(line: 17, column: 2, scope: !30)
!35 = !DILocation(line: 19, column: 2, scope: !11)
!36 = !DILocation(line: 19, column: 9, scope: !11)
!37 = !DILocation(line: 19, column: 16, scope: !11)
!38 = !DILocation(line: 19, column: 13, scope: !11)
!39 = !DILocation(line: 20, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !11, file: !1, line: 19, column: 19)
!41 = !DILocation(line: 21, column: 4, scope: !40)
!42 = distinct !{!42, !35, !43, !44, !45}
!43 = !DILocation(line: 22, column: 2, scope: !11)
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !DILocation(line: 23, column: 9, scope: !11)
!47 = !DILocation(line: 24, column: 1, scope: !11)
!48 = !DILocation(line: 23, column: 2, scope: !11)
