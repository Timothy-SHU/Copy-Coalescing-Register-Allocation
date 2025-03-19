; ModuleID = 'drivers/acpi/acpi_lpat.c'
source_filename = "drivers/acpi/acpi_lpat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_lpat_raw_to_temp: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_lpat_raw_to_temp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_lpat_temp_to_raw: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_lpat_temp_to_raw ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_lpat_get_conversion_table: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_lpat_get_conversion_table ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_lpat_free_conversion_table: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_lpat_free_conversion_table ; .previous"

%struct.acpi_buffer = type { i64, ptr }
%struct.acpi_lpat_conversion_table = type { ptr, i32 }
%struct.acpi_lpat = type { i32, i32 }
%struct.anon.2 = type { i32, i32, ptr }
%union.acpi_object = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.anon = type { i32, i64 }

@__UNIQUE_ID___addressable_acpi_lpat_raw_to_temp206 = internal global ptr @acpi_lpat_raw_to_temp, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_acpi_lpat_temp_to_raw207 = internal global ptr @acpi_lpat_temp_to_raw, section ".discard.addressable", align 8, !dbg !101
@__const.acpi_lpat_get_conversion_table.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"LPAT\00", align 1, !dbg !103
@__UNIQUE_ID___addressable_acpi_lpat_get_conversion_table208 = internal global ptr @acpi_lpat_get_conversion_table, section ".discard.addressable", align 8, !dbg !108
@__UNIQUE_ID___addressable_acpi_lpat_free_conversion_table209 = internal global ptr @acpi_lpat_free_conversion_table, section ".discard.addressable", align 8, !dbg !110
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !112
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_lpat_raw_to_temp206, ptr @__UNIQUE_ID___addressable_acpi_lpat_temp_to_raw207, ptr @__UNIQUE_ID___addressable_acpi_lpat_get_conversion_table208, ptr @__UNIQUE_ID___addressable_acpi_lpat_free_conversion_table209], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_lpat_raw_to_temp(ptr noundef %lpat_table, i32 noundef %raw) #0 align 16 !dbg !126 {
entry:
  %retval = alloca i32, align 4
  %lpat_table.addr = alloca ptr, align 8
  %raw.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %delta_temp = alloca i32, align 4
  %delta_raw = alloca i32, align 4
  %temp = alloca i32, align 4
  %lpat = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lpat_table, ptr %lpat_table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lpat_table.addr, metadata !135, metadata !DIExpression()), !dbg !142
  store i32 %raw, ptr %raw.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %raw.addr, metadata !136, metadata !DIExpression()), !dbg !143
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %i, metadata !137, metadata !DIExpression()), !dbg !145
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta_temp) #15, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %delta_temp, metadata !138, metadata !DIExpression()), !dbg !146
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta_raw) #15, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %delta_raw, metadata !139, metadata !DIExpression()), !dbg !147
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #15, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !140, metadata !DIExpression()), !dbg !148
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpat) #15, !dbg !149
  call void @llvm.dbg.declare(metadata ptr %lpat, metadata !141, metadata !DIExpression()), !dbg !150
  %0 = load ptr, ptr %lpat_table.addr, align 8, !dbg !151
  %lpat1 = getelementptr inbounds %struct.acpi_lpat_conversion_table, ptr %0, i32 0, i32 0, !dbg !152
  %1 = load ptr, ptr %lpat1, align 8, !dbg !152
  store ptr %1, ptr %lpat, align 8, !dbg !150
  store i32 0, ptr %i, align 4, !dbg !153
  br label %for.cond, !dbg !155

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !156
  %3 = load ptr, ptr %lpat_table.addr, align 8, !dbg !158
  %lpat_count = getelementptr inbounds %struct.acpi_lpat_conversion_table, ptr %3, i32 0, i32 1, !dbg !159
  %4 = load i32, ptr %lpat_count, align 8, !dbg !159
  %sub = sub i32 %4, 1, !dbg !160
  %cmp = icmp slt i32 %2, %sub, !dbg !161
  br i1 %cmp, label %for.body, label %for.end, !dbg !162

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %raw.addr, align 4, !dbg !163
  %6 = load ptr, ptr %lpat, align 8, !dbg !166
  %7 = load i32, ptr %i, align 4, !dbg !167
  %idxprom = sext i32 %7 to i64, !dbg !166
  %arrayidx = getelementptr %struct.acpi_lpat, ptr %6, i64 %idxprom, !dbg !166
  %raw2 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx, i32 0, i32 1, !dbg !168
  %8 = load i32, ptr %raw2, align 4, !dbg !168
  %cmp3 = icmp sge i32 %5, %8, !dbg !169
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false, !dbg !170

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, ptr %raw.addr, align 4, !dbg !171
  %10 = load ptr, ptr %lpat, align 8, !dbg !172
  %11 = load i32, ptr %i, align 4, !dbg !173
  %add = add i32 %11, 1, !dbg !174
  %idxprom4 = sext i32 %add to i64, !dbg !172
  %arrayidx5 = getelementptr %struct.acpi_lpat, ptr %10, i64 %idxprom4, !dbg !172
  %raw6 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx5, i32 0, i32 1, !dbg !175
  %12 = load i32, ptr %raw6, align 4, !dbg !175
  %cmp7 = icmp sle i32 %9, %12, !dbg !176
  br i1 %cmp7, label %if.then, label %lor.lhs.false, !dbg !177

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %13 = load i32, ptr %raw.addr, align 4, !dbg !178
  %14 = load ptr, ptr %lpat, align 8, !dbg !179
  %15 = load i32, ptr %i, align 4, !dbg !180
  %idxprom8 = sext i32 %15 to i64, !dbg !179
  %arrayidx9 = getelementptr %struct.acpi_lpat, ptr %14, i64 %idxprom8, !dbg !179
  %raw10 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx9, i32 0, i32 1, !dbg !181
  %16 = load i32, ptr %raw10, align 4, !dbg !181
  %cmp11 = icmp sle i32 %13, %16, !dbg !182
  br i1 %cmp11, label %land.lhs.true12, label %if.end, !dbg !183

land.lhs.true12:                                  ; preds = %lor.lhs.false
  %17 = load i32, ptr %raw.addr, align 4, !dbg !184
  %18 = load ptr, ptr %lpat, align 8, !dbg !185
  %19 = load i32, ptr %i, align 4, !dbg !186
  %add13 = add i32 %19, 1, !dbg !187
  %idxprom14 = sext i32 %add13 to i64, !dbg !185
  %arrayidx15 = getelementptr %struct.acpi_lpat, ptr %18, i64 %idxprom14, !dbg !185
  %raw16 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx15, i32 0, i32 1, !dbg !188
  %20 = load i32, ptr %raw16, align 4, !dbg !188
  %cmp17 = icmp sge i32 %17, %20, !dbg !189
  br i1 %cmp17, label %if.then, label %if.end, !dbg !190

if.then:                                          ; preds = %land.lhs.true12, %land.lhs.true
  br label %for.end, !dbg !191

if.end:                                           ; preds = %land.lhs.true12, %lor.lhs.false
  br label %for.inc, !dbg !192

for.inc:                                          ; preds = %if.end
  %21 = load i32, ptr %i, align 4, !dbg !193
  %inc = add i32 %21, 1, !dbg !193
  store i32 %inc, ptr %i, align 4, !dbg !193
  br label %for.cond, !dbg !194, !llvm.loop !195

for.end:                                          ; preds = %if.then, %for.cond
  %22 = load i32, ptr %i, align 4, !dbg !199
  %23 = load ptr, ptr %lpat_table.addr, align 8, !dbg !201
  %lpat_count18 = getelementptr inbounds %struct.acpi_lpat_conversion_table, ptr %23, i32 0, i32 1, !dbg !202
  %24 = load i32, ptr %lpat_count18, align 8, !dbg !202
  %sub19 = sub i32 %24, 1, !dbg !203
  %cmp20 = icmp eq i32 %22, %sub19, !dbg !204
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !205

if.then21:                                        ; preds = %for.end
  store i32 -2, ptr %retval, align 4, !dbg !206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !206

if.end22:                                         ; preds = %for.end
  %25 = load ptr, ptr %lpat, align 8, !dbg !207
  %26 = load i32, ptr %i, align 4, !dbg !208
  %add23 = add i32 %26, 1, !dbg !209
  %idxprom24 = sext i32 %add23 to i64, !dbg !207
  %arrayidx25 = getelementptr %struct.acpi_lpat, ptr %25, i64 %idxprom24, !dbg !207
  %temp26 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx25, i32 0, i32 0, !dbg !210
  %27 = load i32, ptr %temp26, align 4, !dbg !210
  %28 = load ptr, ptr %lpat, align 8, !dbg !211
  %29 = load i32, ptr %i, align 4, !dbg !212
  %idxprom27 = sext i32 %29 to i64, !dbg !211
  %arrayidx28 = getelementptr %struct.acpi_lpat, ptr %28, i64 %idxprom27, !dbg !211
  %temp29 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx28, i32 0, i32 0, !dbg !213
  %30 = load i32, ptr %temp29, align 4, !dbg !213
  %sub30 = sub i32 %27, %30, !dbg !214
  store i32 %sub30, ptr %delta_temp, align 4, !dbg !215
  %31 = load ptr, ptr %lpat, align 8, !dbg !216
  %32 = load i32, ptr %i, align 4, !dbg !217
  %add31 = add i32 %32, 1, !dbg !218
  %idxprom32 = sext i32 %add31 to i64, !dbg !216
  %arrayidx33 = getelementptr %struct.acpi_lpat, ptr %31, i64 %idxprom32, !dbg !216
  %raw34 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx33, i32 0, i32 1, !dbg !219
  %33 = load i32, ptr %raw34, align 4, !dbg !219
  %34 = load ptr, ptr %lpat, align 8, !dbg !220
  %35 = load i32, ptr %i, align 4, !dbg !221
  %idxprom35 = sext i32 %35 to i64, !dbg !220
  %arrayidx36 = getelementptr %struct.acpi_lpat, ptr %34, i64 %idxprom35, !dbg !220
  %raw37 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx36, i32 0, i32 1, !dbg !222
  %36 = load i32, ptr %raw37, align 4, !dbg !222
  %sub38 = sub i32 %33, %36, !dbg !223
  store i32 %sub38, ptr %delta_raw, align 4, !dbg !224
  %37 = load ptr, ptr %lpat, align 8, !dbg !225
  %38 = load i32, ptr %i, align 4, !dbg !226
  %idxprom39 = sext i32 %38 to i64, !dbg !225
  %arrayidx40 = getelementptr %struct.acpi_lpat, ptr %37, i64 %idxprom39, !dbg !225
  %temp41 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx40, i32 0, i32 0, !dbg !227
  %39 = load i32, ptr %temp41, align 4, !dbg !227
  %40 = load i32, ptr %raw.addr, align 4, !dbg !228
  %41 = load ptr, ptr %lpat, align 8, !dbg !229
  %42 = load i32, ptr %i, align 4, !dbg !230
  %idxprom42 = sext i32 %42 to i64, !dbg !229
  %arrayidx43 = getelementptr %struct.acpi_lpat, ptr %41, i64 %idxprom42, !dbg !229
  %raw44 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx43, i32 0, i32 1, !dbg !231
  %43 = load i32, ptr %raw44, align 4, !dbg !231
  %sub45 = sub i32 %40, %43, !dbg !232
  %44 = load i32, ptr %delta_temp, align 4, !dbg !233
  %mul = mul i32 %sub45, %44, !dbg !234
  %45 = load i32, ptr %delta_raw, align 4, !dbg !235
  %div = sdiv i32 %mul, %45, !dbg !236
  %add46 = add i32 %39, %div, !dbg !237
  store i32 %add46, ptr %temp, align 4, !dbg !238
  %46 = load i32, ptr %temp, align 4, !dbg !239
  store i32 %46, ptr %retval, align 4, !dbg !240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !240

cleanup:                                          ; preds = %if.end22, %if.then21
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpat) #15, !dbg !241
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #15, !dbg !241
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta_raw) #15, !dbg !241
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta_temp) #15, !dbg !241
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !241
  %47 = load i32, ptr %retval, align 4, !dbg !241
  ret i32 %47, !dbg !241
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_lpat_temp_to_raw(ptr noundef %lpat_table, i32 noundef %temp) #0 align 16 !dbg !242 {
entry:
  %retval = alloca i32, align 4
  %lpat_table.addr = alloca ptr, align 8
  %temp.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %delta_temp = alloca i32, align 4
  %delta_raw = alloca i32, align 4
  %raw = alloca i32, align 4
  %lpat = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lpat_table, ptr %lpat_table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lpat_table.addr, metadata !244, metadata !DIExpression()), !dbg !251
  store i32 %temp, ptr %temp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %temp.addr, metadata !245, metadata !DIExpression()), !dbg !252
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !253
  call void @llvm.dbg.declare(metadata ptr %i, metadata !246, metadata !DIExpression()), !dbg !254
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta_temp) #15, !dbg !253
  call void @llvm.dbg.declare(metadata ptr %delta_temp, metadata !247, metadata !DIExpression()), !dbg !255
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta_raw) #15, !dbg !253
  call void @llvm.dbg.declare(metadata ptr %delta_raw, metadata !248, metadata !DIExpression()), !dbg !256
  call void @llvm.lifetime.start.p0(i64 4, ptr %raw) #15, !dbg !253
  call void @llvm.dbg.declare(metadata ptr %raw, metadata !249, metadata !DIExpression()), !dbg !257
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpat) #15, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %lpat, metadata !250, metadata !DIExpression()), !dbg !259
  %0 = load ptr, ptr %lpat_table.addr, align 8, !dbg !260
  %lpat1 = getelementptr inbounds %struct.acpi_lpat_conversion_table, ptr %0, i32 0, i32 0, !dbg !261
  %1 = load ptr, ptr %lpat1, align 8, !dbg !261
  store ptr %1, ptr %lpat, align 8, !dbg !259
  store i32 0, ptr %i, align 4, !dbg !262
  br label %for.cond, !dbg !264

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !265
  %3 = load ptr, ptr %lpat_table.addr, align 8, !dbg !267
  %lpat_count = getelementptr inbounds %struct.acpi_lpat_conversion_table, ptr %3, i32 0, i32 1, !dbg !268
  %4 = load i32, ptr %lpat_count, align 8, !dbg !268
  %sub = sub i32 %4, 1, !dbg !269
  %cmp = icmp slt i32 %2, %sub, !dbg !270
  br i1 %cmp, label %for.body, label %for.end, !dbg !271

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %temp.addr, align 4, !dbg !272
  %6 = load ptr, ptr %lpat, align 8, !dbg !275
  %7 = load i32, ptr %i, align 4, !dbg !276
  %idxprom = sext i32 %7 to i64, !dbg !275
  %arrayidx = getelementptr %struct.acpi_lpat, ptr %6, i64 %idxprom, !dbg !275
  %temp2 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx, i32 0, i32 0, !dbg !277
  %8 = load i32, ptr %temp2, align 4, !dbg !277
  %cmp3 = icmp sge i32 %5, %8, !dbg !278
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !279

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, ptr %temp.addr, align 4, !dbg !280
  %10 = load ptr, ptr %lpat, align 8, !dbg !281
  %11 = load i32, ptr %i, align 4, !dbg !282
  %add = add i32 %11, 1, !dbg !283
  %idxprom4 = sext i32 %add to i64, !dbg !281
  %arrayidx5 = getelementptr %struct.acpi_lpat, ptr %10, i64 %idxprom4, !dbg !281
  %temp6 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx5, i32 0, i32 0, !dbg !284
  %12 = load i32, ptr %temp6, align 4, !dbg !284
  %cmp7 = icmp sle i32 %9, %12, !dbg !285
  br i1 %cmp7, label %if.then, label %if.end, !dbg !286

if.then:                                          ; preds = %land.lhs.true
  br label %for.end, !dbg !287

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !288

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4, !dbg !289
  %inc = add i32 %13, 1, !dbg !289
  store i32 %inc, ptr %i, align 4, !dbg !289
  br label %for.cond, !dbg !290, !llvm.loop !291

for.end:                                          ; preds = %if.then, %for.cond
  %14 = load i32, ptr %i, align 4, !dbg !293
  %15 = load ptr, ptr %lpat_table.addr, align 8, !dbg !295
  %lpat_count8 = getelementptr inbounds %struct.acpi_lpat_conversion_table, ptr %15, i32 0, i32 1, !dbg !296
  %16 = load i32, ptr %lpat_count8, align 8, !dbg !296
  %sub9 = sub i32 %16, 1, !dbg !297
  %cmp10 = icmp eq i32 %14, %sub9, !dbg !298
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !299

if.then11:                                        ; preds = %for.end
  store i32 -2, ptr %retval, align 4, !dbg !300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !300

if.end12:                                         ; preds = %for.end
  %17 = load ptr, ptr %lpat, align 8, !dbg !301
  %18 = load i32, ptr %i, align 4, !dbg !302
  %add13 = add i32 %18, 1, !dbg !303
  %idxprom14 = sext i32 %add13 to i64, !dbg !301
  %arrayidx15 = getelementptr %struct.acpi_lpat, ptr %17, i64 %idxprom14, !dbg !301
  %temp16 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx15, i32 0, i32 0, !dbg !304
  %19 = load i32, ptr %temp16, align 4, !dbg !304
  %20 = load ptr, ptr %lpat, align 8, !dbg !305
  %21 = load i32, ptr %i, align 4, !dbg !306
  %idxprom17 = sext i32 %21 to i64, !dbg !305
  %arrayidx18 = getelementptr %struct.acpi_lpat, ptr %20, i64 %idxprom17, !dbg !305
  %temp19 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx18, i32 0, i32 0, !dbg !307
  %22 = load i32, ptr %temp19, align 4, !dbg !307
  %sub20 = sub i32 %19, %22, !dbg !308
  store i32 %sub20, ptr %delta_temp, align 4, !dbg !309
  %23 = load ptr, ptr %lpat, align 8, !dbg !310
  %24 = load i32, ptr %i, align 4, !dbg !311
  %add21 = add i32 %24, 1, !dbg !312
  %idxprom22 = sext i32 %add21 to i64, !dbg !310
  %arrayidx23 = getelementptr %struct.acpi_lpat, ptr %23, i64 %idxprom22, !dbg !310
  %raw24 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx23, i32 0, i32 1, !dbg !313
  %25 = load i32, ptr %raw24, align 4, !dbg !313
  %26 = load ptr, ptr %lpat, align 8, !dbg !314
  %27 = load i32, ptr %i, align 4, !dbg !315
  %idxprom25 = sext i32 %27 to i64, !dbg !314
  %arrayidx26 = getelementptr %struct.acpi_lpat, ptr %26, i64 %idxprom25, !dbg !314
  %raw27 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx26, i32 0, i32 1, !dbg !316
  %28 = load i32, ptr %raw27, align 4, !dbg !316
  %sub28 = sub i32 %25, %28, !dbg !317
  store i32 %sub28, ptr %delta_raw, align 4, !dbg !318
  %29 = load ptr, ptr %lpat, align 8, !dbg !319
  %30 = load i32, ptr %i, align 4, !dbg !320
  %idxprom29 = sext i32 %30 to i64, !dbg !319
  %arrayidx30 = getelementptr %struct.acpi_lpat, ptr %29, i64 %idxprom29, !dbg !319
  %raw31 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx30, i32 0, i32 1, !dbg !321
  %31 = load i32, ptr %raw31, align 4, !dbg !321
  %32 = load i32, ptr %temp.addr, align 4, !dbg !322
  %33 = load ptr, ptr %lpat, align 8, !dbg !323
  %34 = load i32, ptr %i, align 4, !dbg !324
  %idxprom32 = sext i32 %34 to i64, !dbg !323
  %arrayidx33 = getelementptr %struct.acpi_lpat, ptr %33, i64 %idxprom32, !dbg !323
  %temp34 = getelementptr inbounds %struct.acpi_lpat, ptr %arrayidx33, i32 0, i32 0, !dbg !325
  %35 = load i32, ptr %temp34, align 4, !dbg !325
  %sub35 = sub i32 %32, %35, !dbg !326
  %36 = load i32, ptr %delta_raw, align 4, !dbg !327
  %mul = mul i32 %sub35, %36, !dbg !328
  %37 = load i32, ptr %delta_temp, align 4, !dbg !329
  %div = sdiv i32 %mul, %37, !dbg !330
  %add36 = add i32 %31, %div, !dbg !331
  store i32 %add36, ptr %raw, align 4, !dbg !332
  %38 = load i32, ptr %raw, align 4, !dbg !333
  store i32 %38, ptr %retval, align 4, !dbg !334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !334

cleanup:                                          ; preds = %if.end12, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpat) #15, !dbg !335
  call void @llvm.lifetime.end.p0(i64 4, ptr %raw) #15, !dbg !335
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta_raw) #15, !dbg !335
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta_temp) #15, !dbg !335
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !335
  %39 = load i32, ptr %retval, align 4, !dbg !335
  ret i32 %39, !dbg !335
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_lpat_get_conversion_table(ptr noundef %handle) #0 align 16 !dbg !336 {
entry:
  %retval = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %lpat_table = alloca ptr, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %obj_p = alloca ptr, align 8
  %obj_e = alloca ptr, align 8
  %lpat = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !340, metadata !DIExpression()), !dbg !355
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpat_table) #15, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %lpat_table, metadata !341, metadata !DIExpression()), !dbg !357
  store ptr null, ptr %lpat_table, align 8, !dbg !357
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #15, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !342, metadata !DIExpression()), !dbg !359
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_lpat_get_conversion_table.buffer, i64 16, i1 false), !dbg !359
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_p) #15, !dbg !360
  call void @llvm.dbg.declare(metadata ptr %obj_p, metadata !347, metadata !DIExpression()), !dbg !361
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_e) #15, !dbg !360
  call void @llvm.dbg.declare(metadata ptr %obj_e, metadata !348, metadata !DIExpression()), !dbg !362
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpat) #15, !dbg !363
  call void @llvm.dbg.declare(metadata ptr %lpat, metadata !349, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !363
  call void @llvm.dbg.declare(metadata ptr %i, metadata !351, metadata !DIExpression()), !dbg !365
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !366
  call void @llvm.dbg.declare(metadata ptr %status, metadata !352, metadata !DIExpression()), !dbg !367
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !368
  %call = call i32 @acpi_evaluate_object(ptr noundef %0, ptr noundef @.str, ptr noundef null, ptr noundef %buffer) #16, !dbg !369
  store i32 %call, ptr %status, align 4, !dbg !370
  %1 = load i32, ptr %status, align 4, !dbg !371
  %tobool = icmp ne i32 %1, 0, !dbg !371
  br i1 %tobool, label %if.then, label %if.end, !dbg !373

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !374

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !375
  %2 = load ptr, ptr %pointer, align 8, !dbg !375
  store ptr %2, ptr %obj_p, align 8, !dbg !376
  %3 = load ptr, ptr %obj_p, align 8, !dbg !377
  %tobool1 = icmp ne ptr %3, null, !dbg !377
  br i1 %tobool1, label %lor.lhs.false, label %if.then7, !dbg !379

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %obj_p, align 8, !dbg !380
  %5 = load i32, ptr %4, align 8, !dbg !381
  %cmp = icmp ne i32 %5, 4, !dbg !382
  br i1 %cmp, label %if.then7, label %lor.lhs.false2, !dbg !383

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %obj_p, align 8, !dbg !384
  %count = getelementptr inbounds %struct.anon.2, ptr %6, i32 0, i32 1, !dbg !385
  %7 = load i32, ptr %count, align 4, !dbg !385
  %rem = urem i32 %7, 2, !dbg !386
  %tobool3 = icmp ne i32 %rem, 0, !dbg !386
  br i1 %tobool3, label %if.then7, label %lor.lhs.false4, !dbg !387

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %8 = load ptr, ptr %obj_p, align 8, !dbg !388
  %count5 = getelementptr inbounds %struct.anon.2, ptr %8, i32 0, i32 1, !dbg !389
  %9 = load i32, ptr %count5, align 4, !dbg !389
  %cmp6 = icmp ult i32 %9, 4, !dbg !390
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !391

if.then7:                                         ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %if.end
  br label %out, !dbg !392

if.end8:                                          ; preds = %lor.lhs.false4
  %10 = load ptr, ptr %obj_p, align 8, !dbg !393
  %count9 = getelementptr inbounds %struct.anon.2, ptr %10, i32 0, i32 1, !dbg !394
  %11 = load i32, ptr %count9, align 4, !dbg !394
  %conv = zext i32 %11 to i64, !dbg !393
  %call10 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 4, i32 noundef 3264) #17, !dbg !395
  store ptr %call10, ptr %lpat, align 8, !dbg !396
  %12 = load ptr, ptr %lpat, align 8, !dbg !397
  %tobool11 = icmp ne ptr %12, null, !dbg !397
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !399

if.then12:                                        ; preds = %if.end8
  br label %out, !dbg !400

if.end13:                                         ; preds = %if.end8
  store i32 0, ptr %i, align 4, !dbg !401
  br label %for.cond, !dbg !403

for.cond:                                         ; preds = %for.inc, %if.end13
  %13 = load i32, ptr %i, align 4, !dbg !404
  %14 = load ptr, ptr %obj_p, align 8, !dbg !406
  %count14 = getelementptr inbounds %struct.anon.2, ptr %14, i32 0, i32 1, !dbg !407
  %15 = load i32, ptr %count14, align 4, !dbg !407
  %cmp15 = icmp ult i32 %13, %15, !dbg !408
  br i1 %cmp15, label %for.body, label %for.end, !dbg !409

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %obj_p, align 8, !dbg !410
  %elements = getelementptr inbounds %struct.anon.2, ptr %16, i32 0, i32 2, !dbg !412
  %17 = load ptr, ptr %elements, align 8, !dbg !412
  %18 = load i32, ptr %i, align 4, !dbg !413
  %idxprom = sext i32 %18 to i64, !dbg !410
  %arrayidx = getelementptr %union.acpi_object, ptr %17, i64 %idxprom, !dbg !410
  store ptr %arrayidx, ptr %obj_e, align 8, !dbg !414
  %19 = load ptr, ptr %obj_e, align 8, !dbg !415
  %20 = load i32, ptr %19, align 8, !dbg !417
  %cmp17 = icmp ne i32 %20, 1, !dbg !418
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !419

if.then19:                                        ; preds = %for.body
  %21 = load ptr, ptr %lpat, align 8, !dbg !420
  call void @kfree(ptr noundef %21) #16, !dbg !422
  br label %out, !dbg !423

if.end20:                                         ; preds = %for.body
  %22 = load ptr, ptr %obj_e, align 8, !dbg !424
  %value = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 1, !dbg !425
  %23 = load i64, ptr %value, align 8, !dbg !425
  %conv21 = trunc i64 %23 to i32, !dbg !426
  %24 = load ptr, ptr %lpat, align 8, !dbg !427
  %25 = load i32, ptr %i, align 4, !dbg !428
  %idxprom22 = sext i32 %25 to i64, !dbg !427
  %arrayidx23 = getelementptr i32, ptr %24, i64 %idxprom22, !dbg !427
  store i32 %conv21, ptr %arrayidx23, align 4, !dbg !429
  br label %for.inc, !dbg !430

for.inc:                                          ; preds = %if.end20
  %26 = load i32, ptr %i, align 4, !dbg !431
  %inc = add i32 %26, 1, !dbg !431
  store i32 %inc, ptr %i, align 4, !dbg !431
  br label %for.cond, !dbg !432, !llvm.loop !433

for.end:                                          ; preds = %for.cond
  %call24 = call noalias ptr @kzalloc(i64 noundef 16, i32 noundef 3264) #18, !dbg !435
  store ptr %call24, ptr %lpat_table, align 8, !dbg !436
  %27 = load ptr, ptr %lpat_table, align 8, !dbg !437
  %tobool25 = icmp ne ptr %27, null, !dbg !437
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !439

if.then26:                                        ; preds = %for.end
  %28 = load ptr, ptr %lpat, align 8, !dbg !440
  call void @kfree(ptr noundef %28) #16, !dbg !442
  br label %out, !dbg !443

if.end27:                                         ; preds = %for.end
  %29 = load ptr, ptr %lpat, align 8, !dbg !444
  %30 = load ptr, ptr %lpat_table, align 8, !dbg !445
  %lpat28 = getelementptr inbounds %struct.acpi_lpat_conversion_table, ptr %30, i32 0, i32 0, !dbg !446
  store ptr %29, ptr %lpat28, align 8, !dbg !447
  %31 = load ptr, ptr %obj_p, align 8, !dbg !448
  %count29 = getelementptr inbounds %struct.anon.2, ptr %31, i32 0, i32 1, !dbg !449
  %32 = load i32, ptr %count29, align 4, !dbg !449
  %div = udiv i32 %32, 2, !dbg !450
  %33 = load ptr, ptr %lpat_table, align 8, !dbg !451
  %lpat_count = getelementptr inbounds %struct.acpi_lpat_conversion_table, ptr %33, i32 0, i32 1, !dbg !452
  store i32 %div, ptr %lpat_count, align 8, !dbg !453
  br label %out, !dbg !451

out:                                              ; preds = %if.end27, %if.then26, %if.then19, %if.then12, %if.then7
  call void @llvm.dbg.label(metadata !354), !dbg !454
  %pointer30 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !455
  %34 = load ptr, ptr %pointer30, align 8, !dbg !455
  call void @kfree(ptr noundef %34) #16, !dbg !456
  %35 = load ptr, ptr %lpat_table, align 8, !dbg !457
  store ptr %35, ptr %retval, align 8, !dbg !458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !458

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !459
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpat) #15, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_e) #15, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_p) #15, !dbg !459
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #15, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpat_table) #15, !dbg !459
  %36 = load ptr, ptr %retval, align 8, !dbg !459
  ret ptr %36, !dbg !459
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !460 dso_local i32 @acpi_evaluate_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !471 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !479, metadata !DIExpression()), !dbg !482
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !480, metadata !DIExpression()), !dbg !483
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !481, metadata !DIExpression()), !dbg !484
  %0 = load i64, ptr %n.addr, align 8, !dbg !485
  %1 = load i64, ptr %size.addr, align 8, !dbg !486
  %2 = load i32, ptr %flags.addr, align 4, !dbg !487
  %or = or i32 %2, 256, !dbg !488
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #17, !dbg !489
  ret ptr %call, !dbg !490
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !491 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !496 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !500, metadata !DIExpression()), !dbg !502
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !501, metadata !DIExpression()), !dbg !503
  %0 = load i64, ptr %size.addr, align 8, !dbg !504
  %1 = load i32, ptr %flags.addr, align 4, !dbg !505
  %or = or i32 %1, 256, !dbg !506
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !507
  ret ptr %call, !dbg !508
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_lpat_free_conversion_table(ptr noundef %lpat_table) #0 align 16 !dbg !509 {
entry:
  %lpat_table.addr = alloca ptr, align 8
  store ptr %lpat_table, ptr %lpat_table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lpat_table.addr, metadata !513, metadata !DIExpression()), !dbg !514
  %0 = load ptr, ptr %lpat_table.addr, align 8, !dbg !515
  %tobool = icmp ne ptr %0, null, !dbg !515
  br i1 %tobool, label %if.then, label %if.end, !dbg !517

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %lpat_table.addr, align 8, !dbg !518
  %lpat = getelementptr inbounds %struct.acpi_lpat_conversion_table, ptr %1, i32 0, i32 0, !dbg !520
  %2 = load ptr, ptr %lpat, align 8, !dbg !520
  call void @kfree(ptr noundef %2) #16, !dbg !521
  %3 = load ptr, ptr %lpat_table.addr, align 8, !dbg !522
  call void @kfree(ptr noundef %3) #16, !dbg !523
  br label %if.end, !dbg !524

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !525
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !526 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !528, metadata !DIExpression()), !dbg !532
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !529, metadata !DIExpression()), !dbg !533
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !530, metadata !DIExpression()), !dbg !534
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !535
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !531, metadata !DIExpression()), !dbg !536
  %0 = load i64, ptr %n.addr, align 8, !dbg !537
  %1 = load i64, ptr %size.addr, align 8, !dbg !537
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !537
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !537
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !537
  store i64 %4, ptr %bytes, align 8, !dbg !537
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #16, !dbg !537
  %lnot = xor i1 %call, true, !dbg !537
  %lnot1 = xor i1 %lnot, true, !dbg !537
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !537
  %conv = sext i32 %lnot.ext to i64, !dbg !537
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !537
  %tobool = icmp ne i64 %expval, 0, !dbg !537
  br i1 %tobool, label %if.then, label %if.end, !dbg !539

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !540

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !541
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !543
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !544

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !545
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !546
  br i1 %8, label %if.then2, label %if.end4, !dbg !547

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !548
  %10 = load i32, ptr %flags.addr, align 4, !dbg !549
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #18, !dbg !550
  store ptr %call3, ptr %retval, align 8, !dbg !551
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !551

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !552
  %12 = load i32, ptr %flags.addr, align 4, !dbg !553
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #18, !dbg !554
  store ptr %call5, ptr %retval, align 8, !dbg !555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !555

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !556
  %13 = load ptr, ptr %retval, align 8, !dbg !556
  ret ptr %13, !dbg !556
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #7 align 16 !dbg !557 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !564, metadata !DIExpression()), !dbg !565
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !566, !range !567, !noundef !568
  %tobool = trunc i8 %0 to i1, !dbg !566
  %lnot = xor i1 %tobool, true, !dbg !566
  %lnot1 = xor i1 %lnot, true, !dbg !566
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !566
  %conv = sext i32 %lnot.ext to i64, !dbg !566
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !566
  %tobool2 = icmp ne i64 %expval, 0, !dbg !566
  ret i1 %tobool2, !dbg !569
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !570 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !572, metadata !DIExpression()), !dbg !577
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !573, metadata !DIExpression()), !dbg !578
  %0 = load i64, ptr %size.addr, align 8, !dbg !579
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !580
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !581

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !582
  %tobool = icmp ne i64 %2, 0, !dbg !582
  br i1 %tobool, label %if.then, label %if.end7, !dbg !583

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %index, metadata !574, metadata !DIExpression()), !dbg !585
  %3 = load i64, ptr %size.addr, align 8, !dbg !586
  %cmp = icmp ugt i64 %3, 8192, !dbg !588
  br i1 %cmp, label %if.then1, label %if.end, !dbg !589

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !590
  %5 = load i32, ptr %flags.addr, align 4, !dbg !591
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !592
  store ptr %call, ptr %retval, align 8, !dbg !593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !593

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !594
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !594
  store i32 %call2, ptr %index, align 4, !dbg !595
  %7 = load i32, ptr %flags.addr, align 4, !dbg !596
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !597
  %9 = ptrtoint ptr %8 to i64, !dbg !597
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !598
  %idxprom = zext i32 %call3 to i64, !dbg !599
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !599
  %10 = load i32, ptr %index, align 4, !dbg !600
  %idxprom4 = zext i32 %10 to i64, !dbg !599
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !599
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !599
  %12 = load i32, ptr %flags.addr, align 4, !dbg !601
  %13 = load i64, ptr %size.addr, align 8, !dbg !602
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !603
  store ptr %call6, ptr %retval, align 8, !dbg !604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !604

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !605
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !606
  %15 = load i32, ptr %flags.addr, align 4, !dbg !607
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !608
  store ptr %call8, ptr %retval, align 8, !dbg !609
  br label %return, !dbg !609

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !610
  ret ptr %16, !dbg !610
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !611 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !612 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !613 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !617, metadata !DIExpression()), !dbg !619
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !618, metadata !DIExpression()), !dbg !620
  %0 = load i64, ptr %size.addr, align 8, !dbg !621
  %tobool = icmp ne i64 %0, 0, !dbg !621
  br i1 %tobool, label %if.end, label %if.then, !dbg !623

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !624
  br label %return, !dbg !624

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !625
  %cmp = icmp ule i64 %1, 8, !dbg !627
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !628

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !629
  br label %return, !dbg !629

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !630
  %cmp3 = icmp ugt i64 %2, 64, !dbg !632
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !633

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !634
  %cmp4 = icmp ule i64 %3, 96, !dbg !635
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !636

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !637
  br label %return, !dbg !637

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !638
  %cmp7 = icmp ugt i64 %4, 128, !dbg !640
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !641

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !642
  %cmp9 = icmp ule i64 %5, 192, !dbg !643
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !644

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !645
  br label %return, !dbg !645

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !646
  %cmp12 = icmp ule i64 %6, 8, !dbg !648
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !649

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !650
  br label %return, !dbg !650

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !651
  %cmp15 = icmp ule i64 %7, 16, !dbg !653
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !654

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !655
  br label %return, !dbg !655

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !656
  %cmp18 = icmp ule i64 %8, 32, !dbg !658
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !659

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !660
  br label %return, !dbg !660

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !661
  %cmp21 = icmp ule i64 %9, 64, !dbg !663
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !664

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !665
  br label %return, !dbg !665

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !666
  %cmp24 = icmp ule i64 %10, 128, !dbg !668
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !669

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !670
  br label %return, !dbg !670

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !671
  %cmp27 = icmp ule i64 %11, 256, !dbg !673
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !674

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !675
  br label %return, !dbg !675

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !676
  %cmp30 = icmp ule i64 %12, 512, !dbg !678
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !679

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !680
  br label %return, !dbg !680

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !681
  %cmp33 = icmp ule i64 %13, 1024, !dbg !683
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !684

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !685
  br label %return, !dbg !685

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !686
  %cmp36 = icmp ule i64 %14, 2048, !dbg !688
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !689

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !690
  br label %return, !dbg !690

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !691
  %cmp39 = icmp ule i64 %15, 4096, !dbg !693
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !694

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !695
  br label %return, !dbg !695

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !696
  %cmp42 = icmp ule i64 %16, 8192, !dbg !698
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !699

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !700
  br label %return, !dbg !700

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !701
  %cmp45 = icmp ule i64 %17, 16384, !dbg !703
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !704

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !705
  br label %return, !dbg !705

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !706
  %cmp48 = icmp ule i64 %18, 32768, !dbg !708
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !709

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !710
  br label %return, !dbg !710

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !711
  %cmp51 = icmp ule i64 %19, 65536, !dbg !713
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !714

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !715
  br label %return, !dbg !715

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !716
  %cmp54 = icmp ule i64 %20, 131072, !dbg !718
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !719

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !720
  br label %return, !dbg !720

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !721
  %cmp57 = icmp ule i64 %21, 262144, !dbg !723
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !724

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !725
  br label %return, !dbg !725

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !726
  %cmp60 = icmp ule i64 %22, 524288, !dbg !728
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !729

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !730
  br label %return, !dbg !730

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !731
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !733
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !734

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !735
  br label %return, !dbg !735

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !736
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !738
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !739

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !740
  br label %return, !dbg !740

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !741, !range !567, !noundef !568
  %tobool69 = trunc i8 %25 to i1, !dbg !741
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !743

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !744

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_125() #20, !dbg !745, !srcloc !748
  unreachable, !dbg !745

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !749

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !750

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !751

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !753

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !751

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #15, !dbg !755, !srcloc !757
  br label %do.end75, !dbg !755

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !751

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !758
  br label %return, !dbg !758

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !759
  ret i32 %26, !dbg !759
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !760 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !766 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !770, metadata !DIExpression()), !dbg !772
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !771, metadata !DIExpression()), !dbg !773
  %0 = load i32, ptr %flags.addr, align 4, !dbg !774
  %and = and i32 %0, 17, !dbg !774
  %cmp = icmp eq i32 %and, 0, !dbg !774
  %lnot = xor i1 %cmp, true, !dbg !774
  %lnot1 = xor i1 %lnot, true, !dbg !774
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !774
  %conv = sext i32 %lnot.ext to i64, !dbg !774
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !774
  %tobool = icmp ne i64 %expval, 0, !dbg !774
  br i1 %tobool, label %if.then, label %if.end, !dbg !776

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !777
  br label %return, !dbg !777

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !778
  %and2 = and i32 %1, 1, !dbg !780
  %tobool3 = icmp ne i32 %and2, 0, !dbg !780
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !781

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !782
  br label %return, !dbg !782

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !783
  br label %return, !dbg !783

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !785
  ret i32 %2, !dbg !785
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !786 dso_local void @__compiletime_assert_125() #14

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0,1) }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_lpat_raw_to_temp206", scope: !2, file: !3, line: 44, type: !22, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.acpi_lpat.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22acpi_lpat\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpi_lpat.ll drivers/acpi/acpi_lpat.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !100, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpi_lpat.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "93d7de5583f47f232a01a54b83a1befc")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !{!22, !23, !30, !87, !89, !92, !99}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !24, line: 127, baseType: !25)
!24 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !26, line: 23, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !28, line: 31, baseType: !29)
!28 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!29 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !24, line: 908, size: 192, elements: !32)
!32 = !{!33, !37, !42, !50, !60, !66, !73, !81}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !31, file: !24, line: 909, baseType: !34, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !24, line: 644, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !26, line: 21, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !28, line: 27, baseType: !7)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !31, file: !24, line: 913, baseType: !38, size: 128)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !31, file: !24, line: 910, size: 128, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !24, line: 911, baseType: !34, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !38, file: !24, line: 912, baseType: !25, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !31, file: !24, line: 919, baseType: !43, size: 128)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !31, file: !24, line: 915, size: 128, elements: !44)
!44 = !{!45, !46, !47}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !43, file: !24, line: 916, baseType: !34, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !43, file: !24, line: 917, baseType: !35, size: 32, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !43, file: !24, line: 918, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !31, file: !24, line: 925, baseType: !51, size: 128)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !31, file: !24, line: 921, size: 128, elements: !52)
!52 = !{!53, !54, !55}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !24, line: 922, baseType: !34, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !51, file: !24, line: 923, baseType: !35, size: 32, offset: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !51, file: !24, line: 924, baseType: !56, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !26, line: 17, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !28, line: 21, baseType: !59)
!59 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !31, file: !24, line: 931, baseType: !61, size: 128)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !31, file: !24, line: 927, size: 128, elements: !62)
!62 = !{!63, !64, !65}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !24, line: 928, baseType: !34, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !61, file: !24, line: 929, baseType: !35, size: 32, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !61, file: !24, line: 930, baseType: !30, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !31, file: !24, line: 937, baseType: !67, size: 128)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !31, file: !24, line: 933, size: 128, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !24, line: 934, baseType: !34, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !67, file: !24, line: 935, baseType: !34, size: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !67, file: !24, line: 936, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !24, line: 424, baseType: !22)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !31, file: !24, line: 944, baseType: !74, size: 192)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !31, file: !24, line: 939, size: 192, elements: !75)
!75 = !{!76, !77, !78, !80}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !74, file: !24, line: 940, baseType: !34, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !74, file: !24, line: 941, baseType: !35, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !74, file: !24, line: 942, baseType: !79, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !24, line: 128, baseType: !25)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !74, file: !24, line: 943, baseType: !35, size: 32, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !31, file: !24, line: 950, baseType: !82, size: 96)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !31, file: !24, line: 946, size: 96, elements: !83)
!83 = !{!84, !85, !86}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !24, line: 947, baseType: !34, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !82, file: !24, line: 948, baseType: !35, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !82, file: !24, line: 949, baseType: !35, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !88, line: 154, baseType: !7)
!88 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !26, line: 22, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !28, line: 30, baseType: !91)
!91 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpat", file: !94, line: 11, size: 64, elements: !95)
!94 = !DIFile(filename: "./include/acpi/acpi_lpat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fe14a1de6f07bb276006c9d7dd4562ac")
!95 = !{!96, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !93, file: !94, line: 12, baseType: !97, size: 32)
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !93, file: !94, line: 13, baseType: !97, size: 32, offset: 32)
!99 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!100 = !{!0, !101, !103, !108, !110, !112}
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_lpat_temp_to_raw207", scope: !2, file: !3, line: 77, type: !22, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 40, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 5)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_lpat_get_conversion_table208", scope: !2, file: !3, line: 133, type: !22, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_lpat_free_conversion_table209", scope: !2, file: !3, line: 151, type: !22, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 168, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 21)
!117 = !{i32 7, !"Dwarf Version", i32 5}
!118 = !{i32 2, !"Debug Info Version", i32 3}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 8, !"cf-protection-branch", i32 1}
!121 = !{i32 4, !"function_return_thunk_extern", i32 1}
!122 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!123 = !{i32 1, !"Code Model", i32 2}
!124 = !{i32 1, !"override-stack-alignment", i32 8}
!125 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!126 = distinct !DISubprogram(name: "acpi_lpat_raw_to_temp", scope: !3, file: !3, line: 23, type: !127, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!127 = !DISubroutineType(types: !128)
!128 = !{!97, !129, !97}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpat_conversion_table", file: !94, line: 16, size: 128, elements: !131)
!131 = !{!132, !133}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "lpat", scope: !130, file: !94, line: 17, baseType: !92, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "lpat_count", scope: !130, file: !94, line: 18, baseType: !97, size: 32, offset: 64)
!134 = !{!135, !136, !137, !138, !139, !140, !141}
!135 = !DILocalVariable(name: "lpat_table", arg: 1, scope: !126, file: !3, line: 23, type: !129)
!136 = !DILocalVariable(name: "raw", arg: 2, scope: !126, file: !3, line: 24, type: !97)
!137 = !DILocalVariable(name: "i", scope: !126, file: !3, line: 26, type: !97)
!138 = !DILocalVariable(name: "delta_temp", scope: !126, file: !3, line: 26, type: !97)
!139 = !DILocalVariable(name: "delta_raw", scope: !126, file: !3, line: 26, type: !97)
!140 = !DILocalVariable(name: "temp", scope: !126, file: !3, line: 26, type: !97)
!141 = !DILocalVariable(name: "lpat", scope: !126, file: !3, line: 27, type: !92)
!142 = !DILocation(line: 23, column: 62, scope: !126)
!143 = !DILocation(line: 24, column: 10, scope: !126)
!144 = !DILocation(line: 26, column: 2, scope: !126)
!145 = !DILocation(line: 26, column: 6, scope: !126)
!146 = !DILocation(line: 26, column: 9, scope: !126)
!147 = !DILocation(line: 26, column: 21, scope: !126)
!148 = !DILocation(line: 26, column: 32, scope: !126)
!149 = !DILocation(line: 27, column: 2, scope: !126)
!150 = !DILocation(line: 27, column: 20, scope: !126)
!151 = !DILocation(line: 27, column: 27, scope: !126)
!152 = !DILocation(line: 27, column: 39, scope: !126)
!153 = !DILocation(line: 29, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !126, file: !3, line: 29, column: 2)
!155 = !DILocation(line: 29, column: 7, scope: !154)
!156 = !DILocation(line: 29, column: 14, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !3, line: 29, column: 2)
!158 = !DILocation(line: 29, column: 18, scope: !157)
!159 = !DILocation(line: 29, column: 30, scope: !157)
!160 = !DILocation(line: 29, column: 41, scope: !157)
!161 = !DILocation(line: 29, column: 16, scope: !157)
!162 = !DILocation(line: 29, column: 2, scope: !154)
!163 = !DILocation(line: 30, column: 8, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !3, line: 30, column: 7)
!165 = distinct !DILexicalBlock(scope: !157, file: !3, line: 29, column: 51)
!166 = !DILocation(line: 30, column: 15, scope: !164)
!167 = !DILocation(line: 30, column: 20, scope: !164)
!168 = !DILocation(line: 30, column: 23, scope: !164)
!169 = !DILocation(line: 30, column: 12, scope: !164)
!170 = !DILocation(line: 30, column: 27, scope: !164)
!171 = !DILocation(line: 30, column: 30, scope: !164)
!172 = !DILocation(line: 30, column: 37, scope: !164)
!173 = !DILocation(line: 30, column: 42, scope: !164)
!174 = !DILocation(line: 30, column: 43, scope: !164)
!175 = !DILocation(line: 30, column: 47, scope: !164)
!176 = !DILocation(line: 30, column: 34, scope: !164)
!177 = !DILocation(line: 30, column: 52, scope: !164)
!178 = !DILocation(line: 31, column: 8, scope: !164)
!179 = !DILocation(line: 31, column: 15, scope: !164)
!180 = !DILocation(line: 31, column: 20, scope: !164)
!181 = !DILocation(line: 31, column: 23, scope: !164)
!182 = !DILocation(line: 31, column: 12, scope: !164)
!183 = !DILocation(line: 31, column: 27, scope: !164)
!184 = !DILocation(line: 31, column: 30, scope: !164)
!185 = !DILocation(line: 31, column: 37, scope: !164)
!186 = !DILocation(line: 31, column: 42, scope: !164)
!187 = !DILocation(line: 31, column: 43, scope: !164)
!188 = !DILocation(line: 31, column: 47, scope: !164)
!189 = !DILocation(line: 31, column: 34, scope: !164)
!190 = !DILocation(line: 30, column: 7, scope: !165)
!191 = !DILocation(line: 32, column: 4, scope: !164)
!192 = !DILocation(line: 33, column: 2, scope: !165)
!193 = !DILocation(line: 29, column: 47, scope: !157)
!194 = !DILocation(line: 29, column: 2, scope: !157)
!195 = distinct !{!195, !162, !196, !197, !198}
!196 = !DILocation(line: 33, column: 2, scope: !154)
!197 = !{!"llvm.loop.mustprogress"}
!198 = !{!"llvm.loop.unroll.disable"}
!199 = !DILocation(line: 35, column: 6, scope: !200)
!200 = distinct !DILexicalBlock(scope: !126, file: !3, line: 35, column: 6)
!201 = !DILocation(line: 35, column: 11, scope: !200)
!202 = !DILocation(line: 35, column: 23, scope: !200)
!203 = !DILocation(line: 35, column: 34, scope: !200)
!204 = !DILocation(line: 35, column: 8, scope: !200)
!205 = !DILocation(line: 35, column: 6, scope: !126)
!206 = !DILocation(line: 36, column: 3, scope: !200)
!207 = !DILocation(line: 38, column: 15, scope: !126)
!208 = !DILocation(line: 38, column: 20, scope: !126)
!209 = !DILocation(line: 38, column: 21, scope: !126)
!210 = !DILocation(line: 38, column: 25, scope: !126)
!211 = !DILocation(line: 38, column: 32, scope: !126)
!212 = !DILocation(line: 38, column: 37, scope: !126)
!213 = !DILocation(line: 38, column: 40, scope: !126)
!214 = !DILocation(line: 38, column: 30, scope: !126)
!215 = !DILocation(line: 38, column: 13, scope: !126)
!216 = !DILocation(line: 39, column: 14, scope: !126)
!217 = !DILocation(line: 39, column: 19, scope: !126)
!218 = !DILocation(line: 39, column: 20, scope: !126)
!219 = !DILocation(line: 39, column: 24, scope: !126)
!220 = !DILocation(line: 39, column: 30, scope: !126)
!221 = !DILocation(line: 39, column: 35, scope: !126)
!222 = !DILocation(line: 39, column: 38, scope: !126)
!223 = !DILocation(line: 39, column: 28, scope: !126)
!224 = !DILocation(line: 39, column: 12, scope: !126)
!225 = !DILocation(line: 40, column: 9, scope: !126)
!226 = !DILocation(line: 40, column: 14, scope: !126)
!227 = !DILocation(line: 40, column: 17, scope: !126)
!228 = !DILocation(line: 40, column: 25, scope: !126)
!229 = !DILocation(line: 40, column: 31, scope: !126)
!230 = !DILocation(line: 40, column: 36, scope: !126)
!231 = !DILocation(line: 40, column: 39, scope: !126)
!232 = !DILocation(line: 40, column: 29, scope: !126)
!233 = !DILocation(line: 40, column: 46, scope: !126)
!234 = !DILocation(line: 40, column: 44, scope: !126)
!235 = !DILocation(line: 40, column: 59, scope: !126)
!236 = !DILocation(line: 40, column: 57, scope: !126)
!237 = !DILocation(line: 40, column: 22, scope: !126)
!238 = !DILocation(line: 40, column: 7, scope: !126)
!239 = !DILocation(line: 42, column: 9, scope: !126)
!240 = !DILocation(line: 42, column: 2, scope: !126)
!241 = !DILocation(line: 43, column: 1, scope: !126)
!242 = distinct !DISubprogram(name: "acpi_lpat_temp_to_raw", scope: !3, file: !3, line: 57, type: !127, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250}
!244 = !DILocalVariable(name: "lpat_table", arg: 1, scope: !242, file: !3, line: 57, type: !129)
!245 = !DILocalVariable(name: "temp", arg: 2, scope: !242, file: !3, line: 58, type: !97)
!246 = !DILocalVariable(name: "i", scope: !242, file: !3, line: 60, type: !97)
!247 = !DILocalVariable(name: "delta_temp", scope: !242, file: !3, line: 60, type: !97)
!248 = !DILocalVariable(name: "delta_raw", scope: !242, file: !3, line: 60, type: !97)
!249 = !DILocalVariable(name: "raw", scope: !242, file: !3, line: 60, type: !97)
!250 = !DILocalVariable(name: "lpat", scope: !242, file: !3, line: 61, type: !92)
!251 = !DILocation(line: 57, column: 62, scope: !242)
!252 = !DILocation(line: 58, column: 10, scope: !242)
!253 = !DILocation(line: 60, column: 2, scope: !242)
!254 = !DILocation(line: 60, column: 6, scope: !242)
!255 = !DILocation(line: 60, column: 9, scope: !242)
!256 = !DILocation(line: 60, column: 21, scope: !242)
!257 = !DILocation(line: 60, column: 32, scope: !242)
!258 = !DILocation(line: 61, column: 2, scope: !242)
!259 = !DILocation(line: 61, column: 20, scope: !242)
!260 = !DILocation(line: 61, column: 27, scope: !242)
!261 = !DILocation(line: 61, column: 39, scope: !242)
!262 = !DILocation(line: 63, column: 9, scope: !263)
!263 = distinct !DILexicalBlock(scope: !242, file: !3, line: 63, column: 2)
!264 = !DILocation(line: 63, column: 7, scope: !263)
!265 = !DILocation(line: 63, column: 14, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !3, line: 63, column: 2)
!267 = !DILocation(line: 63, column: 18, scope: !266)
!268 = !DILocation(line: 63, column: 30, scope: !266)
!269 = !DILocation(line: 63, column: 41, scope: !266)
!270 = !DILocation(line: 63, column: 16, scope: !266)
!271 = !DILocation(line: 63, column: 2, scope: !263)
!272 = !DILocation(line: 64, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 64, column: 7)
!274 = distinct !DILexicalBlock(scope: !266, file: !3, line: 63, column: 51)
!275 = !DILocation(line: 64, column: 15, scope: !273)
!276 = !DILocation(line: 64, column: 20, scope: !273)
!277 = !DILocation(line: 64, column: 23, scope: !273)
!278 = !DILocation(line: 64, column: 12, scope: !273)
!279 = !DILocation(line: 64, column: 28, scope: !273)
!280 = !DILocation(line: 64, column: 31, scope: !273)
!281 = !DILocation(line: 64, column: 39, scope: !273)
!282 = !DILocation(line: 64, column: 44, scope: !273)
!283 = !DILocation(line: 64, column: 45, scope: !273)
!284 = !DILocation(line: 64, column: 49, scope: !273)
!285 = !DILocation(line: 64, column: 36, scope: !273)
!286 = !DILocation(line: 64, column: 7, scope: !274)
!287 = !DILocation(line: 65, column: 4, scope: !273)
!288 = !DILocation(line: 66, column: 2, scope: !274)
!289 = !DILocation(line: 63, column: 47, scope: !266)
!290 = !DILocation(line: 63, column: 2, scope: !266)
!291 = distinct !{!291, !271, !292, !197, !198}
!292 = !DILocation(line: 66, column: 2, scope: !263)
!293 = !DILocation(line: 68, column: 6, scope: !294)
!294 = distinct !DILexicalBlock(scope: !242, file: !3, line: 68, column: 6)
!295 = !DILocation(line: 68, column: 12, scope: !294)
!296 = !DILocation(line: 68, column: 24, scope: !294)
!297 = !DILocation(line: 68, column: 35, scope: !294)
!298 = !DILocation(line: 68, column: 8, scope: !294)
!299 = !DILocation(line: 68, column: 6, scope: !242)
!300 = !DILocation(line: 69, column: 3, scope: !294)
!301 = !DILocation(line: 71, column: 15, scope: !242)
!302 = !DILocation(line: 71, column: 20, scope: !242)
!303 = !DILocation(line: 71, column: 21, scope: !242)
!304 = !DILocation(line: 71, column: 25, scope: !242)
!305 = !DILocation(line: 71, column: 32, scope: !242)
!306 = !DILocation(line: 71, column: 37, scope: !242)
!307 = !DILocation(line: 71, column: 40, scope: !242)
!308 = !DILocation(line: 71, column: 30, scope: !242)
!309 = !DILocation(line: 71, column: 13, scope: !242)
!310 = !DILocation(line: 72, column: 14, scope: !242)
!311 = !DILocation(line: 72, column: 19, scope: !242)
!312 = !DILocation(line: 72, column: 20, scope: !242)
!313 = !DILocation(line: 72, column: 24, scope: !242)
!314 = !DILocation(line: 72, column: 30, scope: !242)
!315 = !DILocation(line: 72, column: 35, scope: !242)
!316 = !DILocation(line: 72, column: 38, scope: !242)
!317 = !DILocation(line: 72, column: 28, scope: !242)
!318 = !DILocation(line: 72, column: 12, scope: !242)
!319 = !DILocation(line: 73, column: 8, scope: !242)
!320 = !DILocation(line: 73, column: 13, scope: !242)
!321 = !DILocation(line: 73, column: 16, scope: !242)
!322 = !DILocation(line: 73, column: 23, scope: !242)
!323 = !DILocation(line: 73, column: 30, scope: !242)
!324 = !DILocation(line: 73, column: 35, scope: !242)
!325 = !DILocation(line: 73, column: 38, scope: !242)
!326 = !DILocation(line: 73, column: 28, scope: !242)
!327 = !DILocation(line: 73, column: 46, scope: !242)
!328 = !DILocation(line: 73, column: 44, scope: !242)
!329 = !DILocation(line: 73, column: 58, scope: !242)
!330 = !DILocation(line: 73, column: 56, scope: !242)
!331 = !DILocation(line: 73, column: 20, scope: !242)
!332 = !DILocation(line: 73, column: 6, scope: !242)
!333 = !DILocation(line: 75, column: 9, scope: !242)
!334 = !DILocation(line: 75, column: 2, scope: !242)
!335 = !DILocation(line: 76, column: 1, scope: !242)
!336 = distinct !DISubprogram(name: "acpi_lpat_get_conversion_table", scope: !3, file: !3, line: 89, type: !337, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !339)
!337 = !DISubroutineType(types: !338)
!338 = !{!129, !72}
!339 = !{!340, !341, !342, !347, !348, !349, !351, !352, !354}
!340 = !DILocalVariable(name: "handle", arg: 1, scope: !336, file: !3, line: 90, type: !72)
!341 = !DILocalVariable(name: "lpat_table", scope: !336, file: !3, line: 92, type: !129)
!342 = !DILocalVariable(name: "buffer", scope: !336, file: !3, line: 93, type: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !24, line: 978, size: 128, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !343, file: !24, line: 979, baseType: !23, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !343, file: !24, line: 980, baseType: !22, size: 64, offset: 64)
!347 = !DILocalVariable(name: "obj_p", scope: !336, file: !3, line: 94, type: !30)
!348 = !DILocalVariable(name: "obj_e", scope: !336, file: !3, line: 94, type: !30)
!349 = !DILocalVariable(name: "lpat", scope: !336, file: !3, line: 95, type: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!351 = !DILocalVariable(name: "i", scope: !336, file: !3, line: 95, type: !97)
!352 = !DILocalVariable(name: "status", scope: !336, file: !3, line: 96, type: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !24, line: 421, baseType: !35)
!354 = !DILabel(scope: !336, name: "out", file: !3, line: 129)
!355 = !DILocation(line: 90, column: 11, scope: !336)
!356 = !DILocation(line: 92, column: 2, scope: !336)
!357 = !DILocation(line: 92, column: 37, scope: !336)
!358 = !DILocation(line: 93, column: 2, scope: !336)
!359 = !DILocation(line: 93, column: 21, scope: !336)
!360 = !DILocation(line: 94, column: 2, scope: !336)
!361 = !DILocation(line: 94, column: 21, scope: !336)
!362 = !DILocation(line: 94, column: 29, scope: !336)
!363 = !DILocation(line: 95, column: 2, scope: !336)
!364 = !DILocation(line: 95, column: 7, scope: !336)
!365 = !DILocation(line: 95, column: 13, scope: !336)
!366 = !DILocation(line: 96, column: 2, scope: !336)
!367 = !DILocation(line: 96, column: 14, scope: !336)
!368 = !DILocation(line: 98, column: 32, scope: !336)
!369 = !DILocation(line: 98, column: 11, scope: !336)
!370 = !DILocation(line: 98, column: 9, scope: !336)
!371 = !DILocation(line: 99, column: 6, scope: !372)
!372 = distinct !DILexicalBlock(scope: !336, file: !3, line: 99, column: 6)
!373 = !DILocation(line: 99, column: 6, scope: !336)
!374 = !DILocation(line: 100, column: 3, scope: !372)
!375 = !DILocation(line: 102, column: 38, scope: !336)
!376 = !DILocation(line: 102, column: 8, scope: !336)
!377 = !DILocation(line: 103, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !336, file: !3, line: 103, column: 6)
!379 = !DILocation(line: 103, column: 13, scope: !378)
!380 = !DILocation(line: 103, column: 17, scope: !378)
!381 = !DILocation(line: 103, column: 24, scope: !378)
!382 = !DILocation(line: 103, column: 29, scope: !378)
!383 = !DILocation(line: 103, column: 51, scope: !378)
!384 = !DILocation(line: 104, column: 7, scope: !378)
!385 = !DILocation(line: 104, column: 22, scope: !378)
!386 = !DILocation(line: 104, column: 28, scope: !378)
!387 = !DILocation(line: 104, column: 33, scope: !378)
!388 = !DILocation(line: 104, column: 37, scope: !378)
!389 = !DILocation(line: 104, column: 52, scope: !378)
!390 = !DILocation(line: 104, column: 58, scope: !378)
!391 = !DILocation(line: 103, column: 6, scope: !336)
!392 = !DILocation(line: 105, column: 3, scope: !378)
!393 = !DILocation(line: 107, column: 17, scope: !336)
!394 = !DILocation(line: 107, column: 32, scope: !336)
!395 = !DILocation(line: 107, column: 9, scope: !336)
!396 = !DILocation(line: 107, column: 7, scope: !336)
!397 = !DILocation(line: 108, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !336, file: !3, line: 108, column: 6)
!399 = !DILocation(line: 108, column: 6, scope: !336)
!400 = !DILocation(line: 109, column: 3, scope: !398)
!401 = !DILocation(line: 111, column: 9, scope: !402)
!402 = distinct !DILexicalBlock(scope: !336, file: !3, line: 111, column: 2)
!403 = !DILocation(line: 111, column: 7, scope: !402)
!404 = !DILocation(line: 111, column: 14, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !3, line: 111, column: 2)
!406 = !DILocation(line: 111, column: 18, scope: !405)
!407 = !DILocation(line: 111, column: 33, scope: !405)
!408 = !DILocation(line: 111, column: 16, scope: !405)
!409 = !DILocation(line: 111, column: 2, scope: !402)
!410 = !DILocation(line: 112, column: 12, scope: !411)
!411 = distinct !DILexicalBlock(scope: !405, file: !3, line: 111, column: 45)
!412 = !DILocation(line: 112, column: 27, scope: !411)
!413 = !DILocation(line: 112, column: 36, scope: !411)
!414 = !DILocation(line: 112, column: 9, scope: !411)
!415 = !DILocation(line: 113, column: 7, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !3, line: 113, column: 7)
!417 = !DILocation(line: 113, column: 14, scope: !416)
!418 = !DILocation(line: 113, column: 19, scope: !416)
!419 = !DILocation(line: 113, column: 7, scope: !411)
!420 = !DILocation(line: 114, column: 10, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !3, line: 113, column: 41)
!422 = !DILocation(line: 114, column: 4, scope: !421)
!423 = !DILocation(line: 115, column: 4, scope: !421)
!424 = !DILocation(line: 117, column: 18, scope: !411)
!425 = !DILocation(line: 117, column: 33, scope: !411)
!426 = !DILocation(line: 117, column: 13, scope: !411)
!427 = !DILocation(line: 117, column: 3, scope: !411)
!428 = !DILocation(line: 117, column: 8, scope: !411)
!429 = !DILocation(line: 117, column: 11, scope: !411)
!430 = !DILocation(line: 118, column: 2, scope: !411)
!431 = !DILocation(line: 111, column: 41, scope: !405)
!432 = !DILocation(line: 111, column: 2, scope: !405)
!433 = distinct !{!433, !409, !434, !197, !198}
!434 = !DILocation(line: 118, column: 2, scope: !402)
!435 = !DILocation(line: 120, column: 15, scope: !336)
!436 = !DILocation(line: 120, column: 13, scope: !336)
!437 = !DILocation(line: 121, column: 7, scope: !438)
!438 = distinct !DILexicalBlock(scope: !336, file: !3, line: 121, column: 6)
!439 = !DILocation(line: 121, column: 6, scope: !336)
!440 = !DILocation(line: 122, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !3, line: 121, column: 19)
!442 = !DILocation(line: 122, column: 3, scope: !441)
!443 = !DILocation(line: 123, column: 3, scope: !441)
!444 = !DILocation(line: 126, column: 41, scope: !336)
!445 = !DILocation(line: 126, column: 2, scope: !336)
!446 = !DILocation(line: 126, column: 14, scope: !336)
!447 = !DILocation(line: 126, column: 19, scope: !336)
!448 = !DILocation(line: 127, column: 27, scope: !336)
!449 = !DILocation(line: 127, column: 42, scope: !336)
!450 = !DILocation(line: 127, column: 48, scope: !336)
!451 = !DILocation(line: 127, column: 2, scope: !336)
!452 = !DILocation(line: 127, column: 14, scope: !336)
!453 = !DILocation(line: 127, column: 25, scope: !336)
!454 = !DILocation(line: 129, column: 1, scope: !336)
!455 = !DILocation(line: 130, column: 15, scope: !336)
!456 = !DILocation(line: 130, column: 2, scope: !336)
!457 = !DILocation(line: 131, column: 9, scope: !336)
!458 = !DILocation(line: 131, column: 2, scope: !336)
!459 = !DILocation(line: 132, column: 1, scope: !336)
!460 = !DISubprogram(name: "acpi_evaluate_object", scope: !461, file: !461, line: 549, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!462 = !DISubroutineType(types: !463)
!463 = !{!353, !72, !464, !465, !470}
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !24, line: 423, baseType: !48)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !24, line: 956, size: 128, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !466, file: !24, line: 957, baseType: !35, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !466, file: !24, line: 958, baseType: !30, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!471 = distinct !DISubprogram(name: "kcalloc", scope: !12, file: !12, line: 666, type: !472, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !478)
!472 = !DISubroutineType(types: !473)
!473 = !{!22, !474, !474, !87}
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !88, line: 61, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !476, line: 72, baseType: !477)
!476 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !476, line: 16, baseType: !99)
!478 = !{!479, !480, !481}
!479 = !DILocalVariable(name: "n", arg: 1, scope: !471, file: !12, line: 666, type: !474)
!480 = !DILocalVariable(name: "size", arg: 2, scope: !471, file: !12, line: 666, type: !474)
!481 = !DILocalVariable(name: "flags", arg: 3, scope: !471, file: !12, line: 666, type: !87)
!482 = !DILocation(line: 666, column: 55, scope: !471)
!483 = !DILocation(line: 666, column: 65, scope: !471)
!484 = !DILocation(line: 666, column: 77, scope: !471)
!485 = !DILocation(line: 668, column: 23, scope: !471)
!486 = !DILocation(line: 668, column: 26, scope: !471)
!487 = !DILocation(line: 668, column: 32, scope: !471)
!488 = !DILocation(line: 668, column: 38, scope: !471)
!489 = !DILocation(line: 668, column: 9, scope: !471)
!490 = !DILocation(line: 668, column: 2, scope: !471)
!491 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!496 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !497, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!22, !474, !87}
!499 = !{!500, !501}
!500 = !DILocalVariable(name: "size", arg: 1, scope: !496, file: !12, line: 719, type: !474)
!501 = !DILocalVariable(name: "flags", arg: 2, scope: !496, file: !12, line: 719, type: !87)
!502 = !DILocation(line: 719, column: 52, scope: !496)
!503 = !DILocation(line: 719, column: 64, scope: !496)
!504 = !DILocation(line: 721, column: 17, scope: !496)
!505 = !DILocation(line: 721, column: 23, scope: !496)
!506 = !DILocation(line: 721, column: 29, scope: !496)
!507 = !DILocation(line: 721, column: 9, scope: !496)
!508 = !DILocation(line: 721, column: 2, scope: !496)
!509 = distinct !DISubprogram(name: "acpi_lpat_free_conversion_table", scope: !3, file: !3, line: 143, type: !510, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !129}
!512 = !{!513}
!513 = !DILocalVariable(name: "lpat_table", arg: 1, scope: !509, file: !3, line: 144, type: !129)
!514 = !DILocation(line: 144, column: 11, scope: !509)
!515 = !DILocation(line: 146, column: 6, scope: !516)
!516 = distinct !DILexicalBlock(scope: !509, file: !3, line: 146, column: 6)
!517 = !DILocation(line: 146, column: 6, scope: !509)
!518 = !DILocation(line: 147, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !3, line: 146, column: 18)
!520 = !DILocation(line: 147, column: 21, scope: !519)
!521 = !DILocation(line: 147, column: 3, scope: !519)
!522 = !DILocation(line: 148, column: 9, scope: !519)
!523 = !DILocation(line: 148, column: 3, scope: !519)
!524 = !DILocation(line: 149, column: 2, scope: !519)
!525 = !DILocation(line: 150, column: 1, scope: !509)
!526 = distinct !DISubprogram(name: "kmalloc_array", scope: !12, file: !12, line: 629, type: !472, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !527)
!527 = !{!528, !529, !530, !531}
!528 = !DILocalVariable(name: "n", arg: 1, scope: !526, file: !12, line: 629, type: !474)
!529 = !DILocalVariable(name: "size", arg: 2, scope: !526, file: !12, line: 629, type: !474)
!530 = !DILocalVariable(name: "flags", arg: 3, scope: !526, file: !12, line: 629, type: !87)
!531 = !DILocalVariable(name: "bytes", scope: !526, file: !12, line: 631, type: !474)
!532 = !DILocation(line: 629, column: 61, scope: !526)
!533 = !DILocation(line: 629, column: 71, scope: !526)
!534 = !DILocation(line: 629, column: 83, scope: !526)
!535 = !DILocation(line: 631, column: 2, scope: !526)
!536 = !DILocation(line: 631, column: 9, scope: !526)
!537 = !DILocation(line: 633, column: 6, scope: !538)
!538 = distinct !DILexicalBlock(scope: !526, file: !12, line: 633, column: 6)
!539 = !DILocation(line: 633, column: 6, scope: !526)
!540 = !DILocation(line: 634, column: 3, scope: !538)
!541 = !DILocation(line: 635, column: 27, scope: !542)
!542 = distinct !DILexicalBlock(scope: !526, file: !12, line: 635, column: 6)
!543 = !DILocation(line: 635, column: 6, scope: !542)
!544 = !DILocation(line: 635, column: 30, scope: !542)
!545 = !DILocation(line: 635, column: 54, scope: !542)
!546 = !DILocation(line: 635, column: 33, scope: !542)
!547 = !DILocation(line: 635, column: 6, scope: !526)
!548 = !DILocation(line: 636, column: 18, scope: !542)
!549 = !DILocation(line: 636, column: 25, scope: !542)
!550 = !DILocation(line: 636, column: 10, scope: !542)
!551 = !DILocation(line: 636, column: 3, scope: !542)
!552 = !DILocation(line: 637, column: 19, scope: !526)
!553 = !DILocation(line: 637, column: 26, scope: !526)
!554 = !DILocation(line: 637, column: 9, scope: !526)
!555 = !DILocation(line: 637, column: 2, scope: !526)
!556 = !DILocation(line: 638, column: 1, scope: !526)
!557 = distinct !DISubprogram(name: "__must_check_overflow", scope: !558, file: !558, line: 51, type: !559, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !563)
!558 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!559 = !DISubroutineType(types: !560)
!560 = !{!561, !561}
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !88, line: 35, baseType: !562)
!562 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!563 = !{!564}
!564 = !DILocalVariable(name: "overflow", arg: 1, scope: !557, file: !558, line: 51, type: !561)
!565 = !DILocation(line: 51, column: 60, scope: !557)
!566 = !DILocation(line: 53, column: 9, scope: !557)
!567 = !{i8 0, i8 2}
!568 = !{}
!569 = !DILocation(line: 53, column: 2, scope: !557)
!570 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !497, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !571)
!571 = !{!572, !573, !574}
!572 = !DILocalVariable(name: "size", arg: 1, scope: !570, file: !12, line: 591, type: !474)
!573 = !DILocalVariable(name: "flags", arg: 2, scope: !570, file: !12, line: 591, type: !87)
!574 = !DILocalVariable(name: "index", scope: !575, file: !12, line: 594, type: !7)
!575 = distinct !DILexicalBlock(scope: !576, file: !12, line: 593, column: 42)
!576 = distinct !DILexicalBlock(scope: !570, file: !12, line: 593, column: 6)
!577 = !DILocation(line: 591, column: 61, scope: !570)
!578 = !DILocation(line: 591, column: 73, scope: !570)
!579 = !DILocation(line: 593, column: 27, scope: !576)
!580 = !DILocation(line: 593, column: 6, scope: !576)
!581 = !DILocation(line: 593, column: 33, scope: !576)
!582 = !DILocation(line: 593, column: 36, scope: !576)
!583 = !DILocation(line: 593, column: 6, scope: !570)
!584 = !DILocation(line: 594, column: 3, scope: !575)
!585 = !DILocation(line: 594, column: 16, scope: !575)
!586 = !DILocation(line: 596, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !575, file: !12, line: 596, column: 7)
!588 = !DILocation(line: 596, column: 12, scope: !587)
!589 = !DILocation(line: 596, column: 7, scope: !575)
!590 = !DILocation(line: 597, column: 25, scope: !587)
!591 = !DILocation(line: 597, column: 31, scope: !587)
!592 = !DILocation(line: 597, column: 11, scope: !587)
!593 = !DILocation(line: 597, column: 4, scope: !587)
!594 = !DILocation(line: 599, column: 11, scope: !575)
!595 = !DILocation(line: 599, column: 9, scope: !575)
!596 = !DILocation(line: 601, column: 33, scope: !575)
!597 = !DILocation(line: 601, column: 40, scope: !575)
!598 = !DILocation(line: 601, column: 20, scope: !575)
!599 = !DILocation(line: 601, column: 5, scope: !575)
!600 = !DILocation(line: 601, column: 51, scope: !575)
!601 = !DILocation(line: 602, column: 5, scope: !575)
!602 = !DILocation(line: 602, column: 12, scope: !575)
!603 = !DILocation(line: 600, column: 10, scope: !575)
!604 = !DILocation(line: 600, column: 3, scope: !575)
!605 = !DILocation(line: 603, column: 2, scope: !576)
!606 = !DILocation(line: 604, column: 19, scope: !570)
!607 = !DILocation(line: 604, column: 25, scope: !570)
!608 = !DILocation(line: 604, column: 9, scope: !570)
!609 = !DILocation(line: 604, column: 2, scope: !570)
!610 = !DILocation(line: 605, column: 1, scope: !570)
!611 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!612 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!613 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !614, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !616)
!614 = !DISubroutineType(types: !615)
!615 = !{!7, !474, !561}
!616 = !{!617, !618}
!617 = !DILocalVariable(name: "size", arg: 1, scope: !613, file: !12, line: 444, type: !474)
!618 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !613, file: !12, line: 445, type: !561)
!619 = !DILocation(line: 444, column: 60, scope: !613)
!620 = !DILocation(line: 445, column: 16, scope: !613)
!621 = !DILocation(line: 447, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !613, file: !12, line: 447, column: 6)
!623 = !DILocation(line: 447, column: 6, scope: !613)
!624 = !DILocation(line: 448, column: 3, scope: !622)
!625 = !DILocation(line: 450, column: 6, scope: !626)
!626 = distinct !DILexicalBlock(scope: !613, file: !12, line: 450, column: 6)
!627 = !DILocation(line: 450, column: 11, scope: !626)
!628 = !DILocation(line: 450, column: 6, scope: !613)
!629 = !DILocation(line: 451, column: 3, scope: !626)
!630 = !DILocation(line: 453, column: 32, scope: !631)
!631 = distinct !DILexicalBlock(scope: !613, file: !12, line: 453, column: 6)
!632 = !DILocation(line: 453, column: 37, scope: !631)
!633 = !DILocation(line: 453, column: 42, scope: !631)
!634 = !DILocation(line: 453, column: 45, scope: !631)
!635 = !DILocation(line: 453, column: 50, scope: !631)
!636 = !DILocation(line: 453, column: 6, scope: !613)
!637 = !DILocation(line: 454, column: 3, scope: !631)
!638 = !DILocation(line: 455, column: 32, scope: !639)
!639 = distinct !DILexicalBlock(scope: !613, file: !12, line: 455, column: 6)
!640 = !DILocation(line: 455, column: 37, scope: !639)
!641 = !DILocation(line: 455, column: 43, scope: !639)
!642 = !DILocation(line: 455, column: 46, scope: !639)
!643 = !DILocation(line: 455, column: 51, scope: !639)
!644 = !DILocation(line: 455, column: 6, scope: !613)
!645 = !DILocation(line: 456, column: 3, scope: !639)
!646 = !DILocation(line: 457, column: 6, scope: !647)
!647 = distinct !DILexicalBlock(scope: !613, file: !12, line: 457, column: 6)
!648 = !DILocation(line: 457, column: 11, scope: !647)
!649 = !DILocation(line: 457, column: 6, scope: !613)
!650 = !DILocation(line: 457, column: 26, scope: !647)
!651 = !DILocation(line: 458, column: 6, scope: !652)
!652 = distinct !DILexicalBlock(scope: !613, file: !12, line: 458, column: 6)
!653 = !DILocation(line: 458, column: 11, scope: !652)
!654 = !DILocation(line: 458, column: 6, scope: !613)
!655 = !DILocation(line: 458, column: 26, scope: !652)
!656 = !DILocation(line: 459, column: 6, scope: !657)
!657 = distinct !DILexicalBlock(scope: !613, file: !12, line: 459, column: 6)
!658 = !DILocation(line: 459, column: 11, scope: !657)
!659 = !DILocation(line: 459, column: 6, scope: !613)
!660 = !DILocation(line: 459, column: 26, scope: !657)
!661 = !DILocation(line: 460, column: 6, scope: !662)
!662 = distinct !DILexicalBlock(scope: !613, file: !12, line: 460, column: 6)
!663 = !DILocation(line: 460, column: 11, scope: !662)
!664 = !DILocation(line: 460, column: 6, scope: !613)
!665 = !DILocation(line: 460, column: 26, scope: !662)
!666 = !DILocation(line: 461, column: 6, scope: !667)
!667 = distinct !DILexicalBlock(scope: !613, file: !12, line: 461, column: 6)
!668 = !DILocation(line: 461, column: 11, scope: !667)
!669 = !DILocation(line: 461, column: 6, scope: !613)
!670 = !DILocation(line: 461, column: 26, scope: !667)
!671 = !DILocation(line: 462, column: 6, scope: !672)
!672 = distinct !DILexicalBlock(scope: !613, file: !12, line: 462, column: 6)
!673 = !DILocation(line: 462, column: 11, scope: !672)
!674 = !DILocation(line: 462, column: 6, scope: !613)
!675 = !DILocation(line: 462, column: 26, scope: !672)
!676 = !DILocation(line: 463, column: 6, scope: !677)
!677 = distinct !DILexicalBlock(scope: !613, file: !12, line: 463, column: 6)
!678 = !DILocation(line: 463, column: 11, scope: !677)
!679 = !DILocation(line: 463, column: 6, scope: !613)
!680 = !DILocation(line: 463, column: 26, scope: !677)
!681 = !DILocation(line: 464, column: 6, scope: !682)
!682 = distinct !DILexicalBlock(scope: !613, file: !12, line: 464, column: 6)
!683 = !DILocation(line: 464, column: 11, scope: !682)
!684 = !DILocation(line: 464, column: 6, scope: !613)
!685 = !DILocation(line: 464, column: 26, scope: !682)
!686 = !DILocation(line: 465, column: 6, scope: !687)
!687 = distinct !DILexicalBlock(scope: !613, file: !12, line: 465, column: 6)
!688 = !DILocation(line: 465, column: 11, scope: !687)
!689 = !DILocation(line: 465, column: 6, scope: !613)
!690 = !DILocation(line: 465, column: 26, scope: !687)
!691 = !DILocation(line: 466, column: 6, scope: !692)
!692 = distinct !DILexicalBlock(scope: !613, file: !12, line: 466, column: 6)
!693 = !DILocation(line: 466, column: 11, scope: !692)
!694 = !DILocation(line: 466, column: 6, scope: !613)
!695 = !DILocation(line: 466, column: 26, scope: !692)
!696 = !DILocation(line: 467, column: 6, scope: !697)
!697 = distinct !DILexicalBlock(scope: !613, file: !12, line: 467, column: 6)
!698 = !DILocation(line: 467, column: 11, scope: !697)
!699 = !DILocation(line: 467, column: 6, scope: !613)
!700 = !DILocation(line: 467, column: 26, scope: !697)
!701 = !DILocation(line: 468, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !613, file: !12, line: 468, column: 6)
!703 = !DILocation(line: 468, column: 11, scope: !702)
!704 = !DILocation(line: 468, column: 6, scope: !613)
!705 = !DILocation(line: 468, column: 26, scope: !702)
!706 = !DILocation(line: 469, column: 6, scope: !707)
!707 = distinct !DILexicalBlock(scope: !613, file: !12, line: 469, column: 6)
!708 = !DILocation(line: 469, column: 11, scope: !707)
!709 = !DILocation(line: 469, column: 6, scope: !613)
!710 = !DILocation(line: 469, column: 26, scope: !707)
!711 = !DILocation(line: 470, column: 6, scope: !712)
!712 = distinct !DILexicalBlock(scope: !613, file: !12, line: 470, column: 6)
!713 = !DILocation(line: 470, column: 11, scope: !712)
!714 = !DILocation(line: 470, column: 6, scope: !613)
!715 = !DILocation(line: 470, column: 26, scope: !712)
!716 = !DILocation(line: 471, column: 6, scope: !717)
!717 = distinct !DILexicalBlock(scope: !613, file: !12, line: 471, column: 6)
!718 = !DILocation(line: 471, column: 11, scope: !717)
!719 = !DILocation(line: 471, column: 6, scope: !613)
!720 = !DILocation(line: 471, column: 26, scope: !717)
!721 = !DILocation(line: 472, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !613, file: !12, line: 472, column: 6)
!723 = !DILocation(line: 472, column: 11, scope: !722)
!724 = !DILocation(line: 472, column: 6, scope: !613)
!725 = !DILocation(line: 472, column: 26, scope: !722)
!726 = !DILocation(line: 473, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !613, file: !12, line: 473, column: 6)
!728 = !DILocation(line: 473, column: 11, scope: !727)
!729 = !DILocation(line: 473, column: 6, scope: !613)
!730 = !DILocation(line: 473, column: 26, scope: !727)
!731 = !DILocation(line: 474, column: 6, scope: !732)
!732 = distinct !DILexicalBlock(scope: !613, file: !12, line: 474, column: 6)
!733 = !DILocation(line: 474, column: 11, scope: !732)
!734 = !DILocation(line: 474, column: 6, scope: !613)
!735 = !DILocation(line: 474, column: 27, scope: !732)
!736 = !DILocation(line: 475, column: 6, scope: !737)
!737 = distinct !DILexicalBlock(scope: !613, file: !12, line: 475, column: 6)
!738 = !DILocation(line: 475, column: 11, scope: !737)
!739 = !DILocation(line: 475, column: 6, scope: !613)
!740 = !DILocation(line: 475, column: 32, scope: !737)
!741 = !DILocation(line: 477, column: 50, scope: !742)
!742 = distinct !DILexicalBlock(scope: !613, file: !12, line: 477, column: 6)
!743 = !DILocation(line: 477, column: 6, scope: !613)
!744 = !DILocation(line: 478, column: 3, scope: !742)
!745 = !DILocation(line: 478, column: 3, scope: !746)
!746 = distinct !DILexicalBlock(scope: !747, file: !12, line: 478, column: 3)
!747 = distinct !DILexicalBlock(scope: !742, file: !12, line: 478, column: 3)
!748 = !{i32 -2143473317}
!749 = !DILocation(line: 478, column: 3, scope: !747)
!750 = !DILocation(line: 480, column: 3, scope: !742)
!751 = !DILocation(line: 480, column: 3, scope: !752)
!752 = distinct !DILexicalBlock(scope: !742, file: !12, line: 480, column: 3)
!753 = !DILocation(line: 480, column: 3, scope: !754)
!754 = distinct !DILexicalBlock(scope: !752, file: !12, line: 480, column: 3)
!755 = !DILocation(line: 480, column: 3, scope: !756)
!756 = distinct !DILexicalBlock(scope: !752, file: !12, line: 480, column: 3)
!757 = !{i64 2151494182, i64 2151494211, i64 2151494257, i64 2151494315, i64 2151494369, i64 2151494423, i64 2151494478, i64 2151494509}
!758 = !DILocation(line: 483, column: 2, scope: !613)
!759 = !DILocation(line: 484, column: 1, scope: !613)
!760 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!761 = !DISubroutineType(types: !762)
!762 = !{!22, !763, !87, !474}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !765, line: 11, flags: DIFlagFwdDecl)
!765 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!766 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !767, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !769)
!767 = !DISubroutineType(types: !768)
!768 = !{!11, !87, !99}
!769 = !{!770, !771}
!770 = !DILocalVariable(name: "flags", arg: 1, scope: !766, file: !12, line: 401, type: !87)
!771 = !DILocalVariable(name: "caller", arg: 2, scope: !766, file: !12, line: 401, type: !99)
!772 = !DILocation(line: 401, column: 67, scope: !766)
!773 = !DILocation(line: 401, column: 88, scope: !766)
!774 = !DILocation(line: 407, column: 6, scope: !775)
!775 = distinct !DILexicalBlock(scope: !766, file: !12, line: 407, column: 6)
!776 = !DILocation(line: 407, column: 6, scope: !766)
!777 = !DILocation(line: 413, column: 3, scope: !775)
!778 = !DILocation(line: 423, column: 38, scope: !779)
!779 = distinct !DILexicalBlock(scope: !766, file: !12, line: 423, column: 6)
!780 = !DILocation(line: 423, column: 44, scope: !779)
!781 = !DILocation(line: 423, column: 6, scope: !766)
!782 = !DILocation(line: 424, column: 3, scope: !779)
!783 = !DILocation(line: 426, column: 3, scope: !784)
!784 = distinct !DILexicalBlock(scope: !766, file: !12, line: 425, column: 6)
!785 = !DILocation(line: 429, column: 1, scope: !766)
!786 = !DISubprogram(name: "__compiletime_assert_125", scope: !12, file: !12, line: 478, type: !787, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!787 = !DISubroutineType(types: !788)
!788 = !{null}
