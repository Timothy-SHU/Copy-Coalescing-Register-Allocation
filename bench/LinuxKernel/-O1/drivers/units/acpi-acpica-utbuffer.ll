; ModuleID = 'drivers/acpi/acpica/utbuffer.c'
source_filename = "drivers/acpi/acpica/utbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"Null Buffer Pointer in DumpBuffer!\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"%8.4X: \00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [6 x i8] c"%04X \00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [6 x i8] c"%08X \00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [4 x i8] c"// \00", align 1, !dbg !38
@_ctype = external dso_local constant [0 x i8], align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1, !dbg !40
@.str.11 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !45
@acpi_dbg_level = external dso_local global i32, align 4
@acpi_dbg_layer = external dso_local global i32, align 4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_dump_buffer(ptr noundef %buffer, i32 noundef %count, i32 noundef %display, i32 noundef %base_offset) #0 align 16 !dbg !77 {
entry:
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %display.addr = alloca i32, align 4
  %base_offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp32 = alloca i32, align 4
  %buf_char = alloca i8, align 1
  %display_data_only = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !84, metadata !DIExpression()), !dbg !93
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !85, metadata !DIExpression()), !dbg !94
  store i32 %display, ptr %display.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %display.addr, metadata !86, metadata !DIExpression()), !dbg !95
  store i32 %base_offset, ptr %base_offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base_offset.addr, metadata !87, metadata !DIExpression()), !dbg !96
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !97
  call void @llvm.dbg.declare(metadata ptr %i, metadata !88, metadata !DIExpression()), !dbg !98
  store i32 0, ptr %i, align 4, !dbg !98
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4, !dbg !99
  call void @llvm.dbg.declare(metadata ptr %j, metadata !89, metadata !DIExpression()), !dbg !100
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp32) #4, !dbg !101
  call void @llvm.dbg.declare(metadata ptr %temp32, metadata !90, metadata !DIExpression()), !dbg !102
  call void @llvm.lifetime.start.p0(i64 1, ptr %buf_char) #4, !dbg !103
  call void @llvm.dbg.declare(metadata ptr %buf_char, metadata !91, metadata !DIExpression()), !dbg !104
  call void @llvm.lifetime.start.p0(i64 4, ptr %display_data_only) #4, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %display_data_only, metadata !92, metadata !DIExpression()), !dbg !106
  %0 = load i32, ptr %display.addr, align 4, !dbg !107
  %and = and i32 %0, 16, !dbg !108
  store i32 %and, ptr %display_data_only, align 4, !dbg !106
  %1 = load i32, ptr %display.addr, align 4, !dbg !109
  %and1 = and i32 %1, -17, !dbg !109
  store i32 %and1, ptr %display.addr, align 4, !dbg !109
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !110
  %tobool = icmp ne ptr %2, null, !dbg !110
  br i1 %tobool, label %if.end, label %if.then, !dbg !112

if.then:                                          ; preds = %entry
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str) #5, !dbg !113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !115

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %count.addr, align 4, !dbg !116
  %cmp = icmp ult i32 %3, 4, !dbg !118
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !119

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %count.addr, align 4, !dbg !120
  %and2 = and i32 %4, 1, !dbg !121
  %tobool3 = icmp ne i32 %and2, 0, !dbg !121
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !122

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 1, ptr %display.addr, align 4, !dbg !123
  br label %if.end5, !dbg !125

if.end5:                                          ; preds = %if.then4, %lor.lhs.false
  br label %while.cond, !dbg !126

while.cond:                                       ; preds = %if.end71, %if.end5
  %5 = load i32, ptr %i, align 4, !dbg !127
  %6 = load i32, ptr %count.addr, align 4, !dbg !128
  %cmp6 = icmp ult i32 %5, %6, !dbg !129
  br i1 %cmp6, label %while.body, label %while.end, !dbg !126

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %display_data_only, align 4, !dbg !130
  %tobool7 = icmp ne i32 %7, 0, !dbg !130
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !133

if.then8:                                         ; preds = %while.body
  %8 = load i32, ptr %base_offset.addr, align 4, !dbg !134
  %9 = load i32, ptr %i, align 4, !dbg !136
  %add = add i32 %8, %9, !dbg !137
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1, i32 noundef %add) #5, !dbg !138
  br label %if.end9, !dbg !139

if.end9:                                          ; preds = %if.then8, %while.body
  store i32 0, ptr %j, align 4, !dbg !140
  br label %for.cond, !dbg !142

for.cond:                                         ; preds = %sw.epilog, %if.then13, %if.end9
  %10 = load i32, ptr %j, align 4, !dbg !143
  %cmp10 = icmp ult i32 %10, 16, !dbg !145
  br i1 %cmp10, label %for.body, label %for.end, !dbg !146

for.body:                                         ; preds = %for.cond
  %11 = load i32, ptr %i, align 4, !dbg !147
  %12 = load i32, ptr %j, align 4, !dbg !150
  %add11 = add i32 %11, %12, !dbg !151
  %13 = load i32, ptr %count.addr, align 4, !dbg !152
  %cmp12 = icmp uge i32 %add11, %13, !dbg !153
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !154

if.then13:                                        ; preds = %for.body
  %14 = load i32, ptr %display.addr, align 4, !dbg !155
  %mul = mul i32 %14, 2, !dbg !157
  %add14 = add i32 %mul, 1, !dbg !158
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.2, i32 noundef %add14, ptr noundef @.str.3) #5, !dbg !159
  %15 = load i32, ptr %display.addr, align 4, !dbg !160
  %16 = load i32, ptr %j, align 4, !dbg !161
  %add15 = add i32 %16, %15, !dbg !161
  store i32 %add15, ptr %j, align 4, !dbg !161
  br label %for.cond, !dbg !162, !llvm.loop !163

if.end16:                                         ; preds = %for.body
  %17 = load i32, ptr %display.addr, align 4, !dbg !167
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
    i32 4, label %sw.bb26
    i32 8, label %sw.bb31
  ], !dbg !168

sw.bb:                                            ; preds = %if.end16
  br label %sw.default, !dbg !169

sw.default:                                       ; preds = %if.end16, %sw.bb
  %18 = load ptr, ptr %buffer.addr, align 8, !dbg !171
  %19 = load i32, ptr %i, align 4, !dbg !172
  %conv = zext i32 %19 to i64, !dbg !173
  %20 = load i32, ptr %j, align 4, !dbg !174
  %conv17 = zext i32 %20 to i64, !dbg !174
  %add18 = add i64 %conv, %conv17, !dbg !175
  %arrayidx = getelementptr i8, ptr %18, i64 %add18, !dbg !171
  %21 = load i8, ptr %arrayidx, align 1, !dbg !171
  %conv19 = zext i8 %21 to i32, !dbg !171
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.4, i32 noundef %conv19) #5, !dbg !176
  br label %sw.epilog, !dbg !177

sw.bb20:                                          ; preds = %if.end16
  %22 = load ptr, ptr %buffer.addr, align 8, !dbg !178
  %23 = load i32, ptr %i, align 4, !dbg !178
  %conv21 = zext i32 %23 to i64, !dbg !178
  %24 = load i32, ptr %j, align 4, !dbg !178
  %conv22 = zext i32 %24 to i64, !dbg !178
  %add23 = add i64 %conv21, %conv22, !dbg !178
  %arrayidx24 = getelementptr i8, ptr %22, i64 %add23, !dbg !178
  %25 = load i16, ptr %arrayidx24, align 2, !dbg !178
  %conv25 = zext i16 %25 to i32, !dbg !178
  store i32 %conv25, ptr %temp32, align 4, !dbg !178
  %26 = load i32, ptr %temp32, align 4, !dbg !179
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.5, i32 noundef %26) #5, !dbg !180
  br label %sw.epilog, !dbg !181

sw.bb26:                                          ; preds = %if.end16
  %27 = load ptr, ptr %buffer.addr, align 8, !dbg !182
  %28 = load i32, ptr %i, align 4, !dbg !182
  %conv27 = zext i32 %28 to i64, !dbg !182
  %29 = load i32, ptr %j, align 4, !dbg !182
  %conv28 = zext i32 %29 to i64, !dbg !182
  %add29 = add i64 %conv27, %conv28, !dbg !182
  %arrayidx30 = getelementptr i8, ptr %27, i64 %add29, !dbg !182
  %30 = load i32, ptr %arrayidx30, align 4, !dbg !182
  store i32 %30, ptr %temp32, align 4, !dbg !182
  %31 = load i32, ptr %temp32, align 4, !dbg !183
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.6, i32 noundef %31) #5, !dbg !184
  br label %sw.epilog, !dbg !185

sw.bb31:                                          ; preds = %if.end16
  %32 = load ptr, ptr %buffer.addr, align 8, !dbg !186
  %33 = load i32, ptr %i, align 4, !dbg !186
  %conv32 = zext i32 %33 to i64, !dbg !186
  %34 = load i32, ptr %j, align 4, !dbg !186
  %conv33 = zext i32 %34 to i64, !dbg !186
  %add34 = add i64 %conv32, %conv33, !dbg !186
  %arrayidx35 = getelementptr i8, ptr %32, i64 %add34, !dbg !186
  %35 = load i32, ptr %arrayidx35, align 4, !dbg !186
  store i32 %35, ptr %temp32, align 4, !dbg !186
  %36 = load i32, ptr %temp32, align 4, !dbg !187
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.7, i32 noundef %36) #5, !dbg !188
  %37 = load ptr, ptr %buffer.addr, align 8, !dbg !189
  %38 = load i32, ptr %i, align 4, !dbg !189
  %conv36 = zext i32 %38 to i64, !dbg !189
  %39 = load i32, ptr %j, align 4, !dbg !189
  %conv37 = zext i32 %39 to i64, !dbg !189
  %add38 = add i64 %conv36, %conv37, !dbg !189
  %add39 = add i64 %add38, 4, !dbg !189
  %arrayidx40 = getelementptr i8, ptr %37, i64 %add39, !dbg !189
  %40 = load i32, ptr %arrayidx40, align 4, !dbg !189
  store i32 %40, ptr %temp32, align 4, !dbg !189
  %41 = load i32, ptr %temp32, align 4, !dbg !190
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.6, i32 noundef %41) #5, !dbg !191
  br label %sw.epilog, !dbg !192

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb26, %sw.bb20, %sw.default
  %42 = load i32, ptr %display.addr, align 4, !dbg !193
  %43 = load i32, ptr %j, align 4, !dbg !194
  %add41 = add i32 %43, %42, !dbg !194
  store i32 %add41, ptr %j, align 4, !dbg !194
  br label %for.cond, !dbg !195, !llvm.loop !163

for.end:                                          ; preds = %for.cond
  %44 = load i32, ptr %display_data_only, align 4, !dbg !196
  %tobool42 = icmp ne i32 %44, 0, !dbg !196
  br i1 %tobool42, label %if.end71, label %if.then43, !dbg !198

if.then43:                                        ; preds = %for.end
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.3) #5, !dbg !199
  store i32 0, ptr %j, align 4, !dbg !201
  br label %for.cond44, !dbg !203

for.cond44:                                       ; preds = %for.inc, %if.then43
  %45 = load i32, ptr %j, align 4, !dbg !204
  %cmp45 = icmp ult i32 %45, 16, !dbg !206
  br i1 %cmp45, label %for.body47, label %for.end70, !dbg !207

for.body47:                                       ; preds = %for.cond44
  %46 = load i32, ptr %i, align 4, !dbg !208
  %47 = load i32, ptr %j, align 4, !dbg !211
  %add48 = add i32 %46, %47, !dbg !212
  %48 = load i32, ptr %count.addr, align 4, !dbg !213
  %cmp49 = icmp uge i32 %add48, %48, !dbg !214
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !215

if.then51:                                        ; preds = %for.body47
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.8) #5, !dbg !216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !218

if.end52:                                         ; preds = %for.body47
  %49 = load i32, ptr %j, align 4, !dbg !219
  %cmp53 = icmp eq i32 %49, 0, !dbg !221
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !222

if.then55:                                        ; preds = %if.end52
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.9) #5, !dbg !223
  br label %if.end56, !dbg !225

if.end56:                                         ; preds = %if.then55, %if.end52
  %50 = load ptr, ptr %buffer.addr, align 8, !dbg !226
  %51 = load i32, ptr %i, align 4, !dbg !227
  %conv57 = zext i32 %51 to i64, !dbg !228
  %52 = load i32, ptr %j, align 4, !dbg !229
  %conv58 = zext i32 %52 to i64, !dbg !229
  %add59 = add i64 %conv57, %conv58, !dbg !230
  %arrayidx60 = getelementptr i8, ptr %50, i64 %add59, !dbg !226
  %53 = load i8, ptr %arrayidx60, align 1, !dbg !226
  store i8 %53, ptr %buf_char, align 1, !dbg !231
  %54 = load i8, ptr %buf_char, align 1, !dbg !232
  %conv61 = zext i8 %54 to i32, !dbg !232
  %idxprom = sext i32 %conv61 to i64, !dbg !232
  %arrayidx62 = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !232
  %55 = load i8, ptr %arrayidx62, align 1, !dbg !232
  %conv63 = zext i8 %55 to i32, !dbg !232
  %and64 = and i32 %conv63, 151, !dbg !232
  %cmp65 = icmp ne i32 %and64, 0, !dbg !232
  br i1 %cmp65, label %if.then67, label %if.else, !dbg !234

if.then67:                                        ; preds = %if.end56
  %56 = load i8, ptr %buf_char, align 1, !dbg !235
  %conv68 = zext i8 %56 to i32, !dbg !235
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.10, i32 noundef %conv68) #5, !dbg !237
  br label %if.end69, !dbg !238

if.else:                                          ; preds = %if.end56
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.11) #5, !dbg !239
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then67
  br label %for.inc, !dbg !241

for.inc:                                          ; preds = %if.end69
  %57 = load i32, ptr %j, align 4, !dbg !242
  %inc = add i32 %57, 1, !dbg !242
  store i32 %inc, ptr %j, align 4, !dbg !242
  br label %for.cond44, !dbg !243, !llvm.loop !244

for.end70:                                        ; preds = %for.cond44
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.8) #5, !dbg !246
  br label %if.end71, !dbg !247

if.end71:                                         ; preds = %for.end70, %for.end
  %58 = load i32, ptr %i, align 4, !dbg !248
  %add72 = add i32 %58, 16, !dbg !248
  store i32 %add72, ptr %i, align 4, !dbg !248
  br label %while.cond, !dbg !126, !llvm.loop !249

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !251

cleanup:                                          ; preds = %while.end, %if.then51, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %display_data_only) #4, !dbg !252
  call void @llvm.lifetime.end.p0(i64 1, ptr %buf_char) #4, !dbg !252
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp32) #4, !dbg !252
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4, !dbg !252
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !252
  ret void, !dbg !252
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !253 dso_local void @acpi_os_printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_debug_dump_buffer(ptr noundef %buffer, i32 noundef %count, i32 noundef %display, i32 noundef %component_id) #0 align 16 !dbg !259 {
entry:
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %display.addr = alloca i32, align 4
  %component_id.addr = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !261, metadata !DIExpression()), !dbg !265
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !262, metadata !DIExpression()), !dbg !266
  store i32 %display, ptr %display.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %display.addr, metadata !263, metadata !DIExpression()), !dbg !267
  store i32 %component_id, ptr %component_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %component_id.addr, metadata !264, metadata !DIExpression()), !dbg !268
  %0 = load i32, ptr @acpi_dbg_level, align 4, !dbg !269
  %and = and i32 8192, %0, !dbg !271
  %tobool = icmp ne i32 %and, 0, !dbg !271
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !272

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %component_id.addr, align 4, !dbg !273
  %2 = load i32, ptr @acpi_dbg_layer, align 4, !dbg !274
  %and1 = and i32 %1, %2, !dbg !275
  %tobool2 = icmp ne i32 %and1, 0, !dbg !275
  br i1 %tobool2, label %if.end, label %if.then, !dbg !276

if.then:                                          ; preds = %land.lhs.true, %entry
  br label %return, !dbg !277

if.end:                                           ; preds = %land.lhs.true
  %3 = load ptr, ptr %buffer.addr, align 8, !dbg !279
  %4 = load i32, ptr %count.addr, align 4, !dbg !280
  %5 = load i32, ptr %display.addr, align 4, !dbg !281
  call void @acpi_ut_dump_buffer(ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0) #5, !dbg !282
  br label %return, !dbg !283

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !283
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!47}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/utbuffer.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5d3e49da43da84ec94cb2e47093f874e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 36)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 8)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 4)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 2)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 6)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !24, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !24, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 5)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !19, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !14, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 3)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !19, isLocal: true, isDefinition: true)
!47 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utbuffer.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utbuffer\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utbuffer.ll drivers/acpi/acpica/utbuffer.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !48, globals: !67, splitDebugInlining: false, nameTableKind: None)
!48 = !{!49, !56, !60, !61, !65, !66}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !50, line: 127, baseType: !51)
!50 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !52, line: 23, baseType: !53)
!52 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !54, line: 31, baseType: !55)
!54 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!55 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !52, line: 19, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !54, line: 24, baseType: !59)
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !52, line: 21, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !54, line: 27, baseType: !64)
!64 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !{!0, !7, !12, !17, !22, !27, !29, !31, !36, !38, !40, !45}
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 8, !"cf-protection-branch", i32 1}
!72 = !{i32 4, !"function_return_thunk_extern", i32 1}
!73 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!74 = !{i32 1, !"Code Model", i32 2}
!75 = !{i32 1, !"override-stack-alignment", i32 8}
!76 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!77 = distinct !DISubprogram(name: "acpi_ut_dump_buffer", scope: !2, file: !2, line: 34, type: !78, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !83)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !80, !62, !62, !62}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !52, line: 17, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !54, line: 21, baseType: !66)
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92}
!84 = !DILocalVariable(name: "buffer", arg: 1, scope: !77, file: !2, line: 34, type: !80)
!85 = !DILocalVariable(name: "count", arg: 2, scope: !77, file: !2, line: 34, type: !62)
!86 = !DILocalVariable(name: "display", arg: 3, scope: !77, file: !2, line: 34, type: !62)
!87 = !DILocalVariable(name: "base_offset", arg: 4, scope: !77, file: !2, line: 34, type: !62)
!88 = !DILocalVariable(name: "i", scope: !77, file: !2, line: 36, type: !62)
!89 = !DILocalVariable(name: "j", scope: !77, file: !2, line: 37, type: !62)
!90 = !DILocalVariable(name: "temp32", scope: !77, file: !2, line: 38, type: !62)
!91 = !DILocalVariable(name: "buf_char", scope: !77, file: !2, line: 39, type: !81)
!92 = !DILocalVariable(name: "display_data_only", scope: !77, file: !2, line: 40, type: !62)
!93 = !DILocation(line: 34, column: 30, scope: !77)
!94 = !DILocation(line: 34, column: 42, scope: !77)
!95 = !DILocation(line: 34, column: 53, scope: !77)
!96 = !DILocation(line: 34, column: 66, scope: !77)
!97 = !DILocation(line: 36, column: 2, scope: !77)
!98 = !DILocation(line: 36, column: 6, scope: !77)
!99 = !DILocation(line: 37, column: 2, scope: !77)
!100 = !DILocation(line: 37, column: 6, scope: !77)
!101 = !DILocation(line: 38, column: 2, scope: !77)
!102 = !DILocation(line: 38, column: 6, scope: !77)
!103 = !DILocation(line: 39, column: 2, scope: !77)
!104 = !DILocation(line: 39, column: 5, scope: !77)
!105 = !DILocation(line: 40, column: 2, scope: !77)
!106 = !DILocation(line: 40, column: 6, scope: !77)
!107 = !DILocation(line: 40, column: 26, scope: !77)
!108 = !DILocation(line: 40, column: 34, scope: !77)
!109 = !DILocation(line: 42, column: 10, scope: !77)
!110 = !DILocation(line: 43, column: 7, scope: !111)
!111 = distinct !DILexicalBlock(scope: !77, file: !2, line: 43, column: 6)
!112 = !DILocation(line: 43, column: 6, scope: !77)
!113 = !DILocation(line: 44, column: 3, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !2, line: 43, column: 15)
!115 = !DILocation(line: 45, column: 3, scope: !114)
!116 = !DILocation(line: 48, column: 7, scope: !117)
!117 = distinct !DILexicalBlock(scope: !77, file: !2, line: 48, column: 6)
!118 = !DILocation(line: 48, column: 13, scope: !117)
!119 = !DILocation(line: 48, column: 18, scope: !117)
!120 = !DILocation(line: 48, column: 22, scope: !117)
!121 = !DILocation(line: 48, column: 28, scope: !117)
!122 = !DILocation(line: 48, column: 6, scope: !77)
!123 = !DILocation(line: 49, column: 11, scope: !124)
!124 = distinct !DILexicalBlock(scope: !117, file: !2, line: 48, column: 37)
!125 = !DILocation(line: 50, column: 2, scope: !124)
!126 = !DILocation(line: 54, column: 2, scope: !77)
!127 = !DILocation(line: 54, column: 9, scope: !77)
!128 = !DILocation(line: 54, column: 13, scope: !77)
!129 = !DILocation(line: 54, column: 11, scope: !77)
!130 = !DILocation(line: 58, column: 8, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 58, column: 7)
!132 = distinct !DILexicalBlock(scope: !77, file: !2, line: 54, column: 20)
!133 = !DILocation(line: 58, column: 7, scope: !132)
!134 = !DILocation(line: 59, column: 31, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !2, line: 58, column: 27)
!136 = !DILocation(line: 59, column: 45, scope: !135)
!137 = !DILocation(line: 59, column: 43, scope: !135)
!138 = !DILocation(line: 59, column: 4, scope: !135)
!139 = !DILocation(line: 60, column: 3, scope: !135)
!140 = !DILocation(line: 64, column: 10, scope: !141)
!141 = distinct !DILexicalBlock(scope: !132, file: !2, line: 64, column: 3)
!142 = !DILocation(line: 64, column: 8, scope: !141)
!143 = !DILocation(line: 64, column: 15, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !2, line: 64, column: 3)
!145 = !DILocation(line: 64, column: 17, scope: !144)
!146 = !DILocation(line: 64, column: 3, scope: !141)
!147 = !DILocation(line: 65, column: 8, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !2, line: 65, column: 8)
!149 = distinct !DILexicalBlock(scope: !144, file: !2, line: 64, column: 24)
!150 = !DILocation(line: 65, column: 12, scope: !148)
!151 = !DILocation(line: 65, column: 10, scope: !148)
!152 = !DILocation(line: 65, column: 17, scope: !148)
!153 = !DILocation(line: 65, column: 14, scope: !148)
!154 = !DILocation(line: 65, column: 8, scope: !149)
!155 = !DILocation(line: 69, column: 29, scope: !156)
!156 = distinct !DILexicalBlock(scope: !148, file: !2, line: 65, column: 24)
!157 = !DILocation(line: 69, column: 37, scope: !156)
!158 = !DILocation(line: 69, column: 42, scope: !156)
!159 = !DILocation(line: 69, column: 5, scope: !156)
!160 = !DILocation(line: 70, column: 10, scope: !156)
!161 = !DILocation(line: 70, column: 7, scope: !156)
!162 = !DILocation(line: 71, column: 5, scope: !156)
!163 = distinct !{!163, !146, !164, !165, !166}
!164 = !DILocation(line: 110, column: 3, scope: !141)
!165 = !{!"llvm.loop.mustprogress"}
!166 = !{!"llvm.loop.unroll.disable"}
!167 = !DILocation(line: 74, column: 12, scope: !149)
!168 = !DILocation(line: 74, column: 4, scope: !149)
!169 = !DILocation(line: 75, column: 4, scope: !170)
!170 = distinct !DILexicalBlock(scope: !149, file: !2, line: 74, column: 21)
!171 = !DILocation(line: 79, column: 13, scope: !170)
!172 = !DILocation(line: 79, column: 31, scope: !170)
!173 = !DILocation(line: 79, column: 20, scope: !170)
!174 = !DILocation(line: 79, column: 35, scope: !170)
!175 = !DILocation(line: 79, column: 33, scope: !170)
!176 = !DILocation(line: 78, column: 5, scope: !170)
!177 = !DILocation(line: 80, column: 5, scope: !170)
!178 = !DILocation(line: 84, column: 5, scope: !170)
!179 = !DILocation(line: 86, column: 29, scope: !170)
!180 = !DILocation(line: 86, column: 5, scope: !170)
!181 = !DILocation(line: 87, column: 5, scope: !170)
!182 = !DILocation(line: 91, column: 5, scope: !170)
!183 = !DILocation(line: 93, column: 29, scope: !170)
!184 = !DILocation(line: 93, column: 5, scope: !170)
!185 = !DILocation(line: 94, column: 5, scope: !170)
!186 = !DILocation(line: 98, column: 5, scope: !170)
!187 = !DILocation(line: 100, column: 28, scope: !170)
!188 = !DILocation(line: 100, column: 5, scope: !170)
!189 = !DILocation(line: 102, column: 5, scope: !170)
!190 = !DILocation(line: 105, column: 29, scope: !170)
!191 = !DILocation(line: 105, column: 5, scope: !170)
!192 = !DILocation(line: 106, column: 5, scope: !170)
!193 = !DILocation(line: 109, column: 9, scope: !149)
!194 = !DILocation(line: 109, column: 6, scope: !149)
!195 = !DILocation(line: 64, column: 3, scope: !144)
!196 = !DILocation(line: 116, column: 8, scope: !197)
!197 = distinct !DILexicalBlock(scope: !132, file: !2, line: 116, column: 7)
!198 = !DILocation(line: 116, column: 7, scope: !132)
!199 = !DILocation(line: 117, column: 4, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !2, line: 116, column: 27)
!201 = !DILocation(line: 118, column: 11, scope: !202)
!202 = distinct !DILexicalBlock(scope: !200, file: !2, line: 118, column: 4)
!203 = !DILocation(line: 118, column: 9, scope: !202)
!204 = !DILocation(line: 118, column: 16, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !2, line: 118, column: 4)
!206 = !DILocation(line: 118, column: 18, scope: !205)
!207 = !DILocation(line: 118, column: 4, scope: !202)
!208 = !DILocation(line: 119, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !2, line: 119, column: 9)
!210 = distinct !DILexicalBlock(scope: !205, file: !2, line: 118, column: 29)
!211 = !DILocation(line: 119, column: 13, scope: !209)
!212 = !DILocation(line: 119, column: 11, scope: !209)
!213 = !DILocation(line: 119, column: 18, scope: !209)
!214 = !DILocation(line: 119, column: 15, scope: !209)
!215 = !DILocation(line: 119, column: 9, scope: !210)
!216 = !DILocation(line: 120, column: 6, scope: !217)
!217 = distinct !DILexicalBlock(scope: !209, file: !2, line: 119, column: 25)
!218 = !DILocation(line: 121, column: 6, scope: !217)
!219 = !DILocation(line: 128, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !210, file: !2, line: 128, column: 9)
!221 = !DILocation(line: 128, column: 11, scope: !220)
!222 = !DILocation(line: 128, column: 9, scope: !210)
!223 = !DILocation(line: 129, column: 6, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !2, line: 128, column: 17)
!225 = !DILocation(line: 130, column: 5, scope: !224)
!226 = !DILocation(line: 132, column: 16, scope: !210)
!227 = !DILocation(line: 132, column: 34, scope: !210)
!228 = !DILocation(line: 132, column: 23, scope: !210)
!229 = !DILocation(line: 132, column: 38, scope: !210)
!230 = !DILocation(line: 132, column: 36, scope: !210)
!231 = !DILocation(line: 132, column: 14, scope: !210)
!232 = !DILocation(line: 133, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !210, file: !2, line: 133, column: 9)
!234 = !DILocation(line: 133, column: 9, scope: !210)
!235 = !DILocation(line: 134, column: 27, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !2, line: 133, column: 28)
!237 = !DILocation(line: 134, column: 6, scope: !236)
!238 = !DILocation(line: 135, column: 5, scope: !236)
!239 = !DILocation(line: 136, column: 6, scope: !240)
!240 = distinct !DILexicalBlock(scope: !233, file: !2, line: 135, column: 12)
!241 = !DILocation(line: 138, column: 4, scope: !210)
!242 = !DILocation(line: 118, column: 25, scope: !205)
!243 = !DILocation(line: 118, column: 4, scope: !205)
!244 = distinct !{!244, !207, !245, !165, !166}
!245 = !DILocation(line: 138, column: 4, scope: !202)
!246 = !DILocation(line: 142, column: 4, scope: !200)
!247 = !DILocation(line: 143, column: 3, scope: !200)
!248 = !DILocation(line: 144, column: 5, scope: !132)
!249 = distinct !{!249, !126, !250, !165, !166}
!250 = !DILocation(line: 145, column: 2, scope: !77)
!251 = !DILocation(line: 147, column: 2, scope: !77)
!252 = !DILocation(line: 148, column: 1, scope: !77)
!253 = !DISubprogram(name: "acpi_os_printf", scope: !254, file: !254, line: 334, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!255 = !DISubroutineType(types: !256)
!256 = !{null, !257, null}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!259 = distinct !DISubprogram(name: "acpi_ut_debug_dump_buffer", scope: !2, file: !2, line: 170, type: !78, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !260)
!260 = !{!261, !262, !263, !264}
!261 = !DILocalVariable(name: "buffer", arg: 1, scope: !259, file: !2, line: 170, type: !80)
!262 = !DILocalVariable(name: "count", arg: 2, scope: !259, file: !2, line: 170, type: !62)
!263 = !DILocalVariable(name: "display", arg: 3, scope: !259, file: !2, line: 170, type: !62)
!264 = !DILocalVariable(name: "component_id", arg: 4, scope: !259, file: !2, line: 170, type: !62)
!265 = !DILocation(line: 170, column: 31, scope: !259)
!266 = !DILocation(line: 170, column: 43, scope: !259)
!267 = !DILocation(line: 170, column: 54, scope: !259)
!268 = !DILocation(line: 170, column: 67, scope: !259)
!269 = !DILocation(line: 175, column: 26, scope: !270)
!270 = distinct !DILexicalBlock(scope: !259, file: !2, line: 175, column: 6)
!271 = !DILocation(line: 175, column: 24, scope: !270)
!272 = !DILocation(line: 175, column: 42, scope: !270)
!273 = !DILocation(line: 176, column: 9, scope: !270)
!274 = !DILocation(line: 176, column: 24, scope: !270)
!275 = !DILocation(line: 176, column: 22, scope: !270)
!276 = !DILocation(line: 175, column: 6, scope: !259)
!277 = !DILocation(line: 177, column: 3, scope: !278)
!278 = distinct !DILexicalBlock(scope: !270, file: !2, line: 176, column: 42)
!279 = !DILocation(line: 180, column: 22, scope: !259)
!280 = !DILocation(line: 180, column: 30, scope: !259)
!281 = !DILocation(line: 180, column: 37, scope: !259)
!282 = !DILocation(line: 180, column: 2, scope: !259)
!283 = !DILocation(line: 181, column: 1, scope: !259)
