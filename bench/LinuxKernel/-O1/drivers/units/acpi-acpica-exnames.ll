; ModuleID = 'drivers/acpi/acpica/exnames.c'
source_filename = "drivers/acpi/acpica/exnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_acpi_module_name = internal constant [8 x i8] c"exnames\00", align 1, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"Malformed Name at %p\00", align 1, !dbg !46
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not allocate size %u\00", align 1, !dbg !51
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !56
@.str.3 = private unnamed_addr constant [26 x i8] c"Invalid leading digit: %c\00", align 1, !dbg !58
@.str.4 = private unnamed_addr constant [36 x i8] c"Bad character 0x%02x in name, at %p\00", align 1, !dbg !63

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_get_name_string(i32 noundef %data_type, ptr noundef %in_aml_address, ptr noundef %out_name_string, ptr noundef %out_name_length) #0 align 16 !dbg !81 {
entry:
  %retval = alloca i32, align 4
  %data_type.addr = alloca i32, align 4
  %in_aml_address.addr = alloca ptr, align 8
  %out_name_string.addr = alloca ptr, align 8
  %out_name_length.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %aml_address = alloca ptr, align 8
  %name_string = alloca ptr, align 8
  %num_segments = alloca i32, align 4
  %prefix_count = alloca i32, align 4
  %has_prefix = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !89, metadata !DIExpression()), !dbg !99
  store ptr %in_aml_address, ptr %in_aml_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_aml_address.addr, metadata !90, metadata !DIExpression()), !dbg !100
  store ptr %out_name_string, ptr %out_name_string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_name_string.addr, metadata !91, metadata !DIExpression()), !dbg !101
  store ptr %out_name_length, ptr %out_name_length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_name_length.addr, metadata !92, metadata !DIExpression()), !dbg !102
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #12, !dbg !103
  call void @llvm.dbg.declare(metadata ptr %status, metadata !93, metadata !DIExpression()), !dbg !104
  store i32 0, ptr %status, align 4, !dbg !104
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml_address) #12, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %aml_address, metadata !94, metadata !DIExpression()), !dbg !106
  %0 = load ptr, ptr %in_aml_address.addr, align 8, !dbg !107
  store ptr %0, ptr %aml_address, align 8, !dbg !106
  call void @llvm.lifetime.start.p0(i64 8, ptr %name_string) #12, !dbg !108
  call void @llvm.dbg.declare(metadata ptr %name_string, metadata !95, metadata !DIExpression()), !dbg !109
  store ptr null, ptr %name_string, align 8, !dbg !109
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_segments) #12, !dbg !110
  call void @llvm.dbg.declare(metadata ptr %num_segments, metadata !96, metadata !DIExpression()), !dbg !111
  call void @llvm.lifetime.start.p0(i64 4, ptr %prefix_count) #12, !dbg !112
  call void @llvm.dbg.declare(metadata ptr %prefix_count, metadata !97, metadata !DIExpression()), !dbg !113
  store i32 0, ptr %prefix_count, align 4, !dbg !113
  call void @llvm.lifetime.start.p0(i64 1, ptr %has_prefix) #12, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %has_prefix, metadata !98, metadata !DIExpression()), !dbg !115
  store i8 0, ptr %has_prefix, align 1, !dbg !115
  %1 = load i32, ptr %data_type.addr, align 4, !dbg !116
  %cmp = icmp eq i32 17, %1, !dbg !118
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !119

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %data_type.addr, align 4, !dbg !120
  %cmp1 = icmp eq i32 18, %2, !dbg !121
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !122

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %data_type.addr, align 4, !dbg !123
  %cmp3 = icmp eq i32 19, %3, !dbg !124
  br i1 %cmp3, label %if.then, label %if.else6, !dbg !125

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %call = call ptr @acpi_ex_allocate_name_string(i32 noundef 0, i32 noundef 1) #13, !dbg !126
  store ptr %call, ptr %name_string, align 8, !dbg !128
  %4 = load ptr, ptr %name_string, align 8, !dbg !129
  %tobool = icmp ne ptr %4, null, !dbg !129
  br i1 %tobool, label %if.else, label %if.then4, !dbg !131

if.then4:                                         ; preds = %if.then
  store i32 4, ptr %status, align 4, !dbg !132
  br label %if.end, !dbg !134

if.else:                                          ; preds = %if.then
  %5 = load ptr, ptr %name_string, align 8, !dbg !135
  %call5 = call i32 @acpi_ex_name_segment(ptr noundef %aml_address, ptr noundef %5) #13, !dbg !137
  store i32 %call5, ptr %status, align 4, !dbg !138
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end53, !dbg !139

if.else6:                                         ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %aml_address, align 8, !dbg !140
  %7 = load i8, ptr %6, align 1, !dbg !142
  %conv = zext i8 %7 to i32, !dbg !142
  switch i32 %conv, label %sw.default [
    i32 92, label %sw.bb
    i32 94, label %sw.bb7
  ], !dbg !143

sw.bb:                                            ; preds = %if.else6
  %8 = load ptr, ptr %aml_address, align 8, !dbg !144
  %incdec.ptr = getelementptr i8, ptr %8, i32 1, !dbg !144
  store ptr %incdec.ptr, ptr %aml_address, align 8, !dbg !144
  store i32 -1, ptr %prefix_count, align 4, !dbg !146
  store i8 1, ptr %has_prefix, align 1, !dbg !147
  br label %sw.epilog, !dbg !148

sw.bb7:                                           ; preds = %if.else6
  br label %do.body, !dbg !149

do.body:                                          ; preds = %do.cond, %sw.bb7
  %9 = load ptr, ptr %aml_address, align 8, !dbg !150
  %incdec.ptr8 = getelementptr i8, ptr %9, i32 1, !dbg !150
  store ptr %incdec.ptr8, ptr %aml_address, align 8, !dbg !150
  %10 = load i32, ptr %prefix_count, align 4, !dbg !152
  %inc = add i32 %10, 1, !dbg !152
  store i32 %inc, ptr %prefix_count, align 4, !dbg !152
  br label %do.cond, !dbg !153

do.cond:                                          ; preds = %do.body
  %11 = load ptr, ptr %aml_address, align 8, !dbg !154
  %12 = load i8, ptr %11, align 1, !dbg !155
  %conv9 = zext i8 %12 to i32, !dbg !155
  %cmp10 = icmp eq i32 %conv9, 94, !dbg !156
  br i1 %cmp10, label %do.body, label %do.end, !dbg !153, !llvm.loop !157

do.end:                                           ; preds = %do.cond
  store i8 1, ptr %has_prefix, align 1, !dbg !161
  br label %sw.epilog, !dbg !162

sw.default:                                       ; preds = %if.else6
  br label %sw.epilog, !dbg !163

sw.epilog:                                        ; preds = %sw.default, %do.end, %sw.bb
  %13 = load ptr, ptr %aml_address, align 8, !dbg !164
  %14 = load i8, ptr %13, align 1, !dbg !165
  %conv12 = zext i8 %14 to i32, !dbg !165
  switch i32 %conv12, label %sw.default46 [
    i32 46, label %sw.bb13
    i32 47, label %sw.bb24
    i32 0, label %sw.bb36
  ], !dbg !166

sw.bb13:                                          ; preds = %sw.epilog
  %15 = load ptr, ptr %aml_address, align 8, !dbg !167
  %incdec.ptr14 = getelementptr i8, ptr %15, i32 1, !dbg !167
  store ptr %incdec.ptr14, ptr %aml_address, align 8, !dbg !167
  %16 = load i32, ptr %prefix_count, align 4, !dbg !169
  %call15 = call ptr @acpi_ex_allocate_name_string(i32 noundef %16, i32 noundef 2) #13, !dbg !170
  store ptr %call15, ptr %name_string, align 8, !dbg !171
  %17 = load ptr, ptr %name_string, align 8, !dbg !172
  %tobool16 = icmp ne ptr %17, null, !dbg !172
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !174

if.then17:                                        ; preds = %sw.bb13
  store i32 4, ptr %status, align 4, !dbg !175
  br label %sw.epilog52, !dbg !177

if.end18:                                         ; preds = %sw.bb13
  store i8 1, ptr %has_prefix, align 1, !dbg !178
  %18 = load ptr, ptr %name_string, align 8, !dbg !179
  %call19 = call i32 @acpi_ex_name_segment(ptr noundef %aml_address, ptr noundef %18) #13, !dbg !180
  store i32 %call19, ptr %status, align 4, !dbg !181
  %19 = load i32, ptr %status, align 4, !dbg !182
  %tobool20 = icmp ne i32 %19, 0, !dbg !182
  br i1 %tobool20, label %if.end23, label %if.then21, !dbg !184

if.then21:                                        ; preds = %if.end18
  %20 = load ptr, ptr %name_string, align 8, !dbg !185
  %call22 = call i32 @acpi_ex_name_segment(ptr noundef %aml_address, ptr noundef %20) #13, !dbg !187
  store i32 %call22, ptr %status, align 4, !dbg !188
  br label %if.end23, !dbg !189

if.end23:                                         ; preds = %if.then21, %if.end18
  br label %sw.epilog52, !dbg !190

sw.bb24:                                          ; preds = %sw.epilog
  %21 = load ptr, ptr %aml_address, align 8, !dbg !191
  %incdec.ptr25 = getelementptr i8, ptr %21, i32 1, !dbg !191
  store ptr %incdec.ptr25, ptr %aml_address, align 8, !dbg !191
  %22 = load ptr, ptr %aml_address, align 8, !dbg !192
  %23 = load i8, ptr %22, align 1, !dbg !193
  %conv26 = zext i8 %23 to i32, !dbg !193
  store i32 %conv26, ptr %num_segments, align 4, !dbg !194
  %24 = load i32, ptr %prefix_count, align 4, !dbg !195
  %25 = load i32, ptr %num_segments, align 4, !dbg !196
  %call27 = call ptr @acpi_ex_allocate_name_string(i32 noundef %24, i32 noundef %25) #13, !dbg !197
  store ptr %call27, ptr %name_string, align 8, !dbg !198
  %26 = load ptr, ptr %name_string, align 8, !dbg !199
  %tobool28 = icmp ne ptr %26, null, !dbg !199
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !201

if.then29:                                        ; preds = %sw.bb24
  store i32 4, ptr %status, align 4, !dbg !202
  br label %sw.epilog52, !dbg !204

if.end30:                                         ; preds = %sw.bb24
  %27 = load ptr, ptr %aml_address, align 8, !dbg !205
  %incdec.ptr31 = getelementptr i8, ptr %27, i32 1, !dbg !205
  store ptr %incdec.ptr31, ptr %aml_address, align 8, !dbg !205
  store i8 1, ptr %has_prefix, align 1, !dbg !206
  br label %while.cond, !dbg !207

while.cond:                                       ; preds = %while.body, %if.end30
  %28 = load i32, ptr %num_segments, align 4, !dbg !208
  %tobool32 = icmp ne i32 %28, 0, !dbg !208
  br i1 %tobool32, label %land.rhs, label %land.end, !dbg !209

land.rhs:                                         ; preds = %while.cond
  %29 = load ptr, ptr %name_string, align 8, !dbg !210
  %call33 = call i32 @acpi_ex_name_segment(ptr noundef %aml_address, ptr noundef %29) #13, !dbg !211
  store i32 %call33, ptr %status, align 4, !dbg !212
  %cmp34 = icmp eq i32 %call33, 0, !dbg !213
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %cmp34, %land.rhs ], !dbg !214
  br i1 %30, label %while.body, label %while.end, !dbg !207

while.body:                                       ; preds = %land.end
  %31 = load i32, ptr %num_segments, align 4, !dbg !215
  %dec = add i32 %31, -1, !dbg !215
  store i32 %dec, ptr %num_segments, align 4, !dbg !215
  br label %while.cond, !dbg !207, !llvm.loop !217

while.end:                                        ; preds = %land.end
  br label %sw.epilog52, !dbg !219

sw.bb36:                                          ; preds = %sw.epilog
  %32 = load i32, ptr %prefix_count, align 4, !dbg !220
  %cmp37 = icmp eq i32 %32, -1, !dbg !222
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !223

if.then39:                                        ; preds = %sw.bb36
  br label %if.end40, !dbg !224

if.end40:                                         ; preds = %if.then39, %sw.bb36
  %33 = load ptr, ptr %aml_address, align 8, !dbg !226
  %incdec.ptr41 = getelementptr i8, ptr %33, i32 1, !dbg !226
  store ptr %incdec.ptr41, ptr %aml_address, align 8, !dbg !226
  %34 = load i32, ptr %prefix_count, align 4, !dbg !227
  %call42 = call ptr @acpi_ex_allocate_name_string(i32 noundef %34, i32 noundef 0) #13, !dbg !228
  store ptr %call42, ptr %name_string, align 8, !dbg !229
  %35 = load ptr, ptr %name_string, align 8, !dbg !230
  %tobool43 = icmp ne ptr %35, null, !dbg !230
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !232

if.then44:                                        ; preds = %if.end40
  store i32 4, ptr %status, align 4, !dbg !233
  br label %sw.epilog52, !dbg !235

if.end45:                                         ; preds = %if.end40
  br label %sw.epilog52, !dbg !236

sw.default46:                                     ; preds = %sw.epilog
  %36 = load i32, ptr %prefix_count, align 4, !dbg !237
  %call47 = call ptr @acpi_ex_allocate_name_string(i32 noundef %36, i32 noundef 1) #13, !dbg !238
  store ptr %call47, ptr %name_string, align 8, !dbg !239
  %37 = load ptr, ptr %name_string, align 8, !dbg !240
  %tobool48 = icmp ne ptr %37, null, !dbg !240
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !242

if.then49:                                        ; preds = %sw.default46
  store i32 4, ptr %status, align 4, !dbg !243
  br label %sw.epilog52, !dbg !245

if.end50:                                         ; preds = %sw.default46
  %38 = load ptr, ptr %name_string, align 8, !dbg !246
  %call51 = call i32 @acpi_ex_name_segment(ptr noundef %aml_address, ptr noundef %38) #13, !dbg !247
  store i32 %call51, ptr %status, align 4, !dbg !248
  br label %sw.epilog52, !dbg !249

sw.epilog52:                                      ; preds = %if.end50, %if.then49, %if.end45, %if.then44, %while.end, %if.then29, %if.end23, %if.then17
  br label %if.end53

if.end53:                                         ; preds = %sw.epilog52, %if.end
  %39 = load i32, ptr %status, align 4, !dbg !250
  %cmp54 = icmp eq i32 16386, %39, !dbg !252
  br i1 %cmp54, label %land.lhs.true, label %if.end59, !dbg !253

land.lhs.true:                                    ; preds = %if.end53
  %40 = load i8, ptr %has_prefix, align 1, !dbg !254
  %conv56 = zext i8 %40 to i32, !dbg !254
  %tobool57 = icmp ne i32 %conv56, 0, !dbg !254
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !255

if.then58:                                        ; preds = %land.lhs.true
  %41 = load ptr, ptr %name_string, align 8, !dbg !256
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 383, ptr noundef @.str, ptr noundef %41) #13, !dbg !256
  store i32 12301, ptr %status, align 4, !dbg !258
  br label %if.end59, !dbg !259

if.end59:                                         ; preds = %if.then58, %land.lhs.true, %if.end53
  %42 = load i32, ptr %status, align 4, !dbg !260
  %tobool60 = icmp ne i32 %42, 0, !dbg !260
  br i1 %tobool60, label %if.then61, label %if.end65, !dbg !262

if.then61:                                        ; preds = %if.end59
  %43 = load ptr, ptr %name_string, align 8, !dbg !263
  %tobool62 = icmp ne ptr %43, null, !dbg !263
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !266

if.then63:                                        ; preds = %if.then61
  %44 = load ptr, ptr %name_string, align 8, !dbg !267
  call void @acpi_os_free(ptr noundef %44) #13, !dbg !267
  br label %if.end64, !dbg !269

if.end64:                                         ; preds = %if.then63, %if.then61
  %45 = load i32, ptr %status, align 4, !dbg !270
  store i32 %45, ptr %retval, align 4, !dbg !270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !270

if.end65:                                         ; preds = %if.end59
  %46 = load ptr, ptr %name_string, align 8, !dbg !271
  %47 = load ptr, ptr %out_name_string.addr, align 8, !dbg !272
  store ptr %46, ptr %47, align 8, !dbg !273
  %48 = load ptr, ptr %aml_address, align 8, !dbg !274
  %49 = load ptr, ptr %in_aml_address.addr, align 8, !dbg !275
  %sub.ptr.lhs.cast = ptrtoint ptr %48 to i64, !dbg !276
  %sub.ptr.rhs.cast = ptrtoint ptr %49 to i64, !dbg !276
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !276
  %conv66 = trunc i64 %sub.ptr.sub to i32, !dbg !277
  %50 = load ptr, ptr %out_name_length.addr, align 8, !dbg !278
  store i32 %conv66, ptr %50, align 4, !dbg !279
  %51 = load i32, ptr %status, align 4, !dbg !280
  store i32 %51, ptr %retval, align 4, !dbg !280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !280

cleanup:                                          ; preds = %if.end65, %if.end64
  call void @llvm.lifetime.end.p0(i64 1, ptr %has_prefix) #12, !dbg !281
  call void @llvm.lifetime.end.p0(i64 4, ptr %prefix_count) #12, !dbg !281
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_segments) #12, !dbg !281
  call void @llvm.lifetime.end.p0(i64 8, ptr %name_string) #12, !dbg !281
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml_address) #12, !dbg !281
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #12, !dbg !281
  %52 = load i32, ptr %retval, align 4, !dbg !281
  ret i32 %52, !dbg !281
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_ex_allocate_name_string(i32 noundef %prefix_count, i32 noundef %num_name_segs) #0 align 16 !dbg !282 {
entry:
  %retval = alloca ptr, align 8
  %prefix_count.addr = alloca i32, align 4
  %num_name_segs.addr = alloca i32, align 4
  %temp_ptr = alloca ptr, align 8
  %name_string = alloca ptr, align 8
  %size_needed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %prefix_count, ptr %prefix_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prefix_count.addr, metadata !286, metadata !DIExpression()), !dbg !291
  store i32 %num_name_segs, ptr %num_name_segs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_name_segs.addr, metadata !287, metadata !DIExpression()), !dbg !292
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp_ptr) #12, !dbg !293
  call void @llvm.dbg.declare(metadata ptr %temp_ptr, metadata !288, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 8, ptr %name_string) #12, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %name_string, metadata !289, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 4, ptr %size_needed) #12, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %size_needed, metadata !290, metadata !DIExpression()), !dbg !298
  %0 = load i32, ptr %prefix_count.addr, align 4, !dbg !299
  %cmp = icmp eq i32 %0, -1, !dbg !301
  br i1 %cmp, label %if.then, label %if.else, !dbg !302

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %num_name_segs.addr, align 4, !dbg !303
  %mul = mul i32 4, %1, !dbg !305
  %add = add i32 1, %mul, !dbg !306
  %add1 = add i32 %add, 2, !dbg !307
  %add2 = add i32 %add1, 1, !dbg !308
  store i32 %add2, ptr %size_needed, align 4, !dbg !309
  br label %if.end, !dbg !310

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %prefix_count.addr, align 4, !dbg !311
  %3 = load i32, ptr %num_name_segs.addr, align 4, !dbg !313
  %mul3 = mul i32 4, %3, !dbg !314
  %add4 = add i32 %2, %mul3, !dbg !315
  %add5 = add i32 %add4, 2, !dbg !316
  %add6 = add i32 %add5, 1, !dbg !317
  store i32 %add6, ptr %size_needed, align 4, !dbg !318
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, ptr %size_needed, align 4, !dbg !319
  %conv = zext i32 %4 to i64, !dbg !319
  %call = call ptr @acpi_os_allocate(i64 noundef %conv) #13, !dbg !319
  store ptr %call, ptr %name_string, align 8, !dbg !320
  %5 = load ptr, ptr %name_string, align 8, !dbg !321
  %tobool = icmp ne ptr %5, null, !dbg !321
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !323

if.then7:                                         ; preds = %if.end
  %6 = load i32, ptr %size_needed, align 4, !dbg !324
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 68, ptr noundef @.str.1, i32 noundef %6) #13, !dbg !324
  store ptr null, ptr %retval, align 8, !dbg !326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !326

if.end8:                                          ; preds = %if.end
  %7 = load ptr, ptr %name_string, align 8, !dbg !327
  store ptr %7, ptr %temp_ptr, align 8, !dbg !328
  %8 = load i32, ptr %prefix_count.addr, align 4, !dbg !329
  %cmp9 = icmp eq i32 %8, -1, !dbg !331
  br i1 %cmp9, label %if.then11, label %if.else12, !dbg !332

if.then11:                                        ; preds = %if.end8
  %9 = load ptr, ptr %temp_ptr, align 8, !dbg !333
  %incdec.ptr = getelementptr i8, ptr %9, i32 1, !dbg !333
  store ptr %incdec.ptr, ptr %temp_ptr, align 8, !dbg !333
  store i8 92, ptr %9, align 1, !dbg !335
  br label %if.end15, !dbg !336

if.else12:                                        ; preds = %if.end8
  br label %while.cond, !dbg !337

while.cond:                                       ; preds = %while.body, %if.else12
  %10 = load i32, ptr %prefix_count.addr, align 4, !dbg !339
  %dec = add i32 %10, -1, !dbg !339
  store i32 %dec, ptr %prefix_count.addr, align 4, !dbg !339
  %tobool13 = icmp ne i32 %10, 0, !dbg !337
  br i1 %tobool13, label %while.body, label %while.end, !dbg !337

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %temp_ptr, align 8, !dbg !340
  %incdec.ptr14 = getelementptr i8, ptr %11, i32 1, !dbg !340
  store ptr %incdec.ptr14, ptr %temp_ptr, align 8, !dbg !340
  store i8 94, ptr %11, align 1, !dbg !342
  br label %while.cond, !dbg !337, !llvm.loop !343

while.end:                                        ; preds = %while.cond
  br label %if.end15

if.end15:                                         ; preds = %while.end, %if.then11
  %12 = load i32, ptr %num_name_segs.addr, align 4, !dbg !345
  %cmp16 = icmp ugt i32 %12, 2, !dbg !347
  br i1 %cmp16, label %if.then18, label %if.else22, !dbg !348

if.then18:                                        ; preds = %if.end15
  %13 = load ptr, ptr %temp_ptr, align 8, !dbg !349
  %incdec.ptr19 = getelementptr i8, ptr %13, i32 1, !dbg !349
  store ptr %incdec.ptr19, ptr %temp_ptr, align 8, !dbg !349
  store i8 47, ptr %13, align 1, !dbg !351
  %14 = load i32, ptr %num_name_segs.addr, align 4, !dbg !352
  %conv20 = trunc i32 %14 to i8, !dbg !353
  %15 = load ptr, ptr %temp_ptr, align 8, !dbg !354
  %incdec.ptr21 = getelementptr i8, ptr %15, i32 1, !dbg !354
  store ptr %incdec.ptr21, ptr %temp_ptr, align 8, !dbg !354
  store i8 %conv20, ptr %15, align 1, !dbg !355
  br label %if.end28, !dbg !356

if.else22:                                        ; preds = %if.end15
  %16 = load i32, ptr %num_name_segs.addr, align 4, !dbg !357
  %cmp23 = icmp eq i32 2, %16, !dbg !359
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !360

if.then25:                                        ; preds = %if.else22
  %17 = load ptr, ptr %temp_ptr, align 8, !dbg !361
  %incdec.ptr26 = getelementptr i8, ptr %17, i32 1, !dbg !361
  store ptr %incdec.ptr26, ptr %temp_ptr, align 8, !dbg !361
  store i8 46, ptr %17, align 1, !dbg !363
  br label %if.end27, !dbg !364

if.end27:                                         ; preds = %if.then25, %if.else22
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then18
  %18 = load ptr, ptr %temp_ptr, align 8, !dbg !365
  store i8 0, ptr %18, align 1, !dbg !366
  %19 = load ptr, ptr %name_string, align 8, !dbg !367
  store ptr %19, ptr %retval, align 8, !dbg !367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !367

cleanup:                                          ; preds = %if.end28, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %size_needed) #12, !dbg !368
  call void @llvm.lifetime.end.p0(i64 8, ptr %name_string) #12, !dbg !368
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp_ptr) #12, !dbg !368
  %20 = load ptr, ptr %retval, align 8, !dbg !368
  ret ptr %20, !dbg !368
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ex_name_segment(ptr noundef %in_aml_address, ptr noundef %name_string) #0 align 16 !dbg !369 {
entry:
  %retval = alloca i32, align 4
  %in_aml_address.addr = alloca ptr, align 8
  %name_string.addr = alloca ptr, align 8
  %aml_address = alloca ptr, align 8
  %status = alloca i32, align 4
  %index = alloca i32, align 4
  %char_buf = alloca [5 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %in_aml_address, ptr %in_aml_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_aml_address.addr, metadata !374, metadata !DIExpression()), !dbg !383
  store ptr %name_string, ptr %name_string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name_string.addr, metadata !375, metadata !DIExpression()), !dbg !384
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml_address) #12, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %aml_address, metadata !376, metadata !DIExpression()), !dbg !386
  %0 = load ptr, ptr %in_aml_address.addr, align 8, !dbg !387
  %1 = load ptr, ptr %0, align 8, !dbg !388
  store ptr %1, ptr %aml_address, align 8, !dbg !386
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #12, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %status, metadata !377, metadata !DIExpression()), !dbg !390
  store i32 0, ptr %status, align 4, !dbg !390
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %index, metadata !378, metadata !DIExpression()), !dbg !392
  call void @llvm.lifetime.start.p0(i64 5, ptr %char_buf) #12, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %char_buf, metadata !379, metadata !DIExpression()), !dbg !394
  %2 = load ptr, ptr %aml_address, align 8, !dbg !395
  %3 = load i8, ptr %2, align 1, !dbg !396
  %arrayidx = getelementptr [5 x i8], ptr %char_buf, i64 0, i64 0, !dbg !397
  store i8 %3, ptr %arrayidx, align 1, !dbg !398
  %arrayidx1 = getelementptr [5 x i8], ptr %char_buf, i64 0, i64 0, !dbg !399
  %4 = load i8, ptr %arrayidx1, align 1, !dbg !399
  %conv = zext i8 %4 to i32, !dbg !399
  %cmp = icmp sle i32 48, %conv, !dbg !401
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !402

land.lhs.true:                                    ; preds = %entry
  %arrayidx3 = getelementptr [5 x i8], ptr %char_buf, i64 0, i64 0, !dbg !403
  %5 = load i8, ptr %arrayidx3, align 1, !dbg !403
  %conv4 = zext i8 %5 to i32, !dbg !403
  %cmp5 = icmp sle i32 %conv4, 57, !dbg !404
  br i1 %cmp5, label %if.then, label %if.end, !dbg !405

if.then:                                          ; preds = %land.lhs.true
  %arrayidx7 = getelementptr [5 x i8], ptr %char_buf, i64 0, i64 0, !dbg !406
  %6 = load i8, ptr %arrayidx7, align 1, !dbg !406
  %conv8 = zext i8 %6 to i32, !dbg !406
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 139, ptr noundef @.str.3, i32 noundef %conv8) #13, !dbg !406
  store i32 16386, ptr %retval, align 4, !dbg !408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !408

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %index, align 4, !dbg !409
  br label %for.cond, !dbg !411

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %index, align 4, !dbg !412
  %cmp9 = icmp ult i32 %7, 4, !dbg !414
  br i1 %cmp9, label %land.rhs, label %land.end, !dbg !415

land.rhs:                                         ; preds = %for.cond
  %8 = load ptr, ptr %aml_address, align 8, !dbg !416
  %9 = load i8, ptr %8, align 1, !dbg !417
  %call = call zeroext i8 @acpi_ut_valid_name_char(i8 noundef zeroext %9, i32 noundef 0) #13, !dbg !418
  %conv11 = zext i8 %call to i32, !dbg !419
  %tobool = icmp ne i32 %conv11, 0, !dbg !415
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ], !dbg !420
  br i1 %10, label %for.body, label %for.end, !dbg !421

for.body:                                         ; preds = %land.end
  %11 = load ptr, ptr %aml_address, align 8, !dbg !422
  %incdec.ptr = getelementptr i8, ptr %11, i32 1, !dbg !422
  store ptr %incdec.ptr, ptr %aml_address, align 8, !dbg !422
  %12 = load i8, ptr %11, align 1, !dbg !424
  %13 = load i32, ptr %index, align 4, !dbg !425
  %idxprom = zext i32 %13 to i64, !dbg !426
  %arrayidx12 = getelementptr [5 x i8], ptr %char_buf, i64 0, i64 %idxprom, !dbg !426
  store i8 %12, ptr %arrayidx12, align 1, !dbg !427
  br label %for.inc, !dbg !428

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %index, align 4, !dbg !429
  %inc = add i32 %14, 1, !dbg !429
  store i32 %inc, ptr %index, align 4, !dbg !429
  br label %for.cond, !dbg !430, !llvm.loop !431

for.end:                                          ; preds = %land.end
  %15 = load i32, ptr %index, align 4, !dbg !433
  %cmp13 = icmp eq i32 %15, 4, !dbg !435
  br i1 %cmp13, label %if.then15, label %if.else21, !dbg !436

if.then15:                                        ; preds = %for.end
  %arrayidx16 = getelementptr [5 x i8], ptr %char_buf, i64 0, i64 4, !dbg !437
  store i8 0, ptr %arrayidx16, align 1, !dbg !439
  %16 = load ptr, ptr %name_string.addr, align 8, !dbg !440
  %tobool17 = icmp ne ptr %16, null, !dbg !440
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !442

if.then18:                                        ; preds = %if.then15
  %17 = load ptr, ptr %name_string.addr, align 8, !dbg !443
  %arraydecay = getelementptr inbounds [5 x i8], ptr %char_buf, i64 0, i64 0, !dbg !445
  %call19 = call ptr @strcat(ptr noundef %17, ptr noundef %arraydecay) #13, !dbg !446
  br label %if.end20, !dbg !447

if.else:                                          ; preds = %if.then15
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then18
  br label %if.end28, !dbg !448

if.else21:                                        ; preds = %for.end
  %18 = load i32, ptr %index, align 4, !dbg !449
  %cmp22 = icmp eq i32 %18, 0, !dbg !451
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !452

if.then24:                                        ; preds = %if.else21
  store i32 16386, ptr %status, align 4, !dbg !453
  br label %if.end27, !dbg !455

if.else25:                                        ; preds = %if.else21
  store i32 12301, ptr %status, align 4, !dbg !456
  %19 = load ptr, ptr %aml_address, align 8, !dbg !458
  %20 = load i8, ptr %19, align 1, !dbg !458
  %conv26 = zext i8 %20 to i32, !dbg !458
  %21 = load ptr, ptr %aml_address, align 8, !dbg !458
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 180, ptr noundef @.str.4, i32 noundef %conv26, ptr noundef %21) #13, !dbg !458
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then24
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end20
  %22 = load ptr, ptr %aml_address, align 8, !dbg !459
  %23 = ptrtoint ptr %22 to i64, !dbg !459
  %24 = inttoptr i64 %23 to ptr, !dbg !459
  %25 = load ptr, ptr %in_aml_address.addr, align 8, !dbg !460
  store ptr %24, ptr %25, align 8, !dbg !461
  %26 = load i32, ptr %status, align 4, !dbg !462
  store i32 %26, ptr %retval, align 4, !dbg !462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !462

cleanup:                                          ; preds = %if.end28, %if.then
  call void @llvm.lifetime.end.p0(i64 5, ptr %char_buf) #12, !dbg !463
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !463
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #12, !dbg !463
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml_address) #12, !dbg !463
  %27 = load i32, ptr %retval, align 4, !dbg !463
  ret i32 %27, !dbg !463
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !464 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !469 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !474, metadata !DIExpression()), !dbg !475
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !476
  call void @kfree(ptr noundef %0) #13, !dbg !477
  ret void, !dbg !478
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate(i64 noundef %size) #4 align 16 !dbg !479 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !483, metadata !DIExpression()), !dbg !494
  %0 = load i64, ptr %size.addr, align 8, !dbg !495
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #12, !dbg !496
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !484, metadata !DIExpression()), !dbg !496
  br label %do.body, !dbg !496

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !497
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !486, metadata !DIExpression()), !dbg !497
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !497
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !489, metadata !DIExpression()), !dbg !497
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !497
  %conv = zext i1 %cmp to i32, !dbg !497
  store i32 1, ptr %tmp, align 4, !dbg !497
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !498
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !498
  %1 = load i32, ptr %tmp, align 4, !dbg !497
  %call = call i64 @arch_local_save_flags() #13, !dbg !498
  store i64 %call, ptr %_flags, align 8, !dbg !498
  br label %do.cond, !dbg !498

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !498

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #12, !dbg !499
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !490, metadata !DIExpression()), !dbg !499
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #12, !dbg !499
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !493, metadata !DIExpression()), !dbg !499
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !499
  %conv6 = zext i1 %cmp5 to i32, !dbg !499
  store i32 1, ptr %tmp7, align 4, !dbg !499
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #12, !dbg !500
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #12, !dbg !500
  %2 = load i32, ptr %tmp7, align 4, !dbg !499
  %3 = load i64, ptr %_flags, align 8, !dbg !500
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #13, !dbg !500
  store i32 %call9, ptr %tmp8, align 4, !dbg !500
  %4 = load i32, ptr %tmp8, align 4, !dbg !500
  store i32 %4, ptr %tmp1, align 4, !dbg !498
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #12, !dbg !501
  %5 = load i32, ptr %tmp1, align 4, !dbg !496
  %tobool = icmp ne i32 %5, 0, !dbg !501
  %6 = zext i1 %tobool to i64, !dbg !501
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !501
  %call10 = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %cond) #14, !dbg !502
  ret ptr %call10, !dbg !503
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !504 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !512, metadata !DIExpression()), !dbg !517
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !513, metadata !DIExpression()), !dbg !518
  %0 = load i64, ptr %size.addr, align 8, !dbg !519
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !520
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !521

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !522
  %tobool = icmp ne i64 %2, 0, !dbg !522
  br i1 %tobool, label %if.then, label %if.end7, !dbg !523

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %index, metadata !514, metadata !DIExpression()), !dbg !525
  %3 = load i64, ptr %size.addr, align 8, !dbg !526
  %cmp = icmp ugt i64 %3, 8192, !dbg !528
  br i1 %cmp, label %if.then1, label %if.end, !dbg !529

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !530
  %5 = load i32, ptr %flags.addr, align 4, !dbg !531
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #14, !dbg !532
  store ptr %call, ptr %retval, align 8, !dbg !533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !533

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !534
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #13, !dbg !534
  store i32 %call2, ptr %index, align 4, !dbg !535
  %7 = load i32, ptr %flags.addr, align 4, !dbg !536
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !537
  %9 = ptrtoint ptr %8 to i64, !dbg !537
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #13, !dbg !538
  %idxprom = zext i32 %call3 to i64, !dbg !539
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !539
  %10 = load i32, ptr %index, align 4, !dbg !540
  %idxprom4 = zext i32 %10 to i64, !dbg !539
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !539
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !539
  %12 = load i32, ptr %flags.addr, align 4, !dbg !541
  %13 = load i64, ptr %size.addr, align 8, !dbg !542
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #15, !dbg !543
  store ptr %call6, ptr %retval, align 8, !dbg !544
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !544

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !545
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !546
  %15 = load i32, ptr %flags.addr, align 4, !dbg !547
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #14, !dbg !548
  store ptr %call8, ptr %retval, align 8, !dbg !549
  br label %return, !dbg !549

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !550
  ret ptr %16, !dbg !550
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !551 {
entry:
  %call = call i64 @native_save_fl() #13, !dbg !555
  ret i64 %call, !dbg !556
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !557 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !562, metadata !DIExpression()), !dbg !563
  %0 = load i64, ptr %flags.addr, align 8, !dbg !564
  %and = and i64 %0, 512, !dbg !565
  %tobool = icmp ne i64 %and, 0, !dbg !566
  %lnot = xor i1 %tobool, true, !dbg !566
  %lnot.ext = zext i1 %lnot to i32, !dbg !566
  ret i32 %lnot.ext, !dbg !567
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !568 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !569 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !575, metadata !DIExpression()), !dbg !577
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !576, metadata !DIExpression()), !dbg !578
  %0 = load i64, ptr %size.addr, align 8, !dbg !579
  %tobool = icmp ne i64 %0, 0, !dbg !579
  br i1 %tobool, label %if.end, label %if.then, !dbg !581

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !582
  br label %return, !dbg !582

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !583
  %cmp = icmp ule i64 %1, 8, !dbg !585
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !586

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !587
  br label %return, !dbg !587

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !588
  %cmp3 = icmp ugt i64 %2, 64, !dbg !590
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !591

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !592
  %cmp4 = icmp ule i64 %3, 96, !dbg !593
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !594

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !595
  br label %return, !dbg !595

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !596
  %cmp7 = icmp ugt i64 %4, 128, !dbg !598
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !599

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !600
  %cmp9 = icmp ule i64 %5, 192, !dbg !601
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !602

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !603
  br label %return, !dbg !603

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !604
  %cmp12 = icmp ule i64 %6, 8, !dbg !606
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !607

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !608
  br label %return, !dbg !608

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !609
  %cmp15 = icmp ule i64 %7, 16, !dbg !611
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !612

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !613
  br label %return, !dbg !613

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !614
  %cmp18 = icmp ule i64 %8, 32, !dbg !616
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !617

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !618
  br label %return, !dbg !618

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !619
  %cmp21 = icmp ule i64 %9, 64, !dbg !621
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !622

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !623
  br label %return, !dbg !623

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !624
  %cmp24 = icmp ule i64 %10, 128, !dbg !626
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !627

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !628
  br label %return, !dbg !628

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !629
  %cmp27 = icmp ule i64 %11, 256, !dbg !631
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !632

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !633
  br label %return, !dbg !633

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !634
  %cmp30 = icmp ule i64 %12, 512, !dbg !636
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !637

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !638
  br label %return, !dbg !638

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !639
  %cmp33 = icmp ule i64 %13, 1024, !dbg !641
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !642

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !643
  br label %return, !dbg !643

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !644
  %cmp36 = icmp ule i64 %14, 2048, !dbg !646
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !647

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !648
  br label %return, !dbg !648

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !649
  %cmp39 = icmp ule i64 %15, 4096, !dbg !651
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !652

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !653
  br label %return, !dbg !653

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !654
  %cmp42 = icmp ule i64 %16, 8192, !dbg !656
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !657

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !658
  br label %return, !dbg !658

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !659
  %cmp45 = icmp ule i64 %17, 16384, !dbg !661
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !662

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !663
  br label %return, !dbg !663

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !664
  %cmp48 = icmp ule i64 %18, 32768, !dbg !666
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !667

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !668
  br label %return, !dbg !668

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !669
  %cmp51 = icmp ule i64 %19, 65536, !dbg !671
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !672

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !673
  br label %return, !dbg !673

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !674
  %cmp54 = icmp ule i64 %20, 131072, !dbg !676
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !677

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !678
  br label %return, !dbg !678

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !679
  %cmp57 = icmp ule i64 %21, 262144, !dbg !681
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !682

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !683
  br label %return, !dbg !683

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !684
  %cmp60 = icmp ule i64 %22, 524288, !dbg !686
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !687

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !688
  br label %return, !dbg !688

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !689
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !691
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !692

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !693
  br label %return, !dbg !693

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !694
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !696
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !697

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !698
  br label %return, !dbg !698

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !699, !range !701, !noundef !702
  %tobool69 = trunc i8 %25 to i1, !dbg !699
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !703

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !704

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #16, !dbg !705, !srcloc !708
  unreachable, !dbg !705

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !709

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !710

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !711

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !713

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !711

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #12, !dbg !715, !srcloc !717
  br label %do.end75, !dbg !715

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !711

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !718
  br label %return, !dbg !718

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !719
  ret i32 %26, !dbg !719
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !720 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !726 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !730, metadata !DIExpression()), !dbg !732
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !731, metadata !DIExpression()), !dbg !733
  %0 = load i32, ptr %flags.addr, align 4, !dbg !734
  %and = and i32 %0, 17, !dbg !734
  %cmp = icmp eq i32 %and, 0, !dbg !734
  %lnot = xor i1 %cmp, true, !dbg !734
  %lnot1 = xor i1 %lnot, true, !dbg !734
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !734
  %conv = sext i32 %lnot.ext to i64, !dbg !734
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !734
  %tobool = icmp ne i64 %expval, 0, !dbg !734
  br i1 %tobool, label %if.then, label %if.end, !dbg !736

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !737
  br label %return, !dbg !737

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !738
  %and2 = and i32 %1, 1, !dbg !740
  %tobool3 = icmp ne i32 %and2, 0, !dbg !740
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !741

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !742
  br label %return, !dbg !742

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !743
  br label %return, !dbg !743

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !745
  ret i32 %2, !dbg !745
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !746 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !747 dso_local void @__compiletime_assert_173() #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !750 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !753
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !752, metadata !DIExpression()), !dbg !754
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #12, !dbg !755, !srcloc !756
  %0 = load i64, ptr %flags, align 8, !dbg !757
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !758
  ret i64 %0, !dbg !759
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !760 dso_local zeroext i8 @acpi_ut_valid_name_char(i8 noundef zeroext, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !764 dso_local ptr @strcat(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !768 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { noredzone allocsize(0) }
attributes #15 = { noredzone allocsize(2) }
attributes #16 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !68, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exnames.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exnames\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exnames.ll drivers/acpi/acpica/exnames.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !45, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exnames.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ae2ba97e12016def6f1c05c364bcee05")
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
!21 = !{!22, !24, !28, !31, !35, !36, !38, !39, !40, !44}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !23, line: 421, baseType: !24)
!23 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !30)
!30 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !23, line: 127, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !34)
!34 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !37, line: 154, baseType: !7)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !43)
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !37, line: 42, baseType: !38)
!45 = !{!46, !51, !56, !58, !63, !0}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !3, line: 383, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 168, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 21)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 216, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 27)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !48, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !3, line: 139, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 208, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 26)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !3, line: 180, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 288, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 36)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, elements: !70)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!70 = !{!71}
!71 = !DISubrange(count: 8)
!72 = !{i32 7, !"Dwarf Version", i32 5}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 8, !"cf-protection-branch", i32 1}
!76 = !{i32 4, !"function_return_thunk_extern", i32 1}
!77 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!78 = !{i32 1, !"Code Model", i32 2}
!79 = !{i32 1, !"override-stack-alignment", i32 8}
!80 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!81 = distinct !DISubprogram(name: "acpi_ex_get_name_string", scope: !3, file: !3, line: 207, type: !82, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!82 = !DISubroutineType(types: !83)
!83 = !{!22, !84, !40, !85, !87}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !23, line: 644, baseType: !24)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!89 = !DILocalVariable(name: "data_type", arg: 1, scope: !81, file: !3, line: 207, type: !84)
!90 = !DILocalVariable(name: "in_aml_address", arg: 2, scope: !81, file: !3, line: 208, type: !40)
!91 = !DILocalVariable(name: "out_name_string", arg: 3, scope: !81, file: !3, line: 209, type: !85)
!92 = !DILocalVariable(name: "out_name_length", arg: 4, scope: !81, file: !3, line: 209, type: !87)
!93 = !DILocalVariable(name: "status", scope: !81, file: !3, line: 211, type: !22)
!94 = !DILocalVariable(name: "aml_address", scope: !81, file: !3, line: 212, type: !40)
!95 = !DILocalVariable(name: "name_string", scope: !81, file: !3, line: 213, type: !86)
!96 = !DILocalVariable(name: "num_segments", scope: !81, file: !3, line: 214, type: !24)
!97 = !DILocalVariable(name: "prefix_count", scope: !81, file: !3, line: 215, type: !24)
!98 = !DILocalVariable(name: "has_prefix", scope: !81, file: !3, line: 216, type: !41)
!99 = !DILocation(line: 207, column: 42, scope: !81)
!100 = !DILocation(line: 208, column: 9, scope: !81)
!101 = !DILocation(line: 209, column: 11, scope: !81)
!102 = !DILocation(line: 209, column: 34, scope: !81)
!103 = !DILocation(line: 211, column: 2, scope: !81)
!104 = !DILocation(line: 211, column: 14, scope: !81)
!105 = !DILocation(line: 212, column: 2, scope: !81)
!106 = !DILocation(line: 212, column: 6, scope: !81)
!107 = !DILocation(line: 212, column: 20, scope: !81)
!108 = !DILocation(line: 213, column: 2, scope: !81)
!109 = !DILocation(line: 213, column: 8, scope: !81)
!110 = !DILocation(line: 214, column: 2, scope: !81)
!111 = !DILocation(line: 214, column: 6, scope: !81)
!112 = !DILocation(line: 215, column: 2, scope: !81)
!113 = !DILocation(line: 215, column: 6, scope: !81)
!114 = !DILocation(line: 216, column: 2, scope: !81)
!115 = !DILocation(line: 216, column: 5, scope: !81)
!116 = !DILocation(line: 220, column: 38, scope: !117)
!117 = distinct !DILexicalBlock(scope: !81, file: !3, line: 220, column: 6)
!118 = !DILocation(line: 220, column: 35, scope: !117)
!119 = !DILocation(line: 220, column: 48, scope: !117)
!120 = !DILocation(line: 221, column: 36, scope: !117)
!121 = !DILocation(line: 221, column: 33, scope: !117)
!122 = !DILocation(line: 221, column: 46, scope: !117)
!123 = !DILocation(line: 222, column: 37, scope: !117)
!124 = !DILocation(line: 222, column: 34, scope: !117)
!125 = !DILocation(line: 220, column: 6, scope: !81)
!126 = !DILocation(line: 226, column: 17, scope: !127)
!127 = distinct !DILexicalBlock(scope: !117, file: !3, line: 222, column: 48)
!128 = !DILocation(line: 226, column: 15, scope: !127)
!129 = !DILocation(line: 227, column: 8, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !3, line: 227, column: 7)
!131 = !DILocation(line: 227, column: 7, scope: !127)
!132 = !DILocation(line: 228, column: 11, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !3, line: 227, column: 21)
!134 = !DILocation(line: 229, column: 3, scope: !133)
!135 = !DILocation(line: 231, column: 43, scope: !136)
!136 = distinct !DILexicalBlock(scope: !130, file: !3, line: 229, column: 10)
!137 = !DILocation(line: 231, column: 8, scope: !136)
!138 = !DILocation(line: 230, column: 11, scope: !136)
!139 = !DILocation(line: 233, column: 2, scope: !127)
!140 = !DILocation(line: 238, column: 12, scope: !141)
!141 = distinct !DILexicalBlock(scope: !117, file: !3, line: 233, column: 9)
!142 = !DILocation(line: 238, column: 11, scope: !141)
!143 = !DILocation(line: 238, column: 3, scope: !141)
!144 = !DILocation(line: 249, column: 15, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !3, line: 238, column: 25)
!146 = !DILocation(line: 250, column: 17, scope: !145)
!147 = !DILocation(line: 251, column: 15, scope: !145)
!148 = !DILocation(line: 252, column: 4, scope: !145)
!149 = !DILocation(line: 258, column: 4, scope: !145)
!150 = !DILocation(line: 263, column: 16, scope: !151)
!151 = distinct !DILexicalBlock(scope: !145, file: !3, line: 258, column: 7)
!152 = !DILocation(line: 264, column: 17, scope: !151)
!153 = !DILocation(line: 266, column: 4, scope: !151)
!154 = !DILocation(line: 266, column: 14, scope: !145)
!155 = !DILocation(line: 266, column: 13, scope: !145)
!156 = !DILocation(line: 266, column: 26, scope: !145)
!157 = distinct !{!157, !149, !158, !159, !160}
!158 = !DILocation(line: 266, column: 46, scope: !145)
!159 = !{!"llvm.loop.mustprogress"}
!160 = !{!"llvm.loop.unroll.disable"}
!161 = !DILocation(line: 268, column: 15, scope: !145)
!162 = !DILocation(line: 269, column: 4, scope: !145)
!163 = !DILocation(line: 275, column: 4, scope: !145)
!164 = !DILocation(line: 280, column: 12, scope: !141)
!165 = !DILocation(line: 280, column: 11, scope: !141)
!166 = !DILocation(line: 280, column: 3, scope: !141)
!167 = !DILocation(line: 287, column: 15, scope: !168)
!168 = distinct !DILexicalBlock(scope: !141, file: !3, line: 280, column: 25)
!169 = !DILocation(line: 289, column: 37, scope: !168)
!170 = !DILocation(line: 289, column: 8, scope: !168)
!171 = !DILocation(line: 288, column: 16, scope: !168)
!172 = !DILocation(line: 290, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !168, file: !3, line: 290, column: 8)
!174 = !DILocation(line: 290, column: 8, scope: !168)
!175 = !DILocation(line: 291, column: 12, scope: !176)
!176 = distinct !DILexicalBlock(scope: !173, file: !3, line: 290, column: 22)
!177 = !DILocation(line: 292, column: 5, scope: !176)
!178 = !DILocation(line: 297, column: 15, scope: !168)
!179 = !DILocation(line: 300, column: 43, scope: !168)
!180 = !DILocation(line: 300, column: 8, scope: !168)
!181 = !DILocation(line: 299, column: 11, scope: !168)
!182 = !DILocation(line: 301, column: 8, scope: !183)
!183 = distinct !DILexicalBlock(scope: !168, file: !3, line: 301, column: 8)
!184 = !DILocation(line: 301, column: 8, scope: !168)
!185 = !DILocation(line: 304, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !3, line: 301, column: 30)
!187 = !DILocation(line: 303, column: 9, scope: !186)
!188 = !DILocation(line: 302, column: 12, scope: !186)
!189 = !DILocation(line: 305, column: 4, scope: !186)
!190 = !DILocation(line: 306, column: 4, scope: !168)
!191 = !DILocation(line: 316, column: 15, scope: !168)
!192 = !DILocation(line: 317, column: 20, scope: !168)
!193 = !DILocation(line: 317, column: 19, scope: !168)
!194 = !DILocation(line: 317, column: 17, scope: !168)
!195 = !DILocation(line: 320, column: 37, scope: !168)
!196 = !DILocation(line: 321, column: 9, scope: !168)
!197 = !DILocation(line: 320, column: 8, scope: !168)
!198 = !DILocation(line: 319, column: 16, scope: !168)
!199 = !DILocation(line: 322, column: 9, scope: !200)
!200 = distinct !DILexicalBlock(scope: !168, file: !3, line: 322, column: 8)
!201 = !DILocation(line: 322, column: 8, scope: !168)
!202 = !DILocation(line: 323, column: 12, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !3, line: 322, column: 22)
!204 = !DILocation(line: 324, column: 5, scope: !203)
!205 = !DILocation(line: 329, column: 15, scope: !168)
!206 = !DILocation(line: 330, column: 15, scope: !168)
!207 = !DILocation(line: 332, column: 4, scope: !168)
!208 = !DILocation(line: 332, column: 11, scope: !168)
!209 = !DILocation(line: 332, column: 24, scope: !168)
!210 = !DILocation(line: 335, column: 12, scope: !168)
!211 = !DILocation(line: 334, column: 5, scope: !168)
!212 = !DILocation(line: 333, column: 19, scope: !168)
!213 = !DILocation(line: 335, column: 26, scope: !168)
!214 = !DILocation(line: 0, scope: !168)
!215 = !DILocation(line: 336, column: 17, scope: !216)
!216 = distinct !DILexicalBlock(scope: !168, file: !3, line: 335, column: 36)
!217 = distinct !{!217, !207, !218, !159, !160}
!218 = !DILocation(line: 337, column: 4, scope: !168)
!219 = !DILocation(line: 339, column: 4, scope: !168)
!220 = !DILocation(line: 345, column: 8, scope: !221)
!221 = distinct !DILexicalBlock(scope: !168, file: !3, line: 345, column: 8)
!222 = !DILocation(line: 345, column: 21, scope: !221)
!223 = !DILocation(line: 345, column: 8, scope: !168)
!224 = !DILocation(line: 348, column: 4, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !3, line: 345, column: 41)
!226 = !DILocation(line: 352, column: 15, scope: !168)
!227 = !DILocation(line: 354, column: 37, scope: !168)
!228 = !DILocation(line: 354, column: 8, scope: !168)
!229 = !DILocation(line: 353, column: 16, scope: !168)
!230 = !DILocation(line: 355, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !168, file: !3, line: 355, column: 8)
!232 = !DILocation(line: 355, column: 8, scope: !168)
!233 = !DILocation(line: 356, column: 12, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !3, line: 355, column: 22)
!235 = !DILocation(line: 357, column: 5, scope: !234)
!236 = !DILocation(line: 360, column: 4, scope: !168)
!237 = !DILocation(line: 367, column: 37, scope: !168)
!238 = !DILocation(line: 367, column: 8, scope: !168)
!239 = !DILocation(line: 366, column: 16, scope: !168)
!240 = !DILocation(line: 368, column: 9, scope: !241)
!241 = distinct !DILexicalBlock(scope: !168, file: !3, line: 368, column: 8)
!242 = !DILocation(line: 368, column: 8, scope: !168)
!243 = !DILocation(line: 369, column: 12, scope: !244)
!244 = distinct !DILexicalBlock(scope: !241, file: !3, line: 368, column: 22)
!245 = !DILocation(line: 370, column: 5, scope: !244)
!246 = !DILocation(line: 374, column: 43, scope: !168)
!247 = !DILocation(line: 374, column: 8, scope: !168)
!248 = !DILocation(line: 373, column: 11, scope: !168)
!249 = !DILocation(line: 375, column: 4, scope: !168)
!250 = !DILocation(line: 379, column: 25, scope: !251)
!251 = distinct !DILexicalBlock(scope: !81, file: !3, line: 379, column: 6)
!252 = !DILocation(line: 379, column: 22, scope: !251)
!253 = !DILocation(line: 379, column: 32, scope: !251)
!254 = !DILocation(line: 379, column: 35, scope: !251)
!255 = !DILocation(line: 379, column: 6, scope: !81)
!256 = !DILocation(line: 383, column: 3, scope: !257)
!257 = distinct !DILexicalBlock(scope: !251, file: !3, line: 379, column: 47)
!258 = !DILocation(line: 384, column: 10, scope: !257)
!259 = !DILocation(line: 385, column: 2, scope: !257)
!260 = !DILocation(line: 387, column: 6, scope: !261)
!261 = distinct !DILexicalBlock(scope: !81, file: !3, line: 387, column: 6)
!262 = !DILocation(line: 387, column: 6, scope: !81)
!263 = !DILocation(line: 388, column: 7, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 388, column: 7)
!265 = distinct !DILexicalBlock(scope: !261, file: !3, line: 387, column: 28)
!266 = !DILocation(line: 388, column: 7, scope: !265)
!267 = !DILocation(line: 389, column: 4, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !3, line: 388, column: 20)
!269 = !DILocation(line: 390, column: 3, scope: !268)
!270 = !DILocation(line: 391, column: 3, scope: !265)
!271 = !DILocation(line: 394, column: 21, scope: !81)
!272 = !DILocation(line: 394, column: 3, scope: !81)
!273 = !DILocation(line: 394, column: 19, scope: !81)
!274 = !DILocation(line: 395, column: 28, scope: !81)
!275 = !DILocation(line: 395, column: 42, scope: !81)
!276 = !DILocation(line: 395, column: 40, scope: !81)
!277 = !DILocation(line: 395, column: 21, scope: !81)
!278 = !DILocation(line: 395, column: 3, scope: !81)
!279 = !DILocation(line: 395, column: 19, scope: !81)
!280 = !DILocation(line: 397, column: 2, scope: !81)
!281 = !DILocation(line: 398, column: 1, scope: !81)
!282 = distinct !DISubprogram(name: "acpi_ex_allocate_name_string", scope: !3, file: !3, line: 39, type: !283, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{!86, !24, !24}
!285 = !{!286, !287, !288, !289, !290}
!286 = !DILocalVariable(name: "prefix_count", arg: 1, scope: !282, file: !3, line: 39, type: !24)
!287 = !DILocalVariable(name: "num_name_segs", arg: 2, scope: !282, file: !3, line: 39, type: !24)
!288 = !DILocalVariable(name: "temp_ptr", scope: !282, file: !3, line: 41, type: !86)
!289 = !DILocalVariable(name: "name_string", scope: !282, file: !3, line: 42, type: !86)
!290 = !DILocalVariable(name: "size_needed", scope: !282, file: !3, line: 43, type: !24)
!291 = !DILocation(line: 39, column: 47, scope: !282)
!292 = !DILocation(line: 39, column: 65, scope: !282)
!293 = !DILocation(line: 41, column: 2, scope: !282)
!294 = !DILocation(line: 41, column: 8, scope: !282)
!295 = !DILocation(line: 42, column: 2, scope: !282)
!296 = !DILocation(line: 42, column: 8, scope: !282)
!297 = !DILocation(line: 43, column: 2, scope: !282)
!298 = !DILocation(line: 43, column: 6, scope: !282)
!299 = !DILocation(line: 52, column: 6, scope: !300)
!300 = distinct !DILexicalBlock(scope: !282, file: !3, line: 52, column: 6)
!301 = !DILocation(line: 52, column: 19, scope: !300)
!302 = !DILocation(line: 52, column: 6, scope: !282)
!303 = !DILocation(line: 56, column: 42, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !3, line: 52, column: 39)
!305 = !DILocation(line: 56, column: 40, scope: !304)
!306 = !DILocation(line: 56, column: 19, scope: !304)
!307 = !DILocation(line: 56, column: 57, scope: !304)
!308 = !DILocation(line: 56, column: 61, scope: !304)
!309 = !DILocation(line: 56, column: 15, scope: !304)
!310 = !DILocation(line: 57, column: 2, scope: !304)
!311 = !DILocation(line: 59, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !300, file: !3, line: 57, column: 9)
!313 = !DILocation(line: 59, column: 43, scope: !312)
!314 = !DILocation(line: 59, column: 41, scope: !312)
!315 = !DILocation(line: 59, column: 20, scope: !312)
!316 = !DILocation(line: 59, column: 58, scope: !312)
!317 = !DILocation(line: 59, column: 62, scope: !312)
!318 = !DILocation(line: 58, column: 15, scope: !312)
!319 = !DILocation(line: 66, column: 16, scope: !282)
!320 = !DILocation(line: 66, column: 14, scope: !282)
!321 = !DILocation(line: 67, column: 7, scope: !322)
!322 = distinct !DILexicalBlock(scope: !282, file: !3, line: 67, column: 6)
!323 = !DILocation(line: 67, column: 6, scope: !282)
!324 = !DILocation(line: 68, column: 3, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !3, line: 67, column: 20)
!326 = !DILocation(line: 70, column: 3, scope: !325)
!327 = !DILocation(line: 73, column: 13, scope: !282)
!328 = !DILocation(line: 73, column: 11, scope: !282)
!329 = !DILocation(line: 77, column: 6, scope: !330)
!330 = distinct !DILexicalBlock(scope: !282, file: !3, line: 77, column: 6)
!331 = !DILocation(line: 77, column: 19, scope: !330)
!332 = !DILocation(line: 77, column: 6, scope: !282)
!333 = !DILocation(line: 78, column: 12, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !3, line: 77, column: 39)
!335 = !DILocation(line: 78, column: 15, scope: !334)
!336 = !DILocation(line: 79, column: 2, scope: !334)
!337 = !DILocation(line: 80, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !330, file: !3, line: 79, column: 9)
!339 = !DILocation(line: 80, column: 22, scope: !338)
!340 = !DILocation(line: 81, column: 13, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !3, line: 80, column: 26)
!342 = !DILocation(line: 81, column: 16, scope: !341)
!343 = distinct !{!343, !337, !344, !159, !160}
!344 = !DILocation(line: 82, column: 3, scope: !338)
!345 = !DILocation(line: 87, column: 6, scope: !346)
!346 = distinct !DILexicalBlock(scope: !282, file: !3, line: 87, column: 6)
!347 = !DILocation(line: 87, column: 20, scope: !346)
!348 = !DILocation(line: 87, column: 6, scope: !282)
!349 = !DILocation(line: 91, column: 12, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !3, line: 87, column: 25)
!351 = !DILocation(line: 91, column: 15, scope: !350)
!352 = !DILocation(line: 92, column: 23, scope: !350)
!353 = !DILocation(line: 92, column: 17, scope: !350)
!354 = !DILocation(line: 92, column: 12, scope: !350)
!355 = !DILocation(line: 92, column: 15, scope: !350)
!356 = !DILocation(line: 93, column: 2, scope: !350)
!357 = !DILocation(line: 93, column: 18, scope: !358)
!358 = distinct !DILexicalBlock(scope: !346, file: !3, line: 93, column: 13)
!359 = !DILocation(line: 93, column: 15, scope: !358)
!360 = !DILocation(line: 93, column: 13, scope: !346)
!361 = !DILocation(line: 97, column: 12, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !3, line: 93, column: 33)
!363 = !DILocation(line: 97, column: 15, scope: !362)
!364 = !DILocation(line: 98, column: 2, scope: !362)
!365 = !DILocation(line: 104, column: 3, scope: !282)
!366 = !DILocation(line: 104, column: 12, scope: !282)
!367 = !DILocation(line: 106, column: 2, scope: !282)
!368 = !DILocation(line: 107, column: 1, scope: !282)
!369 = distinct !DISubprogram(name: "acpi_ex_name_segment", scope: !3, file: !3, line: 123, type: !370, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !373)
!370 = !DISubroutineType(types: !371)
!371 = !{!22, !372, !86}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!373 = !{!374, !375, !376, !377, !378, !379}
!374 = !DILocalVariable(name: "in_aml_address", arg: 1, scope: !369, file: !3, line: 123, type: !372)
!375 = !DILocalVariable(name: "name_string", arg: 2, scope: !369, file: !3, line: 123, type: !86)
!376 = !DILocalVariable(name: "aml_address", scope: !369, file: !3, line: 125, type: !86)
!377 = !DILocalVariable(name: "status", scope: !369, file: !3, line: 126, type: !22)
!378 = !DILocalVariable(name: "index", scope: !369, file: !3, line: 127, type: !24)
!379 = !DILocalVariable(name: "char_buf", scope: !369, file: !3, line: 128, type: !380)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 40, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 5)
!383 = !DILocation(line: 123, column: 47, scope: !369)
!384 = !DILocation(line: 123, column: 69, scope: !369)
!385 = !DILocation(line: 125, column: 2, scope: !369)
!386 = !DILocation(line: 125, column: 8, scope: !369)
!387 = !DILocation(line: 125, column: 31, scope: !369)
!388 = !DILocation(line: 125, column: 30, scope: !369)
!389 = !DILocation(line: 126, column: 2, scope: !369)
!390 = !DILocation(line: 126, column: 14, scope: !369)
!391 = !DILocation(line: 127, column: 2, scope: !369)
!392 = !DILocation(line: 127, column: 6, scope: !369)
!393 = !DILocation(line: 128, column: 2, scope: !369)
!394 = !DILocation(line: 128, column: 7, scope: !369)
!395 = !DILocation(line: 136, column: 17, scope: !369)
!396 = !DILocation(line: 136, column: 16, scope: !369)
!397 = !DILocation(line: 136, column: 2, scope: !369)
!398 = !DILocation(line: 136, column: 14, scope: !369)
!399 = !DILocation(line: 138, column: 13, scope: !400)
!400 = distinct !DILexicalBlock(scope: !369, file: !3, line: 138, column: 6)
!401 = !DILocation(line: 138, column: 10, scope: !400)
!402 = !DILocation(line: 138, column: 25, scope: !400)
!403 = !DILocation(line: 138, column: 28, scope: !400)
!404 = !DILocation(line: 138, column: 40, scope: !400)
!405 = !DILocation(line: 138, column: 6, scope: !369)
!406 = !DILocation(line: 139, column: 3, scope: !407)
!407 = distinct !DILexicalBlock(scope: !400, file: !3, line: 138, column: 48)
!408 = !DILocation(line: 140, column: 3, scope: !407)
!409 = !DILocation(line: 143, column: 13, scope: !410)
!410 = distinct !DILexicalBlock(scope: !369, file: !3, line: 143, column: 2)
!411 = !DILocation(line: 143, column: 7, scope: !410)
!412 = !DILocation(line: 144, column: 8, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !3, line: 143, column: 2)
!414 = !DILocation(line: 144, column: 14, scope: !413)
!415 = !DILocation(line: 145, column: 7, scope: !413)
!416 = !DILocation(line: 145, column: 36, scope: !413)
!417 = !DILocation(line: 145, column: 35, scope: !413)
!418 = !DILocation(line: 145, column: 11, scope: !413)
!419 = !DILocation(line: 145, column: 10, scope: !413)
!420 = !DILocation(line: 0, scope: !413)
!421 = !DILocation(line: 143, column: 2, scope: !410)
!422 = !DILocation(line: 146, column: 33, scope: !423)
!423 = distinct !DILexicalBlock(scope: !413, file: !3, line: 145, column: 63)
!424 = !DILocation(line: 146, column: 21, scope: !423)
!425 = !DILocation(line: 146, column: 12, scope: !423)
!426 = !DILocation(line: 146, column: 3, scope: !423)
!427 = !DILocation(line: 146, column: 19, scope: !423)
!428 = !DILocation(line: 147, column: 2, scope: !423)
!429 = !DILocation(line: 145, column: 59, scope: !413)
!430 = !DILocation(line: 143, column: 2, scope: !413)
!431 = distinct !{!431, !421, !432, !159, !160}
!432 = !DILocation(line: 147, column: 2, scope: !410)
!433 = !DILocation(line: 151, column: 6, scope: !434)
!434 = distinct !DILexicalBlock(scope: !369, file: !3, line: 151, column: 6)
!435 = !DILocation(line: 151, column: 12, scope: !434)
!436 = !DILocation(line: 151, column: 6, scope: !369)
!437 = !DILocation(line: 155, column: 3, scope: !438)
!438 = distinct !DILexicalBlock(scope: !434, file: !3, line: 151, column: 18)
!439 = !DILocation(line: 155, column: 15, scope: !438)
!440 = !DILocation(line: 157, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !3, line: 157, column: 7)
!442 = !DILocation(line: 157, column: 7, scope: !438)
!443 = !DILocation(line: 160, column: 11, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !3, line: 157, column: 20)
!445 = !DILocation(line: 160, column: 24, scope: !444)
!446 = !DILocation(line: 160, column: 4, scope: !444)
!447 = !DILocation(line: 161, column: 3, scope: !444)
!448 = !DILocation(line: 165, column: 2, scope: !438)
!449 = !DILocation(line: 165, column: 13, scope: !450)
!450 = distinct !DILexicalBlock(scope: !434, file: !3, line: 165, column: 13)
!451 = !DILocation(line: 165, column: 19, scope: !450)
!452 = !DILocation(line: 165, column: 13, scope: !434)
!453 = !DILocation(line: 173, column: 10, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !3, line: 165, column: 25)
!455 = !DILocation(line: 174, column: 2, scope: !454)
!456 = !DILocation(line: 179, column: 10, scope: !457)
!457 = distinct !DILexicalBlock(scope: !450, file: !3, line: 174, column: 9)
!458 = !DILocation(line: 180, column: 3, scope: !457)
!459 = !DILocation(line: 185, column: 20, scope: !369)
!460 = !DILocation(line: 185, column: 3, scope: !369)
!461 = !DILocation(line: 185, column: 18, scope: !369)
!462 = !DILocation(line: 186, column: 2, scope: !369)
!463 = !DILocation(line: 187, column: 1, scope: !369)
!464 = !DISubprogram(name: "acpi_error", scope: !465, file: !465, line: 901, type: !466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!465 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!466 = !DISubroutineType(types: !467)
!467 = !{null, !468, !24, !468, null}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!469 = distinct !DISubprogram(name: "acpi_os_free", scope: !470, file: !470, line: 60, type: !471, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !473)
!470 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!471 = !DISubroutineType(types: !472)
!472 = !{null, !39}
!473 = !{!474}
!474 = !DILocalVariable(name: "memory", arg: 1, scope: !469, file: !470, line: 60, type: !39)
!475 = !DILocation(line: 60, column: 39, scope: !469)
!476 = !DILocation(line: 62, column: 8, scope: !469)
!477 = !DILocation(line: 62, column: 2, scope: !469)
!478 = !DILocation(line: 63, column: 1, scope: !469)
!479 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !470, file: !470, line: 50, type: !480, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !482)
!480 = !DISubroutineType(types: !481)
!481 = !{!39, !31}
!482 = !{!483, !484, !486, !489, !490, !493}
!483 = !DILocalVariable(name: "size", arg: 1, scope: !479, file: !470, line: 50, type: !31)
!484 = !DILocalVariable(name: "_flags", scope: !485, file: !470, line: 52, type: !38)
!485 = distinct !DILexicalBlock(scope: !479, file: !470, line: 52, column: 23)
!486 = !DILocalVariable(name: "__dummy", scope: !487, file: !470, line: 52, type: !38)
!487 = distinct !DILexicalBlock(scope: !488, file: !470, line: 52, column: 23)
!488 = distinct !DILexicalBlock(scope: !485, file: !470, line: 52, column: 23)
!489 = !DILocalVariable(name: "__dummy2", scope: !487, file: !470, line: 52, type: !38)
!490 = !DILocalVariable(name: "__dummy", scope: !491, file: !470, line: 52, type: !38)
!491 = distinct !DILexicalBlock(scope: !492, file: !470, line: 52, column: 23)
!492 = distinct !DILexicalBlock(scope: !485, file: !470, line: 52, column: 23)
!493 = !DILocalVariable(name: "__dummy2", scope: !491, file: !470, line: 52, type: !38)
!494 = !DILocation(line: 50, column: 48, scope: !479)
!495 = !DILocation(line: 52, column: 17, scope: !479)
!496 = !DILocation(line: 52, column: 23, scope: !485)
!497 = !DILocation(line: 52, column: 23, scope: !487)
!498 = !DILocation(line: 52, column: 23, scope: !488)
!499 = !DILocation(line: 52, column: 23, scope: !491)
!500 = !DILocation(line: 52, column: 23, scope: !492)
!501 = !DILocation(line: 52, column: 23, scope: !479)
!502 = !DILocation(line: 52, column: 9, scope: !479)
!503 = !DILocation(line: 52, column: 2, scope: !479)
!504 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !505, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !511)
!505 = !DISubroutineType(types: !506)
!506 = !{!39, !507, !36}
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 61, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !509, line: 72, baseType: !510)
!509 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !509, line: 16, baseType: !38)
!511 = !{!512, !513, !514}
!512 = !DILocalVariable(name: "size", arg: 1, scope: !504, file: !12, line: 591, type: !507)
!513 = !DILocalVariable(name: "flags", arg: 2, scope: !504, file: !12, line: 591, type: !36)
!514 = !DILocalVariable(name: "index", scope: !515, file: !12, line: 594, type: !7)
!515 = distinct !DILexicalBlock(scope: !516, file: !12, line: 593, column: 42)
!516 = distinct !DILexicalBlock(scope: !504, file: !12, line: 593, column: 6)
!517 = !DILocation(line: 591, column: 61, scope: !504)
!518 = !DILocation(line: 591, column: 73, scope: !504)
!519 = !DILocation(line: 593, column: 27, scope: !516)
!520 = !DILocation(line: 593, column: 6, scope: !516)
!521 = !DILocation(line: 593, column: 33, scope: !516)
!522 = !DILocation(line: 593, column: 36, scope: !516)
!523 = !DILocation(line: 593, column: 6, scope: !504)
!524 = !DILocation(line: 594, column: 3, scope: !515)
!525 = !DILocation(line: 594, column: 16, scope: !515)
!526 = !DILocation(line: 596, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !515, file: !12, line: 596, column: 7)
!528 = !DILocation(line: 596, column: 12, scope: !527)
!529 = !DILocation(line: 596, column: 7, scope: !515)
!530 = !DILocation(line: 597, column: 25, scope: !527)
!531 = !DILocation(line: 597, column: 31, scope: !527)
!532 = !DILocation(line: 597, column: 11, scope: !527)
!533 = !DILocation(line: 597, column: 4, scope: !527)
!534 = !DILocation(line: 599, column: 11, scope: !515)
!535 = !DILocation(line: 599, column: 9, scope: !515)
!536 = !DILocation(line: 601, column: 33, scope: !515)
!537 = !DILocation(line: 601, column: 40, scope: !515)
!538 = !DILocation(line: 601, column: 20, scope: !515)
!539 = !DILocation(line: 601, column: 5, scope: !515)
!540 = !DILocation(line: 601, column: 51, scope: !515)
!541 = !DILocation(line: 602, column: 5, scope: !515)
!542 = !DILocation(line: 602, column: 12, scope: !515)
!543 = !DILocation(line: 600, column: 10, scope: !515)
!544 = !DILocation(line: 600, column: 3, scope: !515)
!545 = !DILocation(line: 603, column: 2, scope: !516)
!546 = !DILocation(line: 604, column: 19, scope: !504)
!547 = !DILocation(line: 604, column: 25, scope: !504)
!548 = !DILocation(line: 604, column: 9, scope: !504)
!549 = !DILocation(line: 604, column: 2, scope: !504)
!550 = !DILocation(line: 605, column: 1, scope: !504)
!551 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !552, file: !552, line: 65, type: !553, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!552 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!553 = !DISubroutineType(types: !554)
!554 = !{!38}
!555 = !DILocation(line: 67, column: 9, scope: !551)
!556 = !DILocation(line: 67, column: 2, scope: !551)
!557 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !552, file: !552, line: 120, type: !558, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !561)
!558 = !DISubroutineType(types: !559)
!559 = !{!560, !38}
!560 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!561 = !{!562}
!562 = !DILocalVariable(name: "flags", arg: 1, scope: !557, file: !552, line: 120, type: !38)
!563 = !DILocation(line: 120, column: 67, scope: !557)
!564 = !DILocation(line: 122, column: 11, scope: !557)
!565 = !DILocation(line: 122, column: 17, scope: !557)
!566 = !DILocation(line: 122, column: 9, scope: !557)
!567 = !DILocation(line: 122, column: 2, scope: !557)
!568 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!569 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !570, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !574)
!570 = !DISubroutineType(types: !571)
!571 = !{!7, !507, !572}
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !37, line: 35, baseType: !573)
!573 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!574 = !{!575, !576}
!575 = !DILocalVariable(name: "size", arg: 1, scope: !569, file: !12, line: 444, type: !507)
!576 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !569, file: !12, line: 445, type: !572)
!577 = !DILocation(line: 444, column: 60, scope: !569)
!578 = !DILocation(line: 445, column: 16, scope: !569)
!579 = !DILocation(line: 447, column: 7, scope: !580)
!580 = distinct !DILexicalBlock(scope: !569, file: !12, line: 447, column: 6)
!581 = !DILocation(line: 447, column: 6, scope: !569)
!582 = !DILocation(line: 448, column: 3, scope: !580)
!583 = !DILocation(line: 450, column: 6, scope: !584)
!584 = distinct !DILexicalBlock(scope: !569, file: !12, line: 450, column: 6)
!585 = !DILocation(line: 450, column: 11, scope: !584)
!586 = !DILocation(line: 450, column: 6, scope: !569)
!587 = !DILocation(line: 451, column: 3, scope: !584)
!588 = !DILocation(line: 453, column: 32, scope: !589)
!589 = distinct !DILexicalBlock(scope: !569, file: !12, line: 453, column: 6)
!590 = !DILocation(line: 453, column: 37, scope: !589)
!591 = !DILocation(line: 453, column: 42, scope: !589)
!592 = !DILocation(line: 453, column: 45, scope: !589)
!593 = !DILocation(line: 453, column: 50, scope: !589)
!594 = !DILocation(line: 453, column: 6, scope: !569)
!595 = !DILocation(line: 454, column: 3, scope: !589)
!596 = !DILocation(line: 455, column: 32, scope: !597)
!597 = distinct !DILexicalBlock(scope: !569, file: !12, line: 455, column: 6)
!598 = !DILocation(line: 455, column: 37, scope: !597)
!599 = !DILocation(line: 455, column: 43, scope: !597)
!600 = !DILocation(line: 455, column: 46, scope: !597)
!601 = !DILocation(line: 455, column: 51, scope: !597)
!602 = !DILocation(line: 455, column: 6, scope: !569)
!603 = !DILocation(line: 456, column: 3, scope: !597)
!604 = !DILocation(line: 457, column: 6, scope: !605)
!605 = distinct !DILexicalBlock(scope: !569, file: !12, line: 457, column: 6)
!606 = !DILocation(line: 457, column: 11, scope: !605)
!607 = !DILocation(line: 457, column: 6, scope: !569)
!608 = !DILocation(line: 457, column: 26, scope: !605)
!609 = !DILocation(line: 458, column: 6, scope: !610)
!610 = distinct !DILexicalBlock(scope: !569, file: !12, line: 458, column: 6)
!611 = !DILocation(line: 458, column: 11, scope: !610)
!612 = !DILocation(line: 458, column: 6, scope: !569)
!613 = !DILocation(line: 458, column: 26, scope: !610)
!614 = !DILocation(line: 459, column: 6, scope: !615)
!615 = distinct !DILexicalBlock(scope: !569, file: !12, line: 459, column: 6)
!616 = !DILocation(line: 459, column: 11, scope: !615)
!617 = !DILocation(line: 459, column: 6, scope: !569)
!618 = !DILocation(line: 459, column: 26, scope: !615)
!619 = !DILocation(line: 460, column: 6, scope: !620)
!620 = distinct !DILexicalBlock(scope: !569, file: !12, line: 460, column: 6)
!621 = !DILocation(line: 460, column: 11, scope: !620)
!622 = !DILocation(line: 460, column: 6, scope: !569)
!623 = !DILocation(line: 460, column: 26, scope: !620)
!624 = !DILocation(line: 461, column: 6, scope: !625)
!625 = distinct !DILexicalBlock(scope: !569, file: !12, line: 461, column: 6)
!626 = !DILocation(line: 461, column: 11, scope: !625)
!627 = !DILocation(line: 461, column: 6, scope: !569)
!628 = !DILocation(line: 461, column: 26, scope: !625)
!629 = !DILocation(line: 462, column: 6, scope: !630)
!630 = distinct !DILexicalBlock(scope: !569, file: !12, line: 462, column: 6)
!631 = !DILocation(line: 462, column: 11, scope: !630)
!632 = !DILocation(line: 462, column: 6, scope: !569)
!633 = !DILocation(line: 462, column: 26, scope: !630)
!634 = !DILocation(line: 463, column: 6, scope: !635)
!635 = distinct !DILexicalBlock(scope: !569, file: !12, line: 463, column: 6)
!636 = !DILocation(line: 463, column: 11, scope: !635)
!637 = !DILocation(line: 463, column: 6, scope: !569)
!638 = !DILocation(line: 463, column: 26, scope: !635)
!639 = !DILocation(line: 464, column: 6, scope: !640)
!640 = distinct !DILexicalBlock(scope: !569, file: !12, line: 464, column: 6)
!641 = !DILocation(line: 464, column: 11, scope: !640)
!642 = !DILocation(line: 464, column: 6, scope: !569)
!643 = !DILocation(line: 464, column: 26, scope: !640)
!644 = !DILocation(line: 465, column: 6, scope: !645)
!645 = distinct !DILexicalBlock(scope: !569, file: !12, line: 465, column: 6)
!646 = !DILocation(line: 465, column: 11, scope: !645)
!647 = !DILocation(line: 465, column: 6, scope: !569)
!648 = !DILocation(line: 465, column: 26, scope: !645)
!649 = !DILocation(line: 466, column: 6, scope: !650)
!650 = distinct !DILexicalBlock(scope: !569, file: !12, line: 466, column: 6)
!651 = !DILocation(line: 466, column: 11, scope: !650)
!652 = !DILocation(line: 466, column: 6, scope: !569)
!653 = !DILocation(line: 466, column: 26, scope: !650)
!654 = !DILocation(line: 467, column: 6, scope: !655)
!655 = distinct !DILexicalBlock(scope: !569, file: !12, line: 467, column: 6)
!656 = !DILocation(line: 467, column: 11, scope: !655)
!657 = !DILocation(line: 467, column: 6, scope: !569)
!658 = !DILocation(line: 467, column: 26, scope: !655)
!659 = !DILocation(line: 468, column: 6, scope: !660)
!660 = distinct !DILexicalBlock(scope: !569, file: !12, line: 468, column: 6)
!661 = !DILocation(line: 468, column: 11, scope: !660)
!662 = !DILocation(line: 468, column: 6, scope: !569)
!663 = !DILocation(line: 468, column: 26, scope: !660)
!664 = !DILocation(line: 469, column: 6, scope: !665)
!665 = distinct !DILexicalBlock(scope: !569, file: !12, line: 469, column: 6)
!666 = !DILocation(line: 469, column: 11, scope: !665)
!667 = !DILocation(line: 469, column: 6, scope: !569)
!668 = !DILocation(line: 469, column: 26, scope: !665)
!669 = !DILocation(line: 470, column: 6, scope: !670)
!670 = distinct !DILexicalBlock(scope: !569, file: !12, line: 470, column: 6)
!671 = !DILocation(line: 470, column: 11, scope: !670)
!672 = !DILocation(line: 470, column: 6, scope: !569)
!673 = !DILocation(line: 470, column: 26, scope: !670)
!674 = !DILocation(line: 471, column: 6, scope: !675)
!675 = distinct !DILexicalBlock(scope: !569, file: !12, line: 471, column: 6)
!676 = !DILocation(line: 471, column: 11, scope: !675)
!677 = !DILocation(line: 471, column: 6, scope: !569)
!678 = !DILocation(line: 471, column: 26, scope: !675)
!679 = !DILocation(line: 472, column: 6, scope: !680)
!680 = distinct !DILexicalBlock(scope: !569, file: !12, line: 472, column: 6)
!681 = !DILocation(line: 472, column: 11, scope: !680)
!682 = !DILocation(line: 472, column: 6, scope: !569)
!683 = !DILocation(line: 472, column: 26, scope: !680)
!684 = !DILocation(line: 473, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !569, file: !12, line: 473, column: 6)
!686 = !DILocation(line: 473, column: 11, scope: !685)
!687 = !DILocation(line: 473, column: 6, scope: !569)
!688 = !DILocation(line: 473, column: 26, scope: !685)
!689 = !DILocation(line: 474, column: 6, scope: !690)
!690 = distinct !DILexicalBlock(scope: !569, file: !12, line: 474, column: 6)
!691 = !DILocation(line: 474, column: 11, scope: !690)
!692 = !DILocation(line: 474, column: 6, scope: !569)
!693 = !DILocation(line: 474, column: 27, scope: !690)
!694 = !DILocation(line: 475, column: 6, scope: !695)
!695 = distinct !DILexicalBlock(scope: !569, file: !12, line: 475, column: 6)
!696 = !DILocation(line: 475, column: 11, scope: !695)
!697 = !DILocation(line: 475, column: 6, scope: !569)
!698 = !DILocation(line: 475, column: 32, scope: !695)
!699 = !DILocation(line: 477, column: 50, scope: !700)
!700 = distinct !DILexicalBlock(scope: !569, file: !12, line: 477, column: 6)
!701 = !{i8 0, i8 2}
!702 = !{}
!703 = !DILocation(line: 477, column: 6, scope: !569)
!704 = !DILocation(line: 478, column: 3, scope: !700)
!705 = !DILocation(line: 478, column: 3, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !12, line: 478, column: 3)
!707 = distinct !DILexicalBlock(scope: !700, file: !12, line: 478, column: 3)
!708 = !{i32 -2143039923}
!709 = !DILocation(line: 478, column: 3, scope: !707)
!710 = !DILocation(line: 480, column: 3, scope: !700)
!711 = !DILocation(line: 480, column: 3, scope: !712)
!712 = distinct !DILexicalBlock(scope: !700, file: !12, line: 480, column: 3)
!713 = !DILocation(line: 480, column: 3, scope: !714)
!714 = distinct !DILexicalBlock(scope: !712, file: !12, line: 480, column: 3)
!715 = !DILocation(line: 480, column: 3, scope: !716)
!716 = distinct !DILexicalBlock(scope: !712, file: !12, line: 480, column: 3)
!717 = !{i64 2151927576, i64 2151927605, i64 2151927651, i64 2151927709, i64 2151927763, i64 2151927817, i64 2151927872, i64 2151927903}
!718 = !DILocation(line: 483, column: 2, scope: !569)
!719 = !DILocation(line: 484, column: 1, scope: !569)
!720 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!721 = !DISubroutineType(types: !722)
!722 = !{!39, !723, !36, !507}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !725, line: 11, flags: DIFlagFwdDecl)
!725 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!726 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !727, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !729)
!727 = !DISubroutineType(types: !728)
!728 = !{!11, !36, !38}
!729 = !{!730, !731}
!730 = !DILocalVariable(name: "flags", arg: 1, scope: !726, file: !12, line: 401, type: !36)
!731 = !DILocalVariable(name: "caller", arg: 2, scope: !726, file: !12, line: 401, type: !38)
!732 = !DILocation(line: 401, column: 67, scope: !726)
!733 = !DILocation(line: 401, column: 88, scope: !726)
!734 = !DILocation(line: 407, column: 6, scope: !735)
!735 = distinct !DILexicalBlock(scope: !726, file: !12, line: 407, column: 6)
!736 = !DILocation(line: 407, column: 6, scope: !726)
!737 = !DILocation(line: 413, column: 3, scope: !735)
!738 = !DILocation(line: 423, column: 38, scope: !739)
!739 = distinct !DILexicalBlock(scope: !726, file: !12, line: 423, column: 6)
!740 = !DILocation(line: 423, column: 44, scope: !739)
!741 = !DILocation(line: 423, column: 6, scope: !726)
!742 = !DILocation(line: 424, column: 3, scope: !739)
!743 = !DILocation(line: 426, column: 3, scope: !744)
!744 = distinct !DILexicalBlock(scope: !726, file: !12, line: 425, column: 6)
!745 = !DILocation(line: 429, column: 1, scope: !726)
!746 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!747 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !748, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!748 = !DISubroutineType(types: !749)
!749 = !{null}
!750 = distinct !DISubprogram(name: "native_save_fl", scope: !552, file: !552, line: 17, type: !553, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !751)
!751 = !{!752}
!752 = !DILocalVariable(name: "flags", scope: !750, file: !552, line: 19, type: !38)
!753 = !DILocation(line: 19, column: 2, scope: !750)
!754 = !DILocation(line: 19, column: 16, scope: !750)
!755 = !DILocation(line: 26, column: 2, scope: !750)
!756 = !{i64 1517495, i64 1517516}
!757 = !DILocation(line: 32, column: 9, scope: !750)
!758 = !DILocation(line: 33, column: 1, scope: !750)
!759 = !DILocation(line: 32, column: 2, scope: !750)
!760 = !DISubprogram(name: "acpi_ut_valid_name_char", scope: !761, file: !761, line: 159, type: !762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!761 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!762 = !DISubroutineType(types: !763)
!763 = !{!41, !35, !24}
!764 = !DISubprogram(name: "strcat", scope: !765, file: !765, line: 79, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!765 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!766 = !DISubroutineType(types: !767)
!767 = !{!86, !86, !468}
!768 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
