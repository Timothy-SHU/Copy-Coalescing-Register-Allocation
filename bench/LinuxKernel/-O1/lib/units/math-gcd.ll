; ModuleID = 'lib/math/gcd.c'
source_filename = "lib/math/gcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gcd: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad gcd ; .previous"

@__UNIQUE_ID___addressable_gcd3 = internal global ptr @gcd, section ".discard.addressable", align 8, !dbg !0
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_gcd3], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define hidden i64 @gcd(i64 noundef %a, i64 noundef %b) #0 align 16 !dbg !17 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__tmp = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !21, metadata !DIExpression()), !dbg !30
  store i64 %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !22, metadata !DIExpression()), !dbg !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #5, !dbg !32
  call void @llvm.dbg.declare(metadata ptr %r, metadata !23, metadata !DIExpression()), !dbg !33
  %0 = load i64, ptr %a.addr, align 8, !dbg !34
  %1 = load i64, ptr %b.addr, align 8, !dbg !35
  %or = or i64 %0, %1, !dbg !36
  store i64 %or, ptr %r, align 8, !dbg !33
  %2 = load i64, ptr %a.addr, align 8, !dbg !37
  %tobool = icmp ne i64 %2, 0, !dbg !37
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !39

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, ptr %b.addr, align 8, !dbg !40
  %tobool1 = icmp ne i64 %3, 0, !dbg !40
  br i1 %tobool1, label %if.end, label %if.then, !dbg !41

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i64, ptr %r, align 8, !dbg !42
  store i64 %4, ptr %retval, align 8, !dbg !43
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !43

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, ptr %b.addr, align 8, !dbg !44
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !44
  br i1 %6, label %cond.true, label %cond.false, !dbg !44

cond.true:                                        ; preds = %if.end
  %7 = load i64, ptr %b.addr, align 8, !dbg !44
  %8 = call i64 @llvm.cttz.i64(i64 %7, i1 true), !dbg !44
  %cast = trunc i64 %8 to i32, !dbg !44
  %conv = sext i32 %cast to i64, !dbg !44
  br label %cond.end, !dbg !44

cond.false:                                       ; preds = %if.end
  %9 = load i64, ptr %b.addr, align 8, !dbg !44
  %call = call i64 @variable__ffs(i64 noundef %9) #6, !dbg !44
  br label %cond.end, !dbg !44

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !44
  %10 = load i64, ptr %b.addr, align 8, !dbg !45
  %shr = lshr i64 %10, %cond, !dbg !45
  store i64 %shr, ptr %b.addr, align 8, !dbg !45
  %11 = load i64, ptr %b.addr, align 8, !dbg !46
  %cmp = icmp eq i64 %11, 1, !dbg !48
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !49

if.then3:                                         ; preds = %cond.end
  %12 = load i64, ptr %r, align 8, !dbg !50
  %13 = load i64, ptr %r, align 8, !dbg !51
  %sub = sub i64 0, %13, !dbg !52
  %and = and i64 %12, %sub, !dbg !53
  store i64 %and, ptr %retval, align 8, !dbg !54
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !54

if.end4:                                          ; preds = %cond.end
  br label %for.cond, !dbg !55

for.cond:                                         ; preds = %if.end33, %if.end4
  %14 = load i64, ptr %a.addr, align 8, !dbg !56
  %15 = call i1 @llvm.is.constant.i64(i64 %14), !dbg !56
  br i1 %15, label %cond.true5, label %cond.false8, !dbg !56

cond.true5:                                       ; preds = %for.cond
  %16 = load i64, ptr %a.addr, align 8, !dbg !56
  %17 = call i64 @llvm.cttz.i64(i64 %16, i1 true), !dbg !56
  %cast6 = trunc i64 %17 to i32, !dbg !56
  %conv7 = sext i32 %cast6 to i64, !dbg !56
  br label %cond.end10, !dbg !56

cond.false8:                                      ; preds = %for.cond
  %18 = load i64, ptr %a.addr, align 8, !dbg !56
  %call9 = call i64 @variable__ffs(i64 noundef %18) #6, !dbg !56
  br label %cond.end10, !dbg !56

cond.end10:                                       ; preds = %cond.false8, %cond.true5
  %cond11 = phi i64 [ %conv7, %cond.true5 ], [ %call9, %cond.false8 ], !dbg !56
  %19 = load i64, ptr %a.addr, align 8, !dbg !57
  %shr12 = lshr i64 %19, %cond11, !dbg !57
  store i64 %shr12, ptr %a.addr, align 8, !dbg !57
  %20 = load i64, ptr %a.addr, align 8, !dbg !58
  %cmp13 = icmp eq i64 %20, 1, !dbg !60
  br i1 %cmp13, label %if.then15, label %if.end18, !dbg !61

if.then15:                                        ; preds = %cond.end10
  %21 = load i64, ptr %r, align 8, !dbg !62
  %22 = load i64, ptr %r, align 8, !dbg !63
  %sub16 = sub i64 0, %22, !dbg !64
  %and17 = and i64 %21, %sub16, !dbg !65
  store i64 %and17, ptr %retval, align 8, !dbg !66
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !66

if.end18:                                         ; preds = %cond.end10
  %23 = load i64, ptr %a.addr, align 8, !dbg !67
  %24 = load i64, ptr %b.addr, align 8, !dbg !69
  %cmp19 = icmp eq i64 %23, %24, !dbg !70
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !71

if.then21:                                        ; preds = %if.end18
  %25 = load i64, ptr %a.addr, align 8, !dbg !72
  %26 = load i64, ptr %r, align 8, !dbg !73
  %27 = call i1 @llvm.is.constant.i64(i64 %26), !dbg !73
  br i1 %27, label %cond.true22, label %cond.false25, !dbg !73

cond.true22:                                      ; preds = %if.then21
  %28 = load i64, ptr %r, align 8, !dbg !73
  %29 = call i64 @llvm.cttz.i64(i64 %28, i1 true), !dbg !73
  %cast23 = trunc i64 %29 to i32, !dbg !73
  %conv24 = sext i32 %cast23 to i64, !dbg !73
  br label %cond.end27, !dbg !73

cond.false25:                                     ; preds = %if.then21
  %30 = load i64, ptr %r, align 8, !dbg !73
  %call26 = call i64 @variable__ffs(i64 noundef %30) #6, !dbg !73
  br label %cond.end27, !dbg !73

cond.end27:                                       ; preds = %cond.false25, %cond.true22
  %cond28 = phi i64 [ %conv24, %cond.true22 ], [ %call26, %cond.false25 ], !dbg !73
  %shl = shl i64 %25, %cond28, !dbg !74
  store i64 %shl, ptr %retval, align 8, !dbg !75
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !75

if.end29:                                         ; preds = %if.end18
  %31 = load i64, ptr %a.addr, align 8, !dbg !76
  %32 = load i64, ptr %b.addr, align 8, !dbg !77
  %cmp30 = icmp ult i64 %31, %32, !dbg !78
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !79

if.then32:                                        ; preds = %if.end29
  br label %do.body, !dbg !80

do.body:                                          ; preds = %if.then32
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #5, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !24, metadata !DIExpression()), !dbg !81
  %33 = load i64, ptr %a.addr, align 8, !dbg !81
  store i64 %33, ptr %__tmp, align 8, !dbg !81
  %34 = load i64, ptr %b.addr, align 8, !dbg !81
  store i64 %34, ptr %a.addr, align 8, !dbg !81
  %35 = load i64, ptr %__tmp, align 8, !dbg !81
  store i64 %35, ptr %b.addr, align 8, !dbg !81
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #5, !dbg !80
  br label %do.cond, !dbg !81

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !81

do.end:                                           ; preds = %do.cond
  br label %if.end33, !dbg !81

if.end33:                                         ; preds = %do.end, %if.end29
  %36 = load i64, ptr %b.addr, align 8, !dbg !82
  %37 = load i64, ptr %a.addr, align 8, !dbg !83
  %sub34 = sub i64 %37, %36, !dbg !83
  store i64 %sub34, ptr %a.addr, align 8, !dbg !83
  br label %for.cond, !dbg !84, !llvm.loop !85

cleanup:                                          ; preds = %cond.end27, %if.then15, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #5, !dbg !89
  %38 = load i64, ptr %retval, align 8, !dbg !89
  ret i64 %38, !dbg !89
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #4 align 16 !dbg !90 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = load i64, ptr %word.addr, align 8, !dbg !97
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #7, !dbg !98, !srcloc !99
  store i64 %1, ptr %word.addr, align 8, !dbg !98
  %2 = load i64, ptr %word.addr, align 8, !dbg !100
  ret i64 %2, !dbg !101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gcd3", scope: !2, file: !3, line: 85, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/math/.gcd.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/math/gcd\22 -D KBUILD_BASENAME=\22gcd\22 -D KBUILD_MODNAME=\22gcd\22 -D __KBUILD_MODNAME=kmod_gcd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/math/gcd.ll lib/math/gcd.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/math/gcd.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4b5b731ee63127a64aa74b5e513e8344")
!4 = !{!5, !6}
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0}
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 8, !"cf-protection-branch", i32 1}
!12 = !{i32 4, !"function_return_thunk_extern", i32 1}
!13 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!14 = !{i32 1, !"Code Model", i32 2}
!15 = !{i32 1, !"override-stack-alignment", i32 8}
!16 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!17 = distinct !DISubprogram(name: "gcd", scope: !3, file: !3, line: 23, type: !18, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !20)
!18 = !DISubroutineType(types: !19)
!19 = !{!5, !5, !5}
!20 = !{!21, !22, !23, !24}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !17, file: !3, line: 23, type: !5)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !17, file: !3, line: 23, type: !5)
!23 = !DILocalVariable(name: "r", scope: !17, file: !3, line: 25, type: !5)
!24 = !DILocalVariable(name: "__tmp", scope: !25, file: !3, line: 42, type: !5)
!25 = distinct !DILexicalBlock(scope: !26, file: !3, line: 42, column: 4)
!26 = distinct !DILexicalBlock(scope: !27, file: !3, line: 41, column: 7)
!27 = distinct !DILexicalBlock(scope: !28, file: !3, line: 34, column: 11)
!28 = distinct !DILexicalBlock(scope: !29, file: !3, line: 34, column: 2)
!29 = distinct !DILexicalBlock(scope: !17, file: !3, line: 34, column: 2)
!30 = !DILocation(line: 23, column: 33, scope: !17)
!31 = !DILocation(line: 23, column: 50, scope: !17)
!32 = !DILocation(line: 25, column: 2, scope: !17)
!33 = !DILocation(line: 25, column: 16, scope: !17)
!34 = !DILocation(line: 25, column: 20, scope: !17)
!35 = !DILocation(line: 25, column: 24, scope: !17)
!36 = !DILocation(line: 25, column: 22, scope: !17)
!37 = !DILocation(line: 27, column: 7, scope: !38)
!38 = distinct !DILexicalBlock(scope: !17, file: !3, line: 27, column: 6)
!39 = !DILocation(line: 27, column: 9, scope: !38)
!40 = !DILocation(line: 27, column: 13, scope: !38)
!41 = !DILocation(line: 27, column: 6, scope: !17)
!42 = !DILocation(line: 28, column: 10, scope: !38)
!43 = !DILocation(line: 28, column: 3, scope: !38)
!44 = !DILocation(line: 30, column: 8, scope: !17)
!45 = !DILocation(line: 30, column: 4, scope: !17)
!46 = !DILocation(line: 31, column: 6, scope: !47)
!47 = distinct !DILexicalBlock(scope: !17, file: !3, line: 31, column: 6)
!48 = !DILocation(line: 31, column: 8, scope: !47)
!49 = !DILocation(line: 31, column: 6, scope: !17)
!50 = !DILocation(line: 32, column: 10, scope: !47)
!51 = !DILocation(line: 32, column: 15, scope: !47)
!52 = !DILocation(line: 32, column: 14, scope: !47)
!53 = !DILocation(line: 32, column: 12, scope: !47)
!54 = !DILocation(line: 32, column: 3, scope: !47)
!55 = !DILocation(line: 34, column: 2, scope: !17)
!56 = !DILocation(line: 35, column: 9, scope: !27)
!57 = !DILocation(line: 35, column: 5, scope: !27)
!58 = !DILocation(line: 36, column: 7, scope: !59)
!59 = distinct !DILexicalBlock(scope: !27, file: !3, line: 36, column: 7)
!60 = !DILocation(line: 36, column: 9, scope: !59)
!61 = !DILocation(line: 36, column: 7, scope: !27)
!62 = !DILocation(line: 37, column: 11, scope: !59)
!63 = !DILocation(line: 37, column: 16, scope: !59)
!64 = !DILocation(line: 37, column: 15, scope: !59)
!65 = !DILocation(line: 37, column: 13, scope: !59)
!66 = !DILocation(line: 37, column: 4, scope: !59)
!67 = !DILocation(line: 38, column: 7, scope: !68)
!68 = distinct !DILexicalBlock(scope: !27, file: !3, line: 38, column: 7)
!69 = !DILocation(line: 38, column: 12, scope: !68)
!70 = !DILocation(line: 38, column: 9, scope: !68)
!71 = !DILocation(line: 38, column: 7, scope: !27)
!72 = !DILocation(line: 39, column: 11, scope: !68)
!73 = !DILocation(line: 39, column: 16, scope: !68)
!74 = !DILocation(line: 39, column: 13, scope: !68)
!75 = !DILocation(line: 39, column: 4, scope: !68)
!76 = !DILocation(line: 41, column: 7, scope: !26)
!77 = !DILocation(line: 41, column: 11, scope: !26)
!78 = !DILocation(line: 41, column: 9, scope: !26)
!79 = !DILocation(line: 41, column: 7, scope: !27)
!80 = !DILocation(line: 42, column: 4, scope: !26)
!81 = !DILocation(line: 42, column: 4, scope: !25)
!82 = !DILocation(line: 43, column: 8, scope: !27)
!83 = !DILocation(line: 43, column: 5, scope: !27)
!84 = !DILocation(line: 34, column: 2, scope: !28)
!85 = distinct !{!85, !86, !87, !88}
!86 = !DILocation(line: 34, column: 2, scope: !29)
!87 = !DILocation(line: 44, column: 2, scope: !29)
!88 = !{!"llvm.loop.unroll.disable"}
!89 = !DILocation(line: 45, column: 1, scope: !17)
!90 = distinct !DISubprogram(name: "variable__ffs", scope: !91, file: !91, line: 250, type: !92, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !94)
!91 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!92 = !DISubroutineType(types: !93)
!93 = !{!5, !5}
!94 = !{!95}
!95 = !DILocalVariable(name: "word", arg: 1, scope: !90, file: !91, line: 250, type: !5)
!96 = !DILocation(line: 250, column: 66, scope: !90)
!97 = !DILocation(line: 254, column: 11, scope: !90)
!98 = !DILocation(line: 252, column: 2, scope: !90)
!99 = !{i64 294407}
!100 = !DILocation(line: 255, column: 9, scope: !90)
!101 = !DILocation(line: 255, column: 2, scope: !90)
