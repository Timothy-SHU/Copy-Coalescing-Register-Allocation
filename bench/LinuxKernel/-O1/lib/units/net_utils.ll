; ModuleID = 'lib/net_utils.c'
source_filename = "lib/net_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mac_pton: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mac_pton ; .previous"

@_ctype = external dso_local constant [0 x i8], align 1
@__UNIQUE_ID___addressable_mac_pton336 = internal global ptr @mac_pton, section ".discard.addressable", align 8, !dbg !0
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_mac_pton336], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @mac_pton(ptr noundef %s, ptr noundef %mac) #0 align 16 !dbg !25 {
entry:
  %retval = alloca i1, align 1
  %s.addr = alloca ptr, align 8
  %mac.addr = alloca ptr, align 8
  %maxlen = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !40, metadata !DIExpression()), !dbg !49
  store ptr %mac, ptr %mac.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mac.addr, metadata !41, metadata !DIExpression()), !dbg !50
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxlen) #4, !dbg !51
  call void @llvm.dbg.declare(metadata ptr %maxlen, metadata !42, metadata !DIExpression()), !dbg !52
  store i64 17, ptr %maxlen, align 8, !dbg !52
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !53
  call void @llvm.dbg.declare(metadata ptr %i, metadata !48, metadata !DIExpression()), !dbg !54
  %0 = load ptr, ptr %s.addr, align 8, !dbg !55
  %1 = load i64, ptr %maxlen, align 8, !dbg !57
  %call = call i64 @strnlen(ptr noundef %0, i64 noundef %1) #5, !dbg !58
  %2 = load i64, ptr %maxlen, align 8, !dbg !59
  %cmp = icmp ult i64 %call, %2, !dbg !60
  br i1 %cmp, label %if.then, label %if.end, !dbg !61

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !62
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !62

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !63
  br label %for.cond, !dbg !65

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !66
  %cmp1 = icmp slt i32 %3, 6, !dbg !68
  br i1 %cmp1, label %for.body, label %for.end, !dbg !69

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %s.addr, align 8, !dbg !70
  %5 = load i32, ptr %i, align 4, !dbg !70
  %mul = mul i32 %5, 3, !dbg !70
  %idxprom = sext i32 %mul to i64, !dbg !70
  %arrayidx = getelementptr i8, ptr %4, i64 %idxprom, !dbg !70
  %6 = load i8, ptr %arrayidx, align 1, !dbg !70
  %conv = zext i8 %6 to i32, !dbg !70
  %idxprom2 = sext i32 %conv to i64, !dbg !70
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom2, !dbg !70
  %7 = load i8, ptr %arrayidx3, align 1, !dbg !70
  %conv4 = zext i8 %7 to i32, !dbg !70
  %and = and i32 %conv4, 68, !dbg !70
  %cmp5 = icmp ne i32 %and, 0, !dbg !70
  br i1 %cmp5, label %lor.lhs.false, label %if.then17, !dbg !73

lor.lhs.false:                                    ; preds = %for.body
  %8 = load ptr, ptr %s.addr, align 8, !dbg !74
  %9 = load i32, ptr %i, align 4, !dbg !74
  %mul7 = mul i32 %9, 3, !dbg !74
  %add = add i32 %mul7, 1, !dbg !74
  %idxprom8 = sext i32 %add to i64, !dbg !74
  %arrayidx9 = getelementptr i8, ptr %8, i64 %idxprom8, !dbg !74
  %10 = load i8, ptr %arrayidx9, align 1, !dbg !74
  %conv10 = zext i8 %10 to i32, !dbg !74
  %idxprom11 = sext i32 %conv10 to i64, !dbg !74
  %arrayidx12 = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom11, !dbg !74
  %11 = load i8, ptr %arrayidx12, align 1, !dbg !74
  %conv13 = zext i8 %11 to i32, !dbg !74
  %and14 = and i32 %conv13, 68, !dbg !74
  %cmp15 = icmp ne i32 %and14, 0, !dbg !74
  br i1 %cmp15, label %if.end18, label %if.then17, !dbg !75

if.then17:                                        ; preds = %lor.lhs.false, %for.body
  store i1 false, ptr %retval, align 1, !dbg !76
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !76

if.end18:                                         ; preds = %lor.lhs.false
  %12 = load i32, ptr %i, align 4, !dbg !77
  %cmp19 = icmp ne i32 %12, 5, !dbg !79
  br i1 %cmp19, label %land.lhs.true, label %if.end29, !dbg !80

land.lhs.true:                                    ; preds = %if.end18
  %13 = load ptr, ptr %s.addr, align 8, !dbg !81
  %14 = load i32, ptr %i, align 4, !dbg !82
  %mul21 = mul i32 %14, 3, !dbg !83
  %add22 = add i32 %mul21, 2, !dbg !84
  %idxprom23 = sext i32 %add22 to i64, !dbg !81
  %arrayidx24 = getelementptr i8, ptr %13, i64 %idxprom23, !dbg !81
  %15 = load i8, ptr %arrayidx24, align 1, !dbg !81
  %conv25 = zext i8 %15 to i32, !dbg !81
  %cmp26 = icmp ne i32 %conv25, 58, !dbg !85
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !86

if.then28:                                        ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !87
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !87

if.end29:                                         ; preds = %land.lhs.true, %if.end18
  br label %for.inc, !dbg !88

for.inc:                                          ; preds = %if.end29
  %16 = load i32, ptr %i, align 4, !dbg !89
  %inc = add i32 %16, 1, !dbg !89
  store i32 %inc, ptr %i, align 4, !dbg !89
  br label %for.cond, !dbg !90, !llvm.loop !91

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !95
  br label %for.cond30, !dbg !97

for.cond30:                                       ; preds = %for.inc46, %for.end
  %17 = load i32, ptr %i, align 4, !dbg !98
  %cmp31 = icmp slt i32 %17, 6, !dbg !100
  br i1 %cmp31, label %for.body33, label %for.end48, !dbg !101

for.body33:                                       ; preds = %for.cond30
  %18 = load ptr, ptr %s.addr, align 8, !dbg !102
  %19 = load i32, ptr %i, align 4, !dbg !104
  %mul34 = mul i32 %19, 3, !dbg !105
  %idxprom35 = sext i32 %mul34 to i64, !dbg !102
  %arrayidx36 = getelementptr i8, ptr %18, i64 %idxprom35, !dbg !102
  %20 = load i8, ptr %arrayidx36, align 1, !dbg !102
  %call37 = call i32 @hex_to_bin(i8 noundef zeroext %20) #5, !dbg !106
  %shl = shl i32 %call37, 4, !dbg !107
  %21 = load ptr, ptr %s.addr, align 8, !dbg !108
  %22 = load i32, ptr %i, align 4, !dbg !109
  %mul38 = mul i32 %22, 3, !dbg !110
  %add39 = add i32 %mul38, 1, !dbg !111
  %idxprom40 = sext i32 %add39 to i64, !dbg !108
  %arrayidx41 = getelementptr i8, ptr %21, i64 %idxprom40, !dbg !108
  %23 = load i8, ptr %arrayidx41, align 1, !dbg !108
  %call42 = call i32 @hex_to_bin(i8 noundef zeroext %23) #5, !dbg !112
  %or = or i32 %shl, %call42, !dbg !113
  %conv43 = trunc i32 %or to i8, !dbg !114
  %24 = load ptr, ptr %mac.addr, align 8, !dbg !115
  %25 = load i32, ptr %i, align 4, !dbg !116
  %idxprom44 = sext i32 %25 to i64, !dbg !115
  %arrayidx45 = getelementptr i8, ptr %24, i64 %idxprom44, !dbg !115
  store i8 %conv43, ptr %arrayidx45, align 1, !dbg !117
  br label %for.inc46, !dbg !118

for.inc46:                                        ; preds = %for.body33
  %26 = load i32, ptr %i, align 4, !dbg !119
  %inc47 = add i32 %26, 1, !dbg !119
  store i32 %inc47, ptr %i, align 4, !dbg !119
  br label %for.cond30, !dbg !120, !llvm.loop !121

for.end48:                                        ; preds = %for.cond30
  store i1 true, ptr %retval, align 1, !dbg !123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !123

cleanup:                                          ; preds = %for.end48, %if.then28, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !124
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxlen) #4, !dbg !124
  %27 = load i1, ptr %retval, align 1, !dbg !124
  ret i1 %27, !dbg !124
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !125 dso_local i64 @strnlen(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !129 dso_local i32 @hex_to_bin(i8 noundef zeroext) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mac_pton336", scope: !2, file: !3, line: 29, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.net_utils.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/net_utils\22 -D KBUILD_BASENAME=\22net_utils\22 -D KBUILD_MODNAME=\22net_utils\22 -D __KBUILD_MODNAME=kmod_net_utils -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/net_utils.ll lib/net_utils.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/net_utils.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f2a59e13c002ecb33098186ed80beb85")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !14}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !{!0}
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 8, !"cf-protection-branch", i32 1}
!20 = !{i32 4, !"function_return_thunk_extern", i32 1}
!21 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!22 = !{i32 1, !"Code Model", i32 2}
!23 = !{i32 1, !"override-stack-alignment", i32 8}
!24 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!25 = distinct !DISubprogram(name: "mac_pton", scope: !3, file: !3, line: 8, type: !26, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !31, !34}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !29, line: 35, baseType: !30)
!29 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!30 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !36, line: 17, baseType: !37)
!36 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !38, line: 21, baseType: !13)
!38 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!39 = !{!40, !41, !42, !48}
!40 = !DILocalVariable(name: "s", arg: 1, scope: !25, file: !3, line: 8, type: !31)
!41 = !DILocalVariable(name: "mac", arg: 2, scope: !25, file: !3, line: 8, type: !34)
!42 = !DILocalVariable(name: "maxlen", scope: !25, file: !3, line: 10, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 61, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !45, line: 72, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !45, line: 16, baseType: !47)
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DILocalVariable(name: "i", scope: !25, file: !3, line: 11, type: !12)
!49 = !DILocation(line: 8, column: 27, scope: !25)
!50 = !DILocation(line: 8, column: 34, scope: !25)
!51 = !DILocation(line: 10, column: 2, scope: !25)
!52 = !DILocation(line: 10, column: 9, scope: !25)
!53 = !DILocation(line: 11, column: 2, scope: !25)
!54 = !DILocation(line: 11, column: 6, scope: !25)
!55 = !DILocation(line: 14, column: 14, scope: !56)
!56 = distinct !DILexicalBlock(scope: !25, file: !3, line: 14, column: 6)
!57 = !DILocation(line: 14, column: 17, scope: !56)
!58 = !DILocation(line: 14, column: 6, scope: !56)
!59 = !DILocation(line: 14, column: 27, scope: !56)
!60 = !DILocation(line: 14, column: 25, scope: !56)
!61 = !DILocation(line: 14, column: 6, scope: !25)
!62 = !DILocation(line: 15, column: 3, scope: !56)
!63 = !DILocation(line: 18, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !25, file: !3, line: 18, column: 2)
!65 = !DILocation(line: 18, column: 7, scope: !64)
!66 = !DILocation(line: 18, column: 14, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !3, line: 18, column: 2)
!68 = !DILocation(line: 18, column: 16, scope: !67)
!69 = !DILocation(line: 18, column: 2, scope: !64)
!70 = !DILocation(line: 19, column: 8, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !3, line: 19, column: 7)
!72 = distinct !DILexicalBlock(scope: !67, file: !3, line: 18, column: 33)
!73 = !DILocation(line: 19, column: 27, scope: !71)
!74 = !DILocation(line: 19, column: 31, scope: !71)
!75 = !DILocation(line: 19, column: 7, scope: !72)
!76 = !DILocation(line: 20, column: 4, scope: !71)
!77 = !DILocation(line: 21, column: 7, scope: !78)
!78 = distinct !DILexicalBlock(scope: !72, file: !3, line: 21, column: 7)
!79 = !DILocation(line: 21, column: 9, scope: !78)
!80 = !DILocation(line: 21, column: 25, scope: !78)
!81 = !DILocation(line: 21, column: 28, scope: !78)
!82 = !DILocation(line: 21, column: 30, scope: !78)
!83 = !DILocation(line: 21, column: 32, scope: !78)
!84 = !DILocation(line: 21, column: 36, scope: !78)
!85 = !DILocation(line: 21, column: 41, scope: !78)
!86 = !DILocation(line: 21, column: 7, scope: !72)
!87 = !DILocation(line: 22, column: 4, scope: !78)
!88 = !DILocation(line: 23, column: 2, scope: !72)
!89 = !DILocation(line: 18, column: 29, scope: !67)
!90 = !DILocation(line: 18, column: 2, scope: !67)
!91 = distinct !{!91, !69, !92, !93, !94}
!92 = !DILocation(line: 23, column: 2, scope: !64)
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !DILocation(line: 24, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !25, file: !3, line: 24, column: 2)
!97 = !DILocation(line: 24, column: 7, scope: !96)
!98 = !DILocation(line: 24, column: 14, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !3, line: 24, column: 2)
!100 = !DILocation(line: 24, column: 16, scope: !99)
!101 = !DILocation(line: 24, column: 2, scope: !96)
!102 = !DILocation(line: 25, column: 24, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !3, line: 24, column: 33)
!104 = !DILocation(line: 25, column: 26, scope: !103)
!105 = !DILocation(line: 25, column: 28, scope: !103)
!106 = !DILocation(line: 25, column: 13, scope: !103)
!107 = !DILocation(line: 25, column: 34, scope: !103)
!108 = !DILocation(line: 25, column: 53, scope: !103)
!109 = !DILocation(line: 25, column: 55, scope: !103)
!110 = !DILocation(line: 25, column: 57, scope: !103)
!111 = !DILocation(line: 25, column: 61, scope: !103)
!112 = !DILocation(line: 25, column: 42, scope: !103)
!113 = !DILocation(line: 25, column: 40, scope: !103)
!114 = !DILocation(line: 25, column: 12, scope: !103)
!115 = !DILocation(line: 25, column: 3, scope: !103)
!116 = !DILocation(line: 25, column: 7, scope: !103)
!117 = !DILocation(line: 25, column: 10, scope: !103)
!118 = !DILocation(line: 26, column: 2, scope: !103)
!119 = !DILocation(line: 24, column: 29, scope: !99)
!120 = !DILocation(line: 24, column: 2, scope: !99)
!121 = distinct !{!121, !101, !122, !93, !94}
!122 = !DILocation(line: 26, column: 2, scope: !96)
!123 = !DILocation(line: 27, column: 2, scope: !25)
!124 = !DILocation(line: 28, column: 1, scope: !25)
!125 = !DISubprogram(name: "strnlen", scope: !126, file: !126, line: 131, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!126 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!127 = !DISubroutineType(types: !128)
!128 = !{!44, !31, !44}
!129 = !DISubprogram(name: "hex_to_bin", scope: !130, file: !130, line: 29, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!130 = !DIFile(filename: "./include/linux/hex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6eb26d4dbd04841a1512df2f8e16e7dd")
!131 = !DISubroutineType(types: !132)
!132 = !{!12, !13}
