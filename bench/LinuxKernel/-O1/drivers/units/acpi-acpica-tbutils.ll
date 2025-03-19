; ModuleID = 'drivers/acpi/acpica/tbutils.c'
source_filename = "drivers/acpi/acpica/tbutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_table_list = type { ptr, i32, i32, i8 }
%struct.acpi_table_desc = type { i64, ptr, i32, %union.acpi_name_union, i16, i8, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_table_rsdp = type <{ [8 x i8], i8, [6 x i8], i8, i32, i32, i64, i8, [3 x i8] }>

@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@acpi_gbl_FACS = external dso_local global ptr, align 8
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@acpi_gbl_use32_bit_facs_addresses = external dso_local global i8, align 1
@acpi_gbl_xfacs_index = external dso_local global i32, align 4
@acpi_gbl_facs_index = external dso_local global i32, align 4
@acpi_gbl_original_dsdt_header = external dso_local global %struct.acpi_table_header, align 1
@acpi_gbl_DSDT = external dso_local global ptr, align 8
@_acpi_module_name = internal constant [8 x i8] c"tbutils\00", align 1, !dbg !0
@.str = private unnamed_addr constant [65 x i8] c"The DSDT has been corrupted or replaced - old, new headers below\00", align 1, !dbg !72
@.str.1 = private unnamed_addr constant [120 x i8] c"Please send DMI info to linux-acpi@vger.kernel.org\0AIf system does not work as expected, please boot with acpi=copy_dsdt\00", align 1, !dbg !77
@acpi_gbl_root_table_list = external dso_local global %struct.acpi_table_list, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not copy DSDT of length 0x%X\00", align 1, !dbg !82
@acpi_gbl_dsdt_index = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"Forced DSDT copy: length 0x%05X copied locally, original unmapped\00", align 1, !dbg !87
@acpi_gbl_do_not_use_xsdt = external dso_local global i8, align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Invalid table length 0x%X in RSDT/XSDT\00", align 1, !dbg !92
@.str.5 = private unnamed_addr constant [5 x i8] c"FACP\00", align 1, !dbg !97
@acpi_gbl_fadt_index = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Table %p, Validation count overflows\0A\00", align 1, !dbg !102
@.str.7 = private unnamed_addr constant [39 x i8] c"Table %p, Validation count underflows\0A\00", align 1, !dbg !107
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !109

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_initialize_facs() #0 align 16 !dbg !125 {
entry:
  %retval = alloca i32, align 4
  %facs = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %facs) #14, !dbg !150
  call void @llvm.dbg.declare(metadata ptr %facs, metadata !129, metadata !DIExpression()), !dbg !151
  %0 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !152
  %tobool = icmp ne i8 %0, 0, !dbg !152
  br i1 %tobool, label %if.then, label %if.else, !dbg !154

if.then:                                          ; preds = %entry
  store ptr null, ptr @acpi_gbl_FACS, align 8, !dbg !155
  store i32 0, ptr %retval, align 4, !dbg !157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !157

if.else:                                          ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 43), align 1, !dbg !158
  %tobool1 = icmp ne i64 %1, 0, !dbg !160
  br i1 %tobool1, label %land.lhs.true, label %if.else5, !dbg !161

land.lhs.true:                                    ; preds = %if.else
  %2 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 1), align 1, !dbg !162
  %tobool2 = icmp ne i32 %2, 0, !dbg !163
  br i1 %tobool2, label %lor.lhs.false, label %if.then4, !dbg !164

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i8, ptr @acpi_gbl_use32_bit_facs_addresses, align 1, !dbg !165
  %tobool3 = icmp ne i8 %3, 0, !dbg !165
  br i1 %tobool3, label %if.else5, label %if.then4, !dbg !166

if.then4:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr @acpi_gbl_xfacs_index, align 4, !dbg !167
  %5 = ptrtoint ptr %facs to i64, !dbg !169
  %6 = inttoptr i64 %5 to ptr, !dbg !169
  %call = call i32 @acpi_get_table_by_index(i32 noundef %4, ptr noundef %6) #15, !dbg !170
  %7 = load ptr, ptr %facs, align 8, !dbg !171
  store ptr %7, ptr @acpi_gbl_FACS, align 8, !dbg !172
  br label %if.end9, !dbg !173

if.else5:                                         ; preds = %lor.lhs.false, %if.else
  %8 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 1), align 1, !dbg !174
  %tobool6 = icmp ne i32 %8, 0, !dbg !176
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !177

if.then7:                                         ; preds = %if.else5
  %9 = load i32, ptr @acpi_gbl_facs_index, align 4, !dbg !178
  %10 = ptrtoint ptr %facs to i64, !dbg !180
  %11 = inttoptr i64 %10 to ptr, !dbg !180
  %call8 = call i32 @acpi_get_table_by_index(i32 noundef %9, ptr noundef %11) #15, !dbg !181
  %12 = load ptr, ptr %facs, align 8, !dbg !182
  store ptr %12, ptr @acpi_gbl_FACS, align 8, !dbg !183
  br label %if.end, !dbg !184

if.end:                                           ; preds = %if.then7, %if.else5
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then4
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  store i32 0, ptr %retval, align 4, !dbg !185
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !185

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %facs) #14, !dbg !186
  %13 = load i32, ptr %retval, align 4, !dbg !186
  ret i32 %13, !dbg !186
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !187 dso_local i32 @acpi_get_table_by_index(i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_tb_check_dsdt_header() #0 align 16 !dbg !191 {
entry:
  %0 = load i32, ptr getelementptr inbounds (%struct.acpi_table_header, ptr @acpi_gbl_original_dsdt_header, i32 0, i32 1), align 1, !dbg !194
  %1 = load ptr, ptr @acpi_gbl_DSDT, align 8, !dbg !196
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %1, i32 0, i32 1, !dbg !197
  %2 = load i32, ptr %length, align 1, !dbg !197
  %cmp = icmp ne i32 %0, %2, !dbg !198
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !199

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8, ptr getelementptr inbounds (%struct.acpi_table_header, ptr @acpi_gbl_original_dsdt_header, i32 0, i32 3), align 1, !dbg !200
  %conv = zext i8 %3 to i32, !dbg !201
  %4 = load ptr, ptr @acpi_gbl_DSDT, align 8, !dbg !202
  %checksum = getelementptr inbounds %struct.acpi_table_header, ptr %4, i32 0, i32 3, !dbg !203
  %5 = load i8, ptr %checksum, align 1, !dbg !203
  %conv1 = zext i8 %5 to i32, !dbg !202
  %cmp2 = icmp ne i32 %conv, %conv1, !dbg !204
  br i1 %cmp2, label %if.then, label %if.end, !dbg !205

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (ptr, i32, ptr, ...) @acpi_bios_error(ptr noundef @_acpi_module_name, i32 noundef 87, ptr noundef @.str) #15, !dbg !206
  call void @acpi_tb_print_table_header(i64 noundef 0, ptr noundef @acpi_gbl_original_dsdt_header) #15, !dbg !208
  %6 = load ptr, ptr @acpi_gbl_DSDT, align 8, !dbg !209
  call void @acpi_tb_print_table_header(i64 noundef 0, ptr noundef %6) #15, !dbg !210
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 94, ptr noundef @.str.1) #15, !dbg !211
  %7 = load ptr, ptr @acpi_gbl_DSDT, align 8, !dbg !212
  %length4 = getelementptr inbounds %struct.acpi_table_header, ptr %7, i32 0, i32 1, !dbg !213
  %8 = load i32, ptr %length4, align 1, !dbg !213
  store i32 %8, ptr getelementptr inbounds (%struct.acpi_table_header, ptr @acpi_gbl_original_dsdt_header, i32 0, i32 1), align 1, !dbg !214
  %9 = load ptr, ptr @acpi_gbl_DSDT, align 8, !dbg !215
  %checksum5 = getelementptr inbounds %struct.acpi_table_header, ptr %9, i32 0, i32 3, !dbg !216
  %10 = load i8, ptr %checksum5, align 1, !dbg !216
  store i8 %10, ptr getelementptr inbounds (%struct.acpi_table_header, ptr @acpi_gbl_original_dsdt_header, i32 0, i32 3), align 1, !dbg !217
  br label %if.end, !dbg !218

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void, !dbg !219
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !220 dso_local void @acpi_bios_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !224 dso_local void @acpi_tb_print_table_header(i64 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !228 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_tb_copy_dsdt(i32 noundef %table_index) #0 align 16 !dbg !229 {
entry:
  %retval = alloca ptr, align 8
  %table_index.addr = alloca i32, align 4
  %new_table = alloca ptr, align 8
  %table_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !233, metadata !DIExpression()), !dbg !251
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_table) #14, !dbg !252
  call void @llvm.dbg.declare(metadata ptr %new_table, metadata !234, metadata !DIExpression()), !dbg !253
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_desc) #14, !dbg !254
  call void @llvm.dbg.declare(metadata ptr %table_desc, metadata !235, metadata !DIExpression()), !dbg !255
  %0 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !256
  %1 = load i32, ptr %table_index.addr, align 4, !dbg !257
  %idxprom = zext i32 %1 to i64, !dbg !258
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %0, i64 %idxprom, !dbg !258
  store ptr %arrayidx, ptr %table_desc, align 8, !dbg !259
  %2 = load ptr, ptr %table_desc, align 8, !dbg !260
  %length = getelementptr inbounds %struct.acpi_table_desc, ptr %2, i32 0, i32 2, !dbg !260
  %3 = load i32, ptr %length, align 8, !dbg !260
  %conv = zext i32 %3 to i64, !dbg !260
  %call = call ptr @acpi_os_allocate(i64 noundef %conv) #15, !dbg !260
  store ptr %call, ptr %new_table, align 8, !dbg !261
  %4 = load ptr, ptr %new_table, align 8, !dbg !262
  %tobool = icmp ne ptr %4, null, !dbg !262
  br i1 %tobool, label %if.end, label %if.then, !dbg !264

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %table_desc, align 8, !dbg !265
  %length1 = getelementptr inbounds %struct.acpi_table_desc, ptr %5, i32 0, i32 2, !dbg !265
  %6 = load i32, ptr %length1, align 8, !dbg !265
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 129, ptr noundef @.str.2, i32 noundef %6) #15, !dbg !265
  store ptr null, ptr %retval, align 8, !dbg !267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !267

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %new_table, align 8, !dbg !268
  %8 = load ptr, ptr %table_desc, align 8, !dbg !269
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %8, i32 0, i32 1, !dbg !270
  %9 = load ptr, ptr %pointer, align 8, !dbg !270
  %10 = load ptr, ptr %table_desc, align 8, !dbg !271
  %length2 = getelementptr inbounds %struct.acpi_table_desc, ptr %10, i32 0, i32 2, !dbg !272
  %11 = load i32, ptr %length2, align 8, !dbg !272
  %conv3 = zext i32 %11 to i64, !dbg !271
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %9, i64 %conv3, i1 false), !dbg !273
  %12 = load ptr, ptr %table_desc, align 8, !dbg !274
  call void @acpi_tb_uninstall_table(ptr noundef %12) #15, !dbg !275
  %13 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !276
  %14 = load i32, ptr @acpi_gbl_dsdt_index, align 4, !dbg !277
  %idxprom4 = zext i32 %14 to i64, !dbg !278
  %arrayidx5 = getelementptr %struct.acpi_table_desc, ptr %13, i64 %idxprom4, !dbg !278
  %15 = load ptr, ptr %new_table, align 8, !dbg !279
  %16 = ptrtoint ptr %15 to i64, !dbg !279
  %17 = load ptr, ptr %new_table, align 8, !dbg !280
  call void @acpi_tb_init_table_descriptor(ptr noundef %arrayidx5, i64 noundef %16, i8 noundef zeroext 2, ptr noundef %17) #15, !dbg !281
  %18 = load ptr, ptr %new_table, align 8, !dbg !282
  %length6 = getelementptr inbounds %struct.acpi_table_header, ptr %18, i32 0, i32 1, !dbg !282
  %19 = load i32, ptr %length6, align 1, !dbg !282
  call void (ptr, ...) @acpi_info(ptr noundef @.str.3, i32 noundef %19) #15, !dbg !282
  %20 = load ptr, ptr %new_table, align 8, !dbg !283
  store ptr %20, ptr %retval, align 8, !dbg !284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !284

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_desc) #14, !dbg !285
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_table) #14, !dbg !285
  %21 = load ptr, ptr %retval, align 8, !dbg !285
  ret ptr %21, !dbg !285
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate(i64 noundef %size) #4 align 16 !dbg !286 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !291, metadata !DIExpression()), !dbg !302
  %0 = load i64, ptr %size.addr, align 8, !dbg !303
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #14, !dbg !304
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !292, metadata !DIExpression()), !dbg !304
  br label %do.body, !dbg !304

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !294, metadata !DIExpression()), !dbg !305
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !297, metadata !DIExpression()), !dbg !305
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !305
  %conv = zext i1 %cmp to i32, !dbg !305
  store i32 1, ptr %tmp, align 4, !dbg !305
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !306
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !306
  %1 = load i32, ptr %tmp, align 4, !dbg !305
  %call = call i64 @arch_local_save_flags() #15, !dbg !306
  store i64 %call, ptr %_flags, align 8, !dbg !306
  br label %do.cond, !dbg !306

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !306

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #14, !dbg !307
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !298, metadata !DIExpression()), !dbg !307
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #14, !dbg !307
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !301, metadata !DIExpression()), !dbg !307
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !307
  %conv6 = zext i1 %cmp5 to i32, !dbg !307
  store i32 1, ptr %tmp7, align 4, !dbg !307
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #14, !dbg !308
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #14, !dbg !308
  %2 = load i32, ptr %tmp7, align 4, !dbg !307
  %3 = load i64, ptr %_flags, align 8, !dbg !308
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #15, !dbg !308
  store i32 %call9, ptr %tmp8, align 4, !dbg !308
  %4 = load i32, ptr %tmp8, align 4, !dbg !308
  store i32 %4, ptr %tmp1, align 4, !dbg !306
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #14, !dbg !309
  %5 = load i32, ptr %tmp1, align 4, !dbg !304
  %tobool = icmp ne i32 %5, 0, !dbg !309
  %6 = zext i1 %tobool to i64, !dbg !309
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !309
  %call10 = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %cond) #16, !dbg !310
  ret ptr %call10, !dbg !311
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !312 dso_local void @acpi_tb_uninstall_table(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !315 dso_local void @acpi_tb_init_table_descriptor(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !318 dso_local void @acpi_info(ptr noundef, ...) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_tb_parse_root_table(i64 noundef %rsdp_address) #6 section ".init.text" align 16 !dbg !321 {
entry:
  %retval = alloca i32, align 4
  %rsdp_address.addr = alloca i64, align 8
  %rsdp = alloca ptr, align 8
  %table_entry_size = alloca i32, align 4
  %i = alloca i32, align 4
  %table_count = alloca i32, align 4
  %table = alloca ptr, align 8
  %address = alloca i64, align 8
  %length = alloca i32, align 4
  %table_entry = alloca ptr, align 8
  %status = alloca i32, align 4
  %table_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %rsdp_address, ptr %rsdp_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsdp_address.addr, metadata !325, metadata !DIExpression()), !dbg !352
  call void @llvm.lifetime.start.p0(i64 8, ptr %rsdp) #14, !dbg !353
  call void @llvm.dbg.declare(metadata ptr %rsdp, metadata !326, metadata !DIExpression()), !dbg !354
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_entry_size) #14, !dbg !355
  call void @llvm.dbg.declare(metadata ptr %table_entry_size, metadata !339, metadata !DIExpression()), !dbg !356
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !357
  call void @llvm.dbg.declare(metadata ptr %i, metadata !340, metadata !DIExpression()), !dbg !358
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_count) #14, !dbg !359
  call void @llvm.dbg.declare(metadata ptr %table_count, metadata !341, metadata !DIExpression()), !dbg !360
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #14, !dbg !361
  call void @llvm.dbg.declare(metadata ptr %table, metadata !342, metadata !DIExpression()), !dbg !362
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #14, !dbg !363
  call void @llvm.dbg.declare(metadata ptr %address, metadata !343, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #14, !dbg !365
  call void @llvm.dbg.declare(metadata ptr %length, metadata !344, metadata !DIExpression()), !dbg !366
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_entry) #14, !dbg !367
  call void @llvm.dbg.declare(metadata ptr %table_entry, metadata !345, metadata !DIExpression()), !dbg !368
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !369
  call void @llvm.dbg.declare(metadata ptr %status, metadata !346, metadata !DIExpression()), !dbg !370
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_index) #14, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %table_index, metadata !347, metadata !DIExpression()), !dbg !372
  %0 = load i64, ptr %rsdp_address.addr, align 8, !dbg !373
  %call = call ptr @acpi_os_map_memory(i64 noundef %0, i64 noundef 36) #15, !dbg !374
  store ptr %call, ptr %rsdp, align 8, !dbg !375
  %1 = load ptr, ptr %rsdp, align 8, !dbg !376
  %tobool = icmp ne ptr %1, null, !dbg !376
  br i1 %tobool, label %if.end, label %if.then, !dbg !378

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !379

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %rsdp_address.addr, align 8, !dbg !381
  %3 = load ptr, ptr %rsdp, align 8, !dbg !382
  %4 = ptrtoint ptr %3 to i64, !dbg !382
  %5 = inttoptr i64 %4 to ptr, !dbg !382
  call void @acpi_tb_print_table_header(i64 noundef %2, ptr noundef %5) #15, !dbg !383
  %6 = load ptr, ptr %rsdp, align 8, !dbg !384
  %revision = getelementptr inbounds %struct.acpi_table_rsdp, ptr %6, i32 0, i32 3, !dbg !386
  %7 = load i8, ptr %revision, align 1, !dbg !386
  %conv = zext i8 %7 to i32, !dbg !384
  %cmp = icmp sgt i32 %conv, 1, !dbg !387
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !388

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %rsdp, align 8, !dbg !389
  %xsdt_physical_address = getelementptr inbounds %struct.acpi_table_rsdp, ptr %8, i32 0, i32 6, !dbg !390
  %9 = load i64, ptr %xsdt_physical_address, align 1, !dbg !390
  %tobool2 = icmp ne i64 %9, 0, !dbg !389
  br i1 %tobool2, label %land.lhs.true3, label %if.else, !dbg !391

land.lhs.true3:                                   ; preds = %land.lhs.true
  %10 = load i8, ptr @acpi_gbl_do_not_use_xsdt, align 1, !dbg !392
  %tobool4 = icmp ne i8 %10, 0, !dbg !392
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !393

if.then5:                                         ; preds = %land.lhs.true3
  %11 = load ptr, ptr %rsdp, align 8, !dbg !394
  %xsdt_physical_address6 = getelementptr inbounds %struct.acpi_table_rsdp, ptr %11, i32 0, i32 6, !dbg !396
  %12 = load i64, ptr %xsdt_physical_address6, align 1, !dbg !396
  store i64 %12, ptr %address, align 8, !dbg !397
  store i32 8, ptr %table_entry_size, align 4, !dbg !398
  br label %if.end8, !dbg !399

if.else:                                          ; preds = %land.lhs.true3, %land.lhs.true, %if.end
  %13 = load ptr, ptr %rsdp, align 8, !dbg !400
  %rsdt_physical_address = getelementptr inbounds %struct.acpi_table_rsdp, ptr %13, i32 0, i32 4, !dbg !402
  %14 = load i32, ptr %rsdt_physical_address, align 1, !dbg !402
  %conv7 = zext i32 %14 to i64, !dbg !403
  store i64 %conv7, ptr %address, align 8, !dbg !404
  store i32 4, ptr %table_entry_size, align 4, !dbg !405
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %15 = load ptr, ptr %rsdp, align 8, !dbg !406
  call void @acpi_os_unmap_memory(ptr noundef %15, i64 noundef 36) #15, !dbg !407
  %16 = load i64, ptr %address, align 8, !dbg !408
  %call9 = call ptr @acpi_os_map_memory(i64 noundef %16, i64 noundef 36) #15, !dbg !409
  store ptr %call9, ptr %table, align 8, !dbg !410
  %17 = load ptr, ptr %table, align 8, !dbg !411
  %tobool10 = icmp ne ptr %17, null, !dbg !411
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !413

if.then11:                                        ; preds = %if.end8
  store i32 4, ptr %retval, align 4, !dbg !414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !414

if.end12:                                         ; preds = %if.end8
  %18 = load i64, ptr %address, align 8, !dbg !416
  %19 = load ptr, ptr %table, align 8, !dbg !417
  call void @acpi_tb_print_table_header(i64 noundef %18, ptr noundef %19) #15, !dbg !418
  %20 = load ptr, ptr %table, align 8, !dbg !419
  %length13 = getelementptr inbounds %struct.acpi_table_header, ptr %20, i32 0, i32 1, !dbg !420
  %21 = load i32, ptr %length13, align 1, !dbg !420
  store i32 %21, ptr %length, align 4, !dbg !421
  %22 = load ptr, ptr %table, align 8, !dbg !422
  call void @acpi_os_unmap_memory(ptr noundef %22, i64 noundef 36) #15, !dbg !423
  %23 = load i32, ptr %length, align 4, !dbg !424
  %conv14 = zext i32 %23 to i64, !dbg !424
  %24 = load i32, ptr %table_entry_size, align 4, !dbg !426
  %conv15 = zext i32 %24 to i64, !dbg !426
  %add = add i64 36, %conv15, !dbg !427
  %cmp16 = icmp ult i64 %conv14, %add, !dbg !428
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !429

if.then18:                                        ; preds = %if.end12
  %25 = load i32, ptr %length, align 4, !dbg !430
  call void (ptr, i32, ptr, ...) @acpi_bios_error(ptr noundef @_acpi_module_name, i32 noundef 290, ptr noundef @.str.4, i32 noundef %25) #15, !dbg !430
  store i32 8197, ptr %retval, align 4, !dbg !432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !432

if.end19:                                         ; preds = %if.end12
  %26 = load i64, ptr %address, align 8, !dbg !433
  %27 = load i32, ptr %length, align 4, !dbg !434
  %conv20 = zext i32 %27 to i64, !dbg !434
  %call21 = call ptr @acpi_os_map_memory(i64 noundef %26, i64 noundef %conv20) #15, !dbg !435
  store ptr %call21, ptr %table, align 8, !dbg !436
  %28 = load ptr, ptr %table, align 8, !dbg !437
  %tobool22 = icmp ne ptr %28, null, !dbg !437
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !439

if.then23:                                        ; preds = %if.end19
  store i32 4, ptr %retval, align 4, !dbg !440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !440

if.end24:                                         ; preds = %if.end19
  %29 = load ptr, ptr %table, align 8, !dbg !442
  %30 = load i32, ptr %length, align 4, !dbg !443
  %call25 = call i32 @acpi_ut_verify_checksum(ptr noundef %29, i32 noundef %30) #15, !dbg !444
  store i32 %call25, ptr %status, align 4, !dbg !445
  %31 = load i32, ptr %status, align 4, !dbg !446
  %tobool26 = icmp ne i32 %31, 0, !dbg !446
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !448

if.then27:                                        ; preds = %if.end24
  %32 = load ptr, ptr %table, align 8, !dbg !449
  %33 = load i32, ptr %length, align 4, !dbg !451
  %conv28 = zext i32 %33 to i64, !dbg !451
  call void @acpi_os_unmap_memory(ptr noundef %32, i64 noundef %conv28) #15, !dbg !452
  %34 = load i32, ptr %status, align 4, !dbg !453
  store i32 %34, ptr %retval, align 4, !dbg !453
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !453

if.end29:                                         ; preds = %if.end24
  %35 = load ptr, ptr %table, align 8, !dbg !454
  %length30 = getelementptr inbounds %struct.acpi_table_header, ptr %35, i32 0, i32 1, !dbg !455
  %36 = load i32, ptr %length30, align 1, !dbg !455
  %conv31 = zext i32 %36 to i64, !dbg !454
  %sub = sub i64 %conv31, 36, !dbg !456
  %37 = load i32, ptr %table_entry_size, align 4, !dbg !457
  %conv32 = zext i32 %37 to i64, !dbg !457
  %div = udiv i64 %sub, %conv32, !dbg !458
  %conv33 = trunc i64 %div to i32, !dbg !459
  store i32 %conv33, ptr %table_count, align 4, !dbg !460
  %38 = load ptr, ptr %table, align 8, !dbg !461
  %39 = ptrtoint ptr %38 to i64, !dbg !461
  %40 = inttoptr i64 %39 to ptr, !dbg !461
  %add.ptr = getelementptr i8, ptr %40, i64 36, !dbg !461
  %41 = ptrtoint ptr %add.ptr to i64, !dbg !461
  %42 = inttoptr i64 %41 to ptr, !dbg !461
  store ptr %42, ptr %table_entry, align 8, !dbg !462
  store i32 0, ptr %i, align 4, !dbg !463
  br label %for.cond, !dbg !464

for.cond:                                         ; preds = %for.inc, %if.end29
  %43 = load i32, ptr %i, align 4, !dbg !465
  %44 = load i32, ptr %table_count, align 4, !dbg !466
  %cmp34 = icmp ult i32 %43, %44, !dbg !467
  br i1 %cmp34, label %for.body, label %for.end, !dbg !468

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %table_entry, align 8, !dbg !469
  %46 = load i32, ptr %table_entry_size, align 4, !dbg !470
  %call36 = call i64 @acpi_tb_get_root_table_entry(ptr noundef %45, i32 noundef %46) #15, !dbg !471
  store i64 %call36, ptr %address, align 8, !dbg !472
  %47 = load i64, ptr %address, align 8, !dbg !473
  %tobool37 = icmp ne i64 %47, 0, !dbg !473
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !475

if.then38:                                        ; preds = %for.body
  br label %next_table, !dbg !476

if.end39:                                         ; preds = %for.body
  %48 = load i64, ptr %address, align 8, !dbg !478
  %call40 = call i32 @acpi_tb_install_standard_table(i64 noundef %48, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef %table_index) #15, !dbg !479
  store i32 %call40, ptr %status, align 4, !dbg !480
  %49 = load i32, ptr %status, align 4, !dbg !481
  %tobool41 = icmp ne i32 %49, 0, !dbg !481
  br i1 %tobool41, label %if.end46, label %land.lhs.true42, !dbg !483

land.lhs.true42:                                  ; preds = %if.end39
  %50 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !484
  %51 = load i32, ptr %table_index, align 4, !dbg !484
  %idxprom = zext i32 %51 to i64, !dbg !484
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %50, i64 %idxprom, !dbg !484
  %signature = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx, i32 0, i32 3, !dbg !484
  %52 = ptrtoint ptr %signature to i64, !dbg !484
  %53 = inttoptr i64 %52 to ptr, !dbg !484
  %54 = load i32, ptr %53, align 4, !dbg !484
  %55 = load i32, ptr @.str.5, align 4, !dbg !484
  %cmp43 = icmp eq i32 %54, %55, !dbg !484
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !485

if.then45:                                        ; preds = %land.lhs.true42
  %56 = load i32, ptr %table_index, align 4, !dbg !486
  store i32 %56, ptr @acpi_gbl_fadt_index, align 4, !dbg !488
  call void @acpi_tb_parse_fadt() #15, !dbg !489
  br label %if.end46, !dbg !490

if.end46:                                         ; preds = %if.then45, %land.lhs.true42, %if.end39
  br label %next_table, !dbg !484

next_table:                                       ; preds = %if.end46, %if.then38
  call void @llvm.dbg.label(metadata !348), !dbg !491
  %57 = load i32, ptr %table_entry_size, align 4, !dbg !492
  %58 = load ptr, ptr %table_entry, align 8, !dbg !493
  %idx.ext = zext i32 %57 to i64, !dbg !493
  %add.ptr47 = getelementptr i8, ptr %58, i64 %idx.ext, !dbg !493
  store ptr %add.ptr47, ptr %table_entry, align 8, !dbg !493
  br label %for.inc, !dbg !494

for.inc:                                          ; preds = %next_table
  %59 = load i32, ptr %i, align 4, !dbg !495
  %inc = add i32 %59, 1, !dbg !495
  store i32 %inc, ptr %i, align 4, !dbg !495
  br label %for.cond, !dbg !496, !llvm.loop !497

for.end:                                          ; preds = %for.cond
  %60 = load ptr, ptr %table, align 8, !dbg !501
  %61 = load i32, ptr %length, align 4, !dbg !502
  %conv48 = zext i32 %61 to i64, !dbg !502
  call void @acpi_os_unmap_memory(ptr noundef %60, i64 noundef %conv48) #15, !dbg !503
  store i32 0, ptr %retval, align 4, !dbg !504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !504

cleanup:                                          ; preds = %for.end, %if.then27, %if.then23, %if.then18, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_index) #14, !dbg !505
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !505
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_entry) #14, !dbg !505
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #14, !dbg !505
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #14, !dbg !505
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #14, !dbg !505
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_count) #14, !dbg !505
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !505
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_entry_size) #14, !dbg !505
  call void @llvm.lifetime.end.p0(i64 8, ptr %rsdp) #14, !dbg !505
  %62 = load i32, ptr %retval, align 4, !dbg !505
  ret i32 %62, !dbg !505
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !506 dso_local ptr @acpi_os_map_memory(i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !510 dso_local void @acpi_os_unmap_memory(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !513 dso_local i32 @acpi_ut_verify_checksum(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @acpi_tb_get_root_table_entry(ptr noundef %table_entry, i32 noundef %table_entry_size) #0 align 16 !dbg !517 {
entry:
  %retval = alloca i64, align 8
  %table_entry.addr = alloca ptr, align 8
  %table_entry_size.addr = alloca i32, align 4
  %address32 = alloca i32, align 4
  %address64 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table_entry, ptr %table_entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_entry.addr, metadata !521, metadata !DIExpression()), !dbg !525
  store i32 %table_entry_size, ptr %table_entry_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_entry_size.addr, metadata !522, metadata !DIExpression()), !dbg !526
  call void @llvm.lifetime.start.p0(i64 4, ptr %address32) #14, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %address32, metadata !523, metadata !DIExpression()), !dbg !528
  call void @llvm.lifetime.start.p0(i64 8, ptr %address64) #14, !dbg !529
  call void @llvm.dbg.declare(metadata ptr %address64, metadata !524, metadata !DIExpression()), !dbg !530
  %0 = load i32, ptr %table_entry_size.addr, align 4, !dbg !531
  %conv = zext i32 %0 to i64, !dbg !531
  %cmp = icmp eq i64 %conv, 4, !dbg !533
  br i1 %cmp, label %if.then, label %if.else, !dbg !534

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %table_entry.addr, align 8, !dbg !535
  %2 = load i32, ptr %1, align 4, !dbg !535
  store i32 %2, ptr %address32, align 4, !dbg !535
  %3 = load i32, ptr %address32, align 4, !dbg !537
  %conv2 = zext i32 %3 to i64, !dbg !537
  store i64 %conv2, ptr %retval, align 8, !dbg !538
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !538

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %table_entry.addr, align 8, !dbg !539
  %5 = load i64, ptr %4, align 8, !dbg !539
  store i64 %5, ptr %address64, align 8, !dbg !539
  %6 = load i64, ptr %address64, align 8, !dbg !541
  store i64 %6, ptr %retval, align 8, !dbg !542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !542

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %address64) #14, !dbg !543
  call void @llvm.lifetime.end.p0(i64 4, ptr %address32) #14, !dbg !543
  %7 = load i64, ptr %retval, align 8, !dbg !543
  ret i64 %7, !dbg !543
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !544 dso_local i32 @acpi_tb_install_standard_table(i64 noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !547 dso_local void @acpi_tb_parse_fadt() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_get_table(ptr noundef %table_desc, ptr noundef %out_table) #0 align 16 !dbg !548 {
entry:
  %retval = alloca i32, align 4
  %table_desc.addr = alloca ptr, align 8
  %out_table.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table_desc, ptr %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_desc.addr, metadata !552, metadata !DIExpression()), !dbg !555
  store ptr %out_table, ptr %out_table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_table.addr, metadata !553, metadata !DIExpression()), !dbg !556
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !557
  call void @llvm.dbg.declare(metadata ptr %status, metadata !554, metadata !DIExpression()), !dbg !558
  %0 = load ptr, ptr %table_desc.addr, align 8, !dbg !559
  %validation_count = getelementptr inbounds %struct.acpi_table_desc, ptr %0, i32 0, i32 6, !dbg !561
  %1 = load i16, ptr %validation_count, align 4, !dbg !561
  %conv = zext i16 %1 to i32, !dbg !559
  %cmp = icmp eq i32 %conv, 0, !dbg !562
  br i1 %cmp, label %if.then, label %if.end3, !dbg !563

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %table_desc.addr, align 8, !dbg !564
  %call = call i32 @acpi_tb_validate_table(ptr noundef %2) #15, !dbg !566
  store i32 %call, ptr %status, align 4, !dbg !567
  %3 = load i32, ptr %status, align 4, !dbg !568
  %tobool = icmp ne i32 %3, 0, !dbg !568
  br i1 %tobool, label %if.then2, label %if.end, !dbg !570

if.then2:                                         ; preds = %if.then
  %4 = load i32, ptr %status, align 4, !dbg !571
  store i32 %4, ptr %retval, align 4, !dbg !571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !571

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !573

if.end3:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %table_desc.addr, align 8, !dbg !574
  %validation_count4 = getelementptr inbounds %struct.acpi_table_desc, ptr %5, i32 0, i32 6, !dbg !576
  %6 = load i16, ptr %validation_count4, align 4, !dbg !576
  %conv5 = zext i16 %6 to i32, !dbg !574
  %cmp6 = icmp slt i32 %conv5, 65535, !dbg !577
  br i1 %cmp6, label %if.then8, label %if.end16, !dbg !578

if.then8:                                         ; preds = %if.end3
  %7 = load ptr, ptr %table_desc.addr, align 8, !dbg !579
  %validation_count9 = getelementptr inbounds %struct.acpi_table_desc, ptr %7, i32 0, i32 6, !dbg !581
  %8 = load i16, ptr %validation_count9, align 4, !dbg !582
  %inc = add i16 %8, 1, !dbg !582
  store i16 %inc, ptr %validation_count9, align 4, !dbg !582
  %9 = load ptr, ptr %table_desc.addr, align 8, !dbg !583
  %validation_count10 = getelementptr inbounds %struct.acpi_table_desc, ptr %9, i32 0, i32 6, !dbg !585
  %10 = load i16, ptr %validation_count10, align 4, !dbg !585
  %conv11 = zext i16 %10 to i32, !dbg !583
  %cmp12 = icmp sge i32 %conv11, 65535, !dbg !586
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !587

if.then14:                                        ; preds = %if.then8
  %11 = load ptr, ptr %table_desc.addr, align 8, !dbg !588
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 394, ptr noundef @.str.6, ptr noundef %11) #15, !dbg !588
  br label %if.end15, !dbg !590

if.end15:                                         ; preds = %if.then14, %if.then8
  br label %if.end16, !dbg !591

if.end16:                                         ; preds = %if.end15, %if.end3
  %12 = load ptr, ptr %table_desc.addr, align 8, !dbg !592
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %12, i32 0, i32 1, !dbg !593
  %13 = load ptr, ptr %pointer, align 8, !dbg !593
  %14 = load ptr, ptr %out_table.addr, align 8, !dbg !594
  store ptr %13, ptr %14, align 8, !dbg !595
  store i32 0, ptr %retval, align 4, !dbg !596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !596

cleanup:                                          ; preds = %if.end16, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !597
  %15 = load i32, ptr %retval, align 4, !dbg !597
  ret i32 %15, !dbg !597
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !598 dso_local i32 @acpi_tb_validate_table(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !601 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_tb_put_table(ptr noundef %table_desc) #0 align 16 !dbg !602 {
entry:
  %table_desc.addr = alloca ptr, align 8
  store ptr %table_desc, ptr %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_desc.addr, metadata !604, metadata !DIExpression()), !dbg !605
  %0 = load ptr, ptr %table_desc.addr, align 8, !dbg !606
  %validation_count = getelementptr inbounds %struct.acpi_table_desc, ptr %0, i32 0, i32 6, !dbg !608
  %1 = load i16, ptr %validation_count, align 4, !dbg !608
  %conv = zext i16 %1 to i32, !dbg !606
  %cmp = icmp slt i32 %conv, 65535, !dbg !609
  br i1 %cmp, label %if.then, label %if.end8, !dbg !610

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %table_desc.addr, align 8, !dbg !611
  %validation_count2 = getelementptr inbounds %struct.acpi_table_desc, ptr %2, i32 0, i32 6, !dbg !613
  %3 = load i16, ptr %validation_count2, align 4, !dbg !614
  %dec = add i16 %3, -1, !dbg !614
  store i16 %dec, ptr %validation_count2, align 4, !dbg !614
  %4 = load ptr, ptr %table_desc.addr, align 8, !dbg !615
  %validation_count3 = getelementptr inbounds %struct.acpi_table_desc, ptr %4, i32 0, i32 6, !dbg !617
  %5 = load i16, ptr %validation_count3, align 4, !dbg !617
  %conv4 = zext i16 %5 to i32, !dbg !615
  %cmp5 = icmp sge i32 %conv4, 65535, !dbg !618
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !619

if.then7:                                         ; preds = %if.then
  %6 = load ptr, ptr %table_desc.addr, align 8, !dbg !620
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 432, ptr noundef @.str.7, ptr noundef %6) #15, !dbg !620
  br label %return, !dbg !622

if.end:                                           ; preds = %if.then
  br label %if.end8, !dbg !623

if.end8:                                          ; preds = %if.end, %entry
  %7 = load ptr, ptr %table_desc.addr, align 8, !dbg !624
  %validation_count9 = getelementptr inbounds %struct.acpi_table_desc, ptr %7, i32 0, i32 6, !dbg !626
  %8 = load i16, ptr %validation_count9, align 4, !dbg !626
  %conv10 = zext i16 %8 to i32, !dbg !624
  %cmp11 = icmp eq i32 %conv10, 0, !dbg !627
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !628

if.then13:                                        ; preds = %if.end8
  %9 = load ptr, ptr %table_desc.addr, align 8, !dbg !629
  call void @acpi_tb_invalidate_table(ptr noundef %9) #15, !dbg !631
  br label %if.end14, !dbg !632

if.end14:                                         ; preds = %if.then13, %if.end8
  br label %return, !dbg !633

return:                                           ; preds = %if.end14, %if.then7
  ret void, !dbg !634
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !635 dso_local void @acpi_tb_invalidate_table(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !636 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !644, metadata !DIExpression()), !dbg !649
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !645, metadata !DIExpression()), !dbg !650
  %0 = load i64, ptr %size.addr, align 8, !dbg !651
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !652
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !653

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !654
  %tobool = icmp ne i64 %2, 0, !dbg !654
  br i1 %tobool, label %if.then, label %if.end7, !dbg !655

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !656
  call void @llvm.dbg.declare(metadata ptr %index, metadata !646, metadata !DIExpression()), !dbg !657
  %3 = load i64, ptr %size.addr, align 8, !dbg !658
  %cmp = icmp ugt i64 %3, 8192, !dbg !660
  br i1 %cmp, label %if.then1, label %if.end, !dbg !661

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !662
  %5 = load i32, ptr %flags.addr, align 4, !dbg !663
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !664
  store ptr %call, ptr %retval, align 8, !dbg !665
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !665

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !666
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !666
  store i32 %call2, ptr %index, align 4, !dbg !667
  %7 = load i32, ptr %flags.addr, align 4, !dbg !668
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !669
  %9 = ptrtoint ptr %8 to i64, !dbg !669
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !670
  %idxprom = zext i32 %call3 to i64, !dbg !671
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !671
  %10 = load i32, ptr %index, align 4, !dbg !672
  %idxprom4 = zext i32 %10 to i64, !dbg !671
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !671
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !671
  %12 = load i32, ptr %flags.addr, align 4, !dbg !673
  %13 = load i64, ptr %size.addr, align 8, !dbg !674
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !675
  store ptr %call6, ptr %retval, align 8, !dbg !676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !676

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !677
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !678
  %15 = load i32, ptr %flags.addr, align 4, !dbg !679
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !680
  store ptr %call8, ptr %retval, align 8, !dbg !681
  br label %return, !dbg !681

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !682
  ret ptr %16, !dbg !682
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #8 align 16 !dbg !683 {
entry:
  %call = call i64 @native_save_fl() #15, !dbg !687
  ret i64 %call, !dbg !688
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #8 align 16 !dbg !689 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !694, metadata !DIExpression()), !dbg !695
  %0 = load i64, ptr %flags.addr, align 8, !dbg !696
  %and = and i64 %0, 512, !dbg !697
  %tobool = icmp ne i64 %and, 0, !dbg !698
  %lnot = xor i1 %tobool, true, !dbg !698
  %lnot.ext = zext i1 %lnot to i32, !dbg !698
  ret i32 %lnot.ext, !dbg !699
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !700 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !701 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !707, metadata !DIExpression()), !dbg !709
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !708, metadata !DIExpression()), !dbg !710
  %0 = load i64, ptr %size.addr, align 8, !dbg !711
  %tobool = icmp ne i64 %0, 0, !dbg !711
  br i1 %tobool, label %if.end, label %if.then, !dbg !713

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !714
  br label %return, !dbg !714

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !715
  %cmp = icmp ule i64 %1, 8, !dbg !717
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !718

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !719
  br label %return, !dbg !719

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !720
  %cmp3 = icmp ugt i64 %2, 64, !dbg !722
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !723

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !724
  %cmp4 = icmp ule i64 %3, 96, !dbg !725
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !726

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !727
  br label %return, !dbg !727

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !728
  %cmp7 = icmp ugt i64 %4, 128, !dbg !730
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !731

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !732
  %cmp9 = icmp ule i64 %5, 192, !dbg !733
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !734

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !735
  br label %return, !dbg !735

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !736
  %cmp12 = icmp ule i64 %6, 8, !dbg !738
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !739

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !740
  br label %return, !dbg !740

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !741
  %cmp15 = icmp ule i64 %7, 16, !dbg !743
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !744

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !745
  br label %return, !dbg !745

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !746
  %cmp18 = icmp ule i64 %8, 32, !dbg !748
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !749

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !750
  br label %return, !dbg !750

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !751
  %cmp21 = icmp ule i64 %9, 64, !dbg !753
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !754

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !755
  br label %return, !dbg !755

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !756
  %cmp24 = icmp ule i64 %10, 128, !dbg !758
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !759

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !760
  br label %return, !dbg !760

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !761
  %cmp27 = icmp ule i64 %11, 256, !dbg !763
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !764

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !765
  br label %return, !dbg !765

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !766
  %cmp30 = icmp ule i64 %12, 512, !dbg !768
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !769

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !770
  br label %return, !dbg !770

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !771
  %cmp33 = icmp ule i64 %13, 1024, !dbg !773
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !774

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !775
  br label %return, !dbg !775

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !776
  %cmp36 = icmp ule i64 %14, 2048, !dbg !778
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !779

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !780
  br label %return, !dbg !780

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !781
  %cmp39 = icmp ule i64 %15, 4096, !dbg !783
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !784

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !785
  br label %return, !dbg !785

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !786
  %cmp42 = icmp ule i64 %16, 8192, !dbg !788
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !789

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !790
  br label %return, !dbg !790

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !791
  %cmp45 = icmp ule i64 %17, 16384, !dbg !793
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !794

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !795
  br label %return, !dbg !795

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !796
  %cmp48 = icmp ule i64 %18, 32768, !dbg !798
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !799

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !800
  br label %return, !dbg !800

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !801
  %cmp51 = icmp ule i64 %19, 65536, !dbg !803
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !804

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !805
  br label %return, !dbg !805

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !806
  %cmp54 = icmp ule i64 %20, 131072, !dbg !808
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !809

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !810
  br label %return, !dbg !810

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !811
  %cmp57 = icmp ule i64 %21, 262144, !dbg !813
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !814

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !815
  br label %return, !dbg !815

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !816
  %cmp60 = icmp ule i64 %22, 524288, !dbg !818
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !819

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !820
  br label %return, !dbg !820

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !821
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !823
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !824

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !825
  br label %return, !dbg !825

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !826
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !828
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !829

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !830
  br label %return, !dbg !830

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !831, !range !833, !noundef !834
  %tobool69 = trunc i8 %25 to i1, !dbg !831
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !835

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !836

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #18, !dbg !837, !srcloc !840
  unreachable, !dbg !837

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !841

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !842

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !843

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !845

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !843

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 480, i32 0, i64 12) #14, !dbg !847, !srcloc !849
  br label %do.end75, !dbg !847

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !843

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !850
  br label %return, !dbg !850

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !851
  ret i32 %26, !dbg !851
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !852 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !858 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !862, metadata !DIExpression()), !dbg !864
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !863, metadata !DIExpression()), !dbg !865
  %0 = load i32, ptr %flags.addr, align 4, !dbg !866
  %and = and i32 %0, 17, !dbg !866
  %cmp = icmp eq i32 %and, 0, !dbg !866
  %lnot = xor i1 %cmp, true, !dbg !866
  %lnot1 = xor i1 %lnot, true, !dbg !866
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !866
  %conv = sext i32 %lnot.ext to i64, !dbg !866
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !866
  %tobool = icmp ne i64 %expval, 0, !dbg !866
  br i1 %tobool, label %if.then, label %if.end, !dbg !868

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !869
  br label %return, !dbg !869

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !870
  %and2 = and i32 %1, 1, !dbg !872
  %tobool3 = icmp ne i32 %and2, 0, !dbg !872
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !873

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !874
  br label %return, !dbg !874

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !875
  br label %return, !dbg !875

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !877
  ret i32 %2, !dbg !877
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !878 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !879 dso_local void @__compiletime_assert_173() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #8 align 16 !dbg !880 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !883
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !882, metadata !DIExpression()), !dbg !884
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #14, !dbg !885, !srcloc !886
  %0 = load i64, ptr %flags, align 8, !dbg !887
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !888
  ret i64 %0, !dbg !889
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
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
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !114, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.tbutils.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22tbutils\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/tbutils.ll drivers/acpi/acpica/tbutils.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !71, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/tbutils.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f23f570e12198d8d1c3aad31d6e1bde")
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
!21 = !{!22, !28, !55, !58, !29, !62, !24, !63, !64, !65, !68, !57, !69, !70}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !23, line: 421, baseType: !24)
!23 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !31, line: 68, size: 288, elements: !32)
!31 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!32 = !{!33, !38, !39, !43, !44, !48, !52, !53, !54}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !30, file: !31, line: 69, baseType: !34, size: 32)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !36)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!37}
!37 = !DISubrange(count: 4)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !30, file: !31, line: 70, baseType: !24, size: 32, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !30, file: !31, line: 71, baseType: !40, size: 8, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !42)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !30, file: !31, line: 72, baseType: !40, size: 8, offset: 72)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !30, file: !31, line: 73, baseType: !45, size: 48, offset: 80)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 48, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 6)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !30, file: !31, line: 74, baseType: !49, size: 64, offset: 128)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 8)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !30, file: !31, line: 75, baseType: !24, size: 32, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !30, file: !31, line: 76, baseType: !34, size: 32, offset: 224)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !30, file: !31, line: 77, baseType: !24, size: 32, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !56, line: 42, baseType: !57)
!56 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !23, line: 127, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !61)
!61 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !23, line: 129, baseType: !59)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !67)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !56, line: 154, baseType: !7)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!71 = !{!72, !77, !82, !87, !92, !97, !102, !107, !0, !109}
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 520, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 65)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 960, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 120)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !3, line: 129, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 280, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 35)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 528, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 66)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !3, line: 290, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 312, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 39)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !3, line: 336, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 40, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 5)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 394, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 304, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 38)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !3, line: 432, type: !94, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 168, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 21)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !50)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!116 = !{i32 7, !"Dwarf Version", i32 5}
!117 = !{i32 2, !"Debug Info Version", i32 3}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 8, !"cf-protection-branch", i32 1}
!120 = !{i32 4, !"function_return_thunk_extern", i32 1}
!121 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!122 = !{i32 1, !"Code Model", i32 2}
!123 = !{i32 1, !"override-stack-alignment", i32 8}
!124 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!125 = distinct !DISubprogram(name: "acpi_tb_initialize_facs", scope: !3, file: !3, line: 35, type: !126, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !128)
!126 = !DISubroutineType(types: !127)
!127 = !{!22}
!128 = !{!129}
!129 = !DILocalVariable(name: "facs", scope: !125, file: !3, line: 37, type: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_facs", file: !31, line: 162, size: 512, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !145, !146}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !131, file: !31, line: 163, baseType: !34, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !131, file: !31, line: 164, baseType: !24, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_signature", scope: !131, file: !31, line: 165, baseType: !24, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_waking_vector", scope: !131, file: !31, line: 166, baseType: !24, size: 32, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "global_lock", scope: !131, file: !31, line: 167, baseType: !24, size: 32, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !31, line: 168, baseType: !24, size: 32, offset: 160)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "xfirmware_waking_vector", scope: !131, file: !31, line: 169, baseType: !59, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !131, file: !31, line: 170, baseType: !40, size: 8, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !131, file: !31, line: 171, baseType: !142, size: 24, offset: 264)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 24, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 3)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ospm_flags", scope: !131, file: !31, line: 172, baseType: !24, size: 32, offset: 288)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !131, file: !31, line: 173, baseType: !147, size: 192, offset: 320)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 192, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 24)
!150 = !DILocation(line: 37, column: 2, scope: !125)
!151 = !DILocation(line: 37, column: 26, scope: !125)
!152 = !DILocation(line: 41, column: 6, scope: !153)
!153 = distinct !DILexicalBlock(scope: !125, file: !3, line: 41, column: 6)
!154 = !DILocation(line: 41, column: 6, scope: !125)
!155 = !DILocation(line: 42, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !3, line: 41, column: 33)
!157 = !DILocation(line: 43, column: 3, scope: !156)
!158 = !DILocation(line: 44, column: 27, scope: !159)
!159 = distinct !DILexicalBlock(scope: !153, file: !3, line: 44, column: 13)
!160 = !DILocation(line: 44, column: 13, scope: !159)
!161 = !DILocation(line: 44, column: 33, scope: !159)
!162 = !DILocation(line: 45, column: 22, scope: !159)
!163 = !DILocation(line: 45, column: 8, scope: !159)
!164 = !DILocation(line: 46, column: 7, scope: !159)
!165 = !DILocation(line: 46, column: 11, scope: !159)
!166 = !DILocation(line: 44, column: 13, scope: !153)
!167 = !DILocation(line: 47, column: 33, scope: !168)
!168 = distinct !DILexicalBlock(scope: !159, file: !3, line: 46, column: 47)
!169 = !DILocation(line: 48, column: 12, scope: !168)
!170 = !DILocation(line: 47, column: 9, scope: !168)
!171 = !DILocation(line: 51, column: 19, scope: !168)
!172 = !DILocation(line: 51, column: 17, scope: !168)
!173 = !DILocation(line: 52, column: 2, scope: !168)
!174 = !DILocation(line: 52, column: 27, scope: !175)
!175 = distinct !DILexicalBlock(scope: !159, file: !3, line: 52, column: 13)
!176 = !DILocation(line: 52, column: 13, scope: !175)
!177 = !DILocation(line: 52, column: 13, scope: !159)
!178 = !DILocation(line: 53, column: 33, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !3, line: 52, column: 33)
!180 = !DILocation(line: 54, column: 12, scope: !179)
!181 = !DILocation(line: 53, column: 9, scope: !179)
!182 = !DILocation(line: 57, column: 19, scope: !179)
!183 = !DILocation(line: 57, column: 17, scope: !179)
!184 = !DILocation(line: 58, column: 2, scope: !179)
!185 = !DILocation(line: 62, column: 2, scope: !125)
!186 = !DILocation(line: 63, column: 1, scope: !125)
!187 = !DISubprogram(name: "acpi_get_table_by_index", scope: !188, file: !188, line: 495, type: !189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!189 = !DISubroutineType(types: !190)
!190 = !{!22, !24, !28}
!191 = distinct !DISubprogram(name: "acpi_tb_check_dsdt_header", scope: !3, file: !3, line: 80, type: !192, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!192 = !DISubroutineType(types: !193)
!193 = !{null}
!194 = !DILocation(line: 85, column: 36, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !3, line: 85, column: 6)
!196 = !DILocation(line: 85, column: 46, scope: !195)
!197 = !DILocation(line: 85, column: 61, scope: !195)
!198 = !DILocation(line: 85, column: 43, scope: !195)
!199 = !DILocation(line: 85, column: 68, scope: !195)
!200 = !DILocation(line: 86, column: 36, scope: !195)
!201 = !DILocation(line: 86, column: 6, scope: !195)
!202 = !DILocation(line: 86, column: 48, scope: !195)
!203 = !DILocation(line: 86, column: 63, scope: !195)
!204 = !DILocation(line: 86, column: 45, scope: !195)
!205 = !DILocation(line: 85, column: 6, scope: !191)
!206 = !DILocation(line: 87, column: 3, scope: !207)
!207 = distinct !DILexicalBlock(scope: !195, file: !3, line: 86, column: 73)
!208 = !DILocation(line: 91, column: 3, scope: !207)
!209 = !DILocation(line: 92, column: 33, scope: !207)
!210 = !DILocation(line: 92, column: 3, scope: !207)
!211 = !DILocation(line: 94, column: 3, scope: !207)
!212 = !DILocation(line: 100, column: 42, scope: !207)
!213 = !DILocation(line: 100, column: 57, scope: !207)
!214 = !DILocation(line: 100, column: 40, scope: !207)
!215 = !DILocation(line: 102, column: 7, scope: !207)
!216 = !DILocation(line: 102, column: 22, scope: !207)
!217 = !DILocation(line: 101, column: 42, scope: !207)
!218 = !DILocation(line: 103, column: 2, scope: !207)
!219 = !DILocation(line: 104, column: 1, scope: !191)
!220 = !DISubprogram(name: "acpi_bios_error", scope: !188, file: !188, line: 920, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !223, !24, !223, null}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!224 = !DISubprogram(name: "acpi_tb_print_table_header", scope: !225, file: !225, line: 124, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = !DIFile(filename: "drivers/acpi/acpica/actables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb0787ba059aac7511e633019dab5fb8")
!226 = !DISubroutineType(types: !227)
!227 = !{null, !62, !29}
!228 = !DISubprogram(name: "acpi_error", scope: !188, file: !188, line: 901, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = distinct !DISubprogram(name: "acpi_tb_copy_dsdt", scope: !3, file: !3, line: 120, type: !230, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !232)
!230 = !DISubroutineType(types: !231)
!231 = !{!29, !24}
!232 = !{!233, !234, !235}
!233 = !DILocalVariable(name: "table_index", arg: 1, scope: !229, file: !3, line: 120, type: !24)
!234 = !DILocalVariable(name: "new_table", scope: !229, file: !3, line: 122, type: !29)
!235 = !DILocalVariable(name: "table_desc", scope: !229, file: !3, line: 123, type: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !31, line: 335, size: 256, elements: !238)
!238 = !{!239, !240, !241, !242, !247, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !237, file: !31, line: 336, baseType: !62, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !237, file: !31, line: 337, baseType: !29, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !237, file: !31, line: 338, baseType: !24, size: 32, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !237, file: !31, line: 339, baseType: !243, size: 32, offset: 160)
!243 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !31, line: 328, size: 32, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !243, file: !31, line: 329, baseType: !24, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !243, file: !31, line: 330, baseType: !34, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !237, file: !31, line: 340, baseType: !248, size: 16, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !23, line: 445, baseType: !65)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !237, file: !31, line: 341, baseType: !40, size: 8, offset: 208)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !237, file: !31, line: 342, baseType: !65, size: 16, offset: 224)
!251 = !DILocation(line: 120, column: 49, scope: !229)
!252 = !DILocation(line: 122, column: 2, scope: !229)
!253 = !DILocation(line: 122, column: 28, scope: !229)
!254 = !DILocation(line: 123, column: 2, scope: !229)
!255 = !DILocation(line: 123, column: 26, scope: !229)
!256 = !DILocation(line: 125, column: 41, scope: !229)
!257 = !DILocation(line: 125, column: 48, scope: !229)
!258 = !DILocation(line: 125, column: 16, scope: !229)
!259 = !DILocation(line: 125, column: 13, scope: !229)
!260 = !DILocation(line: 127, column: 14, scope: !229)
!261 = !DILocation(line: 127, column: 12, scope: !229)
!262 = !DILocation(line: 128, column: 7, scope: !263)
!263 = distinct !DILexicalBlock(scope: !229, file: !3, line: 128, column: 6)
!264 = !DILocation(line: 128, column: 6, scope: !229)
!265 = !DILocation(line: 129, column: 3, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !3, line: 128, column: 18)
!267 = !DILocation(line: 131, column: 3, scope: !266)
!268 = !DILocation(line: 134, column: 9, scope: !229)
!269 = !DILocation(line: 134, column: 20, scope: !229)
!270 = !DILocation(line: 134, column: 32, scope: !229)
!271 = !DILocation(line: 134, column: 41, scope: !229)
!272 = !DILocation(line: 134, column: 53, scope: !229)
!273 = !DILocation(line: 134, column: 2, scope: !229)
!274 = !DILocation(line: 135, column: 26, scope: !229)
!275 = !DILocation(line: 135, column: 2, scope: !229)
!276 = !DILocation(line: 138, column: 11, scope: !229)
!277 = !DILocation(line: 138, column: 18, scope: !229)
!278 = !DILocation(line: 137, column: 33, scope: !229)
!279 = !DILocation(line: 139, column: 11, scope: !229)
!280 = !DILocation(line: 141, column: 11, scope: !229)
!281 = !DILocation(line: 137, column: 2, scope: !229)
!282 = !DILocation(line: 143, column: 2, scope: !229)
!283 = !DILocation(line: 145, column: 10, scope: !229)
!284 = !DILocation(line: 145, column: 2, scope: !229)
!285 = !DILocation(line: 146, column: 1, scope: !229)
!286 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !287, file: !287, line: 50, type: !288, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !290)
!287 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!288 = !DISubroutineType(types: !289)
!289 = !{!69, !58}
!290 = !{!291, !292, !294, !297, !298, !301}
!291 = !DILocalVariable(name: "size", arg: 1, scope: !286, file: !287, line: 50, type: !58)
!292 = !DILocalVariable(name: "_flags", scope: !293, file: !287, line: 52, type: !57)
!293 = distinct !DILexicalBlock(scope: !286, file: !287, line: 52, column: 23)
!294 = !DILocalVariable(name: "__dummy", scope: !295, file: !287, line: 52, type: !57)
!295 = distinct !DILexicalBlock(scope: !296, file: !287, line: 52, column: 23)
!296 = distinct !DILexicalBlock(scope: !293, file: !287, line: 52, column: 23)
!297 = !DILocalVariable(name: "__dummy2", scope: !295, file: !287, line: 52, type: !57)
!298 = !DILocalVariable(name: "__dummy", scope: !299, file: !287, line: 52, type: !57)
!299 = distinct !DILexicalBlock(scope: !300, file: !287, line: 52, column: 23)
!300 = distinct !DILexicalBlock(scope: !293, file: !287, line: 52, column: 23)
!301 = !DILocalVariable(name: "__dummy2", scope: !299, file: !287, line: 52, type: !57)
!302 = !DILocation(line: 50, column: 48, scope: !286)
!303 = !DILocation(line: 52, column: 17, scope: !286)
!304 = !DILocation(line: 52, column: 23, scope: !293)
!305 = !DILocation(line: 52, column: 23, scope: !295)
!306 = !DILocation(line: 52, column: 23, scope: !296)
!307 = !DILocation(line: 52, column: 23, scope: !299)
!308 = !DILocation(line: 52, column: 23, scope: !300)
!309 = !DILocation(line: 52, column: 23, scope: !286)
!310 = !DILocation(line: 52, column: 9, scope: !286)
!311 = !DILocation(line: 52, column: 2, scope: !286)
!312 = !DISubprogram(name: "acpi_tb_uninstall_table", scope: !225, file: !225, line: 93, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !236}
!315 = !DISubprogram(name: "acpi_tb_init_table_descriptor", scope: !225, file: !225, line: 32, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !236, !62, !40, !29}
!318 = !DISubprogram(name: "acpi_info", scope: !188, file: !188, line: 917, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !223, null}
!321 = distinct !DISubprogram(name: "acpi_tb_parse_root_table", scope: !3, file: !3, line: 223, type: !322, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{!22, !62}
!324 = !{!325, !326, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348}
!325 = !DILocalVariable(name: "rsdp_address", arg: 1, scope: !321, file: !3, line: 223, type: !62)
!326 = !DILocalVariable(name: "rsdp", scope: !321, file: !3, line: 225, type: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_rsdp", file: !31, line: 105, size: 288, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !328, file: !31, line: 106, baseType: !49, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !328, file: !31, line: 107, baseType: !40, size: 8, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !328, file: !31, line: 108, baseType: !45, size: 48, offset: 72)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !328, file: !31, line: 109, baseType: !40, size: 8, offset: 120)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rsdt_physical_address", scope: !328, file: !31, line: 110, baseType: !24, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !328, file: !31, line: 111, baseType: !24, size: 32, offset: 160)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "xsdt_physical_address", scope: !328, file: !31, line: 112, baseType: !59, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "extended_checksum", scope: !328, file: !31, line: 113, baseType: !40, size: 8, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !328, file: !31, line: 114, baseType: !142, size: 24, offset: 264)
!339 = !DILocalVariable(name: "table_entry_size", scope: !321, file: !3, line: 226, type: !24)
!340 = !DILocalVariable(name: "i", scope: !321, file: !3, line: 227, type: !24)
!341 = !DILocalVariable(name: "table_count", scope: !321, file: !3, line: 228, type: !24)
!342 = !DILocalVariable(name: "table", scope: !321, file: !3, line: 229, type: !29)
!343 = !DILocalVariable(name: "address", scope: !321, file: !3, line: 230, type: !62)
!344 = !DILocalVariable(name: "length", scope: !321, file: !3, line: 231, type: !24)
!345 = !DILocalVariable(name: "table_entry", scope: !321, file: !3, line: 232, type: !63)
!346 = !DILocalVariable(name: "status", scope: !321, file: !3, line: 233, type: !22)
!347 = !DILocalVariable(name: "table_index", scope: !321, file: !3, line: 234, type: !24)
!348 = !DILabel(scope: !349, name: "next_table", file: !3, line: 343)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 317, column: 36)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 317, column: 2)
!351 = distinct !DILexicalBlock(scope: !321, file: !3, line: 317, column: 2)
!352 = !DILocation(line: 223, column: 48, scope: !321)
!353 = !DILocation(line: 225, column: 2, scope: !321)
!354 = !DILocation(line: 225, column: 26, scope: !321)
!355 = !DILocation(line: 226, column: 2, scope: !321)
!356 = !DILocation(line: 226, column: 6, scope: !321)
!357 = !DILocation(line: 227, column: 2, scope: !321)
!358 = !DILocation(line: 227, column: 6, scope: !321)
!359 = !DILocation(line: 228, column: 2, scope: !321)
!360 = !DILocation(line: 228, column: 6, scope: !321)
!361 = !DILocation(line: 229, column: 2, scope: !321)
!362 = !DILocation(line: 229, column: 28, scope: !321)
!363 = !DILocation(line: 230, column: 2, scope: !321)
!364 = !DILocation(line: 230, column: 24, scope: !321)
!365 = !DILocation(line: 231, column: 2, scope: !321)
!366 = !DILocation(line: 231, column: 6, scope: !321)
!367 = !DILocation(line: 232, column: 2, scope: !321)
!368 = !DILocation(line: 232, column: 6, scope: !321)
!369 = !DILocation(line: 233, column: 2, scope: !321)
!370 = !DILocation(line: 233, column: 14, scope: !321)
!371 = !DILocation(line: 234, column: 2, scope: !321)
!372 = !DILocation(line: 234, column: 6, scope: !321)
!373 = !DILocation(line: 240, column: 28, scope: !321)
!374 = !DILocation(line: 240, column: 9, scope: !321)
!375 = !DILocation(line: 240, column: 7, scope: !321)
!376 = !DILocation(line: 241, column: 7, scope: !377)
!377 = distinct !DILexicalBlock(scope: !321, file: !3, line: 241, column: 6)
!378 = !DILocation(line: 241, column: 6, scope: !321)
!379 = !DILocation(line: 242, column: 3, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !3, line: 241, column: 13)
!381 = !DILocation(line: 245, column: 29, scope: !321)
!382 = !DILocation(line: 246, column: 8, scope: !321)
!383 = !DILocation(line: 245, column: 2, scope: !321)
!384 = !DILocation(line: 251, column: 7, scope: !385)
!385 = distinct !DILexicalBlock(scope: !321, file: !3, line: 251, column: 6)
!386 = !DILocation(line: 251, column: 13, scope: !385)
!387 = !DILocation(line: 251, column: 22, scope: !385)
!388 = !DILocation(line: 251, column: 27, scope: !385)
!389 = !DILocation(line: 252, column: 6, scope: !385)
!390 = !DILocation(line: 252, column: 12, scope: !385)
!391 = !DILocation(line: 252, column: 34, scope: !385)
!392 = !DILocation(line: 252, column: 38, scope: !385)
!393 = !DILocation(line: 251, column: 6, scope: !321)
!394 = !DILocation(line: 258, column: 36, scope: !395)
!395 = distinct !DILexicalBlock(scope: !385, file: !3, line: 252, column: 64)
!396 = !DILocation(line: 258, column: 42, scope: !395)
!397 = !DILocation(line: 258, column: 11, scope: !395)
!398 = !DILocation(line: 259, column: 20, scope: !395)
!399 = !DILocation(line: 260, column: 2, scope: !395)
!400 = !DILocation(line: 263, column: 36, scope: !401)
!401 = distinct !DILexicalBlock(scope: !385, file: !3, line: 260, column: 9)
!402 = !DILocation(line: 263, column: 42, scope: !401)
!403 = !DILocation(line: 263, column: 13, scope: !401)
!404 = !DILocation(line: 263, column: 11, scope: !401)
!405 = !DILocation(line: 264, column: 20, scope: !401)
!406 = !DILocation(line: 271, column: 23, scope: !321)
!407 = !DILocation(line: 271, column: 2, scope: !321)
!408 = !DILocation(line: 275, column: 29, scope: !321)
!409 = !DILocation(line: 275, column: 10, scope: !321)
!410 = !DILocation(line: 275, column: 8, scope: !321)
!411 = !DILocation(line: 276, column: 7, scope: !412)
!412 = distinct !DILexicalBlock(scope: !321, file: !3, line: 276, column: 6)
!413 = !DILocation(line: 276, column: 6, scope: !321)
!414 = !DILocation(line: 277, column: 3, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !3, line: 276, column: 14)
!416 = !DILocation(line: 280, column: 29, scope: !321)
!417 = !DILocation(line: 280, column: 38, scope: !321)
!418 = !DILocation(line: 280, column: 2, scope: !321)
!419 = !DILocation(line: 286, column: 11, scope: !321)
!420 = !DILocation(line: 286, column: 18, scope: !321)
!421 = !DILocation(line: 286, column: 9, scope: !321)
!422 = !DILocation(line: 287, column: 23, scope: !321)
!423 = !DILocation(line: 287, column: 2, scope: !321)
!424 = !DILocation(line: 289, column: 6, scope: !425)
!425 = distinct !DILexicalBlock(scope: !321, file: !3, line: 289, column: 6)
!426 = !DILocation(line: 289, column: 51, scope: !425)
!427 = !DILocation(line: 289, column: 49, scope: !425)
!428 = !DILocation(line: 289, column: 13, scope: !425)
!429 = !DILocation(line: 289, column: 6, scope: !321)
!430 = !DILocation(line: 290, column: 3, scope: !431)
!431 = distinct !DILexicalBlock(scope: !425, file: !3, line: 289, column: 70)
!432 = !DILocation(line: 293, column: 3, scope: !431)
!433 = !DILocation(line: 296, column: 29, scope: !321)
!434 = !DILocation(line: 296, column: 38, scope: !321)
!435 = !DILocation(line: 296, column: 10, scope: !321)
!436 = !DILocation(line: 296, column: 8, scope: !321)
!437 = !DILocation(line: 297, column: 7, scope: !438)
!438 = distinct !DILexicalBlock(scope: !321, file: !3, line: 297, column: 6)
!439 = !DILocation(line: 297, column: 6, scope: !321)
!440 = !DILocation(line: 298, column: 3, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !3, line: 297, column: 14)
!442 = !DILocation(line: 303, column: 35, scope: !321)
!443 = !DILocation(line: 303, column: 42, scope: !321)
!444 = !DILocation(line: 303, column: 11, scope: !321)
!445 = !DILocation(line: 303, column: 9, scope: !321)
!446 = !DILocation(line: 304, column: 6, scope: !447)
!447 = distinct !DILexicalBlock(scope: !321, file: !3, line: 304, column: 6)
!448 = !DILocation(line: 304, column: 6, scope: !321)
!449 = !DILocation(line: 305, column: 24, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !3, line: 304, column: 28)
!451 = !DILocation(line: 305, column: 31, scope: !450)
!452 = !DILocation(line: 305, column: 3, scope: !450)
!453 = !DILocation(line: 306, column: 3, scope: !450)
!454 = !DILocation(line: 311, column: 23, scope: !321)
!455 = !DILocation(line: 311, column: 30, scope: !321)
!456 = !DILocation(line: 311, column: 37, scope: !321)
!457 = !DILocation(line: 312, column: 8, scope: !321)
!458 = !DILocation(line: 311, column: 73, scope: !321)
!459 = !DILocation(line: 311, column: 16, scope: !321)
!460 = !DILocation(line: 311, column: 14, scope: !321)
!461 = !DILocation(line: 313, column: 16, scope: !321)
!462 = !DILocation(line: 313, column: 14, scope: !321)
!463 = !DILocation(line: 317, column: 9, scope: !351)
!464 = !DILocation(line: 317, column: 7, scope: !351)
!465 = !DILocation(line: 317, column: 14, scope: !350)
!466 = !DILocation(line: 317, column: 18, scope: !350)
!467 = !DILocation(line: 317, column: 16, scope: !350)
!468 = !DILocation(line: 317, column: 2, scope: !351)
!469 = !DILocation(line: 322, column: 36, scope: !349)
!470 = !DILocation(line: 322, column: 49, scope: !349)
!471 = !DILocation(line: 322, column: 7, scope: !349)
!472 = !DILocation(line: 321, column: 11, scope: !349)
!473 = !DILocation(line: 326, column: 8, scope: !474)
!474 = distinct !DILexicalBlock(scope: !349, file: !3, line: 326, column: 7)
!475 = !DILocation(line: 326, column: 7, scope: !349)
!476 = !DILocation(line: 327, column: 4, scope: !477)
!477 = distinct !DILexicalBlock(scope: !474, file: !3, line: 326, column: 17)
!478 = !DILocation(line: 330, column: 43, scope: !349)
!479 = !DILocation(line: 330, column: 12, scope: !349)
!480 = !DILocation(line: 330, column: 10, scope: !349)
!481 = !DILocation(line: 335, column: 7, scope: !482)
!482 = distinct !DILexicalBlock(scope: !349, file: !3, line: 335, column: 7)
!483 = !DILocation(line: 335, column: 28, scope: !482)
!484 = !DILocation(line: 336, column: 7, scope: !482)
!485 = !DILocation(line: 335, column: 7, scope: !349)
!486 = !DILocation(line: 339, column: 26, scope: !487)
!487 = distinct !DILexicalBlock(scope: !482, file: !3, line: 338, column: 23)
!488 = !DILocation(line: 339, column: 24, scope: !487)
!489 = !DILocation(line: 340, column: 4, scope: !487)
!490 = !DILocation(line: 341, column: 3, scope: !487)
!491 = !DILocation(line: 343, column: 1, scope: !349)
!492 = !DILocation(line: 345, column: 18, scope: !349)
!493 = !DILocation(line: 345, column: 15, scope: !349)
!494 = !DILocation(line: 346, column: 2, scope: !349)
!495 = !DILocation(line: 317, column: 32, scope: !350)
!496 = !DILocation(line: 317, column: 2, scope: !350)
!497 = distinct !{!497, !468, !498, !499, !500}
!498 = !DILocation(line: 346, column: 2, scope: !351)
!499 = !{!"llvm.loop.mustprogress"}
!500 = !{!"llvm.loop.unroll.disable"}
!501 = !DILocation(line: 348, column: 23, scope: !321)
!502 = !DILocation(line: 348, column: 30, scope: !321)
!503 = !DILocation(line: 348, column: 2, scope: !321)
!504 = !DILocation(line: 349, column: 2, scope: !321)
!505 = !DILocation(line: 350, column: 1, scope: !321)
!506 = !DISubprogram(name: "acpi_os_map_memory", scope: !507, file: !507, line: 183, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!507 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!508 = !DISubroutineType(types: !509)
!509 = !{!69, !62, !58}
!510 = !DISubprogram(name: "acpi_os_unmap_memory", scope: !507, file: !507, line: 187, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !69, !58}
!513 = !DISubprogram(name: "acpi_ut_verify_checksum", scope: !514, file: !514, line: 174, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!514 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!515 = !DISubroutineType(types: !516)
!516 = !{!22, !29, !24}
!517 = distinct !DISubprogram(name: "acpi_tb_get_root_table_entry", scope: !3, file: !3, line: 166, type: !518, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{!62, !63, !24}
!520 = !{!521, !522, !523, !524}
!521 = !DILocalVariable(name: "table_entry", arg: 1, scope: !517, file: !3, line: 166, type: !63)
!522 = !DILocalVariable(name: "table_entry_size", arg: 2, scope: !517, file: !3, line: 166, type: !24)
!523 = !DILocalVariable(name: "address32", scope: !517, file: !3, line: 168, type: !24)
!524 = !DILocalVariable(name: "address64", scope: !517, file: !3, line: 169, type: !59)
!525 = !DILocation(line: 166, column: 34, scope: !517)
!526 = !DILocation(line: 166, column: 51, scope: !517)
!527 = !DILocation(line: 168, column: 2, scope: !517)
!528 = !DILocation(line: 168, column: 6, scope: !517)
!529 = !DILocation(line: 169, column: 2, scope: !517)
!530 = !DILocation(line: 169, column: 6, scope: !517)
!531 = !DILocation(line: 175, column: 6, scope: !532)
!532 = distinct !DILexicalBlock(scope: !517, file: !3, line: 175, column: 6)
!533 = !DILocation(line: 175, column: 23, scope: !532)
!534 = !DILocation(line: 175, column: 6, scope: !517)
!535 = !DILocation(line: 180, column: 3, scope: !536)
!536 = distinct !DILexicalBlock(scope: !532, file: !3, line: 175, column: 48)
!537 = !DILocation(line: 181, column: 10, scope: !536)
!538 = !DILocation(line: 181, column: 3, scope: !536)
!539 = !DILocation(line: 188, column: 3, scope: !540)
!540 = distinct !DILexicalBlock(scope: !532, file: !3, line: 182, column: 9)
!541 = !DILocation(line: 201, column: 35, scope: !540)
!542 = !DILocation(line: 201, column: 3, scope: !540)
!543 = !DILocation(line: 203, column: 1, scope: !517)
!544 = !DISubprogram(name: "acpi_tb_install_standard_table", scope: !225, file: !225, line: 88, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!545 = !DISubroutineType(types: !546)
!546 = !{!22, !62, !40, !29, !40, !40, !64}
!547 = !DISubprogram(name: "acpi_tb_parse_fadt", scope: !225, file: !225, line: 56, type: !192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!548 = distinct !DISubprogram(name: "acpi_tb_get_table", scope: !3, file: !3, line: 369, type: !549, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !551)
!549 = !DISubroutineType(types: !550)
!550 = !{!22, !236, !28}
!551 = !{!552, !553, !554}
!552 = !DILocalVariable(name: "table_desc", arg: 1, scope: !548, file: !3, line: 369, type: !236)
!553 = !DILocalVariable(name: "out_table", arg: 2, scope: !548, file: !3, line: 370, type: !28)
!554 = !DILocalVariable(name: "status", scope: !548, file: !3, line: 372, type: !22)
!555 = !DILocation(line: 369, column: 43, scope: !548)
!556 = !DILocation(line: 370, column: 32, scope: !548)
!557 = !DILocation(line: 372, column: 2, scope: !548)
!558 = !DILocation(line: 372, column: 14, scope: !548)
!559 = !DILocation(line: 376, column: 6, scope: !560)
!560 = distinct !DILexicalBlock(scope: !548, file: !3, line: 376, column: 6)
!561 = !DILocation(line: 376, column: 18, scope: !560)
!562 = !DILocation(line: 376, column: 35, scope: !560)
!563 = !DILocation(line: 376, column: 6, scope: !548)
!564 = !DILocation(line: 380, column: 35, scope: !565)
!565 = distinct !DILexicalBlock(scope: !560, file: !3, line: 376, column: 41)
!566 = !DILocation(line: 380, column: 12, scope: !565)
!567 = !DILocation(line: 380, column: 10, scope: !565)
!568 = !DILocation(line: 381, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !3, line: 381, column: 7)
!570 = !DILocation(line: 381, column: 7, scope: !565)
!571 = !DILocation(line: 382, column: 4, scope: !572)
!572 = distinct !DILexicalBlock(scope: !569, file: !3, line: 381, column: 29)
!573 = !DILocation(line: 384, column: 2, scope: !565)
!574 = !DILocation(line: 386, column: 6, scope: !575)
!575 = distinct !DILexicalBlock(scope: !548, file: !3, line: 386, column: 6)
!576 = !DILocation(line: 386, column: 18, scope: !575)
!577 = !DILocation(line: 386, column: 35, scope: !575)
!578 = !DILocation(line: 386, column: 6, scope: !548)
!579 = !DILocation(line: 387, column: 3, scope: !580)
!580 = distinct !DILexicalBlock(scope: !575, file: !3, line: 386, column: 65)
!581 = !DILocation(line: 387, column: 15, scope: !580)
!582 = !DILocation(line: 387, column: 31, scope: !580)
!583 = !DILocation(line: 393, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !580, file: !3, line: 393, column: 7)
!585 = !DILocation(line: 393, column: 19, scope: !584)
!586 = !DILocation(line: 393, column: 36, scope: !584)
!587 = !DILocation(line: 393, column: 7, scope: !580)
!588 = !DILocation(line: 394, column: 4, scope: !589)
!589 = distinct !DILexicalBlock(scope: !584, file: !3, line: 393, column: 67)
!590 = !DILocation(line: 397, column: 3, scope: !589)
!591 = !DILocation(line: 398, column: 2, scope: !580)
!592 = !DILocation(line: 400, column: 15, scope: !548)
!593 = !DILocation(line: 400, column: 27, scope: !548)
!594 = !DILocation(line: 400, column: 3, scope: !548)
!595 = !DILocation(line: 400, column: 13, scope: !548)
!596 = !DILocation(line: 401, column: 2, scope: !548)
!597 = !DILocation(line: 402, column: 1, scope: !548)
!598 = !DISubprogram(name: "acpi_tb_validate_table", scope: !225, file: !225, line: 72, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!599 = !DISubroutineType(types: !600)
!600 = !{!22, !236}
!601 = !DISubprogram(name: "acpi_warning", scope: !188, file: !188, line: 912, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!602 = distinct !DISubprogram(name: "acpi_tb_put_table", scope: !3, file: !3, line: 419, type: !313, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !603)
!603 = !{!604}
!604 = !DILocalVariable(name: "table_desc", arg: 1, scope: !602, file: !3, line: 419, type: !236)
!605 = !DILocation(line: 419, column: 48, scope: !602)
!606 = !DILocation(line: 424, column: 6, scope: !607)
!607 = distinct !DILexicalBlock(scope: !602, file: !3, line: 424, column: 6)
!608 = !DILocation(line: 424, column: 18, scope: !607)
!609 = !DILocation(line: 424, column: 35, scope: !607)
!610 = !DILocation(line: 424, column: 6, scope: !602)
!611 = !DILocation(line: 425, column: 3, scope: !612)
!612 = distinct !DILexicalBlock(scope: !607, file: !3, line: 424, column: 65)
!613 = !DILocation(line: 425, column: 15, scope: !612)
!614 = !DILocation(line: 425, column: 31, scope: !612)
!615 = !DILocation(line: 431, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !612, file: !3, line: 431, column: 7)
!617 = !DILocation(line: 431, column: 19, scope: !616)
!618 = !DILocation(line: 431, column: 36, scope: !616)
!619 = !DILocation(line: 431, column: 7, scope: !612)
!620 = !DILocation(line: 432, column: 4, scope: !621)
!621 = distinct !DILexicalBlock(scope: !616, file: !3, line: 431, column: 67)
!622 = !DILocation(line: 435, column: 4, scope: !621)
!623 = !DILocation(line: 437, column: 2, scope: !612)
!624 = !DILocation(line: 439, column: 6, scope: !625)
!625 = distinct !DILexicalBlock(scope: !602, file: !3, line: 439, column: 6)
!626 = !DILocation(line: 439, column: 18, scope: !625)
!627 = !DILocation(line: 439, column: 35, scope: !625)
!628 = !DILocation(line: 439, column: 6, scope: !602)
!629 = !DILocation(line: 443, column: 28, scope: !630)
!630 = distinct !DILexicalBlock(scope: !625, file: !3, line: 439, column: 41)
!631 = !DILocation(line: 443, column: 3, scope: !630)
!632 = !DILocation(line: 444, column: 2, scope: !630)
!633 = !DILocation(line: 446, column: 2, scope: !602)
!634 = !DILocation(line: 447, column: 1, scope: !602)
!635 = !DISubprogram(name: "acpi_tb_invalidate_table", scope: !225, file: !225, line: 74, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!636 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !637, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !643)
!637 = !DISubroutineType(types: !638)
!638 = !{!69, !639, !68}
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 61, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !641, line: 72, baseType: !642)
!641 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !641, line: 16, baseType: !57)
!643 = !{!644, !645, !646}
!644 = !DILocalVariable(name: "size", arg: 1, scope: !636, file: !12, line: 591, type: !639)
!645 = !DILocalVariable(name: "flags", arg: 2, scope: !636, file: !12, line: 591, type: !68)
!646 = !DILocalVariable(name: "index", scope: !647, file: !12, line: 594, type: !7)
!647 = distinct !DILexicalBlock(scope: !648, file: !12, line: 593, column: 42)
!648 = distinct !DILexicalBlock(scope: !636, file: !12, line: 593, column: 6)
!649 = !DILocation(line: 591, column: 61, scope: !636)
!650 = !DILocation(line: 591, column: 73, scope: !636)
!651 = !DILocation(line: 593, column: 27, scope: !648)
!652 = !DILocation(line: 593, column: 6, scope: !648)
!653 = !DILocation(line: 593, column: 33, scope: !648)
!654 = !DILocation(line: 593, column: 36, scope: !648)
!655 = !DILocation(line: 593, column: 6, scope: !636)
!656 = !DILocation(line: 594, column: 3, scope: !647)
!657 = !DILocation(line: 594, column: 16, scope: !647)
!658 = !DILocation(line: 596, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !647, file: !12, line: 596, column: 7)
!660 = !DILocation(line: 596, column: 12, scope: !659)
!661 = !DILocation(line: 596, column: 7, scope: !647)
!662 = !DILocation(line: 597, column: 25, scope: !659)
!663 = !DILocation(line: 597, column: 31, scope: !659)
!664 = !DILocation(line: 597, column: 11, scope: !659)
!665 = !DILocation(line: 597, column: 4, scope: !659)
!666 = !DILocation(line: 599, column: 11, scope: !647)
!667 = !DILocation(line: 599, column: 9, scope: !647)
!668 = !DILocation(line: 601, column: 33, scope: !647)
!669 = !DILocation(line: 601, column: 40, scope: !647)
!670 = !DILocation(line: 601, column: 20, scope: !647)
!671 = !DILocation(line: 601, column: 5, scope: !647)
!672 = !DILocation(line: 601, column: 51, scope: !647)
!673 = !DILocation(line: 602, column: 5, scope: !647)
!674 = !DILocation(line: 602, column: 12, scope: !647)
!675 = !DILocation(line: 600, column: 10, scope: !647)
!676 = !DILocation(line: 600, column: 3, scope: !647)
!677 = !DILocation(line: 603, column: 2, scope: !648)
!678 = !DILocation(line: 604, column: 19, scope: !636)
!679 = !DILocation(line: 604, column: 25, scope: !636)
!680 = !DILocation(line: 604, column: 9, scope: !636)
!681 = !DILocation(line: 604, column: 2, scope: !636)
!682 = !DILocation(line: 605, column: 1, scope: !636)
!683 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !684, file: !684, line: 65, type: !685, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!684 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!685 = !DISubroutineType(types: !686)
!686 = !{!57}
!687 = !DILocation(line: 67, column: 9, scope: !683)
!688 = !DILocation(line: 67, column: 2, scope: !683)
!689 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !684, file: !684, line: 120, type: !690, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !693)
!690 = !DISubroutineType(types: !691)
!691 = !{!692, !57}
!692 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!693 = !{!694}
!694 = !DILocalVariable(name: "flags", arg: 1, scope: !689, file: !684, line: 120, type: !57)
!695 = !DILocation(line: 120, column: 67, scope: !689)
!696 = !DILocation(line: 122, column: 11, scope: !689)
!697 = !DILocation(line: 122, column: 17, scope: !689)
!698 = !DILocation(line: 122, column: 9, scope: !689)
!699 = !DILocation(line: 122, column: 2, scope: !689)
!700 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!701 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !702, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !706)
!702 = !DISubroutineType(types: !703)
!703 = !{!7, !639, !704}
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !56, line: 35, baseType: !705)
!705 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!706 = !{!707, !708}
!707 = !DILocalVariable(name: "size", arg: 1, scope: !701, file: !12, line: 444, type: !639)
!708 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !701, file: !12, line: 445, type: !704)
!709 = !DILocation(line: 444, column: 60, scope: !701)
!710 = !DILocation(line: 445, column: 16, scope: !701)
!711 = !DILocation(line: 447, column: 7, scope: !712)
!712 = distinct !DILexicalBlock(scope: !701, file: !12, line: 447, column: 6)
!713 = !DILocation(line: 447, column: 6, scope: !701)
!714 = !DILocation(line: 448, column: 3, scope: !712)
!715 = !DILocation(line: 450, column: 6, scope: !716)
!716 = distinct !DILexicalBlock(scope: !701, file: !12, line: 450, column: 6)
!717 = !DILocation(line: 450, column: 11, scope: !716)
!718 = !DILocation(line: 450, column: 6, scope: !701)
!719 = !DILocation(line: 451, column: 3, scope: !716)
!720 = !DILocation(line: 453, column: 32, scope: !721)
!721 = distinct !DILexicalBlock(scope: !701, file: !12, line: 453, column: 6)
!722 = !DILocation(line: 453, column: 37, scope: !721)
!723 = !DILocation(line: 453, column: 42, scope: !721)
!724 = !DILocation(line: 453, column: 45, scope: !721)
!725 = !DILocation(line: 453, column: 50, scope: !721)
!726 = !DILocation(line: 453, column: 6, scope: !701)
!727 = !DILocation(line: 454, column: 3, scope: !721)
!728 = !DILocation(line: 455, column: 32, scope: !729)
!729 = distinct !DILexicalBlock(scope: !701, file: !12, line: 455, column: 6)
!730 = !DILocation(line: 455, column: 37, scope: !729)
!731 = !DILocation(line: 455, column: 43, scope: !729)
!732 = !DILocation(line: 455, column: 46, scope: !729)
!733 = !DILocation(line: 455, column: 51, scope: !729)
!734 = !DILocation(line: 455, column: 6, scope: !701)
!735 = !DILocation(line: 456, column: 3, scope: !729)
!736 = !DILocation(line: 457, column: 6, scope: !737)
!737 = distinct !DILexicalBlock(scope: !701, file: !12, line: 457, column: 6)
!738 = !DILocation(line: 457, column: 11, scope: !737)
!739 = !DILocation(line: 457, column: 6, scope: !701)
!740 = !DILocation(line: 457, column: 26, scope: !737)
!741 = !DILocation(line: 458, column: 6, scope: !742)
!742 = distinct !DILexicalBlock(scope: !701, file: !12, line: 458, column: 6)
!743 = !DILocation(line: 458, column: 11, scope: !742)
!744 = !DILocation(line: 458, column: 6, scope: !701)
!745 = !DILocation(line: 458, column: 26, scope: !742)
!746 = !DILocation(line: 459, column: 6, scope: !747)
!747 = distinct !DILexicalBlock(scope: !701, file: !12, line: 459, column: 6)
!748 = !DILocation(line: 459, column: 11, scope: !747)
!749 = !DILocation(line: 459, column: 6, scope: !701)
!750 = !DILocation(line: 459, column: 26, scope: !747)
!751 = !DILocation(line: 460, column: 6, scope: !752)
!752 = distinct !DILexicalBlock(scope: !701, file: !12, line: 460, column: 6)
!753 = !DILocation(line: 460, column: 11, scope: !752)
!754 = !DILocation(line: 460, column: 6, scope: !701)
!755 = !DILocation(line: 460, column: 26, scope: !752)
!756 = !DILocation(line: 461, column: 6, scope: !757)
!757 = distinct !DILexicalBlock(scope: !701, file: !12, line: 461, column: 6)
!758 = !DILocation(line: 461, column: 11, scope: !757)
!759 = !DILocation(line: 461, column: 6, scope: !701)
!760 = !DILocation(line: 461, column: 26, scope: !757)
!761 = !DILocation(line: 462, column: 6, scope: !762)
!762 = distinct !DILexicalBlock(scope: !701, file: !12, line: 462, column: 6)
!763 = !DILocation(line: 462, column: 11, scope: !762)
!764 = !DILocation(line: 462, column: 6, scope: !701)
!765 = !DILocation(line: 462, column: 26, scope: !762)
!766 = !DILocation(line: 463, column: 6, scope: !767)
!767 = distinct !DILexicalBlock(scope: !701, file: !12, line: 463, column: 6)
!768 = !DILocation(line: 463, column: 11, scope: !767)
!769 = !DILocation(line: 463, column: 6, scope: !701)
!770 = !DILocation(line: 463, column: 26, scope: !767)
!771 = !DILocation(line: 464, column: 6, scope: !772)
!772 = distinct !DILexicalBlock(scope: !701, file: !12, line: 464, column: 6)
!773 = !DILocation(line: 464, column: 11, scope: !772)
!774 = !DILocation(line: 464, column: 6, scope: !701)
!775 = !DILocation(line: 464, column: 26, scope: !772)
!776 = !DILocation(line: 465, column: 6, scope: !777)
!777 = distinct !DILexicalBlock(scope: !701, file: !12, line: 465, column: 6)
!778 = !DILocation(line: 465, column: 11, scope: !777)
!779 = !DILocation(line: 465, column: 6, scope: !701)
!780 = !DILocation(line: 465, column: 26, scope: !777)
!781 = !DILocation(line: 466, column: 6, scope: !782)
!782 = distinct !DILexicalBlock(scope: !701, file: !12, line: 466, column: 6)
!783 = !DILocation(line: 466, column: 11, scope: !782)
!784 = !DILocation(line: 466, column: 6, scope: !701)
!785 = !DILocation(line: 466, column: 26, scope: !782)
!786 = !DILocation(line: 467, column: 6, scope: !787)
!787 = distinct !DILexicalBlock(scope: !701, file: !12, line: 467, column: 6)
!788 = !DILocation(line: 467, column: 11, scope: !787)
!789 = !DILocation(line: 467, column: 6, scope: !701)
!790 = !DILocation(line: 467, column: 26, scope: !787)
!791 = !DILocation(line: 468, column: 6, scope: !792)
!792 = distinct !DILexicalBlock(scope: !701, file: !12, line: 468, column: 6)
!793 = !DILocation(line: 468, column: 11, scope: !792)
!794 = !DILocation(line: 468, column: 6, scope: !701)
!795 = !DILocation(line: 468, column: 26, scope: !792)
!796 = !DILocation(line: 469, column: 6, scope: !797)
!797 = distinct !DILexicalBlock(scope: !701, file: !12, line: 469, column: 6)
!798 = !DILocation(line: 469, column: 11, scope: !797)
!799 = !DILocation(line: 469, column: 6, scope: !701)
!800 = !DILocation(line: 469, column: 26, scope: !797)
!801 = !DILocation(line: 470, column: 6, scope: !802)
!802 = distinct !DILexicalBlock(scope: !701, file: !12, line: 470, column: 6)
!803 = !DILocation(line: 470, column: 11, scope: !802)
!804 = !DILocation(line: 470, column: 6, scope: !701)
!805 = !DILocation(line: 470, column: 26, scope: !802)
!806 = !DILocation(line: 471, column: 6, scope: !807)
!807 = distinct !DILexicalBlock(scope: !701, file: !12, line: 471, column: 6)
!808 = !DILocation(line: 471, column: 11, scope: !807)
!809 = !DILocation(line: 471, column: 6, scope: !701)
!810 = !DILocation(line: 471, column: 26, scope: !807)
!811 = !DILocation(line: 472, column: 6, scope: !812)
!812 = distinct !DILexicalBlock(scope: !701, file: !12, line: 472, column: 6)
!813 = !DILocation(line: 472, column: 11, scope: !812)
!814 = !DILocation(line: 472, column: 6, scope: !701)
!815 = !DILocation(line: 472, column: 26, scope: !812)
!816 = !DILocation(line: 473, column: 6, scope: !817)
!817 = distinct !DILexicalBlock(scope: !701, file: !12, line: 473, column: 6)
!818 = !DILocation(line: 473, column: 11, scope: !817)
!819 = !DILocation(line: 473, column: 6, scope: !701)
!820 = !DILocation(line: 473, column: 26, scope: !817)
!821 = !DILocation(line: 474, column: 6, scope: !822)
!822 = distinct !DILexicalBlock(scope: !701, file: !12, line: 474, column: 6)
!823 = !DILocation(line: 474, column: 11, scope: !822)
!824 = !DILocation(line: 474, column: 6, scope: !701)
!825 = !DILocation(line: 474, column: 27, scope: !822)
!826 = !DILocation(line: 475, column: 6, scope: !827)
!827 = distinct !DILexicalBlock(scope: !701, file: !12, line: 475, column: 6)
!828 = !DILocation(line: 475, column: 11, scope: !827)
!829 = !DILocation(line: 475, column: 6, scope: !701)
!830 = !DILocation(line: 475, column: 32, scope: !827)
!831 = !DILocation(line: 477, column: 50, scope: !832)
!832 = distinct !DILexicalBlock(scope: !701, file: !12, line: 477, column: 6)
!833 = !{i8 0, i8 2}
!834 = !{}
!835 = !DILocation(line: 477, column: 6, scope: !701)
!836 = !DILocation(line: 478, column: 3, scope: !832)
!837 = !DILocation(line: 478, column: 3, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !12, line: 478, column: 3)
!839 = distinct !DILexicalBlock(scope: !832, file: !12, line: 478, column: 3)
!840 = !{i32 -2143036541}
!841 = !DILocation(line: 478, column: 3, scope: !839)
!842 = !DILocation(line: 480, column: 3, scope: !832)
!843 = !DILocation(line: 480, column: 3, scope: !844)
!844 = distinct !DILexicalBlock(scope: !832, file: !12, line: 480, column: 3)
!845 = !DILocation(line: 480, column: 3, scope: !846)
!846 = distinct !DILexicalBlock(scope: !844, file: !12, line: 480, column: 3)
!847 = !DILocation(line: 480, column: 3, scope: !848)
!848 = distinct !DILexicalBlock(scope: !844, file: !12, line: 480, column: 3)
!849 = !{i64 2151930958, i64 2151930987, i64 2151931033, i64 2151931091, i64 2151931145, i64 2151931199, i64 2151931254, i64 2151931285}
!850 = !DILocation(line: 483, column: 2, scope: !701)
!851 = !DILocation(line: 484, column: 1, scope: !701)
!852 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!853 = !DISubroutineType(types: !854)
!854 = !{!69, !855, !68, !639}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !857, line: 11, flags: DIFlagFwdDecl)
!857 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!858 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !859, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{!11, !68, !57}
!861 = !{!862, !863}
!862 = !DILocalVariable(name: "flags", arg: 1, scope: !858, file: !12, line: 401, type: !68)
!863 = !DILocalVariable(name: "caller", arg: 2, scope: !858, file: !12, line: 401, type: !57)
!864 = !DILocation(line: 401, column: 67, scope: !858)
!865 = !DILocation(line: 401, column: 88, scope: !858)
!866 = !DILocation(line: 407, column: 6, scope: !867)
!867 = distinct !DILexicalBlock(scope: !858, file: !12, line: 407, column: 6)
!868 = !DILocation(line: 407, column: 6, scope: !858)
!869 = !DILocation(line: 413, column: 3, scope: !867)
!870 = !DILocation(line: 423, column: 38, scope: !871)
!871 = distinct !DILexicalBlock(scope: !858, file: !12, line: 423, column: 6)
!872 = !DILocation(line: 423, column: 44, scope: !871)
!873 = !DILocation(line: 423, column: 6, scope: !858)
!874 = !DILocation(line: 424, column: 3, scope: !871)
!875 = !DILocation(line: 426, column: 3, scope: !876)
!876 = distinct !DILexicalBlock(scope: !858, file: !12, line: 425, column: 6)
!877 = !DILocation(line: 429, column: 1, scope: !858)
!878 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!879 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !192, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!880 = distinct !DISubprogram(name: "native_save_fl", scope: !684, file: !684, line: 17, type: !685, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !881)
!881 = !{!882}
!882 = !DILocalVariable(name: "flags", scope: !880, file: !684, line: 19, type: !57)
!883 = !DILocation(line: 19, column: 2, scope: !880)
!884 = !DILocation(line: 19, column: 16, scope: !880)
!885 = !DILocation(line: 26, column: 2, scope: !880)
!886 = !{i64 1520877, i64 1520898}
!887 = !DILocation(line: 32, column: 9, scope: !880)
!888 = !DILocation(line: 33, column: 1, scope: !880)
!889 = !DILocation(line: 32, column: 2, scope: !880)
