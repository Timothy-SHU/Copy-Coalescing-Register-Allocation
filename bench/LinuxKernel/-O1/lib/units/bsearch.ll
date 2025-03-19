; ModuleID = 'lib/bsearch.c'
source_filename = "lib/bsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bsearch: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad bsearch ; .previous"

@__UNIQUE_ID___addressable_bsearch303 = internal global ptr @bsearch, section ".discard.addressable", align 8, !dbg !0
@_kbl_addr_bsearch = internal global i64 ptrtoint (ptr @bsearch to i64), section "_kprobe_blacklist", align 8, !dbg !8
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_bsearch303, ptr @_kbl_addr_bsearch], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @bsearch(ptr noundef %key, ptr noundef %base, i64 noundef %num, i64 noundef %size, ptr noundef %cmp) #0 align 16 !dbg !19 {
entry:
  %key.addr = alloca ptr, align 8
  %base.addr = alloca ptr, align 8
  %num.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %cmp.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !35, metadata !DIExpression()), !dbg !40
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !36, metadata !DIExpression()), !dbg !41
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !37, metadata !DIExpression()), !dbg !42
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !38, metadata !DIExpression()), !dbg !43
  store ptr %cmp, ptr %cmp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmp.addr, metadata !39, metadata !DIExpression()), !dbg !44
  %0 = load ptr, ptr %key.addr, align 8, !dbg !45
  %1 = load ptr, ptr %base.addr, align 8, !dbg !46
  %2 = load i64, ptr %num.addr, align 8, !dbg !47
  %3 = load i64, ptr %size.addr, align 8, !dbg !48
  %4 = load ptr, ptr %cmp.addr, align 8, !dbg !49
  %call = call ptr @__inline_bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) #4, !dbg !50
  ret ptr %call, !dbg !51
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__inline_bsearch(ptr noundef %key, ptr noundef %base, i64 noundef %num, i64 noundef %size, ptr noundef %cmp) #2 align 16 !dbg !52 {
entry:
  %retval = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %base.addr = alloca ptr, align 8
  %num.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %cmp.addr = alloca ptr, align 8
  %pivot = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !55, metadata !DIExpression()), !dbg !65
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !56, metadata !DIExpression()), !dbg !66
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !57, metadata !DIExpression()), !dbg !67
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !58, metadata !DIExpression()), !dbg !68
  store ptr %cmp, ptr %cmp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmp.addr, metadata !59, metadata !DIExpression()), !dbg !69
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivot) #5, !dbg !70
  call void @llvm.dbg.declare(metadata ptr %pivot, metadata !60, metadata !DIExpression()), !dbg !71
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #5, !dbg !72
  call void @llvm.dbg.declare(metadata ptr %result, metadata !64, metadata !DIExpression()), !dbg !73
  br label %while.cond, !dbg !74

while.cond:                                       ; preds = %if.end6, %entry
  %0 = load i64, ptr %num.addr, align 8, !dbg !75
  %cmp1 = icmp ugt i64 %0, 0, !dbg !76
  br i1 %cmp1, label %while.body, label %while.end, !dbg !74

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %base.addr, align 8, !dbg !77
  %2 = load i64, ptr %num.addr, align 8, !dbg !79
  %shr = lshr i64 %2, 1, !dbg !80
  %3 = load i64, ptr %size.addr, align 8, !dbg !81
  %mul = mul i64 %shr, %3, !dbg !82
  %add.ptr = getelementptr i8, ptr %1, i64 %mul, !dbg !83
  store ptr %add.ptr, ptr %pivot, align 8, !dbg !84
  %4 = load ptr, ptr %cmp.addr, align 8, !dbg !85
  %5 = load ptr, ptr %key.addr, align 8, !dbg !86
  %6 = load ptr, ptr %pivot, align 8, !dbg !87
  %call = call i32 %4(ptr noundef %5, ptr noundef %6) #4, !dbg !85
  store i32 %call, ptr %result, align 4, !dbg !88
  %7 = load i32, ptr %result, align 4, !dbg !89
  %cmp2 = icmp eq i32 %7, 0, !dbg !91
  br i1 %cmp2, label %if.then, label %if.end, !dbg !92

if.then:                                          ; preds = %while.body
  %8 = load ptr, ptr %pivot, align 8, !dbg !93
  store ptr %8, ptr %retval, align 8, !dbg !94
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !94

if.end:                                           ; preds = %while.body
  %9 = load i32, ptr %result, align 4, !dbg !95
  %cmp3 = icmp sgt i32 %9, 0, !dbg !97
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !98

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %pivot, align 8, !dbg !99
  %11 = load i64, ptr %size.addr, align 8, !dbg !101
  %add.ptr5 = getelementptr i8, ptr %10, i64 %11, !dbg !102
  store ptr %add.ptr5, ptr %base.addr, align 8, !dbg !103
  %12 = load i64, ptr %num.addr, align 8, !dbg !104
  %dec = add i64 %12, -1, !dbg !104
  store i64 %dec, ptr %num.addr, align 8, !dbg !104
  br label %if.end6, !dbg !105

if.end6:                                          ; preds = %if.then4, %if.end
  %13 = load i64, ptr %num.addr, align 8, !dbg !106
  %shr7 = lshr i64 %13, 1, !dbg !106
  store i64 %shr7, ptr %num.addr, align 8, !dbg !106
  br label %while.cond, !dbg !74, !llvm.loop !107

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !111

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #5, !dbg !112
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivot) #5, !dbg !112
  %14 = load ptr, ptr %retval, align 8, !dbg !112
  ret ptr %14, !dbg !112
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
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bsearch303", scope: !2, file: !3, line: 35, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.bsearch.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/bsearch\22 -D KBUILD_BASENAME=\22bsearch\22 -D KBUILD_MODNAME=\22bsearch\22 -D __KBUILD_MODNAME=kmod_bsearch -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/bsearch.ll lib/bsearch.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/bsearch.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f44b26a7f951aa1070131de8b2aca18e")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!7 = !{!0, !8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "_kbl_addr_bsearch", scope: !2, file: !3, line: 36, type: !6, isLocal: true, isDefinition: true)
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 8, !"cf-protection-branch", i32 1}
!14 = !{i32 4, !"function_return_thunk_extern", i32 1}
!15 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!16 = !{i32 1, !"Code Model", i32 2}
!17 = !{i32 1, !"override-stack-alignment", i32 8}
!18 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!19 = distinct !DISubprogram(name: "bsearch", scope: !3, file: !3, line: 31, type: !20, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !34)
!20 = !DISubroutineType(types: !21)
!21 = !{!5, !22, !22, !24, !24, !29}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 61, baseType: !26)
!25 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !27, line: 72, baseType: !28)
!27 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !27, line: 16, baseType: !6)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !25, line: 245, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !22, !22}
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !{!35, !36, !37, !38, !39}
!35 = !DILocalVariable(name: "key", arg: 1, scope: !19, file: !3, line: 31, type: !22)
!36 = !DILocalVariable(name: "base", arg: 2, scope: !19, file: !3, line: 31, type: !22)
!37 = !DILocalVariable(name: "num", arg: 3, scope: !19, file: !3, line: 31, type: !24)
!38 = !DILocalVariable(name: "size", arg: 4, scope: !19, file: !3, line: 31, type: !24)
!39 = !DILocalVariable(name: "cmp", arg: 5, scope: !19, file: !3, line: 31, type: !29)
!40 = !DILocation(line: 31, column: 27, scope: !19)
!41 = !DILocation(line: 31, column: 44, scope: !19)
!42 = !DILocation(line: 31, column: 57, scope: !19)
!43 = !DILocation(line: 31, column: 69, scope: !19)
!44 = !DILocation(line: 31, column: 86, scope: !19)
!45 = !DILocation(line: 33, column: 26, scope: !19)
!46 = !DILocation(line: 33, column: 31, scope: !19)
!47 = !DILocation(line: 33, column: 37, scope: !19)
!48 = !DILocation(line: 33, column: 42, scope: !19)
!49 = !DILocation(line: 33, column: 48, scope: !19)
!50 = !DILocation(line: 33, column: 9, scope: !19)
!51 = !DILocation(line: 33, column: 2, scope: !19)
!52 = distinct !DISubprogram(name: "__inline_bsearch", scope: !53, file: !53, line: 8, type: !20, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !54)
!53 = !DIFile(filename: "./include/linux/bsearch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "349c7fd6b20db6d92bc7bafdce6c5532")
!54 = !{!55, !56, !57, !58, !59, !60, !64}
!55 = !DILocalVariable(name: "key", arg: 1, scope: !52, file: !53, line: 8, type: !22)
!56 = !DILocalVariable(name: "base", arg: 2, scope: !52, file: !53, line: 8, type: !22)
!57 = !DILocalVariable(name: "num", arg: 3, scope: !52, file: !53, line: 8, type: !24)
!58 = !DILocalVariable(name: "size", arg: 4, scope: !52, file: !53, line: 8, type: !24)
!59 = !DILocalVariable(name: "cmp", arg: 5, scope: !52, file: !53, line: 8, type: !29)
!60 = !DILocalVariable(name: "pivot", scope: !52, file: !53, line: 10, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !DILocalVariable(name: "result", scope: !52, file: !53, line: 11, type: !33)
!65 = !DILocation(line: 8, column: 36, scope: !52)
!66 = !DILocation(line: 8, column: 53, scope: !52)
!67 = !DILocation(line: 8, column: 66, scope: !52)
!68 = !DILocation(line: 8, column: 78, scope: !52)
!69 = !DILocation(line: 8, column: 95, scope: !52)
!70 = !DILocation(line: 10, column: 2, scope: !52)
!71 = !DILocation(line: 10, column: 14, scope: !52)
!72 = !DILocation(line: 11, column: 2, scope: !52)
!73 = !DILocation(line: 11, column: 6, scope: !52)
!74 = !DILocation(line: 13, column: 2, scope: !52)
!75 = !DILocation(line: 13, column: 9, scope: !52)
!76 = !DILocation(line: 13, column: 13, scope: !52)
!77 = !DILocation(line: 14, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !52, file: !53, line: 13, column: 18)
!79 = !DILocation(line: 14, column: 19, scope: !78)
!80 = !DILocation(line: 14, column: 23, scope: !78)
!81 = !DILocation(line: 14, column: 31, scope: !78)
!82 = !DILocation(line: 14, column: 29, scope: !78)
!83 = !DILocation(line: 14, column: 16, scope: !78)
!84 = !DILocation(line: 14, column: 9, scope: !78)
!85 = !DILocation(line: 15, column: 12, scope: !78)
!86 = !DILocation(line: 15, column: 16, scope: !78)
!87 = !DILocation(line: 15, column: 21, scope: !78)
!88 = !DILocation(line: 15, column: 10, scope: !78)
!89 = !DILocation(line: 17, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !78, file: !53, line: 17, column: 7)
!91 = !DILocation(line: 17, column: 14, scope: !90)
!92 = !DILocation(line: 17, column: 7, scope: !78)
!93 = !DILocation(line: 18, column: 19, scope: !90)
!94 = !DILocation(line: 18, column: 4, scope: !90)
!95 = !DILocation(line: 20, column: 7, scope: !96)
!96 = distinct !DILexicalBlock(scope: !78, file: !53, line: 20, column: 7)
!97 = !DILocation(line: 20, column: 14, scope: !96)
!98 = !DILocation(line: 20, column: 7, scope: !78)
!99 = !DILocation(line: 21, column: 11, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !53, line: 20, column: 19)
!101 = !DILocation(line: 21, column: 19, scope: !100)
!102 = !DILocation(line: 21, column: 17, scope: !100)
!103 = !DILocation(line: 21, column: 9, scope: !100)
!104 = !DILocation(line: 22, column: 7, scope: !100)
!105 = !DILocation(line: 23, column: 3, scope: !100)
!106 = !DILocation(line: 24, column: 7, scope: !78)
!107 = distinct !{!107, !74, !108, !109, !110}
!108 = !DILocation(line: 25, column: 2, scope: !52)
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = !DILocation(line: 27, column: 2, scope: !52)
!112 = !DILocation(line: 28, column: 1, scope: !52)
