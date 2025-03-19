; ModuleID = 'lib/zstd/common/zstd_common.c'
source_filename = "lib/zstd/common/zstd_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"1.5.2\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ZSTD_versionNumber() #0 align 16 !dbg !62 {
entry:
  ret i32 10502, !dbg !65
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ZSTD_versionString() #0 align 16 !dbg !66 {
entry:
  ret ptr @.str, !dbg !71
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ZSTD_isError(i64 noundef %code) #0 align 16 !dbg !72 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load i64, ptr %code.addr, align 8, !dbg !78
  %call = call i32 @ERR_isError(i64 noundef %0) #5, !dbg !79
  ret i32 %call, !dbg !80
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ERR_isError(i64 noundef %code) #0 align 16 !dbg !81 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load i64, ptr %code.addr, align 8, !dbg !85
  %cmp = icmp ugt i64 %0, -120, !dbg !86
  %conv = zext i1 %cmp to i32, !dbg !86
  ret i32 %conv, !dbg !87
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ZSTD_getErrorName(i64 noundef %code) #0 align 16 !dbg !88 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !92, metadata !DIExpression()), !dbg !93
  %0 = load i64, ptr %code.addr, align 8, !dbg !94
  %call = call ptr @ERR_getErrorName(i64 noundef %0) #5, !dbg !95
  ret ptr %call, !dbg !96
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_getErrorName(i64 noundef %code) #0 align 16 !dbg !97 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = load i64, ptr %code.addr, align 8, !dbg !101
  %call = call i32 @ERR_getErrorCode(i64 noundef %0) #5, !dbg !102
  %call1 = call ptr @ERR_getErrorString(i32 noundef %call) #5, !dbg !103
  ret ptr %call1, !dbg !104
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ZSTD_getErrorCode(i64 noundef %code) #0 align 16 !dbg !105 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !109, metadata !DIExpression()), !dbg !110
  %0 = load i64, ptr %code.addr, align 8, !dbg !111
  %call = call i32 @ERR_getErrorCode(i64 noundef %0) #5, !dbg !112
  ret i32 %call, !dbg !113
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ERR_getErrorCode(i64 noundef %code) #0 align 16 !dbg !114 {
entry:
  %retval = alloca i32, align 4
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !118, metadata !DIExpression()), !dbg !119
  %0 = load i64, ptr %code.addr, align 8, !dbg !120
  %call = call i32 @ERR_isError(i64 noundef %0) #5, !dbg !122
  %tobool = icmp ne i32 %call, 0, !dbg !122
  br i1 %tobool, label %if.end, label %if.then, !dbg !123

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !124
  br label %return, !dbg !124

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %code.addr, align 8, !dbg !125
  %sub = sub i64 0, %1, !dbg !126
  %conv = trunc i64 %sub to i32, !dbg !127
  store i32 %conv, ptr %retval, align 4, !dbg !128
  br label %return, !dbg !128

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !129
  ret i32 %2, !dbg !129
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ZSTD_getErrorString(i32 noundef %code) #0 align 16 !dbg !130 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = load i32, ptr %code.addr, align 4, !dbg !136
  %call = call ptr @ERR_getErrorString(i32 noundef %0) #5, !dbg !137
  ret ptr %call, !dbg !138
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !139 dso_local ptr @ERR_getErrorString(i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ZSTD_customMalloc(i64 noundef %size, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #0 align 16 !dbg !142 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %tmp = alloca ptr, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !161, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata ptr %customMem, metadata !162, metadata !DIExpression()), !dbg !164
  %customAlloc = getelementptr inbounds %struct.ZSTD_customMem, ptr %customMem, i32 0, i32 0, !dbg !165
  %0 = load ptr, ptr %customAlloc, align 8, !dbg !165
  %tobool = icmp ne ptr %0, null, !dbg !167
  br i1 %tobool, label %if.then, label %if.end, !dbg !168

if.then:                                          ; preds = %entry
  %customAlloc1 = getelementptr inbounds %struct.ZSTD_customMem, ptr %customMem, i32 0, i32 0, !dbg !169
  %1 = load ptr, ptr %customAlloc1, align 8, !dbg !169
  %opaque = getelementptr inbounds %struct.ZSTD_customMem, ptr %customMem, i32 0, i32 2, !dbg !170
  %2 = load ptr, ptr %opaque, align 8, !dbg !170
  %3 = load i64, ptr %size.addr, align 8, !dbg !171
  %call = call ptr %1(ptr noundef %2, i64 noundef %3) #5, !dbg !172
  store ptr %call, ptr %retval, align 8, !dbg !173
  br label %return, !dbg !173

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %size.addr, align 8, !dbg !174
  store ptr null, ptr %tmp, align 8, !dbg !174
  %5 = load ptr, ptr %tmp, align 8, !dbg !174
  store ptr %5, ptr %retval, align 8, !dbg !176
  br label %return, !dbg !176

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !177
  ret ptr %6, !dbg !177
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ZSTD_customCalloc(i64 noundef %size, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #0 align 16 !dbg !178 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !180, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata ptr %customMem, metadata !181, metadata !DIExpression()), !dbg !187
  %customAlloc = getelementptr inbounds %struct.ZSTD_customMem, ptr %customMem, i32 0, i32 0, !dbg !188
  %0 = load ptr, ptr %customAlloc, align 8, !dbg !188
  %tobool = icmp ne ptr %0, null, !dbg !189
  br i1 %tobool, label %if.then, label %if.end, !dbg !190

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #6, !dbg !191
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !182, metadata !DIExpression()), !dbg !192
  %customAlloc1 = getelementptr inbounds %struct.ZSTD_customMem, ptr %customMem, i32 0, i32 0, !dbg !193
  %1 = load ptr, ptr %customAlloc1, align 8, !dbg !193
  %opaque = getelementptr inbounds %struct.ZSTD_customMem, ptr %customMem, i32 0, i32 2, !dbg !194
  %2 = load ptr, ptr %opaque, align 8, !dbg !194
  %3 = load i64, ptr %size.addr, align 8, !dbg !195
  %call = call ptr %1(ptr noundef %2, i64 noundef %3) #5, !dbg !196
  store ptr %call, ptr %ptr, align 8, !dbg !192
  %4 = load ptr, ptr %ptr, align 8, !dbg !197
  %5 = load i64, ptr %size.addr, align 8, !dbg !197
  call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %5, i1 false), !dbg !197
  %6 = load ptr, ptr %ptr, align 8, !dbg !198
  store ptr %6, ptr %retval, align 8, !dbg !199
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #6, !dbg !200
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, ptr %size.addr, align 8, !dbg !201
  store ptr null, ptr %tmp, align 8, !dbg !201
  %8 = load ptr, ptr %tmp, align 8, !dbg !201
  store ptr %8, ptr %retval, align 8, !dbg !203
  br label %return, !dbg !203

return:                                           ; preds = %if.end, %if.then
  %9 = load ptr, ptr %retval, align 8, !dbg !204
  ret ptr %9, !dbg !204
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ZSTD_customFree(ptr noundef %ptr, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #0 align 16 !dbg !205 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !209, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata ptr %customMem, metadata !210, metadata !DIExpression()), !dbg !212
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !213
  %cmp = icmp ne ptr %0, null, !dbg !215
  br i1 %cmp, label %if.then, label %if.end3, !dbg !216

if.then:                                          ; preds = %entry
  %customFree = getelementptr inbounds %struct.ZSTD_customMem, ptr %customMem, i32 0, i32 1, !dbg !217
  %1 = load ptr, ptr %customFree, align 8, !dbg !217
  %tobool = icmp ne ptr %1, null, !dbg !220
  br i1 %tobool, label %if.then1, label %if.else, !dbg !221

if.then1:                                         ; preds = %if.then
  %customFree2 = getelementptr inbounds %struct.ZSTD_customMem, ptr %customMem, i32 0, i32 1, !dbg !222
  %2 = load ptr, ptr %customFree2, align 8, !dbg !222
  %opaque = getelementptr inbounds %struct.ZSTD_customMem, ptr %customMem, i32 0, i32 2, !dbg !223
  %3 = load ptr, ptr %opaque, align 8, !dbg !223
  %4 = load ptr, ptr %ptr.addr, align 8, !dbg !224
  call void %2(ptr noundef %3, ptr noundef %4) #5, !dbg !225
  br label %if.end, !dbg !225

if.else:                                          ; preds = %if.then
  %5 = load ptr, ptr %ptr.addr, align 8, !dbg !226
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end3, !dbg !227

if.end3:                                          ; preds = %if.end, %entry
  ret void, !dbg !228
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { noredzone }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/zstd/common/zstd_common.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eea80b6b69f0e315a71a24eca6a92c70")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/zstd/common/.zstd_common.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/zstd/zstd_common\22 -D KBUILD_BASENAME=\22zstd_common\22 -D KBUILD_MODNAME=\22zstd_common\22 -D __KBUILD_MODNAME=kmod_zstd_common -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/zstd/common/zstd_common.ll lib/zstd/common/zstd_common.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !41, globals: !52, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 37, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "./include/linux/zstd_errors.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b65e56a0777f4855c2ba6522d04d0e69")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!13 = !DIEnumerator(name: "ZSTD_error_no_error", value: 0)
!14 = !DIEnumerator(name: "ZSTD_error_GENERIC", value: 1)
!15 = !DIEnumerator(name: "ZSTD_error_prefix_unknown", value: 10)
!16 = !DIEnumerator(name: "ZSTD_error_version_unsupported", value: 12)
!17 = !DIEnumerator(name: "ZSTD_error_frameParameter_unsupported", value: 14)
!18 = !DIEnumerator(name: "ZSTD_error_frameParameter_windowTooLarge", value: 16)
!19 = !DIEnumerator(name: "ZSTD_error_corruption_detected", value: 20)
!20 = !DIEnumerator(name: "ZSTD_error_checksum_wrong", value: 22)
!21 = !DIEnumerator(name: "ZSTD_error_dictionary_corrupted", value: 30)
!22 = !DIEnumerator(name: "ZSTD_error_dictionary_wrong", value: 32)
!23 = !DIEnumerator(name: "ZSTD_error_dictionaryCreation_failed", value: 34)
!24 = !DIEnumerator(name: "ZSTD_error_parameter_unsupported", value: 40)
!25 = !DIEnumerator(name: "ZSTD_error_parameter_outOfBound", value: 42)
!26 = !DIEnumerator(name: "ZSTD_error_tableLog_tooLarge", value: 44)
!27 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooLarge", value: 46)
!28 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooSmall", value: 48)
!29 = !DIEnumerator(name: "ZSTD_error_stage_wrong", value: 60)
!30 = !DIEnumerator(name: "ZSTD_error_init_missing", value: 62)
!31 = !DIEnumerator(name: "ZSTD_error_memory_allocation", value: 64)
!32 = !DIEnumerator(name: "ZSTD_error_workSpace_tooSmall", value: 66)
!33 = !DIEnumerator(name: "ZSTD_error_dstSize_tooSmall", value: 70)
!34 = !DIEnumerator(name: "ZSTD_error_srcSize_wrong", value: 72)
!35 = !DIEnumerator(name: "ZSTD_error_dstBuffer_null", value: 74)
!36 = !DIEnumerator(name: "ZSTD_error_frameIndex_tooLarge", value: 100)
!37 = !DIEnumerator(name: "ZSTD_error_seekableIO", value: 102)
!38 = !DIEnumerator(name: "ZSTD_error_dstBuffer_wrong", value: 104)
!39 = !DIEnumerator(name: "ZSTD_error_srcBuffer_wrong", value: 105)
!40 = !DIEnumerator(name: "ZSTD_error_maxCode", value: 120)
!41 = !{!42, !43, !49}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 61, baseType: !45)
!44 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !46, line: 72, baseType: !47)
!46 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !46, line: 16, baseType: !48)
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "ERR_enum", file: !50, line: 36, baseType: !51)
!50 = !DIFile(filename: "lib/zstd/common/error_private.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c1e76caf533df7af314a25a57fa92da")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_ErrorCode", file: !10, line: 67, baseType: !9)
!52 = !{!0}
!53 = !{i32 7, !"Dwarf Version", i32 5}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 8, !"cf-protection-branch", i32 1}
!57 = !{i32 4, !"function_return_thunk_extern", i32 1}
!58 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!59 = !{i32 1, !"Code Model", i32 2}
!60 = !{i32 1, !"override-stack-alignment", i32 8}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = distinct !DISubprogram(name: "ZSTD_versionNumber", scope: !2, file: !2, line: 25, type: !63, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7)
!63 = !DISubroutineType(types: !64)
!64 = !{!11}
!65 = !DILocation(line: 25, column: 37, scope: !62)
!66 = distinct !DISubprogram(name: "ZSTD_versionString", scope: !2, file: !2, line: 27, type: !67, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7)
!67 = !DISubroutineType(types: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!71 = !DILocation(line: 27, column: 40, scope: !66)
!72 = distinct !DISubprogram(name: "ZSTD_isError", scope: !2, file: !2, line: 37, type: !73, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{!11, !43}
!75 = !{!76}
!76 = !DILocalVariable(name: "code", arg: 1, scope: !72, file: !2, line: 37, type: !43)
!77 = !DILocation(line: 37, column: 30, scope: !72)
!78 = !DILocation(line: 37, column: 57, scope: !72)
!79 = !DILocation(line: 37, column: 45, scope: !72)
!80 = !DILocation(line: 37, column: 38, scope: !72)
!81 = distinct !DISubprogram(name: "ERR_isError", scope: !50, file: !50, line: 47, type: !73, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !82)
!82 = !{!83}
!83 = !DILocalVariable(name: "code", arg: 1, scope: !81, file: !50, line: 47, type: !43)
!84 = !DILocation(line: 47, column: 40, scope: !81)
!85 = !DILocation(line: 47, column: 56, scope: !81)
!86 = !DILocation(line: 47, column: 61, scope: !81)
!87 = !DILocation(line: 47, column: 48, scope: !81)
!88 = distinct !DISubprogram(name: "ZSTD_getErrorName", scope: !2, file: !2, line: 41, type: !89, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !91)
!89 = !DISubroutineType(types: !90)
!90 = !{!69, !43}
!91 = !{!92}
!92 = !DILocalVariable(name: "code", arg: 1, scope: !88, file: !2, line: 41, type: !43)
!93 = !DILocation(line: 41, column: 38, scope: !88)
!94 = !DILocation(line: 41, column: 70, scope: !88)
!95 = !DILocation(line: 41, column: 53, scope: !88)
!96 = !DILocation(line: 41, column: 46, scope: !88)
!97 = distinct !DISubprogram(name: "ERR_getErrorName", scope: !50, file: !50, line: 62, type: !89, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !98)
!98 = !{!99}
!99 = !DILocalVariable(name: "code", arg: 1, scope: !97, file: !50, line: 62, type: !43)
!100 = !DILocation(line: 62, column: 48, scope: !97)
!101 = !DILocation(line: 64, column: 48, scope: !97)
!102 = !DILocation(line: 64, column: 31, scope: !97)
!103 = !DILocation(line: 64, column: 12, scope: !97)
!104 = !DILocation(line: 64, column: 5, scope: !97)
!105 = distinct !DISubprogram(name: "ZSTD_getErrorCode", scope: !2, file: !2, line: 45, type: !106, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !108)
!106 = !DISubroutineType(types: !107)
!107 = !{!51, !43}
!108 = !{!109}
!109 = !DILocalVariable(name: "code", arg: 1, scope: !105, file: !2, line: 45, type: !43)
!110 = !DILocation(line: 45, column: 41, scope: !105)
!111 = !DILocation(line: 45, column: 73, scope: !105)
!112 = !DILocation(line: 45, column: 56, scope: !105)
!113 = !DILocation(line: 45, column: 49, scope: !105)
!114 = distinct !DISubprogram(name: "ERR_getErrorCode", scope: !50, file: !50, line: 49, type: !115, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{!49, !43}
!117 = !{!118}
!118 = !DILocalVariable(name: "code", arg: 1, scope: !114, file: !50, line: 49, type: !43)
!119 = !DILocation(line: 49, column: 45, scope: !114)
!120 = !DILocation(line: 49, column: 70, scope: !121)
!121 = distinct !DILexicalBlock(scope: !114, file: !50, line: 49, column: 57)
!122 = !DILocation(line: 49, column: 58, scope: !121)
!123 = !DILocation(line: 49, column: 57, scope: !114)
!124 = !DILocation(line: 49, column: 77, scope: !121)
!125 = !DILocation(line: 49, column: 118, scope: !114)
!126 = !DILocation(line: 49, column: 117, scope: !114)
!127 = !DILocation(line: 49, column: 104, scope: !114)
!128 = !DILocation(line: 49, column: 97, scope: !114)
!129 = !DILocation(line: 49, column: 125, scope: !114)
!130 = distinct !DISubprogram(name: "ZSTD_getErrorString", scope: !2, file: !2, line: 49, type: !131, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{!69, !51}
!133 = !{!134}
!134 = !DILocalVariable(name: "code", arg: 1, scope: !130, file: !2, line: 49, type: !51)
!135 = !DILocation(line: 49, column: 48, scope: !130)
!136 = !DILocation(line: 49, column: 82, scope: !130)
!137 = !DILocation(line: 49, column: 63, scope: !130)
!138 = !DILocation(line: 49, column: 56, scope: !130)
!139 = !DISubprogram(name: "ERR_getErrorString", scope: !50, file: !50, line: 60, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!140 = !DISubroutineType(types: !141)
!141 = !{!69, !49}
!142 = distinct !DISubprogram(name: "ZSTD_customMalloc", scope: !2, file: !2, line: 56, type: !143, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !160)
!143 = !DISubroutineType(types: !144)
!144 = !{!42, !43, !145}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_customMem", file: !146, line: 1568, baseType: !147)
!146 = !DIFile(filename: "./include/linux/zstd_lib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8133d2f71405070b8bf1f9699046d166")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 1568, size: 192, elements: !148)
!148 = !{!149, !154, !159}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "customAlloc", scope: !147, file: !146, line: 1568, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_allocFunction", file: !146, line: 1566, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!42, !42, !43}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "customFree", scope: !147, file: !146, line: 1568, baseType: !155, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_freeFunction", file: !146, line: 1567, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !42, !42}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !147, file: !146, line: 1568, baseType: !42, size: 64, offset: 128)
!160 = !{!161, !162}
!161 = !DILocalVariable(name: "size", arg: 1, scope: !142, file: !2, line: 56, type: !43)
!162 = !DILocalVariable(name: "customMem", arg: 2, scope: !142, file: !2, line: 56, type: !145)
!163 = !DILocation(line: 56, column: 32, scope: !142)
!164 = !DILocation(line: 56, column: 53, scope: !142)
!165 = !DILocation(line: 58, column: 19, scope: !166)
!166 = distinct !DILexicalBlock(scope: !142, file: !2, line: 58, column: 9)
!167 = !DILocation(line: 58, column: 9, scope: !166)
!168 = !DILocation(line: 58, column: 9, scope: !142)
!169 = !DILocation(line: 59, column: 26, scope: !166)
!170 = !DILocation(line: 59, column: 48, scope: !166)
!171 = !DILocation(line: 59, column: 56, scope: !166)
!172 = !DILocation(line: 59, column: 16, scope: !166)
!173 = !DILocation(line: 59, column: 9, scope: !166)
!174 = !DILocation(line: 60, column: 12, scope: !175)
!175 = distinct !DILexicalBlock(scope: !142, file: !2, line: 60, column: 12)
!176 = !DILocation(line: 60, column: 5, scope: !142)
!177 = !DILocation(line: 61, column: 1, scope: !142)
!178 = distinct !DISubprogram(name: "ZSTD_customCalloc", scope: !2, file: !2, line: 63, type: !143, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !179)
!179 = !{!180, !181, !182}
!180 = !DILocalVariable(name: "size", arg: 1, scope: !178, file: !2, line: 63, type: !43)
!181 = !DILocalVariable(name: "customMem", arg: 2, scope: !178, file: !2, line: 63, type: !145)
!182 = !DILocalVariable(name: "ptr", scope: !183, file: !2, line: 68, type: !185)
!183 = distinct !DILexicalBlock(scope: !184, file: !2, line: 65, column: 32)
!184 = distinct !DILexicalBlock(scope: !178, file: !2, line: 65, column: 9)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!186 = !DILocation(line: 63, column: 32, scope: !178)
!187 = !DILocation(line: 63, column: 53, scope: !178)
!188 = !DILocation(line: 65, column: 19, scope: !184)
!189 = !DILocation(line: 65, column: 9, scope: !184)
!190 = !DILocation(line: 65, column: 9, scope: !178)
!191 = !DILocation(line: 68, column: 9, scope: !183)
!192 = !DILocation(line: 68, column: 21, scope: !183)
!193 = !DILocation(line: 68, column: 37, scope: !183)
!194 = !DILocation(line: 68, column: 59, scope: !183)
!195 = !DILocation(line: 68, column: 67, scope: !183)
!196 = !DILocation(line: 68, column: 27, scope: !183)
!197 = !DILocation(line: 69, column: 9, scope: !183)
!198 = !DILocation(line: 70, column: 16, scope: !183)
!199 = !DILocation(line: 70, column: 9, scope: !183)
!200 = !DILocation(line: 71, column: 5, scope: !184)
!201 = !DILocation(line: 72, column: 12, scope: !202)
!202 = distinct !DILexicalBlock(scope: !178, file: !2, line: 72, column: 12)
!203 = !DILocation(line: 72, column: 5, scope: !178)
!204 = !DILocation(line: 73, column: 1, scope: !178)
!205 = distinct !DISubprogram(name: "ZSTD_customFree", scope: !2, file: !2, line: 75, type: !206, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !208)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !42, !145}
!208 = !{!209, !210}
!209 = !DILocalVariable(name: "ptr", arg: 1, scope: !205, file: !2, line: 75, type: !42)
!210 = !DILocalVariable(name: "customMem", arg: 2, scope: !205, file: !2, line: 75, type: !145)
!211 = !DILocation(line: 75, column: 28, scope: !205)
!212 = !DILocation(line: 75, column: 48, scope: !205)
!213 = !DILocation(line: 77, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !205, file: !2, line: 77, column: 9)
!215 = !DILocation(line: 77, column: 12, scope: !214)
!216 = !DILocation(line: 77, column: 9, scope: !205)
!217 = !DILocation(line: 78, column: 23, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !2, line: 78, column: 13)
!219 = distinct !DILexicalBlock(scope: !214, file: !2, line: 77, column: 20)
!220 = !DILocation(line: 78, column: 13, scope: !218)
!221 = !DILocation(line: 78, column: 13, scope: !219)
!222 = !DILocation(line: 79, column: 23, scope: !218)
!223 = !DILocation(line: 79, column: 44, scope: !218)
!224 = !DILocation(line: 79, column: 52, scope: !218)
!225 = !DILocation(line: 79, column: 13, scope: !218)
!226 = !DILocation(line: 81, column: 13, scope: !218)
!227 = !DILocation(line: 82, column: 5, scope: !219)
!228 = !DILocation(line: 83, column: 1, scope: !205)
