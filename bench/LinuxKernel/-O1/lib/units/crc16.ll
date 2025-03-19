; ModuleID = 'lib/crc16.c'
source_filename = "lib/crc16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crc16_table: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad crc16_table ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crc16: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad crc16 ; .previous"

@crc16_table = hidden constant [256 x i16] [i16 0, i16 -16191, i16 -15999, i16 320, i16 -15615, i16 960, i16 640, i16 -15807, i16 -14847, i16 1728, i16 1920, i16 -14527, i16 1280, i16 -14911, i16 -15231, i16 1088, i16 -13311, i16 3264, i16 3456, i16 -12991, i16 3840, i16 -12351, i16 -12671, i16 3648, i16 2560, i16 -13631, i16 -13439, i16 2880, i16 -14079, i16 2496, i16 2176, i16 -14271, i16 -10239, i16 6336, i16 6528, i16 -9919, i16 6912, i16 -9279, i16 -9599, i16 6720, i16 7680, i16 -8511, i16 -8319, i16 8000, i16 -8959, i16 7616, i16 7296, i16 -9151, i16 5120, i16 -11071, i16 -10879, i16 5440, i16 -10495, i16 6080, i16 5760, i16 -10687, i16 -11775, i16 4800, i16 4992, i16 -11455, i16 4352, i16 -11839, i16 -12159, i16 4160, i16 -4095, i16 12480, i16 12672, i16 -3775, i16 13056, i16 -3135, i16 -3455, i16 12864, i16 13824, i16 -2367, i16 -2175, i16 14144, i16 -2815, i16 13760, i16 13440, i16 -3007, i16 15360, i16 -831, i16 -639, i16 15680, i16 -255, i16 16320, i16 16000, i16 -447, i16 -1535, i16 15040, i16 15232, i16 -1215, i16 14592, i16 -1599, i16 -1919, i16 14400, i16 10240, i16 -5951, i16 -5759, i16 10560, i16 -5375, i16 11200, i16 10880, i16 -5567, i16 -4607, i16 11968, i16 12160, i16 -4287, i16 11520, i16 -4671, i16 -4991, i16 11328, i16 -7167, i16 9408, i16 9600, i16 -6847, i16 9984, i16 -6207, i16 -6527, i16 9792, i16 8704, i16 -7487, i16 -7295, i16 9024, i16 -7935, i16 8640, i16 8320, i16 -8127, i16 -24575, i16 24768, i16 24960, i16 -24255, i16 25344, i16 -23615, i16 -23935, i16 25152, i16 26112, i16 -22847, i16 -22655, i16 26432, i16 -23295, i16 26048, i16 25728, i16 -23487, i16 27648, i16 -21311, i16 -21119, i16 27968, i16 -20735, i16 28608, i16 28288, i16 -20927, i16 -22015, i16 27328, i16 27520, i16 -21695, i16 26880, i16 -22079, i16 -22399, i16 26688, i16 30720, i16 -18239, i16 -18047, i16 31040, i16 -17663, i16 31680, i16 31360, i16 -17855, i16 -16895, i16 32448, i16 32640, i16 -16575, i16 32000, i16 -16959, i16 -17279, i16 31808, i16 -19455, i16 29888, i16 30080, i16 -19135, i16 30464, i16 -18495, i16 -18815, i16 30272, i16 29184, i16 -19775, i16 -19583, i16 29504, i16 -20223, i16 29120, i16 28800, i16 -20415, i16 20480, i16 -28479, i16 -28287, i16 20800, i16 -27903, i16 21440, i16 21120, i16 -28095, i16 -27135, i16 22208, i16 22400, i16 -26815, i16 21760, i16 -27199, i16 -27519, i16 21568, i16 -25599, i16 23744, i16 23936, i16 -25279, i16 24320, i16 -24639, i16 -24959, i16 24128, i16 23040, i16 -25919, i16 -25727, i16 23360, i16 -26367, i16 22976, i16 22656, i16 -26559, i16 -30719, i16 18624, i16 18816, i16 -30399, i16 19200, i16 -29759, i16 -30079, i16 19008, i16 19968, i16 -28991, i16 -28799, i16 20288, i16 -29439, i16 19904, i16 19584, i16 -29631, i16 17408, i16 -31551, i16 -31359, i16 17728, i16 -30975, i16 18368, i16 18048, i16 -31167, i16 -32255, i16 17088, i16 17280, i16 -31935, i16 16640, i16 -32319, i16 -32639, i16 16448], align 16, !dbg !0
@__UNIQUE_ID___addressable_crc16_table195 = internal global ptr @crc16_table, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_crc16196 = internal global ptr @crc16, section ".discard.addressable", align 8, !dbg !9
@__UNIQUE_ID_description197 = internal constant [37 x i8] c"crc16.description=CRC16 calculations\00", section ".modinfo", align 1, !dbg !11
@__UNIQUE_ID_file198 = internal constant [21 x i8] c"crc16.file=lib/crc16\00", section ".modinfo", align 1, !dbg !18
@__UNIQUE_ID_license199 = internal constant [18 x i8] c"crc16.license=GPL\00", section ".modinfo", align 1, !dbg !23
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_crc16_table195, ptr @__UNIQUE_ID___addressable_crc16196, ptr @__UNIQUE_ID_description197, ptr @__UNIQUE_ID_file198, ptr @__UNIQUE_ID_license199], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i16 @crc16(i16 noundef zeroext %crc, ptr noundef %buffer, i64 noundef %len) #0 align 16 !dbg !46 {
entry:
  %crc.addr = alloca i16, align 2
  %buffer.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store i16 %crc, ptr %crc.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %crc.addr, metadata !61, metadata !DIExpression()), !dbg !64
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !62, metadata !DIExpression()), !dbg !65
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !63, metadata !DIExpression()), !dbg !66
  br label %while.cond, !dbg !67

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %len.addr, align 8, !dbg !68
  %dec = add i64 %0, -1, !dbg !68
  store i64 %dec, ptr %len.addr, align 8, !dbg !68
  %tobool = icmp ne i64 %0, 0, !dbg !67
  br i1 %tobool, label %while.body, label %while.end, !dbg !67

while.body:                                       ; preds = %while.cond
  %1 = load i16, ptr %crc.addr, align 2, !dbg !69
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !70
  %incdec.ptr = getelementptr i8, ptr %2, i32 1, !dbg !70
  store ptr %incdec.ptr, ptr %buffer.addr, align 8, !dbg !70
  %3 = load i8, ptr %2, align 1, !dbg !71
  %call = call zeroext i16 @crc16_byte(i16 noundef zeroext %1, i8 noundef zeroext %3) #3, !dbg !72
  store i16 %call, ptr %crc.addr, align 2, !dbg !73
  br label %while.cond, !dbg !67, !llvm.loop !74

while.end:                                        ; preds = %while.cond
  %4 = load i16, ptr %crc.addr, align 2, !dbg !78
  ret i16 %4, !dbg !79
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @crc16_byte(i16 noundef zeroext %crc, i8 noundef zeroext %data) #2 align 16 !dbg !80 {
entry:
  %crc.addr = alloca i16, align 2
  %data.addr = alloca i8, align 1
  store i16 %crc, ptr %crc.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %crc.addr, metadata !85, metadata !DIExpression()), !dbg !87
  store i8 %data, ptr %data.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !86, metadata !DIExpression()), !dbg !88
  %0 = load i16, ptr %crc.addr, align 2, !dbg !89
  %conv = zext i16 %0 to i32, !dbg !89
  %shr = ashr i32 %conv, 8, !dbg !90
  %1 = load i16, ptr %crc.addr, align 2, !dbg !91
  %conv1 = zext i16 %1 to i32, !dbg !91
  %2 = load i8, ptr %data.addr, align 1, !dbg !92
  %conv2 = zext i8 %2 to i32, !dbg !92
  %xor = xor i32 %conv1, %conv2, !dbg !93
  %and = and i32 %xor, 255, !dbg !94
  %idxprom = sext i32 %and to i64, !dbg !95
  %arrayidx = getelementptr [256 x i16], ptr @crc16_table, i64 0, i64 %idxprom, !dbg !95
  %3 = load i16, ptr %arrayidx, align 2, !dbg !95
  %conv3 = zext i16 %3 to i32, !dbg !95
  %xor4 = xor i32 %shr, %conv3, !dbg !96
  %conv5 = trunc i32 %xor4 to i16, !dbg !97
  ret i16 %conv5, !dbg !98
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "crc16_table", scope: !2, file: !3, line: 11, type: !28, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.crc16.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crc16\22 -D KBUILD_BASENAME=\22crc16\22 -D KBUILD_MODNAME=\22crc16\22 -D __KBUILD_MODNAME=kmod_crc16 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crc16.ll lib/crc16.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crc16.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0b6172bf7ddbe0db88cc7ba470493fbf")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !9, !11, !18, !23}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crc16_table195", scope: !2, file: !3, line: 45, type: !5, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crc16196", scope: !2, file: !3, line: 61, type: !5, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description197", scope: !2, file: !3, line: 63, type: !13, isLocal: true, isDefinition: true, align: 8)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 296, elements: !16)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !{!17}
!17 = !DISubrange(count: 37)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file198", scope: !2, file: !3, line: 64, type: !20, isLocal: true, isDefinition: true, align: 8)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 168, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 21)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license199", scope: !2, file: !3, line: 64, type: !25, isLocal: true, isDefinition: true, align: 8)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 144, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 18)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 4096, elements: !35)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !31, line: 19, baseType: !32)
!31 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !33, line: 24, baseType: !34)
!33 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !{!36}
!36 = !DISubrange(count: 256)
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 8, !"cf-protection-branch", i32 1}
!41 = !{i32 4, !"function_return_thunk_extern", i32 1}
!42 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!43 = !{i32 1, !"Code Model", i32 2}
!44 = !{i32 1, !"override-stack-alignment", i32 8}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = distinct !DISubprogram(name: "crc16", scope: !3, file: !3, line: 55, type: !47, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!47 = !DISubroutineType(types: !48)
!48 = !{!30, !30, !49, !54}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !31, line: 17, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !33, line: 21, baseType: !53)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 61, baseType: !56)
!55 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !57, line: 72, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !57, line: 16, baseType: !59)
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !{!61, !62, !63}
!61 = !DILocalVariable(name: "crc", arg: 1, scope: !46, file: !3, line: 55, type: !30)
!62 = !DILocalVariable(name: "buffer", arg: 2, scope: !46, file: !3, line: 55, type: !49)
!63 = !DILocalVariable(name: "len", arg: 3, scope: !46, file: !3, line: 55, type: !54)
!64 = !DILocation(line: 55, column: 15, scope: !46)
!65 = !DILocation(line: 55, column: 30, scope: !46)
!66 = !DILocation(line: 55, column: 45, scope: !46)
!67 = !DILocation(line: 57, column: 2, scope: !46)
!68 = !DILocation(line: 57, column: 12, scope: !46)
!69 = !DILocation(line: 58, column: 20, scope: !46)
!70 = !DILocation(line: 58, column: 32, scope: !46)
!71 = !DILocation(line: 58, column: 25, scope: !46)
!72 = !DILocation(line: 58, column: 9, scope: !46)
!73 = !DILocation(line: 58, column: 7, scope: !46)
!74 = distinct !{!74, !67, !75, !76, !77}
!75 = !DILocation(line: 58, column: 34, scope: !46)
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !DILocation(line: 59, column: 9, scope: !46)
!79 = !DILocation(line: 59, column: 2, scope: !46)
!80 = distinct !DISubprogram(name: "crc16_byte", scope: !81, file: !81, line: 22, type: !82, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!81 = !DIFile(filename: "./include/linux/crc16.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0cb8efa77d89cb4032aeeb7626cb4c83")
!82 = !DISubroutineType(types: !83)
!83 = !{!30, !30, !50}
!84 = !{!85, !86}
!85 = !DILocalVariable(name: "crc", arg: 1, scope: !80, file: !81, line: 22, type: !30)
!86 = !DILocalVariable(name: "data", arg: 2, scope: !80, file: !81, line: 22, type: !50)
!87 = !DILocation(line: 22, column: 34, scope: !80)
!88 = !DILocation(line: 22, column: 48, scope: !80)
!89 = !DILocation(line: 24, column: 10, scope: !80)
!90 = !DILocation(line: 24, column: 14, scope: !80)
!91 = !DILocation(line: 24, column: 35, scope: !80)
!92 = !DILocation(line: 24, column: 41, scope: !80)
!93 = !DILocation(line: 24, column: 39, scope: !80)
!94 = !DILocation(line: 24, column: 47, scope: !80)
!95 = !DILocation(line: 24, column: 22, scope: !80)
!96 = !DILocation(line: 24, column: 20, scope: !80)
!97 = !DILocation(line: 24, column: 9, scope: !80)
!98 = !DILocation(line: 24, column: 2, scope: !80)
