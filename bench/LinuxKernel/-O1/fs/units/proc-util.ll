; ModuleID = 'fs/proc/util.c'
source_filename = "fs/proc/util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.anon = type { i32, i32 }

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @name_to_int(ptr noundef %qstr) #0 align 16 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %qstr.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  %len = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %qstr, ptr %qstr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qstr.addr, metadata !41, metadata !DIExpression()), !dbg !52
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #3, !dbg !53
  call void @llvm.dbg.declare(metadata ptr %name, metadata !42, metadata !DIExpression()), !dbg !54
  %0 = load ptr, ptr %qstr.addr, align 8, !dbg !55
  %name1 = getelementptr inbounds %struct.qstr, ptr %0, i32 0, i32 1, !dbg !56
  %1 = load ptr, ptr %name1, align 8, !dbg !56
  store ptr %1, ptr %name, align 8, !dbg !54
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #3, !dbg !57
  call void @llvm.dbg.declare(metadata ptr %len, metadata !46, metadata !DIExpression()), !dbg !58
  %2 = load ptr, ptr %qstr.addr, align 8, !dbg !59
  %3 = getelementptr inbounds %struct.qstr, ptr %2, i32 0, i32 0, !dbg !60
  %len2 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1, !dbg !60
  %4 = load i32, ptr %len2, align 4, !dbg !60
  store i32 %4, ptr %len, align 4, !dbg !58
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3, !dbg !61
  call void @llvm.dbg.declare(metadata ptr %n, metadata !48, metadata !DIExpression()), !dbg !62
  store i32 0, ptr %n, align 4, !dbg !62
  %5 = load i32, ptr %len, align 4, !dbg !63
  %cmp = icmp sgt i32 %5, 1, !dbg !65
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !66

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %name, align 8, !dbg !67
  %7 = load i8, ptr %6, align 1, !dbg !68
  %conv = zext i8 %7 to i32, !dbg !68
  %cmp3 = icmp eq i32 %conv, 48, !dbg !69
  br i1 %cmp3, label %if.then, label %if.end, !dbg !70

if.then:                                          ; preds = %land.lhs.true
  br label %out, !dbg !71

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %do.body, !dbg !72

do.body:                                          ; preds = %do.cond, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %c, metadata !49, metadata !DIExpression()), !dbg !74
  %8 = load ptr, ptr %name, align 8, !dbg !75
  %incdec.ptr = getelementptr i8, ptr %8, i32 1, !dbg !75
  store ptr %incdec.ptr, ptr %name, align 8, !dbg !75
  %9 = load i8, ptr %8, align 1, !dbg !76
  %conv5 = zext i8 %9 to i32, !dbg !76
  %sub = sub i32 %conv5, 48, !dbg !77
  store i32 %sub, ptr %c, align 4, !dbg !74
  %10 = load i32, ptr %c, align 4, !dbg !78
  %cmp6 = icmp ugt i32 %10, 9, !dbg !80
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !81

if.then8:                                         ; preds = %do.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !82

if.end9:                                          ; preds = %do.body
  %11 = load i32, ptr %n, align 4, !dbg !83
  %cmp10 = icmp uge i32 %11, 429496728, !dbg !85
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !86

if.then12:                                        ; preds = %if.end9
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !87

if.end13:                                         ; preds = %if.end9
  %12 = load i32, ptr %n, align 4, !dbg !88
  %mul = mul i32 %12, 10, !dbg !88
  store i32 %mul, ptr %n, align 4, !dbg !88
  %13 = load i32, ptr %c, align 4, !dbg !89
  %14 = load i32, ptr %n, align 4, !dbg !90
  %add = add i32 %14, %13, !dbg !90
  store i32 %add, ptr %n, align 4, !dbg !90
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !91
  br label %cleanup, !dbg !91

cleanup:                                          ; preds = %if.then12, %if.then8, %if.end13
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3, !dbg !91
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
    i32 2, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond, !dbg !92

do.cond:                                          ; preds = %cleanup.cont
  %15 = load i32, ptr %len, align 4, !dbg !93
  %dec = add i32 %15, -1, !dbg !93
  store i32 %dec, ptr %len, align 4, !dbg !93
  %cmp14 = icmp sgt i32 %dec, 0, !dbg !94
  br i1 %cmp14, label %do.body, label %do.end, !dbg !92, !llvm.loop !95

do.end:                                           ; preds = %do.cond
  %16 = load i32, ptr %n, align 4, !dbg !99
  store i32 %16, ptr %retval, align 4, !dbg !100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16, !dbg !100

out:                                              ; preds = %cleanup, %if.then
  call void @llvm.dbg.label(metadata !51), !dbg !101
  store i32 -1, ptr %retval, align 4, !dbg !102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16, !dbg !102

cleanup16:                                        ; preds = %out, %do.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3, !dbg !103
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #3, !dbg !103
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #3, !dbg !103
  %17 = load i32, ptr %retval, align 4, !dbg !103
  ret i32 %17, !dbg !103
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/proc/.util.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/proc/proc\22 -D KBUILD_BASENAME=\22util\22 -D KBUILD_MODNAME=\22proc\22 -D __KBUILD_MODNAME=kmod_proc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/proc/util.ll fs/proc/util.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "fs/proc/util.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "15fcc44b291dfa8adc0cef006d233c8a")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!11 = distinct !DISubprogram(name: "name_to_int", scope: !1, file: !1, line: 4, type: !12, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !40)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !18, line: 49, size: 128, elements: !19)
!18 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!19 = !{!20, !36}
!20 = !DIDerivedType(tag: DW_TAG_member, scope: !17, file: !18, line: 50, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !17, file: !18, line: 50, size: 64, elements: !22)
!22 = !{!23, !32}
!23 = !DIDerivedType(tag: DW_TAG_member, scope: !21, file: !18, line: 51, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !21, file: !18, line: 51, size: 64, elements: !25)
!25 = !{!26, !31}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !24, file: !18, line: 52, baseType: !27, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !28, line: 21, baseType: !29)
!28 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !30, line: 27, baseType: !14)
!30 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!31 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !24, file: !18, line: 52, baseType: !27, size: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !21, file: !18, line: 54, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !28, line: 23, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !30, line: 31, baseType: !35)
!35 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !17, file: !18, line: 56, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !{!41, !42, !46, !48, !49, !51}
!41 = !DILocalVariable(name: "qstr", arg: 1, scope: !11, file: !1, line: 4, type: !15)
!42 = !DILocalVariable(name: "name", scope: !11, file: !1, line: 6, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DILocalVariable(name: "len", scope: !11, file: !1, line: 7, type: !47)
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DILocalVariable(name: "n", scope: !11, file: !1, line: 8, type: !14)
!49 = !DILocalVariable(name: "c", scope: !50, file: !1, line: 13, type: !14)
!50 = distinct !DILexicalBlock(scope: !11, file: !1, line: 12, column: 5)
!51 = !DILabel(scope: !11, name: "out", file: !1, line: 22)
!52 = !DILocation(line: 4, column: 41, scope: !11)
!53 = !DILocation(line: 6, column: 2, scope: !11)
!54 = !DILocation(line: 6, column: 14, scope: !11)
!55 = !DILocation(line: 6, column: 21, scope: !11)
!56 = !DILocation(line: 6, column: 27, scope: !11)
!57 = !DILocation(line: 7, column: 2, scope: !11)
!58 = !DILocation(line: 7, column: 6, scope: !11)
!59 = !DILocation(line: 7, column: 12, scope: !11)
!60 = !DILocation(line: 7, column: 18, scope: !11)
!61 = !DILocation(line: 8, column: 2, scope: !11)
!62 = !DILocation(line: 8, column: 11, scope: !11)
!63 = !DILocation(line: 10, column: 6, scope: !64)
!64 = distinct !DILexicalBlock(scope: !11, file: !1, line: 10, column: 6)
!65 = !DILocation(line: 10, column: 10, scope: !64)
!66 = !DILocation(line: 10, column: 14, scope: !64)
!67 = !DILocation(line: 10, column: 18, scope: !64)
!68 = !DILocation(line: 10, column: 17, scope: !64)
!69 = !DILocation(line: 10, column: 23, scope: !64)
!70 = !DILocation(line: 10, column: 6, scope: !11)
!71 = !DILocation(line: 11, column: 3, scope: !64)
!72 = !DILocation(line: 12, column: 2, scope: !11)
!73 = !DILocation(line: 13, column: 3, scope: !50)
!74 = !DILocation(line: 13, column: 12, scope: !50)
!75 = !DILocation(line: 13, column: 21, scope: !50)
!76 = !DILocation(line: 13, column: 16, scope: !50)
!77 = !DILocation(line: 13, column: 24, scope: !50)
!78 = !DILocation(line: 14, column: 7, scope: !79)
!79 = distinct !DILexicalBlock(scope: !50, file: !1, line: 14, column: 7)
!80 = !DILocation(line: 14, column: 9, scope: !79)
!81 = !DILocation(line: 14, column: 7, scope: !50)
!82 = !DILocation(line: 15, column: 4, scope: !79)
!83 = !DILocation(line: 16, column: 7, scope: !84)
!84 = distinct !DILexicalBlock(scope: !50, file: !1, line: 16, column: 7)
!85 = !DILocation(line: 16, column: 9, scope: !84)
!86 = !DILocation(line: 16, column: 7, scope: !50)
!87 = !DILocation(line: 17, column: 4, scope: !84)
!88 = !DILocation(line: 18, column: 5, scope: !50)
!89 = !DILocation(line: 19, column: 8, scope: !50)
!90 = !DILocation(line: 19, column: 5, scope: !50)
!91 = !DILocation(line: 20, column: 2, scope: !11)
!92 = !DILocation(line: 20, column: 2, scope: !50)
!93 = !DILocation(line: 20, column: 11, scope: !11)
!94 = !DILocation(line: 20, column: 17, scope: !11)
!95 = distinct !{!95, !72, !96, !97, !98}
!96 = !DILocation(line: 20, column: 20, scope: !11)
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = !DILocation(line: 21, column: 9, scope: !11)
!100 = !DILocation(line: 21, column: 2, scope: !11)
!101 = !DILocation(line: 22, column: 1, scope: !11)
!102 = !DILocation(line: 23, column: 2, scope: !11)
!103 = !DILocation(line: 24, column: 1, scope: !11)
