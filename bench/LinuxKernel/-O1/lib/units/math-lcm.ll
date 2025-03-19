; ModuleID = 'lib/math/lcm.c'
source_filename = "lib/math/lcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_lcm: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad lcm ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_lcm_not_zero: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad lcm_not_zero ; .previous"

@__UNIQUE_ID___addressable_lcm0 = internal global ptr @lcm, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_lcm_not_zero1 = internal global ptr @lcm_not_zero, section ".discard.addressable", align 8, !dbg !7
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_lcm0, ptr @__UNIQUE_ID___addressable_lcm_not_zero1], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define hidden i64 @lcm(i64 noundef %a, i64 noundef %b) #0 align 16 !dbg !18 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !23, metadata !DIExpression()), !dbg !25
  store i64 %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !24, metadata !DIExpression()), !dbg !26
  %0 = load i64, ptr %a.addr, align 8, !dbg !27
  %tobool = icmp ne i64 %0, 0, !dbg !27
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !29

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, ptr %b.addr, align 8, !dbg !30
  %tobool1 = icmp ne i64 %1, 0, !dbg !30
  br i1 %tobool1, label %if.then, label %if.else, !dbg !31

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, ptr %a.addr, align 8, !dbg !32
  %3 = load i64, ptr %a.addr, align 8, !dbg !33
  %4 = load i64, ptr %b.addr, align 8, !dbg !34
  %call = call i64 @gcd(i64 noundef %3, i64 noundef %4) #4, !dbg !35
  %div = udiv i64 %2, %call, !dbg !36
  %5 = load i64, ptr %b.addr, align 8, !dbg !37
  %mul = mul i64 %div, %5, !dbg !38
  store i64 %mul, ptr %retval, align 8, !dbg !39
  br label %return, !dbg !39

if.else:                                          ; preds = %land.lhs.true, %entry
  store i64 0, ptr %retval, align 8, !dbg !40
  br label %return, !dbg !40

return:                                           ; preds = %if.else, %if.then
  %6 = load i64, ptr %retval, align 8, !dbg !41
  ret i64 %6, !dbg !41
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone nounwind null_pointer_is_valid willreturn memory(none)
declare !dbg !42 dso_local i64 @gcd(i64 noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define hidden i64 @lcm_not_zero(i64 noundef %a, i64 noundef %b) #0 align 16 !dbg !44 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %l = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !46, metadata !DIExpression()), !dbg !49
  store i64 %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !47, metadata !DIExpression()), !dbg !50
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #5, !dbg !51
  call void @llvm.dbg.declare(metadata ptr %l, metadata !48, metadata !DIExpression()), !dbg !52
  %0 = load i64, ptr %a.addr, align 8, !dbg !53
  %1 = load i64, ptr %b.addr, align 8, !dbg !54
  %call = call i64 @lcm(i64 noundef %0, i64 noundef %1) #4, !dbg !55
  store i64 %call, ptr %l, align 8, !dbg !52
  %2 = load i64, ptr %l, align 8, !dbg !56
  %tobool = icmp ne i64 %2, 0, !dbg !56
  br i1 %tobool, label %if.then, label %if.end, !dbg !58

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %l, align 8, !dbg !59
  store i64 %3, ptr %retval, align 8, !dbg !60
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !60

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %b.addr, align 8, !dbg !61
  %tobool1 = icmp ne i64 %4, 0, !dbg !61
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !61

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !61

cond.false:                                       ; preds = %if.end
  %5 = load i64, ptr %a.addr, align 8, !dbg !62
  br label %cond.end, !dbg !61

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !61
  store i64 %cond, ptr %retval, align 8, !dbg !63
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !63

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #5, !dbg !64
  %6 = load i64, ptr %retval, align 8, !dbg !64
  ret i64 %6, !dbg !64
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone nounwind willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lcm0", scope: !2, file: !3, line: 15, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/math/.lcm.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/math/lcm\22 -D KBUILD_BASENAME=\22lcm\22 -D KBUILD_MODNAME=\22lcm\22 -D __KBUILD_MODNAME=kmod_lcm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/math/lcm.ll lib/math/lcm.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/math/lcm.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d3250f0603480b86fc74d0796204b506")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lcm_not_zero1", scope: !2, file: !3, line: 26, type: !5, isLocal: true, isDefinition: true)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 8, !"cf-protection-branch", i32 1}
!13 = !{i32 4, !"function_return_thunk_extern", i32 1}
!14 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!15 = !{i32 1, !"Code Model", i32 2}
!16 = !{i32 1, !"override-stack-alignment", i32 8}
!17 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!18 = distinct !DISubprogram(name: "lcm", scope: !3, file: !3, line: 8, type: !19, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !21, !21}
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !{!23, !24}
!23 = !DILocalVariable(name: "a", arg: 1, scope: !18, file: !3, line: 8, type: !21)
!24 = !DILocalVariable(name: "b", arg: 2, scope: !18, file: !3, line: 8, type: !21)
!25 = !DILocation(line: 8, column: 33, scope: !18)
!26 = !DILocation(line: 8, column: 50, scope: !18)
!27 = !DILocation(line: 10, column: 6, scope: !28)
!28 = distinct !DILexicalBlock(scope: !18, file: !3, line: 10, column: 6)
!29 = !DILocation(line: 10, column: 8, scope: !28)
!30 = !DILocation(line: 10, column: 11, scope: !28)
!31 = !DILocation(line: 10, column: 6, scope: !18)
!32 = !DILocation(line: 11, column: 11, scope: !28)
!33 = !DILocation(line: 11, column: 19, scope: !28)
!34 = !DILocation(line: 11, column: 22, scope: !28)
!35 = !DILocation(line: 11, column: 15, scope: !28)
!36 = !DILocation(line: 11, column: 13, scope: !28)
!37 = !DILocation(line: 11, column: 28, scope: !28)
!38 = !DILocation(line: 11, column: 26, scope: !28)
!39 = !DILocation(line: 11, column: 3, scope: !28)
!40 = !DILocation(line: 13, column: 3, scope: !28)
!41 = !DILocation(line: 14, column: 1, scope: !18)
!42 = !DISubprogram(name: "gcd", scope: !43, file: !43, line: 7, type: !19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!43 = !DIFile(filename: "./include/linux/gcd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "abd31516bd4d6b2bc6a703612ca68156")
!44 = distinct !DISubprogram(name: "lcm_not_zero", scope: !3, file: !3, line: 17, type: !19, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !45)
!45 = !{!46, !47, !48}
!46 = !DILocalVariable(name: "a", arg: 1, scope: !44, file: !3, line: 17, type: !21)
!47 = !DILocalVariable(name: "b", arg: 2, scope: !44, file: !3, line: 17, type: !21)
!48 = !DILocalVariable(name: "l", scope: !44, file: !3, line: 19, type: !21)
!49 = !DILocation(line: 17, column: 42, scope: !44)
!50 = !DILocation(line: 17, column: 59, scope: !44)
!51 = !DILocation(line: 19, column: 2, scope: !44)
!52 = !DILocation(line: 19, column: 16, scope: !44)
!53 = !DILocation(line: 19, column: 24, scope: !44)
!54 = !DILocation(line: 19, column: 27, scope: !44)
!55 = !DILocation(line: 19, column: 20, scope: !44)
!56 = !DILocation(line: 21, column: 6, scope: !57)
!57 = distinct !DILexicalBlock(scope: !44, file: !3, line: 21, column: 6)
!58 = !DILocation(line: 21, column: 6, scope: !44)
!59 = !DILocation(line: 22, column: 10, scope: !57)
!60 = !DILocation(line: 22, column: 3, scope: !57)
!61 = !DILocation(line: 24, column: 10, scope: !44)
!62 = !DILocation(line: 24, column: 16, scope: !44)
!63 = !DILocation(line: 24, column: 2, scope: !44)
!64 = !DILocation(line: 25, column: 1, scope: !44)
