; ModuleID = 'lib/math/int_sqrt.c'
source_filename = "lib/math/int_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_int_sqrt: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad int_sqrt ; .previous"

@__UNIQUE_ID___addressable_int_sqrt2 = internal global ptr @int_sqrt, section ".discard.addressable", align 8, !dbg !0
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_int_sqrt2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @int_sqrt(i64 noundef %x) #0 align 16 !dbg !16 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %b = alloca i64, align 8
  %m = alloca i64, align 8
  %y = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !21, metadata !DIExpression()), !dbg !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4, !dbg !26
  call void @llvm.dbg.declare(metadata ptr %b, metadata !22, metadata !DIExpression()), !dbg !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #4, !dbg !26
  call void @llvm.dbg.declare(metadata ptr %m, metadata !23, metadata !DIExpression()), !dbg !28
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #4, !dbg !26
  call void @llvm.dbg.declare(metadata ptr %y, metadata !24, metadata !DIExpression()), !dbg !29
  store i64 0, ptr %y, align 8, !dbg !29
  %0 = load i64, ptr %x.addr, align 8, !dbg !30
  %cmp = icmp ule i64 %0, 1, !dbg !32
  br i1 %cmp, label %if.then, label %if.end, !dbg !33

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %x.addr, align 8, !dbg !34
  store i64 %1, ptr %retval, align 8, !dbg !35
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !35

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %x.addr, align 8, !dbg !36
  %call = call i64 @__fls(i64 noundef %2) #5, !dbg !37
  %and = and i64 %call, -2, !dbg !38
  %shl = shl i64 1, %and, !dbg !39
  store i64 %shl, ptr %m, align 8, !dbg !40
  br label %while.cond, !dbg !41

while.cond:                                       ; preds = %if.end5, %if.end
  %3 = load i64, ptr %m, align 8, !dbg !42
  %cmp1 = icmp ne i64 %3, 0, !dbg !43
  br i1 %cmp1, label %while.body, label %while.end, !dbg !41

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %y, align 8, !dbg !44
  %5 = load i64, ptr %m, align 8, !dbg !46
  %add = add i64 %4, %5, !dbg !47
  store i64 %add, ptr %b, align 8, !dbg !48
  %6 = load i64, ptr %y, align 8, !dbg !49
  %shr = lshr i64 %6, 1, !dbg !49
  store i64 %shr, ptr %y, align 8, !dbg !49
  %7 = load i64, ptr %x.addr, align 8, !dbg !50
  %8 = load i64, ptr %b, align 8, !dbg !52
  %cmp2 = icmp uge i64 %7, %8, !dbg !53
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !54

if.then3:                                         ; preds = %while.body
  %9 = load i64, ptr %b, align 8, !dbg !55
  %10 = load i64, ptr %x.addr, align 8, !dbg !57
  %sub = sub i64 %10, %9, !dbg !57
  store i64 %sub, ptr %x.addr, align 8, !dbg !57
  %11 = load i64, ptr %m, align 8, !dbg !58
  %12 = load i64, ptr %y, align 8, !dbg !59
  %add4 = add i64 %12, %11, !dbg !59
  store i64 %add4, ptr %y, align 8, !dbg !59
  br label %if.end5, !dbg !60

if.end5:                                          ; preds = %if.then3, %while.body
  %13 = load i64, ptr %m, align 8, !dbg !61
  %shr6 = lshr i64 %13, 2, !dbg !61
  store i64 %shr6, ptr %m, align 8, !dbg !61
  br label %while.cond, !dbg !41, !llvm.loop !62

while.end:                                        ; preds = %while.cond
  %14 = load i64, ptr %y, align 8, !dbg !66
  store i64 %14, ptr %retval, align 8, !dbg !67
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !67

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #4, !dbg !68
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #4, !dbg !68
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4, !dbg !68
  %15 = load i64, ptr %retval, align 8, !dbg !68
  ret i64 %15, !dbg !68
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__fls(i64 noundef %word) #3 align 16 !dbg !69 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !72, metadata !DIExpression()), !dbg !73
  %0 = load i64, ptr %word.addr, align 8, !dbg !74
  %1 = call i64 asm "bsr $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #6, !dbg !75, !srcloc !76
  store i64 %1, ptr %word.addr, align 8, !dbg !75
  %2 = load i64, ptr %word.addr, align 8, !dbg !77
  ret i64 %2, !dbg !78
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }
attributes #6 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_int_sqrt2", scope: !2, file: !3, line: 41, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/math/.int_sqrt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/math/int_sqrt\22 -D KBUILD_BASENAME=\22int_sqrt\22 -D KBUILD_MODNAME=\22int_sqrt\22 -D __KBUILD_MODNAME=kmod_int_sqrt -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/math/int_sqrt.ll lib/math/int_sqrt.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/math/int_sqrt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c1ddfbb72a4b71ceb7d27f63d4dcdb6")
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
!16 = distinct !DISubprogram(name: "int_sqrt", scope: !3, file: !3, line: 20, type: !17, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !19}
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24}
!21 = !DILocalVariable(name: "x", arg: 1, scope: !16, file: !3, line: 20, type: !19)
!22 = !DILocalVariable(name: "b", scope: !16, file: !3, line: 22, type: !19)
!23 = !DILocalVariable(name: "m", scope: !16, file: !3, line: 22, type: !19)
!24 = !DILocalVariable(name: "y", scope: !16, file: !3, line: 22, type: !19)
!25 = !DILocation(line: 20, column: 38, scope: !16)
!26 = !DILocation(line: 22, column: 2, scope: !16)
!27 = !DILocation(line: 22, column: 16, scope: !16)
!28 = !DILocation(line: 22, column: 19, scope: !16)
!29 = !DILocation(line: 22, column: 22, scope: !16)
!30 = !DILocation(line: 24, column: 6, scope: !31)
!31 = distinct !DILexicalBlock(scope: !16, file: !3, line: 24, column: 6)
!32 = !DILocation(line: 24, column: 8, scope: !31)
!33 = !DILocation(line: 24, column: 6, scope: !16)
!34 = !DILocation(line: 25, column: 10, scope: !31)
!35 = !DILocation(line: 25, column: 3, scope: !31)
!36 = !DILocation(line: 27, column: 20, scope: !16)
!37 = !DILocation(line: 27, column: 14, scope: !16)
!38 = !DILocation(line: 27, column: 23, scope: !16)
!39 = !DILocation(line: 27, column: 10, scope: !16)
!40 = !DILocation(line: 27, column: 4, scope: !16)
!41 = !DILocation(line: 28, column: 2, scope: !16)
!42 = !DILocation(line: 28, column: 9, scope: !16)
!43 = !DILocation(line: 28, column: 11, scope: !16)
!44 = !DILocation(line: 29, column: 7, scope: !45)
!45 = distinct !DILexicalBlock(scope: !16, file: !3, line: 28, column: 17)
!46 = !DILocation(line: 29, column: 11, scope: !45)
!47 = !DILocation(line: 29, column: 9, scope: !45)
!48 = !DILocation(line: 29, column: 5, scope: !45)
!49 = !DILocation(line: 30, column: 5, scope: !45)
!50 = !DILocation(line: 32, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !45, file: !3, line: 32, column: 7)
!52 = !DILocation(line: 32, column: 12, scope: !51)
!53 = !DILocation(line: 32, column: 9, scope: !51)
!54 = !DILocation(line: 32, column: 7, scope: !45)
!55 = !DILocation(line: 33, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !51, file: !3, line: 32, column: 15)
!57 = !DILocation(line: 33, column: 6, scope: !56)
!58 = !DILocation(line: 34, column: 9, scope: !56)
!59 = !DILocation(line: 34, column: 6, scope: !56)
!60 = !DILocation(line: 35, column: 3, scope: !56)
!61 = !DILocation(line: 36, column: 5, scope: !45)
!62 = distinct !{!62, !41, !63, !64, !65}
!63 = !DILocation(line: 37, column: 2, scope: !16)
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !DILocation(line: 39, column: 9, scope: !16)
!67 = !DILocation(line: 39, column: 2, scope: !16)
!68 = !DILocation(line: 40, column: 1, scope: !16)
!69 = distinct !DISubprogram(name: "__fls", scope: !70, file: !70, line: 294, type: !17, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !71)
!70 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!71 = !{!72}
!72 = !DILocalVariable(name: "word", arg: 1, scope: !69, file: !70, line: 294, type: !19)
!73 = !DILocation(line: 294, column: 58, scope: !69)
!74 = !DILocation(line: 298, column: 14, scope: !69)
!75 = !DILocation(line: 296, column: 2, scope: !69)
!76 = !{i64 268780}
!77 = !DILocation(line: 299, column: 9, scope: !69)
!78 = !DILocation(line: 299, column: 2, scope: !69)
