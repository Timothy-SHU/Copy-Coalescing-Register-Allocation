; ModuleID = 'drivers/acpi/acpica/utstrsuppt.c'
source_filename = "drivers/acpi/acpica/utstrsuppt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ctype = external dso_local constant [0 x i8], align 1
@acpi_gbl_integer_bit_width = external dso_local global i8, align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_convert_octal_string(ptr noundef %string, ptr noundef %return_value_ptr) #0 align 16 !dbg !27 {
entry:
  %string.addr = alloca ptr, align 8
  %return_value_ptr.addr = alloca ptr, align 8
  %accumulated_value = alloca i64, align 8
  %status = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !33, metadata !DIExpression()), !dbg !37
  store ptr %return_value_ptr, ptr %return_value_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value_ptr.addr, metadata !34, metadata !DIExpression()), !dbg !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %accumulated_value) #5, !dbg !39
  call void @llvm.dbg.declare(metadata ptr %accumulated_value, metadata !35, metadata !DIExpression()), !dbg !40
  store i64 0, ptr %accumulated_value, align 8, !dbg !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !41
  call void @llvm.dbg.declare(metadata ptr %status, metadata !36, metadata !DIExpression()), !dbg !42
  store i32 0, ptr %status, align 4, !dbg !42
  br label %while.cond, !dbg !43

while.cond:                                       ; preds = %if.end8, %entry
  %0 = load ptr, ptr %string.addr, align 8, !dbg !44
  %1 = load i8, ptr %0, align 1, !dbg !45
  %tobool = icmp ne i8 %1, 0, !dbg !43
  br i1 %tobool, label %while.body, label %while.end, !dbg !43

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %string.addr, align 8, !dbg !46
  %3 = load i8, ptr %2, align 1, !dbg !46
  %conv = zext i8 %3 to i32, !dbg !46
  %cmp = icmp sge i32 %conv, 48, !dbg !46
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !46

land.lhs.true:                                    ; preds = %while.body
  %4 = load ptr, ptr %string.addr, align 8, !dbg !46
  %5 = load i8, ptr %4, align 1, !dbg !46
  %conv2 = zext i8 %5 to i32, !dbg !46
  %cmp3 = icmp sle i32 %conv2, 55, !dbg !46
  br i1 %cmp3, label %if.end, label %if.then, !dbg !49

if.then:                                          ; preds = %land.lhs.true, %while.body
  br label %while.end, !dbg !50

if.end:                                           ; preds = %land.lhs.true
  %6 = load ptr, ptr %string.addr, align 8, !dbg !52
  %7 = load i8, ptr %6, align 1, !dbg !53
  %conv5 = zext i8 %7 to i32, !dbg !53
  %call = call i32 @acpi_ut_insert_digit(ptr noundef %accumulated_value, i32 noundef 8, i32 noundef %conv5) #6, !dbg !54
  store i32 %call, ptr %status, align 4, !dbg !55
  %8 = load i32, ptr %status, align 4, !dbg !56
  %tobool6 = icmp ne i32 %8, 0, !dbg !56
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !58

if.then7:                                         ; preds = %if.end
  store i32 34, ptr %status, align 4, !dbg !59
  br label %while.end, !dbg !61

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %string.addr, align 8, !dbg !62
  %incdec.ptr = getelementptr i8, ptr %9, i32 1, !dbg !62
  store ptr %incdec.ptr, ptr %string.addr, align 8, !dbg !62
  br label %while.cond, !dbg !43, !llvm.loop !63

while.end:                                        ; preds = %if.then7, %if.then, %while.cond
  %10 = load i64, ptr %accumulated_value, align 8, !dbg !67
  %11 = load ptr, ptr %return_value_ptr.addr, align 8, !dbg !68
  store i64 %10, ptr %11, align 8, !dbg !69
  %12 = load i32, ptr %status, align 4, !dbg !70
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !71
  call void @llvm.lifetime.end.p0(i64 8, ptr %accumulated_value) #5, !dbg !71
  ret i32 %12, !dbg !72
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_insert_digit(ptr noundef %accumulated_value, i32 noundef %base, i32 noundef %ascii_digit) #0 align 16 !dbg !73 {
entry:
  %retval = alloca i32, align 4
  %accumulated_value.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %ascii_digit.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %product = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %accumulated_value, ptr %accumulated_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %accumulated_value.addr, metadata !77, metadata !DIExpression()), !dbg !82
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !78, metadata !DIExpression()), !dbg !83
  store i32 %ascii_digit, ptr %ascii_digit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ascii_digit.addr, metadata !79, metadata !DIExpression()), !dbg !84
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %status, metadata !80, metadata !DIExpression()), !dbg !86
  call void @llvm.lifetime.start.p0(i64 8, ptr %product) #5, !dbg !87
  call void @llvm.dbg.declare(metadata ptr %product, metadata !81, metadata !DIExpression()), !dbg !88
  %0 = load ptr, ptr %accumulated_value.addr, align 8, !dbg !89
  %1 = load i64, ptr %0, align 8, !dbg !90
  %2 = load i32, ptr %base.addr, align 4, !dbg !91
  %call = call i32 @acpi_ut_strtoul_multiply64(i64 noundef %1, i32 noundef %2, ptr noundef %product) #6, !dbg !92
  store i32 %call, ptr %status, align 4, !dbg !93
  %3 = load i32, ptr %status, align 4, !dbg !94
  %tobool = icmp ne i32 %3, 0, !dbg !94
  br i1 %tobool, label %if.then, label %if.end, !dbg !96

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %status, align 4, !dbg !97
  store i32 %4, ptr %retval, align 4, !dbg !99
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !99

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %product, align 8, !dbg !100
  %6 = load i32, ptr %ascii_digit.addr, align 4, !dbg !101
  %call1 = call zeroext i8 @acpi_ut_ascii_char_to_hex(i32 noundef %6) #6, !dbg !102
  %conv = zext i8 %call1 to i32, !dbg !102
  %7 = load ptr, ptr %accumulated_value.addr, align 8, !dbg !103
  %call2 = call i32 @acpi_ut_strtoul_add64(i64 noundef %5, i32 noundef %conv, ptr noundef %7) #6, !dbg !104
  store i32 %call2, ptr %status, align 4, !dbg !105
  %8 = load i32, ptr %status, align 4, !dbg !106
  store i32 %8, ptr %retval, align 4, !dbg !107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !107

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %product) #5, !dbg !108
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !108
  %9 = load i32, ptr %retval, align 4, !dbg !108
  ret i32 %9, !dbg !108
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_convert_decimal_string(ptr noundef %string, ptr noundef %return_value_ptr) #0 align 16 !dbg !109 {
entry:
  %string.addr = alloca ptr, align 8
  %return_value_ptr.addr = alloca ptr, align 8
  %accumulated_value = alloca i64, align 8
  %status = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !111, metadata !DIExpression()), !dbg !115
  store ptr %return_value_ptr, ptr %return_value_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value_ptr.addr, metadata !112, metadata !DIExpression()), !dbg !116
  call void @llvm.lifetime.start.p0(i64 8, ptr %accumulated_value) #5, !dbg !117
  call void @llvm.dbg.declare(metadata ptr %accumulated_value, metadata !113, metadata !DIExpression()), !dbg !118
  store i64 0, ptr %accumulated_value, align 8, !dbg !118
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !119
  call void @llvm.dbg.declare(metadata ptr %status, metadata !114, metadata !DIExpression()), !dbg !120
  store i32 0, ptr %status, align 4, !dbg !120
  br label %while.cond, !dbg !121

while.cond:                                       ; preds = %if.end6, %entry
  %0 = load ptr, ptr %string.addr, align 8, !dbg !122
  %1 = load i8, ptr %0, align 1, !dbg !123
  %tobool = icmp ne i8 %1, 0, !dbg !121
  br i1 %tobool, label %while.body, label %while.end, !dbg !121

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %string.addr, align 8, !dbg !124
  %3 = load i8, ptr %2, align 1, !dbg !127
  %conv = zext i8 %3 to i32, !dbg !128
  %call = call i32 @isdigit(i32 noundef %conv) #6, !dbg !129
  %tobool1 = icmp ne i32 %call, 0, !dbg !129
  br i1 %tobool1, label %if.end, label %if.then, !dbg !130

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !131

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %string.addr, align 8, !dbg !133
  %5 = load i8, ptr %4, align 1, !dbg !134
  %conv2 = zext i8 %5 to i32, !dbg !134
  %call3 = call i32 @acpi_ut_insert_digit(ptr noundef %accumulated_value, i32 noundef 10, i32 noundef %conv2) #6, !dbg !135
  store i32 %call3, ptr %status, align 4, !dbg !136
  %6 = load i32, ptr %status, align 4, !dbg !137
  %tobool4 = icmp ne i32 %6, 0, !dbg !137
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !139

if.then5:                                         ; preds = %if.end
  store i32 33, ptr %status, align 4, !dbg !140
  br label %while.end, !dbg !142

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %string.addr, align 8, !dbg !143
  %incdec.ptr = getelementptr i8, ptr %7, i32 1, !dbg !143
  store ptr %incdec.ptr, ptr %string.addr, align 8, !dbg !143
  br label %while.cond, !dbg !121, !llvm.loop !144

while.end:                                        ; preds = %if.then5, %if.then, %while.cond
  %8 = load i64, ptr %accumulated_value, align 8, !dbg !146
  %9 = load ptr, ptr %return_value_ptr.addr, align 8, !dbg !147
  store i64 %8, ptr %9, align 8, !dbg !148
  %10 = load i32, ptr %status, align 4, !dbg !149
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !150
  call void @llvm.lifetime.end.p0(i64 8, ptr %accumulated_value) #5, !dbg !150
  ret i32 %10, !dbg !151
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @isdigit(i32 noundef %c) #3 align 16 !dbg !152 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !157, metadata !DIExpression()), !dbg !158
  %0 = load i32, ptr %c.addr, align 4, !dbg !159
  %cmp = icmp sle i32 48, %0, !dbg !160
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !161

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4, !dbg !162
  %cmp1 = icmp sle i32 %1, 57, !dbg !163
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !164
  %land.ext = zext i1 %2 to i32, !dbg !161
  ret i32 %land.ext, !dbg !165
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_convert_hex_string(ptr noundef %string, ptr noundef %return_value_ptr) #0 align 16 !dbg !166 {
entry:
  %string.addr = alloca ptr, align 8
  %return_value_ptr.addr = alloca ptr, align 8
  %accumulated_value = alloca i64, align 8
  %status = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !168, metadata !DIExpression()), !dbg !172
  store ptr %return_value_ptr, ptr %return_value_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value_ptr.addr, metadata !169, metadata !DIExpression()), !dbg !173
  call void @llvm.lifetime.start.p0(i64 8, ptr %accumulated_value) #5, !dbg !174
  call void @llvm.dbg.declare(metadata ptr %accumulated_value, metadata !170, metadata !DIExpression()), !dbg !175
  store i64 0, ptr %accumulated_value, align 8, !dbg !175
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !176
  call void @llvm.dbg.declare(metadata ptr %status, metadata !171, metadata !DIExpression()), !dbg !177
  store i32 0, ptr %status, align 4, !dbg !177
  br label %while.cond, !dbg !178

while.cond:                                       ; preds = %if.end8, %entry
  %0 = load ptr, ptr %string.addr, align 8, !dbg !179
  %1 = load i8, ptr %0, align 1, !dbg !180
  %tobool = icmp ne i8 %1, 0, !dbg !178
  br i1 %tobool, label %while.body, label %while.end, !dbg !178

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %string.addr, align 8, !dbg !181
  %3 = load i8, ptr %2, align 1, !dbg !181
  %conv = zext i8 %3 to i32, !dbg !181
  %conv1 = trunc i32 %conv to i8, !dbg !181
  %conv2 = zext i8 %conv1 to i32, !dbg !181
  %idxprom = sext i32 %conv2 to i64, !dbg !181
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !181
  %4 = load i8, ptr %arrayidx, align 1, !dbg !181
  %conv3 = zext i8 %4 to i32, !dbg !181
  %and = and i32 %conv3, 68, !dbg !181
  %cmp = icmp ne i32 %and, 0, !dbg !181
  br i1 %cmp, label %if.end, label %if.then, !dbg !184

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !185

if.end:                                           ; preds = %while.body
  %5 = load ptr, ptr %string.addr, align 8, !dbg !187
  %6 = load i8, ptr %5, align 1, !dbg !188
  %conv5 = zext i8 %6 to i32, !dbg !188
  %call = call i32 @acpi_ut_insert_digit(ptr noundef %accumulated_value, i32 noundef 16, i32 noundef %conv5) #6, !dbg !189
  store i32 %call, ptr %status, align 4, !dbg !190
  %7 = load i32, ptr %status, align 4, !dbg !191
  %tobool6 = icmp ne i32 %7, 0, !dbg !191
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !193

if.then7:                                         ; preds = %if.end
  store i32 32, ptr %status, align 4, !dbg !194
  br label %while.end, !dbg !196

if.end8:                                          ; preds = %if.end
  %8 = load ptr, ptr %string.addr, align 8, !dbg !197
  %incdec.ptr = getelementptr i8, ptr %8, i32 1, !dbg !197
  store ptr %incdec.ptr, ptr %string.addr, align 8, !dbg !197
  br label %while.cond, !dbg !178, !llvm.loop !198

while.end:                                        ; preds = %if.then7, %if.then, %while.cond
  %9 = load i64, ptr %accumulated_value, align 8, !dbg !200
  %10 = load ptr, ptr %return_value_ptr.addr, align 8, !dbg !201
  store i64 %9, ptr %10, align 8, !dbg !202
  %11 = load i32, ptr %status, align 4, !dbg !203
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !204
  call void @llvm.lifetime.end.p0(i64 8, ptr %accumulated_value) #5, !dbg !204
  ret i32 %11, !dbg !205
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ut_remove_leading_zeros(ptr noundef %string) #0 align 16 !dbg !206 {
entry:
  %string.addr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !211, metadata !DIExpression()), !dbg !212
  br label %while.cond, !dbg !213

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %string.addr, align 8, !dbg !214
  %1 = load ptr, ptr %0, align 8, !dbg !215
  %2 = load i8, ptr %1, align 1, !dbg !216
  %conv = zext i8 %2 to i32, !dbg !216
  %cmp = icmp eq i32 %conv, 48, !dbg !217
  br i1 %cmp, label %while.body, label %while.end, !dbg !213

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %string.addr, align 8, !dbg !218
  %4 = load ptr, ptr %3, align 8, !dbg !220
  %add.ptr = getelementptr i8, ptr %4, i64 1, !dbg !220
  store ptr %add.ptr, ptr %3, align 8, !dbg !220
  br label %while.cond, !dbg !213, !llvm.loop !221

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %string.addr, align 8, !dbg !223
  %6 = load ptr, ptr %5, align 8, !dbg !224
  %7 = load i8, ptr %6, align 1, !dbg !225
  ret i8 %7, !dbg !226
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ut_remove_whitespace(ptr noundef %string) #0 align 16 !dbg !227 {
entry:
  %string.addr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !229, metadata !DIExpression()), !dbg !230
  br label %while.cond, !dbg !231

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %string.addr, align 8, !dbg !232
  %1 = load ptr, ptr %0, align 8, !dbg !232
  %2 = load i8, ptr %1, align 1, !dbg !232
  %conv = zext i8 %2 to i32, !dbg !232
  %idxprom = sext i32 %conv to i64, !dbg !232
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !232
  %3 = load i8, ptr %arrayidx, align 1, !dbg !232
  %conv1 = zext i8 %3 to i32, !dbg !232
  %and = and i32 %conv1, 32, !dbg !232
  %cmp = icmp ne i32 %and, 0, !dbg !232
  br i1 %cmp, label %while.body, label %while.end, !dbg !231

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %string.addr, align 8, !dbg !233
  %5 = load ptr, ptr %4, align 8, !dbg !235
  %add.ptr = getelementptr i8, ptr %5, i64 1, !dbg !235
  store ptr %add.ptr, ptr %4, align 8, !dbg !235
  br label %while.cond, !dbg !231, !llvm.loop !236

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %string.addr, align 8, !dbg !238
  %7 = load ptr, ptr %6, align 8, !dbg !239
  %8 = load i8, ptr %7, align 1, !dbg !240
  ret i8 %8, !dbg !241
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ut_detect_hex_prefix(ptr noundef %string) #0 align 16 !dbg !242 {
entry:
  %retval = alloca i8, align 1
  %string.addr = alloca ptr, align 8
  %initial_position = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !246, metadata !DIExpression()), !dbg !248
  call void @llvm.lifetime.start.p0(i64 8, ptr %initial_position) #5, !dbg !249
  call void @llvm.dbg.declare(metadata ptr %initial_position, metadata !247, metadata !DIExpression()), !dbg !250
  %0 = load ptr, ptr %string.addr, align 8, !dbg !251
  %1 = load ptr, ptr %0, align 8, !dbg !252
  store ptr %1, ptr %initial_position, align 8, !dbg !250
  %2 = load ptr, ptr %string.addr, align 8, !dbg !253
  call void @acpi_ut_remove_hex_prefix(ptr noundef %2) #6, !dbg !254
  %3 = load ptr, ptr %string.addr, align 8, !dbg !255
  %4 = load ptr, ptr %3, align 8, !dbg !257
  %5 = load ptr, ptr %initial_position, align 8, !dbg !258
  %cmp = icmp ne ptr %4, %5, !dbg !259
  br i1 %cmp, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %entry
  store i8 1, ptr %retval, align 1, !dbg !261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !261

if.end:                                           ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !263

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %initial_position) #5, !dbg !264
  %6 = load i8, ptr %retval, align 1, !dbg !264
  ret i8 %6, !dbg !264
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_remove_hex_prefix(ptr noundef %string) #0 align 16 !dbg !265 {
entry:
  %string.addr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = load ptr, ptr %string.addr, align 8, !dbg !271
  %1 = load ptr, ptr %0, align 8, !dbg !273
  %2 = load i8, ptr %1, align 1, !dbg !274
  %conv = zext i8 %2 to i32, !dbg !274
  %cmp = icmp eq i32 %conv, 48, !dbg !275
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !276

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %string.addr, align 8, !dbg !277
  %4 = load ptr, ptr %3, align 8, !dbg !277
  %add.ptr = getelementptr i8, ptr %4, i64 1, !dbg !277
  %5 = load i8, ptr %add.ptr, align 1, !dbg !277
  %conv2 = zext i8 %5 to i32, !dbg !277
  %conv3 = trunc i32 %conv2 to i8, !dbg !277
  %call = call zeroext i8 @__tolower(i8 noundef zeroext %conv3) #6, !dbg !277
  %conv4 = zext i8 %call to i32, !dbg !277
  %cmp5 = icmp eq i32 %conv4, 120, !dbg !278
  br i1 %cmp5, label %if.then, label %if.end, !dbg !279

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %string.addr, align 8, !dbg !280
  %7 = load ptr, ptr %6, align 8, !dbg !282
  %add.ptr7 = getelementptr i8, ptr %7, i64 2, !dbg !282
  store ptr %add.ptr7, ptr %6, align 8, !dbg !282
  br label %if.end, !dbg !283

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !284
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__tolower(i8 noundef zeroext %c) #3 align 16 !dbg !285 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load i8, ptr %c.addr, align 1, !dbg !291
  %conv = zext i8 %0 to i32, !dbg !291
  %idxprom = sext i32 %conv to i64, !dbg !291
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !291
  %1 = load i8, ptr %arrayidx, align 1, !dbg !291
  %conv1 = zext i8 %1 to i32, !dbg !291
  %and = and i32 %conv1, 1, !dbg !291
  %cmp = icmp ne i32 %and, 0, !dbg !291
  br i1 %cmp, label %if.then, label %if.end, !dbg !293

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1, !dbg !294
  %conv3 = zext i8 %2 to i32, !dbg !294
  %sub = sub i32 %conv3, -32, !dbg !294
  %conv4 = trunc i32 %sub to i8, !dbg !294
  store i8 %conv4, ptr %c.addr, align 1, !dbg !294
  br label %if.end, !dbg !295

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr %c.addr, align 1, !dbg !296
  ret i8 %3, !dbg !297
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ut_detect_octal_prefix(ptr noundef %string) #0 align 16 !dbg !298 {
entry:
  %retval = alloca i8, align 1
  %string.addr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load ptr, ptr %string.addr, align 8, !dbg !302
  %1 = load ptr, ptr %0, align 8, !dbg !304
  %2 = load i8, ptr %1, align 1, !dbg !305
  %conv = zext i8 %2 to i32, !dbg !305
  %cmp = icmp eq i32 %conv, 48, !dbg !306
  br i1 %cmp, label %if.then, label %if.end, !dbg !307

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %string.addr, align 8, !dbg !308
  %4 = load ptr, ptr %3, align 8, !dbg !310
  %add.ptr = getelementptr i8, ptr %4, i64 1, !dbg !310
  store ptr %add.ptr, ptr %3, align 8, !dbg !310
  store i8 1, ptr %retval, align 1, !dbg !311
  br label %return, !dbg !311

if.end:                                           ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !312
  br label %return, !dbg !312

return:                                           ; preds = %if.end, %if.then
  %5 = load i8, ptr %retval, align 1, !dbg !313
  ret i8 %5, !dbg !313
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_strtoul_multiply64(i64 noundef %multiplicand, i32 noundef %base, ptr noundef %out_product) #0 align 16 !dbg !314 {
entry:
  %retval = alloca i32, align 4
  %multiplicand.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %out_product.addr = alloca ptr, align 8
  %product = alloca i64, align 8
  %quotient = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %multiplicand, ptr %multiplicand.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %multiplicand.addr, metadata !318, metadata !DIExpression()), !dbg !323
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !319, metadata !DIExpression()), !dbg !324
  store ptr %out_product, ptr %out_product.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_product.addr, metadata !320, metadata !DIExpression()), !dbg !325
  call void @llvm.lifetime.start.p0(i64 8, ptr %product) #5, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %product, metadata !321, metadata !DIExpression()), !dbg !327
  call void @llvm.lifetime.start.p0(i64 8, ptr %quotient) #5, !dbg !328
  call void @llvm.dbg.declare(metadata ptr %quotient, metadata !322, metadata !DIExpression()), !dbg !329
  %0 = load ptr, ptr %out_product.addr, align 8, !dbg !330
  store i64 0, ptr %0, align 8, !dbg !331
  %1 = load i64, ptr %multiplicand.addr, align 8, !dbg !332
  %tobool = icmp ne i64 %1, 0, !dbg !332
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !334

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %base.addr, align 4, !dbg !335
  %tobool1 = icmp ne i32 %2, 0, !dbg !335
  br i1 %tobool1, label %if.end, label %if.then, !dbg !336

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !337
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !337

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, ptr %base.addr, align 4, !dbg !339
  %call = call i32 @acpi_ut_short_divide(i64 noundef -1, i32 noundef %3, ptr noundef %quotient, ptr noundef null) #6, !dbg !340
  %4 = load i64, ptr %multiplicand.addr, align 8, !dbg !341
  %5 = load i64, ptr %quotient, align 8, !dbg !343
  %cmp = icmp ugt i64 %4, %5, !dbg !344
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !345

if.then2:                                         ; preds = %if.end
  store i32 31, ptr %retval, align 4, !dbg !346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !346

if.end3:                                          ; preds = %if.end
  %6 = load i64, ptr %multiplicand.addr, align 8, !dbg !348
  %7 = load i32, ptr %base.addr, align 4, !dbg !349
  %conv = zext i32 %7 to i64, !dbg !349
  %mul = mul i64 %6, %conv, !dbg !350
  store i64 %mul, ptr %product, align 8, !dbg !351
  %8 = load i8, ptr @acpi_gbl_integer_bit_width, align 1, !dbg !352
  %conv4 = zext i8 %8 to i32, !dbg !352
  %cmp5 = icmp eq i32 %conv4, 32, !dbg !354
  br i1 %cmp5, label %land.lhs.true, label %if.end10, !dbg !355

land.lhs.true:                                    ; preds = %if.end3
  %9 = load i64, ptr %product, align 8, !dbg !356
  %cmp7 = icmp ugt i64 %9, 4294967295, !dbg !357
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !358

if.then9:                                         ; preds = %land.lhs.true
  store i32 31, ptr %retval, align 4, !dbg !359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !359

if.end10:                                         ; preds = %land.lhs.true, %if.end3
  %10 = load i64, ptr %product, align 8, !dbg !361
  %11 = load ptr, ptr %out_product.addr, align 8, !dbg !362
  store i64 %10, ptr %11, align 8, !dbg !363
  store i32 0, ptr %retval, align 4, !dbg !364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !364

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %quotient) #5, !dbg !365
  call void @llvm.lifetime.end.p0(i64 8, ptr %product) #5, !dbg !365
  %12 = load i32, ptr %retval, align 4, !dbg !365
  ret i32 %12, !dbg !365
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_strtoul_add64(i64 noundef %addend1, i32 noundef %digit, ptr noundef %out_sum) #0 align 16 !dbg !366 {
entry:
  %retval = alloca i32, align 4
  %addend1.addr = alloca i64, align 8
  %digit.addr = alloca i32, align 4
  %out_sum.addr = alloca ptr, align 8
  %sum = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !368, metadata !DIExpression()), !dbg !372
  store i32 %digit, ptr %digit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %digit.addr, metadata !369, metadata !DIExpression()), !dbg !373
  store ptr %out_sum, ptr %out_sum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_sum.addr, metadata !370, metadata !DIExpression()), !dbg !374
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #5, !dbg !375
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !371, metadata !DIExpression()), !dbg !376
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !377
  %cmp = icmp ugt i64 %0, 0, !dbg !379
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !380

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %digit.addr, align 4, !dbg !381
  %conv = zext i32 %1 to i64, !dbg !381
  %2 = load i64, ptr %addend1.addr, align 8, !dbg !382
  %sub = sub i64 -1, %2, !dbg !383
  %cmp1 = icmp ugt i64 %conv, %sub, !dbg !384
  br i1 %cmp1, label %if.then, label %if.end, !dbg !385

if.then:                                          ; preds = %land.lhs.true
  store i32 31, ptr %retval, align 4, !dbg !386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !386

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i64, ptr %addend1.addr, align 8, !dbg !388
  %4 = load i32, ptr %digit.addr, align 4, !dbg !389
  %conv3 = zext i32 %4 to i64, !dbg !389
  %add = add i64 %3, %conv3, !dbg !390
  store i64 %add, ptr %sum, align 8, !dbg !391
  %5 = load i8, ptr @acpi_gbl_integer_bit_width, align 1, !dbg !392
  %conv4 = zext i8 %5 to i32, !dbg !392
  %cmp5 = icmp eq i32 %conv4, 32, !dbg !394
  br i1 %cmp5, label %land.lhs.true7, label %if.end11, !dbg !395

land.lhs.true7:                                   ; preds = %if.end
  %6 = load i64, ptr %sum, align 8, !dbg !396
  %cmp8 = icmp ugt i64 %6, 4294967295, !dbg !397
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !398

if.then10:                                        ; preds = %land.lhs.true7
  store i32 31, ptr %retval, align 4, !dbg !399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !399

if.end11:                                         ; preds = %land.lhs.true7, %if.end
  %7 = load i64, ptr %sum, align 8, !dbg !401
  %8 = load ptr, ptr %out_sum.addr, align 8, !dbg !402
  store i64 %7, ptr %8, align 8, !dbg !403
  store i32 0, ptr %retval, align 4, !dbg !404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !404

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #5, !dbg !405
  %9 = load i32, ptr %retval, align 4, !dbg !405
  ret i32 %9, !dbg !405
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !406 dso_local zeroext i8 @acpi_ut_ascii_char_to_hex(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !410 dso_local i32 @acpi_ut_short_divide(i64 noundef, i32 noundef, ptr noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utstrsuppt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utstrsuppt\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utstrsuppt.ll drivers/acpi/acpica/utstrsuppt.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utstrsuppt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ebea65f1022f855d323dd6c16a3810b1")
!2 = !{!3, !10, !11, !12, !13, !15, !5}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !4, line: 421, baseType: !5)
!4 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !6, line: 21, baseType: !7)
!6 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !6, line: 17, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !8, line: 21, baseType: !12)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !6, line: 23, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !8, line: 31, baseType: !17)
!17 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 8, !"cf-protection-branch", i32 1}
!22 = !{i32 4, !"function_return_thunk_extern", i32 1}
!23 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!24 = !{i32 1, !"Code Model", i32 2}
!25 = !{i32 1, !"override-stack-alignment", i32 8}
!26 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!27 = distinct !DISubprogram(name: "acpi_ut_convert_octal_string", scope: !1, file: !1, line: 40, type: !28, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !32)
!28 = !DISubroutineType(types: !29)
!29 = !{!3, !30, !31}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!32 = !{!33, !34, !35, !36}
!33 = !DILocalVariable(name: "string", arg: 1, scope: !27, file: !1, line: 40, type: !30)
!34 = !DILocalVariable(name: "return_value_ptr", arg: 2, scope: !27, file: !1, line: 40, type: !31)
!35 = !DILocalVariable(name: "accumulated_value", scope: !27, file: !1, line: 42, type: !15)
!36 = !DILocalVariable(name: "status", scope: !27, file: !1, line: 43, type: !3)
!37 = !DILocation(line: 40, column: 48, scope: !27)
!38 = !DILocation(line: 40, column: 61, scope: !27)
!39 = !DILocation(line: 42, column: 2, scope: !27)
!40 = !DILocation(line: 42, column: 6, scope: !27)
!41 = !DILocation(line: 43, column: 2, scope: !27)
!42 = !DILocation(line: 43, column: 14, scope: !27)
!43 = !DILocation(line: 47, column: 2, scope: !27)
!44 = !DILocation(line: 47, column: 10, scope: !27)
!45 = !DILocation(line: 47, column: 9, scope: !27)
!46 = !DILocation(line: 53, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 53, column: 7)
!48 = distinct !DILexicalBlock(scope: !27, file: !1, line: 47, column: 18)
!49 = !DILocation(line: 53, column: 7, scope: !48)
!50 = !DILocation(line: 57, column: 4, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 53, column: 40)
!52 = !DILocation(line: 62, column: 57, scope: !48)
!53 = !DILocation(line: 62, column: 56, scope: !48)
!54 = !DILocation(line: 62, column: 12, scope: !48)
!55 = !DILocation(line: 62, column: 10, scope: !48)
!56 = !DILocation(line: 63, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !48, file: !1, line: 63, column: 7)
!58 = !DILocation(line: 63, column: 7, scope: !48)
!59 = !DILocation(line: 64, column: 11, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 63, column: 29)
!61 = !DILocation(line: 65, column: 4, scope: !60)
!62 = !DILocation(line: 68, column: 9, scope: !48)
!63 = distinct !{!63, !43, !64, !65, !66}
!64 = !DILocation(line: 69, column: 2, scope: !27)
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !DILocation(line: 73, column: 22, scope: !27)
!68 = !DILocation(line: 73, column: 3, scope: !27)
!69 = !DILocation(line: 73, column: 20, scope: !27)
!70 = !DILocation(line: 74, column: 10, scope: !27)
!71 = !DILocation(line: 75, column: 1, scope: !27)
!72 = !DILocation(line: 74, column: 2, scope: !27)
!73 = distinct !DISubprogram(name: "acpi_ut_insert_digit", scope: !1, file: !1, line: 331, type: !74, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!74 = !DISubroutineType(types: !75)
!75 = !{!3, !31, !5, !11}
!76 = !{!77, !78, !79, !80, !81}
!77 = !DILocalVariable(name: "accumulated_value", arg: 1, scope: !73, file: !1, line: 331, type: !31)
!78 = !DILocalVariable(name: "base", arg: 2, scope: !73, file: !1, line: 331, type: !5)
!79 = !DILocalVariable(name: "ascii_digit", arg: 3, scope: !73, file: !1, line: 331, type: !11)
!80 = !DILocalVariable(name: "status", scope: !73, file: !1, line: 333, type: !3)
!81 = !DILocalVariable(name: "product", scope: !73, file: !1, line: 334, type: !15)
!82 = !DILocation(line: 331, column: 27, scope: !73)
!83 = !DILocation(line: 331, column: 50, scope: !73)
!84 = !DILocation(line: 331, column: 60, scope: !73)
!85 = !DILocation(line: 333, column: 2, scope: !73)
!86 = !DILocation(line: 333, column: 14, scope: !73)
!87 = !DILocation(line: 334, column: 2, scope: !73)
!88 = !DILocation(line: 334, column: 6, scope: !73)
!89 = !DILocation(line: 338, column: 39, scope: !73)
!90 = !DILocation(line: 338, column: 38, scope: !73)
!91 = !DILocation(line: 338, column: 58, scope: !73)
!92 = !DILocation(line: 338, column: 11, scope: !73)
!93 = !DILocation(line: 338, column: 9, scope: !73)
!94 = !DILocation(line: 339, column: 6, scope: !95)
!95 = distinct !DILexicalBlock(scope: !73, file: !1, line: 339, column: 6)
!96 = !DILocation(line: 339, column: 6, scope: !73)
!97 = !DILocation(line: 340, column: 11, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 339, column: 28)
!99 = !DILocation(line: 340, column: 3, scope: !98)
!100 = !DILocation(line: 346, column: 28, scope: !73)
!101 = !DILocation(line: 347, column: 33, scope: !73)
!102 = !DILocation(line: 347, column: 7, scope: !73)
!103 = !DILocation(line: 348, column: 7, scope: !73)
!104 = !DILocation(line: 346, column: 6, scope: !73)
!105 = !DILocation(line: 345, column: 9, scope: !73)
!106 = !DILocation(line: 350, column: 10, scope: !73)
!107 = !DILocation(line: 350, column: 2, scope: !73)
!108 = !DILocation(line: 351, column: 1, scope: !73)
!109 = distinct !DISubprogram(name: "acpi_ut_convert_decimal_string", scope: !1, file: !1, line: 94, type: !28, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !110)
!110 = !{!111, !112, !113, !114}
!111 = !DILocalVariable(name: "string", arg: 1, scope: !109, file: !1, line: 94, type: !30)
!112 = !DILocalVariable(name: "return_value_ptr", arg: 2, scope: !109, file: !1, line: 94, type: !31)
!113 = !DILocalVariable(name: "accumulated_value", scope: !109, file: !1, line: 96, type: !15)
!114 = !DILocalVariable(name: "status", scope: !109, file: !1, line: 97, type: !3)
!115 = !DILocation(line: 94, column: 50, scope: !109)
!116 = !DILocation(line: 94, column: 63, scope: !109)
!117 = !DILocation(line: 96, column: 2, scope: !109)
!118 = !DILocation(line: 96, column: 6, scope: !109)
!119 = !DILocation(line: 97, column: 2, scope: !109)
!120 = !DILocation(line: 97, column: 14, scope: !109)
!121 = !DILocation(line: 101, column: 2, scope: !109)
!122 = !DILocation(line: 101, column: 10, scope: !109)
!123 = !DILocation(line: 101, column: 9, scope: !109)
!124 = !DILocation(line: 107, column: 22, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 107, column: 7)
!126 = distinct !DILexicalBlock(scope: !109, file: !1, line: 101, column: 18)
!127 = !DILocation(line: 107, column: 21, scope: !125)
!128 = !DILocation(line: 107, column: 16, scope: !125)
!129 = !DILocation(line: 107, column: 8, scope: !125)
!130 = !DILocation(line: 107, column: 7, scope: !126)
!131 = !DILocation(line: 111, column: 4, scope: !132)
!132 = distinct !DILexicalBlock(scope: !125, file: !1, line: 107, column: 31)
!133 = !DILocation(line: 116, column: 58, scope: !126)
!134 = !DILocation(line: 116, column: 57, scope: !126)
!135 = !DILocation(line: 116, column: 12, scope: !126)
!136 = !DILocation(line: 116, column: 10, scope: !126)
!137 = !DILocation(line: 117, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !126, file: !1, line: 117, column: 7)
!139 = !DILocation(line: 117, column: 7, scope: !126)
!140 = !DILocation(line: 118, column: 11, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !1, line: 117, column: 29)
!142 = !DILocation(line: 119, column: 4, scope: !141)
!143 = !DILocation(line: 122, column: 9, scope: !126)
!144 = distinct !{!144, !121, !145, !65, !66}
!145 = !DILocation(line: 123, column: 2, scope: !109)
!146 = !DILocation(line: 127, column: 22, scope: !109)
!147 = !DILocation(line: 127, column: 3, scope: !109)
!148 = !DILocation(line: 127, column: 20, scope: !109)
!149 = !DILocation(line: 128, column: 10, scope: !109)
!150 = !DILocation(line: 129, column: 1, scope: !109)
!151 = !DILocation(line: 128, column: 2, scope: !109)
!152 = distinct !DISubprogram(name: "isdigit", scope: !153, file: !153, line: 43, type: !154, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !156)
!153 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!154 = !DISubroutineType(types: !155)
!155 = !{!11, !11}
!156 = !{!157}
!157 = !DILocalVariable(name: "c", arg: 1, scope: !152, file: !153, line: 43, type: !11)
!158 = !DILocation(line: 43, column: 31, scope: !152)
!159 = !DILocation(line: 45, column: 16, scope: !152)
!160 = !DILocation(line: 45, column: 13, scope: !152)
!161 = !DILocation(line: 45, column: 18, scope: !152)
!162 = !DILocation(line: 45, column: 21, scope: !152)
!163 = !DILocation(line: 45, column: 23, scope: !152)
!164 = !DILocation(line: 0, scope: !152)
!165 = !DILocation(line: 45, column: 2, scope: !152)
!166 = distinct !DISubprogram(name: "acpi_ut_convert_hex_string", scope: !1, file: !1, line: 148, type: !28, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !167)
!167 = !{!168, !169, !170, !171}
!168 = !DILocalVariable(name: "string", arg: 1, scope: !166, file: !1, line: 148, type: !30)
!169 = !DILocalVariable(name: "return_value_ptr", arg: 2, scope: !166, file: !1, line: 148, type: !31)
!170 = !DILocalVariable(name: "accumulated_value", scope: !166, file: !1, line: 150, type: !15)
!171 = !DILocalVariable(name: "status", scope: !166, file: !1, line: 151, type: !3)
!172 = !DILocation(line: 148, column: 46, scope: !166)
!173 = !DILocation(line: 148, column: 59, scope: !166)
!174 = !DILocation(line: 150, column: 2, scope: !166)
!175 = !DILocation(line: 150, column: 6, scope: !166)
!176 = !DILocation(line: 151, column: 2, scope: !166)
!177 = !DILocation(line: 151, column: 14, scope: !166)
!178 = !DILocation(line: 155, column: 2, scope: !166)
!179 = !DILocation(line: 155, column: 10, scope: !166)
!180 = !DILocation(line: 155, column: 9, scope: !166)
!181 = !DILocation(line: 161, column: 8, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !1, line: 161, column: 7)
!183 = distinct !DILexicalBlock(scope: !166, file: !1, line: 155, column: 18)
!184 = !DILocation(line: 161, column: 7, scope: !183)
!185 = !DILocation(line: 165, column: 4, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 161, column: 32)
!187 = !DILocation(line: 170, column: 58, scope: !183)
!188 = !DILocation(line: 170, column: 57, scope: !183)
!189 = !DILocation(line: 170, column: 12, scope: !183)
!190 = !DILocation(line: 170, column: 10, scope: !183)
!191 = !DILocation(line: 171, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !183, file: !1, line: 171, column: 7)
!193 = !DILocation(line: 171, column: 7, scope: !183)
!194 = !DILocation(line: 172, column: 11, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 171, column: 29)
!196 = !DILocation(line: 173, column: 4, scope: !195)
!197 = !DILocation(line: 176, column: 9, scope: !183)
!198 = distinct !{!198, !178, !199, !65, !66}
!199 = !DILocation(line: 177, column: 2, scope: !166)
!200 = !DILocation(line: 181, column: 22, scope: !166)
!201 = !DILocation(line: 181, column: 3, scope: !166)
!202 = !DILocation(line: 181, column: 20, scope: !166)
!203 = !DILocation(line: 182, column: 10, scope: !166)
!204 = !DILocation(line: 183, column: 1, scope: !166)
!205 = !DILocation(line: 182, column: 2, scope: !166)
!206 = distinct !DISubprogram(name: "acpi_ut_remove_leading_zeros", scope: !1, file: !1, line: 200, type: !207, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !210)
!207 = !DISubroutineType(types: !208)
!208 = !{!10, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!210 = !{!211}
!211 = !DILocalVariable(name: "string", arg: 1, scope: !206, file: !1, line: 200, type: !209)
!212 = !DILocation(line: 200, column: 42, scope: !206)
!213 = !DILocation(line: 203, column: 2, scope: !206)
!214 = !DILocation(line: 203, column: 11, scope: !206)
!215 = !DILocation(line: 203, column: 10, scope: !206)
!216 = !DILocation(line: 203, column: 9, scope: !206)
!217 = !DILocation(line: 203, column: 18, scope: !206)
!218 = !DILocation(line: 204, column: 4, scope: !219)
!219 = distinct !DILexicalBlock(scope: !206, file: !1, line: 203, column: 38)
!220 = !DILocation(line: 204, column: 11, scope: !219)
!221 = distinct !{!221, !213, !222, !65, !66}
!222 = !DILocation(line: 205, column: 2, scope: !206)
!223 = !DILocation(line: 207, column: 12, scope: !206)
!224 = !DILocation(line: 207, column: 11, scope: !206)
!225 = !DILocation(line: 207, column: 10, scope: !206)
!226 = !DILocation(line: 207, column: 2, scope: !206)
!227 = distinct !DISubprogram(name: "acpi_ut_remove_whitespace", scope: !1, file: !1, line: 225, type: !207, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !228)
!228 = !{!229}
!229 = !DILocalVariable(name: "string", arg: 1, scope: !227, file: !1, line: 225, type: !209)
!230 = !DILocation(line: 225, column: 39, scope: !227)
!231 = !DILocation(line: 228, column: 2, scope: !227)
!232 = !DILocation(line: 228, column: 9, scope: !227)
!233 = !DILocation(line: 229, column: 4, scope: !234)
!234 = distinct !DILexicalBlock(scope: !227, file: !1, line: 228, column: 32)
!235 = !DILocation(line: 229, column: 11, scope: !234)
!236 = distinct !{!236, !231, !237, !65, !66}
!237 = !DILocation(line: 230, column: 2, scope: !227)
!238 = !DILocation(line: 232, column: 12, scope: !227)
!239 = !DILocation(line: 232, column: 11, scope: !227)
!240 = !DILocation(line: 232, column: 10, scope: !227)
!241 = !DILocation(line: 232, column: 2, scope: !227)
!242 = distinct !DISubprogram(name: "acpi_ut_detect_hex_prefix", scope: !1, file: !1, line: 247, type: !243, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !245)
!243 = !DISubroutineType(types: !244)
!244 = !{!13, !209}
!245 = !{!246, !247}
!246 = !DILocalVariable(name: "string", arg: 1, scope: !242, file: !1, line: 247, type: !209)
!247 = !DILocalVariable(name: "initial_position", scope: !242, file: !1, line: 249, type: !30)
!248 = !DILocation(line: 247, column: 37, scope: !242)
!249 = !DILocation(line: 249, column: 2, scope: !242)
!250 = !DILocation(line: 249, column: 8, scope: !242)
!251 = !DILocation(line: 249, column: 28, scope: !242)
!252 = !DILocation(line: 249, column: 27, scope: !242)
!253 = !DILocation(line: 251, column: 28, scope: !242)
!254 = !DILocation(line: 251, column: 2, scope: !242)
!255 = !DILocation(line: 252, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !242, file: !1, line: 252, column: 6)
!257 = !DILocation(line: 252, column: 6, scope: !256)
!258 = !DILocation(line: 252, column: 17, scope: !256)
!259 = !DILocation(line: 252, column: 14, scope: !256)
!260 = !DILocation(line: 252, column: 6, scope: !242)
!261 = !DILocation(line: 253, column: 3, scope: !262)
!262 = distinct !DILexicalBlock(scope: !256, file: !1, line: 252, column: 35)
!263 = !DILocation(line: 256, column: 2, scope: !242)
!264 = !DILocation(line: 257, column: 1, scope: !242)
!265 = distinct !DISubprogram(name: "acpi_ut_remove_hex_prefix", scope: !1, file: !1, line: 271, type: !266, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !268)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !209}
!268 = !{!269}
!269 = !DILocalVariable(name: "string", arg: 1, scope: !265, file: !1, line: 271, type: !209)
!270 = !DILocation(line: 271, column: 39, scope: !265)
!271 = !DILocation(line: 273, column: 9, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !1, line: 273, column: 6)
!273 = !DILocation(line: 273, column: 8, scope: !272)
!274 = !DILocation(line: 273, column: 7, scope: !272)
!275 = !DILocation(line: 273, column: 16, scope: !272)
!276 = !DILocation(line: 273, column: 36, scope: !272)
!277 = !DILocation(line: 274, column: 7, scope: !272)
!278 = !DILocation(line: 274, column: 36, scope: !272)
!279 = !DILocation(line: 273, column: 6, scope: !265)
!280 = !DILocation(line: 275, column: 4, scope: !281)
!281 = distinct !DILexicalBlock(scope: !272, file: !1, line: 274, column: 45)
!282 = !DILocation(line: 275, column: 11, scope: !281)
!283 = !DILocation(line: 276, column: 2, scope: !281)
!284 = !DILocation(line: 277, column: 1, scope: !265)
!285 = distinct !DISubprogram(name: "__tolower", scope: !153, file: !153, line: 49, type: !286, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !288)
!286 = !DISubroutineType(types: !287)
!287 = !{!12, !12}
!288 = !{!289}
!289 = !DILocalVariable(name: "c", arg: 1, scope: !285, file: !153, line: 49, type: !12)
!290 = !DILocation(line: 49, column: 53, scope: !285)
!291 = !DILocation(line: 51, column: 6, scope: !292)
!292 = distinct !DILexicalBlock(scope: !285, file: !153, line: 51, column: 6)
!293 = !DILocation(line: 51, column: 6, scope: !285)
!294 = !DILocation(line: 52, column: 5, scope: !292)
!295 = !DILocation(line: 52, column: 3, scope: !292)
!296 = !DILocation(line: 53, column: 9, scope: !285)
!297 = !DILocation(line: 53, column: 2, scope: !285)
!298 = distinct !DISubprogram(name: "acpi_ut_detect_octal_prefix", scope: !1, file: !1, line: 292, type: !243, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !299)
!299 = !{!300}
!300 = !DILocalVariable(name: "string", arg: 1, scope: !298, file: !1, line: 292, type: !209)
!301 = !DILocation(line: 292, column: 39, scope: !298)
!302 = !DILocation(line: 295, column: 8, scope: !303)
!303 = distinct !DILexicalBlock(scope: !298, file: !1, line: 295, column: 6)
!304 = !DILocation(line: 295, column: 7, scope: !303)
!305 = !DILocation(line: 295, column: 6, scope: !303)
!306 = !DILocation(line: 295, column: 15, scope: !303)
!307 = !DILocation(line: 295, column: 6, scope: !298)
!308 = !DILocation(line: 296, column: 4, scope: !309)
!309 = distinct !DILexicalBlock(scope: !303, file: !1, line: 295, column: 35)
!310 = !DILocation(line: 296, column: 11, scope: !309)
!311 = !DILocation(line: 297, column: 3, scope: !309)
!312 = !DILocation(line: 300, column: 2, scope: !298)
!313 = !DILocation(line: 301, column: 1, scope: !298)
!314 = distinct !DISubprogram(name: "acpi_ut_strtoul_multiply64", scope: !1, file: !1, line: 370, type: !315, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !317)
!315 = !DISubroutineType(types: !316)
!316 = !{!3, !15, !5, !31}
!317 = !{!318, !319, !320, !321, !322}
!318 = !DILocalVariable(name: "multiplicand", arg: 1, scope: !314, file: !1, line: 370, type: !15)
!319 = !DILocalVariable(name: "base", arg: 2, scope: !314, file: !1, line: 370, type: !5)
!320 = !DILocalVariable(name: "out_product", arg: 3, scope: !314, file: !1, line: 370, type: !31)
!321 = !DILocalVariable(name: "product", scope: !314, file: !1, line: 372, type: !15)
!322 = !DILocalVariable(name: "quotient", scope: !314, file: !1, line: 373, type: !15)
!323 = !DILocation(line: 370, column: 32, scope: !314)
!324 = !DILocation(line: 370, column: 50, scope: !314)
!325 = !DILocation(line: 370, column: 61, scope: !314)
!326 = !DILocation(line: 372, column: 2, scope: !314)
!327 = !DILocation(line: 372, column: 6, scope: !314)
!328 = !DILocation(line: 373, column: 2, scope: !314)
!329 = !DILocation(line: 373, column: 6, scope: !314)
!330 = !DILocation(line: 377, column: 3, scope: !314)
!331 = !DILocation(line: 377, column: 15, scope: !314)
!332 = !DILocation(line: 378, column: 7, scope: !333)
!333 = distinct !DILexicalBlock(scope: !314, file: !1, line: 378, column: 6)
!334 = !DILocation(line: 378, column: 20, scope: !333)
!335 = !DILocation(line: 378, column: 24, scope: !333)
!336 = !DILocation(line: 378, column: 6, scope: !314)
!337 = !DILocation(line: 379, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !1, line: 378, column: 30)
!339 = !DILocation(line: 390, column: 40, scope: !314)
!340 = !DILocation(line: 390, column: 2, scope: !314)
!341 = !DILocation(line: 391, column: 6, scope: !342)
!342 = distinct !DILexicalBlock(scope: !314, file: !1, line: 391, column: 6)
!343 = !DILocation(line: 391, column: 21, scope: !342)
!344 = !DILocation(line: 391, column: 19, scope: !342)
!345 = !DILocation(line: 391, column: 6, scope: !314)
!346 = !DILocation(line: 392, column: 3, scope: !347)
!347 = distinct !DILexicalBlock(scope: !342, file: !1, line: 391, column: 31)
!348 = !DILocation(line: 395, column: 12, scope: !314)
!349 = !DILocation(line: 395, column: 27, scope: !314)
!350 = !DILocation(line: 395, column: 25, scope: !314)
!351 = !DILocation(line: 395, column: 10, scope: !314)
!352 = !DILocation(line: 399, column: 7, scope: !353)
!353 = distinct !DILexicalBlock(scope: !314, file: !1, line: 399, column: 6)
!354 = !DILocation(line: 399, column: 34, scope: !353)
!355 = !DILocation(line: 399, column: 41, scope: !353)
!356 = !DILocation(line: 399, column: 45, scope: !353)
!357 = !DILocation(line: 399, column: 53, scope: !353)
!358 = !DILocation(line: 399, column: 6, scope: !314)
!359 = !DILocation(line: 400, column: 3, scope: !360)
!360 = distinct !DILexicalBlock(scope: !353, file: !1, line: 399, column: 73)
!361 = !DILocation(line: 403, column: 17, scope: !314)
!362 = !DILocation(line: 403, column: 3, scope: !314)
!363 = !DILocation(line: 403, column: 15, scope: !314)
!364 = !DILocation(line: 404, column: 2, scope: !314)
!365 = !DILocation(line: 405, column: 1, scope: !314)
!366 = distinct !DISubprogram(name: "acpi_ut_strtoul_add64", scope: !1, file: !1, line: 423, type: !315, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !367)
!367 = !{!368, !369, !370, !371}
!368 = !DILocalVariable(name: "addend1", arg: 1, scope: !366, file: !1, line: 423, type: !15)
!369 = !DILocalVariable(name: "digit", arg: 2, scope: !366, file: !1, line: 423, type: !5)
!370 = !DILocalVariable(name: "out_sum", arg: 3, scope: !366, file: !1, line: 423, type: !31)
!371 = !DILocalVariable(name: "sum", scope: !366, file: !1, line: 425, type: !15)
!372 = !DILocation(line: 423, column: 46, scope: !366)
!373 = !DILocation(line: 423, column: 59, scope: !366)
!374 = !DILocation(line: 423, column: 71, scope: !366)
!375 = !DILocation(line: 425, column: 2, scope: !366)
!376 = !DILocation(line: 425, column: 6, scope: !366)
!377 = !DILocation(line: 429, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !366, file: !1, line: 429, column: 6)
!379 = !DILocation(line: 429, column: 15, scope: !378)
!380 = !DILocation(line: 429, column: 20, scope: !378)
!381 = !DILocation(line: 429, column: 24, scope: !378)
!382 = !DILocation(line: 429, column: 51, scope: !378)
!383 = !DILocation(line: 429, column: 49, scope: !378)
!384 = !DILocation(line: 429, column: 30, scope: !378)
!385 = !DILocation(line: 429, column: 6, scope: !366)
!386 = !DILocation(line: 430, column: 3, scope: !387)
!387 = distinct !DILexicalBlock(scope: !378, file: !1, line: 429, column: 62)
!388 = !DILocation(line: 433, column: 8, scope: !366)
!389 = !DILocation(line: 433, column: 18, scope: !366)
!390 = !DILocation(line: 433, column: 16, scope: !366)
!391 = !DILocation(line: 433, column: 6, scope: !366)
!392 = !DILocation(line: 437, column: 7, scope: !393)
!393 = distinct !DILexicalBlock(scope: !366, file: !1, line: 437, column: 6)
!394 = !DILocation(line: 437, column: 34, scope: !393)
!395 = !DILocation(line: 437, column: 41, scope: !393)
!396 = !DILocation(line: 437, column: 45, scope: !393)
!397 = !DILocation(line: 437, column: 49, scope: !393)
!398 = !DILocation(line: 437, column: 6, scope: !366)
!399 = !DILocation(line: 438, column: 3, scope: !400)
!400 = distinct !DILexicalBlock(scope: !393, file: !1, line: 437, column: 69)
!401 = !DILocation(line: 441, column: 13, scope: !366)
!402 = !DILocation(line: 441, column: 3, scope: !366)
!403 = !DILocation(line: 441, column: 11, scope: !366)
!404 = !DILocation(line: 442, column: 2, scope: !366)
!405 = !DILocation(line: 443, column: 1, scope: !366)
!406 = !DISubprogram(name: "acpi_ut_ascii_char_to_hex", scope: !407, file: !407, line: 245, type: !408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!407 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!408 = !DISubroutineType(types: !409)
!409 = !{!13, !11}
!410 = !DISubprogram(name: "acpi_ut_short_divide", scope: !407, file: !407, line: 541, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!411 = !DISubroutineType(types: !412)
!412 = !{!3, !15, !5, !31, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
