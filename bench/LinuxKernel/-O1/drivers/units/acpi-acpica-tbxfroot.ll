; ModuleID = 'drivers/acpi/acpica/tbxfroot.c'
source_filename = "drivers/acpi/acpica/tbxfroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_rsdp = type <{ [8 x i8], i8, [6 x i8], i8, i32, i32, i64, i8, [3 x i8] }>

@.str = private unnamed_addr constant [9 x i8] c"RSD PTR \00", align 1, !dbg !0
@_acpi_module_name = internal constant [9 x i8] c"tbxfroot\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not map memory at 0x%8.8X for length %u\00", align 1, !dbg !60
@.str.2 = private unnamed_addr constant [27 x i8] c"A valid RSDP was not found\00", align 1, !dbg !65

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_get_rsdp_length(ptr noundef %rsdp) #0 align 16 !dbg !81 {
entry:
  %retval = alloca i32, align 4
  %rsdp.addr = alloca ptr, align 8
  store ptr %rsdp, ptr %rsdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsdp.addr, metadata !85, metadata !DIExpression()), !dbg !86
  %0 = load ptr, ptr %rsdp.addr, align 8, !dbg !87
  %signature = getelementptr inbounds %struct.acpi_table_rsdp, ptr %0, i32 0, i32 0, !dbg !87
  %arraydecay = getelementptr inbounds [8 x i8], ptr %signature, i64 0, i64 0, !dbg !87
  %1 = ptrtoint ptr %arraydecay to i64, !dbg !87
  %2 = inttoptr i64 %1 to ptr, !dbg !87
  %call = call i32 @strncmp(ptr noundef %2, ptr noundef @.str, i64 noundef 8) #5, !dbg !87
  %tobool = icmp ne i32 %call, 0, !dbg !87
  br i1 %tobool, label %if.then, label %if.end, !dbg !89

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !90
  br label %return, !dbg !90

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %rsdp.addr, align 8, !dbg !92
  %revision = getelementptr inbounds %struct.acpi_table_rsdp, ptr %3, i32 0, i32 3, !dbg !94
  %4 = load i8, ptr %revision, align 1, !dbg !94
  %conv = zext i8 %4 to i32, !dbg !92
  %cmp = icmp sge i32 %conv, 2, !dbg !95
  br i1 %cmp, label %if.then2, label %if.else, !dbg !96

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %rsdp.addr, align 8, !dbg !97
  %length = getelementptr inbounds %struct.acpi_table_rsdp, ptr %5, i32 0, i32 5, !dbg !99
  %6 = load i32, ptr %length, align 1, !dbg !99
  store i32 %6, ptr %retval, align 4, !dbg !100
  br label %return, !dbg !100

if.else:                                          ; preds = %if.end
  store i32 20, ptr %retval, align 4, !dbg !101
  br label %return, !dbg !101

return:                                           ; preds = %if.else, %if.then2, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !103
  ret i32 %7, !dbg !103
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !104 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_validate_rsdp(ptr noundef %rsdp) #0 align 16 !dbg !113 {
entry:
  %retval = alloca i32, align 4
  %rsdp.addr = alloca ptr, align 8
  store ptr %rsdp, ptr %rsdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsdp.addr, metadata !117, metadata !DIExpression()), !dbg !118
  %0 = load ptr, ptr %rsdp.addr, align 8, !dbg !119
  %signature = getelementptr inbounds %struct.acpi_table_rsdp, ptr %0, i32 0, i32 0, !dbg !119
  %arraydecay = getelementptr inbounds [8 x i8], ptr %signature, i64 0, i64 0, !dbg !119
  %1 = ptrtoint ptr %arraydecay to i64, !dbg !119
  %2 = inttoptr i64 %1 to ptr, !dbg !119
  %call = call i32 @strncmp(ptr noundef %2, ptr noundef @.str, i64 noundef 8) #5, !dbg !119
  %tobool = icmp ne i32 %call, 0, !dbg !119
  br i1 %tobool, label %if.then, label %if.end, !dbg !121

if.then:                                          ; preds = %entry
  store i32 8193, ptr %retval, align 4, !dbg !122
  br label %return, !dbg !122

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %rsdp.addr, align 8, !dbg !124
  %call1 = call zeroext i8 @acpi_ut_checksum(ptr noundef %3, i32 noundef 20) #5, !dbg !126
  %conv = zext i8 %call1 to i32, !dbg !126
  %cmp = icmp ne i32 %conv, 0, !dbg !127
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !128

if.then3:                                         ; preds = %if.end
  store i32 8195, ptr %retval, align 4, !dbg !129
  br label %return, !dbg !129

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %rsdp.addr, align 8, !dbg !131
  %revision = getelementptr inbounds %struct.acpi_table_rsdp, ptr %4, i32 0, i32 3, !dbg !133
  %5 = load i8, ptr %revision, align 1, !dbg !133
  %conv5 = zext i8 %5 to i32, !dbg !131
  %cmp6 = icmp sge i32 %conv5, 2, !dbg !134
  br i1 %cmp6, label %land.lhs.true, label %if.end13, !dbg !135

land.lhs.true:                                    ; preds = %if.end4
  %6 = load ptr, ptr %rsdp.addr, align 8, !dbg !136
  %call8 = call zeroext i8 @acpi_ut_checksum(ptr noundef %6, i32 noundef 36) #5, !dbg !137
  %conv9 = zext i8 %call8 to i32, !dbg !137
  %cmp10 = icmp ne i32 %conv9, 0, !dbg !138
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !139

if.then12:                                        ; preds = %land.lhs.true
  store i32 8195, ptr %retval, align 4, !dbg !140
  br label %return, !dbg !140

if.end13:                                         ; preds = %land.lhs.true, %if.end4
  store i32 0, ptr %retval, align 4, !dbg !142
  br label %return, !dbg !142

return:                                           ; preds = %if.end13, %if.then12, %if.then3, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !143
  ret i32 %7, !dbg !143
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !144 dso_local zeroext i8 @acpi_ut_checksum(ptr noundef, i32 noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_find_root_pointer(ptr noundef %table_address) #3 section ".init.text" align 16 !dbg !148 {
entry:
  %retval = alloca i32, align 4
  %table_address.addr = alloca ptr, align 8
  %table_ptr = alloca ptr, align 8
  %mem_rover = alloca ptr, align 8
  %physical_address = alloca i32, align 4
  %ebda_window_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table_address, ptr %table_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_address.addr, metadata !153, metadata !DIExpression()), !dbg !158
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_ptr) #6, !dbg !159
  call void @llvm.dbg.declare(metadata ptr %table_ptr, metadata !154, metadata !DIExpression()), !dbg !160
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem_rover) #6, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %mem_rover, metadata !155, metadata !DIExpression()), !dbg !162
  call void @llvm.lifetime.start.p0(i64 4, ptr %physical_address) #6, !dbg !163
  call void @llvm.dbg.declare(metadata ptr %physical_address, metadata !156, metadata !DIExpression()), !dbg !164
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebda_window_size) #6, !dbg !165
  call void @llvm.dbg.declare(metadata ptr %ebda_window_size, metadata !157, metadata !DIExpression()), !dbg !166
  %call = call ptr @acpi_os_map_memory(i64 noundef 1038, i64 noundef 2) #5, !dbg !167
  store ptr %call, ptr %table_ptr, align 8, !dbg !168
  %0 = load ptr, ptr %table_ptr, align 8, !dbg !169
  %tobool = icmp ne ptr %0, null, !dbg !169
  br i1 %tobool, label %if.end, label %if.then, !dbg !171

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 127, ptr noundef @.str.1, i32 noundef 1038, i32 noundef 2) #5, !dbg !172
  store i32 4, ptr %retval, align 4, !dbg !174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !174

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %table_ptr, align 8, !dbg !175
  %2 = load i16, ptr %1, align 2, !dbg !175
  %conv = zext i16 %2 to i32, !dbg !175
  store i32 %conv, ptr %physical_address, align 4, !dbg !175
  %3 = load i32, ptr %physical_address, align 4, !dbg !176
  %shl = shl i32 %3, 4, !dbg !176
  store i32 %shl, ptr %physical_address, align 4, !dbg !176
  %4 = load ptr, ptr %table_ptr, align 8, !dbg !177
  call void @acpi_os_unmap_memory(ptr noundef %4, i64 noundef 2) #5, !dbg !178
  %5 = load i32, ptr %physical_address, align 4, !dbg !179
  %cmp = icmp ugt i32 %5, 1024, !dbg !181
  br i1 %cmp, label %land.lhs.true, label %if.end21, !dbg !182

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, ptr %physical_address, align 4, !dbg !183
  %cmp2 = icmp ult i32 %6, 655360, !dbg !184
  br i1 %cmp2, label %if.then4, label %if.end21, !dbg !185

if.then4:                                         ; preds = %land.lhs.true
  %7 = load i32, ptr %physical_address, align 4, !dbg !186
  %sub = sub i32 655360, %7, !dbg !186
  %cmp5 = icmp ult i32 1024, %sub, !dbg !186
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !186

cond.true:                                        ; preds = %if.then4
  br label %cond.end, !dbg !186

cond.false:                                       ; preds = %if.then4
  %8 = load i32, ptr %physical_address, align 4, !dbg !186
  %sub7 = sub i32 655360, %8, !dbg !186
  br label %cond.end, !dbg !186

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1024, %cond.true ], [ %sub7, %cond.false ], !dbg !186
  store i32 %cond, ptr %ebda_window_size, align 4, !dbg !188
  %9 = load i32, ptr %physical_address, align 4, !dbg !189
  %conv8 = zext i32 %9 to i64, !dbg !190
  %10 = load i32, ptr %ebda_window_size, align 4, !dbg !191
  %conv9 = zext i32 %10 to i64, !dbg !191
  %call10 = call ptr @acpi_os_map_memory(i64 noundef %conv8, i64 noundef %conv9) #5, !dbg !192
  store ptr %call10, ptr %table_ptr, align 8, !dbg !193
  %11 = load ptr, ptr %table_ptr, align 8, !dbg !194
  %tobool11 = icmp ne ptr %11, null, !dbg !194
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !196

if.then12:                                        ; preds = %cond.end
  %12 = load i32, ptr %physical_address, align 4, !dbg !197
  %13 = load i32, ptr %ebda_window_size, align 4, !dbg !197
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 164, ptr noundef @.str.1, i32 noundef %12, i32 noundef %13) #5, !dbg !197
  store i32 4, ptr %retval, align 4, !dbg !199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !199

if.end13:                                         ; preds = %cond.end
  %14 = load ptr, ptr %table_ptr, align 8, !dbg !200
  %15 = load i32, ptr %ebda_window_size, align 4, !dbg !201
  %call14 = call ptr @acpi_tb_scan_memory_for_rsdp(ptr noundef %14, i32 noundef %15) #5, !dbg !202
  store ptr %call14, ptr %mem_rover, align 8, !dbg !203
  %16 = load ptr, ptr %table_ptr, align 8, !dbg !204
  %17 = load i32, ptr %ebda_window_size, align 4, !dbg !205
  %conv15 = zext i32 %17 to i64, !dbg !205
  call void @acpi_os_unmap_memory(ptr noundef %16, i64 noundef %conv15) #5, !dbg !206
  %18 = load ptr, ptr %mem_rover, align 8, !dbg !207
  %tobool16 = icmp ne ptr %18, null, !dbg !207
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !209

if.then17:                                        ; preds = %if.end13
  %19 = load ptr, ptr %mem_rover, align 8, !dbg !210
  %20 = ptrtoint ptr %19 to i64, !dbg !210
  %21 = inttoptr i64 %20 to ptr, !dbg !210
  %22 = load ptr, ptr %table_ptr, align 8, !dbg !210
  %23 = ptrtoint ptr %22 to i64, !dbg !210
  %24 = inttoptr i64 %23 to ptr, !dbg !210
  %sub.ptr.lhs.cast = ptrtoint ptr %21 to i64, !dbg !210
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64, !dbg !210
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !210
  %conv18 = trunc i64 %sub.ptr.sub to i32, !dbg !212
  %25 = load i32, ptr %physical_address, align 4, !dbg !213
  %add = add i32 %25, %conv18, !dbg !213
  store i32 %add, ptr %physical_address, align 4, !dbg !213
  %26 = load i32, ptr %physical_address, align 4, !dbg !214
  %conv19 = zext i32 %26 to i64, !dbg !215
  %27 = load ptr, ptr %table_address.addr, align 8, !dbg !216
  store i64 %conv19, ptr %27, align 8, !dbg !217
  store i32 0, ptr %retval, align 4, !dbg !218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !218

if.end20:                                         ; preds = %if.end13
  br label %if.end21, !dbg !219

if.end21:                                         ; preds = %if.end20, %land.lhs.true, %if.end
  %call22 = call ptr @acpi_os_map_memory(i64 noundef 917504, i64 noundef 131072) #5, !dbg !220
  store ptr %call22, ptr %table_ptr, align 8, !dbg !221
  %28 = load ptr, ptr %table_ptr, align 8, !dbg !222
  %tobool23 = icmp ne ptr %28, null, !dbg !222
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !224

if.then24:                                        ; preds = %if.end21
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 196, ptr noundef @.str.1, i32 noundef 917504, i32 noundef 131072) #5, !dbg !225
  store i32 4, ptr %retval, align 4, !dbg !227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !227

if.end25:                                         ; preds = %if.end21
  %29 = load ptr, ptr %table_ptr, align 8, !dbg !228
  %call26 = call ptr @acpi_tb_scan_memory_for_rsdp(ptr noundef %29, i32 noundef 131072) #5, !dbg !229
  store ptr %call26, ptr %mem_rover, align 8, !dbg !230
  %30 = load ptr, ptr %table_ptr, align 8, !dbg !231
  call void @acpi_os_unmap_memory(ptr noundef %30, i64 noundef 131072) #5, !dbg !232
  %31 = load ptr, ptr %mem_rover, align 8, !dbg !233
  %tobool27 = icmp ne ptr %31, null, !dbg !233
  br i1 %tobool27, label %if.then28, label %if.end35, !dbg !235

if.then28:                                        ; preds = %if.end25
  %32 = load ptr, ptr %mem_rover, align 8, !dbg !236
  %33 = ptrtoint ptr %32 to i64, !dbg !236
  %34 = inttoptr i64 %33 to ptr, !dbg !236
  %35 = load ptr, ptr %table_ptr, align 8, !dbg !236
  %36 = ptrtoint ptr %35 to i64, !dbg !236
  %37 = inttoptr i64 %36 to ptr, !dbg !236
  %sub.ptr.lhs.cast29 = ptrtoint ptr %34 to i64, !dbg !236
  %sub.ptr.rhs.cast30 = ptrtoint ptr %37 to i64, !dbg !236
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30, !dbg !236
  %add32 = add i64 917504, %sub.ptr.sub31, !dbg !238
  %conv33 = trunc i64 %add32 to i32, !dbg !239
  store i32 %conv33, ptr %physical_address, align 4, !dbg !240
  %38 = load i32, ptr %physical_address, align 4, !dbg !241
  %conv34 = zext i32 %38 to i64, !dbg !242
  %39 = load ptr, ptr %table_address.addr, align 8, !dbg !243
  store i64 %conv34, ptr %39, align 8, !dbg !244
  store i32 0, ptr %retval, align 4, !dbg !245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !245

if.end35:                                         ; preds = %if.end25
  call void (ptr, i32, ptr, ...) @acpi_bios_error(ptr noundef @_acpi_module_name, i32 noundef 222, ptr noundef @.str.2) #5, !dbg !246
  store i32 5, ptr %retval, align 4, !dbg !247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !247

cleanup:                                          ; preds = %if.end35, %if.then28, %if.then24, %if.then17, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebda_window_size) #6, !dbg !248
  call void @llvm.lifetime.end.p0(i64 4, ptr %physical_address) #6, !dbg !248
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem_rover) #6, !dbg !248
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_ptr) #6, !dbg !248
  %40 = load i32, ptr %retval, align 4, !dbg !248
  ret i32 %40, !dbg !248
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !249 dso_local ptr @acpi_os_map_memory(i64 noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !253 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !257 dso_local void @acpi_os_unmap_memory(ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_tb_scan_memory_for_rsdp(ptr noundef %start_address, i32 noundef %length) #0 align 16 !dbg !260 {
entry:
  %retval = alloca ptr, align 8
  %start_address.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %mem_rover = alloca ptr, align 8
  %end_address = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %start_address, ptr %start_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_address.addr, metadata !264, metadata !DIExpression()), !dbg !269
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !265, metadata !DIExpression()), !dbg !270
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %status, metadata !266, metadata !DIExpression()), !dbg !272
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem_rover) #6, !dbg !273
  call void @llvm.dbg.declare(metadata ptr %mem_rover, metadata !267, metadata !DIExpression()), !dbg !274
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_address) #6, !dbg !275
  call void @llvm.dbg.declare(metadata ptr %end_address, metadata !268, metadata !DIExpression()), !dbg !276
  %0 = load ptr, ptr %start_address.addr, align 8, !dbg !277
  %1 = load i32, ptr %length.addr, align 4, !dbg !278
  %idx.ext = zext i32 %1 to i64, !dbg !279
  %add.ptr = getelementptr i8, ptr %0, i64 %idx.ext, !dbg !279
  store ptr %add.ptr, ptr %end_address, align 8, !dbg !280
  %2 = load ptr, ptr %start_address.addr, align 8, !dbg !281
  store ptr %2, ptr %mem_rover, align 8, !dbg !283
  br label %for.cond, !dbg !284

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %mem_rover, align 8, !dbg !285
  %4 = load ptr, ptr %end_address, align 8, !dbg !287
  %cmp = icmp ult ptr %3, %4, !dbg !288
  br i1 %cmp, label %for.body, label %for.end, !dbg !289

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %mem_rover, align 8, !dbg !290
  %6 = ptrtoint ptr %5 to i64, !dbg !290
  %7 = inttoptr i64 %6 to ptr, !dbg !290
  %call = call i32 @acpi_tb_validate_rsdp(ptr noundef %7) #5, !dbg !292
  store i32 %call, ptr %status, align 4, !dbg !293
  %8 = load i32, ptr %status, align 4, !dbg !294
  %tobool = icmp ne i32 %8, 0, !dbg !294
  br i1 %tobool, label %if.end, label %if.then, !dbg !296

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %mem_rover, align 8, !dbg !297
  store ptr %9, ptr %retval, align 8, !dbg !297
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !297

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !299

for.inc:                                          ; preds = %if.end
  %10 = load ptr, ptr %mem_rover, align 8, !dbg !300
  %add.ptr1 = getelementptr i8, ptr %10, i64 16, !dbg !300
  store ptr %add.ptr1, ptr %mem_rover, align 8, !dbg !300
  br label %for.cond, !dbg !301, !llvm.loop !302

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !306

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_address) #6, !dbg !307
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem_rover) #6, !dbg !307
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !307
  %11 = load ptr, ptr %retval, align 8, !dbg !307
  ret ptr %11, !dbg !307
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !308 dso_local void @acpi_bios_error(ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/tbxfroot.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "868f3e2d350fdfc03db67b6ed7e38acc")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !9, file: !2, line: 15, type: !70, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.tbxfroot.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22tbxfroot\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/tbxfroot.ll drivers/acpi/acpica/tbxfroot.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !59, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !12, !15, !22, !26, !30, !34, !35, !17, !36, !37}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !13, line: 42, baseType: !14)
!13 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!14 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !16, line: 421, baseType: !17)
!16 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !18, line: 21, baseType: !19)
!18 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !20, line: 27, baseType: !21)
!20 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !18, line: 17, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !20, line: 21, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !16, line: 129, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !18, line: 23, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !20, line: 31, baseType: !29)
!29 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !18, line: 19, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !20, line: 24, baseType: !33)
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !16, line: 127, baseType: !27)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_rsdp", file: !39, line: 105, size: 288, elements: !40)
!39 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!40 = !{!41, !45, !46, !50, !51, !52, !53, !54, !55}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !38, file: !39, line: 106, baseType: !42, size: 64)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 8)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !38, file: !39, line: 107, baseType: !23, size: 8, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !38, file: !39, line: 108, baseType: !47, size: 48, offset: 72)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 6)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !38, file: !39, line: 109, baseType: !23, size: 8, offset: 120)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "rsdt_physical_address", scope: !38, file: !39, line: 110, baseType: !17, size: 32, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !38, file: !39, line: 111, baseType: !17, size: 32, offset: 160)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "xsdt_physical_address", scope: !38, file: !39, line: 112, baseType: !27, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "extended_checksum", scope: !38, file: !39, line: 113, baseType: !23, size: 8, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !38, file: !39, line: 114, baseType: !56, size: 24, offset: 264)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 3)
!59 = !{!0, !60, !65, !7}
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 46)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 27)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 72, elements: !5)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!72 = !{i32 7, !"Dwarf Version", i32 5}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 8, !"cf-protection-branch", i32 1}
!76 = !{i32 4, !"function_return_thunk_extern", i32 1}
!77 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!78 = !{i32 1, !"Code Model", i32 2}
!79 = !{i32 1, !"override-stack-alignment", i32 8}
!80 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!81 = distinct !DISubprogram(name: "acpi_tb_get_rsdp_length", scope: !2, file: !2, line: 28, type: !82, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{!17, !37}
!84 = !{!85}
!85 = !DILocalVariable(name: "rsdp", arg: 1, scope: !81, file: !2, line: 28, type: !37)
!86 = !DILocation(line: 28, column: 53, scope: !81)
!87 = !DILocation(line: 31, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !81, file: !2, line: 31, column: 6)
!89 = !DILocation(line: 31, column: 6, scope: !81)
!90 = !DILocation(line: 35, column: 3, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !2, line: 31, column: 48)
!92 = !DILocation(line: 40, column: 6, scope: !93)
!93 = distinct !DILexicalBlock(scope: !81, file: !2, line: 40, column: 6)
!94 = !DILocation(line: 40, column: 12, scope: !93)
!95 = !DILocation(line: 40, column: 21, scope: !93)
!96 = !DILocation(line: 40, column: 6, scope: !81)
!97 = !DILocation(line: 41, column: 11, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !2, line: 40, column: 27)
!99 = !DILocation(line: 41, column: 17, scope: !98)
!100 = !DILocation(line: 41, column: 3, scope: !98)
!101 = !DILocation(line: 43, column: 3, scope: !102)
!102 = distinct !DILexicalBlock(scope: !93, file: !2, line: 42, column: 9)
!103 = !DILocation(line: 45, column: 1, scope: !81)
!104 = !DISubprogram(name: "strncmp", scope: !105, file: !105, line: 91, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!105 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !109, !109, !110}
!108 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !111, line: 72, baseType: !112)
!111 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !111, line: 16, baseType: !14)
!113 = distinct !DISubprogram(name: "acpi_tb_validate_rsdp", scope: !2, file: !2, line: 59, type: !114, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{!15, !37}
!116 = !{!117}
!117 = !DILocalVariable(name: "rsdp", arg: 1, scope: !113, file: !2, line: 59, type: !37)
!118 = !DILocation(line: 59, column: 59, scope: !113)
!119 = !DILocation(line: 68, column: 7, scope: !120)
!120 = distinct !DILexicalBlock(scope: !113, file: !2, line: 68, column: 6)
!121 = !DILocation(line: 68, column: 6, scope: !113)
!122 = !DILocation(line: 72, column: 3, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !2, line: 68, column: 48)
!124 = !DILocation(line: 77, column: 29, scope: !125)
!125 = distinct !DILexicalBlock(scope: !113, file: !2, line: 77, column: 6)
!126 = !DILocation(line: 77, column: 6, scope: !125)
!127 = !DILocation(line: 77, column: 62, scope: !125)
!128 = !DILocation(line: 77, column: 6, scope: !113)
!129 = !DILocation(line: 78, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !125, file: !2, line: 77, column: 68)
!131 = !DILocation(line: 83, column: 7, scope: !132)
!132 = distinct !DILexicalBlock(scope: !113, file: !2, line: 83, column: 6)
!133 = !DILocation(line: 83, column: 13, scope: !132)
!134 = !DILocation(line: 83, column: 22, scope: !132)
!135 = !DILocation(line: 83, column: 28, scope: !132)
!136 = !DILocation(line: 84, column: 30, scope: !132)
!137 = !DILocation(line: 84, column: 7, scope: !132)
!138 = !DILocation(line: 84, column: 64, scope: !132)
!139 = !DILocation(line: 83, column: 6, scope: !113)
!140 = !DILocation(line: 85, column: 3, scope: !141)
!141 = distinct !DILexicalBlock(scope: !132, file: !2, line: 84, column: 71)
!142 = !DILocation(line: 88, column: 2, scope: !113)
!143 = !DILocation(line: 89, column: 1, scope: !113)
!144 = !DISubprogram(name: "acpi_ut_checksum", scope: !145, file: !145, line: 168, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!145 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!146 = !DISubroutineType(types: !147)
!147 = !{!23, !22, !17}
!148 = distinct !DISubprogram(name: "acpi_find_root_pointer", scope: !2, file: !2, line: 112, type: !149, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !152)
!149 = !DISubroutineType(types: !150)
!150 = !{!15, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!152 = !{!153, !154, !155, !156, !157}
!153 = !DILocalVariable(name: "table_address", arg: 1, scope: !148, file: !2, line: 112, type: !151)
!154 = !DILocalVariable(name: "table_ptr", scope: !148, file: !2, line: 114, type: !22)
!155 = !DILocalVariable(name: "mem_rover", scope: !148, file: !2, line: 115, type: !22)
!156 = !DILocalVariable(name: "physical_address", scope: !148, file: !2, line: 116, type: !17)
!157 = !DILocalVariable(name: "ebda_window_size", scope: !148, file: !2, line: 117, type: !17)
!158 = !DILocation(line: 112, column: 47, scope: !148)
!159 = !DILocation(line: 114, column: 2, scope: !148)
!160 = !DILocation(line: 114, column: 6, scope: !148)
!161 = !DILocation(line: 115, column: 2, scope: !148)
!162 = !DILocation(line: 115, column: 6, scope: !148)
!163 = !DILocation(line: 116, column: 2, scope: !148)
!164 = !DILocation(line: 116, column: 6, scope: !148)
!165 = !DILocation(line: 117, column: 2, scope: !148)
!166 = !DILocation(line: 117, column: 6, scope: !148)
!167 = !DILocation(line: 123, column: 14, scope: !148)
!168 = !DILocation(line: 123, column: 12, scope: !148)
!169 = !DILocation(line: 126, column: 7, scope: !170)
!170 = distinct !DILexicalBlock(scope: !148, file: !2, line: 126, column: 6)
!171 = !DILocation(line: 126, column: 6, scope: !148)
!172 = !DILocation(line: 127, column: 3, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !2, line: 126, column: 18)
!174 = !DILocation(line: 131, column: 3, scope: !173)
!175 = !DILocation(line: 134, column: 2, scope: !148)
!176 = !DILocation(line: 138, column: 19, scope: !148)
!177 = !DILocation(line: 139, column: 23, scope: !148)
!178 = !DILocation(line: 139, column: 2, scope: !148)
!179 = !DILocation(line: 147, column: 6, scope: !180)
!180 = distinct !DILexicalBlock(scope: !148, file: !2, line: 147, column: 6)
!181 = !DILocation(line: 147, column: 23, scope: !180)
!182 = !DILocation(line: 147, column: 31, scope: !180)
!183 = !DILocation(line: 147, column: 34, scope: !180)
!184 = !DILocation(line: 147, column: 51, scope: !180)
!185 = !DILocation(line: 147, column: 6, scope: !148)
!186 = !DILocation(line: 154, column: 22, scope: !187)
!187 = distinct !DILexicalBlock(scope: !180, file: !2, line: 147, column: 62)
!188 = !DILocation(line: 154, column: 20, scope: !187)
!189 = !DILocation(line: 161, column: 13, scope: !187)
!190 = !DILocation(line: 160, column: 34, scope: !187)
!191 = !DILocation(line: 162, column: 13, scope: !187)
!192 = !DILocation(line: 160, column: 15, scope: !187)
!193 = !DILocation(line: 160, column: 13, scope: !187)
!194 = !DILocation(line: 163, column: 8, scope: !195)
!195 = distinct !DILexicalBlock(scope: !187, file: !2, line: 163, column: 7)
!196 = !DILocation(line: 163, column: 7, scope: !187)
!197 = !DILocation(line: 164, column: 4, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !2, line: 163, column: 19)
!199 = !DILocation(line: 168, column: 4, scope: !198)
!200 = !DILocation(line: 172, column: 36, scope: !187)
!201 = !DILocation(line: 172, column: 47, scope: !187)
!202 = !DILocation(line: 172, column: 7, scope: !187)
!203 = !DILocation(line: 171, column: 13, scope: !187)
!204 = !DILocation(line: 173, column: 24, scope: !187)
!205 = !DILocation(line: 173, column: 35, scope: !187)
!206 = !DILocation(line: 173, column: 3, scope: !187)
!207 = !DILocation(line: 175, column: 7, scope: !208)
!208 = distinct !DILexicalBlock(scope: !187, file: !2, line: 175, column: 7)
!209 = !DILocation(line: 175, column: 7, scope: !187)
!210 = !DILocation(line: 180, column: 14, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !2, line: 175, column: 18)
!212 = !DILocation(line: 180, column: 8, scope: !211)
!213 = !DILocation(line: 179, column: 21, scope: !211)
!214 = !DILocation(line: 183, column: 31, scope: !211)
!215 = !DILocation(line: 183, column: 8, scope: !211)
!216 = !DILocation(line: 182, column: 5, scope: !211)
!217 = !DILocation(line: 182, column: 19, scope: !211)
!218 = !DILocation(line: 184, column: 4, scope: !211)
!219 = !DILocation(line: 186, column: 2, scope: !187)
!220 = !DILocation(line: 191, column: 14, scope: !148)
!221 = !DILocation(line: 191, column: 12, scope: !148)
!222 = !DILocation(line: 195, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !148, file: !2, line: 195, column: 6)
!224 = !DILocation(line: 195, column: 6, scope: !148)
!225 = !DILocation(line: 196, column: 3, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !2, line: 195, column: 18)
!227 = !DILocation(line: 201, column: 3, scope: !226)
!228 = !DILocation(line: 205, column: 35, scope: !148)
!229 = !DILocation(line: 205, column: 6, scope: !148)
!230 = !DILocation(line: 204, column: 12, scope: !148)
!231 = !DILocation(line: 206, column: 23, scope: !148)
!232 = !DILocation(line: 206, column: 2, scope: !148)
!233 = !DILocation(line: 208, column: 6, scope: !234)
!234 = distinct !DILexicalBlock(scope: !148, file: !2, line: 208, column: 6)
!235 = !DILocation(line: 208, column: 6, scope: !148)
!236 = !DILocation(line: 214, column: 8, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !2, line: 208, column: 17)
!238 = !DILocation(line: 213, column: 33, scope: !237)
!239 = !DILocation(line: 212, column: 22, scope: !237)
!240 = !DILocation(line: 212, column: 20, scope: !237)
!241 = !DILocation(line: 216, column: 43, scope: !237)
!242 = !DILocation(line: 216, column: 20, scope: !237)
!243 = !DILocation(line: 216, column: 4, scope: !237)
!244 = !DILocation(line: 216, column: 18, scope: !237)
!245 = !DILocation(line: 217, column: 3, scope: !237)
!246 = !DILocation(line: 222, column: 2, scope: !148)
!247 = !DILocation(line: 223, column: 2, scope: !148)
!248 = !DILocation(line: 224, column: 1, scope: !148)
!249 = !DISubprogram(name: "acpi_os_map_memory", scope: !250, file: !250, line: 183, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!251 = !DISubroutineType(types: !252)
!252 = !{!34, !26, !36}
!253 = !DISubprogram(name: "acpi_error", scope: !254, file: !254, line: 901, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!255 = !DISubroutineType(types: !256)
!256 = !{null, !109, !17, !109, null}
!257 = !DISubprogram(name: "acpi_os_unmap_memory", scope: !250, file: !250, line: 187, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !34, !36}
!260 = distinct !DISubprogram(name: "acpi_tb_scan_memory_for_rsdp", scope: !2, file: !2, line: 240, type: !261, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{!22, !22, !17}
!263 = !{!264, !265, !266, !267, !268}
!264 = !DILocalVariable(name: "start_address", arg: 1, scope: !260, file: !2, line: 240, type: !22)
!265 = !DILocalVariable(name: "length", arg: 2, scope: !260, file: !2, line: 240, type: !17)
!266 = !DILocalVariable(name: "status", scope: !260, file: !2, line: 242, type: !15)
!267 = !DILocalVariable(name: "mem_rover", scope: !260, file: !2, line: 243, type: !22)
!268 = !DILocalVariable(name: "end_address", scope: !260, file: !2, line: 244, type: !22)
!269 = !DILocation(line: 240, column: 38, scope: !260)
!270 = !DILocation(line: 240, column: 57, scope: !260)
!271 = !DILocation(line: 242, column: 2, scope: !260)
!272 = !DILocation(line: 242, column: 14, scope: !260)
!273 = !DILocation(line: 243, column: 2, scope: !260)
!274 = !DILocation(line: 243, column: 6, scope: !260)
!275 = !DILocation(line: 244, column: 2, scope: !260)
!276 = !DILocation(line: 244, column: 6, scope: !260)
!277 = !DILocation(line: 248, column: 16, scope: !260)
!278 = !DILocation(line: 248, column: 32, scope: !260)
!279 = !DILocation(line: 248, column: 30, scope: !260)
!280 = !DILocation(line: 248, column: 14, scope: !260)
!281 = !DILocation(line: 252, column: 19, scope: !282)
!282 = distinct !DILexicalBlock(scope: !260, file: !2, line: 252, column: 2)
!283 = !DILocation(line: 252, column: 17, scope: !282)
!284 = !DILocation(line: 252, column: 7, scope: !282)
!285 = !DILocation(line: 252, column: 34, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !2, line: 252, column: 2)
!287 = !DILocation(line: 252, column: 46, scope: !286)
!288 = !DILocation(line: 252, column: 44, scope: !286)
!289 = !DILocation(line: 252, column: 2, scope: !282)
!290 = !DILocation(line: 258, column: 29, scope: !291)
!291 = distinct !DILexicalBlock(scope: !286, file: !2, line: 253, column: 41)
!292 = !DILocation(line: 258, column: 7, scope: !291)
!293 = !DILocation(line: 257, column: 10, scope: !291)
!294 = !DILocation(line: 260, column: 7, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !2, line: 260, column: 7)
!296 = !DILocation(line: 260, column: 7, scope: !291)
!297 = !DILocation(line: 267, column: 4, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !2, line: 260, column: 29)
!299 = !DILocation(line: 271, column: 2, scope: !291)
!300 = !DILocation(line: 253, column: 17, scope: !286)
!301 = !DILocation(line: 252, column: 2, scope: !286)
!302 = distinct !{!302, !289, !303, !304, !305}
!303 = !DILocation(line: 271, column: 2, scope: !282)
!304 = !{!"llvm.loop.mustprogress"}
!305 = !{!"llvm.loop.unroll.disable"}
!306 = !DILocation(line: 278, column: 2, scope: !260)
!307 = !DILocation(line: 279, column: 1, scope: !260)
!308 = !DISubprogram(name: "acpi_bios_error", scope: !254, file: !254, line: 920, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
