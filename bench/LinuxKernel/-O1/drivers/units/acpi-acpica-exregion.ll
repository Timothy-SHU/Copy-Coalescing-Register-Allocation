; ModuleID = 'drivers/acpi/acpica/exregion.c'
source_filename = "drivers/acpi/acpica/exregion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_mem_space_context = type { i32, i64, ptr, ptr }
%struct.acpi_mem_mapping = type { i64, ptr, i64, ptr }
%struct.acpi_data_table_mapping = type { ptr }

@_acpi_module_name = internal constant [9 x i8] c"exregion\00", align 1, !dbg !0
@.str = private unnamed_addr constant [30 x i8] c"Invalid SystemMemory width %u\00", align 1, !dbg !62
@.str.1 = private unnamed_addr constant [55 x i8] c"Unable to save memory mapping at 0x%8.8X%8.8X, size %u\00", align 1, !dbg !67
@.str.2 = private unnamed_addr constant [46 x i8] c"Could not map memory at 0x%8.8X%8.8X, size %u\00", align 1, !dbg !72
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !77

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_system_memory_space_handler(i32 noundef %function, i64 noundef %address, i32 noundef %bit_width, ptr noundef %value, ptr noundef %handler_context, ptr noundef %region_context) #0 align 16 !dbg !95 {
entry:
  %retval = alloca i32, align 4
  %function.addr = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %logical_addr_ptr = alloca ptr, align 8
  %mem_info = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %length = alloca i32, align 4
  %map_length = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !100, metadata !DIExpression()), !dbg !127
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !101, metadata !DIExpression()), !dbg !128
  store i32 %bit_width, ptr %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit_width.addr, metadata !102, metadata !DIExpression()), !dbg !129
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !103, metadata !DIExpression()), !dbg !130
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !104, metadata !DIExpression()), !dbg !131
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !105, metadata !DIExpression()), !dbg !132
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %status, metadata !106, metadata !DIExpression()), !dbg !134
  store i32 0, ptr %status, align 4, !dbg !134
  call void @llvm.lifetime.start.p0(i64 8, ptr %logical_addr_ptr) #14, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %logical_addr_ptr, metadata !107, metadata !DIExpression()), !dbg !136
  store ptr null, ptr %logical_addr_ptr, align 8, !dbg !136
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem_info) #14, !dbg !137
  call void @llvm.dbg.declare(metadata ptr %mem_info, metadata !108, metadata !DIExpression()), !dbg !138
  %0 = load ptr, ptr %region_context.addr, align 8, !dbg !139
  store ptr %0, ptr %mem_info, align 8, !dbg !138
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #14, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !123, metadata !DIExpression()), !dbg !141
  %1 = load ptr, ptr %mem_info, align 8, !dbg !142
  %cur_mm = getelementptr inbounds %struct.acpi_mem_space_context, ptr %1, i32 0, i32 2, !dbg !143
  %2 = load ptr, ptr %cur_mm, align 8, !dbg !143
  store ptr %2, ptr %mm, align 8, !dbg !141
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #14, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %length, metadata !124, metadata !DIExpression()), !dbg !145
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_length) #14, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %map_length, metadata !125, metadata !DIExpression()), !dbg !147
  %3 = load i32, ptr %bit_width.addr, align 4, !dbg !148
  switch i32 %3, label %sw.default [
    i32 8, label %sw.bb
    i32 16, label %sw.bb1
    i32 32, label %sw.bb2
    i32 64, label %sw.bb3
  ], !dbg !149

sw.bb:                                            ; preds = %entry
  store i32 1, ptr %length, align 4, !dbg !150
  br label %sw.epilog, !dbg !152

sw.bb1:                                           ; preds = %entry
  store i32 2, ptr %length, align 4, !dbg !153
  br label %sw.epilog, !dbg !154

sw.bb2:                                           ; preds = %entry
  store i32 4, ptr %length, align 4, !dbg !155
  br label %sw.epilog, !dbg !156

sw.bb3:                                           ; preds = %entry
  store i32 8, ptr %length, align 4, !dbg !157
  br label %sw.epilog, !dbg !158

sw.default:                                       ; preds = %entry
  %4 = load i32, ptr %bit_width.addr, align 4, !dbg !159
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 78, ptr noundef @.str, i32 noundef %4) #15, !dbg !159
  store i32 12292, ptr %retval, align 4, !dbg !160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !160

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %5 = load ptr, ptr %mm, align 8, !dbg !161
  %tobool = icmp ne ptr %5, null, !dbg !161
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !163

lor.lhs.false:                                    ; preds = %sw.epilog
  %6 = load i64, ptr %address.addr, align 8, !dbg !164
  %7 = load ptr, ptr %mm, align 8, !dbg !165
  %physical_address = getelementptr inbounds %struct.acpi_mem_mapping, ptr %7, i32 0, i32 0, !dbg !166
  %8 = load i64, ptr %physical_address, align 8, !dbg !166
  %cmp = icmp ult i64 %6, %8, !dbg !167
  br i1 %cmp, label %if.then, label %lor.lhs.false4, !dbg !168

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %9 = load i64, ptr %address.addr, align 8, !dbg !169
  %10 = load i32, ptr %length, align 4, !dbg !170
  %conv = zext i32 %10 to i64, !dbg !170
  %add = add i64 %9, %conv, !dbg !171
  %11 = load ptr, ptr %mm, align 8, !dbg !172
  %physical_address5 = getelementptr inbounds %struct.acpi_mem_mapping, ptr %11, i32 0, i32 0, !dbg !173
  %12 = load i64, ptr %physical_address5, align 8, !dbg !173
  %13 = load ptr, ptr %mm, align 8, !dbg !174
  %length6 = getelementptr inbounds %struct.acpi_mem_mapping, ptr %13, i32 0, i32 2, !dbg !175
  %14 = load i64, ptr %length6, align 8, !dbg !175
  %add7 = add i64 %12, %14, !dbg !176
  %cmp8 = icmp ugt i64 %add, %add7, !dbg !177
  br i1 %cmp8, label %if.then, label %if.end57, !dbg !178

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %sw.epilog
  %15 = load ptr, ptr %mem_info, align 8, !dbg !179
  %first_mm = getelementptr inbounds %struct.acpi_mem_space_context, ptr %15, i32 0, i32 3, !dbg !182
  %16 = load ptr, ptr %first_mm, align 8, !dbg !182
  store ptr %16, ptr %mm, align 8, !dbg !183
  br label %for.cond, !dbg !184

for.cond:                                         ; preds = %for.inc, %if.then
  %17 = load ptr, ptr %mm, align 8, !dbg !185
  %tobool10 = icmp ne ptr %17, null, !dbg !187
  br i1 %tobool10, label %for.body, label %for.end, !dbg !187

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %mm, align 8, !dbg !188
  %19 = load ptr, ptr %mem_info, align 8, !dbg !191
  %cur_mm11 = getelementptr inbounds %struct.acpi_mem_space_context, ptr %19, i32 0, i32 2, !dbg !192
  %20 = load ptr, ptr %cur_mm11, align 8, !dbg !192
  %cmp12 = icmp eq ptr %18, %20, !dbg !193
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !194

if.then14:                                        ; preds = %for.body
  br label %for.inc, !dbg !195

if.end:                                           ; preds = %for.body
  %21 = load i64, ptr %address.addr, align 8, !dbg !196
  %22 = load ptr, ptr %mm, align 8, !dbg !198
  %physical_address15 = getelementptr inbounds %struct.acpi_mem_mapping, ptr %22, i32 0, i32 0, !dbg !199
  %23 = load i64, ptr %physical_address15, align 8, !dbg !199
  %cmp16 = icmp ult i64 %21, %23, !dbg !200
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !201

if.then18:                                        ; preds = %if.end
  br label %for.inc, !dbg !202

if.end19:                                         ; preds = %if.end
  %24 = load i64, ptr %address.addr, align 8, !dbg !203
  %25 = load i32, ptr %length, align 4, !dbg !205
  %conv20 = zext i32 %25 to i64, !dbg !205
  %add21 = add i64 %24, %conv20, !dbg !206
  %26 = load ptr, ptr %mm, align 8, !dbg !207
  %physical_address22 = getelementptr inbounds %struct.acpi_mem_mapping, ptr %26, i32 0, i32 0, !dbg !208
  %27 = load i64, ptr %physical_address22, align 8, !dbg !208
  %28 = load ptr, ptr %mm, align 8, !dbg !209
  %length23 = getelementptr inbounds %struct.acpi_mem_mapping, ptr %28, i32 0, i32 2, !dbg !210
  %29 = load i64, ptr %length23, align 8, !dbg !210
  %add24 = add i64 %27, %29, !dbg !211
  %cmp25 = icmp ugt i64 %add21, %add24, !dbg !212
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !213

if.then27:                                        ; preds = %if.end19
  br label %for.inc, !dbg !214

if.end28:                                         ; preds = %if.end19
  %30 = load ptr, ptr %mm, align 8, !dbg !215
  %31 = load ptr, ptr %mem_info, align 8, !dbg !216
  %cur_mm29 = getelementptr inbounds %struct.acpi_mem_space_context, ptr %31, i32 0, i32 2, !dbg !217
  store ptr %30, ptr %cur_mm29, align 8, !dbg !218
  br label %access, !dbg !219

for.inc:                                          ; preds = %if.then27, %if.then18, %if.then14
  %32 = load ptr, ptr %mm, align 8, !dbg !220
  %next_mm = getelementptr inbounds %struct.acpi_mem_mapping, ptr %32, i32 0, i32 3, !dbg !221
  %33 = load ptr, ptr %next_mm, align 8, !dbg !221
  store ptr %33, ptr %mm, align 8, !dbg !222
  br label %for.cond, !dbg !223, !llvm.loop !224

for.end:                                          ; preds = %for.cond
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef 32) #15, !dbg !228
  store ptr %call, ptr %mm, align 8, !dbg !229
  %34 = load ptr, ptr %mm, align 8, !dbg !230
  %tobool30 = icmp ne ptr %34, null, !dbg !230
  br i1 %tobool30, label %if.end34, label %if.then31, !dbg !232

if.then31:                                        ; preds = %for.end
  %35 = load i64, ptr %address.addr, align 8, !dbg !233
  %shr = lshr i64 %35, 32, !dbg !233
  %conv32 = trunc i64 %shr to i32, !dbg !233
  %36 = load i64, ptr %address.addr, align 8, !dbg !233
  %conv33 = trunc i64 %36 to i32, !dbg !233
  %37 = load i32, ptr %length, align 4, !dbg !233
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 126, ptr noundef @.str.1, i32 noundef %conv32, i32 noundef %conv33, i32 noundef %37) #15, !dbg !233
  store i32 4, ptr %retval, align 4, !dbg !235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !235

if.end34:                                         ; preds = %for.end
  %38 = load ptr, ptr %mem_info, align 8, !dbg !236
  %address35 = getelementptr inbounds %struct.acpi_mem_space_context, ptr %38, i32 0, i32 1, !dbg !237
  %39 = load i64, ptr %address35, align 8, !dbg !237
  %40 = load ptr, ptr %mem_info, align 8, !dbg !238
  %length36 = getelementptr inbounds %struct.acpi_mem_space_context, ptr %40, i32 0, i32 0, !dbg !239
  %41 = load i32, ptr %length36, align 8, !dbg !239
  %conv37 = zext i32 %41 to i64, !dbg !238
  %add38 = add i64 %39, %conv37, !dbg !240
  %42 = load i64, ptr %address.addr, align 8, !dbg !241
  %sub = sub i64 %add38, %42, !dbg !242
  store i64 %sub, ptr %map_length, align 8, !dbg !243
  %43 = load i64, ptr %map_length, align 8, !dbg !244
  %cmp39 = icmp ugt i64 %43, 4096, !dbg !246
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !247

if.then41:                                        ; preds = %if.end34
  store i64 4096, ptr %map_length, align 8, !dbg !248
  br label %if.end42, !dbg !249

if.end42:                                         ; preds = %if.then41, %if.end34
  %44 = load i64, ptr %address.addr, align 8, !dbg !250
  %45 = load i64, ptr %map_length, align 8, !dbg !251
  %call43 = call ptr @acpi_os_map_memory(i64 noundef %44, i64 noundef %45) #15, !dbg !252
  store ptr %call43, ptr %logical_addr_ptr, align 8, !dbg !253
  %46 = load ptr, ptr %logical_addr_ptr, align 8, !dbg !254
  %tobool44 = icmp ne ptr %46, null, !dbg !254
  br i1 %tobool44, label %if.end50, label %if.then45, !dbg !256

if.then45:                                        ; preds = %if.end42
  %47 = load i64, ptr %address.addr, align 8, !dbg !257
  %shr46 = lshr i64 %47, 32, !dbg !257
  %conv47 = trunc i64 %shr46 to i32, !dbg !257
  %48 = load i64, ptr %address.addr, align 8, !dbg !257
  %conv48 = trunc i64 %48 to i32, !dbg !257
  %49 = load i64, ptr %map_length, align 8, !dbg !257
  %conv49 = trunc i64 %49 to i32, !dbg !257
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 147, ptr noundef @.str.2, i32 noundef %conv47, i32 noundef %conv48, i32 noundef %conv49) #15, !dbg !257
  %50 = load ptr, ptr %mm, align 8, !dbg !259
  call void @acpi_os_free(ptr noundef %50) #15, !dbg !259
  store i32 4, ptr %retval, align 4, !dbg !260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !260

if.end50:                                         ; preds = %if.end42
  %51 = load ptr, ptr %logical_addr_ptr, align 8, !dbg !261
  %52 = load ptr, ptr %mm, align 8, !dbg !262
  %logical_address = getelementptr inbounds %struct.acpi_mem_mapping, ptr %52, i32 0, i32 1, !dbg !263
  store ptr %51, ptr %logical_address, align 8, !dbg !264
  %53 = load i64, ptr %address.addr, align 8, !dbg !265
  %54 = load ptr, ptr %mm, align 8, !dbg !266
  %physical_address51 = getelementptr inbounds %struct.acpi_mem_mapping, ptr %54, i32 0, i32 0, !dbg !267
  store i64 %53, ptr %physical_address51, align 8, !dbg !268
  %55 = load i64, ptr %map_length, align 8, !dbg !269
  %56 = load ptr, ptr %mm, align 8, !dbg !270
  %length52 = getelementptr inbounds %struct.acpi_mem_mapping, ptr %56, i32 0, i32 2, !dbg !271
  store i64 %55, ptr %length52, align 8, !dbg !272
  %57 = load ptr, ptr %mem_info, align 8, !dbg !273
  %first_mm53 = getelementptr inbounds %struct.acpi_mem_space_context, ptr %57, i32 0, i32 3, !dbg !274
  %58 = load ptr, ptr %first_mm53, align 8, !dbg !274
  %59 = load ptr, ptr %mm, align 8, !dbg !275
  %next_mm54 = getelementptr inbounds %struct.acpi_mem_mapping, ptr %59, i32 0, i32 3, !dbg !276
  store ptr %58, ptr %next_mm54, align 8, !dbg !277
  %60 = load ptr, ptr %mm, align 8, !dbg !278
  %61 = load ptr, ptr %mem_info, align 8, !dbg !279
  %first_mm55 = getelementptr inbounds %struct.acpi_mem_space_context, ptr %61, i32 0, i32 3, !dbg !280
  store ptr %60, ptr %first_mm55, align 8, !dbg !281
  %62 = load ptr, ptr %mm, align 8, !dbg !282
  %63 = load ptr, ptr %mem_info, align 8, !dbg !283
  %cur_mm56 = getelementptr inbounds %struct.acpi_mem_space_context, ptr %63, i32 0, i32 2, !dbg !284
  store ptr %62, ptr %cur_mm56, align 8, !dbg !285
  br label %if.end57, !dbg !286

if.end57:                                         ; preds = %if.end50, %lor.lhs.false4
  br label %access, !dbg !287

access:                                           ; preds = %if.end57, %if.end28
  call void @llvm.dbg.label(metadata !126), !dbg !288
  %64 = load ptr, ptr %mm, align 8, !dbg !289
  %logical_address58 = getelementptr inbounds %struct.acpi_mem_mapping, ptr %64, i32 0, i32 1, !dbg !290
  %65 = load ptr, ptr %logical_address58, align 8, !dbg !290
  %66 = load i64, ptr %address.addr, align 8, !dbg !291
  %67 = load ptr, ptr %mm, align 8, !dbg !292
  %physical_address59 = getelementptr inbounds %struct.acpi_mem_mapping, ptr %67, i32 0, i32 0, !dbg !293
  %68 = load i64, ptr %physical_address59, align 8, !dbg !293
  %sub60 = sub i64 %66, %68, !dbg !294
  %add.ptr = getelementptr i8, ptr %65, i64 %sub60, !dbg !295
  store ptr %add.ptr, ptr %logical_addr_ptr, align 8, !dbg !296
  %69 = load i32, ptr %function.addr, align 4, !dbg !297
  switch i32 %69, label %sw.default81 [
    i32 0, label %sw.bb61
    i32 1, label %sw.bb71
  ], !dbg !298

sw.bb61:                                          ; preds = %access
  %70 = load ptr, ptr %value.addr, align 8, !dbg !299
  store i64 0, ptr %70, align 8, !dbg !301
  %71 = load i32, ptr %bit_width.addr, align 4, !dbg !302
  switch i32 %71, label %sw.default69 [
    i32 8, label %sw.bb62
    i32 16, label %sw.bb64
    i32 32, label %sw.bb66
    i32 64, label %sw.bb68
  ], !dbg !303

sw.bb62:                                          ; preds = %sw.bb61
  %72 = load ptr, ptr %logical_addr_ptr, align 8, !dbg !304
  %73 = ptrtoint ptr %72 to i64, !dbg !304
  %74 = inttoptr i64 %73 to ptr, !dbg !304
  %75 = load i8, ptr %74, align 1, !dbg !304
  %conv63 = zext i8 %75 to i64, !dbg !306
  %76 = load ptr, ptr %value.addr, align 8, !dbg !307
  store i64 %conv63, ptr %76, align 8, !dbg !308
  br label %sw.epilog70, !dbg !309

sw.bb64:                                          ; preds = %sw.bb61
  %77 = load ptr, ptr %logical_addr_ptr, align 8, !dbg !310
  %78 = ptrtoint ptr %77 to i64, !dbg !310
  %79 = inttoptr i64 %78 to ptr, !dbg !310
  %80 = load i16, ptr %79, align 2, !dbg !310
  %conv65 = zext i16 %80 to i64, !dbg !311
  %81 = load ptr, ptr %value.addr, align 8, !dbg !312
  store i64 %conv65, ptr %81, align 8, !dbg !313
  br label %sw.epilog70, !dbg !314

sw.bb66:                                          ; preds = %sw.bb61
  %82 = load ptr, ptr %logical_addr_ptr, align 8, !dbg !315
  %83 = ptrtoint ptr %82 to i64, !dbg !315
  %84 = inttoptr i64 %83 to ptr, !dbg !315
  %85 = load i32, ptr %84, align 4, !dbg !315
  %conv67 = zext i32 %85 to i64, !dbg !316
  %86 = load ptr, ptr %value.addr, align 8, !dbg !317
  store i64 %conv67, ptr %86, align 8, !dbg !318
  br label %sw.epilog70, !dbg !319

sw.bb68:                                          ; preds = %sw.bb61
  %87 = load ptr, ptr %logical_addr_ptr, align 8, !dbg !320
  %88 = ptrtoint ptr %87 to i64, !dbg !320
  %89 = inttoptr i64 %88 to ptr, !dbg !320
  %90 = load i64, ptr %89, align 8, !dbg !320
  %91 = load ptr, ptr %value.addr, align 8, !dbg !321
  store i64 %90, ptr %91, align 8, !dbg !322
  br label %sw.epilog70, !dbg !323

sw.default69:                                     ; preds = %sw.bb61
  br label %sw.epilog70, !dbg !324

sw.epilog70:                                      ; preds = %sw.default69, %sw.bb68, %sw.bb66, %sw.bb64, %sw.bb62
  br label %sw.epilog82, !dbg !325

sw.bb71:                                          ; preds = %access
  %92 = load i32, ptr %bit_width.addr, align 4, !dbg !326
  switch i32 %92, label %sw.default79 [
    i32 8, label %sw.bb72
    i32 16, label %sw.bb74
    i32 32, label %sw.bb76
    i32 64, label %sw.bb78
  ], !dbg !327

sw.bb72:                                          ; preds = %sw.bb71
  %93 = load ptr, ptr %value.addr, align 8, !dbg !328
  %94 = load i64, ptr %93, align 8, !dbg !328
  %conv73 = trunc i64 %94 to i8, !dbg !328
  %95 = load ptr, ptr %logical_addr_ptr, align 8, !dbg !328
  %96 = ptrtoint ptr %95 to i64, !dbg !328
  %97 = inttoptr i64 %96 to ptr, !dbg !328
  store i8 %conv73, ptr %97, align 1, !dbg !328
  br label %sw.epilog80, !dbg !330

sw.bb74:                                          ; preds = %sw.bb71
  %98 = load ptr, ptr %value.addr, align 8, !dbg !331
  %99 = load i64, ptr %98, align 8, !dbg !331
  %conv75 = trunc i64 %99 to i16, !dbg !331
  %100 = load ptr, ptr %logical_addr_ptr, align 8, !dbg !331
  %101 = ptrtoint ptr %100 to i64, !dbg !331
  %102 = inttoptr i64 %101 to ptr, !dbg !331
  store i16 %conv75, ptr %102, align 2, !dbg !331
  br label %sw.epilog80, !dbg !332

sw.bb76:                                          ; preds = %sw.bb71
  %103 = load ptr, ptr %value.addr, align 8, !dbg !333
  %104 = load i64, ptr %103, align 8, !dbg !333
  %conv77 = trunc i64 %104 to i32, !dbg !333
  %105 = load ptr, ptr %logical_addr_ptr, align 8, !dbg !333
  %106 = ptrtoint ptr %105 to i64, !dbg !333
  %107 = inttoptr i64 %106 to ptr, !dbg !333
  store i32 %conv77, ptr %107, align 4, !dbg !333
  br label %sw.epilog80, !dbg !334

sw.bb78:                                          ; preds = %sw.bb71
  %108 = load ptr, ptr %value.addr, align 8, !dbg !335
  %109 = load i64, ptr %108, align 8, !dbg !335
  %110 = load ptr, ptr %logical_addr_ptr, align 8, !dbg !335
  %111 = ptrtoint ptr %110 to i64, !dbg !335
  %112 = inttoptr i64 %111 to ptr, !dbg !335
  store i64 %109, ptr %112, align 8, !dbg !335
  br label %sw.epilog80, !dbg !336

sw.default79:                                     ; preds = %sw.bb71
  br label %sw.epilog80, !dbg !337

sw.epilog80:                                      ; preds = %sw.default79, %sw.bb78, %sw.bb76, %sw.bb74, %sw.bb72
  br label %sw.epilog82, !dbg !338

sw.default81:                                     ; preds = %access
  store i32 4097, ptr %status, align 4, !dbg !339
  br label %sw.epilog82, !dbg !340

sw.epilog82:                                      ; preds = %sw.default81, %sw.epilog80, %sw.epilog70
  %113 = load i32, ptr %status, align 4, !dbg !341
  store i32 %113, ptr %retval, align 4, !dbg !341
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !341

cleanup:                                          ; preds = %sw.epilog82, %if.then45, %if.then31, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_length) #14, !dbg !342
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #14, !dbg !342
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #14, !dbg !342
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem_info) #14, !dbg !342
  call void @llvm.lifetime.end.p0(i64 8, ptr %logical_addr_ptr) #14, !dbg !342
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !342
  %114 = load i32, ptr %retval, align 4, !dbg !342
  ret i32 %114, !dbg !342
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !343 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !348 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !353, metadata !DIExpression()), !dbg !364
  %0 = load i64, ptr %size.addr, align 8, !dbg !365
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #14, !dbg !366
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !354, metadata !DIExpression()), !dbg !366
  br label %do.body, !dbg !366

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !367
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !356, metadata !DIExpression()), !dbg !367
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !367
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !359, metadata !DIExpression()), !dbg !367
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !367
  %conv = zext i1 %cmp to i32, !dbg !367
  store i32 1, ptr %tmp, align 4, !dbg !367
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !368
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !368
  %1 = load i32, ptr %tmp, align 4, !dbg !367
  %call = call i64 @arch_local_save_flags() #15, !dbg !368
  store i64 %call, ptr %_flags, align 8, !dbg !368
  br label %do.cond, !dbg !368

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !368

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #14, !dbg !369
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !360, metadata !DIExpression()), !dbg !369
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #14, !dbg !369
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !363, metadata !DIExpression()), !dbg !369
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !369
  %conv6 = zext i1 %cmp5 to i32, !dbg !369
  store i32 1, ptr %tmp7, align 4, !dbg !369
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #14, !dbg !370
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #14, !dbg !370
  %2 = load i32, ptr %tmp7, align 4, !dbg !369
  %3 = load i64, ptr %_flags, align 8, !dbg !370
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #15, !dbg !370
  store i32 %call9, ptr %tmp8, align 4, !dbg !370
  %4 = load i32, ptr %tmp8, align 4, !dbg !370
  store i32 %4, ptr %tmp1, align 4, !dbg !368
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #14, !dbg !371
  %5 = load i32, ptr %tmp1, align 4, !dbg !366
  %tobool = icmp ne i32 %5, 0, !dbg !371
  %6 = zext i1 %tobool to i64, !dbg !371
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !371
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #16, !dbg !372
  ret ptr %call10, !dbg !373
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !374 dso_local ptr @acpi_os_map_memory(i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !378 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !384
  call void @kfree(ptr noundef %0) #15, !dbg !385
  ret void, !dbg !386
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_system_io_space_handler(i32 noundef %function, i64 noundef %address, i32 noundef %bit_width, ptr noundef %value, ptr noundef %handler_context, ptr noundef %region_context) #0 align 16 !dbg !387 {
entry:
  %function.addr = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %value32 = alloca i32, align 4
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !389, metadata !DIExpression()), !dbg !397
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !390, metadata !DIExpression()), !dbg !398
  store i32 %bit_width, ptr %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit_width.addr, metadata !391, metadata !DIExpression()), !dbg !399
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !392, metadata !DIExpression()), !dbg !400
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !393, metadata !DIExpression()), !dbg !401
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !394, metadata !DIExpression()), !dbg !402
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !403
  call void @llvm.dbg.declare(metadata ptr %status, metadata !395, metadata !DIExpression()), !dbg !404
  store i32 0, ptr %status, align 4, !dbg !404
  call void @llvm.lifetime.start.p0(i64 4, ptr %value32) #14, !dbg !405
  call void @llvm.dbg.declare(metadata ptr %value32, metadata !396, metadata !DIExpression()), !dbg !406
  %0 = load i32, ptr %function.addr, align 4, !dbg !407
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !408

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %address.addr, align 8, !dbg !409
  %2 = load i32, ptr %bit_width.addr, align 4, !dbg !411
  %call = call i32 @acpi_hw_read_port(i64 noundef %1, ptr noundef %value32, i32 noundef %2) #15, !dbg !412
  store i32 %call, ptr %status, align 4, !dbg !413
  %3 = load i32, ptr %value32, align 4, !dbg !414
  %conv = zext i32 %3 to i64, !dbg !414
  %4 = load ptr, ptr %value.addr, align 8, !dbg !415
  store i64 %conv, ptr %4, align 8, !dbg !416
  br label %sw.epilog, !dbg !417

sw.bb1:                                           ; preds = %entry
  %5 = load i64, ptr %address.addr, align 8, !dbg !418
  %6 = load ptr, ptr %value.addr, align 8, !dbg !419
  %7 = load i64, ptr %6, align 8, !dbg !420
  %conv2 = trunc i64 %7 to i32, !dbg !421
  %8 = load i32, ptr %bit_width.addr, align 4, !dbg !422
  %call3 = call i32 @acpi_hw_write_port(i64 noundef %5, i32 noundef %conv2, i32 noundef %8) #15, !dbg !423
  store i32 %call3, ptr %status, align 4, !dbg !424
  br label %sw.epilog, !dbg !425

sw.default:                                       ; preds = %entry
  store i32 4097, ptr %status, align 4, !dbg !426
  br label %sw.epilog, !dbg !427

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %9 = load i32, ptr %status, align 4, !dbg !428
  call void @llvm.lifetime.end.p0(i64 4, ptr %value32) #14, !dbg !429
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !429
  ret i32 %9, !dbg !428
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !430 dso_local i32 @acpi_hw_read_port(i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !434 dso_local i32 @acpi_hw_write_port(i64 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_pci_config_space_handler(i32 noundef %function, i64 noundef %address, i32 noundef %bit_width, ptr noundef %value, ptr noundef %handler_context, ptr noundef %region_context) #0 align 16 !dbg !437 {
entry:
  %function.addr = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %pci_id = alloca ptr, align 8
  %pci_register = alloca i16, align 2
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !439, metadata !DIExpression()), !dbg !448
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !440, metadata !DIExpression()), !dbg !449
  store i32 %bit_width, ptr %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit_width.addr, metadata !441, metadata !DIExpression()), !dbg !450
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !442, metadata !DIExpression()), !dbg !451
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !443, metadata !DIExpression()), !dbg !452
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !444, metadata !DIExpression()), !dbg !453
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !454
  call void @llvm.dbg.declare(metadata ptr %status, metadata !445, metadata !DIExpression()), !dbg !455
  store i32 0, ptr %status, align 4, !dbg !455
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_id) #14, !dbg !456
  call void @llvm.dbg.declare(metadata ptr %pci_id, metadata !446, metadata !DIExpression()), !dbg !457
  call void @llvm.lifetime.start.p0(i64 2, ptr %pci_register) #14, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %pci_register, metadata !447, metadata !DIExpression()), !dbg !459
  %0 = load ptr, ptr %region_context.addr, align 8, !dbg !460
  store ptr %0, ptr %pci_id, align 8, !dbg !461
  %1 = load i64, ptr %address.addr, align 8, !dbg !462
  %conv = trunc i64 %1 to i32, !dbg !463
  %conv1 = trunc i32 %conv to i16, !dbg !464
  store i16 %conv1, ptr %pci_register, align 2, !dbg !465
  %2 = load i32, ptr %function.addr, align 4, !dbg !466
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ], !dbg !467

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %value.addr, align 8, !dbg !468
  store i64 0, ptr %3, align 8, !dbg !470
  %4 = load ptr, ptr %pci_id, align 8, !dbg !471
  %5 = load i16, ptr %pci_register, align 2, !dbg !472
  %conv2 = zext i16 %5 to i32, !dbg !472
  %6 = load ptr, ptr %value.addr, align 8, !dbg !473
  %7 = load i32, ptr %bit_width.addr, align 4, !dbg !474
  %call = call i32 @acpi_os_read_pci_configuration(ptr noundef %4, i32 noundef %conv2, ptr noundef %6, i32 noundef %7) #15, !dbg !475
  store i32 %call, ptr %status, align 4, !dbg !476
  br label %sw.epilog, !dbg !477

sw.bb3:                                           ; preds = %entry
  %8 = load ptr, ptr %pci_id, align 8, !dbg !478
  %9 = load i16, ptr %pci_register, align 2, !dbg !479
  %conv4 = zext i16 %9 to i32, !dbg !479
  %10 = load ptr, ptr %value.addr, align 8, !dbg !480
  %11 = load i64, ptr %10, align 8, !dbg !481
  %12 = load i32, ptr %bit_width.addr, align 4, !dbg !482
  %call5 = call i32 @acpi_os_write_pci_configuration(ptr noundef %8, i32 noundef %conv4, i64 noundef %11, i32 noundef %12) #15, !dbg !483
  store i32 %call5, ptr %status, align 4, !dbg !484
  br label %sw.epilog, !dbg !485

sw.default:                                       ; preds = %entry
  store i32 4097, ptr %status, align 4, !dbg !486
  br label %sw.epilog, !dbg !487

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %13 = load i32, ptr %status, align 4, !dbg !488
  call void @llvm.lifetime.end.p0(i64 2, ptr %pci_register) #14, !dbg !489
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_id) #14, !dbg !489
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !489
  ret i32 %13, !dbg !488
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !490 dso_local i32 @acpi_os_read_pci_configuration(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !493 dso_local i32 @acpi_os_write_pci_configuration(ptr noundef, i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_cmos_space_handler(i32 noundef %function, i64 noundef %address, i32 noundef %bit_width, ptr noundef %value, ptr noundef %handler_context, ptr noundef %region_context) #0 align 16 !dbg !496 {
entry:
  %function.addr = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !498, metadata !DIExpression()), !dbg !505
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !499, metadata !DIExpression()), !dbg !506
  store i32 %bit_width, ptr %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit_width.addr, metadata !500, metadata !DIExpression()), !dbg !507
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !501, metadata !DIExpression()), !dbg !508
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !502, metadata !DIExpression()), !dbg !509
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !503, metadata !DIExpression()), !dbg !510
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !511
  call void @llvm.dbg.declare(metadata ptr %status, metadata !504, metadata !DIExpression()), !dbg !512
  store i32 0, ptr %status, align 4, !dbg !512
  %0 = load i32, ptr %status, align 4, !dbg !513
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !514
  ret i32 %0, !dbg !513
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_pci_bar_space_handler(i32 noundef %function, i64 noundef %address, i32 noundef %bit_width, ptr noundef %value, ptr noundef %handler_context, ptr noundef %region_context) #0 align 16 !dbg !515 {
entry:
  %function.addr = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !517, metadata !DIExpression()), !dbg !524
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !518, metadata !DIExpression()), !dbg !525
  store i32 %bit_width, ptr %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit_width.addr, metadata !519, metadata !DIExpression()), !dbg !526
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !520, metadata !DIExpression()), !dbg !527
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !521, metadata !DIExpression()), !dbg !528
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !522, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %status, metadata !523, metadata !DIExpression()), !dbg !531
  store i32 0, ptr %status, align 4, !dbg !531
  %0 = load i32, ptr %status, align 4, !dbg !532
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !533
  ret i32 %0, !dbg !532
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_data_table_space_handler(i32 noundef %function, i64 noundef %address, i32 noundef %bit_width, ptr noundef %value, ptr noundef %handler_context, ptr noundef %region_context) #0 align 16 !dbg !534 {
entry:
  %retval = alloca i32, align 4
  %function.addr = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  %mapping = alloca ptr, align 8
  %pointer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !536, metadata !DIExpression()), !dbg !544
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !537, metadata !DIExpression()), !dbg !545
  store i32 %bit_width, ptr %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit_width.addr, metadata !538, metadata !DIExpression()), !dbg !546
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !539, metadata !DIExpression()), !dbg !547
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !540, metadata !DIExpression()), !dbg !548
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !541, metadata !DIExpression()), !dbg !549
  call void @llvm.lifetime.start.p0(i64 8, ptr %mapping) #14, !dbg !550
  call void @llvm.dbg.declare(metadata ptr %mapping, metadata !542, metadata !DIExpression()), !dbg !551
  call void @llvm.lifetime.start.p0(i64 8, ptr %pointer) #14, !dbg !552
  call void @llvm.dbg.declare(metadata ptr %pointer, metadata !543, metadata !DIExpression()), !dbg !553
  %0 = load ptr, ptr %region_context.addr, align 8, !dbg !554
  store ptr %0, ptr %mapping, align 8, !dbg !555
  %1 = load ptr, ptr %mapping, align 8, !dbg !556
  %pointer1 = getelementptr inbounds %struct.acpi_data_table_mapping, ptr %1, i32 0, i32 0, !dbg !556
  %2 = load ptr, ptr %pointer1, align 8, !dbg !556
  %3 = ptrtoint ptr %2 to i64, !dbg !556
  %4 = inttoptr i64 %3 to ptr, !dbg !556
  %5 = load i64, ptr %address.addr, align 8, !dbg !557
  %6 = load ptr, ptr %mapping, align 8, !dbg !558
  %pointer2 = getelementptr inbounds %struct.acpi_data_table_mapping, ptr %6, i32 0, i32 0, !dbg !558
  %7 = load ptr, ptr %pointer2, align 8, !dbg !558
  %8 = ptrtoint ptr %7 to i64, !dbg !558
  %sub = sub i64 %5, %8, !dbg !559
  %add.ptr = getelementptr i8, ptr %4, i64 %sub, !dbg !560
  store ptr %add.ptr, ptr %pointer, align 8, !dbg !561
  %9 = load i32, ptr %function.addr, align 4, !dbg !562
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ], !dbg !563

sw.bb:                                            ; preds = %entry
  %10 = load ptr, ptr %value.addr, align 8, !dbg !564
  %11 = ptrtoint ptr %10 to i64, !dbg !564
  %12 = inttoptr i64 %11 to ptr, !dbg !564
  %13 = load ptr, ptr %pointer, align 8, !dbg !566
  %14 = load i32, ptr %bit_width.addr, align 4, !dbg !567
  %shr = lshr i32 %14, 3, !dbg !567
  %conv = zext i32 %shr to i64, !dbg !567
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %13, i64 %conv, i1 false), !dbg !568
  br label %sw.epilog, !dbg !569

sw.bb3:                                           ; preds = %entry
  %15 = load ptr, ptr %pointer, align 8, !dbg !570
  %16 = load ptr, ptr %value.addr, align 8, !dbg !571
  %17 = ptrtoint ptr %16 to i64, !dbg !571
  %18 = inttoptr i64 %17 to ptr, !dbg !571
  %19 = load i32, ptr %bit_width.addr, align 4, !dbg !572
  %shr4 = lshr i32 %19, 3, !dbg !572
  %conv5 = zext i32 %shr4 to i64, !dbg !572
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %18, i64 %conv5, i1 false), !dbg !573
  br label %sw.epilog, !dbg !574

sw.default:                                       ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !575

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !576

cleanup:                                          ; preds = %sw.epilog, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %pointer) #14, !dbg !577
  call void @llvm.lifetime.end.p0(i64 8, ptr %mapping) #14, !dbg !577
  %20 = load i32, ptr %retval, align 4, !dbg !577
  ret i32 %20, !dbg !577
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !578 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !586, metadata !DIExpression()), !dbg !588
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !587, metadata !DIExpression()), !dbg !589
  %0 = load i64, ptr %size.addr, align 8, !dbg !590
  %1 = load i32, ptr %flags.addr, align 4, !dbg !591
  %or = or i32 %1, 256, !dbg !592
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !593
  ret ptr %call, !dbg !594
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #7 align 16 !dbg !595 {
entry:
  %call = call i64 @native_save_fl() #15, !dbg !599
  ret i64 %call, !dbg !600
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #7 align 16 !dbg !601 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !606, metadata !DIExpression()), !dbg !607
  %0 = load i64, ptr %flags.addr, align 8, !dbg !608
  %and = and i64 %0, 512, !dbg !609
  %tobool = icmp ne i64 %and, 0, !dbg !610
  %lnot = xor i1 %tobool, true, !dbg !610
  %lnot.ext = zext i1 %lnot to i32, !dbg !610
  ret i32 %lnot.ext, !dbg !611
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !612 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !614, metadata !DIExpression()), !dbg !619
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !615, metadata !DIExpression()), !dbg !620
  %0 = load i64, ptr %size.addr, align 8, !dbg !621
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !622
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !623

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !624
  %tobool = icmp ne i64 %2, 0, !dbg !624
  br i1 %tobool, label %if.then, label %if.end7, !dbg !625

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %index, metadata !616, metadata !DIExpression()), !dbg !627
  %3 = load i64, ptr %size.addr, align 8, !dbg !628
  %cmp = icmp ugt i64 %3, 8192, !dbg !630
  br i1 %cmp, label %if.then1, label %if.end, !dbg !631

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !632
  %5 = load i32, ptr %flags.addr, align 4, !dbg !633
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !634
  store ptr %call, ptr %retval, align 8, !dbg !635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !635

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !636
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !636
  store i32 %call2, ptr %index, align 4, !dbg !637
  %7 = load i32, ptr %flags.addr, align 4, !dbg !638
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !639
  %9 = ptrtoint ptr %8 to i64, !dbg !639
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !640
  %idxprom = zext i32 %call3 to i64, !dbg !641
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !641
  %10 = load i32, ptr %index, align 4, !dbg !642
  %idxprom4 = zext i32 %10 to i64, !dbg !641
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !641
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !641
  %12 = load i32, ptr %flags.addr, align 4, !dbg !643
  %13 = load i64, ptr %size.addr, align 8, !dbg !644
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !645
  store ptr %call6, ptr %retval, align 8, !dbg !646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !646

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !647
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !648
  %15 = load i32, ptr %flags.addr, align 4, !dbg !649
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !650
  store ptr %call8, ptr %retval, align 8, !dbg !651
  br label %return, !dbg !651

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !652
  ret ptr %16, !dbg !652
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !653 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !654 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !660, metadata !DIExpression()), !dbg !662
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !661, metadata !DIExpression()), !dbg !663
  %0 = load i64, ptr %size.addr, align 8, !dbg !664
  %tobool = icmp ne i64 %0, 0, !dbg !664
  br i1 %tobool, label %if.end, label %if.then, !dbg !666

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !667
  br label %return, !dbg !667

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !668
  %cmp = icmp ule i64 %1, 8, !dbg !670
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !671

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !672
  br label %return, !dbg !672

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !673
  %cmp3 = icmp ugt i64 %2, 64, !dbg !675
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !676

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !677
  %cmp4 = icmp ule i64 %3, 96, !dbg !678
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !679

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !680
  br label %return, !dbg !680

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !681
  %cmp7 = icmp ugt i64 %4, 128, !dbg !683
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !684

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !685
  %cmp9 = icmp ule i64 %5, 192, !dbg !686
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !687

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !688
  br label %return, !dbg !688

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !689
  %cmp12 = icmp ule i64 %6, 8, !dbg !691
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !692

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !693
  br label %return, !dbg !693

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !694
  %cmp15 = icmp ule i64 %7, 16, !dbg !696
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !697

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !698
  br label %return, !dbg !698

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !699
  %cmp18 = icmp ule i64 %8, 32, !dbg !701
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !702

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !703
  br label %return, !dbg !703

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !704
  %cmp21 = icmp ule i64 %9, 64, !dbg !706
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !707

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !708
  br label %return, !dbg !708

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !709
  %cmp24 = icmp ule i64 %10, 128, !dbg !711
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !712

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !713
  br label %return, !dbg !713

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !714
  %cmp27 = icmp ule i64 %11, 256, !dbg !716
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !717

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !718
  br label %return, !dbg !718

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !719
  %cmp30 = icmp ule i64 %12, 512, !dbg !721
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !722

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !723
  br label %return, !dbg !723

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !724
  %cmp33 = icmp ule i64 %13, 1024, !dbg !726
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !727

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !728
  br label %return, !dbg !728

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !729
  %cmp36 = icmp ule i64 %14, 2048, !dbg !731
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !732

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !733
  br label %return, !dbg !733

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !734
  %cmp39 = icmp ule i64 %15, 4096, !dbg !736
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !737

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !738
  br label %return, !dbg !738

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !739
  %cmp42 = icmp ule i64 %16, 8192, !dbg !741
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !742

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !743
  br label %return, !dbg !743

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !744
  %cmp45 = icmp ule i64 %17, 16384, !dbg !746
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !747

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !748
  br label %return, !dbg !748

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !749
  %cmp48 = icmp ule i64 %18, 32768, !dbg !751
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !752

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !753
  br label %return, !dbg !753

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !754
  %cmp51 = icmp ule i64 %19, 65536, !dbg !756
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !757

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !758
  br label %return, !dbg !758

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !759
  %cmp54 = icmp ule i64 %20, 131072, !dbg !761
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !762

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !763
  br label %return, !dbg !763

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !764
  %cmp57 = icmp ule i64 %21, 262144, !dbg !766
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !767

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !768
  br label %return, !dbg !768

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !769
  %cmp60 = icmp ule i64 %22, 524288, !dbg !771
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !772

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !773
  br label %return, !dbg !773

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !774
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !776
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !777

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !778
  br label %return, !dbg !778

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !779
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !781
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !782

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !783
  br label %return, !dbg !783

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !784, !range !786, !noundef !787
  %tobool69 = trunc i8 %25 to i1, !dbg !784
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !788

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !789

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #18, !dbg !790, !srcloc !793
  unreachable, !dbg !790

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !794

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !795

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !796

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !798

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !796

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #14, !dbg !800, !srcloc !802
  br label %do.end75, !dbg !800

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !796

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !803
  br label %return, !dbg !803

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !804
  ret i32 %26, !dbg !804
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !805 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !811 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !815, metadata !DIExpression()), !dbg !817
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !816, metadata !DIExpression()), !dbg !818
  %0 = load i32, ptr %flags.addr, align 4, !dbg !819
  %and = and i32 %0, 17, !dbg !819
  %cmp = icmp eq i32 %and, 0, !dbg !819
  %lnot = xor i1 %cmp, true, !dbg !819
  %lnot1 = xor i1 %lnot, true, !dbg !819
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !819
  %conv = sext i32 %lnot.ext to i64, !dbg !819
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !819
  %tobool = icmp ne i64 %expval, 0, !dbg !819
  br i1 %tobool, label %if.then, label %if.end, !dbg !821

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !822
  br label %return, !dbg !822

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !823
  %and2 = and i32 %1, 1, !dbg !825
  %tobool3 = icmp ne i32 %and2, 0, !dbg !825
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !826

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !827
  br label %return, !dbg !827

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !828
  br label %return, !dbg !828

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !830
  ret i32 %2, !dbg !830
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !831 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !832 dso_local void @__compiletime_assert_173() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #7 align 16 !dbg !835 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !838
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !837, metadata !DIExpression()), !dbg !839
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #14, !dbg !840, !srcloc !841
  %0 = load i64, ptr %flags, align 8, !dbg !842
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !843
  ret i64 %0, !dbg !844
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !845 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !82, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exregion.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exregion\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exregion.ll drivers/acpi/acpica/exregion.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !61, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exregion.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6f898f3aeba2dfe078a78e72538ac91")
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
!21 = !{!22, !28, !29, !32, !24, !33, !37, !40, !44, !45, !34, !41, !46, !47, !54, !58, !60, !39}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !23, line: 421, baseType: !24)
!23 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !31)
!31 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !23, line: 127, baseType: !29)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !36)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !38, line: 42, baseType: !39)
!38 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !43)
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !23, line: 128, baseType: !29)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_id", file: !23, line: 1221, size: 64, elements: !49)
!49 = !{!50, !51, !52, !53}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !48, file: !23, line: 1222, baseType: !41, size: 16)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !48, file: !23, line: 1223, baseType: !41, size: 16, offset: 16)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !48, file: !23, line: 1224, baseType: !41, size: 16, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !48, file: !23, line: 1225, baseType: !41, size: 16, offset: 48)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_data_table_mapping", file: !23, line: 1242, size: 64, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !55, file: !23, line: 1243, baseType: !28, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !38, line: 154, baseType: !7)
!61 = !{!62, !67, !72, !0, !77}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 240, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 30)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 440, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 55)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !3, line: 147, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 368, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 46)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 168, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 21)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 72, elements: !84)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!84 = !{!85}
!85 = !DISubrange(count: 9)
!86 = !{i32 7, !"Dwarf Version", i32 5}
!87 = !{i32 2, !"Debug Info Version", i32 3}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 8, !"cf-protection-branch", i32 1}
!90 = !{i32 4, !"function_return_thunk_extern", i32 1}
!91 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!92 = !{i32 1, !"Code Model", i32 2}
!93 = !{i32 1, !"override-stack-alignment", i32 8}
!94 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!95 = distinct !DISubprogram(name: "acpi_ex_system_memory_space_handler", scope: !3, file: !3, line: 35, type: !96, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !99)
!96 = !DISubroutineType(types: !97)
!97 = !{!22, !24, !98, !24, !45, !28, !28}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !23, line: 129, baseType: !29)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !123, !124, !125, !126}
!100 = !DILocalVariable(name: "function", arg: 1, scope: !95, file: !3, line: 35, type: !24)
!101 = !DILocalVariable(name: "address", arg: 2, scope: !95, file: !3, line: 36, type: !98)
!102 = !DILocalVariable(name: "bit_width", arg: 3, scope: !95, file: !3, line: 37, type: !24)
!103 = !DILocalVariable(name: "value", arg: 4, scope: !95, file: !3, line: 38, type: !45)
!104 = !DILocalVariable(name: "handler_context", arg: 5, scope: !95, file: !3, line: 39, type: !28)
!105 = !DILocalVariable(name: "region_context", arg: 6, scope: !95, file: !3, line: 39, type: !28)
!106 = !DILocalVariable(name: "status", scope: !95, file: !3, line: 41, type: !22)
!107 = !DILocalVariable(name: "logical_addr_ptr", scope: !95, file: !3, line: 42, type: !28)
!108 = !DILocalVariable(name: "mem_info", scope: !95, file: !3, line: 43, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_mem_space_context", file: !23, line: 1235, size: 256, elements: !111)
!111 = !{!112, !113, !114, !122}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !110, file: !23, line: 1236, baseType: !24, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !110, file: !23, line: 1237, baseType: !98, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "cur_mm", scope: !110, file: !23, line: 1238, baseType: !115, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_mem_mapping", file: !23, line: 1228, size: 256, elements: !117)
!117 = !{!118, !119, !120, !121}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "physical_address", scope: !116, file: !23, line: 1229, baseType: !98, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "logical_address", scope: !116, file: !23, line: 1230, baseType: !33, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !116, file: !23, line: 1231, baseType: !32, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next_mm", scope: !116, file: !23, line: 1232, baseType: !115, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "first_mm", scope: !110, file: !23, line: 1239, baseType: !115, size: 64, offset: 192)
!123 = !DILocalVariable(name: "mm", scope: !95, file: !3, line: 44, type: !115)
!124 = !DILocalVariable(name: "length", scope: !95, file: !3, line: 45, type: !24)
!125 = !DILocalVariable(name: "map_length", scope: !95, file: !3, line: 46, type: !32)
!126 = !DILabel(scope: !95, name: "access", file: !3, line: 171)
!127 = !DILocation(line: 35, column: 41, scope: !95)
!128 = !DILocation(line: 36, column: 31, scope: !95)
!129 = !DILocation(line: 37, column: 13, scope: !95)
!130 = !DILocation(line: 38, column: 14, scope: !95)
!131 = !DILocation(line: 39, column: 15, scope: !95)
!132 = !DILocation(line: 39, column: 38, scope: !95)
!133 = !DILocation(line: 41, column: 2, scope: !95)
!134 = !DILocation(line: 41, column: 14, scope: !95)
!135 = !DILocation(line: 42, column: 2, scope: !95)
!136 = !DILocation(line: 42, column: 8, scope: !95)
!137 = !DILocation(line: 43, column: 2, scope: !95)
!138 = !DILocation(line: 43, column: 33, scope: !95)
!139 = !DILocation(line: 43, column: 44, scope: !95)
!140 = !DILocation(line: 44, column: 2, scope: !95)
!141 = !DILocation(line: 44, column: 27, scope: !95)
!142 = !DILocation(line: 44, column: 32, scope: !95)
!143 = !DILocation(line: 44, column: 42, scope: !95)
!144 = !DILocation(line: 45, column: 2, scope: !95)
!145 = !DILocation(line: 45, column: 6, scope: !95)
!146 = !DILocation(line: 46, column: 2, scope: !95)
!147 = !DILocation(line: 46, column: 12, scope: !95)
!148 = !DILocation(line: 55, column: 10, scope: !95)
!149 = !DILocation(line: 55, column: 2, scope: !95)
!150 = !DILocation(line: 58, column: 10, scope: !151)
!151 = distinct !DILexicalBlock(scope: !95, file: !3, line: 55, column: 21)
!152 = !DILocation(line: 59, column: 3, scope: !151)
!153 = !DILocation(line: 63, column: 10, scope: !151)
!154 = !DILocation(line: 64, column: 3, scope: !151)
!155 = !DILocation(line: 68, column: 10, scope: !151)
!156 = !DILocation(line: 69, column: 3, scope: !151)
!157 = !DILocation(line: 73, column: 10, scope: !151)
!158 = !DILocation(line: 74, column: 3, scope: !151)
!159 = !DILocation(line: 78, column: 3, scope: !151)
!160 = !DILocation(line: 80, column: 3, scope: !151)
!161 = !DILocation(line: 99, column: 7, scope: !162)
!162 = distinct !DILexicalBlock(scope: !95, file: !3, line: 99, column: 6)
!163 = !DILocation(line: 99, column: 10, scope: !162)
!164 = !DILocation(line: 99, column: 14, scope: !162)
!165 = !DILocation(line: 99, column: 24, scope: !162)
!166 = !DILocation(line: 99, column: 28, scope: !162)
!167 = !DILocation(line: 99, column: 22, scope: !162)
!168 = !DILocation(line: 99, column: 46, scope: !162)
!169 = !DILocation(line: 100, column: 13, scope: !162)
!170 = !DILocation(line: 100, column: 23, scope: !162)
!171 = !DILocation(line: 100, column: 21, scope: !162)
!172 = !DILocation(line: 100, column: 38, scope: !162)
!173 = !DILocation(line: 100, column: 42, scope: !162)
!174 = !DILocation(line: 100, column: 61, scope: !162)
!175 = !DILocation(line: 100, column: 65, scope: !162)
!176 = !DILocation(line: 100, column: 59, scope: !162)
!177 = !DILocation(line: 100, column: 30, scope: !162)
!178 = !DILocation(line: 99, column: 6, scope: !95)
!179 = !DILocation(line: 108, column: 13, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !3, line: 108, column: 3)
!181 = distinct !DILexicalBlock(scope: !162, file: !3, line: 100, column: 74)
!182 = !DILocation(line: 108, column: 23, scope: !180)
!183 = !DILocation(line: 108, column: 11, scope: !180)
!184 = !DILocation(line: 108, column: 8, scope: !180)
!185 = !DILocation(line: 108, column: 33, scope: !186)
!186 = distinct !DILexicalBlock(scope: !180, file: !3, line: 108, column: 3)
!187 = !DILocation(line: 108, column: 3, scope: !180)
!188 = !DILocation(line: 109, column: 8, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 109, column: 8)
!190 = distinct !DILexicalBlock(scope: !186, file: !3, line: 108, column: 55)
!191 = !DILocation(line: 109, column: 14, scope: !189)
!192 = !DILocation(line: 109, column: 24, scope: !189)
!193 = !DILocation(line: 109, column: 11, scope: !189)
!194 = !DILocation(line: 109, column: 8, scope: !190)
!195 = !DILocation(line: 110, column: 5, scope: !189)
!196 = !DILocation(line: 112, column: 8, scope: !197)
!197 = distinct !DILexicalBlock(scope: !190, file: !3, line: 112, column: 8)
!198 = !DILocation(line: 112, column: 18, scope: !197)
!199 = !DILocation(line: 112, column: 22, scope: !197)
!200 = !DILocation(line: 112, column: 16, scope: !197)
!201 = !DILocation(line: 112, column: 8, scope: !190)
!202 = !DILocation(line: 113, column: 5, scope: !197)
!203 = !DILocation(line: 115, column: 14, scope: !204)
!204 = distinct !DILexicalBlock(scope: !190, file: !3, line: 115, column: 8)
!205 = !DILocation(line: 115, column: 24, scope: !204)
!206 = !DILocation(line: 115, column: 22, scope: !204)
!207 = !DILocation(line: 116, column: 12, scope: !204)
!208 = !DILocation(line: 116, column: 16, scope: !204)
!209 = !DILocation(line: 116, column: 35, scope: !204)
!210 = !DILocation(line: 116, column: 39, scope: !204)
!211 = !DILocation(line: 116, column: 33, scope: !204)
!212 = !DILocation(line: 115, column: 31, scope: !204)
!213 = !DILocation(line: 115, column: 8, scope: !190)
!214 = !DILocation(line: 117, column: 5, scope: !204)
!215 = !DILocation(line: 119, column: 23, scope: !190)
!216 = !DILocation(line: 119, column: 4, scope: !190)
!217 = !DILocation(line: 119, column: 14, scope: !190)
!218 = !DILocation(line: 119, column: 21, scope: !190)
!219 = !DILocation(line: 120, column: 4, scope: !190)
!220 = !DILocation(line: 108, column: 42, scope: !186)
!221 = !DILocation(line: 108, column: 46, scope: !186)
!222 = !DILocation(line: 108, column: 40, scope: !186)
!223 = !DILocation(line: 108, column: 3, scope: !186)
!224 = distinct !{!224, !187, !225, !226, !227}
!225 = !DILocation(line: 121, column: 3, scope: !180)
!226 = !{!"llvm.loop.mustprogress"}
!227 = !{!"llvm.loop.unroll.disable"}
!228 = !DILocation(line: 124, column: 8, scope: !181)
!229 = !DILocation(line: 124, column: 6, scope: !181)
!230 = !DILocation(line: 125, column: 8, scope: !231)
!231 = distinct !DILexicalBlock(scope: !181, file: !3, line: 125, column: 7)
!232 = !DILocation(line: 125, column: 7, scope: !181)
!233 = !DILocation(line: 126, column: 4, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !3, line: 125, column: 12)
!235 = !DILocation(line: 129, column: 4, scope: !234)
!236 = !DILocation(line: 138, column: 9, scope: !181)
!237 = !DILocation(line: 138, column: 19, scope: !181)
!238 = !DILocation(line: 138, column: 29, scope: !181)
!239 = !DILocation(line: 138, column: 39, scope: !181)
!240 = !DILocation(line: 138, column: 27, scope: !181)
!241 = !DILocation(line: 138, column: 49, scope: !181)
!242 = !DILocation(line: 138, column: 47, scope: !181)
!243 = !DILocation(line: 137, column: 14, scope: !181)
!244 = !DILocation(line: 140, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !181, file: !3, line: 140, column: 7)
!246 = !DILocation(line: 140, column: 18, scope: !245)
!247 = !DILocation(line: 140, column: 7, scope: !181)
!248 = !DILocation(line: 141, column: 15, scope: !245)
!249 = !DILocation(line: 141, column: 4, scope: !245)
!250 = !DILocation(line: 145, column: 41, scope: !181)
!251 = !DILocation(line: 145, column: 50, scope: !181)
!252 = !DILocation(line: 145, column: 22, scope: !181)
!253 = !DILocation(line: 145, column: 20, scope: !181)
!254 = !DILocation(line: 146, column: 8, scope: !255)
!255 = distinct !DILexicalBlock(scope: !181, file: !3, line: 146, column: 7)
!256 = !DILocation(line: 146, column: 7, scope: !181)
!257 = !DILocation(line: 147, column: 4, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !3, line: 146, column: 26)
!259 = !DILocation(line: 151, column: 4, scope: !258)
!260 = !DILocation(line: 152, column: 4, scope: !258)
!261 = !DILocation(line: 157, column: 25, scope: !181)
!262 = !DILocation(line: 157, column: 3, scope: !181)
!263 = !DILocation(line: 157, column: 7, scope: !181)
!264 = !DILocation(line: 157, column: 23, scope: !181)
!265 = !DILocation(line: 158, column: 26, scope: !181)
!266 = !DILocation(line: 158, column: 3, scope: !181)
!267 = !DILocation(line: 158, column: 7, scope: !181)
!268 = !DILocation(line: 158, column: 24, scope: !181)
!269 = !DILocation(line: 159, column: 16, scope: !181)
!270 = !DILocation(line: 159, column: 3, scope: !181)
!271 = !DILocation(line: 159, column: 7, scope: !181)
!272 = !DILocation(line: 159, column: 14, scope: !181)
!273 = !DILocation(line: 165, column: 17, scope: !181)
!274 = !DILocation(line: 165, column: 27, scope: !181)
!275 = !DILocation(line: 165, column: 3, scope: !181)
!276 = !DILocation(line: 165, column: 7, scope: !181)
!277 = !DILocation(line: 165, column: 15, scope: !181)
!278 = !DILocation(line: 166, column: 24, scope: !181)
!279 = !DILocation(line: 166, column: 3, scope: !181)
!280 = !DILocation(line: 166, column: 13, scope: !181)
!281 = !DILocation(line: 166, column: 22, scope: !181)
!282 = !DILocation(line: 168, column: 22, scope: !181)
!283 = !DILocation(line: 168, column: 3, scope: !181)
!284 = !DILocation(line: 168, column: 13, scope: !181)
!285 = !DILocation(line: 168, column: 20, scope: !181)
!286 = !DILocation(line: 169, column: 2, scope: !181)
!287 = !DILocation(line: 100, column: 71, scope: !162)
!288 = !DILocation(line: 171, column: 1, scope: !95)
!289 = !DILocation(line: 176, column: 21, scope: !95)
!290 = !DILocation(line: 176, column: 25, scope: !95)
!291 = !DILocation(line: 177, column: 10, scope: !95)
!292 = !DILocation(line: 177, column: 26, scope: !95)
!293 = !DILocation(line: 177, column: 30, scope: !95)
!294 = !DILocation(line: 177, column: 18, scope: !95)
!295 = !DILocation(line: 176, column: 41, scope: !95)
!296 = !DILocation(line: 176, column: 19, scope: !95)
!297 = !DILocation(line: 191, column: 10, scope: !95)
!298 = !DILocation(line: 191, column: 2, scope: !95)
!299 = !DILocation(line: 194, column: 4, scope: !300)
!300 = distinct !DILexicalBlock(scope: !95, file: !3, line: 191, column: 20)
!301 = !DILocation(line: 194, column: 10, scope: !300)
!302 = !DILocation(line: 195, column: 11, scope: !300)
!303 = !DILocation(line: 195, column: 3, scope: !300)
!304 = !DILocation(line: 198, column: 18, scope: !305)
!305 = distinct !DILexicalBlock(scope: !300, file: !3, line: 195, column: 22)
!306 = !DILocation(line: 198, column: 13, scope: !305)
!307 = !DILocation(line: 198, column: 5, scope: !305)
!308 = !DILocation(line: 198, column: 11, scope: !305)
!309 = !DILocation(line: 199, column: 4, scope: !305)
!310 = !DILocation(line: 203, column: 18, scope: !305)
!311 = !DILocation(line: 203, column: 13, scope: !305)
!312 = !DILocation(line: 203, column: 5, scope: !305)
!313 = !DILocation(line: 203, column: 11, scope: !305)
!314 = !DILocation(line: 204, column: 4, scope: !305)
!315 = !DILocation(line: 208, column: 18, scope: !305)
!316 = !DILocation(line: 208, column: 13, scope: !305)
!317 = !DILocation(line: 208, column: 5, scope: !305)
!318 = !DILocation(line: 208, column: 11, scope: !305)
!319 = !DILocation(line: 209, column: 4, scope: !305)
!320 = !DILocation(line: 213, column: 18, scope: !305)
!321 = !DILocation(line: 213, column: 5, scope: !305)
!322 = !DILocation(line: 213, column: 11, scope: !305)
!323 = !DILocation(line: 214, column: 4, scope: !305)
!324 = !DILocation(line: 220, column: 4, scope: !305)
!325 = !DILocation(line: 222, column: 3, scope: !300)
!326 = !DILocation(line: 226, column: 11, scope: !300)
!327 = !DILocation(line: 226, column: 3, scope: !300)
!328 = !DILocation(line: 229, column: 4, scope: !329)
!329 = distinct !DILexicalBlock(scope: !300, file: !3, line: 226, column: 22)
!330 = !DILocation(line: 230, column: 4, scope: !329)
!331 = !DILocation(line: 234, column: 4, scope: !329)
!332 = !DILocation(line: 235, column: 4, scope: !329)
!333 = !DILocation(line: 239, column: 4, scope: !329)
!334 = !DILocation(line: 240, column: 4, scope: !329)
!335 = !DILocation(line: 244, column: 4, scope: !329)
!336 = !DILocation(line: 245, column: 4, scope: !329)
!337 = !DILocation(line: 251, column: 4, scope: !329)
!338 = !DILocation(line: 253, column: 3, scope: !300)
!339 = !DILocation(line: 257, column: 10, scope: !300)
!340 = !DILocation(line: 258, column: 3, scope: !300)
!341 = !DILocation(line: 261, column: 2, scope: !95)
!342 = !DILocation(line: 262, column: 1, scope: !95)
!343 = !DISubprogram(name: "acpi_error", scope: !344, file: !344, line: 901, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!344 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347, !24, !347, null}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!348 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !349, file: !349, line: 55, type: !350, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !352)
!349 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!350 = !DISubroutineType(types: !351)
!351 = !{!28, !32}
!352 = !{!353, !354, !356, !359, !360, !363}
!353 = !DILocalVariable(name: "size", arg: 1, scope: !348, file: !349, line: 55, type: !32)
!354 = !DILocalVariable(name: "_flags", scope: !355, file: !349, line: 57, type: !39)
!355 = distinct !DILexicalBlock(scope: !348, file: !349, line: 57, column: 23)
!356 = !DILocalVariable(name: "__dummy", scope: !357, file: !349, line: 57, type: !39)
!357 = distinct !DILexicalBlock(scope: !358, file: !349, line: 57, column: 23)
!358 = distinct !DILexicalBlock(scope: !355, file: !349, line: 57, column: 23)
!359 = !DILocalVariable(name: "__dummy2", scope: !357, file: !349, line: 57, type: !39)
!360 = !DILocalVariable(name: "__dummy", scope: !361, file: !349, line: 57, type: !39)
!361 = distinct !DILexicalBlock(scope: !362, file: !349, line: 57, column: 23)
!362 = distinct !DILexicalBlock(scope: !355, file: !349, line: 57, column: 23)
!363 = !DILocalVariable(name: "__dummy2", scope: !361, file: !349, line: 57, type: !39)
!364 = !DILocation(line: 55, column: 55, scope: !348)
!365 = !DILocation(line: 57, column: 17, scope: !348)
!366 = !DILocation(line: 57, column: 23, scope: !355)
!367 = !DILocation(line: 57, column: 23, scope: !357)
!368 = !DILocation(line: 57, column: 23, scope: !358)
!369 = !DILocation(line: 57, column: 23, scope: !361)
!370 = !DILocation(line: 57, column: 23, scope: !362)
!371 = !DILocation(line: 57, column: 23, scope: !348)
!372 = !DILocation(line: 57, column: 9, scope: !348)
!373 = !DILocation(line: 57, column: 2, scope: !348)
!374 = !DISubprogram(name: "acpi_os_map_memory", scope: !375, file: !375, line: 183, type: !376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!376 = !DISubroutineType(types: !377)
!377 = !{!28, !98, !32}
!378 = distinct !DISubprogram(name: "acpi_os_free", scope: !349, file: !349, line: 60, type: !379, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !28}
!381 = !{!382}
!382 = !DILocalVariable(name: "memory", arg: 1, scope: !378, file: !349, line: 60, type: !28)
!383 = !DILocation(line: 60, column: 39, scope: !378)
!384 = !DILocation(line: 62, column: 8, scope: !378)
!385 = !DILocation(line: 62, column: 2, scope: !378)
!386 = !DILocation(line: 63, column: 1, scope: !378)
!387 = distinct !DISubprogram(name: "acpi_ex_system_io_space_handler", scope: !3, file: !3, line: 283, type: !96, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !388)
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396}
!389 = !DILocalVariable(name: "function", arg: 1, scope: !387, file: !3, line: 283, type: !24)
!390 = !DILocalVariable(name: "address", arg: 2, scope: !387, file: !3, line: 284, type: !98)
!391 = !DILocalVariable(name: "bit_width", arg: 3, scope: !387, file: !3, line: 285, type: !24)
!392 = !DILocalVariable(name: "value", arg: 4, scope: !387, file: !3, line: 286, type: !45)
!393 = !DILocalVariable(name: "handler_context", arg: 5, scope: !387, file: !3, line: 287, type: !28)
!394 = !DILocalVariable(name: "region_context", arg: 6, scope: !387, file: !3, line: 287, type: !28)
!395 = !DILocalVariable(name: "status", scope: !387, file: !3, line: 289, type: !22)
!396 = !DILocalVariable(name: "value32", scope: !387, file: !3, line: 290, type: !24)
!397 = !DILocation(line: 283, column: 37, scope: !387)
!398 = !DILocation(line: 284, column: 27, scope: !387)
!399 = !DILocation(line: 285, column: 9, scope: !387)
!400 = !DILocation(line: 286, column: 10, scope: !387)
!401 = !DILocation(line: 287, column: 11, scope: !387)
!402 = !DILocation(line: 287, column: 34, scope: !387)
!403 = !DILocation(line: 289, column: 2, scope: !387)
!404 = !DILocation(line: 289, column: 14, scope: !387)
!405 = !DILocation(line: 290, column: 2, scope: !387)
!406 = !DILocation(line: 290, column: 6, scope: !387)
!407 = !DILocation(line: 300, column: 10, scope: !387)
!408 = !DILocation(line: 300, column: 2, scope: !387)
!409 = !DILocation(line: 303, column: 47, scope: !410)
!410 = distinct !DILexicalBlock(scope: !387, file: !3, line: 300, column: 20)
!411 = !DILocation(line: 304, column: 19, scope: !410)
!412 = !DILocation(line: 303, column: 12, scope: !410)
!413 = !DILocation(line: 303, column: 10, scope: !410)
!414 = !DILocation(line: 305, column: 12, scope: !410)
!415 = !DILocation(line: 305, column: 4, scope: !410)
!416 = !DILocation(line: 305, column: 10, scope: !410)
!417 = !DILocation(line: 306, column: 3, scope: !410)
!418 = !DILocation(line: 310, column: 48, scope: !410)
!419 = !DILocation(line: 311, column: 16, scope: !410)
!420 = !DILocation(line: 311, column: 15, scope: !410)
!421 = !DILocation(line: 311, column: 10, scope: !410)
!422 = !DILocation(line: 311, column: 23, scope: !410)
!423 = !DILocation(line: 310, column: 12, scope: !410)
!424 = !DILocation(line: 310, column: 10, scope: !410)
!425 = !DILocation(line: 312, column: 3, scope: !410)
!426 = !DILocation(line: 316, column: 10, scope: !410)
!427 = !DILocation(line: 317, column: 3, scope: !410)
!428 = !DILocation(line: 320, column: 2, scope: !387)
!429 = !DILocation(line: 321, column: 1, scope: !387)
!430 = !DISubprogram(name: "acpi_hw_read_port", scope: !431, file: !431, line: 72, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!431 = !DIFile(filename: "drivers/acpi/acpica/achware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e639ab6c676f6257d869bb312951f39d")
!432 = !DISubroutineType(types: !433)
!433 = !{!22, !46, !44, !24}
!434 = !DISubprogram(name: "acpi_hw_write_port", scope: !431, file: !431, line: 74, type: !435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!435 = !DISubroutineType(types: !436)
!436 = !{!22, !46, !24, !24}
!437 = distinct !DISubprogram(name: "acpi_ex_pci_config_space_handler", scope: !3, file: !3, line: 343, type: !96, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !438)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447}
!439 = !DILocalVariable(name: "function", arg: 1, scope: !437, file: !3, line: 343, type: !24)
!440 = !DILocalVariable(name: "address", arg: 2, scope: !437, file: !3, line: 344, type: !98)
!441 = !DILocalVariable(name: "bit_width", arg: 3, scope: !437, file: !3, line: 345, type: !24)
!442 = !DILocalVariable(name: "value", arg: 4, scope: !437, file: !3, line: 346, type: !45)
!443 = !DILocalVariable(name: "handler_context", arg: 5, scope: !437, file: !3, line: 347, type: !28)
!444 = !DILocalVariable(name: "region_context", arg: 6, scope: !437, file: !3, line: 347, type: !28)
!445 = !DILocalVariable(name: "status", scope: !437, file: !3, line: 349, type: !22)
!446 = !DILocalVariable(name: "pci_id", scope: !437, file: !3, line: 350, type: !47)
!447 = !DILocalVariable(name: "pci_register", scope: !437, file: !3, line: 351, type: !41)
!448 = !DILocation(line: 343, column: 38, scope: !437)
!449 = !DILocation(line: 344, column: 28, scope: !437)
!450 = !DILocation(line: 345, column: 10, scope: !437)
!451 = !DILocation(line: 346, column: 11, scope: !437)
!452 = !DILocation(line: 347, column: 12, scope: !437)
!453 = !DILocation(line: 347, column: 35, scope: !437)
!454 = !DILocation(line: 349, column: 2, scope: !437)
!455 = !DILocation(line: 349, column: 14, scope: !437)
!456 = !DILocation(line: 350, column: 2, scope: !437)
!457 = !DILocation(line: 350, column: 22, scope: !437)
!458 = !DILocation(line: 351, column: 2, scope: !437)
!459 = !DILocation(line: 351, column: 6, scope: !437)
!460 = !DILocation(line: 367, column: 33, scope: !437)
!461 = !DILocation(line: 367, column: 9, scope: !437)
!462 = !DILocation(line: 368, column: 29, scope: !437)
!463 = !DILocation(line: 368, column: 23, scope: !437)
!464 = !DILocation(line: 368, column: 17, scope: !437)
!465 = !DILocation(line: 368, column: 15, scope: !437)
!466 = !DILocation(line: 376, column: 10, scope: !437)
!467 = !DILocation(line: 376, column: 2, scope: !437)
!468 = !DILocation(line: 379, column: 4, scope: !469)
!469 = distinct !DILexicalBlock(scope: !437, file: !3, line: 376, column: 20)
!470 = !DILocation(line: 379, column: 10, scope: !469)
!471 = !DILocation(line: 381, column: 38, scope: !469)
!472 = !DILocation(line: 381, column: 46, scope: !469)
!473 = !DILocation(line: 381, column: 60, scope: !469)
!474 = !DILocation(line: 382, column: 10, scope: !469)
!475 = !DILocation(line: 381, column: 7, scope: !469)
!476 = !DILocation(line: 380, column: 10, scope: !469)
!477 = !DILocation(line: 383, column: 3, scope: !469)
!478 = !DILocation(line: 388, column: 39, scope: !469)
!479 = !DILocation(line: 388, column: 47, scope: !469)
!480 = !DILocation(line: 389, column: 12, scope: !469)
!481 = !DILocation(line: 389, column: 11, scope: !469)
!482 = !DILocation(line: 389, column: 19, scope: !469)
!483 = !DILocation(line: 388, column: 7, scope: !469)
!484 = !DILocation(line: 387, column: 10, scope: !469)
!485 = !DILocation(line: 390, column: 3, scope: !469)
!486 = !DILocation(line: 394, column: 10, scope: !469)
!487 = !DILocation(line: 395, column: 3, scope: !469)
!488 = !DILocation(line: 398, column: 2, scope: !437)
!489 = !DILocation(line: 399, column: 1, scope: !437)
!490 = !DISubprogram(name: "acpi_os_read_pci_configuration", scope: !375, file: !375, line: 296, type: !491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!491 = !DISubroutineType(types: !492)
!492 = !{!22, !47, !24, !45, !24}
!493 = !DISubprogram(name: "acpi_os_write_pci_configuration", scope: !375, file: !375, line: 302, type: !494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!494 = !DISubroutineType(types: !495)
!495 = !{!22, !47, !24, !29, !24}
!496 = distinct !DISubprogram(name: "acpi_ex_cmos_space_handler", scope: !3, file: !3, line: 421, type: !96, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!497 = !{!498, !499, !500, !501, !502, !503, !504}
!498 = !DILocalVariable(name: "function", arg: 1, scope: !496, file: !3, line: 421, type: !24)
!499 = !DILocalVariable(name: "address", arg: 2, scope: !496, file: !3, line: 422, type: !98)
!500 = !DILocalVariable(name: "bit_width", arg: 3, scope: !496, file: !3, line: 423, type: !24)
!501 = !DILocalVariable(name: "value", arg: 4, scope: !496, file: !3, line: 424, type: !45)
!502 = !DILocalVariable(name: "handler_context", arg: 5, scope: !496, file: !3, line: 425, type: !28)
!503 = !DILocalVariable(name: "region_context", arg: 6, scope: !496, file: !3, line: 425, type: !28)
!504 = !DILocalVariable(name: "status", scope: !496, file: !3, line: 427, type: !22)
!505 = !DILocation(line: 421, column: 32, scope: !496)
!506 = !DILocation(line: 422, column: 29, scope: !496)
!507 = !DILocation(line: 423, column: 11, scope: !496)
!508 = !DILocation(line: 424, column: 12, scope: !496)
!509 = !DILocation(line: 425, column: 13, scope: !496)
!510 = !DILocation(line: 425, column: 36, scope: !496)
!511 = !DILocation(line: 427, column: 2, scope: !496)
!512 = !DILocation(line: 427, column: 14, scope: !496)
!513 = !DILocation(line: 431, column: 2, scope: !496)
!514 = !DILocation(line: 432, column: 1, scope: !496)
!515 = distinct !DISubprogram(name: "acpi_ex_pci_bar_space_handler", scope: !3, file: !3, line: 454, type: !96, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !516)
!516 = !{!517, !518, !519, !520, !521, !522, !523}
!517 = !DILocalVariable(name: "function", arg: 1, scope: !515, file: !3, line: 454, type: !24)
!518 = !DILocalVariable(name: "address", arg: 2, scope: !515, file: !3, line: 455, type: !98)
!519 = !DILocalVariable(name: "bit_width", arg: 3, scope: !515, file: !3, line: 456, type: !24)
!520 = !DILocalVariable(name: "value", arg: 4, scope: !515, file: !3, line: 457, type: !45)
!521 = !DILocalVariable(name: "handler_context", arg: 5, scope: !515, file: !3, line: 458, type: !28)
!522 = !DILocalVariable(name: "region_context", arg: 6, scope: !515, file: !3, line: 458, type: !28)
!523 = !DILocalVariable(name: "status", scope: !515, file: !3, line: 460, type: !22)
!524 = !DILocation(line: 454, column: 35, scope: !515)
!525 = !DILocation(line: 455, column: 32, scope: !515)
!526 = !DILocation(line: 456, column: 14, scope: !515)
!527 = !DILocation(line: 457, column: 15, scope: !515)
!528 = !DILocation(line: 458, column: 16, scope: !515)
!529 = !DILocation(line: 458, column: 39, scope: !515)
!530 = !DILocation(line: 460, column: 2, scope: !515)
!531 = !DILocation(line: 460, column: 14, scope: !515)
!532 = !DILocation(line: 464, column: 2, scope: !515)
!533 = !DILocation(line: 465, column: 1, scope: !515)
!534 = distinct !DISubprogram(name: "acpi_ex_data_table_space_handler", scope: !3, file: !3, line: 487, type: !96, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !535)
!535 = !{!536, !537, !538, !539, !540, !541, !542, !543}
!536 = !DILocalVariable(name: "function", arg: 1, scope: !534, file: !3, line: 487, type: !24)
!537 = !DILocalVariable(name: "address", arg: 2, scope: !534, file: !3, line: 488, type: !98)
!538 = !DILocalVariable(name: "bit_width", arg: 3, scope: !534, file: !3, line: 489, type: !24)
!539 = !DILocalVariable(name: "value", arg: 4, scope: !534, file: !3, line: 490, type: !45)
!540 = !DILocalVariable(name: "handler_context", arg: 5, scope: !534, file: !3, line: 491, type: !28)
!541 = !DILocalVariable(name: "region_context", arg: 6, scope: !534, file: !3, line: 491, type: !28)
!542 = !DILocalVariable(name: "mapping", scope: !534, file: !3, line: 493, type: !54)
!543 = !DILocalVariable(name: "pointer", scope: !534, file: !3, line: 494, type: !58)
!544 = !DILocation(line: 487, column: 38, scope: !534)
!545 = !DILocation(line: 488, column: 28, scope: !534)
!546 = !DILocation(line: 489, column: 10, scope: !534)
!547 = !DILocation(line: 490, column: 11, scope: !534)
!548 = !DILocation(line: 491, column: 12, scope: !534)
!549 = !DILocation(line: 491, column: 35, scope: !534)
!550 = !DILocation(line: 493, column: 2, scope: !534)
!551 = !DILocation(line: 493, column: 34, scope: !534)
!552 = !DILocation(line: 494, column: 2, scope: !534)
!553 = !DILocation(line: 494, column: 8, scope: !534)
!554 = !DILocation(line: 498, column: 47, scope: !534)
!555 = !DILocation(line: 498, column: 10, scope: !534)
!556 = !DILocation(line: 499, column: 12, scope: !534)
!557 = !DILocation(line: 500, column: 7, scope: !534)
!558 = !DILocation(line: 500, column: 17, scope: !534)
!559 = !DILocation(line: 500, column: 15, scope: !534)
!560 = !DILocation(line: 499, column: 50, scope: !534)
!561 = !DILocation(line: 499, column: 10, scope: !534)
!562 = !DILocation(line: 506, column: 10, scope: !534)
!563 = !DILocation(line: 506, column: 2, scope: !534)
!564 = !DILocation(line: 509, column: 10, scope: !565)
!565 = distinct !DILexicalBlock(scope: !534, file: !3, line: 506, column: 20)
!566 = !DILocation(line: 509, column: 38, scope: !565)
!567 = !DILocation(line: 510, column: 10, scope: !565)
!568 = !DILocation(line: 509, column: 3, scope: !565)
!569 = !DILocation(line: 511, column: 3, scope: !565)
!570 = !DILocation(line: 515, column: 10, scope: !565)
!571 = !DILocation(line: 515, column: 19, scope: !565)
!572 = !DILocation(line: 516, column: 10, scope: !565)
!573 = !DILocation(line: 515, column: 3, scope: !565)
!574 = !DILocation(line: 517, column: 3, scope: !565)
!575 = !DILocation(line: 521, column: 3, scope: !565)
!576 = !DILocation(line: 524, column: 2, scope: !534)
!577 = !DILocation(line: 525, column: 1, scope: !534)
!578 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !579, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !585)
!579 = !DISubroutineType(types: !580)
!580 = !{!28, !581, !60}
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 61, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !583, line: 72, baseType: !584)
!583 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !583, line: 16, baseType: !39)
!585 = !{!586, !587}
!586 = !DILocalVariable(name: "size", arg: 1, scope: !578, file: !12, line: 719, type: !581)
!587 = !DILocalVariable(name: "flags", arg: 2, scope: !578, file: !12, line: 719, type: !60)
!588 = !DILocation(line: 719, column: 52, scope: !578)
!589 = !DILocation(line: 719, column: 64, scope: !578)
!590 = !DILocation(line: 721, column: 17, scope: !578)
!591 = !DILocation(line: 721, column: 23, scope: !578)
!592 = !DILocation(line: 721, column: 29, scope: !578)
!593 = !DILocation(line: 721, column: 9, scope: !578)
!594 = !DILocation(line: 721, column: 2, scope: !578)
!595 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !596, file: !596, line: 65, type: !597, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!596 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!597 = !DISubroutineType(types: !598)
!598 = !{!39}
!599 = !DILocation(line: 67, column: 9, scope: !595)
!600 = !DILocation(line: 67, column: 2, scope: !595)
!601 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !596, file: !596, line: 120, type: !602, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !605)
!602 = !DISubroutineType(types: !603)
!603 = !{!604, !39}
!604 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!605 = !{!606}
!606 = !DILocalVariable(name: "flags", arg: 1, scope: !601, file: !596, line: 120, type: !39)
!607 = !DILocation(line: 120, column: 67, scope: !601)
!608 = !DILocation(line: 122, column: 11, scope: !601)
!609 = !DILocation(line: 122, column: 17, scope: !601)
!610 = !DILocation(line: 122, column: 9, scope: !601)
!611 = !DILocation(line: 122, column: 2, scope: !601)
!612 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !579, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !613)
!613 = !{!614, !615, !616}
!614 = !DILocalVariable(name: "size", arg: 1, scope: !612, file: !12, line: 591, type: !581)
!615 = !DILocalVariable(name: "flags", arg: 2, scope: !612, file: !12, line: 591, type: !60)
!616 = !DILocalVariable(name: "index", scope: !617, file: !12, line: 594, type: !7)
!617 = distinct !DILexicalBlock(scope: !618, file: !12, line: 593, column: 42)
!618 = distinct !DILexicalBlock(scope: !612, file: !12, line: 593, column: 6)
!619 = !DILocation(line: 591, column: 61, scope: !612)
!620 = !DILocation(line: 591, column: 73, scope: !612)
!621 = !DILocation(line: 593, column: 27, scope: !618)
!622 = !DILocation(line: 593, column: 6, scope: !618)
!623 = !DILocation(line: 593, column: 33, scope: !618)
!624 = !DILocation(line: 593, column: 36, scope: !618)
!625 = !DILocation(line: 593, column: 6, scope: !612)
!626 = !DILocation(line: 594, column: 3, scope: !617)
!627 = !DILocation(line: 594, column: 16, scope: !617)
!628 = !DILocation(line: 596, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !617, file: !12, line: 596, column: 7)
!630 = !DILocation(line: 596, column: 12, scope: !629)
!631 = !DILocation(line: 596, column: 7, scope: !617)
!632 = !DILocation(line: 597, column: 25, scope: !629)
!633 = !DILocation(line: 597, column: 31, scope: !629)
!634 = !DILocation(line: 597, column: 11, scope: !629)
!635 = !DILocation(line: 597, column: 4, scope: !629)
!636 = !DILocation(line: 599, column: 11, scope: !617)
!637 = !DILocation(line: 599, column: 9, scope: !617)
!638 = !DILocation(line: 601, column: 33, scope: !617)
!639 = !DILocation(line: 601, column: 40, scope: !617)
!640 = !DILocation(line: 601, column: 20, scope: !617)
!641 = !DILocation(line: 601, column: 5, scope: !617)
!642 = !DILocation(line: 601, column: 51, scope: !617)
!643 = !DILocation(line: 602, column: 5, scope: !617)
!644 = !DILocation(line: 602, column: 12, scope: !617)
!645 = !DILocation(line: 600, column: 10, scope: !617)
!646 = !DILocation(line: 600, column: 3, scope: !617)
!647 = !DILocation(line: 603, column: 2, scope: !618)
!648 = !DILocation(line: 604, column: 19, scope: !612)
!649 = !DILocation(line: 604, column: 25, scope: !612)
!650 = !DILocation(line: 604, column: 9, scope: !612)
!651 = !DILocation(line: 604, column: 2, scope: !612)
!652 = !DILocation(line: 605, column: 1, scope: !612)
!653 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!654 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !655, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !659)
!655 = !DISubroutineType(types: !656)
!656 = !{!7, !581, !657}
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !38, line: 35, baseType: !658)
!658 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!659 = !{!660, !661}
!660 = !DILocalVariable(name: "size", arg: 1, scope: !654, file: !12, line: 444, type: !581)
!661 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !654, file: !12, line: 445, type: !657)
!662 = !DILocation(line: 444, column: 60, scope: !654)
!663 = !DILocation(line: 445, column: 16, scope: !654)
!664 = !DILocation(line: 447, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !654, file: !12, line: 447, column: 6)
!666 = !DILocation(line: 447, column: 6, scope: !654)
!667 = !DILocation(line: 448, column: 3, scope: !665)
!668 = !DILocation(line: 450, column: 6, scope: !669)
!669 = distinct !DILexicalBlock(scope: !654, file: !12, line: 450, column: 6)
!670 = !DILocation(line: 450, column: 11, scope: !669)
!671 = !DILocation(line: 450, column: 6, scope: !654)
!672 = !DILocation(line: 451, column: 3, scope: !669)
!673 = !DILocation(line: 453, column: 32, scope: !674)
!674 = distinct !DILexicalBlock(scope: !654, file: !12, line: 453, column: 6)
!675 = !DILocation(line: 453, column: 37, scope: !674)
!676 = !DILocation(line: 453, column: 42, scope: !674)
!677 = !DILocation(line: 453, column: 45, scope: !674)
!678 = !DILocation(line: 453, column: 50, scope: !674)
!679 = !DILocation(line: 453, column: 6, scope: !654)
!680 = !DILocation(line: 454, column: 3, scope: !674)
!681 = !DILocation(line: 455, column: 32, scope: !682)
!682 = distinct !DILexicalBlock(scope: !654, file: !12, line: 455, column: 6)
!683 = !DILocation(line: 455, column: 37, scope: !682)
!684 = !DILocation(line: 455, column: 43, scope: !682)
!685 = !DILocation(line: 455, column: 46, scope: !682)
!686 = !DILocation(line: 455, column: 51, scope: !682)
!687 = !DILocation(line: 455, column: 6, scope: !654)
!688 = !DILocation(line: 456, column: 3, scope: !682)
!689 = !DILocation(line: 457, column: 6, scope: !690)
!690 = distinct !DILexicalBlock(scope: !654, file: !12, line: 457, column: 6)
!691 = !DILocation(line: 457, column: 11, scope: !690)
!692 = !DILocation(line: 457, column: 6, scope: !654)
!693 = !DILocation(line: 457, column: 26, scope: !690)
!694 = !DILocation(line: 458, column: 6, scope: !695)
!695 = distinct !DILexicalBlock(scope: !654, file: !12, line: 458, column: 6)
!696 = !DILocation(line: 458, column: 11, scope: !695)
!697 = !DILocation(line: 458, column: 6, scope: !654)
!698 = !DILocation(line: 458, column: 26, scope: !695)
!699 = !DILocation(line: 459, column: 6, scope: !700)
!700 = distinct !DILexicalBlock(scope: !654, file: !12, line: 459, column: 6)
!701 = !DILocation(line: 459, column: 11, scope: !700)
!702 = !DILocation(line: 459, column: 6, scope: !654)
!703 = !DILocation(line: 459, column: 26, scope: !700)
!704 = !DILocation(line: 460, column: 6, scope: !705)
!705 = distinct !DILexicalBlock(scope: !654, file: !12, line: 460, column: 6)
!706 = !DILocation(line: 460, column: 11, scope: !705)
!707 = !DILocation(line: 460, column: 6, scope: !654)
!708 = !DILocation(line: 460, column: 26, scope: !705)
!709 = !DILocation(line: 461, column: 6, scope: !710)
!710 = distinct !DILexicalBlock(scope: !654, file: !12, line: 461, column: 6)
!711 = !DILocation(line: 461, column: 11, scope: !710)
!712 = !DILocation(line: 461, column: 6, scope: !654)
!713 = !DILocation(line: 461, column: 26, scope: !710)
!714 = !DILocation(line: 462, column: 6, scope: !715)
!715 = distinct !DILexicalBlock(scope: !654, file: !12, line: 462, column: 6)
!716 = !DILocation(line: 462, column: 11, scope: !715)
!717 = !DILocation(line: 462, column: 6, scope: !654)
!718 = !DILocation(line: 462, column: 26, scope: !715)
!719 = !DILocation(line: 463, column: 6, scope: !720)
!720 = distinct !DILexicalBlock(scope: !654, file: !12, line: 463, column: 6)
!721 = !DILocation(line: 463, column: 11, scope: !720)
!722 = !DILocation(line: 463, column: 6, scope: !654)
!723 = !DILocation(line: 463, column: 26, scope: !720)
!724 = !DILocation(line: 464, column: 6, scope: !725)
!725 = distinct !DILexicalBlock(scope: !654, file: !12, line: 464, column: 6)
!726 = !DILocation(line: 464, column: 11, scope: !725)
!727 = !DILocation(line: 464, column: 6, scope: !654)
!728 = !DILocation(line: 464, column: 26, scope: !725)
!729 = !DILocation(line: 465, column: 6, scope: !730)
!730 = distinct !DILexicalBlock(scope: !654, file: !12, line: 465, column: 6)
!731 = !DILocation(line: 465, column: 11, scope: !730)
!732 = !DILocation(line: 465, column: 6, scope: !654)
!733 = !DILocation(line: 465, column: 26, scope: !730)
!734 = !DILocation(line: 466, column: 6, scope: !735)
!735 = distinct !DILexicalBlock(scope: !654, file: !12, line: 466, column: 6)
!736 = !DILocation(line: 466, column: 11, scope: !735)
!737 = !DILocation(line: 466, column: 6, scope: !654)
!738 = !DILocation(line: 466, column: 26, scope: !735)
!739 = !DILocation(line: 467, column: 6, scope: !740)
!740 = distinct !DILexicalBlock(scope: !654, file: !12, line: 467, column: 6)
!741 = !DILocation(line: 467, column: 11, scope: !740)
!742 = !DILocation(line: 467, column: 6, scope: !654)
!743 = !DILocation(line: 467, column: 26, scope: !740)
!744 = !DILocation(line: 468, column: 6, scope: !745)
!745 = distinct !DILexicalBlock(scope: !654, file: !12, line: 468, column: 6)
!746 = !DILocation(line: 468, column: 11, scope: !745)
!747 = !DILocation(line: 468, column: 6, scope: !654)
!748 = !DILocation(line: 468, column: 26, scope: !745)
!749 = !DILocation(line: 469, column: 6, scope: !750)
!750 = distinct !DILexicalBlock(scope: !654, file: !12, line: 469, column: 6)
!751 = !DILocation(line: 469, column: 11, scope: !750)
!752 = !DILocation(line: 469, column: 6, scope: !654)
!753 = !DILocation(line: 469, column: 26, scope: !750)
!754 = !DILocation(line: 470, column: 6, scope: !755)
!755 = distinct !DILexicalBlock(scope: !654, file: !12, line: 470, column: 6)
!756 = !DILocation(line: 470, column: 11, scope: !755)
!757 = !DILocation(line: 470, column: 6, scope: !654)
!758 = !DILocation(line: 470, column: 26, scope: !755)
!759 = !DILocation(line: 471, column: 6, scope: !760)
!760 = distinct !DILexicalBlock(scope: !654, file: !12, line: 471, column: 6)
!761 = !DILocation(line: 471, column: 11, scope: !760)
!762 = !DILocation(line: 471, column: 6, scope: !654)
!763 = !DILocation(line: 471, column: 26, scope: !760)
!764 = !DILocation(line: 472, column: 6, scope: !765)
!765 = distinct !DILexicalBlock(scope: !654, file: !12, line: 472, column: 6)
!766 = !DILocation(line: 472, column: 11, scope: !765)
!767 = !DILocation(line: 472, column: 6, scope: !654)
!768 = !DILocation(line: 472, column: 26, scope: !765)
!769 = !DILocation(line: 473, column: 6, scope: !770)
!770 = distinct !DILexicalBlock(scope: !654, file: !12, line: 473, column: 6)
!771 = !DILocation(line: 473, column: 11, scope: !770)
!772 = !DILocation(line: 473, column: 6, scope: !654)
!773 = !DILocation(line: 473, column: 26, scope: !770)
!774 = !DILocation(line: 474, column: 6, scope: !775)
!775 = distinct !DILexicalBlock(scope: !654, file: !12, line: 474, column: 6)
!776 = !DILocation(line: 474, column: 11, scope: !775)
!777 = !DILocation(line: 474, column: 6, scope: !654)
!778 = !DILocation(line: 474, column: 27, scope: !775)
!779 = !DILocation(line: 475, column: 6, scope: !780)
!780 = distinct !DILexicalBlock(scope: !654, file: !12, line: 475, column: 6)
!781 = !DILocation(line: 475, column: 11, scope: !780)
!782 = !DILocation(line: 475, column: 6, scope: !654)
!783 = !DILocation(line: 475, column: 32, scope: !780)
!784 = !DILocation(line: 477, column: 50, scope: !785)
!785 = distinct !DILexicalBlock(scope: !654, file: !12, line: 477, column: 6)
!786 = !{i8 0, i8 2}
!787 = !{}
!788 = !DILocation(line: 477, column: 6, scope: !654)
!789 = !DILocation(line: 478, column: 3, scope: !785)
!790 = !DILocation(line: 478, column: 3, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !12, line: 478, column: 3)
!792 = distinct !DILexicalBlock(scope: !785, file: !12, line: 478, column: 3)
!793 = !{i32 -2143035840}
!794 = !DILocation(line: 478, column: 3, scope: !792)
!795 = !DILocation(line: 480, column: 3, scope: !785)
!796 = !DILocation(line: 480, column: 3, scope: !797)
!797 = distinct !DILexicalBlock(scope: !785, file: !12, line: 480, column: 3)
!798 = !DILocation(line: 480, column: 3, scope: !799)
!799 = distinct !DILexicalBlock(scope: !797, file: !12, line: 480, column: 3)
!800 = !DILocation(line: 480, column: 3, scope: !801)
!801 = distinct !DILexicalBlock(scope: !797, file: !12, line: 480, column: 3)
!802 = !{i64 2151931659, i64 2151931688, i64 2151931734, i64 2151931792, i64 2151931846, i64 2151931900, i64 2151931955, i64 2151931986}
!803 = !DILocation(line: 483, column: 2, scope: !654)
!804 = !DILocation(line: 484, column: 1, scope: !654)
!805 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!806 = !DISubroutineType(types: !807)
!807 = !{!28, !808, !60, !581}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !810, line: 11, flags: DIFlagFwdDecl)
!810 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!811 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !812, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!11, !60, !39}
!814 = !{!815, !816}
!815 = !DILocalVariable(name: "flags", arg: 1, scope: !811, file: !12, line: 401, type: !60)
!816 = !DILocalVariable(name: "caller", arg: 2, scope: !811, file: !12, line: 401, type: !39)
!817 = !DILocation(line: 401, column: 67, scope: !811)
!818 = !DILocation(line: 401, column: 88, scope: !811)
!819 = !DILocation(line: 407, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !811, file: !12, line: 407, column: 6)
!821 = !DILocation(line: 407, column: 6, scope: !811)
!822 = !DILocation(line: 413, column: 3, scope: !820)
!823 = !DILocation(line: 423, column: 38, scope: !824)
!824 = distinct !DILexicalBlock(scope: !811, file: !12, line: 423, column: 6)
!825 = !DILocation(line: 423, column: 44, scope: !824)
!826 = !DILocation(line: 423, column: 6, scope: !811)
!827 = !DILocation(line: 424, column: 3, scope: !824)
!828 = !DILocation(line: 426, column: 3, scope: !829)
!829 = distinct !DILexicalBlock(scope: !811, file: !12, line: 425, column: 6)
!830 = !DILocation(line: 429, column: 1, scope: !811)
!831 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!832 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !833, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!833 = !DISubroutineType(types: !834)
!834 = !{null}
!835 = distinct !DISubprogram(name: "native_save_fl", scope: !596, file: !596, line: 17, type: !597, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !836)
!836 = !{!837}
!837 = !DILocalVariable(name: "flags", scope: !835, file: !596, line: 19, type: !39)
!838 = !DILocation(line: 19, column: 2, scope: !835)
!839 = !DILocation(line: 19, column: 16, scope: !835)
!840 = !DILocation(line: 26, column: 2, scope: !835)
!841 = !{i64 1521578, i64 1521599}
!842 = !DILocation(line: 32, column: 9, scope: !835)
!843 = !DILocation(line: 33, column: 1, scope: !835)
!844 = !DILocation(line: 32, column: 2, scope: !835)
!845 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
