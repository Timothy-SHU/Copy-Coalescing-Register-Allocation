; ModuleID = 'drivers/acpi/acpica/utstring.c'
source_filename = "drivers/acpi/acpica/utstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"<\22NULL STRING PTR\22>\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [3 x i8] c"\\a\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1, !dbg !21
@.str.6 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1, !dbg !23
@.str.7 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1, !dbg !25
@.str.8 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1, !dbg !27
@.str.9 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1, !dbg !29
@_ctype = external dso_local constant [0 x i8], align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1, !dbg !34
@.str.11 = private unnamed_addr constant [8 x i8] c"\\x%2.2X\00", align 1, !dbg !36
@.str.12 = private unnamed_addr constant [4 x i8] c"...\00", align 1, !dbg !41
@.str.13 = private unnamed_addr constant [5 x i8] c"\\___\00", align 1, !dbg !43
@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1
@_acpi_module_name = internal constant [9 x i8] c"utstring\00", align 1, !dbg !48
@.str.14 = private unnamed_addr constant [60 x i8] c"Invalid character(s) in name (0x%.8X) %p, repaired: [%4.4s]\00", align 1, !dbg !66

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_print_string(ptr noundef %string, i16 noundef zeroext %max_length) #0 align 16 !dbg !84 {
entry:
  %string.addr = alloca ptr, align 8
  %max_length.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !92, metadata !DIExpression()), !dbg !95
  store i16 %max_length, ptr %max_length.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %max_length.addr, metadata !93, metadata !DIExpression()), !dbg !96
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !97
  call void @llvm.dbg.declare(metadata ptr %i, metadata !94, metadata !DIExpression()), !dbg !98
  %0 = load ptr, ptr %string.addr, align 8, !dbg !99
  %tobool = icmp ne ptr %0, null, !dbg !99
  br i1 %tobool, label %if.end, label %if.then, !dbg !101

if.then:                                          ; preds = %entry
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str) #5, !dbg !102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !104

if.end:                                           ; preds = %entry
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1) #5, !dbg !105
  store i32 0, ptr %i, align 4, !dbg !106
  br label %for.cond, !dbg !108

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !109
  %2 = load i16, ptr %max_length.addr, align 2, !dbg !111
  %conv = zext i16 %2 to i32, !dbg !111
  %cmp = icmp ult i32 %1, %conv, !dbg !112
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !113

land.rhs:                                         ; preds = %for.cond
  %3 = load ptr, ptr %string.addr, align 8, !dbg !114
  %4 = load i32, ptr %i, align 4, !dbg !115
  %idxprom = zext i32 %4 to i64, !dbg !114
  %arrayidx = getelementptr i8, ptr %3, i64 %idxprom, !dbg !114
  %5 = load i8, ptr %arrayidx, align 1, !dbg !114
  %conv2 = zext i8 %5 to i32, !dbg !114
  %tobool3 = icmp ne i32 %conv2, 0, !dbg !113
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %tobool3, %land.rhs ], !dbg !116
  br i1 %6, label %for.body, label %for.end, !dbg !117

for.body:                                         ; preds = %land.end
  %7 = load ptr, ptr %string.addr, align 8, !dbg !118
  %8 = load i32, ptr %i, align 4, !dbg !120
  %idxprom4 = zext i32 %8 to i64, !dbg !118
  %arrayidx5 = getelementptr i8, ptr %7, i64 %idxprom4, !dbg !118
  %9 = load i8, ptr %arrayidx5, align 1, !dbg !118
  %conv6 = zext i8 %9 to i32, !dbg !118
  switch i32 %conv6, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb7
    i32 12, label %sw.bb8
    i32 10, label %sw.bb9
    i32 13, label %sw.bb10
    i32 9, label %sw.bb11
    i32 11, label %sw.bb12
    i32 39, label %sw.bb13
    i32 34, label %sw.bb13
    i32 92, label %sw.bb13
  ], !dbg !121

sw.bb:                                            ; preds = %for.body
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.2) #5, !dbg !122
  br label %sw.epilog, !dbg !124

sw.bb7:                                           ; preds = %for.body
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.3) #5, !dbg !125
  br label %sw.epilog, !dbg !126

sw.bb8:                                           ; preds = %for.body
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.4) #5, !dbg !127
  br label %sw.epilog, !dbg !128

sw.bb9:                                           ; preds = %for.body
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.5) #5, !dbg !129
  br label %sw.epilog, !dbg !130

sw.bb10:                                          ; preds = %for.body
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.6) #5, !dbg !131
  br label %sw.epilog, !dbg !132

sw.bb11:                                          ; preds = %for.body
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.7) #5, !dbg !133
  br label %sw.epilog, !dbg !134

sw.bb12:                                          ; preds = %for.body
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.8) #5, !dbg !135
  br label %sw.epilog, !dbg !136

sw.bb13:                                          ; preds = %for.body, %for.body, %for.body
  %10 = load ptr, ptr %string.addr, align 8, !dbg !137
  %11 = load i32, ptr %i, align 4, !dbg !138
  %idxprom14 = zext i32 %11 to i64, !dbg !137
  %arrayidx15 = getelementptr i8, ptr %10, i64 %idxprom14, !dbg !137
  %12 = load i8, ptr %arrayidx15, align 1, !dbg !137
  %conv16 = zext i8 %12 to i32, !dbg !139
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.9, i32 noundef %conv16) #5, !dbg !140
  br label %sw.epilog, !dbg !141

sw.default:                                       ; preds = %for.body
  %13 = load ptr, ptr %string.addr, align 8, !dbg !142
  %14 = load i32, ptr %i, align 4, !dbg !142
  %idxprom17 = zext i32 %14 to i64, !dbg !142
  %arrayidx18 = getelementptr i8, ptr %13, i64 %idxprom17, !dbg !142
  %15 = load i8, ptr %arrayidx18, align 1, !dbg !142
  %conv19 = zext i8 %15 to i32, !dbg !142
  %conv20 = trunc i32 %conv19 to i8, !dbg !142
  %conv21 = zext i8 %conv20 to i32, !dbg !142
  %idxprom22 = sext i32 %conv21 to i64, !dbg !142
  %arrayidx23 = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom22, !dbg !142
  %16 = load i8, ptr %arrayidx23, align 1, !dbg !142
  %conv24 = zext i8 %16 to i32, !dbg !142
  %and = and i32 %conv24, 151, !dbg !142
  %cmp25 = icmp ne i32 %and, 0, !dbg !142
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !144

if.then27:                                        ; preds = %sw.default
  %17 = load ptr, ptr %string.addr, align 8, !dbg !145
  %18 = load i32, ptr %i, align 4, !dbg !147
  %idxprom28 = zext i32 %18 to i64, !dbg !145
  %arrayidx29 = getelementptr i8, ptr %17, i64 %idxprom28, !dbg !145
  %19 = load i8, ptr %arrayidx29, align 1, !dbg !145
  %conv30 = zext i8 %19 to i32, !dbg !148
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.10, i32 noundef %conv30) #5, !dbg !149
  br label %if.end34, !dbg !150

if.else:                                          ; preds = %sw.default
  %20 = load ptr, ptr %string.addr, align 8, !dbg !151
  %21 = load i32, ptr %i, align 4, !dbg !153
  %idxprom31 = zext i32 %21 to i64, !dbg !151
  %arrayidx32 = getelementptr i8, ptr %20, i64 %idxprom31, !dbg !151
  %22 = load i8, ptr %arrayidx32, align 1, !dbg !151
  %conv33 = zext i8 %22 to i32, !dbg !154
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.11, i32 noundef %conv33) #5, !dbg !155
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then27
  br label %sw.epilog, !dbg !156

sw.epilog:                                        ; preds = %if.end34, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb
  br label %for.inc, !dbg !157

for.inc:                                          ; preds = %sw.epilog
  %23 = load i32, ptr %i, align 4, !dbg !158
  %inc = add i32 %23, 1, !dbg !158
  store i32 %inc, ptr %i, align 4, !dbg !158
  br label %for.cond, !dbg !159, !llvm.loop !160

for.end:                                          ; preds = %land.end
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1) #5, !dbg !164
  %24 = load i32, ptr %i, align 4, !dbg !165
  %25 = load i16, ptr %max_length.addr, align 2, !dbg !167
  %conv35 = zext i16 %25 to i32, !dbg !167
  %cmp36 = icmp eq i32 %24, %conv35, !dbg !168
  br i1 %cmp36, label %land.lhs.true, label %if.end43, !dbg !169

land.lhs.true:                                    ; preds = %for.end
  %26 = load ptr, ptr %string.addr, align 8, !dbg !170
  %27 = load i32, ptr %i, align 4, !dbg !171
  %idxprom38 = zext i32 %27 to i64, !dbg !170
  %arrayidx39 = getelementptr i8, ptr %26, i64 %idxprom38, !dbg !170
  %28 = load i8, ptr %arrayidx39, align 1, !dbg !170
  %conv40 = zext i8 %28 to i32, !dbg !170
  %tobool41 = icmp ne i32 %conv40, 0, !dbg !170
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !172

if.then42:                                        ; preds = %land.lhs.true
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.12) #5, !dbg !173
  br label %if.end43, !dbg !175

if.end43:                                         ; preds = %if.then42, %land.lhs.true, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !176
  br label %cleanup, !dbg !176

cleanup:                                          ; preds = %if.end43, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !176
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !176

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !177 dso_local void @acpi_os_printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_repair_name(ptr noundef %name) #0 align 16 !dbg !182 {
entry:
  %name.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %found_bad_char = alloca i8, align 1
  %original_name = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !186, metadata !DIExpression()), !dbg !192
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !193
  call void @llvm.dbg.declare(metadata ptr %i, metadata !187, metadata !DIExpression()), !dbg !194
  call void @llvm.lifetime.start.p0(i64 1, ptr %found_bad_char) #4, !dbg !195
  call void @llvm.dbg.declare(metadata ptr %found_bad_char, metadata !188, metadata !DIExpression()), !dbg !196
  store i8 0, ptr %found_bad_char, align 1, !dbg !196
  call void @llvm.lifetime.start.p0(i64 4, ptr %original_name) #4, !dbg !197
  call void @llvm.dbg.declare(metadata ptr %original_name, metadata !191, metadata !DIExpression()), !dbg !198
  %0 = load ptr, ptr %name.addr, align 8, !dbg !199
  %1 = ptrtoint ptr %0 to i64, !dbg !199
  %2 = inttoptr i64 %1 to ptr, !dbg !199
  %3 = load i32, ptr %2, align 4, !dbg !199
  %4 = load i32, ptr @.str.13, align 4, !dbg !199
  %cmp = icmp eq i32 %3, %4, !dbg !199
  br i1 %cmp, label %if.then, label %if.end, !dbg !201

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !202

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %name.addr, align 8, !dbg !204
  %arrayidx = getelementptr i8, ptr %5, i64 0, !dbg !204
  %6 = ptrtoint ptr %arrayidx to i64, !dbg !204
  %7 = inttoptr i64 %6 to ptr, !dbg !204
  %8 = load i32, ptr %7, align 4, !dbg !204
  %9 = ptrtoint ptr %original_name to i64, !dbg !204
  %10 = inttoptr i64 %9 to ptr, !dbg !204
  store i32 %8, ptr %10, align 4, !dbg !204
  store i32 0, ptr %i, align 4, !dbg !205
  br label %for.cond, !dbg !207

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %i, align 4, !dbg !208
  %cmp1 = icmp ult i32 %11, 4, !dbg !210
  br i1 %cmp1, label %for.body, label %for.end, !dbg !211

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %name.addr, align 8, !dbg !212
  %13 = load i32, ptr %i, align 4, !dbg !215
  %idxprom = zext i32 %13 to i64, !dbg !212
  %arrayidx2 = getelementptr i8, ptr %12, i64 %idxprom, !dbg !212
  %14 = load i8, ptr %arrayidx2, align 1, !dbg !212
  %15 = load i32, ptr %i, align 4, !dbg !216
  %call = call zeroext i8 @acpi_ut_valid_name_char(i8 noundef zeroext %14, i32 noundef %15) #5, !dbg !217
  %tobool = icmp ne i8 %call, 0, !dbg !217
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !218

if.then3:                                         ; preds = %for.body
  br label %for.inc, !dbg !219

if.end4:                                          ; preds = %for.body
  %16 = load ptr, ptr %name.addr, align 8, !dbg !221
  %17 = load i32, ptr %i, align 4, !dbg !222
  %idxprom5 = zext i32 %17 to i64, !dbg !221
  %arrayidx6 = getelementptr i8, ptr %16, i64 %idxprom5, !dbg !221
  store i8 95, ptr %arrayidx6, align 1, !dbg !223
  store i8 1, ptr %found_bad_char, align 1, !dbg !224
  br label %for.inc, !dbg !225

for.inc:                                          ; preds = %if.end4, %if.then3
  %18 = load i32, ptr %i, align 4, !dbg !226
  %inc = add i32 %18, 1, !dbg !226
  store i32 %inc, ptr %i, align 4, !dbg !226
  br label %for.cond, !dbg !227, !llvm.loop !228

for.end:                                          ; preds = %for.cond
  %19 = load i8, ptr %found_bad_char, align 1, !dbg !230
  %tobool7 = icmp ne i8 %19, 0, !dbg !230
  br i1 %tobool7, label %if.then8, label %if.end13, !dbg !232

if.then8:                                         ; preds = %for.end
  %20 = load i8, ptr @acpi_gbl_enable_interpreter_slack, align 1, !dbg !233
  %tobool9 = icmp ne i8 %20, 0, !dbg !233
  br i1 %tobool9, label %if.else, label %if.then10, !dbg !236

if.then10:                                        ; preds = %if.then8
  %21 = load i32, ptr %original_name, align 4, !dbg !237
  %22 = load ptr, ptr %name.addr, align 8, !dbg !237
  %23 = load ptr, ptr %name.addr, align 8, !dbg !237
  %arrayidx11 = getelementptr i8, ptr %23, i64 0, !dbg !237
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 171, ptr noundef @.str.14, i32 noundef %21, ptr noundef %22, ptr noundef %arrayidx11) #5, !dbg !237
  br label %if.end12, !dbg !239

if.else:                                          ; preds = %if.then8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  br label %if.end13, !dbg !240

if.end13:                                         ; preds = %if.end12, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !241
  br label %cleanup, !dbg !241

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %original_name) #4, !dbg !241
  call void @llvm.lifetime.end.p0(i64 1, ptr %found_bad_char) #4, !dbg !241
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !241
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !241

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !242 dso_local zeroext i8 @acpi_ut_valid_name_char(i8 noundef zeroext, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !246 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!50}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/utstring.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7aba6cbe7227dee1e7db86f6ef84ddf8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 20)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 2)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 3)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !14, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !14, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !14, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !14, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !14, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !14, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 4)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !14, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 8)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !31, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 5)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !50, file: !2, line: 13, type: !71, isLocal: true, isDefinition: true)
!50 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utstring.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utstring\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utstring.ll drivers/acpi/acpica/utstring.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !51, globals: !65, splitDebugInlining: false, nameTableKind: None)
!51 = !{!52, !53, !54, !58, !62}
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !55, line: 20, baseType: !56)
!55 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !57, line: 26, baseType: !52)
!57 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !55, line: 21, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !57, line: 27, baseType: !61)
!61 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !63, line: 42, baseType: !64)
!63 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!64 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!65 = !{!0, !7, !12, !17, !19, !21, !23, !25, !27, !29, !34, !36, !41, !43, !66, !48}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 171, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 60)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 72, elements: !73)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!73 = !{!74}
!74 = !DISubrange(count: 9)
!75 = !{i32 7, !"Dwarf Version", i32 5}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 8, !"cf-protection-branch", i32 1}
!79 = !{i32 4, !"function_return_thunk_extern", i32 1}
!80 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!81 = !{i32 1, !"Code Model", i32 2}
!82 = !{i32 1, !"override-stack-alignment", i32 8}
!83 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!84 = distinct !DISubprogram(name: "acpi_ut_print_string", scope: !2, file: !2, line: 29, type: !85, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !50, retainedNodes: !91)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87, !88}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !55, line: 19, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !57, line: 24, baseType: !90)
!90 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!91 = !{!92, !93, !94}
!92 = !DILocalVariable(name: "string", arg: 1, scope: !84, file: !2, line: 29, type: !87)
!93 = !DILocalVariable(name: "max_length", arg: 2, scope: !84, file: !2, line: 29, type: !88)
!94 = !DILocalVariable(name: "i", scope: !84, file: !2, line: 31, type: !59)
!95 = !DILocation(line: 29, column: 33, scope: !84)
!96 = !DILocation(line: 29, column: 45, scope: !84)
!97 = !DILocation(line: 31, column: 2, scope: !84)
!98 = !DILocation(line: 31, column: 6, scope: !84)
!99 = !DILocation(line: 33, column: 7, scope: !100)
!100 = distinct !DILexicalBlock(scope: !84, file: !2, line: 33, column: 6)
!101 = !DILocation(line: 33, column: 6, scope: !84)
!102 = !DILocation(line: 34, column: 3, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !2, line: 33, column: 15)
!104 = !DILocation(line: 35, column: 3, scope: !103)
!105 = !DILocation(line: 38, column: 2, scope: !84)
!106 = !DILocation(line: 39, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !84, file: !2, line: 39, column: 2)
!108 = !DILocation(line: 39, column: 7, scope: !107)
!109 = !DILocation(line: 39, column: 15, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !2, line: 39, column: 2)
!111 = !DILocation(line: 39, column: 19, scope: !110)
!112 = !DILocation(line: 39, column: 17, scope: !110)
!113 = !DILocation(line: 39, column: 31, scope: !110)
!114 = !DILocation(line: 39, column: 34, scope: !110)
!115 = !DILocation(line: 39, column: 41, scope: !110)
!116 = !DILocation(line: 0, scope: !110)
!117 = !DILocation(line: 39, column: 2, scope: !107)
!118 = !DILocation(line: 43, column: 11, scope: !119)
!119 = distinct !DILexicalBlock(scope: !110, file: !2, line: 39, column: 50)
!120 = !DILocation(line: 43, column: 18, scope: !119)
!121 = !DILocation(line: 43, column: 3, scope: !119)
!122 = !DILocation(line: 46, column: 4, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !2, line: 43, column: 22)
!124 = !DILocation(line: 47, column: 4, scope: !123)
!125 = !DILocation(line: 51, column: 4, scope: !123)
!126 = !DILocation(line: 52, column: 4, scope: !123)
!127 = !DILocation(line: 56, column: 4, scope: !123)
!128 = !DILocation(line: 57, column: 4, scope: !123)
!129 = !DILocation(line: 61, column: 4, scope: !123)
!130 = !DILocation(line: 62, column: 4, scope: !123)
!131 = !DILocation(line: 66, column: 4, scope: !123)
!132 = !DILocation(line: 67, column: 4, scope: !123)
!133 = !DILocation(line: 71, column: 4, scope: !123)
!134 = !DILocation(line: 72, column: 4, scope: !123)
!135 = !DILocation(line: 76, column: 4, scope: !123)
!136 = !DILocation(line: 77, column: 4, scope: !123)
!137 = !DILocation(line: 83, column: 32, scope: !123)
!138 = !DILocation(line: 83, column: 39, scope: !123)
!139 = !DILocation(line: 83, column: 27, scope: !123)
!140 = !DILocation(line: 83, column: 4, scope: !123)
!141 = !DILocation(line: 84, column: 4, scope: !123)
!142 = !DILocation(line: 90, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !123, file: !2, line: 90, column: 8)
!144 = !DILocation(line: 90, column: 8, scope: !123)
!145 = !DILocation(line: 93, column: 31, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !2, line: 90, column: 33)
!147 = !DILocation(line: 93, column: 38, scope: !146)
!148 = !DILocation(line: 93, column: 26, scope: !146)
!149 = !DILocation(line: 93, column: 5, scope: !146)
!150 = !DILocation(line: 94, column: 4, scope: !146)
!151 = !DILocation(line: 97, column: 37, scope: !152)
!152 = distinct !DILexicalBlock(scope: !143, file: !2, line: 94, column: 11)
!153 = !DILocation(line: 97, column: 44, scope: !152)
!154 = !DILocation(line: 97, column: 32, scope: !152)
!155 = !DILocation(line: 97, column: 5, scope: !152)
!156 = !DILocation(line: 99, column: 4, scope: !123)
!157 = !DILocation(line: 101, column: 2, scope: !119)
!158 = !DILocation(line: 39, column: 46, scope: !110)
!159 = !DILocation(line: 39, column: 2, scope: !110)
!160 = distinct !{!160, !117, !161, !162, !163}
!161 = !DILocation(line: 101, column: 2, scope: !107)
!162 = !{!"llvm.loop.mustprogress"}
!163 = !{!"llvm.loop.unroll.disable"}
!164 = !DILocation(line: 103, column: 2, scope: !84)
!165 = !DILocation(line: 105, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !84, file: !2, line: 105, column: 6)
!167 = !DILocation(line: 105, column: 11, scope: !166)
!168 = !DILocation(line: 105, column: 8, scope: !166)
!169 = !DILocation(line: 105, column: 22, scope: !166)
!170 = !DILocation(line: 105, column: 25, scope: !166)
!171 = !DILocation(line: 105, column: 32, scope: !166)
!172 = !DILocation(line: 105, column: 6, scope: !84)
!173 = !DILocation(line: 106, column: 3, scope: !174)
!174 = distinct !DILexicalBlock(scope: !166, file: !2, line: 105, column: 36)
!175 = !DILocation(line: 107, column: 2, scope: !174)
!176 = !DILocation(line: 108, column: 1, scope: !84)
!177 = !DISubprogram(name: "acpi_os_printf", scope: !178, file: !178, line: 334, type: !179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!179 = !DISubroutineType(types: !180)
!180 = !{null, !181, null}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!182 = distinct !DISubprogram(name: "acpi_ut_repair_name", scope: !2, file: !2, line: 132, type: !183, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !50, retainedNodes: !185)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !87}
!185 = !{!186, !187, !188, !191}
!186 = !DILocalVariable(name: "name", arg: 1, scope: !182, file: !2, line: 132, type: !87)
!187 = !DILocalVariable(name: "i", scope: !182, file: !2, line: 134, type: !59)
!188 = !DILocalVariable(name: "found_bad_char", scope: !182, file: !2, line: 135, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !55, line: 17, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !57, line: 21, baseType: !53)
!191 = !DILocalVariable(name: "original_name", scope: !182, file: !2, line: 136, type: !59)
!192 = !DILocation(line: 132, column: 32, scope: !182)
!193 = !DILocation(line: 134, column: 2, scope: !182)
!194 = !DILocation(line: 134, column: 6, scope: !182)
!195 = !DILocation(line: 135, column: 2, scope: !182)
!196 = !DILocation(line: 135, column: 5, scope: !182)
!197 = !DILocation(line: 136, column: 2, scope: !182)
!198 = !DILocation(line: 136, column: 6, scope: !182)
!199 = !DILocation(line: 144, column: 6, scope: !200)
!200 = distinct !DILexicalBlock(scope: !182, file: !2, line: 144, column: 6)
!201 = !DILocation(line: 144, column: 6, scope: !182)
!202 = !DILocation(line: 145, column: 3, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !2, line: 144, column: 54)
!204 = !DILocation(line: 148, column: 2, scope: !182)
!205 = !DILocation(line: 152, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !182, file: !2, line: 152, column: 2)
!207 = !DILocation(line: 152, column: 7, scope: !206)
!208 = !DILocation(line: 152, column: 14, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !2, line: 152, column: 2)
!210 = !DILocation(line: 152, column: 16, scope: !209)
!211 = !DILocation(line: 152, column: 2, scope: !206)
!212 = !DILocation(line: 153, column: 31, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !2, line: 153, column: 7)
!214 = distinct !DILexicalBlock(scope: !209, file: !2, line: 152, column: 42)
!215 = !DILocation(line: 153, column: 36, scope: !213)
!216 = !DILocation(line: 153, column: 40, scope: !213)
!217 = !DILocation(line: 153, column: 7, scope: !213)
!218 = !DILocation(line: 153, column: 7, scope: !214)
!219 = !DILocation(line: 154, column: 4, scope: !220)
!220 = distinct !DILexicalBlock(scope: !213, file: !2, line: 153, column: 44)
!221 = !DILocation(line: 162, column: 3, scope: !214)
!222 = !DILocation(line: 162, column: 8, scope: !214)
!223 = !DILocation(line: 162, column: 11, scope: !214)
!224 = !DILocation(line: 163, column: 18, scope: !214)
!225 = !DILocation(line: 164, column: 2, scope: !214)
!226 = !DILocation(line: 152, column: 38, scope: !209)
!227 = !DILocation(line: 152, column: 2, scope: !209)
!228 = distinct !{!228, !211, !229, !162, !163}
!229 = !DILocation(line: 164, column: 2, scope: !206)
!230 = !DILocation(line: 166, column: 6, scope: !231)
!231 = distinct !DILexicalBlock(scope: !182, file: !2, line: 166, column: 6)
!232 = !DILocation(line: 166, column: 6, scope: !182)
!233 = !DILocation(line: 170, column: 8, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !2, line: 170, column: 7)
!235 = distinct !DILexicalBlock(scope: !231, file: !2, line: 166, column: 22)
!236 = !DILocation(line: 170, column: 7, scope: !235)
!237 = !DILocation(line: 171, column: 4, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !2, line: 170, column: 43)
!239 = !DILocation(line: 174, column: 3, scope: !238)
!240 = !DILocation(line: 179, column: 2, scope: !235)
!241 = !DILocation(line: 180, column: 1, scope: !182)
!242 = !DISubprogram(name: "acpi_ut_valid_name_char", scope: !243, file: !243, line: 159, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!243 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!244 = !DISubroutineType(types: !245)
!245 = !{!189, !4, !59}
!246 = !DISubprogram(name: "acpi_warning", scope: !247, file: !247, line: 912, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!248 = !DISubroutineType(types: !249)
!249 = !{null, !181, !59, !181, null}
