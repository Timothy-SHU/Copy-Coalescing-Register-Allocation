; ModuleID = 'lib/bust_spinlocks.c'
source_filename = "lib/bust_spinlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@oops_in_progress = external dso_local global i32, align 4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @bust_spinlocks(i32 noundef %yes) #0 align 16 !dbg !11 {
entry:
  %yes.addr = alloca i32, align 4
  store i32 %yes, ptr %yes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %yes.addr, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = load i32, ptr %yes.addr, align 4, !dbg !18
  %tobool = icmp ne i32 %0, 0, !dbg !18
  br i1 %tobool, label %if.then, label %if.else, !dbg !20

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @oops_in_progress, align 4, !dbg !21
  %inc = add i32 %1, 1, !dbg !21
  store i32 %inc, ptr @oops_in_progress, align 4, !dbg !21
  br label %if.end2, !dbg !23

if.else:                                          ; preds = %entry
  call void @console_unblank() #3, !dbg !24
  %2 = load i32, ptr @oops_in_progress, align 4, !dbg !26
  %dec = add i32 %2, -1, !dbg !26
  store i32 %dec, ptr @oops_in_progress, align 4, !dbg !26
  %cmp = icmp eq i32 %dec, 0, !dbg !28
  br i1 %cmp, label %if.then1, label %if.end, !dbg !29

if.then1:                                         ; preds = %if.else
  call void @wake_up_klogd() #3, !dbg !30
  br label %if.end, !dbg !30

if.end:                                           ; preds = %if.then1, %if.else
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then
  ret void, !dbg !31
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !32 dso_local void @console_unblank() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !36 dso_local void @wake_up_klogd() #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.bust_spinlocks.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/bust_spinlocks\22 -D KBUILD_BASENAME=\22bust_spinlocks\22 -D KBUILD_MODNAME=\22bust_spinlocks\22 -D __KBUILD_MODNAME=kmod_bust_spinlocks -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/bust_spinlocks.ll lib/bust_spinlocks.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lib/bust_spinlocks.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfe601b257b17b82436774dd8d7ee59c")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!11 = distinct !DISubprogram(name: "bust_spinlocks", scope: !1, file: !1, line: 20, type: !12, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16}
!16 = !DILocalVariable(name: "yes", arg: 1, scope: !11, file: !1, line: 20, type: !14)
!17 = !DILocation(line: 20, column: 25, scope: !11)
!18 = !DILocation(line: 22, column: 6, scope: !19)
!19 = distinct !DILexicalBlock(scope: !11, file: !1, line: 22, column: 6)
!20 = !DILocation(line: 22, column: 6, scope: !11)
!21 = !DILocation(line: 23, column: 3, scope: !22)
!22 = distinct !DILexicalBlock(scope: !19, file: !1, line: 22, column: 11)
!23 = !DILocation(line: 24, column: 2, scope: !22)
!24 = !DILocation(line: 25, column: 3, scope: !25)
!25 = distinct !DILexicalBlock(scope: !19, file: !1, line: 24, column: 9)
!26 = !DILocation(line: 26, column: 7, scope: !27)
!27 = distinct !DILexicalBlock(scope: !25, file: !1, line: 26, column: 7)
!28 = !DILocation(line: 26, column: 26, scope: !27)
!29 = !DILocation(line: 26, column: 7, scope: !25)
!30 = !DILocation(line: 27, column: 4, scope: !27)
!31 = !DILocation(line: 29, column: 1, scope: !11)
!32 = !DISubprogram(name: "console_unblank", scope: !33, file: !33, line: 351, type: !34, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!33 = !DIFile(filename: "./include/linux/console.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d83301157f54621331b27ae09c0fe11")
!34 = !DISubroutineType(types: !35)
!35 = !{null}
!36 = !DISubprogram(name: "wake_up_klogd", scope: !37, file: !37, line: 183, type: !34, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!37 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
