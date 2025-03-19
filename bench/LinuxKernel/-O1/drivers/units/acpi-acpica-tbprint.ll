; ModuleID = 'drivers/acpi/acpica/tbprint.c'
source_filename = "drivers/acpi/acpica/tbprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_table_rsdp = type <{ [8 x i8], i8, [6 x i8], i8, i32, i32, i64, i8, [3 x i8] }>

@.str = private unnamed_addr constant [5 x i8] c"FACS\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [25 x i8] c"%-4.4s 0x%8.8X%8.8X %06X\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"RSD PTR \00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [38 x i8] c"RSDP 0x%8.8X%8.8X %06X (v%.2d %-6.6s)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [64 x i8] c"%-4.4s 0x%8.8X%8.8X %06X (v%.2d %-6.6s %-8.8s %08X %-4.4s %08X)\00", align 1, !dbg !22
@_ctype = external dso_local constant [0 x i8], align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_tb_print_table_header(i64 noundef %address, ptr noundef %header) #0 align 16 !dbg !78 {
entry:
  %address.addr = alloca i64, align 8
  %header.addr = alloca ptr, align 8
  %local_header = alloca %struct.acpi_table_header, align 1
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !99, metadata !DIExpression()), !dbg !102
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !100, metadata !DIExpression()), !dbg !103
  call void @llvm.lifetime.start.p0(i64 36, ptr %local_header) #5, !dbg !104
  call void @llvm.dbg.declare(metadata ptr %local_header, metadata !101, metadata !DIExpression()), !dbg !105
  %0 = load ptr, ptr %header.addr, align 8, !dbg !106
  %signature = getelementptr inbounds %struct.acpi_table_header, ptr %0, i32 0, i32 0, !dbg !106
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !106
  %1 = ptrtoint ptr %arraydecay to i64, !dbg !106
  %2 = inttoptr i64 %1 to ptr, !dbg !106
  %3 = load i32, ptr %2, align 4, !dbg !106
  %4 = load i32, ptr @.str, align 4, !dbg !106
  %cmp = icmp eq i32 %3, %4, !dbg !106
  br i1 %cmp, label %if.then, label %if.else, !dbg !108

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %header.addr, align 8, !dbg !109
  %signature1 = getelementptr inbounds %struct.acpi_table_header, ptr %5, i32 0, i32 0, !dbg !109
  %arraydecay2 = getelementptr inbounds [4 x i8], ptr %signature1, i64 0, i64 0, !dbg !109
  %6 = load i64, ptr %address.addr, align 8, !dbg !109
  %shr = lshr i64 %6, 32, !dbg !109
  %conv = trunc i64 %shr to i32, !dbg !109
  %7 = load i64, ptr %address.addr, align 8, !dbg !109
  %conv3 = trunc i64 %7 to i32, !dbg !109
  %8 = load ptr, ptr %header.addr, align 8, !dbg !109
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %8, i32 0, i32 1, !dbg !109
  %9 = load i32, ptr %length, align 1, !dbg !109
  call void (ptr, ...) @acpi_info(ptr noundef @.str.1, ptr noundef %arraydecay2, i32 noundef %conv, i32 noundef %conv3, i32 noundef %9) #6, !dbg !109
  br label %if.end36, !dbg !111

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %header.addr, align 8, !dbg !112
  %11 = ptrtoint ptr %10 to i64, !dbg !112
  %12 = inttoptr i64 %11 to ptr, !dbg !112
  %signature4 = getelementptr inbounds %struct.acpi_table_rsdp, ptr %12, i32 0, i32 0, !dbg !112
  %arraydecay5 = getelementptr inbounds [8 x i8], ptr %signature4, i64 0, i64 0, !dbg !112
  %13 = ptrtoint ptr %arraydecay5 to i64, !dbg !112
  %14 = inttoptr i64 %13 to ptr, !dbg !112
  %call = call i32 @strncmp(ptr noundef %14, ptr noundef @.str.2, i64 noundef 8) #6, !dbg !112
  %tobool = icmp ne i32 %call, 0, !dbg !112
  br i1 %tobool, label %if.else23, label %if.then6, !dbg !114

if.then6:                                         ; preds = %if.else
  %oem_id = getelementptr inbounds %struct.acpi_table_header, ptr %local_header, i32 0, i32 4, !dbg !115
  %arraydecay7 = getelementptr inbounds [6 x i8], ptr %oem_id, i64 0, i64 0, !dbg !117
  %15 = load ptr, ptr %header.addr, align 8, !dbg !118
  %16 = ptrtoint ptr %15 to i64, !dbg !118
  %17 = inttoptr i64 %16 to ptr, !dbg !118
  %oem_id8 = getelementptr inbounds %struct.acpi_table_rsdp, ptr %17, i32 0, i32 2, !dbg !119
  %arraydecay9 = getelementptr inbounds [6 x i8], ptr %oem_id8, i64 0, i64 0, !dbg !117
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay7, ptr align 1 %arraydecay9, i64 6, i1 false), !dbg !117
  %oem_id10 = getelementptr inbounds %struct.acpi_table_header, ptr %local_header, i32 0, i32 4, !dbg !120
  %arraydecay11 = getelementptr inbounds [6 x i8], ptr %oem_id10, i64 0, i64 0, !dbg !121
  call void @acpi_tb_fix_string(ptr noundef %arraydecay11, i64 noundef 6) #6, !dbg !122
  %18 = load i64, ptr %address.addr, align 8, !dbg !123
  %shr12 = lshr i64 %18, 32, !dbg !123
  %conv13 = trunc i64 %shr12 to i32, !dbg !123
  %19 = load i64, ptr %address.addr, align 8, !dbg !123
  %conv14 = trunc i64 %19 to i32, !dbg !123
  %20 = load ptr, ptr %header.addr, align 8, !dbg !123
  %21 = ptrtoint ptr %20 to i64, !dbg !123
  %22 = inttoptr i64 %21 to ptr, !dbg !123
  %revision = getelementptr inbounds %struct.acpi_table_rsdp, ptr %22, i32 0, i32 3, !dbg !123
  %23 = load i8, ptr %revision, align 1, !dbg !123
  %conv15 = zext i8 %23 to i32, !dbg !123
  %cmp16 = icmp sgt i32 %conv15, 0, !dbg !123
  br i1 %cmp16, label %cond.true, label %cond.false, !dbg !123

cond.true:                                        ; preds = %if.then6
  %24 = load ptr, ptr %header.addr, align 8, !dbg !123
  %25 = ptrtoint ptr %24 to i64, !dbg !123
  %26 = inttoptr i64 %25 to ptr, !dbg !123
  %length18 = getelementptr inbounds %struct.acpi_table_rsdp, ptr %26, i32 0, i32 5, !dbg !123
  %27 = load i32, ptr %length18, align 1, !dbg !123
  br label %cond.end, !dbg !123

cond.false:                                       ; preds = %if.then6
  br label %cond.end, !dbg !123

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ 20, %cond.false ], !dbg !123
  %28 = load ptr, ptr %header.addr, align 8, !dbg !123
  %29 = ptrtoint ptr %28 to i64, !dbg !123
  %30 = inttoptr i64 %29 to ptr, !dbg !123
  %revision19 = getelementptr inbounds %struct.acpi_table_rsdp, ptr %30, i32 0, i32 3, !dbg !123
  %31 = load i8, ptr %revision19, align 1, !dbg !123
  %conv20 = zext i8 %31 to i32, !dbg !123
  %oem_id21 = getelementptr inbounds %struct.acpi_table_header, ptr %local_header, i32 0, i32 4, !dbg !123
  %arraydecay22 = getelementptr inbounds [6 x i8], ptr %oem_id21, i64 0, i64 0, !dbg !123
  call void (ptr, ...) @acpi_info(ptr noundef @.str.3, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %cond, i32 noundef %conv20, ptr noundef %arraydecay22) #6, !dbg !123
  br label %if.end, !dbg !124

if.else23:                                        ; preds = %if.else
  %32 = load ptr, ptr %header.addr, align 8, !dbg !125
  call void @acpi_tb_cleanup_table_header(ptr noundef %local_header, ptr noundef %32) #6, !dbg !127
  %signature24 = getelementptr inbounds %struct.acpi_table_header, ptr %local_header, i32 0, i32 0, !dbg !128
  %arraydecay25 = getelementptr inbounds [4 x i8], ptr %signature24, i64 0, i64 0, !dbg !128
  %33 = load i64, ptr %address.addr, align 8, !dbg !128
  %shr26 = lshr i64 %33, 32, !dbg !128
  %conv27 = trunc i64 %shr26 to i32, !dbg !128
  %34 = load i64, ptr %address.addr, align 8, !dbg !128
  %conv28 = trunc i64 %34 to i32, !dbg !128
  %length29 = getelementptr inbounds %struct.acpi_table_header, ptr %local_header, i32 0, i32 1, !dbg !128
  %35 = load i32, ptr %length29, align 1, !dbg !128
  %revision30 = getelementptr inbounds %struct.acpi_table_header, ptr %local_header, i32 0, i32 2, !dbg !128
  %36 = load i8, ptr %revision30, align 1, !dbg !128
  %conv31 = zext i8 %36 to i32, !dbg !128
  %oem_id32 = getelementptr inbounds %struct.acpi_table_header, ptr %local_header, i32 0, i32 4, !dbg !128
  %arraydecay33 = getelementptr inbounds [6 x i8], ptr %oem_id32, i64 0, i64 0, !dbg !128
  %oem_table_id = getelementptr inbounds %struct.acpi_table_header, ptr %local_header, i32 0, i32 5, !dbg !128
  %arraydecay34 = getelementptr inbounds [8 x i8], ptr %oem_table_id, i64 0, i64 0, !dbg !128
  %oem_revision = getelementptr inbounds %struct.acpi_table_header, ptr %local_header, i32 0, i32 6, !dbg !128
  %37 = load i32, ptr %oem_revision, align 1, !dbg !128
  %asl_compiler_id = getelementptr inbounds %struct.acpi_table_header, ptr %local_header, i32 0, i32 7, !dbg !128
  %arraydecay35 = getelementptr inbounds [4 x i8], ptr %asl_compiler_id, i64 0, i64 0, !dbg !128
  %asl_compiler_revision = getelementptr inbounds %struct.acpi_table_header, ptr %local_header, i32 0, i32 8, !dbg !128
  %38 = load i32, ptr %asl_compiler_revision, align 1, !dbg !128
  call void (ptr, ...) @acpi_info(ptr noundef @.str.4, ptr noundef %arraydecay25, i32 noundef %conv27, i32 noundef %conv28, i32 noundef %35, i32 noundef %conv31, ptr noundef %arraydecay33, ptr noundef %arraydecay34, i32 noundef %37, ptr noundef %arraydecay35, i32 noundef %38) #6, !dbg !128
  br label %if.end

if.end:                                           ; preds = %if.else23, %cond.end
  br label %if.end36

if.end36:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 36, ptr %local_header) #5, !dbg !129
  ret void, !dbg !129
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !130 dso_local void @acpi_info(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !136 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_tb_fix_string(ptr noundef %string, i64 noundef %length) #0 align 16 !dbg !143 {
entry:
  %string.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !148, metadata !DIExpression()), !dbg !150
  store i64 %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !149, metadata !DIExpression()), !dbg !151
  br label %while.cond, !dbg !152

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, ptr %length.addr, align 8, !dbg !153
  %tobool = icmp ne i64 %0, 0, !dbg !153
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !154

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %string.addr, align 8, !dbg !155
  %2 = load i8, ptr %1, align 1, !dbg !156
  %conv = zext i8 %2 to i32, !dbg !156
  %tobool1 = icmp ne i32 %conv, 0, !dbg !154
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ], !dbg !157
  br i1 %3, label %while.body, label %while.end, !dbg !152

while.body:                                       ; preds = %land.end
  %4 = load ptr, ptr %string.addr, align 8, !dbg !158
  %5 = load i8, ptr %4, align 1, !dbg !158
  %conv2 = zext i8 %5 to i32, !dbg !158
  %conv3 = trunc i32 %conv2 to i8, !dbg !158
  %conv4 = zext i8 %conv3 to i32, !dbg !158
  %idxprom = sext i32 %conv4 to i64, !dbg !158
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !158
  %6 = load i8, ptr %arrayidx, align 1, !dbg !158
  %conv5 = zext i8 %6 to i32, !dbg !158
  %and = and i32 %conv5, 151, !dbg !158
  %cmp = icmp ne i32 %and, 0, !dbg !158
  br i1 %cmp, label %if.end, label %if.then, !dbg !161

if.then:                                          ; preds = %while.body
  %7 = load ptr, ptr %string.addr, align 8, !dbg !162
  store i8 63, ptr %7, align 1, !dbg !164
  br label %if.end, !dbg !165

if.end:                                           ; preds = %if.then, %while.body
  %8 = load ptr, ptr %string.addr, align 8, !dbg !166
  %incdec.ptr = getelementptr i8, ptr %8, i32 1, !dbg !166
  store ptr %incdec.ptr, ptr %string.addr, align 8, !dbg !166
  %9 = load i64, ptr %length.addr, align 8, !dbg !167
  %dec = add i64 %9, -1, !dbg !167
  store i64 %dec, ptr %length.addr, align 8, !dbg !167
  br label %while.cond, !dbg !152, !llvm.loop !168

while.end:                                        ; preds = %land.end
  ret void, !dbg !172
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_tb_cleanup_table_header(ptr noundef %out_header, ptr noundef %header) #0 align 16 !dbg !173 {
entry:
  %out_header.addr = alloca ptr, align 8
  %header.addr = alloca ptr, align 8
  store ptr %out_header, ptr %out_header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_header.addr, metadata !177, metadata !DIExpression()), !dbg !179
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !178, metadata !DIExpression()), !dbg !180
  %0 = load ptr, ptr %out_header.addr, align 8, !dbg !181
  %1 = load ptr, ptr %header.addr, align 8, !dbg !182
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 36, i1 false), !dbg !183
  %2 = load ptr, ptr %out_header.addr, align 8, !dbg !184
  %signature = getelementptr inbounds %struct.acpi_table_header, ptr %2, i32 0, i32 0, !dbg !185
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !184
  call void @acpi_tb_fix_string(ptr noundef %arraydecay, i64 noundef 4) #6, !dbg !186
  %3 = load ptr, ptr %out_header.addr, align 8, !dbg !187
  %oem_id = getelementptr inbounds %struct.acpi_table_header, ptr %3, i32 0, i32 4, !dbg !188
  %arraydecay1 = getelementptr inbounds [6 x i8], ptr %oem_id, i64 0, i64 0, !dbg !187
  call void @acpi_tb_fix_string(ptr noundef %arraydecay1, i64 noundef 6) #6, !dbg !189
  %4 = load ptr, ptr %out_header.addr, align 8, !dbg !190
  %oem_table_id = getelementptr inbounds %struct.acpi_table_header, ptr %4, i32 0, i32 5, !dbg !191
  %arraydecay2 = getelementptr inbounds [8 x i8], ptr %oem_table_id, i64 0, i64 0, !dbg !190
  call void @acpi_tb_fix_string(ptr noundef %arraydecay2, i64 noundef 8) #6, !dbg !192
  %5 = load ptr, ptr %out_header.addr, align 8, !dbg !193
  %asl_compiler_id = getelementptr inbounds %struct.acpi_table_header, ptr %5, i32 0, i32 7, !dbg !194
  %arraydecay3 = getelementptr inbounds [4 x i8], ptr %asl_compiler_id, i64 0, i64 0, !dbg !193
  call void @acpi_tb_fix_string(ptr noundef %arraydecay3, i64 noundef 4) #6, !dbg !195
  ret void, !dbg !196
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/tbprint.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b2ebaf8487703497daff253622b4a10")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 25)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 38)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 64)
!27 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.tbprint.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22tbprint\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/tbprint.ll drivers/acpi/acpica/tbprint.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !28, globals: !68, splitDebugInlining: false, nameTableKind: None)
!28 = !{!29, !35, !30, !38, !41, !42, !67, !53, !51}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !31, line: 21, baseType: !32)
!31 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !33, line: 27, baseType: !34)
!33 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !36, line: 42, baseType: !37)
!36 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !31, line: 23, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !33, line: 31, baseType: !40)
!40 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_rsdp", file: !44, line: 105, size: 288, elements: !45)
!44 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!45 = !{!46, !50, !54, !58, !59, !60, !61, !62, !63}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !43, file: !44, line: 106, baseType: !47, size: 64)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 8)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !43, file: !44, line: 107, baseType: !51, size: 8, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !31, line: 17, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !33, line: 21, baseType: !53)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !43, file: !44, line: 108, baseType: !55, size: 48, offset: 72)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 6)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !43, file: !44, line: 109, baseType: !51, size: 8, offset: 120)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "rsdt_physical_address", scope: !43, file: !44, line: 110, baseType: !30, size: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !43, file: !44, line: 111, baseType: !30, size: 32, offset: 160)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "xsdt_physical_address", scope: !43, file: !44, line: 112, baseType: !38, size: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "extended_checksum", scope: !43, file: !44, line: 113, baseType: !51, size: 8, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !43, file: !44, line: 114, baseType: !64, size: 24, offset: 264)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 24, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 3)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !{!0, !7, !12, !17, !22}
!69 = !{i32 7, !"Dwarf Version", i32 5}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 8, !"cf-protection-branch", i32 1}
!73 = !{i32 4, !"function_return_thunk_extern", i32 1}
!74 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!75 = !{i32 1, !"Code Model", i32 2}
!76 = !{i32 1, !"override-stack-alignment", i32 8}
!77 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!78 = distinct !DISubprogram(name: "acpi_tb_print_table_header", scope: !2, file: !2, line: 93, type: !79, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !98)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !81, !83}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !82, line: 129, baseType: !38)
!82 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !44, line: 68, size: 288, elements: !85)
!85 = !{!86, !90, !91, !92, !93, !94, !95, !96, !97}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !84, file: !44, line: 69, baseType: !87, size: 32)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 4)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !84, file: !44, line: 70, baseType: !30, size: 32, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !84, file: !44, line: 71, baseType: !51, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !84, file: !44, line: 72, baseType: !51, size: 8, offset: 72)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !84, file: !44, line: 73, baseType: !55, size: 48, offset: 80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !84, file: !44, line: 74, baseType: !47, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !84, file: !44, line: 75, baseType: !30, size: 32, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !84, file: !44, line: 76, baseType: !87, size: 32, offset: 224)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !84, file: !44, line: 77, baseType: !30, size: 32, offset: 256)
!98 = !{!99, !100, !101}
!99 = !DILocalVariable(name: "address", arg: 1, scope: !78, file: !2, line: 93, type: !81)
!100 = !DILocalVariable(name: "header", arg: 2, scope: !78, file: !2, line: 94, type: !83)
!101 = !DILocalVariable(name: "local_header", scope: !78, file: !2, line: 96, type: !84)
!102 = !DILocation(line: 93, column: 50, scope: !78)
!103 = !DILocation(line: 94, column: 33, scope: !78)
!104 = !DILocation(line: 96, column: 2, scope: !78)
!105 = !DILocation(line: 96, column: 27, scope: !78)
!106 = !DILocation(line: 98, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !78, file: !2, line: 98, column: 6)
!108 = !DILocation(line: 98, column: 6, scope: !78)
!109 = !DILocation(line: 102, column: 3, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !2, line: 98, column: 62)
!111 = !DILocation(line: 105, column: 2, scope: !110)
!112 = !DILocation(line: 105, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !107, file: !2, line: 105, column: 13)
!114 = !DILocation(line: 105, column: 13, scope: !107)
!115 = !DILocation(line: 110, column: 23, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !2, line: 106, column: 29)
!117 = !DILocation(line: 110, column: 3, scope: !116)
!118 = !DILocation(line: 111, column: 10, scope: !116)
!119 = !DILocation(line: 111, column: 57, scope: !116)
!120 = !DILocation(line: 113, column: 35, scope: !116)
!121 = !DILocation(line: 113, column: 22, scope: !116)
!122 = !DILocation(line: 113, column: 3, scope: !116)
!123 = !DILocation(line: 115, column: 3, scope: !116)
!124 = !DILocation(line: 124, column: 2, scope: !116)
!125 = !DILocation(line: 127, column: 47, scope: !126)
!126 = distinct !DILexicalBlock(scope: !113, file: !2, line: 124, column: 9)
!127 = !DILocation(line: 127, column: 3, scope: !126)
!128 = !DILocation(line: 129, column: 3, scope: !126)
!129 = !DILocation(line: 138, column: 1, scope: !78)
!130 = !DISubprogram(name: "acpi_info", scope: !131, file: !131, line: 917, type: !132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!131 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!132 = !DISubroutineType(types: !133)
!133 = !{null, !134, null}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!136 = !DISubprogram(name: "strncmp", scope: !137, file: !137, line: 91, type: !138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!137 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!138 = !DISubroutineType(types: !139)
!139 = !{!67, !134, !134, !140}
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !141, line: 72, baseType: !142)
!141 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !141, line: 16, baseType: !37)
!143 = distinct !DISubprogram(name: "acpi_tb_fix_string", scope: !2, file: !2, line: 39, type: !144, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !147)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !41, !146}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !82, line: 127, baseType: !38)
!147 = !{!148, !149}
!148 = !DILocalVariable(name: "string", arg: 1, scope: !143, file: !2, line: 39, type: !41)
!149 = !DILocalVariable(name: "length", arg: 2, scope: !143, file: !2, line: 39, type: !146)
!150 = !DILocation(line: 39, column: 38, scope: !143)
!151 = !DILocation(line: 39, column: 56, scope: !143)
!152 = !DILocation(line: 42, column: 2, scope: !143)
!153 = !DILocation(line: 42, column: 9, scope: !143)
!154 = !DILocation(line: 42, column: 16, scope: !143)
!155 = !DILocation(line: 42, column: 20, scope: !143)
!156 = !DILocation(line: 42, column: 19, scope: !143)
!157 = !DILocation(line: 0, scope: !143)
!158 = !DILocation(line: 43, column: 8, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !2, line: 43, column: 7)
!160 = distinct !DILexicalBlock(scope: !143, file: !2, line: 42, column: 28)
!161 = !DILocation(line: 43, column: 7, scope: !160)
!162 = !DILocation(line: 44, column: 5, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !2, line: 43, column: 35)
!164 = !DILocation(line: 44, column: 12, scope: !163)
!165 = !DILocation(line: 45, column: 3, scope: !163)
!166 = !DILocation(line: 47, column: 9, scope: !160)
!167 = !DILocation(line: 48, column: 9, scope: !160)
!168 = distinct !{!168, !152, !169, !170, !171}
!169 = !DILocation(line: 49, column: 2, scope: !143)
!170 = !{!"llvm.loop.mustprogress"}
!171 = !{!"llvm.loop.unroll.disable"}
!172 = !DILocation(line: 50, column: 1, scope: !143)
!173 = distinct !DISubprogram(name: "acpi_tb_cleanup_table_header", scope: !2, file: !2, line: 67, type: !174, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !83, !83}
!176 = !{!177, !178}
!177 = !DILocalVariable(name: "out_header", arg: 1, scope: !173, file: !2, line: 67, type: !83)
!178 = !DILocalVariable(name: "header", arg: 2, scope: !173, file: !2, line: 68, type: !83)
!179 = !DILocation(line: 67, column: 56, scope: !173)
!180 = !DILocation(line: 68, column: 35, scope: !173)
!181 = !DILocation(line: 71, column: 9, scope: !173)
!182 = !DILocation(line: 71, column: 21, scope: !173)
!183 = !DILocation(line: 71, column: 2, scope: !173)
!184 = !DILocation(line: 73, column: 21, scope: !173)
!185 = !DILocation(line: 73, column: 33, scope: !173)
!186 = !DILocation(line: 73, column: 2, scope: !173)
!187 = !DILocation(line: 74, column: 21, scope: !173)
!188 = !DILocation(line: 74, column: 33, scope: !173)
!189 = !DILocation(line: 74, column: 2, scope: !173)
!190 = !DILocation(line: 75, column: 21, scope: !173)
!191 = !DILocation(line: 75, column: 33, scope: !173)
!192 = !DILocation(line: 75, column: 2, scope: !173)
!193 = !DILocation(line: 76, column: 21, scope: !173)
!194 = !DILocation(line: 76, column: 33, scope: !173)
!195 = !DILocation(line: 76, column: 2, scope: !173)
!196 = !DILocation(line: 77, column: 1, scope: !173)
