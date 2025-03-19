; ModuleID = 'lib/clz_ctz.c'
source_filename = "lib/clz_ctz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___ctzsi2: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __ctzsi2 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___clzsi2: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __clzsi2 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___clzdi2: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __clzdi2 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___ctzdi2: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __ctzdi2 ; .previous"

@__UNIQUE_ID___addressable___ctzsi23 = internal global ptr @__ctzsi2, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable___clzsi24 = internal global ptr @__clzsi2, section ".discard.addressable", align 8, !dbg !8
@__UNIQUE_ID___addressable___clzdi25 = internal global ptr @__clzdi2, section ".discard.addressable", align 8, !dbg !10
@__UNIQUE_ID___addressable___ctzdi26 = internal global ptr @__ctzdi2, section ".discard.addressable", align 8, !dbg !12
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable___ctzsi23, ptr @__UNIQUE_ID___addressable___clzsi24, ptr @__UNIQUE_ID___addressable___clzdi25, ptr @__UNIQUE_ID___addressable___ctzdi26], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @__ctzsi2(i32 noundef %val) #0 align 16 !dbg !23 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !28, metadata !DIExpression()), !dbg !29
  %0 = load i32, ptr %val.addr, align 4, !dbg !30
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !30
  br i1 %1, label %cond.true, label %cond.false, !dbg !30

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %val.addr, align 4, !dbg !30
  %conv = sext i32 %2 to i64, !dbg !30
  %3 = call i64 @llvm.cttz.i64(i64 %conv, i1 true), !dbg !30
  %cast = trunc i64 %3 to i32, !dbg !30
  %conv1 = sext i32 %cast to i64, !dbg !30
  br label %cond.end, !dbg !30

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %val.addr, align 4, !dbg !30
  %conv2 = sext i32 %4 to i64, !dbg !30
  %call = call i64 @variable__ffs(i64 noundef %conv2) #6, !dbg !30
  br label %cond.end, !dbg !30

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv1, %cond.true ], [ %call, %cond.false ], !dbg !30
  %conv3 = trunc i64 %cond to i32, !dbg !30
  ret i32 %conv3, !dbg !31
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #3 align 16 !dbg !32 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !37, metadata !DIExpression()), !dbg !38
  %0 = load i64, ptr %word.addr, align 8, !dbg !39
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #7, !dbg !40, !srcloc !41
  store i64 %1, ptr %word.addr, align 8, !dbg !40
  %2 = load i64, ptr %word.addr, align 8, !dbg !42
  ret i64 %2, !dbg !43
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @__clzsi2(i32 noundef %val) #0 align 16 !dbg !44 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !46, metadata !DIExpression()), !dbg !47
  %0 = load i32, ptr %val.addr, align 4, !dbg !48
  %call = call i32 @fls(i32 noundef %0) #6, !dbg !49
  %sub = sub i32 32, %call, !dbg !50
  ret i32 %sub, !dbg !51
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #3 align 16 !dbg !52 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !57, metadata !DIExpression()), !dbg !59
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #8, !dbg !60
  call void @llvm.dbg.declare(metadata ptr %r, metadata !58, metadata !DIExpression()), !dbg !61
  %0 = load i32, ptr %x.addr, align 4, !dbg !62
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #7, !dbg !63, !srcloc !64
  store i32 %1, ptr %r, align 4, !dbg !63
  %2 = load i32, ptr %r, align 4, !dbg !65
  %add = add i32 %2, 1, !dbg !66
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #8, !dbg !67
  ret i32 %add, !dbg !68
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @__clzdi2(i64 noundef %val) #0 align 16 !dbg !69 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !78, metadata !DIExpression()), !dbg !79
  %0 = load i64, ptr %val.addr, align 8, !dbg !80
  %call = call i32 @fls64(i64 noundef %0) #6, !dbg !81
  %sub = sub i32 64, %call, !dbg !82
  ret i32 %sub, !dbg !83
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #3 align 16 !dbg !84 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !88, metadata !DIExpression()), !dbg !90
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #8, !dbg !91
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !89, metadata !DIExpression()), !dbg !92
  store i32 -1, ptr %bitpos, align 4, !dbg !92
  %0 = load i32, ptr %bitpos, align 4, !dbg !93
  %1 = load i64, ptr %x.addr, align 8, !dbg !94
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #7, !dbg !93, !srcloc !95
  store i32 %2, ptr %bitpos, align 4, !dbg !93
  %3 = load i32, ptr %bitpos, align 4, !dbg !96
  %add = add i32 %3, 1, !dbg !97
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #8, !dbg !98
  ret i32 %add, !dbg !99
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @__ctzdi2(i64 noundef %val) #0 align 16 !dbg !100 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !102, metadata !DIExpression()), !dbg !103
  %0 = load i64, ptr %val.addr, align 8, !dbg !104
  %call = call i64 @__ffs64(i64 noundef %0) #6, !dbg !105
  %conv = trunc i64 %call to i32, !dbg !105
  ret i32 %conv, !dbg !106
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__ffs64(i64 noundef %word) #4 align 16 !dbg !107 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !112, metadata !DIExpression()), !dbg !113
  %0 = load i64, ptr %word.addr, align 8, !dbg !114
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !114
  br i1 %1, label %cond.true, label %cond.false, !dbg !114

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %word.addr, align 8, !dbg !114
  %3 = call i64 @llvm.cttz.i64(i64 %2, i1 true), !dbg !114
  %cast = trunc i64 %3 to i32, !dbg !114
  %conv = sext i32 %cast to i64, !dbg !114
  br label %cond.end, !dbg !114

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %word.addr, align 8, !dbg !114
  %call = call i64 @variable__ffs(i64 noundef %4) #6, !dbg !114
  br label %cond.end, !dbg !114

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !114
  ret i64 %cond, !dbg !115
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone }
attributes #7 = { nounwind memory(read) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___ctzsi23", scope: !2, file: !3, line: 22, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.clz_ctz.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/clz_ctz\22 -D KBUILD_BASENAME=\22clz_ctz\22 -D KBUILD_MODNAME=\22clz_ctz\22 -D __KBUILD_MODNAME=kmod_clz_ctz -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/clz_ctz.ll lib/clz_ctz.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/clz_ctz.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b634a82a434a37fc7cce398773a77fb")
!4 = !{!5, !6}
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !10, !12}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___clzsi24", scope: !2, file: !3, line: 29, type: !6, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___clzdi25", scope: !2, file: !3, line: 36, type: !6, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___ctzdi26", scope: !2, file: !3, line: 43, type: !6, isLocal: true, isDefinition: true)
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 8, !"cf-protection-branch", i32 1}
!18 = !{i32 4, !"function_return_thunk_extern", i32 1}
!19 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!20 = !{i32 1, !"Code Model", i32 2}
!21 = !{i32 1, !"override-stack-alignment", i32 8}
!22 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!23 = distinct !DISubprogram(name: "__ctzsi2", scope: !3, file: !3, line: 18, type: !24, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !27)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !26}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{!28}
!28 = !DILocalVariable(name: "val", arg: 1, scope: !23, file: !3, line: 18, type: !26)
!29 = !DILocation(line: 18, column: 25, scope: !23)
!30 = !DILocation(line: 20, column: 9, scope: !23)
!31 = !DILocation(line: 20, column: 2, scope: !23)
!32 = distinct !DISubprogram(name: "variable__ffs", scope: !33, file: !33, line: 250, type: !34, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !36)
!33 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!34 = !DISubroutineType(types: !35)
!35 = !{!5, !5}
!36 = !{!37}
!37 = !DILocalVariable(name: "word", arg: 1, scope: !32, file: !33, line: 250, type: !5)
!38 = !DILocation(line: 250, column: 66, scope: !32)
!39 = !DILocation(line: 254, column: 11, scope: !32)
!40 = !DILocation(line: 252, column: 2, scope: !32)
!41 = !{i64 286586}
!42 = !DILocation(line: 255, column: 9, scope: !32)
!43 = !DILocation(line: 255, column: 2, scope: !32)
!44 = distinct !DISubprogram(name: "__clzsi2", scope: !3, file: !3, line: 25, type: !24, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !45)
!45 = !{!46}
!46 = !DILocalVariable(name: "val", arg: 1, scope: !44, file: !3, line: 25, type: !26)
!47 = !DILocation(line: 25, column: 25, scope: !44)
!48 = !DILocation(line: 27, column: 18, scope: !44)
!49 = !DILocation(line: 27, column: 14, scope: !44)
!50 = !DILocation(line: 27, column: 12, scope: !44)
!51 = !DILocation(line: 27, column: 2, scope: !44)
!52 = distinct !DISubprogram(name: "fls", scope: !33, file: !33, line: 359, type: !53, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !56)
!53 = !DISubroutineType(types: !54)
!54 = !{!26, !55}
!55 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!56 = !{!57, !58}
!57 = !DILocalVariable(name: "x", arg: 1, scope: !52, file: !33, line: 359, type: !55)
!58 = !DILocalVariable(name: "r", scope: !52, file: !33, line: 361, type: !26)
!59 = !DILocation(line: 359, column: 45, scope: !52)
!60 = !DILocation(line: 361, column: 2, scope: !52)
!61 = !DILocation(line: 361, column: 6, scope: !52)
!62 = !DILocation(line: 375, column: 14, scope: !52)
!63 = !DILocation(line: 373, column: 2, scope: !52)
!64 = !{i64 289648}
!65 = !DILocation(line: 386, column: 9, scope: !52)
!66 = !DILocation(line: 386, column: 11, scope: !52)
!67 = !DILocation(line: 387, column: 1, scope: !52)
!68 = !DILocation(line: 386, column: 2, scope: !52)
!69 = distinct !DISubprogram(name: "__clzdi2", scope: !3, file: !3, line: 32, type: !70, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !77)
!70 = !DISubroutineType(types: !71)
!71 = !{!26, !72}
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !73, line: 23, baseType: !74)
!73 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !75, line: 31, baseType: !76)
!75 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!76 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!77 = !{!78}
!78 = !DILocalVariable(name: "val", arg: 1, scope: !69, file: !3, line: 32, type: !72)
!79 = !DILocation(line: 32, column: 25, scope: !69)
!80 = !DILocation(line: 34, column: 20, scope: !69)
!81 = !DILocation(line: 34, column: 14, scope: !69)
!82 = !DILocation(line: 34, column: 12, scope: !69)
!83 = !DILocation(line: 34, column: 2, scope: !69)
!84 = distinct !DISubprogram(name: "fls64", scope: !33, file: !33, line: 401, type: !85, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !87)
!85 = !DISubroutineType(types: !86)
!86 = !{!26, !74}
!87 = !{!88, !89}
!88 = !DILocalVariable(name: "x", arg: 1, scope: !84, file: !33, line: 401, type: !74)
!89 = !DILocalVariable(name: "bitpos", scope: !84, file: !33, line: 403, type: !26)
!90 = !DILocation(line: 401, column: 40, scope: !84)
!91 = !DILocation(line: 403, column: 2, scope: !84)
!92 = !DILocation(line: 403, column: 6, scope: !84)
!93 = !DILocation(line: 409, column: 2, scope: !84)
!94 = !DILocation(line: 411, column: 14, scope: !84)
!95 = !{i64 290614}
!96 = !DILocation(line: 412, column: 9, scope: !84)
!97 = !DILocation(line: 412, column: 16, scope: !84)
!98 = !DILocation(line: 413, column: 1, scope: !84)
!99 = !DILocation(line: 412, column: 2, scope: !84)
!100 = distinct !DISubprogram(name: "__ctzdi2", scope: !3, file: !3, line: 39, type: !70, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !101)
!101 = !{!102}
!102 = !DILocalVariable(name: "val", arg: 1, scope: !100, file: !3, line: 39, type: !72)
!103 = !DILocation(line: 39, column: 25, scope: !100)
!104 = !DILocation(line: 41, column: 17, scope: !100)
!105 = !DILocation(line: 41, column: 9, scope: !100)
!106 = !DILocation(line: 41, column: 2, scope: !100)
!107 = distinct !DISubprogram(name: "__ffs64", scope: !108, file: !108, line: 240, type: !109, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!108 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!109 = !DISubroutineType(types: !110)
!110 = !{!5, !72}
!111 = !{!112}
!112 = !DILocalVariable(name: "word", arg: 1, scope: !107, file: !108, line: 240, type: !72)
!113 = !DILocation(line: 240, column: 41, scope: !107)
!114 = !DILocation(line: 248, column: 9, scope: !107)
!115 = !DILocation(line: 248, column: 2, scope: !107)
