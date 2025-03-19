; ModuleID = 'drivers/acpi/acpica/tbinstal.c'
source_filename = "drivers/acpi/acpica/tbinstal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_list = type { ptr, i32, i32, i8 }
%struct.acpi_table_desc = type { i64, ptr, i32, %union.acpi_name_union, i16, i8, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }

@acpi_gbl_root_table_list = external dso_local global %struct.acpi_table_list, align 8
@acpi_gbl_dsdt_index = external dso_local global i32, align 4
@_acpi_module_name = internal constant [9 x i8] c"tbinstal\00", align 1, !dbg !0
@.str = private unnamed_addr constant [45 x i8] c"Could not acquire table length at %8.8X%8.8X\00", align 1, !dbg !21
@acpi_gbl_disable_ssdt_table_install = external dso_local global i8, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SSDT\00", align 1, !dbg !27
@.str.2 = private unnamed_addr constant [45 x i8] c"Ignoring installation of %4.4s at %8.8X%8.8X\00", align 1, !dbg !32
@.str.3 = private unnamed_addr constant [8 x i8] c"Logical\00", align 1, !dbg !34
@.str.4 = private unnamed_addr constant [9 x i8] c"Physical\00", align 1, !dbg !39
@.str.5 = private unnamed_addr constant [62 x i8] c"%4.4s 0x%8.8X%8.8X %s table override, new table: 0x%8.8X%8.8X\00", align 1, !dbg !44

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_tb_install_table_with_override(ptr noundef %new_table_desc, i8 noundef zeroext %override, ptr noundef %table_index) #0 align 16 !dbg !60 {
entry:
  %new_table_desc.addr = alloca ptr, align 8
  %override.addr = alloca i8, align 1
  %table_index.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %new_table_desc, ptr %new_table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_table_desc.addr, metadata !105, metadata !DIExpression()), !dbg !110
  store i8 %override, ptr %override.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %override.addr, metadata !106, metadata !DIExpression()), !dbg !111
  store ptr %table_index, ptr %table_index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !107, metadata !DIExpression()), !dbg !112
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %i, metadata !108, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !115
  call void @llvm.dbg.declare(metadata ptr %status, metadata !109, metadata !DIExpression()), !dbg !116
  %call = call i32 @acpi_tb_get_next_table_descriptor(ptr noundef %i, ptr noundef null) #6, !dbg !117
  store i32 %call, ptr %status, align 4, !dbg !118
  %0 = load i32, ptr %status, align 4, !dbg !119
  %tobool = icmp ne i32 %0, 0, !dbg !119
  br i1 %tobool, label %if.then, label %if.end, !dbg !121

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !122

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %override.addr, align 1, !dbg !124
  %tobool1 = icmp ne i8 %1, 0, !dbg !124
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !126

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %new_table_desc.addr, align 8, !dbg !127
  call void @acpi_tb_override_table(ptr noundef %2) #6, !dbg !129
  br label %if.end3, !dbg !130

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !131
  %4 = load i32, ptr %i, align 4, !dbg !132
  %idxprom = zext i32 %4 to i64, !dbg !133
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %3, i64 %idxprom, !dbg !133
  %5 = load ptr, ptr %new_table_desc.addr, align 8, !dbg !134
  %address = getelementptr inbounds %struct.acpi_table_desc, ptr %5, i32 0, i32 0, !dbg !135
  %6 = load i64, ptr %address, align 8, !dbg !135
  %7 = load ptr, ptr %new_table_desc.addr, align 8, !dbg !136
  %flags = getelementptr inbounds %struct.acpi_table_desc, ptr %7, i32 0, i32 5, !dbg !137
  %8 = load i8, ptr %flags, align 2, !dbg !137
  %9 = load ptr, ptr %new_table_desc.addr, align 8, !dbg !138
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %9, i32 0, i32 1, !dbg !139
  %10 = load ptr, ptr %pointer, align 8, !dbg !139
  call void @acpi_tb_init_table_descriptor(ptr noundef %arrayidx, i64 noundef %6, i8 noundef zeroext %8, ptr noundef %10) #6, !dbg !140
  %11 = load ptr, ptr %new_table_desc.addr, align 8, !dbg !141
  %address4 = getelementptr inbounds %struct.acpi_table_desc, ptr %11, i32 0, i32 0, !dbg !142
  %12 = load i64, ptr %address4, align 8, !dbg !142
  %13 = load ptr, ptr %new_table_desc.addr, align 8, !dbg !143
  %pointer5 = getelementptr inbounds %struct.acpi_table_desc, ptr %13, i32 0, i32 1, !dbg !144
  %14 = load ptr, ptr %pointer5, align 8, !dbg !144
  call void @acpi_tb_print_table_header(i64 noundef %12, ptr noundef %14) #6, !dbg !145
  %15 = load i32, ptr %i, align 4, !dbg !146
  %16 = load ptr, ptr %table_index.addr, align 8, !dbg !147
  store i32 %15, ptr %16, align 4, !dbg !148
  %17 = load i32, ptr %i, align 4, !dbg !149
  %18 = load i32, ptr @acpi_gbl_dsdt_index, align 4, !dbg !151
  %cmp = icmp eq i32 %17, %18, !dbg !152
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !153

if.then6:                                         ; preds = %if.end3
  %19 = load ptr, ptr %new_table_desc.addr, align 8, !dbg !154
  %pointer7 = getelementptr inbounds %struct.acpi_table_desc, ptr %19, i32 0, i32 1, !dbg !156
  %20 = load ptr, ptr %pointer7, align 8, !dbg !156
  %revision = getelementptr inbounds %struct.acpi_table_header, ptr %20, i32 0, i32 2, !dbg !157
  %21 = load i8, ptr %revision, align 1, !dbg !157
  call void @acpi_ut_set_integer_width(i8 noundef zeroext %21) #6, !dbg !158
  br label %if.end8, !dbg !159

if.end8:                                          ; preds = %if.then6, %if.end3
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !160
  br label %cleanup, !dbg !160

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !160
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !160
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !160

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !161 dso_local i32 @acpi_tb_get_next_table_descriptor(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_tb_override_table(ptr noundef %old_table_desc) #0 align 16 !dbg !166 {
entry:
  %old_table_desc.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %new_table_desc = alloca %struct.acpi_table_desc, align 8
  %table = alloca ptr, align 8
  %address = alloca i64, align 8
  %length = alloca i32, align 4
  %override_type = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %old_table_desc, ptr %old_table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_table_desc.addr, metadata !170, metadata !DIExpression()), !dbg !179
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %status, metadata !171, metadata !DIExpression()), !dbg !181
  call void @llvm.lifetime.start.p0(i64 32, ptr %new_table_desc) #5, !dbg !182
  call void @llvm.dbg.declare(metadata ptr %new_table_desc, metadata !172, metadata !DIExpression()), !dbg !183
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #5, !dbg !184
  call void @llvm.dbg.declare(metadata ptr %table, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #5, !dbg !186
  call void @llvm.dbg.declare(metadata ptr %address, metadata !174, metadata !DIExpression()), !dbg !187
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #5, !dbg !188
  call void @llvm.dbg.declare(metadata ptr %length, metadata !175, metadata !DIExpression()), !dbg !189
  call void @llvm.lifetime.start.p0(i64 8, ptr %override_type) #5, !dbg !190
  call void @llvm.dbg.declare(metadata ptr %override_type, metadata !176, metadata !DIExpression()), !dbg !190
  %0 = load ptr, ptr %old_table_desc.addr, align 8, !dbg !191
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %0, i32 0, i32 1, !dbg !192
  %1 = load ptr, ptr %pointer, align 8, !dbg !192
  %call = call i32 @acpi_os_table_override(ptr noundef %1, ptr noundef %table) #6, !dbg !193
  store i32 %call, ptr %status, align 4, !dbg !194
  %2 = load i32, ptr %status, align 4, !dbg !195
  %tobool = icmp ne i32 %2, 0, !dbg !195
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !197

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %table, align 8, !dbg !198
  %tobool1 = icmp ne ptr %3, null, !dbg !198
  br i1 %tobool1, label %if.then, label %if.end, !dbg !199

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %table, align 8, !dbg !200
  %5 = ptrtoint ptr %4 to i64, !dbg !200
  %6 = load ptr, ptr %table, align 8, !dbg !202
  %call2 = call i32 @acpi_tb_acquire_temp_table(ptr noundef %new_table_desc, i64 noundef %5, i8 noundef zeroext 0, ptr noundef %6) #6, !dbg !203
  store ptr @.str.3, ptr %override_type, align 8, !dbg !204
  br label %finish_override, !dbg !205

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load ptr, ptr %old_table_desc.addr, align 8, !dbg !206
  %pointer3 = getelementptr inbounds %struct.acpi_table_desc, ptr %7, i32 0, i32 1, !dbg !207
  %8 = load ptr, ptr %pointer3, align 8, !dbg !207
  %call4 = call i32 @acpi_os_physical_table_override(ptr noundef %8, ptr noundef %address, ptr noundef %length) #6, !dbg !208
  store i32 %call4, ptr %status, align 4, !dbg !209
  %9 = load i32, ptr %status, align 4, !dbg !210
  %tobool5 = icmp ne i32 %9, 0, !dbg !210
  br i1 %tobool5, label %if.end12, label %land.lhs.true6, !dbg !212

land.lhs.true6:                                   ; preds = %if.end
  %10 = load i64, ptr %address, align 8, !dbg !213
  %tobool7 = icmp ne i64 %10, 0, !dbg !213
  br i1 %tobool7, label %land.lhs.true8, label %if.end12, !dbg !214

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %11 = load i32, ptr %length, align 4, !dbg !215
  %tobool9 = icmp ne i32 %11, 0, !dbg !215
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !216

if.then10:                                        ; preds = %land.lhs.true8
  %12 = load i64, ptr %address, align 8, !dbg !217
  %call11 = call i32 @acpi_tb_acquire_temp_table(ptr noundef %new_table_desc, i64 noundef %12, i8 noundef zeroext 1, ptr noundef null) #6, !dbg !219
  store ptr @.str.4, ptr %override_type, align 8, !dbg !220
  br label %finish_override, !dbg !221

if.end12:                                         ; preds = %land.lhs.true8, %land.lhs.true6, %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !222

finish_override:                                  ; preds = %if.then10, %if.then
  call void @llvm.dbg.label(metadata !178), !dbg !223
  %call13 = call i32 @acpi_tb_verify_temp_table(ptr noundef %new_table_desc, ptr noundef null, ptr noundef null) #6, !dbg !224
  store i32 %call13, ptr %status, align 4, !dbg !225
  %13 = load i32, ptr %status, align 4, !dbg !226
  %tobool14 = icmp ne i32 %13, 0, !dbg !226
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !228

if.then15:                                        ; preds = %finish_override
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !229

if.end16:                                         ; preds = %finish_override
  %14 = load ptr, ptr %old_table_desc.addr, align 8, !dbg !231
  %signature = getelementptr inbounds %struct.acpi_table_desc, ptr %14, i32 0, i32 3, !dbg !231
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !231
  %15 = load ptr, ptr %old_table_desc.addr, align 8, !dbg !231
  %address17 = getelementptr inbounds %struct.acpi_table_desc, ptr %15, i32 0, i32 0, !dbg !231
  %16 = load i64, ptr %address17, align 8, !dbg !231
  %shr = lshr i64 %16, 32, !dbg !231
  %conv = trunc i64 %shr to i32, !dbg !231
  %17 = load ptr, ptr %old_table_desc.addr, align 8, !dbg !231
  %address18 = getelementptr inbounds %struct.acpi_table_desc, ptr %17, i32 0, i32 0, !dbg !231
  %18 = load i64, ptr %address18, align 8, !dbg !231
  %conv19 = trunc i64 %18 to i32, !dbg !231
  %19 = load ptr, ptr %override_type, align 8, !dbg !231
  %address20 = getelementptr inbounds %struct.acpi_table_desc, ptr %new_table_desc, i32 0, i32 0, !dbg !231
  %20 = load i64, ptr %address20, align 8, !dbg !231
  %shr21 = lshr i64 %20, 32, !dbg !231
  %conv22 = trunc i64 %shr21 to i32, !dbg !231
  %address23 = getelementptr inbounds %struct.acpi_table_desc, ptr %new_table_desc, i32 0, i32 0, !dbg !231
  %21 = load i64, ptr %address23, align 8, !dbg !231
  %conv24 = trunc i64 %21 to i32, !dbg !231
  call void (ptr, ...) @acpi_info(ptr noundef @.str.5, ptr noundef %arraydecay, i32 noundef %conv, i32 noundef %conv19, ptr noundef %19, i32 noundef %conv22, i32 noundef %conv24) #6, !dbg !231
  %22 = load ptr, ptr %old_table_desc.addr, align 8, !dbg !232
  call void @acpi_tb_uninstall_table(ptr noundef %22) #6, !dbg !233
  %23 = load ptr, ptr %old_table_desc.addr, align 8, !dbg !234
  %address25 = getelementptr inbounds %struct.acpi_table_desc, ptr %new_table_desc, i32 0, i32 0, !dbg !235
  %24 = load i64, ptr %address25, align 8, !dbg !235
  %flags = getelementptr inbounds %struct.acpi_table_desc, ptr %new_table_desc, i32 0, i32 5, !dbg !236
  %25 = load i8, ptr %flags, align 2, !dbg !236
  %pointer26 = getelementptr inbounds %struct.acpi_table_desc, ptr %new_table_desc, i32 0, i32 1, !dbg !237
  %26 = load ptr, ptr %pointer26, align 8, !dbg !237
  call void @acpi_tb_init_table_descriptor(ptr noundef %23, i64 noundef %24, i8 noundef zeroext %25, ptr noundef %26) #6, !dbg !238
  %27 = load ptr, ptr %old_table_desc.addr, align 8, !dbg !239
  %call27 = call i32 @acpi_tb_validate_temp_table(ptr noundef %27) #6, !dbg !240
  call void @acpi_tb_release_temp_table(ptr noundef %new_table_desc) #6, !dbg !241
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !242
  br label %cleanup, !dbg !242

cleanup:                                          ; preds = %if.end16, %if.then15, %if.end12
  call void @llvm.lifetime.end.p0(i64 8, ptr %override_type) #5, !dbg !242
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #5, !dbg !242
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #5, !dbg !242
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #5, !dbg !242
  call void @llvm.lifetime.end.p0(i64 32, ptr %new_table_desc) #5, !dbg !242
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !242
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !242

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !243 dso_local void @acpi_tb_init_table_descriptor(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !246 dso_local void @acpi_tb_print_table_header(i64 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !249 dso_local void @acpi_ut_set_integer_width(i8 noundef zeroext) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_install_standard_table(i64 noundef %address, i8 noundef zeroext %flags, ptr noundef %table, i8 noundef zeroext %reload, i8 noundef zeroext %override, ptr noundef %table_index) #0 align 16 !dbg !253 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %flags.addr = alloca i8, align 1
  %table.addr = alloca ptr, align 8
  %reload.addr = alloca i8, align 1
  %override.addr = alloca i8, align 1
  %table_index.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %new_table_desc = alloca %struct.acpi_table_desc, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !257, metadata !DIExpression()), !dbg !268
  store i8 %flags, ptr %flags.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !258, metadata !DIExpression()), !dbg !269
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !259, metadata !DIExpression()), !dbg !270
  store i8 %reload, ptr %reload.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %reload.addr, metadata !260, metadata !DIExpression()), !dbg !271
  store i8 %override, ptr %override.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %override.addr, metadata !261, metadata !DIExpression()), !dbg !272
  store ptr %table_index, ptr %table_index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !262, metadata !DIExpression()), !dbg !273
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !274
  call void @llvm.dbg.declare(metadata ptr %i, metadata !263, metadata !DIExpression()), !dbg !275
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !276
  call void @llvm.dbg.declare(metadata ptr %status, metadata !264, metadata !DIExpression()), !dbg !277
  store i32 0, ptr %status, align 4, !dbg !277
  call void @llvm.lifetime.start.p0(i64 32, ptr %new_table_desc) #5, !dbg !278
  call void @llvm.dbg.declare(metadata ptr %new_table_desc, metadata !265, metadata !DIExpression()), !dbg !279
  %0 = load i64, ptr %address.addr, align 8, !dbg !280
  %1 = load i8, ptr %flags.addr, align 1, !dbg !281
  %2 = load ptr, ptr %table.addr, align 8, !dbg !282
  %call = call i32 @acpi_tb_acquire_temp_table(ptr noundef %new_table_desc, i64 noundef %0, i8 noundef zeroext %1, ptr noundef %2) #6, !dbg !283
  store i32 %call, ptr %status, align 4, !dbg !284
  %3 = load i32, ptr %status, align 4, !dbg !285
  %tobool = icmp ne i32 %3, 0, !dbg !285
  br i1 %tobool, label %if.then, label %if.end, !dbg !287

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %address.addr, align 8, !dbg !288
  %shr = lshr i64 %4, 32, !dbg !288
  %conv = trunc i64 %shr to i32, !dbg !288
  %5 = load i64, ptr %address.addr, align 8, !dbg !288
  %conv1 = trunc i64 %5 to i32, !dbg !288
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 115, ptr noundef @.str, i32 noundef %conv, i32 noundef %conv1) #6, !dbg !288
  %6 = load i32, ptr %status, align 4, !dbg !290
  store i32 %6, ptr %retval, align 4, !dbg !290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !290

if.end:                                           ; preds = %entry
  %7 = load i8, ptr %reload.addr, align 1, !dbg !291
  %tobool2 = icmp ne i8 %7, 0, !dbg !291
  br i1 %tobool2, label %if.end12, label %land.lhs.true, !dbg !293

land.lhs.true:                                    ; preds = %if.end
  %8 = load i8, ptr @acpi_gbl_disable_ssdt_table_install, align 1, !dbg !294
  %conv3 = zext i8 %8 to i32, !dbg !294
  %tobool4 = icmp ne i32 %conv3, 0, !dbg !294
  br i1 %tobool4, label %land.lhs.true5, label %if.end12, !dbg !295

land.lhs.true5:                                   ; preds = %land.lhs.true
  %signature = getelementptr inbounds %struct.acpi_table_desc, ptr %new_table_desc, i32 0, i32 3, !dbg !296
  %9 = ptrtoint ptr %signature to i64, !dbg !296
  %10 = inttoptr i64 %9 to ptr, !dbg !296
  %11 = load i32, ptr %10, align 4, !dbg !296
  %12 = load i32, ptr @.str.1, align 4, !dbg !296
  %cmp = icmp eq i32 %11, %12, !dbg !296
  br i1 %cmp, label %if.then7, label %if.end12, !dbg !297

if.then7:                                         ; preds = %land.lhs.true5
  %signature8 = getelementptr inbounds %struct.acpi_table_desc, ptr %new_table_desc, i32 0, i32 3, !dbg !298
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature8, i64 0, i64 0, !dbg !298
  %13 = load i64, ptr %address.addr, align 8, !dbg !298
  %shr9 = lshr i64 %13, 32, !dbg !298
  %conv10 = trunc i64 %shr9 to i32, !dbg !298
  %14 = load i64, ptr %address.addr, align 8, !dbg !298
  %conv11 = trunc i64 %14 to i32, !dbg !298
  call void (ptr, ...) @acpi_info(ptr noundef @.str.2, ptr noundef %arraydecay, i32 noundef %conv10, i32 noundef %conv11) #6, !dbg !298
  br label %release_and_exit, !dbg !300

if.end12:                                         ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %call13 = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #6, !dbg !301
  %call14 = call i32 @acpi_tb_verify_temp_table(ptr noundef %new_table_desc, ptr noundef null, ptr noundef %i) #6, !dbg !302
  store i32 %call14, ptr %status, align 4, !dbg !303
  %15 = load i32, ptr %status, align 4, !dbg !304
  %tobool15 = icmp ne i32 %15, 0, !dbg !304
  br i1 %tobool15, label %if.then16, label %if.end22, !dbg !306

if.then16:                                        ; preds = %if.end12
  %16 = load i32, ptr %status, align 4, !dbg !307
  %cmp17 = icmp eq i32 %16, 16387, !dbg !310
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !311

if.then19:                                        ; preds = %if.then16
  call void @acpi_tb_uninstall_table(ptr noundef %new_table_desc) #6, !dbg !312
  %call20 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #6, !dbg !314
  %17 = load i32, ptr %i, align 4, !dbg !315
  %18 = load ptr, ptr %table_index.addr, align 8, !dbg !316
  store i32 %17, ptr %18, align 4, !dbg !317
  store i32 0, ptr %retval, align 4, !dbg !318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !318

if.end21:                                         ; preds = %if.then16
  br label %unlock_and_exit, !dbg !319

if.end22:                                         ; preds = %if.end12
  %19 = load i8, ptr %override.addr, align 1, !dbg !320
  %20 = load ptr, ptr %table_index.addr, align 8, !dbg !321
  call void @acpi_tb_install_table_with_override(ptr noundef %new_table_desc, i8 noundef zeroext %19, ptr noundef %20) #6, !dbg !322
  %call23 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #6, !dbg !323
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %new_table_desc, i32 0, i32 1, !dbg !324
  %21 = load ptr, ptr %pointer, align 8, !dbg !324
  call void @acpi_tb_notify_table(i32 noundef 2, ptr noundef %21) #6, !dbg !325
  %call24 = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #6, !dbg !326
  br label %unlock_and_exit, !dbg !327

unlock_and_exit:                                  ; preds = %if.end22, %if.end21
  call void @llvm.dbg.label(metadata !266), !dbg !328
  %call25 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #6, !dbg !329
  br label %release_and_exit, !dbg !330

release_and_exit:                                 ; preds = %unlock_and_exit, %if.then7
  call void @llvm.dbg.label(metadata !267), !dbg !331
  call void @acpi_tb_release_temp_table(ptr noundef %new_table_desc) #6, !dbg !332
  %22 = load i32, ptr %status, align 4, !dbg !333
  store i32 %22, ptr %retval, align 4, !dbg !333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !333

cleanup:                                          ; preds = %release_and_exit, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %new_table_desc) #5, !dbg !334
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !334
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !334
  %23 = load i32, ptr %retval, align 4, !dbg !334
  ret i32 %23, !dbg !334
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !335 dso_local i32 @acpi_tb_acquire_temp_table(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !338 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !343 dso_local void @acpi_info(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !346 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !351 dso_local i32 @acpi_tb_verify_temp_table(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_tb_uninstall_table(ptr noundef %table_desc) #0 align 16 !dbg !354 {
entry:
  %table_desc.addr = alloca ptr, align 8
  store ptr %table_desc, ptr %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_desc.addr, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = load ptr, ptr %table_desc.addr, align 8, !dbg !358
  %address = getelementptr inbounds %struct.acpi_table_desc, ptr %0, i32 0, i32 0, !dbg !360
  %1 = load i64, ptr %address, align 8, !dbg !360
  %tobool = icmp ne i64 %1, 0, !dbg !358
  br i1 %tobool, label %if.end, label %if.then, !dbg !361

if.then:                                          ; preds = %entry
  br label %return, !dbg !362

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %table_desc.addr, align 8, !dbg !364
  call void @acpi_tb_invalidate_table(ptr noundef %2) #6, !dbg !365
  %3 = load ptr, ptr %table_desc.addr, align 8, !dbg !366
  %flags = getelementptr inbounds %struct.acpi_table_desc, ptr %3, i32 0, i32 5, !dbg !368
  %4 = load i8, ptr %flags, align 2, !dbg !368
  %conv = zext i8 %4 to i32, !dbg !366
  %and = and i32 %conv, 3, !dbg !369
  %cmp = icmp eq i32 %and, 2, !dbg !370
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !371

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %table_desc.addr, align 8, !dbg !372
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %5, i32 0, i32 1, !dbg !372
  %6 = load ptr, ptr %pointer, align 8, !dbg !372
  call void @acpi_os_free(ptr noundef %6) #6, !dbg !372
  %7 = load ptr, ptr %table_desc.addr, align 8, !dbg !374
  %pointer3 = getelementptr inbounds %struct.acpi_table_desc, ptr %7, i32 0, i32 1, !dbg !375
  store ptr null, ptr %pointer3, align 8, !dbg !376
  br label %if.end4, !dbg !377

if.end4:                                          ; preds = %if.then2, %if.end
  %8 = load ptr, ptr %table_desc.addr, align 8, !dbg !378
  %address5 = getelementptr inbounds %struct.acpi_table_desc, ptr %8, i32 0, i32 0, !dbg !379
  store i64 0, ptr %address5, align 8, !dbg !380
  br label %return, !dbg !381

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !382
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !383 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !384 dso_local void @acpi_tb_notify_table(i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !387 dso_local void @acpi_tb_release_temp_table(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !388 dso_local i32 @acpi_os_table_override(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !393 dso_local i32 @acpi_os_physical_table_override(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !397 dso_local i32 @acpi_tb_validate_temp_table(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !400 dso_local void @acpi_tb_invalidate_table(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !401 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !408
  call void @kfree(ptr noundef %0) #6, !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !411 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !49, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.tbinstal.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22tbinstal\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/tbinstal.ll drivers/acpi/acpica/tbinstal.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !20, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/tbinstal.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85827964f5f61ebefce9cd518d6b79b2")
!4 = !{!5, !7, !12, !15, !16, !19}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !14)
!14 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !17, line: 42, baseType: !18)
!17 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!18 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !{!21, !27, !32, !34, !39, !44, !0}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !3, line: 115, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 360, elements: !25)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !{!26}
!26 = !DISubrange(count: 45)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 40, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 5)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !3, line: 128, type: !23, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !3, line: 218, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 8)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !3, line: 230, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 72, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 9)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !3, line: 247, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 496, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 62)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 72, elements: !42)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!51 = !{i32 7, !"Dwarf Version", i32 5}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 8, !"cf-protection-branch", i32 1}
!55 = !{i32 4, !"function_return_thunk_extern", i32 1}
!56 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!57 = !{i32 1, !"Code Model", i32 2}
!58 = !{i32 1, !"override-stack-alignment", i32 8}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = distinct !DISubprogram(name: "acpi_tb_install_table_with_override", scope: !3, file: !3, line: 34, type: !61, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !104)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63, !79, !15}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !65, line: 335, size: 256, elements: !66)
!65 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!66 = !{!67, !69, !91, !92, !97, !102, !103}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !64, file: !65, line: 336, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !12)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !64, file: !65, line: 337, baseType: !70, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !65, line: 68, size: 288, elements: !72)
!72 = !{!73, !77, !78, !82, !83, !87, !88, !89, !90}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !71, file: !65, line: 69, baseType: !74, size: 32)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 32, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 4)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !71, file: !65, line: 70, baseType: !7, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !71, file: !65, line: 71, baseType: !79, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !81)
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !71, file: !65, line: 72, baseType: !79, size: 8, offset: 72)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !71, file: !65, line: 73, baseType: !84, size: 48, offset: 80)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 48, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 6)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !71, file: !65, line: 74, baseType: !36, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !71, file: !65, line: 75, baseType: !7, size: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !71, file: !65, line: 76, baseType: !74, size: 32, offset: 224)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !71, file: !65, line: 77, baseType: !7, size: 32, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !64, file: !65, line: 338, baseType: !7, size: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !64, file: !65, line: 339, baseType: !93, size: 32, offset: 160)
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !65, line: 328, size: 32, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !93, file: !65, line: 329, baseType: !7, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !93, file: !65, line: 330, baseType: !74, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !64, file: !65, line: 340, baseType: !98, size: 16, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !101)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !65, line: 341, baseType: !79, size: 8, offset: 208)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !64, file: !65, line: 342, baseType: !99, size: 16, offset: 224)
!104 = !{!105, !106, !107, !108, !109}
!105 = !DILocalVariable(name: "new_table_desc", arg: 1, scope: !60, file: !3, line: 34, type: !63)
!106 = !DILocalVariable(name: "override", arg: 2, scope: !60, file: !3, line: 35, type: !79)
!107 = !DILocalVariable(name: "table_index", arg: 3, scope: !60, file: !3, line: 35, type: !15)
!108 = !DILocalVariable(name: "i", scope: !60, file: !3, line: 37, type: !7)
!109 = !DILocalVariable(name: "status", scope: !60, file: !3, line: 38, type: !5)
!110 = !DILocation(line: 34, column: 61, scope: !60)
!111 = !DILocation(line: 35, column: 12, scope: !60)
!112 = !DILocation(line: 35, column: 27, scope: !60)
!113 = !DILocation(line: 37, column: 2, scope: !60)
!114 = !DILocation(line: 37, column: 6, scope: !60)
!115 = !DILocation(line: 38, column: 2, scope: !60)
!116 = !DILocation(line: 38, column: 14, scope: !60)
!117 = !DILocation(line: 40, column: 11, scope: !60)
!118 = !DILocation(line: 40, column: 9, scope: !60)
!119 = !DILocation(line: 41, column: 6, scope: !120)
!120 = distinct !DILexicalBlock(scope: !60, file: !3, line: 41, column: 6)
!121 = !DILocation(line: 41, column: 6, scope: !60)
!122 = !DILocation(line: 42, column: 3, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !3, line: 41, column: 28)
!124 = !DILocation(line: 52, column: 6, scope: !125)
!125 = distinct !DILexicalBlock(scope: !60, file: !3, line: 52, column: 6)
!126 = !DILocation(line: 52, column: 6, scope: !60)
!127 = !DILocation(line: 53, column: 26, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !3, line: 52, column: 16)
!129 = !DILocation(line: 53, column: 3, scope: !128)
!130 = !DILocation(line: 54, column: 2, scope: !128)
!131 = !DILocation(line: 56, column: 58, scope: !60)
!132 = !DILocation(line: 56, column: 65, scope: !60)
!133 = !DILocation(line: 56, column: 33, scope: !60)
!134 = !DILocation(line: 57, column: 11, scope: !60)
!135 = !DILocation(line: 57, column: 27, scope: !60)
!136 = !DILocation(line: 58, column: 11, scope: !60)
!137 = !DILocation(line: 58, column: 27, scope: !60)
!138 = !DILocation(line: 59, column: 11, scope: !60)
!139 = !DILocation(line: 59, column: 27, scope: !60)
!140 = !DILocation(line: 56, column: 2, scope: !60)
!141 = !DILocation(line: 61, column: 29, scope: !60)
!142 = !DILocation(line: 61, column: 45, scope: !60)
!143 = !DILocation(line: 62, column: 8, scope: !60)
!144 = !DILocation(line: 62, column: 24, scope: !60)
!145 = !DILocation(line: 61, column: 2, scope: !60)
!146 = !DILocation(line: 66, column: 17, scope: !60)
!147 = !DILocation(line: 66, column: 3, scope: !60)
!148 = !DILocation(line: 66, column: 15, scope: !60)
!149 = !DILocation(line: 70, column: 6, scope: !150)
!150 = distinct !DILexicalBlock(scope: !60, file: !3, line: 70, column: 6)
!151 = !DILocation(line: 70, column: 11, scope: !150)
!152 = !DILocation(line: 70, column: 8, scope: !150)
!153 = !DILocation(line: 70, column: 6, scope: !60)
!154 = !DILocation(line: 71, column: 29, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !3, line: 70, column: 32)
!156 = !DILocation(line: 71, column: 45, scope: !155)
!157 = !DILocation(line: 71, column: 54, scope: !155)
!158 = !DILocation(line: 71, column: 3, scope: !155)
!159 = !DILocation(line: 72, column: 2, scope: !155)
!160 = !DILocation(line: 73, column: 1, scope: !60)
!161 = !DISubprogram(name: "acpi_tb_get_next_table_descriptor", scope: !162, file: !162, line: 28, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!162 = !DIFile(filename: "drivers/acpi/acpica/actables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb0787ba059aac7511e633019dab5fb8")
!163 = !DISubroutineType(types: !164)
!164 = !{!5, !15, !165}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!166 = distinct !DISubprogram(name: "acpi_tb_override_table", scope: !3, file: !3, line: 201, type: !167, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !169)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !63}
!169 = !{!170, !171, !172, !173, !174, !175, !176, !178}
!170 = !DILocalVariable(name: "old_table_desc", arg: 1, scope: !166, file: !3, line: 201, type: !63)
!171 = !DILocalVariable(name: "status", scope: !166, file: !3, line: 203, type: !5)
!172 = !DILocalVariable(name: "new_table_desc", scope: !166, file: !3, line: 204, type: !64)
!173 = !DILocalVariable(name: "table", scope: !166, file: !3, line: 205, type: !70)
!174 = !DILocalVariable(name: "address", scope: !166, file: !3, line: 206, type: !68)
!175 = !DILocalVariable(name: "length", scope: !166, file: !3, line: 207, type: !7)
!176 = !DILocalVariable(name: "override_type", scope: !166, file: !3, line: 208, type: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!178 = !DILabel(scope: !166, name: "finish_override", file: !3, line: 236)
!179 = !DILocation(line: 201, column: 53, scope: !166)
!180 = !DILocation(line: 203, column: 2, scope: !166)
!181 = !DILocation(line: 203, column: 14, scope: !166)
!182 = !DILocation(line: 204, column: 2, scope: !166)
!183 = !DILocation(line: 204, column: 25, scope: !166)
!184 = !DILocation(line: 205, column: 2, scope: !166)
!185 = !DILocation(line: 205, column: 28, scope: !166)
!186 = !DILocation(line: 206, column: 2, scope: !166)
!187 = !DILocation(line: 206, column: 24, scope: !166)
!188 = !DILocation(line: 207, column: 2, scope: !166)
!189 = !DILocation(line: 207, column: 6, scope: !166)
!190 = !DILocation(line: 208, column: 2, scope: !166)
!191 = !DILocation(line: 212, column: 34, scope: !166)
!192 = !DILocation(line: 212, column: 50, scope: !166)
!193 = !DILocation(line: 212, column: 11, scope: !166)
!194 = !DILocation(line: 212, column: 9, scope: !166)
!195 = !DILocation(line: 213, column: 6, scope: !196)
!196 = distinct !DILexicalBlock(scope: !166, file: !3, line: 213, column: 6)
!197 = !DILocation(line: 213, column: 27, scope: !196)
!198 = !DILocation(line: 213, column: 30, scope: !196)
!199 = !DILocation(line: 213, column: 6, scope: !166)
!200 = !DILocation(line: 215, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !3, line: 213, column: 37)
!202 = !DILocation(line: 217, column: 9, scope: !201)
!203 = !DILocation(line: 214, column: 3, scope: !201)
!204 = !DILocation(line: 218, column: 3, scope: !201)
!205 = !DILocation(line: 219, column: 3, scope: !201)
!206 = !DILocation(line: 224, column: 43, scope: !166)
!207 = !DILocation(line: 224, column: 59, scope: !166)
!208 = !DILocation(line: 224, column: 11, scope: !166)
!209 = !DILocation(line: 224, column: 9, scope: !166)
!210 = !DILocation(line: 226, column: 6, scope: !211)
!211 = distinct !DILexicalBlock(scope: !166, file: !3, line: 226, column: 6)
!212 = !DILocation(line: 226, column: 27, scope: !211)
!213 = !DILocation(line: 226, column: 30, scope: !211)
!214 = !DILocation(line: 226, column: 38, scope: !211)
!215 = !DILocation(line: 226, column: 41, scope: !211)
!216 = !DILocation(line: 226, column: 6, scope: !166)
!217 = !DILocation(line: 227, column: 47, scope: !218)
!218 = distinct !DILexicalBlock(scope: !211, file: !3, line: 226, column: 49)
!219 = !DILocation(line: 227, column: 3, scope: !218)
!220 = !DILocation(line: 230, column: 3, scope: !218)
!221 = !DILocation(line: 231, column: 3, scope: !218)
!222 = !DILocation(line: 234, column: 2, scope: !166)
!223 = !DILocation(line: 236, column: 1, scope: !166)
!224 = !DILocation(line: 242, column: 11, scope: !166)
!225 = !DILocation(line: 242, column: 9, scope: !166)
!226 = !DILocation(line: 243, column: 6, scope: !227)
!227 = distinct !DILexicalBlock(scope: !166, file: !3, line: 243, column: 6)
!228 = !DILocation(line: 243, column: 6, scope: !166)
!229 = !DILocation(line: 244, column: 3, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !3, line: 243, column: 28)
!231 = !DILocation(line: 247, column: 2, scope: !166)
!232 = !DILocation(line: 255, column: 26, scope: !166)
!233 = !DILocation(line: 255, column: 2, scope: !166)
!234 = !DILocation(line: 261, column: 32, scope: !166)
!235 = !DILocation(line: 261, column: 63, scope: !166)
!236 = !DILocation(line: 262, column: 26, scope: !166)
!237 = !DILocation(line: 263, column: 26, scope: !166)
!238 = !DILocation(line: 261, column: 2, scope: !166)
!239 = !DILocation(line: 264, column: 30, scope: !166)
!240 = !DILocation(line: 264, column: 2, scope: !166)
!241 = !DILocation(line: 268, column: 2, scope: !166)
!242 = !DILocation(line: 269, column: 1, scope: !166)
!243 = !DISubprogram(name: "acpi_tb_init_table_descriptor", scope: !162, file: !162, line: 32, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !63, !68, !79, !70}
!246 = !DISubprogram(name: "acpi_tb_print_table_header", scope: !162, file: !162, line: 124, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !68, !70}
!249 = !DISubprogram(name: "acpi_ut_set_integer_width", scope: !250, file: !250, line: 574, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!251 = !DISubroutineType(types: !252)
!252 = !{null, !79}
!253 = distinct !DISubprogram(name: "acpi_tb_install_standard_table", scope: !3, file: !3, line: 99, type: !254, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{!5, !68, !79, !70, !79, !79, !15}
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!257 = !DILocalVariable(name: "address", arg: 1, scope: !253, file: !3, line: 99, type: !68)
!258 = !DILocalVariable(name: "flags", arg: 2, scope: !253, file: !3, line: 100, type: !79)
!259 = !DILocalVariable(name: "table", arg: 3, scope: !253, file: !3, line: 101, type: !70)
!260 = !DILocalVariable(name: "reload", arg: 4, scope: !253, file: !3, line: 102, type: !79)
!261 = !DILocalVariable(name: "override", arg: 5, scope: !253, file: !3, line: 102, type: !79)
!262 = !DILocalVariable(name: "table_index", arg: 6, scope: !253, file: !3, line: 102, type: !15)
!263 = !DILocalVariable(name: "i", scope: !253, file: !3, line: 104, type: !7)
!264 = !DILocalVariable(name: "status", scope: !253, file: !3, line: 105, type: !5)
!265 = !DILocalVariable(name: "new_table_desc", scope: !253, file: !3, line: 106, type: !64)
!266 = !DILabel(scope: !253, name: "unlock_and_exit", file: !3, line: 170)
!267 = !DILabel(scope: !253, name: "release_and_exit", file: !3, line: 176)
!268 = !DILocation(line: 99, column: 54, scope: !253)
!269 = !DILocation(line: 100, column: 14, scope: !253)
!270 = !DILocation(line: 101, column: 37, scope: !253)
!271 = !DILocation(line: 102, column: 14, scope: !253)
!272 = !DILocation(line: 102, column: 25, scope: !253)
!273 = !DILocation(line: 102, column: 40, scope: !253)
!274 = !DILocation(line: 104, column: 2, scope: !253)
!275 = !DILocation(line: 104, column: 6, scope: !253)
!276 = !DILocation(line: 105, column: 2, scope: !253)
!277 = !DILocation(line: 105, column: 14, scope: !253)
!278 = !DILocation(line: 106, column: 2, scope: !253)
!279 = !DILocation(line: 106, column: 25, scope: !253)
!280 = !DILocation(line: 113, column: 50, scope: !253)
!281 = !DILocation(line: 113, column: 59, scope: !253)
!282 = !DILocation(line: 113, column: 66, scope: !253)
!283 = !DILocation(line: 113, column: 6, scope: !253)
!284 = !DILocation(line: 112, column: 9, scope: !253)
!285 = !DILocation(line: 114, column: 6, scope: !286)
!286 = distinct !DILexicalBlock(scope: !253, file: !3, line: 114, column: 6)
!287 = !DILocation(line: 114, column: 6, scope: !253)
!288 = !DILocation(line: 115, column: 3, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !3, line: 114, column: 28)
!290 = !DILocation(line: 118, column: 3, scope: !289)
!291 = !DILocation(line: 125, column: 7, scope: !292)
!292 = distinct !DILexicalBlock(scope: !253, file: !3, line: 125, column: 6)
!293 = !DILocation(line: 125, column: 14, scope: !292)
!294 = !DILocation(line: 126, column: 6, scope: !292)
!295 = !DILocation(line: 126, column: 42, scope: !292)
!296 = !DILocation(line: 127, column: 6, scope: !292)
!297 = !DILocation(line: 125, column: 6, scope: !253)
!298 = !DILocation(line: 128, column: 3, scope: !299)
!299 = distinct !DILexicalBlock(scope: !292, file: !3, line: 127, column: 70)
!300 = !DILocation(line: 131, column: 3, scope: !299)
!301 = !DILocation(line: 136, column: 8, scope: !253)
!302 = !DILocation(line: 140, column: 11, scope: !253)
!303 = !DILocation(line: 140, column: 9, scope: !253)
!304 = !DILocation(line: 141, column: 6, scope: !305)
!305 = distinct !DILexicalBlock(scope: !253, file: !3, line: 141, column: 6)
!306 = !DILocation(line: 141, column: 6, scope: !253)
!307 = !DILocation(line: 142, column: 7, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !3, line: 142, column: 7)
!309 = distinct !DILexicalBlock(scope: !305, file: !3, line: 141, column: 28)
!310 = !DILocation(line: 142, column: 14, scope: !308)
!311 = !DILocation(line: 142, column: 7, scope: !309)
!312 = !DILocation(line: 151, column: 4, scope: !313)
!313 = distinct !DILexicalBlock(scope: !308, file: !3, line: 142, column: 36)
!314 = !DILocation(line: 152, column: 10, scope: !313)
!315 = !DILocation(line: 153, column: 19, scope: !313)
!316 = !DILocation(line: 153, column: 5, scope: !313)
!317 = !DILocation(line: 153, column: 17, scope: !313)
!318 = !DILocation(line: 154, column: 4, scope: !313)
!319 = !DILocation(line: 156, column: 3, scope: !309)
!320 = !DILocation(line: 161, column: 55, scope: !253)
!321 = !DILocation(line: 162, column: 10, scope: !253)
!322 = !DILocation(line: 161, column: 2, scope: !253)
!323 = !DILocation(line: 166, column: 8, scope: !253)
!324 = !DILocation(line: 167, column: 64, scope: !253)
!325 = !DILocation(line: 167, column: 2, scope: !253)
!326 = !DILocation(line: 168, column: 8, scope: !253)
!327 = !DILocation(line: 168, column: 2, scope: !253)
!328 = !DILocation(line: 170, column: 1, scope: !253)
!329 = !DILocation(line: 174, column: 8, scope: !253)
!330 = !DILocation(line: 174, column: 2, scope: !253)
!331 = !DILocation(line: 176, column: 1, scope: !253)
!332 = !DILocation(line: 180, column: 2, scope: !253)
!333 = !DILocation(line: 181, column: 2, scope: !253)
!334 = !DILocation(line: 182, column: 1, scope: !253)
!335 = !DISubprogram(name: "acpi_tb_acquire_temp_table", scope: !162, file: !162, line: 37, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DISubroutineType(types: !337)
!337 = !{!5, !63, !68, !79, !70}
!338 = !DISubprogram(name: "acpi_error", scope: !339, file: !339, line: 901, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!339 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!340 = !DISubroutineType(types: !341)
!341 = !{null, !342, !7, !342, null}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!343 = !DISubprogram(name: "acpi_info", scope: !339, file: !339, line: 917, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !342, null}
!346 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !250, file: !250, line: 646, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DISubroutineType(types: !348)
!348 = !{!5, !349}
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !350, line: 17, baseType: !7)
!350 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!351 = !DISubprogram(name: "acpi_tb_verify_temp_table", scope: !162, file: !162, line: 46, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DISubroutineType(types: !353)
!353 = !{!5, !63, !177, !15}
!354 = distinct !DISubprogram(name: "acpi_tb_uninstall_table", scope: !3, file: !3, line: 283, type: !167, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !355)
!355 = !{!356}
!356 = !DILocalVariable(name: "table_desc", arg: 1, scope: !354, file: !3, line: 283, type: !63)
!357 = !DILocation(line: 283, column: 54, scope: !354)
!358 = !DILocation(line: 290, column: 7, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !3, line: 290, column: 6)
!360 = !DILocation(line: 290, column: 19, scope: !359)
!361 = !DILocation(line: 290, column: 6, scope: !354)
!362 = !DILocation(line: 291, column: 3, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !3, line: 290, column: 28)
!364 = !DILocation(line: 294, column: 27, scope: !354)
!365 = !DILocation(line: 294, column: 2, scope: !354)
!366 = !DILocation(line: 296, column: 7, scope: !367)
!367 = distinct !DILexicalBlock(scope: !354, file: !3, line: 296, column: 6)
!368 = !DILocation(line: 296, column: 19, scope: !367)
!369 = !DILocation(line: 296, column: 25, scope: !367)
!370 = !DILocation(line: 296, column: 51, scope: !367)
!371 = !DILocation(line: 296, column: 6, scope: !354)
!372 = !DILocation(line: 298, column: 3, scope: !373)
!373 = distinct !DILexicalBlock(scope: !367, file: !3, line: 297, column: 42)
!374 = !DILocation(line: 299, column: 3, scope: !373)
!375 = !DILocation(line: 299, column: 15, scope: !373)
!376 = !DILocation(line: 299, column: 23, scope: !373)
!377 = !DILocation(line: 300, column: 2, scope: !373)
!378 = !DILocation(line: 302, column: 2, scope: !354)
!379 = !DILocation(line: 302, column: 14, scope: !354)
!380 = !DILocation(line: 302, column: 22, scope: !354)
!381 = !DILocation(line: 303, column: 2, scope: !354)
!382 = !DILocation(line: 304, column: 1, scope: !354)
!383 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !250, file: !250, line: 648, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!384 = !DISubprogram(name: "acpi_tb_notify_table", scope: !162, file: !162, line: 106, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !7, !19}
!387 = !DISubprogram(name: "acpi_tb_release_temp_table", scope: !162, file: !162, line: 41, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!388 = !DISubprogram(name: "acpi_os_table_override", scope: !389, file: !389, line: 70, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!389 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!390 = !DISubroutineType(types: !391)
!391 = !{!5, !70, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!393 = !DISubprogram(name: "acpi_os_physical_table_override", scope: !389, file: !389, line: 76, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DISubroutineType(types: !395)
!395 = !{!5, !70, !396, !15}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!397 = !DISubprogram(name: "acpi_tb_validate_temp_table", scope: !162, file: !162, line: 43, type: !398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!398 = !DISubroutineType(types: !399)
!399 = !{!5, !63}
!400 = !DISubprogram(name: "acpi_tb_invalidate_table", scope: !162, file: !162, line: 74, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!401 = distinct !DISubprogram(name: "acpi_os_free", scope: !402, file: !402, line: 60, type: !403, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !405)
!402 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!403 = !DISubroutineType(types: !404)
!404 = !{null, !19}
!405 = !{!406}
!406 = !DILocalVariable(name: "memory", arg: 1, scope: !401, file: !402, line: 60, type: !19)
!407 = !DILocation(line: 60, column: 39, scope: !401)
!408 = !DILocation(line: 62, column: 8, scope: !401)
!409 = !DILocation(line: 62, column: 2, scope: !401)
!410 = !DILocation(line: 63, column: 1, scope: !401)
!411 = !DISubprogram(name: "kfree", scope: !412, file: !412, line: 227, type: !413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!412 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!413 = !DISubroutineType(types: !414)
!414 = !{null, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
