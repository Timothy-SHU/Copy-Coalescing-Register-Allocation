; ModuleID = 'lib/math/div64.c'
source_filename = "lib/math/div64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iter_div_u64_rem: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iter_div_u64_rem ; .previous"

@__UNIQUE_ID___addressable_iter_div_u64_rem2 = internal global ptr @iter_div_u64_rem, section ".discard.addressable", align 8, !dbg !0
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_iter_div_u64_rem2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @iter_div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #0 align 16 !dbg !16 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !29, metadata !DIExpression()), !dbg !32
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !30, metadata !DIExpression()), !dbg !33
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !31, metadata !DIExpression()), !dbg !34
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !35
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !36
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !37
  %call = call i32 @__iter_div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %2) #4, !dbg !38
  ret i32 %call, !dbg !39
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__iter_div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #2 align 16 !dbg !40 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !43, metadata !DIExpression()), !dbg !47
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !44, metadata !DIExpression()), !dbg !48
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !45, metadata !DIExpression()), !dbg !49
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5, !dbg !50
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !46, metadata !DIExpression()), !dbg !51
  store i32 0, ptr %ret, align 4, !dbg !51
  br label %while.cond, !dbg !52

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !53
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !54
  %conv = zext i32 %1 to i64, !dbg !54
  %cmp = icmp uge i64 %0, %conv, !dbg !55
  br i1 %cmp, label %while.body, label %while.end, !dbg !52

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %dividend.addr, align 8, !dbg !56
  call void asm "", "=*rm,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %dividend.addr, i64 %2) #5, !dbg !56, !srcloc !58
  %3 = load i32, ptr %divisor.addr, align 4, !dbg !59
  %conv2 = zext i32 %3 to i64, !dbg !59
  %4 = load i64, ptr %dividend.addr, align 8, !dbg !60
  %sub = sub i64 %4, %conv2, !dbg !60
  store i64 %sub, ptr %dividend.addr, align 8, !dbg !60
  %5 = load i32, ptr %ret, align 4, !dbg !61
  %inc = add i32 %5, 1, !dbg !61
  store i32 %inc, ptr %ret, align 4, !dbg !61
  br label %while.cond, !dbg !52, !llvm.loop !62

while.end:                                        ; preds = %while.cond
  %6 = load i64, ptr %dividend.addr, align 8, !dbg !66
  %7 = load ptr, ptr %remainder.addr, align 8, !dbg !67
  store i64 %6, ptr %7, align 8, !dbg !68
  %8 = load i32, ptr %ret, align 4, !dbg !69
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5, !dbg !70
  ret i32 %8, !dbg !71
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iter_div_u64_rem2", scope: !2, file: !3, line: 183, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/math/.div64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/math/div64\22 -D KBUILD_BASENAME=\22div64\22 -D KBUILD_MODNAME=\22div64\22 -D __KBUILD_MODNAME=kmod_div64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/math/div64.ll lib/math/div64.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/math/div64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ab22b683cdbcdd9d44698065a1aa2a90")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0}
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 8, !"cf-protection-branch", i32 1}
!11 = !{i32 4, !"function_return_thunk_extern", i32 1}
!12 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!13 = !{i32 1, !"Code Model", i32 2}
!14 = !{i32 1, !"override-stack-alignment", i32 8}
!15 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!16 = distinct !DISubprogram(name: "iter_div_u64_rem", scope: !3, file: !3, line: 179, type: !17, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !28)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !24, !19, !27}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !20, line: 21, baseType: !21)
!20 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !22, line: 27, baseType: !23)
!22 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !20, line: 23, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !22, line: 31, baseType: !26)
!26 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!28 = !{!29, !30, !31}
!29 = !DILocalVariable(name: "dividend", arg: 1, scope: !16, file: !3, line: 179, type: !24)
!30 = !DILocalVariable(name: "divisor", arg: 2, scope: !16, file: !3, line: 179, type: !19)
!31 = !DILocalVariable(name: "remainder", arg: 3, scope: !16, file: !3, line: 179, type: !27)
!32 = !DILocation(line: 179, column: 26, scope: !16)
!33 = !DILocation(line: 179, column: 40, scope: !16)
!34 = !DILocation(line: 179, column: 54, scope: !16)
!35 = !DILocation(line: 181, column: 28, scope: !16)
!36 = !DILocation(line: 181, column: 38, scope: !16)
!37 = !DILocation(line: 181, column: 47, scope: !16)
!38 = !DILocation(line: 181, column: 9, scope: !16)
!39 = !DILocation(line: 181, column: 2, scope: !16)
!40 = distinct !DISubprogram(name: "__iter_div_u64_rem", scope: !41, file: !41, line: 6, type: !17, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !42)
!41 = !DIFile(filename: "./include/vdso/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c73242fa3ce9a71c3ee6785d9a4c12ba")
!42 = !{!43, !44, !45, !46}
!43 = !DILocalVariable(name: "dividend", arg: 1, scope: !40, file: !41, line: 6, type: !24)
!44 = !DILocalVariable(name: "divisor", arg: 2, scope: !40, file: !41, line: 6, type: !19)
!45 = !DILocalVariable(name: "remainder", arg: 3, scope: !40, file: !41, line: 6, type: !27)
!46 = !DILocalVariable(name: "ret", scope: !40, file: !41, line: 8, type: !19)
!47 = !DILocation(line: 6, column: 24, scope: !40)
!48 = !DILocation(line: 6, column: 38, scope: !40)
!49 = !DILocation(line: 6, column: 52, scope: !40)
!50 = !DILocation(line: 8, column: 2, scope: !40)
!51 = !DILocation(line: 8, column: 6, scope: !40)
!52 = !DILocation(line: 10, column: 2, scope: !40)
!53 = !DILocation(line: 10, column: 9, scope: !40)
!54 = !DILocation(line: 10, column: 21, scope: !40)
!55 = !DILocation(line: 10, column: 18, scope: !40)
!56 = !DILocation(line: 13, column: 3, scope: !57)
!57 = distinct !DILexicalBlock(scope: !40, file: !41, line: 10, column: 30)
!58 = !{i64 457078}
!59 = !DILocation(line: 15, column: 15, scope: !57)
!60 = !DILocation(line: 15, column: 12, scope: !57)
!61 = !DILocation(line: 16, column: 6, scope: !57)
!62 = distinct !{!62, !52, !63, !64, !65}
!63 = !DILocation(line: 17, column: 2, scope: !40)
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !DILocation(line: 19, column: 15, scope: !40)
!67 = !DILocation(line: 19, column: 3, scope: !40)
!68 = !DILocation(line: 19, column: 13, scope: !40)
!69 = !DILocation(line: 21, column: 9, scope: !40)
!70 = !DILocation(line: 22, column: 1, scope: !40)
!71 = !DILocation(line: 21, column: 2, scope: !40)
