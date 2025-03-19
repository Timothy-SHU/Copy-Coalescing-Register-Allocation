; ModuleID = 'drivers/acpi/acpica/utcksum.c'
source_filename = "drivers/acpi/acpica/utcksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_table_cdat = type { i32, i8, i8, [6 x i8], i32 }

@.str = private unnamed_addr constant [5 x i8] c"S3PT\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"FACS\00", align 1, !dbg !7
@_acpi_module_name = internal constant [8 x i8] c"utcksum\00", align 1, !dbg !9
@.str.2 = private unnamed_addr constant [65 x i8] c"Incorrect checksum in table [%4.4s] - 0x%2.2X, should be 0x%2.2X\00", align 1, !dbg !29
@acpi_gbl_CDAT = external dso_local global ptr, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_verify_checksum(ptr noundef %table, i32 noundef %length) #0 align 16 !dbg !47 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %checksum = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !71, metadata !DIExpression()), !dbg !74
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !72, metadata !DIExpression()), !dbg !75
  call void @llvm.lifetime.start.p0(i64 1, ptr %checksum) #4, !dbg !76
  call void @llvm.dbg.declare(metadata ptr %checksum, metadata !73, metadata !DIExpression()), !dbg !77
  %0 = load ptr, ptr %table.addr, align 8, !dbg !78
  %signature = getelementptr inbounds %struct.acpi_table_header, ptr %0, i32 0, i32 0, !dbg !78
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !78
  %1 = ptrtoint ptr %arraydecay to i64, !dbg !78
  %2 = inttoptr i64 %1 to ptr, !dbg !78
  %3 = load i32, ptr %2, align 4, !dbg !78
  %4 = load i32, ptr @.str, align 4, !dbg !78
  %cmp = icmp eq i32 %3, %4, !dbg !78
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !80

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %table.addr, align 8, !dbg !81
  %signature1 = getelementptr inbounds %struct.acpi_table_header, ptr %5, i32 0, i32 0, !dbg !81
  %arraydecay2 = getelementptr inbounds [4 x i8], ptr %signature1, i64 0, i64 0, !dbg !81
  %6 = ptrtoint ptr %arraydecay2 to i64, !dbg !81
  %7 = inttoptr i64 %6 to ptr, !dbg !81
  %8 = load i32, ptr %7, align 4, !dbg !81
  %9 = load i32, ptr @.str.1, align 4, !dbg !81
  %cmp3 = icmp eq i32 %8, %9, !dbg !81
  br i1 %cmp3, label %if.then, label %if.end, !dbg !82

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !83
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !83

if.end:                                           ; preds = %lor.lhs.false
  %10 = load ptr, ptr %table.addr, align 8, !dbg !85
  %length4 = getelementptr inbounds %struct.acpi_table_header, ptr %10, i32 0, i32 1, !dbg !86
  %11 = load i32, ptr %length4, align 1, !dbg !86
  store i32 %11, ptr %length.addr, align 4, !dbg !87
  %12 = load ptr, ptr %table.addr, align 8, !dbg !88
  %13 = ptrtoint ptr %12 to i64, !dbg !88
  %14 = inttoptr i64 %13 to ptr, !dbg !88
  %15 = load i32, ptr %length.addr, align 4, !dbg !89
  %16 = load ptr, ptr %table.addr, align 8, !dbg !90
  %checksum5 = getelementptr inbounds %struct.acpi_table_header, ptr %16, i32 0, i32 3, !dbg !91
  %17 = load i8, ptr %checksum5, align 1, !dbg !91
  %call = call zeroext i8 @acpi_ut_generate_checksum(ptr noundef %14, i32 noundef %15, i8 noundef zeroext %17) #5, !dbg !92
  store i8 %call, ptr %checksum, align 1, !dbg !93
  %18 = load i8, ptr %checksum, align 1, !dbg !94
  %conv = zext i8 %18 to i32, !dbg !94
  %19 = load ptr, ptr %table.addr, align 8, !dbg !96
  %checksum6 = getelementptr inbounds %struct.acpi_table_header, ptr %19, i32 0, i32 3, !dbg !97
  %20 = load i8, ptr %checksum6, align 1, !dbg !97
  %conv7 = zext i8 %20 to i32, !dbg !96
  %cmp8 = icmp ne i32 %conv, %conv7, !dbg !98
  br i1 %cmp8, label %if.then10, label %if.end18, !dbg !99

if.then10:                                        ; preds = %if.end
  %21 = load ptr, ptr %table.addr, align 8, !dbg !100
  %signature11 = getelementptr inbounds %struct.acpi_table_header, ptr %21, i32 0, i32 0, !dbg !100
  %arraydecay12 = getelementptr inbounds [4 x i8], ptr %signature11, i64 0, i64 0, !dbg !100
  %22 = load ptr, ptr %table.addr, align 8, !dbg !100
  %checksum13 = getelementptr inbounds %struct.acpi_table_header, ptr %22, i32 0, i32 3, !dbg !100
  %23 = load i8, ptr %checksum13, align 1, !dbg !100
  %conv14 = zext i8 %23 to i32, !dbg !100
  %24 = load ptr, ptr %table.addr, align 8, !dbg !100
  %checksum15 = getelementptr inbounds %struct.acpi_table_header, ptr %24, i32 0, i32 3, !dbg !100
  %25 = load i8, ptr %checksum15, align 1, !dbg !100
  %conv16 = zext i8 %25 to i32, !dbg !100
  %26 = load i8, ptr %checksum, align 1, !dbg !100
  %conv17 = zext i8 %26 to i32, !dbg !100
  %sub = sub i32 %conv16, %conv17, !dbg !100
  call void (ptr, i32, ptr, ...) @acpi_bios_warning(ptr noundef @_acpi_module_name, i32 noundef 58, ptr noundef @.str.2, ptr noundef %arraydecay12, i32 noundef %conv14, i32 noundef %sub) #5, !dbg !100
  br label %if.end18, !dbg !102

if.end18:                                         ; preds = %if.then10, %if.end
  store i32 0, ptr %retval, align 4, !dbg !103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !103

cleanup:                                          ; preds = %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %checksum) #4, !dbg !104
  %27 = load i32, ptr %retval, align 4, !dbg !104
  ret i32 %27, !dbg !104
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ut_generate_checksum(ptr noundef %table, i32 noundef %length, i8 noundef zeroext %original_checksum) #0 align 16 !dbg !105 {
entry:
  %table.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %original_checksum.addr = alloca i8, align 1
  %checksum = alloca i8, align 1
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !110, metadata !DIExpression()), !dbg !114
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !111, metadata !DIExpression()), !dbg !115
  store i8 %original_checksum, ptr %original_checksum.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %original_checksum.addr, metadata !112, metadata !DIExpression()), !dbg !116
  call void @llvm.lifetime.start.p0(i64 1, ptr %checksum) #4, !dbg !117
  call void @llvm.dbg.declare(metadata ptr %checksum, metadata !113, metadata !DIExpression()), !dbg !118
  %0 = load ptr, ptr %table.addr, align 8, !dbg !119
  %1 = load i32, ptr %length.addr, align 4, !dbg !120
  %call = call zeroext i8 @acpi_ut_checksum(ptr noundef %0, i32 noundef %1) #5, !dbg !121
  store i8 %call, ptr %checksum, align 1, !dbg !122
  %2 = load i8, ptr %checksum, align 1, !dbg !123
  %conv = zext i8 %2 to i32, !dbg !123
  %3 = load i8, ptr %original_checksum.addr, align 1, !dbg !124
  %conv1 = zext i8 %3 to i32, !dbg !124
  %sub = sub i32 %conv, %conv1, !dbg !125
  %conv2 = trunc i32 %sub to i8, !dbg !126
  store i8 %conv2, ptr %checksum, align 1, !dbg !127
  %4 = load i8, ptr %checksum, align 1, !dbg !128
  %conv3 = zext i8 %4 to i32, !dbg !128
  %sub4 = sub i32 0, %conv3, !dbg !129
  %conv5 = trunc i32 %sub4 to i8, !dbg !130
  store i8 %conv5, ptr %checksum, align 1, !dbg !131
  %5 = load i8, ptr %checksum, align 1, !dbg !132
  call void @llvm.lifetime.end.p0(i64 1, ptr %checksum) #4, !dbg !133
  ret i8 %5, !dbg !134
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !135 dso_local void @acpi_bios_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_verify_cdat_checksum(ptr noundef %cdat_table, i32 noundef %length) #0 align 16 !dbg !140 {
entry:
  %cdat_table.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %checksum = alloca i8, align 1
  store ptr %cdat_table, ptr %cdat_table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdat_table.addr, metadata !154, metadata !DIExpression()), !dbg !157
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !155, metadata !DIExpression()), !dbg !158
  call void @llvm.lifetime.start.p0(i64 1, ptr %checksum) #4, !dbg !159
  call void @llvm.dbg.declare(metadata ptr %checksum, metadata !156, metadata !DIExpression()), !dbg !160
  %0 = load ptr, ptr %cdat_table.addr, align 8, !dbg !161
  %1 = ptrtoint ptr %0 to i64, !dbg !161
  %2 = inttoptr i64 %1 to ptr, !dbg !161
  %3 = load ptr, ptr %cdat_table.addr, align 8, !dbg !162
  %length1 = getelementptr inbounds %struct.acpi_table_cdat, ptr %3, i32 0, i32 0, !dbg !163
  %4 = load i32, ptr %length1, align 1, !dbg !163
  %5 = load ptr, ptr %cdat_table.addr, align 8, !dbg !164
  %checksum2 = getelementptr inbounds %struct.acpi_table_cdat, ptr %5, i32 0, i32 2, !dbg !165
  %6 = load i8, ptr %checksum2, align 1, !dbg !165
  %call = call zeroext i8 @acpi_ut_generate_checksum(ptr noundef %2, i32 noundef %4, i8 noundef zeroext %6) #5, !dbg !166
  store i8 %call, ptr %checksum, align 1, !dbg !167
  %7 = load i8, ptr %checksum, align 1, !dbg !168
  %conv = zext i8 %7 to i32, !dbg !168
  %8 = load ptr, ptr %cdat_table.addr, align 8, !dbg !170
  %checksum3 = getelementptr inbounds %struct.acpi_table_cdat, ptr %8, i32 0, i32 2, !dbg !171
  %9 = load i8, ptr %checksum3, align 1, !dbg !171
  %conv4 = zext i8 %9 to i32, !dbg !170
  %cmp = icmp ne i32 %conv, %conv4, !dbg !172
  br i1 %cmp, label %if.then, label %if.end, !dbg !173

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr @acpi_gbl_CDAT, align 8, !dbg !174
  %11 = load ptr, ptr %cdat_table.addr, align 8, !dbg !174
  %checksum6 = getelementptr inbounds %struct.acpi_table_cdat, ptr %11, i32 0, i32 2, !dbg !174
  %12 = load i8, ptr %checksum6, align 1, !dbg !174
  %conv7 = zext i8 %12 to i32, !dbg !174
  %13 = load i8, ptr %checksum, align 1, !dbg !174
  %conv8 = zext i8 %13 to i32, !dbg !174
  call void (ptr, i32, ptr, ...) @acpi_bios_warning(ptr noundef @_acpi_module_name, i32 noundef 100, ptr noundef @.str.2, ptr noundef %10, i32 noundef %conv7, i32 noundef %conv8) #5, !dbg !174
  br label %if.end, !dbg !176

if.end:                                           ; preds = %if.then, %entry
  %14 = load i8, ptr %checksum, align 1, !dbg !177
  %15 = load ptr, ptr %cdat_table.addr, align 8, !dbg !178
  %checksum9 = getelementptr inbounds %struct.acpi_table_cdat, ptr %15, i32 0, i32 2, !dbg !179
  store i8 %14, ptr %checksum9, align 1, !dbg !180
  call void @llvm.lifetime.end.p0(i64 1, ptr %checksum) #4, !dbg !181
  ret i32 0, !dbg !182
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ut_checksum(ptr noundef %buffer, i32 noundef %length) #0 align 16 !dbg !183 {
entry:
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %sum = alloca i8, align 1
  %end = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !187, metadata !DIExpression()), !dbg !191
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !188, metadata !DIExpression()), !dbg !192
  call void @llvm.lifetime.start.p0(i64 1, ptr %sum) #4, !dbg !193
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !189, metadata !DIExpression()), !dbg !194
  store i8 0, ptr %sum, align 1, !dbg !194
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #4, !dbg !195
  call void @llvm.dbg.declare(metadata ptr %end, metadata !190, metadata !DIExpression()), !dbg !196
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !197
  %1 = load i32, ptr %length.addr, align 4, !dbg !198
  %idx.ext = zext i32 %1 to i64, !dbg !199
  %add.ptr = getelementptr i8, ptr %0, i64 %idx.ext, !dbg !199
  store ptr %add.ptr, ptr %end, align 8, !dbg !196
  br label %while.cond, !dbg !200

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !201
  %3 = load ptr, ptr %end, align 8, !dbg !202
  %cmp = icmp ult ptr %2, %3, !dbg !203
  br i1 %cmp, label %while.body, label %while.end, !dbg !200

while.body:                                       ; preds = %while.cond
  %4 = load i8, ptr %sum, align 1, !dbg !204
  %conv = zext i8 %4 to i32, !dbg !204
  %5 = load ptr, ptr %buffer.addr, align 8, !dbg !206
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !206
  store ptr %incdec.ptr, ptr %buffer.addr, align 8, !dbg !206
  %6 = load i8, ptr %5, align 1, !dbg !207
  %conv1 = zext i8 %6 to i32, !dbg !207
  %add = add i32 %conv, %conv1, !dbg !208
  %conv2 = trunc i32 %add to i8, !dbg !209
  store i8 %conv2, ptr %sum, align 1, !dbg !210
  br label %while.cond, !dbg !200, !llvm.loop !211

while.end:                                        ; preds = %while.cond
  %7 = load i8, ptr %sum, align 1, !dbg !215
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #4, !dbg !216
  call void @llvm.lifetime.end.p0(i64 1, ptr %sum) #4, !dbg !216
  ret i8 %7, !dbg !217
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!11}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/utcksum.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "655ba271acd1e412770a60d4ec73052c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !11, file: !2, line: 17, type: !34, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utcksum.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utcksum\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utcksum.ll drivers/acpi/acpica/utcksum.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !12, globals: !28, splitDebugInlining: false, nameTableKind: None)
!12 = !{!13, !19, !22, !24, !25}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !15, line: 21, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !18)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !20, line: 42, baseType: !21)
!20 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !23, line: 421, baseType: !14)
!23 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !15, line: 17, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !17, line: 21, baseType: !27)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !{!0, !7, !29, !9}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 65)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !36)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!36 = !{!37}
!37 = !DISubrange(count: 8)
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 8, !"cf-protection-branch", i32 1}
!42 = !{i32 4, !"function_return_thunk_extern", i32 1}
!43 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!44 = !{i32 1, !"Code Model", i32 2}
!45 = !{i32 1, !"override-stack-alignment", i32 8}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = distinct !DISubprogram(name: "acpi_ut_verify_checksum", scope: !2, file: !2, line: 35, type: !48, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !70)
!48 = !DISubroutineType(types: !49)
!49 = !{!22, !50, !14}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !52, line: 68, size: 288, elements: !53)
!52 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!53 = !{!54, !58, !59, !60, !61, !65, !67, !68, !69}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !51, file: !52, line: 69, baseType: !55, size: 32)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 4)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !51, file: !52, line: 70, baseType: !14, size: 32, offset: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !51, file: !52, line: 71, baseType: !25, size: 8, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !51, file: !52, line: 72, baseType: !25, size: 8, offset: 72)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !51, file: !52, line: 73, baseType: !62, size: 48, offset: 80)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 6)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !51, file: !52, line: 74, baseType: !66, size: 64, offset: 128)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !36)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !51, file: !52, line: 75, baseType: !14, size: 32, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !51, file: !52, line: 76, baseType: !55, size: 32, offset: 224)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !51, file: !52, line: 77, baseType: !14, size: 32, offset: 256)
!70 = !{!71, !72, !73}
!71 = !DILocalVariable(name: "table", arg: 1, scope: !47, file: !2, line: 35, type: !50)
!72 = !DILocalVariable(name: "length", arg: 2, scope: !47, file: !2, line: 35, type: !14)
!73 = !DILocalVariable(name: "checksum", scope: !47, file: !2, line: 37, type: !25)
!74 = !DILocation(line: 35, column: 63, scope: !47)
!75 = !DILocation(line: 35, column: 74, scope: !47)
!76 = !DILocation(line: 37, column: 2, scope: !47)
!77 = !DILocation(line: 37, column: 5, scope: !47)
!78 = !DILocation(line: 43, column: 6, scope: !79)
!79 = distinct !DILexicalBlock(scope: !47, file: !2, line: 43, column: 6)
!80 = !DILocation(line: 43, column: 60, scope: !79)
!81 = !DILocation(line: 44, column: 6, scope: !79)
!82 = !DILocation(line: 43, column: 6, scope: !47)
!83 = !DILocation(line: 45, column: 3, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !2, line: 44, column: 61)
!85 = !DILocation(line: 50, column: 11, scope: !47)
!86 = !DILocation(line: 50, column: 18, scope: !47)
!87 = !DILocation(line: 50, column: 9, scope: !47)
!88 = !DILocation(line: 52, column: 32, scope: !47)
!89 = !DILocation(line: 52, column: 58, scope: !47)
!90 = !DILocation(line: 53, column: 11, scope: !47)
!91 = !DILocation(line: 53, column: 18, scope: !47)
!92 = !DILocation(line: 52, column: 6, scope: !47)
!93 = !DILocation(line: 51, column: 11, scope: !47)
!94 = !DILocation(line: 57, column: 6, scope: !95)
!95 = distinct !DILexicalBlock(scope: !47, file: !2, line: 57, column: 6)
!96 = !DILocation(line: 57, column: 18, scope: !95)
!97 = !DILocation(line: 57, column: 25, scope: !95)
!98 = !DILocation(line: 57, column: 15, scope: !95)
!99 = !DILocation(line: 57, column: 6, scope: !47)
!100 = !DILocation(line: 58, column: 3, scope: !101)
!101 = distinct !DILexicalBlock(scope: !95, file: !2, line: 57, column: 35)
!102 = !DILocation(line: 67, column: 2, scope: !101)
!103 = !DILocation(line: 69, column: 2, scope: !47)
!104 = !DILocation(line: 70, column: 1, scope: !47)
!105 = distinct !DISubprogram(name: "acpi_ut_generate_checksum", scope: !2, file: !2, line: 129, type: !106, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !109)
!106 = !DISubroutineType(types: !107)
!107 = !{!25, !108, !14, !25}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !{!110, !111, !112, !113}
!110 = !DILocalVariable(name: "table", arg: 1, scope: !105, file: !2, line: 129, type: !108)
!111 = !DILocalVariable(name: "length", arg: 2, scope: !105, file: !2, line: 129, type: !14)
!112 = !DILocalVariable(name: "original_checksum", arg: 3, scope: !105, file: !2, line: 129, type: !25)
!113 = !DILocalVariable(name: "checksum", scope: !105, file: !2, line: 131, type: !25)
!114 = !DILocation(line: 129, column: 36, scope: !105)
!115 = !DILocation(line: 129, column: 47, scope: !105)
!116 = !DILocation(line: 129, column: 58, scope: !105)
!117 = !DILocation(line: 131, column: 2, scope: !105)
!118 = !DILocation(line: 131, column: 5, scope: !105)
!119 = !DILocation(line: 135, column: 36, scope: !105)
!120 = !DILocation(line: 135, column: 43, scope: !105)
!121 = !DILocation(line: 135, column: 13, scope: !105)
!122 = !DILocation(line: 135, column: 11, scope: !105)
!123 = !DILocation(line: 139, column: 18, scope: !105)
!124 = !DILocation(line: 139, column: 29, scope: !105)
!125 = !DILocation(line: 139, column: 27, scope: !105)
!126 = !DILocation(line: 139, column: 13, scope: !105)
!127 = !DILocation(line: 139, column: 11, scope: !105)
!128 = !DILocation(line: 143, column: 22, scope: !105)
!129 = !DILocation(line: 143, column: 20, scope: !105)
!130 = !DILocation(line: 143, column: 13, scope: !105)
!131 = !DILocation(line: 143, column: 11, scope: !105)
!132 = !DILocation(line: 144, column: 10, scope: !105)
!133 = !DILocation(line: 145, column: 1, scope: !105)
!134 = !DILocation(line: 144, column: 2, scope: !105)
!135 = !DISubprogram(name: "acpi_bios_warning", scope: !136, file: !136, line: 931, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!136 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!137 = !DISubroutineType(types: !138)
!138 = !{null, !139, !14, !139, null}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!140 = distinct !DISubprogram(name: "acpi_ut_verify_cdat_checksum", scope: !2, file: !2, line: 87, type: !141, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !153)
!141 = !DISubroutineType(types: !142)
!142 = !{!22, !143, !14}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_cdat", file: !145, line: 365, size: 128, elements: !146)
!145 = !DIFile(filename: "./include/acpi/actbl1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "82b9176197c6884c1b7affcb8f534260")
!146 = !{!147, !148, !149, !150, !152}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !144, file: !145, line: 366, baseType: !14, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !144, file: !145, line: 367, baseType: !25, size: 8, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !144, file: !145, line: 368, baseType: !25, size: 8, offset: 40)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !144, file: !145, line: 369, baseType: !151, size: 48, offset: 48)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 48, elements: !63)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !144, file: !145, line: 370, baseType: !14, size: 32, offset: 96)
!153 = !{!154, !155, !156}
!154 = !DILocalVariable(name: "cdat_table", arg: 1, scope: !140, file: !2, line: 87, type: !143)
!155 = !DILocalVariable(name: "length", arg: 2, scope: !140, file: !2, line: 87, type: !14)
!156 = !DILocalVariable(name: "checksum", scope: !140, file: !2, line: 89, type: !25)
!157 = !DILocation(line: 87, column: 54, scope: !140)
!158 = !DILocation(line: 87, column: 70, scope: !140)
!159 = !DILocation(line: 89, column: 2, scope: !140)
!160 = !DILocation(line: 89, column: 5, scope: !140)
!161 = !DILocation(line: 93, column: 39, scope: !140)
!162 = !DILocation(line: 94, column: 11, scope: !140)
!163 = !DILocation(line: 94, column: 23, scope: !140)
!164 = !DILocation(line: 95, column: 11, scope: !140)
!165 = !DILocation(line: 95, column: 23, scope: !140)
!166 = !DILocation(line: 93, column: 13, scope: !140)
!167 = !DILocation(line: 93, column: 11, scope: !140)
!168 = !DILocation(line: 99, column: 6, scope: !169)
!169 = distinct !DILexicalBlock(scope: !140, file: !2, line: 99, column: 6)
!170 = !DILocation(line: 99, column: 18, scope: !169)
!171 = !DILocation(line: 99, column: 30, scope: !169)
!172 = !DILocation(line: 99, column: 15, scope: !169)
!173 = !DILocation(line: 99, column: 6, scope: !140)
!174 = !DILocation(line: 100, column: 3, scope: !175)
!175 = distinct !DILexicalBlock(scope: !169, file: !2, line: 99, column: 40)
!176 = !DILocation(line: 109, column: 2, scope: !175)
!177 = !DILocation(line: 111, column: 25, scope: !140)
!178 = !DILocation(line: 111, column: 2, scope: !140)
!179 = !DILocation(line: 111, column: 14, scope: !140)
!180 = !DILocation(line: 111, column: 23, scope: !140)
!181 = !DILocation(line: 113, column: 1, scope: !140)
!182 = !DILocation(line: 112, column: 2, scope: !140)
!183 = distinct !DISubprogram(name: "acpi_ut_checksum", scope: !2, file: !2, line: 160, type: !184, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !186)
!184 = !DISubroutineType(types: !185)
!185 = !{!25, !24, !14}
!186 = !{!187, !188, !189, !190}
!187 = !DILocalVariable(name: "buffer", arg: 1, scope: !183, file: !2, line: 160, type: !24)
!188 = !DILocalVariable(name: "length", arg: 2, scope: !183, file: !2, line: 160, type: !14)
!189 = !DILocalVariable(name: "sum", scope: !183, file: !2, line: 162, type: !25)
!190 = !DILocalVariable(name: "end", scope: !183, file: !2, line: 163, type: !24)
!191 = !DILocation(line: 160, column: 25, scope: !183)
!192 = !DILocation(line: 160, column: 37, scope: !183)
!193 = !DILocation(line: 162, column: 2, scope: !183)
!194 = !DILocation(line: 162, column: 5, scope: !183)
!195 = !DILocation(line: 163, column: 2, scope: !183)
!196 = !DILocation(line: 163, column: 6, scope: !183)
!197 = !DILocation(line: 163, column: 12, scope: !183)
!198 = !DILocation(line: 163, column: 21, scope: !183)
!199 = !DILocation(line: 163, column: 19, scope: !183)
!200 = !DILocation(line: 165, column: 2, scope: !183)
!201 = !DILocation(line: 165, column: 9, scope: !183)
!202 = !DILocation(line: 165, column: 18, scope: !183)
!203 = !DILocation(line: 165, column: 16, scope: !183)
!204 = !DILocation(line: 166, column: 14, scope: !205)
!205 = distinct !DILexicalBlock(scope: !183, file: !2, line: 165, column: 23)
!206 = !DILocation(line: 166, column: 28, scope: !205)
!207 = !DILocation(line: 166, column: 20, scope: !205)
!208 = !DILocation(line: 166, column: 18, scope: !205)
!209 = !DILocation(line: 166, column: 9, scope: !205)
!210 = !DILocation(line: 166, column: 7, scope: !205)
!211 = distinct !{!211, !200, !212, !213, !214}
!212 = !DILocation(line: 167, column: 2, scope: !183)
!213 = !{!"llvm.loop.mustprogress"}
!214 = !{!"llvm.loop.unroll.disable"}
!215 = !DILocation(line: 169, column: 10, scope: !183)
!216 = !DILocation(line: 170, column: 1, scope: !183)
!217 = !DILocation(line: 169, column: 2, scope: !183)
