; ModuleID = 'drivers/input/vivaldi-fmap.c'
source_filename = "drivers/input/vivaldi-fmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vivaldi_function_row_physmap_show: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vivaldi_function_row_physmap_show ; .previous"

%struct.vivaldi_data = type { [24 x i32], i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s%02X\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !12
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !17
@__UNIQUE_ID___addressable_vivaldi_function_row_physmap_show195 = internal global ptr @vivaldi_function_row_physmap_show, section ".discard.addressable", align 8, !dbg !19
@__UNIQUE_ID_file196 = internal constant [45 x i8] c"vivaldi_fmap.file=drivers/input/vivaldi-fmap\00", section ".modinfo", align 1, !dbg !25
@__UNIQUE_ID_license197 = internal constant [25 x i8] c"vivaldi_fmap.license=GPL\00", section ".modinfo", align 1, !dbg !31
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_vivaldi_function_row_physmap_show195, ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @vivaldi_function_row_physmap_show(ptr noundef %data, ptr noundef %buf) #0 align 16 !dbg !45 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %i = alloca i32, align 4
  %physmap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !71, metadata !DIExpression()), !dbg !79
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !72, metadata !DIExpression()), !dbg !80
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #4, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %size, metadata !73, metadata !DIExpression()), !dbg !82
  store i64 0, ptr %size, align 8, !dbg !82
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %i, metadata !74, metadata !DIExpression()), !dbg !84
  call void @llvm.lifetime.start.p0(i64 8, ptr %physmap) #4, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %physmap, metadata !76, metadata !DIExpression()), !dbg !86
  %0 = load ptr, ptr %data.addr, align 8, !dbg !87
  %function_row_physmap = getelementptr inbounds %struct.vivaldi_data, ptr %0, i32 0, i32 0, !dbg !88
  %arraydecay = getelementptr inbounds [24 x i32], ptr %function_row_physmap, i64 0, i64 0, !dbg !87
  store ptr %arraydecay, ptr %physmap, align 8, !dbg !86
  %1 = load ptr, ptr %data.addr, align 8, !dbg !89
  %num_function_row_keys = getelementptr inbounds %struct.vivaldi_data, ptr %1, i32 0, i32 1, !dbg !91
  %2 = load i32, ptr %num_function_row_keys, align 4, !dbg !91
  %tobool = icmp ne i32 %2, 0, !dbg !89
  br i1 %tobool, label %if.end, label %if.then, !dbg !92

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !93
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !93

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !94
  br label %for.cond, !dbg !96

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !97
  %4 = load ptr, ptr %data.addr, align 8, !dbg !99
  %num_function_row_keys1 = getelementptr inbounds %struct.vivaldi_data, ptr %4, i32 0, i32 1, !dbg !100
  %5 = load i32, ptr %num_function_row_keys1, align 4, !dbg !100
  %cmp = icmp ult i32 %3, %5, !dbg !101
  br i1 %cmp, label %for.body, label %for.end, !dbg !102

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !103
  %7 = load i64, ptr %size, align 8, !dbg !104
  %add.ptr = getelementptr i8, ptr %6, i64 %7, !dbg !105
  %8 = load i64, ptr %size, align 8, !dbg !106
  %sub = sub i64 4096, %8, !dbg !107
  %9 = load i64, ptr %size, align 8, !dbg !108
  %tobool2 = icmp ne i64 %9, 0, !dbg !108
  %10 = zext i1 %tobool2 to i64, !dbg !108
  %cond = select i1 %tobool2, ptr @.str.1, ptr @.str.2, !dbg !108
  %11 = load ptr, ptr %physmap, align 8, !dbg !109
  %12 = load i32, ptr %i, align 4, !dbg !110
  %idxprom = sext i32 %12 to i64, !dbg !109
  %arrayidx = getelementptr i32, ptr %11, i64 %idxprom, !dbg !109
  %13 = load i32, ptr %arrayidx, align 4, !dbg !109
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef @.str, ptr noundef %cond, i32 noundef %13) #5, !dbg !111
  %conv = sext i32 %call to i64, !dbg !111
  %14 = load i64, ptr %size, align 8, !dbg !112
  %add = add i64 %14, %conv, !dbg !112
  store i64 %add, ptr %size, align 8, !dbg !112
  br label %for.inc, !dbg !113

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !dbg !114
  %inc = add i32 %15, 1, !dbg !114
  store i32 %inc, ptr %i, align 4, !dbg !114
  br label %for.cond, !dbg !115, !llvm.loop !116

for.end:                                          ; preds = %for.cond
  %16 = load i64, ptr %size, align 8, !dbg !120
  %tobool3 = icmp ne i64 %16, 0, !dbg !120
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !122

if.then4:                                         ; preds = %for.end
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !123
  %18 = load i64, ptr %size, align 8, !dbg !124
  %add.ptr5 = getelementptr i8, ptr %17, i64 %18, !dbg !125
  %19 = load i64, ptr %size, align 8, !dbg !126
  %sub6 = sub i64 4096, %19, !dbg !127
  %call7 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr5, i64 noundef %sub6, ptr noundef @.str.3) #5, !dbg !128
  %conv8 = sext i32 %call7 to i64, !dbg !128
  %20 = load i64, ptr %size, align 8, !dbg !129
  %add9 = add i64 %20, %conv8, !dbg !129
  store i64 %add9, ptr %size, align 8, !dbg !129
  br label %if.end10, !dbg !130

if.end10:                                         ; preds = %if.then4, %for.end
  %21 = load i64, ptr %size, align 8, !dbg !131
  store i64 %21, ptr %retval, align 8, !dbg !132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !132

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %physmap) #4, !dbg !133
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !133
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #4, !dbg !133
  %22 = load i64, ptr %retval, align 8, !dbg !133
  ret i64 %22, !dbg !133
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !134 dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!21}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/input/vivaldi-fmap.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ea23499abef54509f9c1982a19640dfe")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 7)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 2)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 1)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !9, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vivaldi_function_row_physmap_show195", scope: !21, file: !2, line: 37, type: !23, isLocal: true, isDefinition: true)
!21 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/.vivaldi-fmap.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/vivaldi-fmap\22 -D KBUILD_BASENAME=\22vivaldi_fmap\22 -D KBUILD_MODNAME=\22vivaldi_fmap\22 -D __KBUILD_MODNAME=kmod_vivaldi_fmap -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/vivaldi-fmap.ll drivers/input/vivaldi-fmap.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !22, globals: !24, splitDebugInlining: false, nameTableKind: None)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !{!0, !7, !12, !17, !19, !25, !31}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file196", scope: !21, file: !2, line: 39, type: !27, isLocal: true, isDefinition: true, align: 8)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 360, elements: !29)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!29 = !{!30}
!30 = !DISubrange(count: 45)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license197", scope: !21, file: !2, line: 39, type: !33, isLocal: true, isDefinition: true, align: 8)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 200, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 25)
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 8, !"cf-protection-branch", i32 1}
!40 = !{i32 4, !"function_return_thunk_extern", i32 1}
!41 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!42 = !{i32 1, !"Code Model", i32 2}
!43 = !{i32 1, !"override-stack-alignment", i32 8}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = distinct !DISubprogram(name: "vivaldi_function_row_physmap_show", scope: !2, file: !2, line: 19, type: !46, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !70)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !54, !69}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !49, line: 66, baseType: !50)
!49 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !51, line: 73, baseType: !52)
!51 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !51, line: 15, baseType: !53)
!53 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vivaldi_data", file: !57, line: 19, size: 800, elements: !58)
!57 = !DIFile(filename: "./include/linux/input/vivaldi-fmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "434601304fb99942bb613624584e653c")
!58 = !{!59, !68}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "function_row_physmap", scope: !56, file: !57, line: 20, baseType: !60, size: 768)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 768, elements: !66)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !62, line: 21, baseType: !63)
!62 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !64, line: 27, baseType: !65)
!64 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !{!67}
!67 = !DISubrange(count: 24)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "num_function_row_keys", scope: !56, file: !57, line: 21, baseType: !65, size: 32, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!70 = !{!71, !72, !73, !74, !76}
!71 = !DILocalVariable(name: "data", arg: 1, scope: !45, file: !2, line: 19, type: !54)
!72 = !DILocalVariable(name: "buf", arg: 2, scope: !45, file: !2, line: 20, type: !69)
!73 = !DILocalVariable(name: "size", scope: !45, file: !2, line: 22, type: !48)
!74 = !DILocalVariable(name: "i", scope: !45, file: !2, line: 23, type: !75)
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !DILocalVariable(name: "physmap", scope: !45, file: !2, line: 24, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!79 = !DILocation(line: 19, column: 70, scope: !45)
!80 = !DILocation(line: 20, column: 14, scope: !45)
!81 = !DILocation(line: 22, column: 2, scope: !45)
!82 = !DILocation(line: 22, column: 10, scope: !45)
!83 = !DILocation(line: 23, column: 2, scope: !45)
!84 = !DILocation(line: 23, column: 6, scope: !45)
!85 = !DILocation(line: 24, column: 2, scope: !45)
!86 = !DILocation(line: 24, column: 13, scope: !45)
!87 = !DILocation(line: 24, column: 23, scope: !45)
!88 = !DILocation(line: 24, column: 29, scope: !45)
!89 = !DILocation(line: 26, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !45, file: !2, line: 26, column: 6)
!91 = !DILocation(line: 26, column: 13, scope: !90)
!92 = !DILocation(line: 26, column: 6, scope: !45)
!93 = !DILocation(line: 27, column: 3, scope: !90)
!94 = !DILocation(line: 29, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !45, file: !2, line: 29, column: 2)
!96 = !DILocation(line: 29, column: 7, scope: !95)
!97 = !DILocation(line: 29, column: 14, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !2, line: 29, column: 2)
!99 = !DILocation(line: 29, column: 18, scope: !98)
!100 = !DILocation(line: 29, column: 24, scope: !98)
!101 = !DILocation(line: 29, column: 16, scope: !98)
!102 = !DILocation(line: 29, column: 2, scope: !95)
!103 = !DILocation(line: 30, column: 21, scope: !98)
!104 = !DILocation(line: 30, column: 27, scope: !98)
!105 = !DILocation(line: 30, column: 25, scope: !98)
!106 = !DILocation(line: 30, column: 45, scope: !98)
!107 = !DILocation(line: 30, column: 43, scope: !98)
!108 = !DILocation(line: 31, column: 17, scope: !98)
!109 = !DILocation(line: 31, column: 34, scope: !98)
!110 = !DILocation(line: 31, column: 42, scope: !98)
!111 = !DILocation(line: 30, column: 11, scope: !98)
!112 = !DILocation(line: 30, column: 8, scope: !98)
!113 = !DILocation(line: 30, column: 3, scope: !98)
!114 = !DILocation(line: 29, column: 48, scope: !98)
!115 = !DILocation(line: 29, column: 2, scope: !98)
!116 = distinct !{!116, !102, !117, !118, !119}
!117 = !DILocation(line: 31, column: 44, scope: !95)
!118 = !{!"llvm.loop.mustprogress"}
!119 = !{!"llvm.loop.unroll.disable"}
!120 = !DILocation(line: 32, column: 6, scope: !121)
!121 = distinct !DILexicalBlock(scope: !45, file: !2, line: 32, column: 6)
!122 = !DILocation(line: 32, column: 6, scope: !45)
!123 = !DILocation(line: 33, column: 21, scope: !121)
!124 = !DILocation(line: 33, column: 27, scope: !121)
!125 = !DILocation(line: 33, column: 25, scope: !121)
!126 = !DILocation(line: 33, column: 45, scope: !121)
!127 = !DILocation(line: 33, column: 43, scope: !121)
!128 = !DILocation(line: 33, column: 11, scope: !121)
!129 = !DILocation(line: 33, column: 8, scope: !121)
!130 = !DILocation(line: 33, column: 3, scope: !121)
!131 = !DILocation(line: 35, column: 9, scope: !45)
!132 = !DILocation(line: 35, column: 2, scope: !45)
!133 = !DILocation(line: 36, column: 1, scope: !45)
!134 = !DISubprogram(name: "scnprintf", scope: !135, file: !135, line: 14, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!135 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!136 = !DISubroutineType(types: !137)
!137 = !{!75, !69, !138, !142, null}
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 61, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !51, line: 72, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !51, line: 16, baseType: !141)
!141 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
