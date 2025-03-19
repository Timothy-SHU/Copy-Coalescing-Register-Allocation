; ModuleID = 'drivers/acpi/acpica/tbxface.c'
source_filename = "drivers/acpi/acpica/tbxface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_table_header: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_table_header ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_table: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_table ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_put_table: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_put_table ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_table_by_index: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_table_by_index ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_install_table_handler: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_install_table_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_remove_table_handler: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_remove_table_handler ; .previous"

%struct.acpi_table_list = type { ptr, i32, i32, i8 }
%struct.acpi_table_desc = type { i64, ptr, i32, %union.acpi_name_union, i16, i8, i16 }
%union.acpi_name_union = type { i32 }

@acpi_gbl_root_table_list = external dso_local global %struct.acpi_table_list, align 8
@acpi_gbl_enable_table_validation = external dso_local global i8, align 1
@_acpi_module_name = internal constant [8 x i8] c"tbxface\00", align 1, !dbg !0
@.str = private unnamed_addr constant [57 x i8] c"Table [%4.4s] is not invalidated during early boot stage\00", align 1, !dbg !22
@__UNIQUE_ID___addressable_acpi_get_table_header174 = internal global ptr @acpi_get_table_header, section ".discard.addressable", align 8, !dbg !28
@__UNIQUE_ID___addressable_acpi_get_table175 = internal global ptr @acpi_get_table, section ".discard.addressable", align 8, !dbg !30
@__UNIQUE_ID___addressable_acpi_put_table176 = internal global ptr @acpi_put_table, section ".discard.addressable", align 8, !dbg !32
@__UNIQUE_ID___addressable_acpi_get_table_by_index177 = internal global ptr @acpi_get_table_by_index, section ".discard.addressable", align 8, !dbg !34
@acpi_gbl_table_handler = external dso_local global ptr, align 8
@acpi_gbl_table_handler_context = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_acpi_install_table_handler178 = internal global ptr @acpi_install_table_handler, section ".discard.addressable", align 8, !dbg !36
@__UNIQUE_ID___addressable_acpi_remove_table_handler179 = internal global ptr @acpi_remove_table_handler, section ".discard.addressable", align 8, !dbg !38
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_get_table_header174, ptr @__UNIQUE_ID___addressable_acpi_get_table175, ptr @__UNIQUE_ID___addressable_acpi_put_table176, ptr @__UNIQUE_ID___addressable_acpi_get_table_by_index177, ptr @__UNIQUE_ID___addressable_acpi_install_table_handler178, ptr @__UNIQUE_ID___addressable_acpi_remove_table_handler179], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_allocate_root_table(i32 noundef %initial_table_count) #0 align 16 !dbg !53 {
entry:
  %initial_table_count.addr = alloca i32, align 4
  store i32 %initial_table_count, ptr %initial_table_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %initial_table_count.addr, metadata !57, metadata !DIExpression()), !dbg !58
  %0 = load i32, ptr %initial_table_count.addr, align 4, !dbg !59
  store i32 %0, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 2), align 4, !dbg !60
  store i8 2, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !61
  %call = call i32 @acpi_tb_resize_root_table_list() #7, !dbg !62
  ret i32 %call, !dbg !63
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !64 dso_local i32 @acpi_tb_resize_root_table_list() #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_initialize_tables(ptr noundef %initial_table_array, i32 noundef %initial_table_count, i8 noundef zeroext %allow_resize) #3 section ".init.text" align 16 !dbg !68 {
entry:
  %retval = alloca i32, align 4
  %initial_table_array.addr = alloca ptr, align 8
  %initial_table_count.addr = alloca i32, align 4
  %allow_resize.addr = alloca i8, align 1
  %rsdp_address = alloca i64, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %initial_table_array, ptr %initial_table_array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %initial_table_array.addr, metadata !114, metadata !DIExpression()), !dbg !119
  store i32 %initial_table_count, ptr %initial_table_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %initial_table_count.addr, metadata !115, metadata !DIExpression()), !dbg !120
  store i8 %allow_resize, ptr %allow_resize.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %allow_resize.addr, metadata !116, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.start.p0(i64 8, ptr %rsdp_address) #8, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %rsdp_address, metadata !117, metadata !DIExpression()), !dbg !123
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !124
  call void @llvm.dbg.declare(metadata ptr %status, metadata !118, metadata !DIExpression()), !dbg !125
  %0 = load ptr, ptr %initial_table_array.addr, align 8, !dbg !126
  %tobool = icmp ne ptr %0, null, !dbg !126
  br i1 %tobool, label %if.else, label %if.then, !dbg !128

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %initial_table_count.addr, align 4, !dbg !129
  %call = call i32 @acpi_allocate_root_table(i32 noundef %1) #7, !dbg !131
  store i32 %call, ptr %status, align 4, !dbg !132
  %2 = load i32, ptr %status, align 4, !dbg !133
  %tobool1 = icmp ne i32 %2, 0, !dbg !133
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !135

if.then2:                                         ; preds = %if.then
  %3 = load i32, ptr %status, align 4, !dbg !136
  store i32 %3, ptr %retval, align 4, !dbg !136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !136

if.end:                                           ; preds = %if.then
  br label %if.end8, !dbg !138

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %initial_table_array.addr, align 8, !dbg !139
  %5 = load i32, ptr %initial_table_count.addr, align 4, !dbg !141
  %conv = zext i32 %5 to i64, !dbg !142
  %mul = mul i64 %conv, 32, !dbg !143
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %mul, i1 false), !dbg !144
  %6 = load ptr, ptr %initial_table_array.addr, align 8, !dbg !145
  store ptr %6, ptr @acpi_gbl_root_table_list, align 8, !dbg !146
  %7 = load i32, ptr %initial_table_count.addr, align 4, !dbg !147
  store i32 %7, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 2), align 4, !dbg !148
  store i8 0, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !149
  %8 = load i8, ptr %allow_resize.addr, align 1, !dbg !150
  %tobool3 = icmp ne i8 %8, 0, !dbg !150
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !152

if.then4:                                         ; preds = %if.else
  %9 = load i8, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !153
  %conv5 = zext i8 %9 to i32, !dbg !153
  %or = or i32 %conv5, 2, !dbg !153
  %conv6 = trunc i32 %or to i8, !dbg !153
  store i8 %conv6, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !153
  br label %if.end7, !dbg !155

if.end7:                                          ; preds = %if.then4, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %call9 = call i64 @acpi_os_get_root_pointer() #7, !dbg !156
  store i64 %call9, ptr %rsdp_address, align 8, !dbg !157
  %10 = load i64, ptr %rsdp_address, align 8, !dbg !158
  %tobool10 = icmp ne i64 %10, 0, !dbg !158
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !160

if.then11:                                        ; preds = %if.end8
  store i32 5, ptr %retval, align 4, !dbg !161
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !161

if.end12:                                         ; preds = %if.end8
  %11 = load i64, ptr %rsdp_address, align 8, !dbg !163
  %call13 = call i32 @acpi_tb_parse_root_table(i64 noundef %11) #7, !dbg !164
  store i32 %call13, ptr %status, align 4, !dbg !165
  %12 = load i32, ptr %status, align 4, !dbg !166
  store i32 %12, ptr %retval, align 4, !dbg !166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !166

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !167
  call void @llvm.lifetime.end.p0(i64 8, ptr %rsdp_address) #8, !dbg !167
  %13 = load i32, ptr %retval, align 4, !dbg !167
  ret i32 %13, !dbg !167
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !168 dso_local i64 @acpi_os_get_root_pointer() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !172 dso_local i32 @acpi_tb_parse_root_table(i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_reallocate_root_table() #3 section ".init.text" align 16 !dbg !175 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %table_desc = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !181
  call void @llvm.dbg.declare(metadata ptr %status, metadata !177, metadata !DIExpression()), !dbg !182
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_desc) #8, !dbg !183
  call void @llvm.dbg.declare(metadata ptr %table_desc, metadata !178, metadata !DIExpression()), !dbg !184
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %i, metadata !179, metadata !DIExpression()), !dbg !186
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %j, metadata !180, metadata !DIExpression()), !dbg !187
  %0 = load i8, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !188
  %conv = zext i8 %0 to i32, !dbg !190
  %and = and i32 %conv, 1, !dbg !191
  %tobool = icmp ne i32 %and, 0, !dbg !191
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !192

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr @acpi_gbl_enable_table_validation, align 1, !dbg !193
  %conv1 = zext i8 %1 to i32, !dbg !193
  %tobool2 = icmp ne i32 %conv1, 0, !dbg !193
  br i1 %tobool2, label %if.then, label %if.end, !dbg !194

if.then:                                          ; preds = %land.lhs.true
  store i32 15, ptr %retval, align 4, !dbg !195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !195

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #7, !dbg !197
  store i32 0, ptr %i, align 4, !dbg !198
  br label %for.cond, !dbg !200

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !201
  %3 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !203
  %cmp = icmp ult i32 %2, %3, !dbg !204
  br i1 %cmp, label %for.body, label %for.end, !dbg !205

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !206
  %5 = load i32, ptr %i, align 4, !dbg !208
  %idxprom = zext i32 %5 to i64, !dbg !209
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %4, i64 %idxprom, !dbg !209
  store ptr %arrayidx, ptr %table_desc, align 8, !dbg !210
  %6 = load ptr, ptr %table_desc, align 8, !dbg !211
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %6, i32 0, i32 1, !dbg !213
  %7 = load ptr, ptr %pointer, align 8, !dbg !213
  %tobool4 = icmp ne ptr %7, null, !dbg !211
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !214

if.then5:                                         ; preds = %for.body
  %8 = load ptr, ptr %table_desc, align 8, !dbg !215
  %signature = getelementptr inbounds %struct.acpi_table_desc, ptr %8, i32 0, i32 3, !dbg !215
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !215
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 163, ptr noundef @.str, ptr noundef %arraydecay) #7, !dbg !215
  br label %if.end6, !dbg !217

if.end6:                                          ; preds = %if.then5, %for.body
  br label %for.inc, !dbg !218

for.inc:                                          ; preds = %if.end6
  %9 = load i32, ptr %i, align 4, !dbg !219
  %inc = add i32 %9, 1, !dbg !219
  store i32 %inc, ptr %i, align 4, !dbg !219
  br label %for.cond, !dbg !220, !llvm.loop !221

for.end:                                          ; preds = %for.cond
  %10 = load i8, ptr @acpi_gbl_enable_table_validation, align 1, !dbg !225
  %tobool7 = icmp ne i8 %10, 0, !dbg !225
  br i1 %tobool7, label %if.end27, label %if.then8, !dbg !227

if.then8:                                         ; preds = %for.end
  store i8 1, ptr @acpi_gbl_enable_table_validation, align 1, !dbg !228
  store i32 0, ptr %i, align 4, !dbg !230
  br label %for.cond9, !dbg !232

for.cond9:                                        ; preds = %for.inc24, %if.then8
  %11 = load i32, ptr %i, align 4, !dbg !233
  %12 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !235
  %cmp10 = icmp ult i32 %11, %12, !dbg !236
  br i1 %cmp10, label %for.body12, label %for.end26, !dbg !237

for.body12:                                       ; preds = %for.cond9
  %13 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !238
  %14 = load i32, ptr %i, align 4, !dbg !240
  %idxprom13 = zext i32 %14 to i64, !dbg !241
  %arrayidx14 = getelementptr %struct.acpi_table_desc, ptr %13, i64 %idxprom13, !dbg !241
  store ptr %arrayidx14, ptr %table_desc, align 8, !dbg !242
  %15 = load ptr, ptr %table_desc, align 8, !dbg !243
  %flags = getelementptr inbounds %struct.acpi_table_desc, ptr %15, i32 0, i32 5, !dbg !245
  %16 = load i8, ptr %flags, align 2, !dbg !245
  %conv15 = zext i8 %16 to i32, !dbg !243
  %and16 = and i32 %conv15, 4, !dbg !246
  %tobool17 = icmp ne i32 %and16, 0, !dbg !246
  br i1 %tobool17, label %if.end23, label %if.then18, !dbg !247

if.then18:                                        ; preds = %for.body12
  %17 = load ptr, ptr %table_desc, align 8, !dbg !248
  %call19 = call i32 @acpi_tb_verify_temp_table(ptr noundef %17, ptr noundef null, ptr noundef %j) #7, !dbg !250
  store i32 %call19, ptr %status, align 4, !dbg !251
  %18 = load i32, ptr %status, align 4, !dbg !252
  %tobool20 = icmp ne i32 %18, 0, !dbg !252
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !254

if.then21:                                        ; preds = %if.then18
  %19 = load ptr, ptr %table_desc, align 8, !dbg !255
  call void @acpi_tb_uninstall_table(ptr noundef %19) #7, !dbg !257
  br label %if.end22, !dbg !258

if.end22:                                         ; preds = %if.then21, %if.then18
  br label %if.end23, !dbg !259

if.end23:                                         ; preds = %if.end22, %for.body12
  br label %for.inc24, !dbg !260

for.inc24:                                        ; preds = %if.end23
  %20 = load i32, ptr %i, align 4, !dbg !261
  %inc25 = add i32 %20, 1, !dbg !261
  store i32 %inc25, ptr %i, align 4, !dbg !261
  br label %for.cond9, !dbg !262, !llvm.loop !263

for.end26:                                        ; preds = %for.cond9
  br label %if.end27, !dbg !265

if.end27:                                         ; preds = %for.end26, %for.end
  %21 = load i8, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !266
  %conv28 = zext i8 %21 to i32, !dbg !266
  %or = or i32 %conv28, 2, !dbg !266
  %conv29 = trunc i32 %or to i8, !dbg !266
  store i8 %conv29, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !266
  %call30 = call i32 @acpi_tb_resize_root_table_list() #7, !dbg !267
  store i32 %call30, ptr %status, align 4, !dbg !268
  %22 = load i8, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !269
  %conv31 = zext i8 %22 to i32, !dbg !269
  %or32 = or i32 %conv31, 1, !dbg !269
  %conv33 = trunc i32 %or32 to i8, !dbg !269
  store i8 %conv33, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !269
  %call34 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #7, !dbg !270
  %23 = load i32, ptr %status, align 4, !dbg !271
  store i32 %23, ptr %retval, align 4, !dbg !271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !271

cleanup:                                          ; preds = %if.end27, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8, !dbg !272
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !272
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_desc) #8, !dbg !272
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !272
  %24 = load i32, ptr %retval, align 4, !dbg !272
  ret i32 %24, !dbg !272
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !273 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !279 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !284 dso_local i32 @acpi_tb_verify_temp_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !288 dso_local void @acpi_tb_uninstall_table(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !291 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_table_header(ptr noundef %signature, i32 noundef %instance, ptr noundef %out_table_header) #0 align 16 !dbg !292 {
entry:
  %retval = alloca i32, align 4
  %signature.addr = alloca ptr, align 8
  %instance.addr = alloca i32, align 4
  %out_table_header.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %header = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %signature, ptr %signature.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %signature.addr, metadata !296, metadata !DIExpression()), !dbg !302
  store i32 %instance, ptr %instance.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %instance.addr, metadata !297, metadata !DIExpression()), !dbg !303
  store ptr %out_table_header, ptr %out_table_header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_table_header.addr, metadata !298, metadata !DIExpression()), !dbg !304
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %i, metadata !299, metadata !DIExpression()), !dbg !306
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8, !dbg !307
  call void @llvm.dbg.declare(metadata ptr %j, metadata !300, metadata !DIExpression()), !dbg !308
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #8, !dbg !309
  call void @llvm.dbg.declare(metadata ptr %header, metadata !301, metadata !DIExpression()), !dbg !310
  %0 = load ptr, ptr %signature.addr, align 8, !dbg !311
  %tobool = icmp ne ptr %0, null, !dbg !311
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !313

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %out_table_header.addr, align 8, !dbg !314
  %tobool1 = icmp ne ptr %1, null, !dbg !314
  br i1 %tobool1, label %if.end, label %if.then, !dbg !315

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !316

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !318
  store i32 0, ptr %j, align 4, !dbg !320
  br label %for.cond, !dbg !321

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !322
  %3 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !324
  %cmp = icmp ult i32 %2, %3, !dbg !325
  br i1 %cmp, label %for.body, label %for.end, !dbg !326

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !327
  %5 = load i32, ptr %i, align 4, !dbg !327
  %idxprom = zext i32 %5 to i64, !dbg !327
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %4, i64 %idxprom, !dbg !327
  %signature2 = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx, i32 0, i32 3, !dbg !327
  %6 = ptrtoint ptr %signature2 to i64, !dbg !327
  %7 = inttoptr i64 %6 to ptr, !dbg !327
  %8 = load i32, ptr %7, align 4, !dbg !327
  %9 = load ptr, ptr %signature.addr, align 8, !dbg !327
  %10 = ptrtoint ptr %9 to i64, !dbg !327
  %11 = inttoptr i64 %10 to ptr, !dbg !327
  %12 = load i32, ptr %11, align 4, !dbg !327
  %cmp3 = icmp eq i32 %8, %12, !dbg !327
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !330

if.then4:                                         ; preds = %for.body
  br label %for.inc, !dbg !331

if.end5:                                          ; preds = %for.body
  %13 = load i32, ptr %j, align 4, !dbg !333
  %inc = add i32 %13, 1, !dbg !333
  store i32 %inc, ptr %j, align 4, !dbg !333
  %14 = load i32, ptr %instance.addr, align 4, !dbg !335
  %cmp6 = icmp ult i32 %inc, %14, !dbg !336
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !337

if.then7:                                         ; preds = %if.end5
  br label %for.inc, !dbg !338

if.end8:                                          ; preds = %if.end5
  %15 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !340
  %16 = load i32, ptr %i, align 4, !dbg !342
  %idxprom9 = zext i32 %16 to i64, !dbg !343
  %arrayidx10 = getelementptr %struct.acpi_table_desc, ptr %15, i64 %idxprom9, !dbg !343
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx10, i32 0, i32 1, !dbg !344
  %17 = load ptr, ptr %pointer, align 8, !dbg !344
  %tobool11 = icmp ne ptr %17, null, !dbg !343
  br i1 %tobool11, label %if.else24, label %if.then12, !dbg !345

if.then12:                                        ; preds = %if.end8
  %18 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !346
  %19 = load i32, ptr %i, align 4, !dbg !349
  %idxprom13 = zext i32 %19 to i64, !dbg !350
  %arrayidx14 = getelementptr %struct.acpi_table_desc, ptr %18, i64 %idxprom13, !dbg !350
  %flags = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx14, i32 0, i32 5, !dbg !351
  %20 = load i8, ptr %flags, align 2, !dbg !351
  %conv = zext i8 %20 to i32, !dbg !350
  %and = and i32 %conv, 3, !dbg !352
  %cmp15 = icmp eq i32 %and, 1, !dbg !353
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !354

if.then17:                                        ; preds = %if.then12
  %21 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !355
  %22 = load i32, ptr %i, align 4, !dbg !357
  %idxprom18 = zext i32 %22 to i64, !dbg !358
  %arrayidx19 = getelementptr %struct.acpi_table_desc, ptr %21, i64 %idxprom18, !dbg !358
  %address = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx19, i32 0, i32 0, !dbg !359
  %23 = load i64, ptr %address, align 8, !dbg !359
  %call = call ptr @acpi_os_map_memory(i64 noundef %23, i64 noundef 36) #7, !dbg !360
  store ptr %call, ptr %header, align 8, !dbg !361
  %24 = load ptr, ptr %header, align 8, !dbg !362
  %tobool20 = icmp ne ptr %24, null, !dbg !362
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !364

if.then21:                                        ; preds = %if.then17
  store i32 4, ptr %retval, align 4, !dbg !365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !365

if.end22:                                         ; preds = %if.then17
  %25 = load ptr, ptr %out_table_header.addr, align 8, !dbg !367
  %26 = load ptr, ptr %header, align 8, !dbg !368
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %26, i64 36, i1 false), !dbg !369
  %27 = load ptr, ptr %header, align 8, !dbg !370
  call void @acpi_os_unmap_memory(ptr noundef %27, i64 noundef 36) #7, !dbg !371
  br label %if.end23, !dbg !372

if.else:                                          ; preds = %if.then12
  store i32 5, ptr %retval, align 4, !dbg !373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !373

if.end23:                                         ; preds = %if.end22
  br label %if.end28, !dbg !375

if.else24:                                        ; preds = %if.end8
  %28 = load ptr, ptr %out_table_header.addr, align 8, !dbg !376
  %29 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !378
  %30 = load i32, ptr %i, align 4, !dbg !379
  %idxprom25 = zext i32 %30 to i64, !dbg !380
  %arrayidx26 = getelementptr %struct.acpi_table_desc, ptr %29, i64 %idxprom25, !dbg !380
  %pointer27 = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx26, i32 0, i32 1, !dbg !381
  %31 = load ptr, ptr %pointer27, align 8, !dbg !381
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %31, i64 36, i1 false), !dbg !382
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.end23
  store i32 0, ptr %retval, align 4, !dbg !383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !383

for.inc:                                          ; preds = %if.then7, %if.then4
  %32 = load i32, ptr %i, align 4, !dbg !384
  %inc29 = add i32 %32, 1, !dbg !384
  store i32 %inc29, ptr %i, align 4, !dbg !384
  br label %for.cond, !dbg !385, !llvm.loop !386

for.end:                                          ; preds = %for.cond
  store i32 5, ptr %retval, align 4, !dbg !388
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !388

cleanup:                                          ; preds = %for.end, %if.end28, %if.else, %if.then21, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #8, !dbg !389
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8, !dbg !389
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !389
  %33 = load i32, ptr %retval, align 4, !dbg !389
  ret i32 %33, !dbg !389
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !390 dso_local ptr @acpi_os_map_memory(i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !393 dso_local void @acpi_os_unmap_memory(ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_table(ptr noundef %signature, i32 noundef %instance, ptr noundef %out_table) #0 align 16 !dbg !396 {
entry:
  %retval = alloca i32, align 4
  %signature.addr = alloca ptr, align 8
  %instance.addr = alloca i32, align 4
  %out_table.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %status = alloca i32, align 4
  %table_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %signature, ptr %signature.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %signature.addr, metadata !401, metadata !DIExpression()), !dbg !408
  store i32 %instance, ptr %instance.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %instance.addr, metadata !402, metadata !DIExpression()), !dbg !409
  store ptr %out_table, ptr %out_table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_table.addr, metadata !403, metadata !DIExpression()), !dbg !410
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %i, metadata !404, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8, !dbg !413
  call void @llvm.dbg.declare(metadata ptr %j, metadata !405, metadata !DIExpression()), !dbg !414
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !415
  call void @llvm.dbg.declare(metadata ptr %status, metadata !406, metadata !DIExpression()), !dbg !416
  store i32 5, ptr %status, align 4, !dbg !416
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_desc) #8, !dbg !417
  call void @llvm.dbg.declare(metadata ptr %table_desc, metadata !407, metadata !DIExpression()), !dbg !418
  %0 = load ptr, ptr %signature.addr, align 8, !dbg !419
  %tobool = icmp ne ptr %0, null, !dbg !419
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !421

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %out_table.addr, align 8, !dbg !422
  %tobool1 = icmp ne ptr %1, null, !dbg !422
  br i1 %tobool1, label %if.end, label %if.then, !dbg !423

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !424

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %out_table.addr, align 8, !dbg !426
  store ptr null, ptr %2, align 8, !dbg !427
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #7, !dbg !428
  store i32 0, ptr %i, align 4, !dbg !429
  store i32 0, ptr %j, align 4, !dbg !431
  br label %for.cond, !dbg !432

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !433
  %4 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !435
  %cmp = icmp ult i32 %3, %4, !dbg !436
  br i1 %cmp, label %for.body, label %for.end, !dbg !437

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !438
  %6 = load i32, ptr %i, align 4, !dbg !440
  %idxprom = zext i32 %6 to i64, !dbg !441
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %5, i64 %idxprom, !dbg !441
  store ptr %arrayidx, ptr %table_desc, align 8, !dbg !442
  %7 = load ptr, ptr %table_desc, align 8, !dbg !443
  %signature2 = getelementptr inbounds %struct.acpi_table_desc, ptr %7, i32 0, i32 3, !dbg !443
  %8 = ptrtoint ptr %signature2 to i64, !dbg !443
  %9 = inttoptr i64 %8 to ptr, !dbg !443
  %10 = load i32, ptr %9, align 4, !dbg !443
  %11 = load ptr, ptr %signature.addr, align 8, !dbg !443
  %12 = ptrtoint ptr %11 to i64, !dbg !443
  %13 = inttoptr i64 %12 to ptr, !dbg !443
  %14 = load i32, ptr %13, align 4, !dbg !443
  %cmp3 = icmp eq i32 %10, %14, !dbg !443
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !445

if.then4:                                         ; preds = %for.body
  br label %for.inc, !dbg !446

if.end5:                                          ; preds = %for.body
  %15 = load i32, ptr %j, align 4, !dbg !448
  %inc = add i32 %15, 1, !dbg !448
  store i32 %inc, ptr %j, align 4, !dbg !448
  %16 = load i32, ptr %instance.addr, align 4, !dbg !450
  %cmp6 = icmp ult i32 %inc, %16, !dbg !451
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !452

if.then7:                                         ; preds = %if.end5
  br label %for.inc, !dbg !453

if.end8:                                          ; preds = %if.end5
  %17 = load ptr, ptr %table_desc, align 8, !dbg !455
  %18 = load ptr, ptr %out_table.addr, align 8, !dbg !456
  %call9 = call i32 @acpi_tb_get_table(ptr noundef %17, ptr noundef %18) #7, !dbg !457
  store i32 %call9, ptr %status, align 4, !dbg !458
  br label %for.end, !dbg !459

for.inc:                                          ; preds = %if.then7, %if.then4
  %19 = load i32, ptr %i, align 4, !dbg !460
  %inc10 = add i32 %19, 1, !dbg !460
  store i32 %inc10, ptr %i, align 4, !dbg !460
  br label %for.cond, !dbg !461, !llvm.loop !462

for.end:                                          ; preds = %if.end8, %for.cond
  %call11 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #7, !dbg !464
  %20 = load i32, ptr %status, align 4, !dbg !465
  store i32 %20, ptr %retval, align 4, !dbg !466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !466

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_desc) #8, !dbg !467
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !467
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8, !dbg !467
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !467
  %21 = load i32, ptr %retval, align 4, !dbg !467
  ret i32 %21, !dbg !467
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !468 dso_local i32 @acpi_tb_get_table(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_put_table(ptr noundef %table) #0 align 16 !dbg !471 {
entry:
  %table.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %table_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !475, metadata !DIExpression()), !dbg !478
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %i, metadata !476, metadata !DIExpression()), !dbg !480
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_desc) #8, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %table_desc, metadata !477, metadata !DIExpression()), !dbg !482
  %0 = load ptr, ptr %table.addr, align 8, !dbg !483
  %tobool = icmp ne ptr %0, null, !dbg !483
  br i1 %tobool, label %if.end, label %if.then, !dbg !485

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !486

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #7, !dbg !488
  store i32 0, ptr %i, align 4, !dbg !489
  br label %for.cond, !dbg !491

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !492
  %2 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !494
  %cmp = icmp ult i32 %1, %2, !dbg !495
  br i1 %cmp, label %for.body, label %for.end, !dbg !496

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !497
  %4 = load i32, ptr %i, align 4, !dbg !499
  %idxprom = zext i32 %4 to i64, !dbg !500
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %3, i64 %idxprom, !dbg !500
  store ptr %arrayidx, ptr %table_desc, align 8, !dbg !501
  %5 = load ptr, ptr %table_desc, align 8, !dbg !502
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %5, i32 0, i32 1, !dbg !504
  %6 = load ptr, ptr %pointer, align 8, !dbg !504
  %7 = load ptr, ptr %table.addr, align 8, !dbg !505
  %cmp1 = icmp ne ptr %6, %7, !dbg !506
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !507

if.then2:                                         ; preds = %for.body
  br label %for.inc, !dbg !508

if.end3:                                          ; preds = %for.body
  %8 = load ptr, ptr %table_desc, align 8, !dbg !510
  call void @acpi_tb_put_table(ptr noundef %8) #7, !dbg !511
  br label %for.end, !dbg !512

for.inc:                                          ; preds = %if.then2
  %9 = load i32, ptr %i, align 4, !dbg !513
  %inc = add i32 %9, 1, !dbg !513
  store i32 %inc, ptr %i, align 4, !dbg !513
  br label %for.cond, !dbg !514, !llvm.loop !515

for.end:                                          ; preds = %if.end3, %for.cond
  %call4 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #7, !dbg !517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !518

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_desc) #8, !dbg !519
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !519
  ret void, !dbg !519
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !520 dso_local void @acpi_tb_put_table(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_table_by_index(i32 noundef %table_index, ptr noundef %out_table) #0 align 16 !dbg !521 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %out_table.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !525, metadata !DIExpression()), !dbg !529
  store ptr %out_table, ptr %out_table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_table.addr, metadata !526, metadata !DIExpression()), !dbg !530
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !531
  call void @llvm.dbg.declare(metadata ptr %status, metadata !527, metadata !DIExpression()), !dbg !532
  %0 = load ptr, ptr %out_table.addr, align 8, !dbg !533
  %tobool = icmp ne ptr %0, null, !dbg !533
  br i1 %tobool, label %if.end, label %if.then, !dbg !535

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !536

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %out_table.addr, align 8, !dbg !538
  store ptr null, ptr %1, align 8, !dbg !539
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #7, !dbg !540
  %2 = load i32, ptr %table_index.addr, align 4, !dbg !541
  %3 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !543
  %cmp = icmp uge i32 %2, %3, !dbg !544
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !545

if.then1:                                         ; preds = %if.end
  store i32 4097, ptr %status, align 4, !dbg !546
  br label %unlock_and_exit, !dbg !548

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !549
  %5 = load i32, ptr %table_index.addr, align 4, !dbg !550
  %idxprom = zext i32 %5 to i64, !dbg !551
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %4, i64 %idxprom, !dbg !551
  %6 = load ptr, ptr %out_table.addr, align 8, !dbg !552
  %call3 = call i32 @acpi_tb_get_table(ptr noundef %arrayidx, ptr noundef %6) #7, !dbg !553
  store i32 %call3, ptr %status, align 4, !dbg !554
  br label %unlock_and_exit, !dbg !555

unlock_and_exit:                                  ; preds = %if.end2, %if.then1
  call void @llvm.dbg.label(metadata !528), !dbg !556
  %call4 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #7, !dbg !557
  %7 = load i32, ptr %status, align 4, !dbg !558
  store i32 %7, ptr %retval, align 4, !dbg !558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !558

cleanup:                                          ; preds = %unlock_and_exit, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !559
  %8 = load i32, ptr %retval, align 4, !dbg !559
  ret i32 %8, !dbg !559
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_install_table_handler(ptr noundef %handler, ptr noundef %context) #0 align 16 !dbg !560 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !568, metadata !DIExpression()), !dbg !572
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !569, metadata !DIExpression()), !dbg !573
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !574
  call void @llvm.dbg.declare(metadata ptr %status, metadata !570, metadata !DIExpression()), !dbg !575
  %0 = load ptr, ptr %handler.addr, align 8, !dbg !576
  %tobool = icmp ne ptr %0, null, !dbg !576
  br i1 %tobool, label %if.end, label %if.then, !dbg !578

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !579

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #7, !dbg !581
  store i32 %call, ptr %status, align 4, !dbg !582
  %1 = load i32, ptr %status, align 4, !dbg !583
  %tobool1 = icmp ne i32 %1, 0, !dbg !583
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !585

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %status, align 4, !dbg !586
  store i32 %2, ptr %retval, align 4, !dbg !586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !586

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr @acpi_gbl_table_handler, align 8, !dbg !588
  %tobool4 = icmp ne ptr %3, null, !dbg !588
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !590

if.then5:                                         ; preds = %if.end3
  store i32 7, ptr %status, align 4, !dbg !591
  br label %cleanup, !dbg !593

if.end6:                                          ; preds = %if.end3
  %4 = load ptr, ptr %handler.addr, align 8, !dbg !594
  store ptr %4, ptr @acpi_gbl_table_handler, align 8, !dbg !595
  %5 = load ptr, ptr %context.addr, align 8, !dbg !596
  store ptr %5, ptr @acpi_gbl_table_handler_context, align 8, !dbg !597
  br label %cleanup, !dbg !598

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.dbg.label(metadata !571), !dbg !599
  %call7 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #7, !dbg !600
  %6 = load i32, ptr %status, align 4, !dbg !601
  store i32 %6, ptr %retval, align 4, !dbg !601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !601

cleanup8:                                         ; preds = %cleanup, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !602
  %7 = load i32, ptr %retval, align 4, !dbg !602
  ret i32 %7, !dbg !602
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_remove_table_handler(ptr noundef %handler) #0 align 16 !dbg !603 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !607, metadata !DIExpression()), !dbg !610
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !611
  call void @llvm.dbg.declare(metadata ptr %status, metadata !608, metadata !DIExpression()), !dbg !612
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #7, !dbg !613
  store i32 %call, ptr %status, align 4, !dbg !614
  %0 = load i32, ptr %status, align 4, !dbg !615
  %tobool = icmp ne i32 %0, 0, !dbg !615
  br i1 %tobool, label %if.then, label %if.end, !dbg !617

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !618
  store i32 %1, ptr %retval, align 4, !dbg !618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup5, !dbg !618

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %handler.addr, align 8, !dbg !620
  %tobool1 = icmp ne ptr %2, null, !dbg !620
  br i1 %tobool1, label %lor.lhs.false, label %if.then2, !dbg !622

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %handler.addr, align 8, !dbg !623
  %4 = load ptr, ptr @acpi_gbl_table_handler, align 8, !dbg !624
  %cmp = icmp ne ptr %3, %4, !dbg !625
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !626

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store i32 4097, ptr %status, align 4, !dbg !627
  br label %cleanup, !dbg !629

if.end3:                                          ; preds = %lor.lhs.false
  store ptr null, ptr @acpi_gbl_table_handler, align 8, !dbg !630
  br label %cleanup, !dbg !631

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.dbg.label(metadata !609), !dbg !632
  %call4 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #7, !dbg !633
  %5 = load i32, ptr %status, align 4, !dbg !634
  store i32 %5, ptr %retval, align 4, !dbg !634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup5, !dbg !634

cleanup5:                                         ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !635
  %6 = load i32, ptr %retval, align 4, !dbg !635
  ret i32 %6, !dbg !635
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noredzone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.tbxface.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22tbxface\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/tbxface.ll drivers/acpi/acpica/tbxface.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !21, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/tbxface.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0bbd36d21659d2fdb7f0a013ce558e9a")
!4 = !{!5, !12, !16, !17, !20}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !6, line: 127, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !15)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !18, line: 42, baseType: !19)
!18 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !{!22, !28, !30, !32, !34, !36, !38, !0}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !3, line: 163, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 456, elements: !26)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!27}
!27 = !DISubrange(count: 57)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_table_header174", scope: !2, file: !3, line: 275, type: !20, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_table175", scope: !2, file: !3, line: 342, type: !20, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_put_table176", scope: !2, file: !3, line: 389, type: !20, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_table_by_index177", scope: !2, file: !3, line: 442, type: !20, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_install_table_handler178", scope: !2, file: !3, line: 489, type: !20, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_remove_table_handler179", scope: !2, file: !3, line: 530, type: !20, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, elements: !42)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!42 = !{!43}
!43 = !DISubrange(count: 8)
!44 = !{i32 7, !"Dwarf Version", i32 5}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 8, !"cf-protection-branch", i32 1}
!48 = !{i32 4, !"function_return_thunk_extern", i32 1}
!49 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!50 = !{i32 1, !"Code Model", i32 2}
!51 = !{i32 1, !"override-stack-alignment", i32 8}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = distinct !DISubprogram(name: "acpi_allocate_root_table", scope: !3, file: !3, line: 32, type: !54, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{!12, !13}
!56 = !{!57}
!57 = !DILocalVariable(name: "initial_table_count", arg: 1, scope: !53, file: !3, line: 32, type: !13)
!58 = !DILocation(line: 32, column: 42, scope: !53)
!59 = !DILocation(line: 35, column: 45, scope: !53)
!60 = !DILocation(line: 35, column: 43, scope: !53)
!61 = !DILocation(line: 36, column: 33, scope: !53)
!62 = !DILocation(line: 38, column: 10, scope: !53)
!63 = !DILocation(line: 38, column: 2, scope: !53)
!64 = !DISubprogram(name: "acpi_tb_resize_root_table_list", scope: !65, file: !65, line: 70, type: !66, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!65 = !DIFile(filename: "drivers/acpi/acpica/actables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb0787ba059aac7511e633019dab5fb8")
!66 = !DISubroutineType(types: !67)
!67 = !{!12}
!68 = distinct !DISubprogram(name: "acpi_initialize_tables", scope: !3, file: !3, line: 68, type: !69, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !113)
!69 = !DISubroutineType(types: !70)
!70 = !{!12, !71, !13, !87}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !73, line: 335, size: 256, elements: !74)
!73 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!74 = !{!75, !77, !100, !101, !106, !111, !112}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !72, file: !73, line: 336, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !7)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !72, file: !73, line: 337, baseType: !78, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !73, line: 68, size: 288, elements: !80)
!80 = !{!81, !85, !86, !90, !91, !95, !97, !98, !99}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !79, file: !73, line: 69, baseType: !82, size: 32)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 4)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !79, file: !73, line: 70, baseType: !13, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !79, file: !73, line: 71, baseType: !87, size: 8, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !89)
!89 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !79, file: !73, line: 72, baseType: !87, size: 8, offset: 72)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !79, file: !73, line: 73, baseType: !92, size: 48, offset: 80)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 48, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 6)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !79, file: !73, line: 74, baseType: !96, size: 64, offset: 128)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !42)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !79, file: !73, line: 75, baseType: !13, size: 32, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !79, file: !73, line: 76, baseType: !82, size: 32, offset: 224)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !79, file: !73, line: 77, baseType: !13, size: 32, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !72, file: !73, line: 338, baseType: !13, size: 32, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !72, file: !73, line: 339, baseType: !102, size: 32, offset: 160)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !73, line: 328, size: 32, elements: !103)
!103 = !{!104, !105}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !102, file: !73, line: 329, baseType: !13, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !102, file: !73, line: 330, baseType: !82, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !72, file: !73, line: 340, baseType: !107, size: 16, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !110)
!110 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !73, line: 341, baseType: !87, size: 8, offset: 208)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !72, file: !73, line: 342, baseType: !108, size: 16, offset: 224)
!113 = !{!114, !115, !116, !117, !118}
!114 = !DILocalVariable(name: "initial_table_array", arg: 1, scope: !68, file: !3, line: 68, type: !71)
!115 = !DILocalVariable(name: "initial_table_count", arg: 2, scope: !68, file: !3, line: 69, type: !13)
!116 = !DILocalVariable(name: "allow_resize", arg: 3, scope: !68, file: !3, line: 69, type: !87)
!117 = !DILocalVariable(name: "rsdp_address", scope: !68, file: !3, line: 71, type: !76)
!118 = !DILocalVariable(name: "status", scope: !68, file: !3, line: 72, type: !12)
!119 = !DILocation(line: 68, column: 48, scope: !68)
!120 = !DILocation(line: 69, column: 14, scope: !68)
!121 = !DILocation(line: 69, column: 38, scope: !68)
!122 = !DILocation(line: 71, column: 2, scope: !68)
!123 = !DILocation(line: 71, column: 24, scope: !68)
!124 = !DILocation(line: 72, column: 2, scope: !68)
!125 = !DILocation(line: 72, column: 14, scope: !68)
!126 = !DILocation(line: 80, column: 7, scope: !127)
!127 = distinct !DILexicalBlock(scope: !68, file: !3, line: 80, column: 6)
!128 = !DILocation(line: 80, column: 6, scope: !68)
!129 = !DILocation(line: 81, column: 37, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !3, line: 80, column: 28)
!131 = !DILocation(line: 81, column: 12, scope: !130)
!132 = !DILocation(line: 81, column: 10, scope: !130)
!133 = !DILocation(line: 82, column: 7, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !3, line: 82, column: 7)
!135 = !DILocation(line: 82, column: 7, scope: !130)
!136 = !DILocation(line: 83, column: 4, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !3, line: 82, column: 29)
!138 = !DILocation(line: 85, column: 2, scope: !130)
!139 = !DILocation(line: 88, column: 10, scope: !140)
!140 = distinct !DILexicalBlock(scope: !127, file: !3, line: 85, column: 9)
!141 = !DILocation(line: 89, column: 21, scope: !140)
!142 = !DILocation(line: 89, column: 10, scope: !140)
!143 = !DILocation(line: 89, column: 41, scope: !140)
!144 = !DILocation(line: 88, column: 3, scope: !140)
!145 = !DILocation(line: 92, column: 37, scope: !140)
!146 = !DILocation(line: 92, column: 35, scope: !140)
!147 = !DILocation(line: 93, column: 46, scope: !140)
!148 = !DILocation(line: 93, column: 44, scope: !140)
!149 = !DILocation(line: 94, column: 34, scope: !140)
!150 = !DILocation(line: 95, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !140, file: !3, line: 95, column: 7)
!152 = !DILocation(line: 95, column: 7, scope: !140)
!153 = !DILocation(line: 96, column: 35, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !3, line: 95, column: 21)
!155 = !DILocation(line: 98, column: 3, scope: !154)
!156 = !DILocation(line: 103, column: 17, scope: !68)
!157 = !DILocation(line: 103, column: 15, scope: !68)
!158 = !DILocation(line: 104, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !68, file: !3, line: 104, column: 6)
!160 = !DILocation(line: 104, column: 6, scope: !68)
!161 = !DILocation(line: 105, column: 3, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !3, line: 104, column: 21)
!163 = !DILocation(line: 113, column: 36, scope: !68)
!164 = !DILocation(line: 113, column: 11, scope: !68)
!165 = !DILocation(line: 113, column: 9, scope: !68)
!166 = !DILocation(line: 114, column: 2, scope: !68)
!167 = !DILocation(line: 115, column: 1, scope: !68)
!168 = !DISubprogram(name: "acpi_os_get_root_pointer", scope: !169, file: !169, line: 59, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!170 = !DISubroutineType(types: !171)
!171 = !{!76}
!172 = !DISubprogram(name: "acpi_tb_parse_root_table", scope: !65, file: !65, line: 135, type: !173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!173 = !DISubroutineType(types: !174)
!174 = !{!12, !76}
!175 = distinct !DISubprogram(name: "acpi_reallocate_root_table", scope: !3, file: !3, line: 133, type: !66, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!176 = !{!177, !178, !179, !180}
!177 = !DILocalVariable(name: "status", scope: !175, file: !3, line: 135, type: !12)
!178 = !DILocalVariable(name: "table_desc", scope: !175, file: !3, line: 136, type: !71)
!179 = !DILocalVariable(name: "i", scope: !175, file: !3, line: 137, type: !13)
!180 = !DILocalVariable(name: "j", scope: !175, file: !3, line: 137, type: !13)
!181 = !DILocation(line: 135, column: 2, scope: !175)
!182 = !DILocation(line: 135, column: 14, scope: !175)
!183 = !DILocation(line: 136, column: 2, scope: !175)
!184 = !DILocation(line: 136, column: 26, scope: !175)
!185 = !DILocation(line: 137, column: 2, scope: !175)
!186 = !DILocation(line: 137, column: 6, scope: !175)
!187 = !DILocation(line: 137, column: 9, scope: !175)
!188 = !DILocation(line: 147, column: 32, scope: !189)
!189 = distinct !DILexicalBlock(scope: !175, file: !3, line: 147, column: 6)
!190 = !DILocation(line: 147, column: 7, scope: !189)
!191 = !DILocation(line: 147, column: 38, scope: !189)
!192 = !DILocation(line: 147, column: 68, scope: !189)
!193 = !DILocation(line: 148, column: 6, scope: !189)
!194 = !DILocation(line: 147, column: 6, scope: !175)
!195 = !DILocation(line: 149, column: 3, scope: !196)
!196 = distinct !DILexicalBlock(scope: !189, file: !3, line: 148, column: 40)
!197 = !DILocation(line: 152, column: 8, scope: !175)
!198 = !DILocation(line: 160, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !175, file: !3, line: 160, column: 2)
!200 = !DILocation(line: 160, column: 7, scope: !199)
!201 = !DILocation(line: 160, column: 14, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !3, line: 160, column: 2)
!203 = !DILocation(line: 160, column: 43, scope: !202)
!204 = !DILocation(line: 160, column: 16, scope: !202)
!205 = !DILocation(line: 160, column: 2, scope: !199)
!206 = !DILocation(line: 161, column: 42, scope: !207)
!207 = distinct !DILexicalBlock(scope: !202, file: !3, line: 160, column: 69)
!208 = !DILocation(line: 161, column: 49, scope: !207)
!209 = !DILocation(line: 161, column: 17, scope: !207)
!210 = !DILocation(line: 161, column: 14, scope: !207)
!211 = !DILocation(line: 162, column: 7, scope: !212)
!212 = distinct !DILexicalBlock(scope: !207, file: !3, line: 162, column: 7)
!213 = !DILocation(line: 162, column: 19, scope: !212)
!214 = !DILocation(line: 162, column: 7, scope: !207)
!215 = !DILocation(line: 163, column: 4, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !3, line: 162, column: 28)
!217 = !DILocation(line: 166, column: 3, scope: !216)
!218 = !DILocation(line: 167, column: 2, scope: !207)
!219 = !DILocation(line: 160, column: 64, scope: !202)
!220 = !DILocation(line: 160, column: 2, scope: !202)
!221 = distinct !{!221, !205, !222, !223, !224}
!222 = !DILocation(line: 167, column: 2, scope: !199)
!223 = !{!"llvm.loop.mustprogress"}
!224 = !{!"llvm.loop.unroll.disable"}
!225 = !DILocation(line: 169, column: 7, scope: !226)
!226 = distinct !DILexicalBlock(scope: !175, file: !3, line: 169, column: 6)
!227 = !DILocation(line: 169, column: 6, scope: !175)
!228 = !DILocation(line: 174, column: 36, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !3, line: 169, column: 41)
!230 = !DILocation(line: 175, column: 10, scope: !231)
!231 = distinct !DILexicalBlock(scope: !229, file: !3, line: 175, column: 3)
!232 = !DILocation(line: 175, column: 8, scope: !231)
!233 = !DILocation(line: 175, column: 15, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !3, line: 175, column: 3)
!235 = !DILocation(line: 175, column: 44, scope: !234)
!236 = !DILocation(line: 175, column: 17, scope: !234)
!237 = !DILocation(line: 175, column: 3, scope: !231)
!238 = !DILocation(line: 177, column: 43, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !3, line: 176, column: 13)
!240 = !DILocation(line: 177, column: 50, scope: !239)
!241 = !DILocation(line: 177, column: 18, scope: !239)
!242 = !DILocation(line: 177, column: 15, scope: !239)
!243 = !DILocation(line: 178, column: 10, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !3, line: 178, column: 8)
!245 = !DILocation(line: 178, column: 22, scope: !244)
!246 = !DILocation(line: 178, column: 28, scope: !244)
!247 = !DILocation(line: 178, column: 8, scope: !239)
!248 = !DILocation(line: 180, column: 35, scope: !249)
!249 = distinct !DILexicalBlock(scope: !244, file: !3, line: 178, column: 55)
!250 = !DILocation(line: 180, column: 9, scope: !249)
!251 = !DILocation(line: 179, column: 12, scope: !249)
!252 = !DILocation(line: 182, column: 9, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !3, line: 182, column: 9)
!254 = !DILocation(line: 182, column: 9, scope: !249)
!255 = !DILocation(line: 183, column: 30, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !3, line: 182, column: 31)
!257 = !DILocation(line: 183, column: 6, scope: !256)
!258 = !DILocation(line: 184, column: 5, scope: !256)
!259 = !DILocation(line: 185, column: 4, scope: !249)
!260 = !DILocation(line: 186, column: 3, scope: !239)
!261 = !DILocation(line: 176, column: 8, scope: !234)
!262 = !DILocation(line: 175, column: 3, scope: !234)
!263 = distinct !{!263, !237, !264, !223, !224}
!264 = !DILocation(line: 186, column: 3, scope: !231)
!265 = !DILocation(line: 187, column: 2, scope: !229)
!266 = !DILocation(line: 189, column: 33, scope: !175)
!267 = !DILocation(line: 190, column: 11, scope: !175)
!268 = !DILocation(line: 190, column: 9, scope: !175)
!269 = !DILocation(line: 191, column: 33, scope: !175)
!270 = !DILocation(line: 193, column: 8, scope: !175)
!271 = !DILocation(line: 194, column: 2, scope: !175)
!272 = !DILocation(line: 195, column: 1, scope: !175)
!273 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !274, file: !274, line: 646, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!275 = !DISubroutineType(types: !276)
!276 = !{!12, !277}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !278, line: 17, baseType: !13)
!278 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!279 = !DISubprogram(name: "acpi_error", scope: !280, file: !280, line: 901, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!280 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!281 = !DISubroutineType(types: !282)
!282 = !{null, !283, !13, !283, null}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!284 = !DISubprogram(name: "acpi_tb_verify_temp_table", scope: !65, file: !65, line: 46, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!285 = !DISubroutineType(types: !286)
!286 = !{!12, !71, !287, !16}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!288 = !DISubprogram(name: "acpi_tb_uninstall_table", scope: !65, file: !65, line: 93, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !71}
!291 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !274, file: !274, line: 648, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = distinct !DISubprogram(name: "acpi_get_table_header", scope: !3, file: !3, line: 216, type: !293, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{!12, !287, !13, !78}
!295 = !{!296, !297, !298, !299, !300, !301}
!296 = !DILocalVariable(name: "signature", arg: 1, scope: !292, file: !3, line: 216, type: !287)
!297 = !DILocalVariable(name: "instance", arg: 2, scope: !292, file: !3, line: 217, type: !13)
!298 = !DILocalVariable(name: "out_table_header", arg: 3, scope: !292, file: !3, line: 217, type: !78)
!299 = !DILocalVariable(name: "i", scope: !292, file: !3, line: 219, type: !13)
!300 = !DILocalVariable(name: "j", scope: !292, file: !3, line: 220, type: !13)
!301 = !DILocalVariable(name: "header", scope: !292, file: !3, line: 221, type: !78)
!302 = !DILocation(line: 216, column: 29, scope: !292)
!303 = !DILocation(line: 217, column: 13, scope: !292)
!304 = !DILocation(line: 217, column: 49, scope: !292)
!305 = !DILocation(line: 219, column: 2, scope: !292)
!306 = !DILocation(line: 219, column: 6, scope: !292)
!307 = !DILocation(line: 220, column: 2, scope: !292)
!308 = !DILocation(line: 220, column: 6, scope: !292)
!309 = !DILocation(line: 221, column: 2, scope: !292)
!310 = !DILocation(line: 221, column: 28, scope: !292)
!311 = !DILocation(line: 225, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !292, file: !3, line: 225, column: 6)
!313 = !DILocation(line: 225, column: 17, scope: !312)
!314 = !DILocation(line: 225, column: 21, scope: !312)
!315 = !DILocation(line: 225, column: 6, scope: !292)
!316 = !DILocation(line: 226, column: 3, scope: !317)
!317 = distinct !DILexicalBlock(scope: !312, file: !3, line: 225, column: 39)
!318 = !DILocation(line: 231, column: 9, scope: !319)
!319 = distinct !DILexicalBlock(scope: !292, file: !3, line: 231, column: 2)
!320 = !DILocation(line: 231, column: 16, scope: !319)
!321 = !DILocation(line: 231, column: 7, scope: !319)
!322 = !DILocation(line: 231, column: 21, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !3, line: 231, column: 2)
!324 = !DILocation(line: 231, column: 50, scope: !323)
!325 = !DILocation(line: 231, column: 23, scope: !323)
!326 = !DILocation(line: 231, column: 2, scope: !319)
!327 = !DILocation(line: 233, column: 8, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 233, column: 7)
!329 = distinct !DILexicalBlock(scope: !323, file: !3, line: 232, column: 12)
!330 = !DILocation(line: 233, column: 7, scope: !329)
!331 = !DILocation(line: 236, column: 4, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !3, line: 235, column: 20)
!333 = !DILocation(line: 239, column: 7, scope: !334)
!334 = distinct !DILexicalBlock(scope: !329, file: !3, line: 239, column: 7)
!335 = !DILocation(line: 239, column: 13, scope: !334)
!336 = !DILocation(line: 239, column: 11, scope: !334)
!337 = !DILocation(line: 239, column: 7, scope: !329)
!338 = !DILocation(line: 240, column: 4, scope: !339)
!339 = distinct !DILexicalBlock(scope: !334, file: !3, line: 239, column: 23)
!340 = !DILocation(line: 243, column: 33, scope: !341)
!341 = distinct !DILexicalBlock(scope: !329, file: !3, line: 243, column: 7)
!342 = !DILocation(line: 243, column: 40, scope: !341)
!343 = !DILocation(line: 243, column: 8, scope: !341)
!344 = !DILocation(line: 243, column: 43, scope: !341)
!345 = !DILocation(line: 243, column: 7, scope: !329)
!346 = !DILocation(line: 244, column: 34, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !3, line: 244, column: 8)
!348 = distinct !DILexicalBlock(scope: !341, file: !3, line: 243, column: 52)
!349 = !DILocation(line: 244, column: 41, scope: !347)
!350 = !DILocation(line: 244, column: 9, scope: !347)
!351 = !DILocation(line: 244, column: 44, scope: !347)
!352 = !DILocation(line: 244, column: 50, scope: !347)
!353 = !DILocation(line: 245, column: 33, scope: !347)
!354 = !DILocation(line: 244, column: 8, scope: !348)
!355 = !DILocation(line: 249, column: 14, scope: !356)
!356 = distinct !DILexicalBlock(scope: !347, file: !3, line: 246, column: 45)
!357 = !DILocation(line: 249, column: 21, scope: !356)
!358 = !DILocation(line: 248, column: 28, scope: !356)
!359 = !DILocation(line: 249, column: 24, scope: !356)
!360 = !DILocation(line: 248, column: 9, scope: !356)
!361 = !DILocation(line: 247, column: 12, scope: !356)
!362 = !DILocation(line: 252, column: 10, scope: !363)
!363 = distinct !DILexicalBlock(scope: !356, file: !3, line: 252, column: 9)
!364 = !DILocation(line: 252, column: 9, scope: !356)
!365 = !DILocation(line: 253, column: 6, scope: !366)
!366 = distinct !DILexicalBlock(scope: !363, file: !3, line: 252, column: 18)
!367 = !DILocation(line: 256, column: 12, scope: !356)
!368 = !DILocation(line: 256, column: 30, scope: !356)
!369 = !DILocation(line: 256, column: 5, scope: !356)
!370 = !DILocation(line: 258, column: 26, scope: !356)
!371 = !DILocation(line: 258, column: 5, scope: !356)
!372 = !DILocation(line: 261, column: 4, scope: !356)
!373 = !DILocation(line: 262, column: 5, scope: !374)
!374 = distinct !DILexicalBlock(scope: !347, file: !3, line: 261, column: 11)
!375 = !DILocation(line: 264, column: 3, scope: !348)
!376 = !DILocation(line: 265, column: 11, scope: !377)
!377 = distinct !DILexicalBlock(scope: !341, file: !3, line: 264, column: 10)
!378 = !DILocation(line: 266, column: 36, scope: !377)
!379 = !DILocation(line: 266, column: 43, scope: !377)
!380 = !DILocation(line: 266, column: 11, scope: !377)
!381 = !DILocation(line: 266, column: 46, scope: !377)
!382 = !DILocation(line: 265, column: 4, scope: !377)
!383 = !DILocation(line: 269, column: 3, scope: !329)
!384 = !DILocation(line: 232, column: 8, scope: !323)
!385 = !DILocation(line: 231, column: 2, scope: !323)
!386 = distinct !{!386, !326, !387, !223, !224}
!387 = !DILocation(line: 270, column: 2, scope: !319)
!388 = !DILocation(line: 272, column: 2, scope: !292)
!389 = !DILocation(line: 273, column: 1, scope: !292)
!390 = !DISubprogram(name: "acpi_os_map_memory", scope: !169, file: !169, line: 183, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!391 = !DISubroutineType(types: !392)
!392 = !{!20, !76, !5}
!393 = !DISubprogram(name: "acpi_os_unmap_memory", scope: !169, file: !169, line: 187, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !20, !5}
!396 = distinct !DISubprogram(name: "acpi_get_table", scope: !3, file: !3, line: 297, type: !397, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !400)
!397 = !DISubroutineType(types: !398)
!398 = !{!12, !287, !13, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!400 = !{!401, !402, !403, !404, !405, !406, !407}
!401 = !DILocalVariable(name: "signature", arg: 1, scope: !396, file: !3, line: 297, type: !287)
!402 = !DILocalVariable(name: "instance", arg: 2, scope: !396, file: !3, line: 298, type: !13)
!403 = !DILocalVariable(name: "out_table", arg: 3, scope: !396, file: !3, line: 298, type: !399)
!404 = !DILocalVariable(name: "i", scope: !396, file: !3, line: 300, type: !13)
!405 = !DILocalVariable(name: "j", scope: !396, file: !3, line: 301, type: !13)
!406 = !DILocalVariable(name: "status", scope: !396, file: !3, line: 302, type: !12)
!407 = !DILocalVariable(name: "table_desc", scope: !396, file: !3, line: 303, type: !71)
!408 = !DILocation(line: 297, column: 22, scope: !396)
!409 = !DILocation(line: 298, column: 13, scope: !396)
!410 = !DILocation(line: 298, column: 51, scope: !396)
!411 = !DILocation(line: 300, column: 2, scope: !396)
!412 = !DILocation(line: 300, column: 6, scope: !396)
!413 = !DILocation(line: 301, column: 2, scope: !396)
!414 = !DILocation(line: 301, column: 6, scope: !396)
!415 = !DILocation(line: 302, column: 2, scope: !396)
!416 = !DILocation(line: 302, column: 14, scope: !396)
!417 = !DILocation(line: 303, column: 2, scope: !396)
!418 = !DILocation(line: 303, column: 26, scope: !396)
!419 = !DILocation(line: 307, column: 7, scope: !420)
!420 = distinct !DILexicalBlock(scope: !396, file: !3, line: 307, column: 6)
!421 = !DILocation(line: 307, column: 17, scope: !420)
!422 = !DILocation(line: 307, column: 21, scope: !420)
!423 = !DILocation(line: 307, column: 6, scope: !396)
!424 = !DILocation(line: 308, column: 3, scope: !425)
!425 = distinct !DILexicalBlock(scope: !420, file: !3, line: 307, column: 32)
!426 = !DILocation(line: 316, column: 3, scope: !396)
!427 = !DILocation(line: 316, column: 13, scope: !396)
!428 = !DILocation(line: 318, column: 8, scope: !396)
!429 = !DILocation(line: 322, column: 9, scope: !430)
!430 = distinct !DILexicalBlock(scope: !396, file: !3, line: 322, column: 2)
!431 = !DILocation(line: 322, column: 16, scope: !430)
!432 = !DILocation(line: 322, column: 7, scope: !430)
!433 = !DILocation(line: 322, column: 21, scope: !434)
!434 = distinct !DILexicalBlock(scope: !430, file: !3, line: 322, column: 2)
!435 = !DILocation(line: 322, column: 50, scope: !434)
!436 = !DILocation(line: 322, column: 23, scope: !434)
!437 = !DILocation(line: 322, column: 2, scope: !430)
!438 = !DILocation(line: 324, column: 42, scope: !439)
!439 = distinct !DILexicalBlock(scope: !434, file: !3, line: 323, column: 12)
!440 = !DILocation(line: 324, column: 49, scope: !439)
!441 = !DILocation(line: 324, column: 17, scope: !439)
!442 = !DILocation(line: 324, column: 14, scope: !439)
!443 = !DILocation(line: 326, column: 8, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !3, line: 326, column: 7)
!445 = !DILocation(line: 326, column: 7, scope: !439)
!446 = !DILocation(line: 327, column: 4, scope: !447)
!447 = distinct !DILexicalBlock(scope: !444, file: !3, line: 326, column: 65)
!448 = !DILocation(line: 330, column: 7, scope: !449)
!449 = distinct !DILexicalBlock(scope: !439, file: !3, line: 330, column: 7)
!450 = !DILocation(line: 330, column: 13, scope: !449)
!451 = !DILocation(line: 330, column: 11, scope: !449)
!452 = !DILocation(line: 330, column: 7, scope: !439)
!453 = !DILocation(line: 331, column: 4, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !3, line: 330, column: 23)
!455 = !DILocation(line: 334, column: 30, scope: !439)
!456 = !DILocation(line: 334, column: 42, scope: !439)
!457 = !DILocation(line: 334, column: 12, scope: !439)
!458 = !DILocation(line: 334, column: 10, scope: !439)
!459 = !DILocation(line: 335, column: 3, scope: !439)
!460 = !DILocation(line: 323, column: 8, scope: !434)
!461 = !DILocation(line: 322, column: 2, scope: !434)
!462 = distinct !{!462, !437, !463, !223, !224}
!463 = !DILocation(line: 336, column: 2, scope: !430)
!464 = !DILocation(line: 338, column: 8, scope: !396)
!465 = !DILocation(line: 339, column: 10, scope: !396)
!466 = !DILocation(line: 339, column: 2, scope: !396)
!467 = !DILocation(line: 340, column: 1, scope: !396)
!468 = !DISubprogram(name: "acpi_tb_get_table", scope: !65, file: !65, line: 138, type: !469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!469 = !DISubroutineType(types: !470)
!470 = !{!12, !71, !399}
!471 = distinct !DISubprogram(name: "acpi_put_table", scope: !3, file: !3, line: 359, type: !472, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !78}
!474 = !{!475, !476, !477}
!475 = !DILocalVariable(name: "table", arg: 1, scope: !471, file: !3, line: 359, type: !78)
!476 = !DILocalVariable(name: "i", scope: !471, file: !3, line: 361, type: !13)
!477 = !DILocalVariable(name: "table_desc", scope: !471, file: !3, line: 362, type: !71)
!478 = !DILocation(line: 359, column: 47, scope: !471)
!479 = !DILocation(line: 361, column: 2, scope: !471)
!480 = !DILocation(line: 361, column: 6, scope: !471)
!481 = !DILocation(line: 362, column: 2, scope: !471)
!482 = !DILocation(line: 362, column: 26, scope: !471)
!483 = !DILocation(line: 366, column: 7, scope: !484)
!484 = distinct !DILexicalBlock(scope: !471, file: !3, line: 366, column: 6)
!485 = !DILocation(line: 366, column: 6, scope: !471)
!486 = !DILocation(line: 367, column: 3, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !3, line: 366, column: 14)
!488 = !DILocation(line: 370, column: 8, scope: !471)
!489 = !DILocation(line: 374, column: 9, scope: !490)
!490 = distinct !DILexicalBlock(scope: !471, file: !3, line: 374, column: 2)
!491 = !DILocation(line: 374, column: 7, scope: !490)
!492 = !DILocation(line: 374, column: 14, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !3, line: 374, column: 2)
!494 = !DILocation(line: 374, column: 43, scope: !493)
!495 = !DILocation(line: 374, column: 16, scope: !493)
!496 = !DILocation(line: 374, column: 2, scope: !490)
!497 = !DILocation(line: 375, column: 42, scope: !498)
!498 = distinct !DILexicalBlock(scope: !493, file: !3, line: 374, column: 69)
!499 = !DILocation(line: 375, column: 49, scope: !498)
!500 = !DILocation(line: 375, column: 17, scope: !498)
!501 = !DILocation(line: 375, column: 14, scope: !498)
!502 = !DILocation(line: 377, column: 7, scope: !503)
!503 = distinct !DILexicalBlock(scope: !498, file: !3, line: 377, column: 7)
!504 = !DILocation(line: 377, column: 19, scope: !503)
!505 = !DILocation(line: 377, column: 30, scope: !503)
!506 = !DILocation(line: 377, column: 27, scope: !503)
!507 = !DILocation(line: 377, column: 7, scope: !498)
!508 = !DILocation(line: 378, column: 4, scope: !509)
!509 = distinct !DILexicalBlock(scope: !503, file: !3, line: 377, column: 37)
!510 = !DILocation(line: 381, column: 21, scope: !498)
!511 = !DILocation(line: 381, column: 3, scope: !498)
!512 = !DILocation(line: 382, column: 3, scope: !498)
!513 = !DILocation(line: 374, column: 65, scope: !493)
!514 = !DILocation(line: 374, column: 2, scope: !493)
!515 = distinct !{!515, !496, !516, !223, !224}
!516 = !DILocation(line: 383, column: 2, scope: !490)
!517 = !DILocation(line: 385, column: 8, scope: !471)
!518 = !DILocation(line: 386, column: 2, scope: !471)
!519 = !DILocation(line: 387, column: 1, scope: !471)
!520 = !DISubprogram(name: "acpi_tb_put_table", scope: !65, file: !65, line: 141, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!521 = distinct !DISubprogram(name: "acpi_get_table_by_index", scope: !3, file: !3, line: 405, type: !522, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !524)
!522 = !DISubroutineType(types: !523)
!523 = !{!12, !13, !399}
!524 = !{!525, !526, !527, !528}
!525 = !DILocalVariable(name: "table_index", arg: 1, scope: !521, file: !3, line: 405, type: !13)
!526 = !DILocalVariable(name: "out_table", arg: 2, scope: !521, file: !3, line: 405, type: !399)
!527 = !DILocalVariable(name: "status", scope: !521, file: !3, line: 407, type: !12)
!528 = !DILabel(scope: !521, name: "unlock_and_exit", file: !3, line: 437)
!529 = !DILocation(line: 405, column: 29, scope: !521)
!530 = !DILocation(line: 405, column: 69, scope: !521)
!531 = !DILocation(line: 407, column: 2, scope: !521)
!532 = !DILocation(line: 407, column: 14, scope: !521)
!533 = !DILocation(line: 413, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !521, file: !3, line: 413, column: 6)
!535 = !DILocation(line: 413, column: 6, scope: !521)
!536 = !DILocation(line: 414, column: 3, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !3, line: 413, column: 18)
!538 = !DILocation(line: 422, column: 3, scope: !521)
!539 = !DILocation(line: 422, column: 13, scope: !521)
!540 = !DILocation(line: 424, column: 8, scope: !521)
!541 = !DILocation(line: 428, column: 6, scope: !542)
!542 = distinct !DILexicalBlock(scope: !521, file: !3, line: 428, column: 6)
!543 = !DILocation(line: 428, column: 46, scope: !542)
!544 = !DILocation(line: 428, column: 18, scope: !542)
!545 = !DILocation(line: 428, column: 6, scope: !521)
!546 = !DILocation(line: 429, column: 10, scope: !547)
!547 = distinct !DILexicalBlock(scope: !542, file: !3, line: 428, column: 67)
!548 = !DILocation(line: 430, column: 3, scope: !547)
!549 = !DILocation(line: 434, column: 50, scope: !521)
!550 = !DILocation(line: 434, column: 57, scope: !521)
!551 = !DILocation(line: 434, column: 25, scope: !521)
!552 = !DILocation(line: 435, column: 10, scope: !521)
!553 = !DILocation(line: 434, column: 6, scope: !521)
!554 = !DILocation(line: 433, column: 9, scope: !521)
!555 = !DILocation(line: 433, column: 2, scope: !521)
!556 = !DILocation(line: 437, column: 1, scope: !521)
!557 = !DILocation(line: 438, column: 8, scope: !521)
!558 = !DILocation(line: 439, column: 2, scope: !521)
!559 = !DILocation(line: 440, column: 1, scope: !521)
!560 = distinct !DISubprogram(name: "acpi_install_table_handler", scope: !3, file: !3, line: 457, type: !561, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !567)
!561 = !DISubroutineType(types: !562)
!562 = !{!12, !563, !20}
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_table_handler", file: !6, line: 1080, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!12, !13, !20, !20}
!567 = !{!568, !569, !570, !571}
!568 = !DILocalVariable(name: "handler", arg: 1, scope: !560, file: !3, line: 457, type: !563)
!569 = !DILocalVariable(name: "context", arg: 2, scope: !560, file: !3, line: 457, type: !20)
!570 = !DILocalVariable(name: "status", scope: !560, file: !3, line: 459, type: !12)
!571 = !DILabel(scope: !560, name: "cleanup", file: !3, line: 484)
!572 = !DILocation(line: 457, column: 47, scope: !560)
!573 = !DILocation(line: 457, column: 62, scope: !560)
!574 = !DILocation(line: 459, column: 2, scope: !560)
!575 = !DILocation(line: 459, column: 14, scope: !560)
!576 = !DILocation(line: 463, column: 7, scope: !577)
!577 = distinct !DILexicalBlock(scope: !560, file: !3, line: 463, column: 6)
!578 = !DILocation(line: 463, column: 6, scope: !560)
!579 = !DILocation(line: 464, column: 3, scope: !580)
!580 = distinct !DILexicalBlock(scope: !577, file: !3, line: 463, column: 16)
!581 = !DILocation(line: 467, column: 11, scope: !560)
!582 = !DILocation(line: 467, column: 9, scope: !560)
!583 = !DILocation(line: 468, column: 6, scope: !584)
!584 = distinct !DILexicalBlock(scope: !560, file: !3, line: 468, column: 6)
!585 = !DILocation(line: 468, column: 6, scope: !560)
!586 = !DILocation(line: 469, column: 3, scope: !587)
!587 = distinct !DILexicalBlock(scope: !584, file: !3, line: 468, column: 28)
!588 = !DILocation(line: 474, column: 6, scope: !589)
!589 = distinct !DILexicalBlock(scope: !560, file: !3, line: 474, column: 6)
!590 = !DILocation(line: 474, column: 6, scope: !560)
!591 = !DILocation(line: 475, column: 10, scope: !592)
!592 = distinct !DILexicalBlock(scope: !589, file: !3, line: 474, column: 30)
!593 = !DILocation(line: 476, column: 3, scope: !592)
!594 = !DILocation(line: 481, column: 27, scope: !560)
!595 = !DILocation(line: 481, column: 25, scope: !560)
!596 = !DILocation(line: 482, column: 35, scope: !560)
!597 = !DILocation(line: 482, column: 33, scope: !560)
!598 = !DILocation(line: 482, column: 2, scope: !560)
!599 = !DILocation(line: 484, column: 1, scope: !560)
!600 = !DILocation(line: 485, column: 8, scope: !560)
!601 = !DILocation(line: 486, column: 2, scope: !560)
!602 = !DILocation(line: 487, column: 1, scope: !560)
!603 = distinct !DISubprogram(name: "acpi_remove_table_handler", scope: !3, file: !3, line: 503, type: !604, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{!12, !563}
!606 = !{!607, !608, !609}
!607 = !DILocalVariable(name: "handler", arg: 1, scope: !603, file: !3, line: 503, type: !563)
!608 = !DILocalVariable(name: "status", scope: !603, file: !3, line: 505, type: !12)
!609 = !DILabel(scope: !603, name: "cleanup", file: !3, line: 525)
!610 = !DILocation(line: 503, column: 58, scope: !603)
!611 = !DILocation(line: 505, column: 2, scope: !603)
!612 = !DILocation(line: 505, column: 14, scope: !603)
!613 = !DILocation(line: 509, column: 11, scope: !603)
!614 = !DILocation(line: 509, column: 9, scope: !603)
!615 = !DILocation(line: 510, column: 6, scope: !616)
!616 = distinct !DILexicalBlock(scope: !603, file: !3, line: 510, column: 6)
!617 = !DILocation(line: 510, column: 6, scope: !603)
!618 = !DILocation(line: 511, column: 3, scope: !619)
!619 = distinct !DILexicalBlock(scope: !616, file: !3, line: 510, column: 28)
!620 = !DILocation(line: 516, column: 7, scope: !621)
!621 = distinct !DILexicalBlock(scope: !603, file: !3, line: 516, column: 6)
!622 = !DILocation(line: 516, column: 15, scope: !621)
!623 = !DILocation(line: 516, column: 18, scope: !621)
!624 = !DILocation(line: 516, column: 29, scope: !621)
!625 = !DILocation(line: 516, column: 26, scope: !621)
!626 = !DILocation(line: 516, column: 6, scope: !603)
!627 = !DILocation(line: 517, column: 10, scope: !628)
!628 = distinct !DILexicalBlock(scope: !621, file: !3, line: 516, column: 53)
!629 = !DILocation(line: 518, column: 3, scope: !628)
!630 = !DILocation(line: 523, column: 25, scope: !603)
!631 = !DILocation(line: 523, column: 2, scope: !603)
!632 = !DILocation(line: 525, column: 1, scope: !603)
!633 = !DILocation(line: 526, column: 8, scope: !603)
!634 = !DILocation(line: 527, column: 2, scope: !603)
!635 = !DILocation(line: 528, column: 1, scope: !603)
