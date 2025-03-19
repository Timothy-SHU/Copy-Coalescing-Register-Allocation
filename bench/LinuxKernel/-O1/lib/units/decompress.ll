; ModuleID = 'lib/decompress.c'
source_filename = "lib/decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compress_format = type { [2 x i8], ptr, ptr }

@compressed_formats = internal constant [9 x %struct.compress_format] [%struct.compress_format { [2 x i8] c"\1F\8B", ptr @.str, ptr @gunzip }, %struct.compress_format { [2 x i8] c"\1F\9E", ptr @.str, ptr @gunzip }, %struct.compress_format { [2 x i8] c"BZ", ptr @.str.1, ptr @bunzip2 }, %struct.compress_format { [2 x i8] c"]\00", ptr @.str.2, ptr @unlzma }, %struct.compress_format { [2 x i8] c"\FD7", ptr @.str.3, ptr @unxz }, %struct.compress_format { [2 x i8] c"\89L", ptr @.str.4, ptr @unlzo }, %struct.compress_format { [2 x i8] c"\02!", ptr @.str.5, ptr @unlz4 }, %struct.compress_format { [2 x i8] c"(\B5", ptr @.str.6, ptr @unzstd }, %struct.compress_format zeroinitializer], section ".init.rodata", align 16, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"gzip\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [6 x i8] c"bzip2\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [5 x i8] c"lzma\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [3 x i8] c"xz\00", align 1, !dbg !20
@.str.4 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1, !dbg !25
@.str.5 = private unnamed_addr constant [4 x i8] c"lz4\00", align 1, !dbg !30
@.str.6 = private unnamed_addr constant [5 x i8] c"zstd\00", align 1, !dbg !32

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @decompress_method(ptr noundef %inbuf, i64 noundef %len, ptr noundef %name) #0 section ".init.text" align 16 !dbg !75 {
entry:
  %retval = alloca ptr, align 8
  %inbuf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %cf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %inbuf, ptr %inbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inbuf.addr, metadata !82, metadata !DIExpression()), !dbg !87
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !83, metadata !DIExpression()), !dbg !88
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !84, metadata !DIExpression()), !dbg !89
  call void @llvm.lifetime.start.p0(i64 8, ptr %cf) #4, !dbg !90
  call void @llvm.dbg.declare(metadata ptr %cf, metadata !85, metadata !DIExpression()), !dbg !91
  %0 = load i64, ptr %len.addr, align 8, !dbg !92
  %cmp = icmp slt i64 %0, 2, !dbg !94
  br i1 %cmp, label %if.then, label %if.end2, !dbg !95

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !96
  %tobool = icmp ne ptr %1, null, !dbg !96
  br i1 %tobool, label %if.then1, label %if.end, !dbg !99

if.then1:                                         ; preds = %if.then
  %2 = load ptr, ptr %name.addr, align 8, !dbg !100
  store ptr null, ptr %2, align 8, !dbg !101
  br label %if.end, !dbg !102

if.end:                                           ; preds = %if.then1, %if.then
  store ptr null, ptr %retval, align 8, !dbg !103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !103

if.end2:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !104
  %3 = load i32, ptr %tmp, align 4, !dbg !107
  store ptr @compressed_formats, ptr %cf, align 8, !dbg !108
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.inc, %if.end2
  %4 = load ptr, ptr %cf, align 8, !dbg !111
  %name3 = getelementptr inbounds %struct.compress_format, ptr %4, i32 0, i32 1, !dbg !113
  %5 = load ptr, ptr %name3, align 8, !dbg !113
  %tobool4 = icmp ne ptr %5, null, !dbg !114
  br i1 %tobool4, label %for.body, label %for.end, !dbg !114

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %inbuf.addr, align 8, !dbg !115
  %7 = load ptr, ptr %cf, align 8, !dbg !118
  %magic = getelementptr inbounds %struct.compress_format, ptr %7, i32 0, i32 0, !dbg !119
  %arraydecay = getelementptr inbounds [2 x i8], ptr %magic, i64 0, i64 0, !dbg !118
  %call = call i32 @memcmp(ptr noundef %6, ptr noundef %arraydecay, i64 noundef 2) #5, !dbg !120
  %tobool5 = icmp ne i32 %call, 0, !dbg !120
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !121

if.then6:                                         ; preds = %for.body
  br label %for.end, !dbg !122

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !123

for.inc:                                          ; preds = %if.end7
  %8 = load ptr, ptr %cf, align 8, !dbg !124
  %incdec.ptr = getelementptr %struct.compress_format, ptr %8, i32 1, !dbg !124
  store ptr %incdec.ptr, ptr %cf, align 8, !dbg !124
  br label %for.cond, !dbg !125, !llvm.loop !126

for.end:                                          ; preds = %if.then6, %for.cond
  %9 = load ptr, ptr %name.addr, align 8, !dbg !130
  %tobool8 = icmp ne ptr %9, null, !dbg !130
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !132

if.then9:                                         ; preds = %for.end
  %10 = load ptr, ptr %cf, align 8, !dbg !133
  %name10 = getelementptr inbounds %struct.compress_format, ptr %10, i32 0, i32 1, !dbg !134
  %11 = load ptr, ptr %name10, align 8, !dbg !134
  %12 = load ptr, ptr %name.addr, align 8, !dbg !135
  store ptr %11, ptr %12, align 8, !dbg !136
  br label %if.end11, !dbg !137

if.end11:                                         ; preds = %if.then9, %for.end
  %13 = load ptr, ptr %cf, align 8, !dbg !138
  %decompressor = getelementptr inbounds %struct.compress_format, ptr %13, i32 0, i32 2, !dbg !139
  %14 = load ptr, ptr %decompressor, align 8, !dbg !139
  store ptr %14, ptr %retval, align 8, !dbg !140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !140

cleanup:                                          ; preds = %if.end11, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %cf) #4, !dbg !141
  %15 = load ptr, ptr %retval, align 8, !dbg !141
  ret ptr %15, !dbg !141
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !142 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @gunzip(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @bunzip2(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @unlzma(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @unxz(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @unlzo(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @unlz4(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @unzstd(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "compressed_formats", scope: !2, file: !3, line: 51, type: !34, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.decompress.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/decompress\22 -D KBUILD_BASENAME=\22decompress\22 -D KBUILD_MODNAME=\22decompress\22 -D __KBUILD_MODNAME=kmod_decompress -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/decompress.ll lib/decompress.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/decompress.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8fc8064138f4224280f7e2a55eeaaac")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!7, !13, !18, !20, !25, !30, !32, !0}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 40, elements: !11)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{!12}
!12 = !DISubrange(count: 5)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 48, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 6)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !9, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !3, line: 56, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 24, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 3)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 4)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !27, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !9, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1728, elements: !64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_format", file: !3, line: 45, size: 192, elements: !37)
!37 = !{!38, !43, !46}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !36, file: !3, line: 46, baseType: !39, size: 16)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 16, elements: !41)
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !{!42}
!42 = !DISubrange(count: 2)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !36, file: !3, line: 47, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "decompressor", scope: !36, file: !3, line: 48, baseType: !47, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "decompress_fn", file: !48, line: 5, baseType: !49)
!48 = !DIFile(filename: "./include/linux/decompress/generic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c17b66b62f0c187ce401c9252c9c31a2")
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !53, !54, !55, !55, !53, !59, !60}
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!54 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!54, !5, !58}
!58 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!64 = !{!65}
!65 = !DISubrange(count: 9)
!66 = !{i32 7, !"Dwarf Version", i32 5}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 8, !"cf-protection-branch", i32 1}
!70 = !{i32 4, !"function_return_thunk_extern", i32 1}
!71 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!72 = !{i32 1, !"Code Model", i32 2}
!73 = !{i32 1, !"override-stack-alignment", i32 8}
!74 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!75 = distinct !DISubprogram(name: "decompress_method", scope: !3, file: !3, line: 63, type: !76, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !81)
!76 = !DISubroutineType(types: !77)
!77 = !{!47, !78, !54, !80}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!81 = !{!82, !83, !84, !85}
!82 = !DILocalVariable(name: "inbuf", arg: 1, scope: !75, file: !3, line: 63, type: !78)
!83 = !DILocalVariable(name: "len", arg: 2, scope: !75, file: !3, line: 63, type: !54)
!84 = !DILocalVariable(name: "name", arg: 3, scope: !75, file: !3, line: 64, type: !80)
!85 = !DILocalVariable(name: "cf", scope: !75, file: !3, line: 66, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!87 = !DILocation(line: 63, column: 61, scope: !75)
!88 = !DILocation(line: 63, column: 73, scope: !75)
!89 = !DILocation(line: 64, column: 18, scope: !75)
!90 = !DILocation(line: 66, column: 2, scope: !75)
!91 = !DILocation(line: 66, column: 32, scope: !75)
!92 = !DILocation(line: 68, column: 6, scope: !93)
!93 = distinct !DILexicalBlock(scope: !75, file: !3, line: 68, column: 6)
!94 = !DILocation(line: 68, column: 10, scope: !93)
!95 = !DILocation(line: 68, column: 6, scope: !75)
!96 = !DILocation(line: 69, column: 7, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !3, line: 69, column: 7)
!98 = distinct !DILexicalBlock(scope: !93, file: !3, line: 68, column: 15)
!99 = !DILocation(line: 69, column: 7, scope: !98)
!100 = !DILocation(line: 70, column: 5, scope: !97)
!101 = !DILocation(line: 70, column: 10, scope: !97)
!102 = !DILocation(line: 70, column: 4, scope: !97)
!103 = !DILocation(line: 71, column: 3, scope: !98)
!104 = !DILocation(line: 74, column: 2, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !3, line: 74, column: 2)
!106 = distinct !DILexicalBlock(scope: !75, file: !3, line: 74, column: 2)
!107 = !DILocation(line: 74, column: 2, scope: !106)
!108 = !DILocation(line: 76, column: 10, scope: !109)
!109 = distinct !DILexicalBlock(scope: !75, file: !3, line: 76, column: 2)
!110 = !DILocation(line: 76, column: 7, scope: !109)
!111 = !DILocation(line: 76, column: 32, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !3, line: 76, column: 2)
!113 = !DILocation(line: 76, column: 36, scope: !112)
!114 = !DILocation(line: 76, column: 2, scope: !109)
!115 = !DILocation(line: 77, column: 15, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 77, column: 7)
!117 = distinct !DILexicalBlock(scope: !112, file: !3, line: 76, column: 48)
!118 = !DILocation(line: 77, column: 22, scope: !116)
!119 = !DILocation(line: 77, column: 26, scope: !116)
!120 = !DILocation(line: 77, column: 8, scope: !116)
!121 = !DILocation(line: 77, column: 7, scope: !117)
!122 = !DILocation(line: 78, column: 4, scope: !116)
!123 = !DILocation(line: 80, column: 2, scope: !117)
!124 = !DILocation(line: 76, column: 44, scope: !112)
!125 = !DILocation(line: 76, column: 2, scope: !112)
!126 = distinct !{!126, !114, !127, !128, !129}
!127 = !DILocation(line: 80, column: 2, scope: !109)
!128 = !{!"llvm.loop.mustprogress"}
!129 = !{!"llvm.loop.unroll.disable"}
!130 = !DILocation(line: 81, column: 6, scope: !131)
!131 = distinct !DILexicalBlock(scope: !75, file: !3, line: 81, column: 6)
!132 = !DILocation(line: 81, column: 6, scope: !75)
!133 = !DILocation(line: 82, column: 11, scope: !131)
!134 = !DILocation(line: 82, column: 15, scope: !131)
!135 = !DILocation(line: 82, column: 4, scope: !131)
!136 = !DILocation(line: 82, column: 9, scope: !131)
!137 = !DILocation(line: 82, column: 3, scope: !131)
!138 = !DILocation(line: 83, column: 9, scope: !75)
!139 = !DILocation(line: 83, column: 13, scope: !75)
!140 = !DILocation(line: 83, column: 2, scope: !75)
!141 = !DILocation(line: 84, column: 1, scope: !75)
!142 = !DISubprogram(name: "memcmp", scope: !143, file: !143, line: 196, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!143 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!144 = !DISubroutineType(types: !145)
!145 = !{!52, !146, !146, !148}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !149, line: 72, baseType: !150)
!149 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !149, line: 16, baseType: !58)
