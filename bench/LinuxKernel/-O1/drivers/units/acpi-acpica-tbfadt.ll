; ModuleID = 'drivers/acpi/acpica/tbfadt.c'
source_filename = "drivers/acpi/acpica/tbfadt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_list = type { ptr, i32, i32, i8 }
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_fadt_info = type { ptr, i16, i16, i16, i8, i8 }
%struct.acpi_fadt_pm_info = type { ptr, i16, i8 }
%struct.acpi_table_desc = type { i64, ptr, i32, %union.acpi_name_union, i16, i8, i16 }
%union.acpi_name_union = type { i32 }

@acpi_gbl_root_table_list = external dso_local global %struct.acpi_table_list, align 8
@acpi_gbl_fadt_index = external dso_local global i32, align 4
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@acpi_gbl_dsdt_index = external dso_local global i32, align 4
@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@acpi_gbl_facs_index = external dso_local global i32, align 4
@acpi_gbl_xfacs_index = external dso_local global i32, align 4
@_acpi_module_name = internal constant [7 x i8] c"tbfadt\00", align 1, !dbg !0
@.str = private unnamed_addr constant [72 x i8] c"FADT (revision %u) is longer than %s length, truncating length %u to %u\00", align 1, !dbg !40
@.str.1 = private unnamed_addr constant [26 x i8] c"ACPI 6.1 (FADT version 6)\00", align 1, !dbg !46
@.str.2 = private unnamed_addr constant [5 x i8] c"DSDT\00", align 1, !dbg !51
@fadt_info_table = internal global [8 x %struct.acpi_fadt_info] [%struct.acpi_fadt_info { ptr @.str.10, i16 148, i16 56, i16 88, i8 32, i8 1 }, %struct.acpi_fadt_info { ptr @.str.11, i16 160, i16 60, i16 88, i8 32, i8 0 }, %struct.acpi_fadt_info { ptr @.str.12, i16 172, i16 64, i16 89, i8 16, i8 1 }, %struct.acpi_fadt_info { ptr @.str.13, i16 184, i16 68, i16 89, i8 16, i8 0 }, %struct.acpi_fadt_info { ptr @.str.14, i16 196, i16 72, i16 90, i8 8, i8 2 }, %struct.acpi_fadt_info { ptr @.str.15, i16 208, i16 76, i16 91, i8 32, i8 2 }, %struct.acpi_fadt_info { ptr @.str.16, i16 220, i16 80, i16 92, i8 0, i8 6 }, %struct.acpi_fadt_info { ptr @.str.17, i16 232, i16 84, i16 93, i8 0, i8 6 }], align 16, !dbg !119
@.str.3 = private unnamed_addr constant [79 x i8] c"32/64X address mismatch in FADT/%s: 0x%8.8X/0x%8.8X%8.8X, using %u-bit address\00", align 1, !dbg !56
@acpi_gbl_use32_bit_fadt_addresses = external dso_local global i8, align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"32/64X length mismatch in FADT/%s: %u/%u\00", align 1, !dbg !61
@.str.5 = private unnamed_addr constant [73 x i8] c"Required FADT field %s has zero address and/or length: 0x%8.8X%8.8X/0x%X\00", align 1, !dbg !66
@.str.6 = private unnamed_addr constant [67 x i8] c"Optional FADT field %s has valid %s but zero %s: 0x%8.8X%8.8X/0x%X\00", align 1, !dbg !71
@.str.7 = private unnamed_addr constant [7 x i8] c"Length\00", align 1, !dbg !76
@.str.8 = private unnamed_addr constant [8 x i8] c"Address\00", align 1, !dbg !81
@.str.9 = private unnamed_addr constant [79 x i8] c"32/64X %s address mismatch in FADT: 0x%8.8X/0x%8.8X%8.8X, using %u-bit address\00", align 1, !dbg !86
@.str.10 = private unnamed_addr constant [15 x i8] c"Pm1aEventBlock\00", align 1, !dbg !88
@.str.11 = private unnamed_addr constant [15 x i8] c"Pm1bEventBlock\00", align 1, !dbg !93
@.str.12 = private unnamed_addr constant [17 x i8] c"Pm1aControlBlock\00", align 1, !dbg !95
@.str.13 = private unnamed_addr constant [17 x i8] c"Pm1bControlBlock\00", align 1, !dbg !100
@.str.14 = private unnamed_addr constant [16 x i8] c"Pm2ControlBlock\00", align 1, !dbg !102
@.str.15 = private unnamed_addr constant [13 x i8] c"PmTimerBlock\00", align 1, !dbg !107
@.str.16 = private unnamed_addr constant [10 x i8] c"Gpe0Block\00", align 1, !dbg !112
@.str.17 = private unnamed_addr constant [10 x i8] c"Gpe1Block\00", align 1, !dbg !117
@.str.18 = private unnamed_addr constant [110 x i8] c"%s - 32-bit FADT register is too long (%u bytes, %u bits) to convert to GAS struct - 255 bits max, truncating\00", align 1, !dbg !132
@acpi_gbl_use_default_register_widths = external dso_local global i8, align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"Invalid length for FADT/%s: %u, using default %u\00", align 1, !dbg !137
@fadt_pm_info_table = internal global [4 x %struct.acpi_fadt_pm_info] [%struct.acpi_fadt_pm_info { ptr @acpi_gbl_xpm1a_status, i16 148, i8 0 }, %struct.acpi_fadt_pm_info { ptr @acpi_gbl_xpm1a_enable, i16 148, i8 1 }, %struct.acpi_fadt_pm_info { ptr @acpi_gbl_xpm1b_status, i16 160, i8 0 }, %struct.acpi_fadt_pm_info { ptr @acpi_gbl_xpm1b_enable, i16 160, i8 1 }], align 16, !dbg !147
@.str.20 = private unnamed_addr constant [12 x i8] c"PmRegisters\00", align 1, !dbg !142
@acpi_gbl_xpm1a_status = external dso_local global %struct.acpi_generic_address, align 1
@acpi_gbl_xpm1a_enable = external dso_local global %struct.acpi_generic_address, align 1
@acpi_gbl_xpm1b_status = external dso_local global %struct.acpi_generic_address, align 1
@acpi_gbl_xpm1b_enable = external dso_local global %struct.acpi_generic_address, align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_tb_parse_fadt() #0 align 16 !dbg !167 {
entry:
  %length = alloca i32, align 4
  %table = alloca ptr, align 8
  %fadt_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #6, !dbg !207
  call void @llvm.dbg.declare(metadata ptr %length, metadata !171, metadata !DIExpression()), !dbg !208
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #6, !dbg !209
  call void @llvm.dbg.declare(metadata ptr %table, metadata !172, metadata !DIExpression()), !dbg !210
  call void @llvm.lifetime.start.p0(i64 8, ptr %fadt_desc) #6, !dbg !211
  call void @llvm.dbg.declare(metadata ptr %fadt_desc, metadata !189, metadata !DIExpression()), !dbg !212
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !213
  call void @llvm.dbg.declare(metadata ptr %status, metadata !205, metadata !DIExpression()), !dbg !214
  %0 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !215
  %1 = load i32, ptr @acpi_gbl_fadt_index, align 4, !dbg !216
  %idxprom = zext i32 %1 to i64, !dbg !217
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %0, i64 %idxprom, !dbg !217
  store ptr %arrayidx, ptr %fadt_desc, align 8, !dbg !218
  %2 = load ptr, ptr %fadt_desc, align 8, !dbg !219
  %call = call i32 @acpi_tb_get_table(ptr noundef %2, ptr noundef %table) #7, !dbg !220
  store i32 %call, ptr %status, align 4, !dbg !221
  %3 = load i32, ptr %status, align 4, !dbg !222
  %tobool = icmp ne i32 %3, 0, !dbg !222
  br i1 %tobool, label %if.then, label %if.end, !dbg !224

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !225

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %fadt_desc, align 8, !dbg !227
  %length1 = getelementptr inbounds %struct.acpi_table_desc, ptr %4, i32 0, i32 2, !dbg !228
  %5 = load i32, ptr %length1, align 8, !dbg !228
  store i32 %5, ptr %length, align 4, !dbg !229
  %6 = load ptr, ptr %table, align 8, !dbg !230
  %7 = load i32, ptr %length, align 4, !dbg !231
  %call2 = call i32 @acpi_ut_verify_checksum(ptr noundef %6, i32 noundef %7) #7, !dbg !232
  %8 = load ptr, ptr %table, align 8, !dbg !233
  %9 = load i32, ptr %length, align 4, !dbg !234
  call void @acpi_tb_create_local_fadt(ptr noundef %8, i32 noundef %9) #7, !dbg !235
  %10 = load ptr, ptr %fadt_desc, align 8, !dbg !236
  call void @acpi_tb_put_table(ptr noundef %10) #7, !dbg !237
  %11 = load i64, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 44), align 1, !dbg !238
  %call3 = call i32 @acpi_tb_install_standard_table(i64 noundef %11, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef @acpi_gbl_dsdt_index) #7, !dbg !239
  %12 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !240
  %tobool4 = icmp ne i8 %12, 0, !dbg !240
  br i1 %tobool4, label %if.end14, label %if.then5, !dbg !242

if.then5:                                         ; preds = %if.end
  %13 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 1), align 1, !dbg !243
  %tobool6 = icmp ne i32 %13, 0, !dbg !246
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !247

if.then7:                                         ; preds = %if.then5
  %14 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 1), align 1, !dbg !248
  %conv = zext i32 %14 to i64, !dbg !250
  %call8 = call i32 @acpi_tb_install_standard_table(i64 noundef %conv, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef @acpi_gbl_facs_index) #7, !dbg !251
  br label %if.end9, !dbg !252

if.end9:                                          ; preds = %if.then7, %if.then5
  %15 = load i64, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 43), align 1, !dbg !253
  %tobool10 = icmp ne i64 %15, 0, !dbg !255
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !256

if.then11:                                        ; preds = %if.end9
  %16 = load i64, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 43), align 1, !dbg !257
  %call12 = call i32 @acpi_tb_install_standard_table(i64 noundef %16, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef @acpi_gbl_xfacs_index) #7, !dbg !259
  br label %if.end13, !dbg !260

if.end13:                                         ; preds = %if.then11, %if.end9
  br label %if.end14, !dbg !261

if.end14:                                         ; preds = %if.end13, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !262
  br label %cleanup, !dbg !262

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !262
  call void @llvm.lifetime.end.p0(i64 8, ptr %fadt_desc) #6, !dbg !262
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #6, !dbg !262
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #6, !dbg !262
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !262

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !263 dso_local i32 @acpi_tb_get_table(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !268 dso_local i32 @acpi_ut_verify_checksum(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_tb_create_local_fadt(ptr noundef %table, i32 noundef %length) #0 align 16 !dbg !272 {
entry:
  %table.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !276, metadata !DIExpression()), !dbg !278
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !277, metadata !DIExpression()), !dbg !279
  %0 = load i32, ptr %length.addr, align 4, !dbg !280
  %conv = zext i32 %0 to i64, !dbg !280
  %cmp = icmp ugt i64 %conv, 276, !dbg !282
  br i1 %cmp, label %if.then, label %if.end, !dbg !283

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %table.addr, align 8, !dbg !284
  %revision = getelementptr inbounds %struct.acpi_table_header, ptr %1, i32 0, i32 2, !dbg !284
  %2 = load i8, ptr %revision, align 1, !dbg !284
  %conv2 = zext i8 %2 to i32, !dbg !284
  %3 = load i32, ptr %length.addr, align 4, !dbg !284
  call void (ptr, i32, ptr, ...) @acpi_bios_warning(ptr noundef @_acpi_module_name, i32 noundef 362, ptr noundef @.str, i32 noundef %conv2, ptr noundef @.str.1, i32 noundef %3, i32 noundef 276) #7, !dbg !284
  br label %if.end, !dbg !286

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.memset.p0.i64(ptr align 1 @acpi_gbl_FADT, i8 0, i64 276, i1 false), !dbg !287
  %4 = load ptr, ptr %table.addr, align 8, !dbg !288
  %5 = load i32, ptr %length.addr, align 4, !dbg !289
  %conv3 = zext i32 %5 to i64, !dbg !289
  %cmp4 = icmp ult i64 %conv3, 276, !dbg !289
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !289

cond.true:                                        ; preds = %if.end
  %6 = load i32, ptr %length.addr, align 4, !dbg !289
  %conv6 = zext i32 %6 to i64, !dbg !289
  br label %cond.end, !dbg !289

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !289

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv6, %cond.true ], [ 276, %cond.false ], !dbg !289
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 @acpi_gbl_FADT, ptr align 1 %4, i64 %cond, i1 false), !dbg !290
  store i8 0, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !291
  %7 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 38), align 1, !dbg !292
  %and = and i32 %7, 1048576, !dbg !294
  %tobool = icmp ne i32 %and, 0, !dbg !294
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !295

if.then7:                                         ; preds = %cond.end
  store i8 1, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !296
  br label %if.end8, !dbg !298

if.end8:                                          ; preds = %if.then7, %cond.end
  call void @acpi_tb_convert_fadt() #7, !dbg !299
  call void @acpi_tb_setup_fadt_registers() #7, !dbg !300
  ret void, !dbg !301
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !302 dso_local void @acpi_tb_put_table(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !305 dso_local i32 @acpi_tb_install_standard_table(i64 noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !308 dso_local void @acpi_bios_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_tb_convert_fadt() #0 align 16 !dbg !312 {
entry:
  %name = alloca ptr, align 8
  %address64 = alloca ptr, align 8
  %address32 = alloca i32, align 4
  %length = alloca i8, align 1
  %flags = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #6, !dbg !320
  call void @llvm.dbg.declare(metadata ptr %name, metadata !314, metadata !DIExpression()), !dbg !321
  call void @llvm.lifetime.start.p0(i64 8, ptr %address64) #6, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %address64, metadata !315, metadata !DIExpression()), !dbg !323
  call void @llvm.lifetime.start.p0(i64 4, ptr %address32) #6, !dbg !324
  call void @llvm.dbg.declare(metadata ptr %address32, metadata !316, metadata !DIExpression()), !dbg !325
  call void @llvm.lifetime.start.p0(i64 1, ptr %length) #6, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %length, metadata !317, metadata !DIExpression()), !dbg !327
  call void @llvm.lifetime.start.p0(i64 1, ptr %flags) #6, !dbg !328
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !318, metadata !DIExpression()), !dbg !329
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !330
  call void @llvm.dbg.declare(metadata ptr %i, metadata !319, metadata !DIExpression()), !dbg !331
  %0 = load i32, ptr getelementptr inbounds (%struct.acpi_table_header, ptr @acpi_gbl_FADT, i32 0, i32 1), align 1, !dbg !332
  %cmp = icmp ule i32 %0, 132, !dbg !334
  br i1 %cmp, label %if.then, label %if.end, !dbg !335

if.then:                                          ; preds = %entry
  store i8 0, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 4), align 1, !dbg !336
  store i8 0, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 10), align 1, !dbg !338
  store i8 0, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 26), align 1, !dbg !339
  store i16 0, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 36), align 1, !dbg !340
  br label %if.end, !dbg !341

if.end:                                           ; preds = %if.then, %entry
  store i32 276, ptr getelementptr inbounds (%struct.acpi_table_header, ptr @acpi_gbl_FADT, i32 0, i32 1), align 1, !dbg !342
  %1 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 2), align 1, !dbg !343
  %2 = load i64, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 44), align 1, !dbg !344
  %call = call i64 @acpi_tb_select_address(ptr noundef @.str.2, i32 noundef %1, i64 noundef %2) #7, !dbg !345
  store i64 %call, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 44), align 1, !dbg !346
  %3 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !347
  %tobool = icmp ne i8 %3, 0, !dbg !347
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !349

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !350

if.end2:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !352
  br label %for.cond, !dbg !354

for.cond:                                         ; preds = %for.inc, %if.end2
  %4 = load i32, ptr %i, align 4, !dbg !355
  %conv = zext i32 %4 to i64, !dbg !355
  %cmp3 = icmp ult i64 %conv, 8, !dbg !357
  br i1 %cmp3, label %for.body, label %for.end, !dbg !358

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4, !dbg !359
  %idxprom = zext i32 %5 to i64, !dbg !359
  %arrayidx = getelementptr [8 x %struct.acpi_fadt_info], ptr @fadt_info_table, i64 0, i64 %idxprom, !dbg !359
  %address325 = getelementptr inbounds %struct.acpi_fadt_info, ptr %arrayidx, i32 0, i32 2, !dbg !359
  %6 = load i16, ptr %address325, align 2, !dbg !359
  %conv6 = zext i16 %6 to i64, !dbg !359
  %add.ptr = getelementptr i8, ptr @acpi_gbl_FADT, i64 %conv6, !dbg !359
  %7 = ptrtoint ptr %add.ptr to i64, !dbg !359
  %8 = inttoptr i64 %7 to ptr, !dbg !359
  %9 = load i32, ptr %8, align 4, !dbg !361
  store i32 %9, ptr %address32, align 4, !dbg !362
  %10 = load i32, ptr %i, align 4, !dbg !363
  %idxprom7 = zext i32 %10 to i64, !dbg !363
  %arrayidx8 = getelementptr [8 x %struct.acpi_fadt_info], ptr @fadt_info_table, i64 0, i64 %idxprom7, !dbg !363
  %address649 = getelementptr inbounds %struct.acpi_fadt_info, ptr %arrayidx8, i32 0, i32 1, !dbg !363
  %11 = load i16, ptr %address649, align 8, !dbg !363
  %conv10 = zext i16 %11 to i64, !dbg !363
  %add.ptr11 = getelementptr i8, ptr @acpi_gbl_FADT, i64 %conv10, !dbg !363
  %12 = ptrtoint ptr %add.ptr11 to i64, !dbg !363
  %13 = inttoptr i64 %12 to ptr, !dbg !363
  store ptr %13, ptr %address64, align 8, !dbg !364
  %14 = load i32, ptr %i, align 4, !dbg !365
  %idxprom12 = zext i32 %14 to i64, !dbg !365
  %arrayidx13 = getelementptr [8 x %struct.acpi_fadt_info], ptr @fadt_info_table, i64 0, i64 %idxprom12, !dbg !365
  %length14 = getelementptr inbounds %struct.acpi_fadt_info, ptr %arrayidx13, i32 0, i32 3, !dbg !365
  %15 = load i16, ptr %length14, align 4, !dbg !365
  %conv15 = zext i16 %15 to i64, !dbg !365
  %add.ptr16 = getelementptr i8, ptr @acpi_gbl_FADT, i64 %conv15, !dbg !365
  %16 = ptrtoint ptr %add.ptr16 to i64, !dbg !365
  %17 = inttoptr i64 %16 to ptr, !dbg !365
  %18 = load i8, ptr %17, align 1, !dbg !366
  store i8 %18, ptr %length, align 1, !dbg !367
  %19 = load i32, ptr %i, align 4, !dbg !368
  %idxprom17 = zext i32 %19 to i64, !dbg !369
  %arrayidx18 = getelementptr [8 x %struct.acpi_fadt_info], ptr @fadt_info_table, i64 0, i64 %idxprom17, !dbg !369
  %name19 = getelementptr inbounds %struct.acpi_fadt_info, ptr %arrayidx18, i32 0, i32 0, !dbg !370
  %20 = load ptr, ptr %name19, align 16, !dbg !370
  store ptr %20, ptr %name, align 8, !dbg !371
  %21 = load i32, ptr %i, align 4, !dbg !372
  %idxprom20 = zext i32 %21 to i64, !dbg !373
  %arrayidx21 = getelementptr [8 x %struct.acpi_fadt_info], ptr @fadt_info_table, i64 0, i64 %idxprom20, !dbg !373
  %flags22 = getelementptr inbounds %struct.acpi_fadt_info, ptr %arrayidx21, i32 0, i32 5, !dbg !374
  %22 = load i8, ptr %flags22, align 1, !dbg !374
  store i8 %22, ptr %flags, align 1, !dbg !375
  %23 = load i32, ptr %address32, align 4, !dbg !376
  %tobool23 = icmp ne i32 %23, 0, !dbg !376
  br i1 %tobool23, label %if.then24, label %if.end62, !dbg !378

if.then24:                                        ; preds = %for.body
  %24 = load ptr, ptr %address64, align 8, !dbg !379
  %address = getelementptr inbounds %struct.acpi_generic_address, ptr %24, i32 0, i32 4, !dbg !382
  %25 = load i64, ptr %address, align 1, !dbg !382
  %tobool25 = icmp ne i64 %25, 0, !dbg !379
  br i1 %tobool25, label %if.then26, label %if.end54, !dbg !383

if.then26:                                        ; preds = %if.then24
  %26 = load ptr, ptr %address64, align 8, !dbg !384
  %address27 = getelementptr inbounds %struct.acpi_generic_address, ptr %26, i32 0, i32 4, !dbg !387
  %27 = load i64, ptr %address27, align 1, !dbg !387
  %28 = load i32, ptr %address32, align 4, !dbg !388
  %conv28 = zext i32 %28 to i64, !dbg !389
  %cmp29 = icmp ne i64 %27, %conv28, !dbg !390
  br i1 %cmp29, label %if.then31, label %if.end39, !dbg !391

if.then31:                                        ; preds = %if.then26
  %29 = load ptr, ptr %name, align 8, !dbg !392
  %30 = load i32, ptr %address32, align 4, !dbg !392
  %31 = load ptr, ptr %address64, align 8, !dbg !392
  %address33 = getelementptr inbounds %struct.acpi_generic_address, ptr %31, i32 0, i32 4, !dbg !392
  %32 = load i64, ptr %address33, align 1, !dbg !392
  %shr = lshr i64 %32, 32, !dbg !392
  %conv34 = trunc i64 %shr to i32, !dbg !392
  %33 = load ptr, ptr %address64, align 8, !dbg !392
  %address35 = getelementptr inbounds %struct.acpi_generic_address, ptr %33, i32 0, i32 4, !dbg !392
  %34 = load i64, ptr %address35, align 1, !dbg !392
  %conv36 = trunc i64 %34 to i32, !dbg !392
  %35 = load i8, ptr @acpi_gbl_use32_bit_fadt_addresses, align 1, !dbg !392
  %conv37 = zext i8 %35 to i32, !dbg !392
  %tobool38 = icmp ne i32 %conv37, 0, !dbg !392
  %36 = zext i1 %tobool38 to i64, !dbg !392
  %cond = select i1 %tobool38, i32 32, i32 64, !dbg !392
  call void (ptr, i32, ptr, ...) @acpi_bios_warning(ptr noundef @_acpi_module_name, i32 noundef 543, ptr noundef @.str.3, ptr noundef %29, i32 noundef %30, i32 noundef %conv34, i32 noundef %conv36, i32 noundef %cond) #7, !dbg !392
  br label %if.end39, !dbg !394

if.end39:                                         ; preds = %if.then31, %if.then26
  %37 = load i8, ptr %length, align 1, !dbg !395
  %conv40 = zext i8 %37 to i32, !dbg !395
  %shl = shl i32 %conv40, 3, !dbg !395
  %cmp41 = icmp ule i32 %shl, 255, !dbg !397
  br i1 %cmp41, label %land.lhs.true, label %if.end53, !dbg !398

land.lhs.true:                                    ; preds = %if.end39
  %38 = load ptr, ptr %address64, align 8, !dbg !399
  %bit_width = getelementptr inbounds %struct.acpi_generic_address, ptr %38, i32 0, i32 1, !dbg !400
  %39 = load i8, ptr %bit_width, align 1, !dbg !400
  %conv43 = zext i8 %39 to i32, !dbg !399
  %40 = load i8, ptr %length, align 1, !dbg !401
  %conv44 = zext i8 %40 to i32, !dbg !401
  %shl45 = shl i32 %conv44, 3, !dbg !401
  %cmp46 = icmp ne i32 %conv43, %shl45, !dbg !402
  br i1 %cmp46, label %if.then48, label %if.end53, !dbg !403

if.then48:                                        ; preds = %land.lhs.true
  %41 = load ptr, ptr %name, align 8, !dbg !404
  %42 = load i8, ptr %length, align 1, !dbg !404
  %conv49 = zext i8 %42 to i32, !dbg !404
  %shl50 = shl i32 %conv49, 3, !dbg !404
  %43 = load ptr, ptr %address64, align 8, !dbg !404
  %bit_width51 = getelementptr inbounds %struct.acpi_generic_address, ptr %43, i32 0, i32 1, !dbg !404
  %44 = load i8, ptr %bit_width51, align 1, !dbg !404
  %conv52 = zext i8 %44 to i32, !dbg !404
  call void (ptr, i32, ptr, ...) @acpi_bios_warning(ptr noundef @_acpi_module_name, i32 noundef 564, ptr noundef @.str.4, ptr noundef %41, i32 noundef %shl50, i32 noundef %conv52) #7, !dbg !404
  br label %if.end53, !dbg !406

if.end53:                                         ; preds = %if.then48, %land.lhs.true, %if.end39
  br label %if.end54, !dbg !407

if.end54:                                         ; preds = %if.end53, %if.then24
  %45 = load ptr, ptr %address64, align 8, !dbg !408
  %address55 = getelementptr inbounds %struct.acpi_generic_address, ptr %45, i32 0, i32 4, !dbg !410
  %46 = load i64, ptr %address55, align 1, !dbg !410
  %tobool56 = icmp ne i64 %46, 0, !dbg !408
  br i1 %tobool56, label %lor.lhs.false, label %if.then59, !dbg !411

lor.lhs.false:                                    ; preds = %if.end54
  %47 = load i8, ptr @acpi_gbl_use32_bit_fadt_addresses, align 1, !dbg !412
  %conv57 = zext i8 %47 to i32, !dbg !412
  %tobool58 = icmp ne i32 %conv57, 0, !dbg !412
  br i1 %tobool58, label %if.then59, label %if.end61, !dbg !413

if.then59:                                        ; preds = %lor.lhs.false, %if.end54
  %48 = load ptr, ptr %address64, align 8, !dbg !414
  %49 = load i8, ptr %length, align 1, !dbg !416
  %50 = load i32, ptr %address32, align 4, !dbg !417
  %conv60 = zext i32 %50 to i64, !dbg !418
  %51 = load ptr, ptr %name, align 8, !dbg !419
  %52 = load i8, ptr %flags, align 1, !dbg !420
  call void @acpi_tb_init_generic_address(ptr noundef %48, i8 noundef zeroext 1, i8 noundef zeroext %49, i64 noundef %conv60, ptr noundef %51, i8 noundef zeroext %52) #7, !dbg !421
  br label %if.end61, !dbg !422

if.end61:                                         ; preds = %if.then59, %lor.lhs.false
  br label %if.end62, !dbg !423

if.end62:                                         ; preds = %if.end61, %for.body
  %53 = load i32, ptr %i, align 4, !dbg !424
  %idxprom63 = zext i32 %53 to i64, !dbg !426
  %arrayidx64 = getelementptr [8 x %struct.acpi_fadt_info], ptr @fadt_info_table, i64 0, i64 %idxprom63, !dbg !426
  %flags65 = getelementptr inbounds %struct.acpi_fadt_info, ptr %arrayidx64, i32 0, i32 5, !dbg !427
  %54 = load i8, ptr %flags65, align 1, !dbg !427
  %conv66 = zext i8 %54 to i32, !dbg !426
  %and = and i32 %conv66, 1, !dbg !428
  %tobool67 = icmp ne i32 %and, 0, !dbg !428
  br i1 %tobool67, label %if.then68, label %if.else, !dbg !429

if.then68:                                        ; preds = %if.end62
  %55 = load ptr, ptr %address64, align 8, !dbg !430
  %address69 = getelementptr inbounds %struct.acpi_generic_address, ptr %55, i32 0, i32 4, !dbg !433
  %56 = load i64, ptr %address69, align 1, !dbg !433
  %tobool70 = icmp ne i64 %56, 0, !dbg !430
  br i1 %tobool70, label %lor.lhs.false71, label %if.then73, !dbg !434

lor.lhs.false71:                                  ; preds = %if.then68
  %57 = load i8, ptr %length, align 1, !dbg !435
  %tobool72 = icmp ne i8 %57, 0, !dbg !435
  br i1 %tobool72, label %if.end80, label %if.then73, !dbg !436

if.then73:                                        ; preds = %lor.lhs.false71, %if.then68
  %58 = load ptr, ptr %name, align 8, !dbg !437
  %59 = load ptr, ptr %address64, align 8, !dbg !437
  %address74 = getelementptr inbounds %struct.acpi_generic_address, ptr %59, i32 0, i32 4, !dbg !437
  %60 = load i64, ptr %address74, align 1, !dbg !437
  %shr75 = lshr i64 %60, 32, !dbg !437
  %conv76 = trunc i64 %shr75 to i32, !dbg !437
  %61 = load ptr, ptr %address64, align 8, !dbg !437
  %address77 = getelementptr inbounds %struct.acpi_generic_address, ptr %61, i32 0, i32 4, !dbg !437
  %62 = load i64, ptr %address77, align 1, !dbg !437
  %conv78 = trunc i64 %62 to i32, !dbg !437
  %63 = load i8, ptr %length, align 1, !dbg !437
  %conv79 = zext i8 %63 to i32, !dbg !437
  call void (ptr, i32, ptr, ...) @acpi_bios_error(ptr noundef @_acpi_module_name, i32 noundef 599, ptr noundef @.str.5, ptr noundef %58, i32 noundef %conv76, i32 noundef %conv78, i32 noundef %conv79) #7, !dbg !437
  br label %if.end80, !dbg !439

if.end80:                                         ; preds = %if.then73, %lor.lhs.false71
  br label %if.end113, !dbg !440

if.else:                                          ; preds = %if.end62
  %64 = load i32, ptr %i, align 4, !dbg !441
  %idxprom81 = zext i32 %64 to i64, !dbg !443
  %arrayidx82 = getelementptr [8 x %struct.acpi_fadt_info], ptr @fadt_info_table, i64 0, i64 %idxprom81, !dbg !443
  %flags83 = getelementptr inbounds %struct.acpi_fadt_info, ptr %arrayidx82, i32 0, i32 5, !dbg !444
  %65 = load i8, ptr %flags83, align 1, !dbg !444
  %conv84 = zext i8 %65 to i32, !dbg !443
  %and85 = and i32 %conv84, 2, !dbg !445
  %tobool86 = icmp ne i32 %and85, 0, !dbg !445
  br i1 %tobool86, label %if.then87, label %if.end112, !dbg !446

if.then87:                                        ; preds = %if.else
  %66 = load ptr, ptr %address64, align 8, !dbg !447
  %address88 = getelementptr inbounds %struct.acpi_generic_address, ptr %66, i32 0, i32 4, !dbg !450
  %67 = load i64, ptr %address88, align 1, !dbg !450
  %tobool89 = icmp ne i64 %67, 0, !dbg !447
  br i1 %tobool89, label %land.lhs.true90, label %lor.lhs.false92, !dbg !451

land.lhs.true90:                                  ; preds = %if.then87
  %68 = load i8, ptr %length, align 1, !dbg !452
  %tobool91 = icmp ne i8 %68, 0, !dbg !452
  br i1 %tobool91, label %lor.lhs.false92, label %if.then98, !dbg !453

lor.lhs.false92:                                  ; preds = %land.lhs.true90, %if.then87
  %69 = load ptr, ptr %address64, align 8, !dbg !454
  %address93 = getelementptr inbounds %struct.acpi_generic_address, ptr %69, i32 0, i32 4, !dbg !455
  %70 = load i64, ptr %address93, align 1, !dbg !455
  %tobool94 = icmp ne i64 %70, 0, !dbg !454
  br i1 %tobool94, label %if.end111, label %land.lhs.true95, !dbg !456

land.lhs.true95:                                  ; preds = %lor.lhs.false92
  %71 = load i8, ptr %length, align 1, !dbg !457
  %conv96 = zext i8 %71 to i32, !dbg !457
  %tobool97 = icmp ne i32 %conv96, 0, !dbg !457
  br i1 %tobool97, label %if.then98, label %if.end111, !dbg !458

if.then98:                                        ; preds = %land.lhs.true95, %land.lhs.true90
  %72 = load ptr, ptr %name, align 8, !dbg !459
  %73 = load i8, ptr %length, align 1, !dbg !459
  %conv99 = zext i8 %73 to i32, !dbg !459
  %tobool100 = icmp ne i32 %conv99, 0, !dbg !459
  %74 = zext i1 %tobool100 to i64, !dbg !459
  %cond101 = select i1 %tobool100, ptr @.str.7, ptr @.str.8, !dbg !459
  %75 = load i8, ptr %length, align 1, !dbg !459
  %conv102 = zext i8 %75 to i32, !dbg !459
  %tobool103 = icmp ne i32 %conv102, 0, !dbg !459
  %76 = zext i1 %tobool103 to i64, !dbg !459
  %cond104 = select i1 %tobool103, ptr @.str.8, ptr @.str.7, !dbg !459
  %77 = load ptr, ptr %address64, align 8, !dbg !459
  %address105 = getelementptr inbounds %struct.acpi_generic_address, ptr %77, i32 0, i32 4, !dbg !459
  %78 = load i64, ptr %address105, align 1, !dbg !459
  %shr106 = lshr i64 %78, 32, !dbg !459
  %conv107 = trunc i64 %shr106 to i32, !dbg !459
  %79 = load ptr, ptr %address64, align 8, !dbg !459
  %address108 = getelementptr inbounds %struct.acpi_generic_address, ptr %79, i32 0, i32 4, !dbg !459
  %80 = load i64, ptr %address108, align 1, !dbg !459
  %conv109 = trunc i64 %80 to i32, !dbg !459
  %81 = load i8, ptr %length, align 1, !dbg !459
  %conv110 = zext i8 %81 to i32, !dbg !459
  call void (ptr, i32, ptr, ...) @acpi_bios_warning(ptr noundef @_acpi_module_name, i32 noundef 615, ptr noundef @.str.6, ptr noundef %72, ptr noundef %cond101, ptr noundef %cond104, i32 noundef %conv107, i32 noundef %conv109, i32 noundef %conv110) #7, !dbg !459
  br label %if.end111, !dbg !461

if.end111:                                        ; preds = %if.then98, %land.lhs.true95, %lor.lhs.false92
  br label %if.end112, !dbg !462

if.end112:                                        ; preds = %if.end111, %if.else
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.end80
  br label %for.inc, !dbg !463

for.inc:                                          ; preds = %if.end113
  %82 = load i32, ptr %i, align 4, !dbg !464
  %inc = add i32 %82, 1, !dbg !464
  store i32 %inc, ptr %i, align 4, !dbg !464
  br label %for.cond, !dbg !465, !llvm.loop !466

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !470
  br label %cleanup, !dbg !470

cleanup:                                          ; preds = %for.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !470
  call void @llvm.lifetime.end.p0(i64 1, ptr %flags) #6, !dbg !470
  call void @llvm.lifetime.end.p0(i64 1, ptr %length) #6, !dbg !470
  call void @llvm.lifetime.end.p0(i64 4, ptr %address32) #6, !dbg !470
  call void @llvm.lifetime.end.p0(i64 8, ptr %address64) #6, !dbg !470
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #6, !dbg !470
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !470

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_tb_setup_fadt_registers() #0 align 16 !dbg !471 {
entry:
  %target64 = alloca ptr, align 8
  %source64 = alloca ptr, align 8
  %pm1_register_byte_width = alloca i8, align 1
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %target64) #6, !dbg !477
  call void @llvm.dbg.declare(metadata ptr %target64, metadata !473, metadata !DIExpression()), !dbg !478
  call void @llvm.lifetime.start.p0(i64 8, ptr %source64) #6, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %source64, metadata !474, metadata !DIExpression()), !dbg !480
  call void @llvm.lifetime.start.p0(i64 1, ptr %pm1_register_byte_width) #6, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %pm1_register_byte_width, metadata !475, metadata !DIExpression()), !dbg !482
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %i, metadata !476, metadata !DIExpression()), !dbg !484
  %0 = load i8, ptr @acpi_gbl_use_default_register_widths, align 1, !dbg !485
  %tobool = icmp ne i8 %0, 0, !dbg !485
  br i1 %tobool, label %if.then, label %if.end30, !dbg !487

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !488
  br label %for.cond, !dbg !491

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4, !dbg !492
  %conv = zext i32 %1 to i64, !dbg !492
  %cmp = icmp ult i64 %conv, 8, !dbg !494
  br i1 %cmp, label %for.body, label %for.end, !dbg !495

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !496
  %idxprom = zext i32 %2 to i64, !dbg !496
  %arrayidx = getelementptr [8 x %struct.acpi_fadt_info], ptr @fadt_info_table, i64 0, i64 %idxprom, !dbg !496
  %address64 = getelementptr inbounds %struct.acpi_fadt_info, ptr %arrayidx, i32 0, i32 1, !dbg !496
  %3 = load i16, ptr %address64, align 8, !dbg !496
  %conv2 = zext i16 %3 to i64, !dbg !496
  %add.ptr = getelementptr i8, ptr @acpi_gbl_FADT, i64 %conv2, !dbg !496
  %4 = ptrtoint ptr %add.ptr to i64, !dbg !496
  %5 = inttoptr i64 %4 to ptr, !dbg !496
  store ptr %5, ptr %target64, align 8, !dbg !498
  %6 = load ptr, ptr %target64, align 8, !dbg !499
  %address = getelementptr inbounds %struct.acpi_generic_address, ptr %6, i32 0, i32 4, !dbg !501
  %7 = load i64, ptr %address, align 1, !dbg !501
  %tobool3 = icmp ne i64 %7, 0, !dbg !502
  br i1 %tobool3, label %land.lhs.true, label %if.end, !dbg !503

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !504
  %idxprom4 = zext i32 %8 to i64, !dbg !505
  %arrayidx5 = getelementptr [8 x %struct.acpi_fadt_info], ptr @fadt_info_table, i64 0, i64 %idxprom4, !dbg !505
  %default_length = getelementptr inbounds %struct.acpi_fadt_info, ptr %arrayidx5, i32 0, i32 4, !dbg !506
  %9 = load i8, ptr %default_length, align 2, !dbg !506
  %conv6 = zext i8 %9 to i32, !dbg !505
  %cmp7 = icmp sgt i32 %conv6, 0, !dbg !507
  br i1 %cmp7, label %land.lhs.true9, label %if.end, !dbg !508

land.lhs.true9:                                   ; preds = %land.lhs.true
  %10 = load i32, ptr %i, align 4, !dbg !509
  %idxprom10 = zext i32 %10 to i64, !dbg !510
  %arrayidx11 = getelementptr [8 x %struct.acpi_fadt_info], ptr @fadt_info_table, i64 0, i64 %idxprom10, !dbg !510
  %default_length12 = getelementptr inbounds %struct.acpi_fadt_info, ptr %arrayidx11, i32 0, i32 4, !dbg !511
  %11 = load i8, ptr %default_length12, align 2, !dbg !511
  %conv13 = zext i8 %11 to i32, !dbg !510
  %12 = load ptr, ptr %target64, align 8, !dbg !512
  %bit_width = getelementptr inbounds %struct.acpi_generic_address, ptr %12, i32 0, i32 1, !dbg !513
  %13 = load i8, ptr %bit_width, align 1, !dbg !513
  %conv14 = zext i8 %13 to i32, !dbg !512
  %cmp15 = icmp ne i32 %conv13, %conv14, !dbg !514
  br i1 %cmp15, label %if.then17, label %if.end, !dbg !515

if.then17:                                        ; preds = %land.lhs.true9
  %14 = load i32, ptr %i, align 4, !dbg !516
  %idxprom18 = zext i32 %14 to i64, !dbg !516
  %arrayidx19 = getelementptr [8 x %struct.acpi_fadt_info], ptr @fadt_info_table, i64 0, i64 %idxprom18, !dbg !516
  %name = getelementptr inbounds %struct.acpi_fadt_info, ptr %arrayidx19, i32 0, i32 0, !dbg !516
  %15 = load ptr, ptr %name, align 16, !dbg !516
  %16 = load ptr, ptr %target64, align 8, !dbg !516
  %bit_width20 = getelementptr inbounds %struct.acpi_generic_address, ptr %16, i32 0, i32 1, !dbg !516
  %17 = load i8, ptr %bit_width20, align 1, !dbg !516
  %conv21 = zext i8 %17 to i32, !dbg !516
  %18 = load i32, ptr %i, align 4, !dbg !516
  %idxprom22 = zext i32 %18 to i64, !dbg !516
  %arrayidx23 = getelementptr [8 x %struct.acpi_fadt_info], ptr @fadt_info_table, i64 0, i64 %idxprom22, !dbg !516
  %default_length24 = getelementptr inbounds %struct.acpi_fadt_info, ptr %arrayidx23, i32 0, i32 4, !dbg !516
  %19 = load i8, ptr %default_length24, align 2, !dbg !516
  %conv25 = zext i8 %19 to i32, !dbg !516
  call void (ptr, i32, ptr, ...) @acpi_bios_warning(ptr noundef @_acpi_module_name, i32 noundef 669, ptr noundef @.str.19, ptr noundef %15, i32 noundef %conv21, i32 noundef %conv25) #7, !dbg !516
  %20 = load i32, ptr %i, align 4, !dbg !518
  %idxprom26 = zext i32 %20 to i64, !dbg !519
  %arrayidx27 = getelementptr [8 x %struct.acpi_fadt_info], ptr @fadt_info_table, i64 0, i64 %idxprom26, !dbg !519
  %default_length28 = getelementptr inbounds %struct.acpi_fadt_info, ptr %arrayidx27, i32 0, i32 4, !dbg !520
  %21 = load i8, ptr %default_length28, align 2, !dbg !520
  %22 = load ptr, ptr %target64, align 8, !dbg !521
  %bit_width29 = getelementptr inbounds %struct.acpi_generic_address, ptr %22, i32 0, i32 1, !dbg !522
  store i8 %21, ptr %bit_width29, align 1, !dbg !523
  br label %if.end, !dbg !524

if.end:                                           ; preds = %if.then17, %land.lhs.true9, %land.lhs.true, %for.body
  br label %for.inc, !dbg !525

for.inc:                                          ; preds = %if.end
  %23 = load i32, ptr %i, align 4, !dbg !526
  %inc = add i32 %23, 1, !dbg !526
  store i32 %inc, ptr %i, align 4, !dbg !526
  br label %for.cond, !dbg !527, !llvm.loop !528

for.end:                                          ; preds = %for.cond
  br label %if.end30, !dbg !530

if.end30:                                         ; preds = %for.end, %entry
  %24 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 45, i32 1), align 1, !dbg !531
  %conv31 = zext i8 %24 to i32, !dbg !531
  %shr = ashr i32 %conv31, 4, !dbg !531
  %conv32 = trunc i32 %shr to i8, !dbg !532
  store i8 %conv32, ptr %pm1_register_byte_width, align 1, !dbg !533
  store i32 0, ptr %i, align 4, !dbg !534
  br label %for.cond33, !dbg !536

for.cond33:                                       ; preds = %for.inc54, %if.end30
  %25 = load i32, ptr %i, align 4, !dbg !537
  %conv34 = zext i32 %25 to i64, !dbg !537
  %cmp35 = icmp ult i64 %conv34, 4, !dbg !539
  br i1 %cmp35, label %for.body37, label %for.end56, !dbg !540

for.body37:                                       ; preds = %for.cond33
  %26 = load i32, ptr %i, align 4, !dbg !541
  %idxprom38 = zext i32 %26 to i64, !dbg !541
  %arrayidx39 = getelementptr [4 x %struct.acpi_fadt_pm_info], ptr @fadt_pm_info_table, i64 0, i64 %idxprom38, !dbg !541
  %source = getelementptr inbounds %struct.acpi_fadt_pm_info, ptr %arrayidx39, i32 0, i32 1, !dbg !541
  %27 = load i16, ptr %source, align 8, !dbg !541
  %conv40 = zext i16 %27 to i64, !dbg !541
  %add.ptr41 = getelementptr i8, ptr @acpi_gbl_FADT, i64 %conv40, !dbg !541
  %28 = ptrtoint ptr %add.ptr41 to i64, !dbg !541
  %29 = inttoptr i64 %28 to ptr, !dbg !541
  store ptr %29, ptr %source64, align 8, !dbg !543
  %30 = load ptr, ptr %source64, align 8, !dbg !544
  %address42 = getelementptr inbounds %struct.acpi_generic_address, ptr %30, i32 0, i32 4, !dbg !546
  %31 = load i64, ptr %address42, align 1, !dbg !546
  %tobool43 = icmp ne i64 %31, 0, !dbg !544
  br i1 %tobool43, label %if.then44, label %if.end53, !dbg !547

if.then44:                                        ; preds = %for.body37
  %32 = load i32, ptr %i, align 4, !dbg !548
  %idxprom45 = zext i32 %32 to i64, !dbg !550
  %arrayidx46 = getelementptr [4 x %struct.acpi_fadt_pm_info], ptr @fadt_pm_info_table, i64 0, i64 %idxprom45, !dbg !550
  %target = getelementptr inbounds %struct.acpi_fadt_pm_info, ptr %arrayidx46, i32 0, i32 0, !dbg !551
  %33 = load ptr, ptr %target, align 16, !dbg !551
  %34 = load ptr, ptr %source64, align 8, !dbg !552
  %space_id = getelementptr inbounds %struct.acpi_generic_address, ptr %34, i32 0, i32 0, !dbg !553
  %35 = load i8, ptr %space_id, align 1, !dbg !553
  %36 = load i8, ptr %pm1_register_byte_width, align 1, !dbg !554
  %37 = load ptr, ptr %source64, align 8, !dbg !555
  %address47 = getelementptr inbounds %struct.acpi_generic_address, ptr %37, i32 0, i32 4, !dbg !556
  %38 = load i64, ptr %address47, align 1, !dbg !556
  %39 = load i32, ptr %i, align 4, !dbg !557
  %idxprom48 = zext i32 %39 to i64, !dbg !558
  %arrayidx49 = getelementptr [4 x %struct.acpi_fadt_pm_info], ptr @fadt_pm_info_table, i64 0, i64 %idxprom48, !dbg !558
  %register_num = getelementptr inbounds %struct.acpi_fadt_pm_info, ptr %arrayidx49, i32 0, i32 2, !dbg !559
  %40 = load i8, ptr %register_num, align 2, !dbg !559
  %conv50 = zext i8 %40 to i32, !dbg !558
  %41 = load i8, ptr %pm1_register_byte_width, align 1, !dbg !560
  %conv51 = zext i8 %41 to i32, !dbg !560
  %mul = mul i32 %conv50, %conv51, !dbg !561
  %conv52 = sext i32 %mul to i64, !dbg !562
  %add = add i64 %38, %conv52, !dbg !563
  call void @acpi_tb_init_generic_address(ptr noundef %33, i8 noundef zeroext %35, i8 noundef zeroext %36, i64 noundef %add, ptr noundef @.str.20, i8 noundef zeroext 0) #7, !dbg !564
  br label %if.end53, !dbg !565

if.end53:                                         ; preds = %if.then44, %for.body37
  br label %for.inc54, !dbg !566

for.inc54:                                        ; preds = %if.end53
  %42 = load i32, ptr %i, align 4, !dbg !567
  %inc55 = add i32 %42, 1, !dbg !567
  store i32 %inc55, ptr %i, align 4, !dbg !567
  br label %for.cond33, !dbg !568, !llvm.loop !569

for.end56:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !571
  call void @llvm.lifetime.end.p0(i64 1, ptr %pm1_register_byte_width) #6, !dbg !571
  call void @llvm.lifetime.end.p0(i64 8, ptr %source64) #6, !dbg !571
  call void @llvm.lifetime.end.p0(i64 8, ptr %target64) #6, !dbg !571
  ret void, !dbg !571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @acpi_tb_select_address(ptr noundef %register_name, i32 noundef %address32, i64 noundef %address64) #0 align 16 !dbg !572 {
entry:
  %retval = alloca i64, align 8
  %register_name.addr = alloca ptr, align 8
  %address32.addr = alloca i32, align 4
  %address64.addr = alloca i64, align 8
  store ptr %register_name, ptr %register_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %register_name.addr, metadata !577, metadata !DIExpression()), !dbg !580
  store i32 %address32, ptr %address32.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %address32.addr, metadata !578, metadata !DIExpression()), !dbg !581
  store i64 %address64, ptr %address64.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address64.addr, metadata !579, metadata !DIExpression()), !dbg !582
  %0 = load i64, ptr %address64.addr, align 8, !dbg !583
  %tobool = icmp ne i64 %0, 0, !dbg !583
  br i1 %tobool, label %if.end, label %if.then, !dbg !585

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %address32.addr, align 4, !dbg !586
  %conv = zext i32 %1 to i64, !dbg !588
  store i64 %conv, ptr %retval, align 8, !dbg !589
  br label %return, !dbg !589

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %address32.addr, align 4, !dbg !590
  %tobool1 = icmp ne i32 %2, 0, !dbg !590
  br i1 %tobool1, label %land.lhs.true, label %if.end13, !dbg !592

land.lhs.true:                                    ; preds = %if.end
  %3 = load i64, ptr %address64.addr, align 8, !dbg !593
  %4 = load i32, ptr %address32.addr, align 4, !dbg !594
  %conv2 = zext i32 %4 to i64, !dbg !595
  %cmp = icmp ne i64 %3, %conv2, !dbg !596
  br i1 %cmp, label %if.then4, label %if.end13, !dbg !597

if.then4:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %register_name.addr, align 8, !dbg !598
  %6 = load i32, ptr %address32.addr, align 4, !dbg !598
  %7 = load i64, ptr %address64.addr, align 8, !dbg !598
  %shr = lshr i64 %7, 32, !dbg !598
  %conv5 = trunc i64 %shr to i32, !dbg !598
  %8 = load i64, ptr %address64.addr, align 8, !dbg !598
  %conv6 = trunc i64 %8 to i32, !dbg !598
  %9 = load i8, ptr @acpi_gbl_use32_bit_fadt_addresses, align 1, !dbg !598
  %conv7 = zext i8 %9 to i32, !dbg !598
  %tobool8 = icmp ne i32 %conv7, 0, !dbg !598
  %10 = zext i1 %tobool8 to i64, !dbg !598
  %cond = select i1 %tobool8, i32 32, i32 64, !dbg !598
  call void (ptr, i32, ptr, ...) @acpi_bios_warning(ptr noundef @_acpi_module_name, i32 noundef 243, ptr noundef @.str.9, ptr noundef %5, i32 noundef %6, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %cond) #7, !dbg !598
  %11 = load i8, ptr @acpi_gbl_use32_bit_fadt_addresses, align 1, !dbg !600
  %tobool9 = icmp ne i8 %11, 0, !dbg !600
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !602

if.then10:                                        ; preds = %if.then4
  %12 = load i32, ptr %address32.addr, align 4, !dbg !603
  %conv11 = zext i32 %12 to i64, !dbg !605
  store i64 %conv11, ptr %retval, align 8, !dbg !606
  br label %return, !dbg !606

if.end12:                                         ; preds = %if.then4
  br label %if.end13, !dbg !607

if.end13:                                         ; preds = %if.end12, %land.lhs.true, %if.end
  %13 = load i64, ptr %address64.addr, align 8, !dbg !608
  store i64 %13, ptr %retval, align 8, !dbg !609
  br label %return, !dbg !609

return:                                           ; preds = %if.end13, %if.then10, %if.then
  %14 = load i64, ptr %retval, align 8, !dbg !610
  ret i64 %14, !dbg !610
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_tb_init_generic_address(ptr noundef %generic_address, i8 noundef zeroext %space_id, i8 noundef zeroext %byte_width, i64 noundef %address, ptr noundef %register_name, i8 noundef zeroext %flags) #0 align 16 !dbg !611 {
entry:
  %generic_address.addr = alloca ptr, align 8
  %space_id.addr = alloca i8, align 1
  %byte_width.addr = alloca i8, align 1
  %address.addr = alloca i64, align 8
  %register_name.addr = alloca ptr, align 8
  %flags.addr = alloca i8, align 1
  %bit_width = alloca i8, align 1
  store ptr %generic_address, ptr %generic_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %generic_address.addr, metadata !615, metadata !DIExpression()), !dbg !622
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !616, metadata !DIExpression()), !dbg !623
  store i8 %byte_width, ptr %byte_width.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %byte_width.addr, metadata !617, metadata !DIExpression()), !dbg !624
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !618, metadata !DIExpression()), !dbg !625
  store ptr %register_name, ptr %register_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %register_name.addr, metadata !619, metadata !DIExpression()), !dbg !626
  store i8 %flags, ptr %flags.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !620, metadata !DIExpression()), !dbg !627
  call void @llvm.lifetime.start.p0(i64 1, ptr %bit_width) #6, !dbg !628
  call void @llvm.dbg.declare(metadata ptr %bit_width, metadata !621, metadata !DIExpression()), !dbg !629
  %0 = load i8, ptr %byte_width.addr, align 1, !dbg !630
  %conv = zext i8 %0 to i32, !dbg !630
  %mul = mul i32 %conv, 8, !dbg !631
  %conv1 = trunc i32 %mul to i8, !dbg !632
  store i8 %conv1, ptr %bit_width, align 1, !dbg !633
  %1 = load i8, ptr %byte_width.addr, align 1, !dbg !634
  %conv2 = zext i8 %1 to i32, !dbg !634
  %cmp = icmp sgt i32 %conv2, 31, !dbg !636
  br i1 %cmp, label %if.then, label %if.end9, !dbg !637

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %flags.addr, align 1, !dbg !638
  %conv4 = zext i8 %2 to i32, !dbg !638
  %and = and i32 %conv4, 4, !dbg !641
  %tobool = icmp ne i32 %and, 0, !dbg !641
  br i1 %tobool, label %if.end, label %if.then5, !dbg !642

if.then5:                                         ; preds = %if.then
  %3 = load ptr, ptr %register_name.addr, align 8, !dbg !643
  %4 = load i8, ptr %byte_width.addr, align 1, !dbg !643
  %conv6 = zext i8 %4 to i32, !dbg !643
  %5 = load i8, ptr %byte_width.addr, align 1, !dbg !643
  %conv7 = zext i8 %5 to i32, !dbg !643
  %mul8 = mul i32 %conv7, 8, !dbg !643
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 177, ptr noundef @.str.18, ptr noundef %3, i32 noundef %conv6, i32 noundef %mul8) #7, !dbg !643
  br label %if.end, !dbg !645

if.end:                                           ; preds = %if.then5, %if.then
  store i8 -1, ptr %bit_width, align 1, !dbg !646
  br label %if.end9, !dbg !647

if.end9:                                          ; preds = %if.end, %entry
  %6 = load i64, ptr %address.addr, align 8, !dbg !648
  %7 = load ptr, ptr %generic_address.addr, align 8, !dbg !648
  %address10 = getelementptr inbounds %struct.acpi_generic_address, ptr %7, i32 0, i32 4, !dbg !648
  store i64 %6, ptr %address10, align 8, !dbg !648
  %8 = load i8, ptr %space_id.addr, align 1, !dbg !649
  %9 = load ptr, ptr %generic_address.addr, align 8, !dbg !650
  %space_id11 = getelementptr inbounds %struct.acpi_generic_address, ptr %9, i32 0, i32 0, !dbg !651
  store i8 %8, ptr %space_id11, align 1, !dbg !652
  %10 = load i8, ptr %bit_width, align 1, !dbg !653
  %11 = load ptr, ptr %generic_address.addr, align 8, !dbg !654
  %bit_width12 = getelementptr inbounds %struct.acpi_generic_address, ptr %11, i32 0, i32 1, !dbg !655
  store i8 %10, ptr %bit_width12, align 1, !dbg !656
  %12 = load ptr, ptr %generic_address.addr, align 8, !dbg !657
  %bit_offset = getelementptr inbounds %struct.acpi_generic_address, ptr %12, i32 0, i32 2, !dbg !658
  store i8 0, ptr %bit_offset, align 1, !dbg !659
  %13 = load ptr, ptr %generic_address.addr, align 8, !dbg !660
  %access_width = getelementptr inbounds %struct.acpi_generic_address, ptr %13, i32 0, i32 3, !dbg !661
  store i8 0, ptr %access_width, align 1, !dbg !662
  call void @llvm.lifetime.end.p0(i64 1, ptr %bit_width) #6, !dbg !663
  ret void, !dbg !663
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !664 dso_local void @acpi_bios_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !665 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !157, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.tbfadt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22tbfadt\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/tbfadt.ll drivers/acpi/acpica/tbfadt.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !39, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/tbfadt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8db93397a3a6a31c6d97228b6163d25")
!4 = !{!5, !12, !15, !18, !19, !22, !26, !27, !7, !23, !36, !37, !38}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !14)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !17)
!17 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !20, line: 42, baseType: !21)
!20 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !6, line: 127, baseType: !7)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_generic_address", file: !29, line: 90, size: 96, elements: !30)
!29 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!30 = !{!31, !32, !33, !34, !35}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !28, file: !29, line: 91, baseType: !23, size: 8)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !28, file: !29, line: 92, baseType: !23, size: 8, offset: 8)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !28, file: !29, line: 93, baseType: !23, size: 8, offset: 16)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "access_width", scope: !28, file: !29, line: 94, baseType: !23, size: 8, offset: 24)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !28, file: !29, line: 95, baseType: !7, size: 64, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !6, line: 814, baseType: !23)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !{!40, !46, !0, !51, !56, !61, !66, !71, !76, !81, !86, !88, !93, !95, !100, !102, !107, !112, !117, !119, !132, !137, !142, !147}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 576, elements: !44)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !{!45}
!45 = !DISubrange(count: 72)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 208, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 26)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !3, line: 477, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 40, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 5)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !3, line: 543, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 632, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 79)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !3, line: 564, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 328, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 41)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !3, line: 599, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 584, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 73)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !3, line: 615, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 536, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 67)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !3, line: 615, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 56, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 7)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !3, line: 615, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 8)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !3, line: 243, type: !58, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !3, line: 49, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 120, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 15)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !3, line: 56, type: !90, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !3, line: 63, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 136, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 17)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !97, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 16)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 104, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 13)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 80, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 10)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !114, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "fadt_info_table", scope: !2, file: !3, line: 48, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 1024, elements: !84)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_fadt_info", file: !3, line: 33, size: 128, elements: !123)
!123 = !{!124, !127, !128, !129, !130, !131}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !122, file: !3, line: 34, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !122, file: !3, line: 35, baseType: !15, size: 16, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !122, file: !3, line: 36, baseType: !15, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !122, file: !3, line: 37, baseType: !15, size: 16, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "default_length", scope: !122, file: !3, line: 38, baseType: !23, size: 8, offset: 112)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !122, file: !3, line: 39, baseType: !23, size: 8, offset: 120)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 880, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 110)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !3, line: 669, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 392, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 49)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !3, line: 719, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 96, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 12)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "fadt_pm_info_table", scope: !2, file: !3, line: 118, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 512, elements: !155)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_fadt_pm_info", file: !3, line: 111, size: 128, elements: !151)
!151 = !{!152, !153, !154}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !150, file: !3, line: 112, baseType: !27, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !150, file: !3, line: 113, baseType: !15, size: 16, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "register_num", scope: !150, file: !3, line: 114, baseType: !23, size: 8, offset: 80)
!155 = !{!156}
!156 = !DISubrange(count: 4)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 56, elements: !79)
!158 = !{i32 7, !"Dwarf Version", i32 5}
!159 = !{i32 2, !"Debug Info Version", i32 3}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 8, !"cf-protection-branch", i32 1}
!162 = !{i32 4, !"function_return_thunk_extern", i32 1}
!163 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!164 = !{i32 1, !"Code Model", i32 2}
!165 = !{i32 1, !"override-stack-alignment", i32 8}
!166 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!167 = distinct !DISubprogram(name: "acpi_tb_parse_fadt", scope: !3, file: !3, line: 276, type: !168, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !170)
!168 = !DISubroutineType(types: !169)
!169 = !{null}
!170 = !{!171, !172, !189, !205}
!171 = !DILocalVariable(name: "length", scope: !167, file: !3, line: 278, type: !12)
!172 = !DILocalVariable(name: "table", scope: !167, file: !3, line: 279, type: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !29, line: 68, size: 288, elements: !175)
!175 = !{!176, !178, !179, !180, !181, !185, !186, !187, !188}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !174, file: !29, line: 69, baseType: !177, size: 32)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 32, elements: !155)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !174, file: !29, line: 70, baseType: !12, size: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !174, file: !29, line: 71, baseType: !23, size: 8, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !174, file: !29, line: 72, baseType: !23, size: 8, offset: 72)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !174, file: !29, line: 73, baseType: !182, size: 48, offset: 80)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 48, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 6)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !174, file: !29, line: 74, baseType: !83, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !174, file: !29, line: 75, baseType: !12, size: 32, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !174, file: !29, line: 76, baseType: !177, size: 32, offset: 224)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !174, file: !29, line: 77, baseType: !12, size: 32, offset: 256)
!189 = !DILocalVariable(name: "fadt_desc", scope: !167, file: !3, line: 280, type: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !29, line: 335, size: 256, elements: !192)
!192 = !{!193, !194, !195, !196, !201, !203, !204}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !191, file: !29, line: 336, baseType: !5, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !191, file: !29, line: 337, baseType: !173, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !191, file: !29, line: 338, baseType: !12, size: 32, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !191, file: !29, line: 339, baseType: !197, size: 32, offset: 160)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !29, line: 328, size: 32, elements: !198)
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !197, file: !29, line: 329, baseType: !12, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !197, file: !29, line: 330, baseType: !177, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !191, file: !29, line: 340, baseType: !202, size: 16, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !15)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !191, file: !29, line: 341, baseType: !23, size: 8, offset: 208)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !191, file: !29, line: 342, baseType: !15, size: 16, offset: 224)
!205 = !DILocalVariable(name: "status", scope: !167, file: !3, line: 281, type: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !12)
!207 = !DILocation(line: 278, column: 2, scope: !167)
!208 = !DILocation(line: 278, column: 6, scope: !167)
!209 = !DILocation(line: 279, column: 2, scope: !167)
!210 = !DILocation(line: 279, column: 28, scope: !167)
!211 = !DILocation(line: 280, column: 2, scope: !167)
!212 = !DILocation(line: 280, column: 26, scope: !167)
!213 = !DILocation(line: 281, column: 2, scope: !167)
!214 = !DILocation(line: 281, column: 14, scope: !167)
!215 = !DILocation(line: 290, column: 40, scope: !167)
!216 = !DILocation(line: 290, column: 47, scope: !167)
!217 = !DILocation(line: 290, column: 15, scope: !167)
!218 = !DILocation(line: 290, column: 12, scope: !167)
!219 = !DILocation(line: 291, column: 29, scope: !167)
!220 = !DILocation(line: 291, column: 11, scope: !167)
!221 = !DILocation(line: 291, column: 9, scope: !167)
!222 = !DILocation(line: 292, column: 6, scope: !223)
!223 = distinct !DILexicalBlock(scope: !167, file: !3, line: 292, column: 6)
!224 = !DILocation(line: 292, column: 6, scope: !167)
!225 = !DILocation(line: 293, column: 3, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !3, line: 292, column: 28)
!227 = !DILocation(line: 295, column: 11, scope: !167)
!228 = !DILocation(line: 295, column: 22, scope: !167)
!229 = !DILocation(line: 295, column: 9, scope: !167)
!230 = !DILocation(line: 301, column: 32, scope: !167)
!231 = !DILocation(line: 301, column: 39, scope: !167)
!232 = !DILocation(line: 301, column: 8, scope: !167)
!233 = !DILocation(line: 305, column: 28, scope: !167)
!234 = !DILocation(line: 305, column: 35, scope: !167)
!235 = !DILocation(line: 305, column: 2, scope: !167)
!236 = !DILocation(line: 309, column: 20, scope: !167)
!237 = !DILocation(line: 309, column: 2, scope: !167)
!238 = !DILocation(line: 314, column: 12, scope: !167)
!239 = !DILocation(line: 313, column: 2, scope: !167)
!240 = !DILocation(line: 320, column: 7, scope: !241)
!241 = distinct !DILexicalBlock(scope: !167, file: !3, line: 320, column: 6)
!242 = !DILocation(line: 320, column: 6, scope: !167)
!243 = !DILocation(line: 321, column: 21, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 321, column: 7)
!245 = distinct !DILexicalBlock(scope: !241, file: !3, line: 320, column: 34)
!246 = !DILocation(line: 321, column: 7, scope: !244)
!247 = !DILocation(line: 321, column: 7, scope: !245)
!248 = !DILocation(line: 323, column: 28, scope: !249)
!249 = distinct !DILexicalBlock(scope: !244, file: !3, line: 321, column: 27)
!250 = !DILocation(line: 322, column: 35, scope: !249)
!251 = !DILocation(line: 322, column: 4, scope: !249)
!252 = !DILocation(line: 327, column: 3, scope: !249)
!253 = !DILocation(line: 328, column: 21, scope: !254)
!254 = distinct !DILexicalBlock(scope: !245, file: !3, line: 328, column: 7)
!255 = !DILocation(line: 328, column: 7, scope: !254)
!256 = !DILocation(line: 328, column: 7, scope: !245)
!257 = !DILocation(line: 330, column: 28, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 328, column: 28)
!259 = !DILocation(line: 329, column: 4, scope: !258)
!260 = !DILocation(line: 334, column: 3, scope: !258)
!261 = !DILocation(line: 335, column: 2, scope: !245)
!262 = !DILocation(line: 336, column: 1, scope: !167)
!263 = !DISubprogram(name: "acpi_tb_get_table", scope: !264, file: !264, line: 138, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DIFile(filename: "drivers/acpi/acpica/actables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb0787ba059aac7511e633019dab5fb8")
!265 = !DISubroutineType(types: !266)
!266 = !{!206, !190, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!268 = !DISubprogram(name: "acpi_ut_verify_checksum", scope: !269, file: !269, line: 174, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!269 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!270 = !DISubroutineType(types: !271)
!271 = !{!206, !173, !12}
!272 = distinct !DISubprogram(name: "acpi_tb_create_local_fadt", scope: !3, file: !3, line: 354, type: !273, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !275)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !173, !12}
!275 = !{!276, !277}
!276 = !DILocalVariable(name: "table", arg: 1, scope: !272, file: !3, line: 354, type: !173)
!277 = !DILocalVariable(name: "length", arg: 2, scope: !272, file: !3, line: 354, type: !12)
!278 = !DILocation(line: 354, column: 58, scope: !272)
!279 = !DILocation(line: 354, column: 69, scope: !272)
!280 = !DILocation(line: 361, column: 6, scope: !281)
!281 = distinct !DILexicalBlock(scope: !272, file: !3, line: 361, column: 6)
!282 = !DILocation(line: 361, column: 13, scope: !281)
!283 = !DILocation(line: 361, column: 6, scope: !272)
!284 = !DILocation(line: 362, column: 3, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !3, line: 361, column: 47)
!286 = !DILocation(line: 368, column: 2, scope: !285)
!287 = !DILocation(line: 372, column: 2, scope: !272)
!288 = !DILocation(line: 376, column: 25, scope: !272)
!289 = !DILocation(line: 377, column: 9, scope: !272)
!290 = !DILocation(line: 376, column: 2, scope: !272)
!291 = !DILocation(line: 381, column: 28, scope: !272)
!292 = !DILocation(line: 382, column: 20, scope: !293)
!293 = distinct !DILexicalBlock(scope: !272, file: !3, line: 382, column: 6)
!294 = !DILocation(line: 382, column: 26, scope: !293)
!295 = !DILocation(line: 382, column: 6, scope: !272)
!296 = !DILocation(line: 383, column: 29, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !3, line: 382, column: 50)
!298 = !DILocation(line: 384, column: 2, scope: !297)
!299 = !DILocation(line: 388, column: 2, scope: !272)
!300 = !DILocation(line: 392, column: 2, scope: !272)
!301 = !DILocation(line: 393, column: 1, scope: !272)
!302 = !DISubprogram(name: "acpi_tb_put_table", scope: !264, file: !264, line: 141, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !190}
!305 = !DISubprogram(name: "acpi_tb_install_standard_table", scope: !264, file: !264, line: 88, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DISubroutineType(types: !307)
!307 = !{!206, !5, !23, !173, !23, !23, !18}
!308 = !DISubprogram(name: "acpi_bios_warning", scope: !309, file: !309, line: 931, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!309 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!310 = !DISubroutineType(types: !311)
!311 = !{null, !125, !12, !125, null}
!312 = distinct !DISubprogram(name: "acpi_tb_convert_fadt", scope: !3, file: !3, line: 439, type: !168, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !313)
!313 = !{!314, !315, !316, !317, !318, !319}
!314 = !DILocalVariable(name: "name", scope: !312, file: !3, line: 441, type: !125)
!315 = !DILocalVariable(name: "address64", scope: !312, file: !3, line: 442, type: !27)
!316 = !DILocalVariable(name: "address32", scope: !312, file: !3, line: 443, type: !12)
!317 = !DILocalVariable(name: "length", scope: !312, file: !3, line: 444, type: !23)
!318 = !DILocalVariable(name: "flags", scope: !312, file: !3, line: 445, type: !23)
!319 = !DILocalVariable(name: "i", scope: !312, file: !3, line: 446, type: !12)
!320 = !DILocation(line: 441, column: 2, scope: !312)
!321 = !DILocation(line: 441, column: 14, scope: !312)
!322 = !DILocation(line: 442, column: 2, scope: !312)
!323 = !DILocation(line: 442, column: 31, scope: !312)
!324 = !DILocation(line: 443, column: 2, scope: !312)
!325 = !DILocation(line: 443, column: 6, scope: !312)
!326 = !DILocation(line: 444, column: 2, scope: !312)
!327 = !DILocation(line: 444, column: 5, scope: !312)
!328 = !DILocation(line: 445, column: 2, scope: !312)
!329 = !DILocation(line: 445, column: 5, scope: !312)
!330 = !DILocation(line: 446, column: 2, scope: !312)
!331 = !DILocation(line: 446, column: 6, scope: !312)
!332 = !DILocation(line: 459, column: 27, scope: !333)
!333 = distinct !DILexicalBlock(scope: !312, file: !3, line: 459, column: 6)
!334 = !DILocation(line: 459, column: 34, scope: !333)
!335 = !DILocation(line: 459, column: 6, scope: !312)
!336 = !DILocation(line: 460, column: 35, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !3, line: 459, column: 56)
!338 = !DILocation(line: 461, column: 32, scope: !337)
!339 = !DILocation(line: 462, column: 29, scope: !337)
!340 = !DILocation(line: 463, column: 28, scope: !337)
!341 = !DILocation(line: 464, column: 2, scope: !337)
!342 = !DILocation(line: 471, column: 30, scope: !312)
!343 = !DILocation(line: 478, column: 26, scope: !312)
!344 = !DILocation(line: 479, column: 26, scope: !312)
!345 = !DILocation(line: 477, column: 24, scope: !312)
!346 = !DILocation(line: 477, column: 22, scope: !312)
!347 = !DILocation(line: 483, column: 6, scope: !348)
!348 = distinct !DILexicalBlock(scope: !312, file: !3, line: 483, column: 6)
!349 = !DILocation(line: 483, column: 6, scope: !312)
!350 = !DILocation(line: 484, column: 3, scope: !351)
!351 = distinct !DILexicalBlock(scope: !348, file: !3, line: 483, column: 33)
!352 = !DILocation(line: 489, column: 9, scope: !353)
!353 = distinct !DILexicalBlock(scope: !312, file: !3, line: 489, column: 2)
!354 = !DILocation(line: 489, column: 7, scope: !353)
!355 = !DILocation(line: 489, column: 14, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !3, line: 489, column: 2)
!357 = !DILocation(line: 489, column: 16, scope: !356)
!358 = !DILocation(line: 489, column: 2, scope: !353)
!359 = !DILocation(line: 494, column: 16, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !3, line: 489, column: 47)
!361 = !DILocation(line: 494, column: 15, scope: !360)
!362 = !DILocation(line: 494, column: 13, scope: !360)
!363 = !DILocation(line: 498, column: 15, scope: !360)
!364 = !DILocation(line: 498, column: 13, scope: !360)
!365 = !DILocation(line: 502, column: 13, scope: !360)
!366 = !DILocation(line: 502, column: 12, scope: !360)
!367 = !DILocation(line: 502, column: 10, scope: !360)
!368 = !DILocation(line: 506, column: 26, scope: !360)
!369 = !DILocation(line: 506, column: 10, scope: !360)
!370 = !DILocation(line: 506, column: 29, scope: !360)
!371 = !DILocation(line: 506, column: 8, scope: !360)
!372 = !DILocation(line: 507, column: 27, scope: !360)
!373 = !DILocation(line: 507, column: 11, scope: !360)
!374 = !DILocation(line: 507, column: 30, scope: !360)
!375 = !DILocation(line: 507, column: 9, scope: !360)
!376 = !DILocation(line: 537, column: 7, scope: !377)
!377 = distinct !DILexicalBlock(scope: !360, file: !3, line: 537, column: 7)
!378 = !DILocation(line: 537, column: 7, scope: !360)
!379 = !DILocation(line: 538, column: 8, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !3, line: 538, column: 8)
!381 = distinct !DILexicalBlock(scope: !377, file: !3, line: 537, column: 18)
!382 = !DILocation(line: 538, column: 19, scope: !380)
!383 = !DILocation(line: 538, column: 8, scope: !381)
!384 = !DILocation(line: 539, column: 9, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !3, line: 539, column: 9)
!386 = distinct !DILexicalBlock(scope: !380, file: !3, line: 538, column: 28)
!387 = !DILocation(line: 539, column: 20, scope: !385)
!388 = !DILocation(line: 539, column: 36, scope: !385)
!389 = !DILocation(line: 539, column: 31, scope: !385)
!390 = !DILocation(line: 539, column: 28, scope: !385)
!391 = !DILocation(line: 539, column: 9, scope: !386)
!392 = !DILocation(line: 543, column: 6, scope: !393)
!393 = distinct !DILexicalBlock(scope: !385, file: !3, line: 539, column: 47)
!394 = !DILocation(line: 551, column: 5, scope: !393)
!395 = !DILocation(line: 561, column: 10, scope: !396)
!396 = distinct !DILexicalBlock(scope: !386, file: !3, line: 561, column: 9)
!397 = !DILocation(line: 561, column: 29, scope: !396)
!398 = !DILocation(line: 561, column: 48, scope: !396)
!399 = !DILocation(line: 562, column: 10, scope: !396)
!400 = !DILocation(line: 562, column: 21, scope: !396)
!401 = !DILocation(line: 563, column: 10, scope: !396)
!402 = !DILocation(line: 562, column: 31, scope: !396)
!403 = !DILocation(line: 561, column: 9, scope: !386)
!404 = !DILocation(line: 564, column: 6, scope: !405)
!405 = distinct !DILexicalBlock(scope: !396, file: !3, line: 563, column: 31)
!406 = !DILocation(line: 570, column: 5, scope: !405)
!407 = !DILocation(line: 571, column: 4, scope: !386)
!408 = !DILocation(line: 583, column: 9, scope: !409)
!409 = distinct !DILexicalBlock(scope: !381, file: !3, line: 583, column: 8)
!410 = !DILocation(line: 583, column: 20, scope: !409)
!411 = !DILocation(line: 584, column: 8, scope: !409)
!412 = !DILocation(line: 584, column: 11, scope: !409)
!413 = !DILocation(line: 583, column: 8, scope: !381)
!414 = !DILocation(line: 585, column: 34, scope: !415)
!415 = distinct !DILexicalBlock(scope: !409, file: !3, line: 584, column: 46)
!416 = !DILocation(line: 587, column: 13, scope: !415)
!417 = !DILocation(line: 588, column: 18, scope: !415)
!418 = !DILocation(line: 588, column: 13, scope: !415)
!419 = !DILocation(line: 589, column: 13, scope: !415)
!420 = !DILocation(line: 589, column: 19, scope: !415)
!421 = !DILocation(line: 585, column: 5, scope: !415)
!422 = !DILocation(line: 590, column: 4, scope: !415)
!423 = !DILocation(line: 591, column: 3, scope: !381)
!424 = !DILocation(line: 593, column: 23, scope: !425)
!425 = distinct !DILexicalBlock(scope: !360, file: !3, line: 593, column: 7)
!426 = !DILocation(line: 593, column: 7, scope: !425)
!427 = !DILocation(line: 593, column: 26, scope: !425)
!428 = !DILocation(line: 593, column: 32, scope: !425)
!429 = !DILocation(line: 593, column: 7, scope: !360)
!430 = !DILocation(line: 598, column: 9, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 598, column: 8)
!432 = distinct !DILexicalBlock(scope: !425, file: !3, line: 593, column: 54)
!433 = !DILocation(line: 598, column: 20, scope: !431)
!434 = !DILocation(line: 598, column: 28, scope: !431)
!435 = !DILocation(line: 598, column: 32, scope: !431)
!436 = !DILocation(line: 598, column: 8, scope: !432)
!437 = !DILocation(line: 599, column: 5, scope: !438)
!438 = distinct !DILexicalBlock(scope: !431, file: !3, line: 598, column: 40)
!439 = !DILocation(line: 606, column: 4, scope: !438)
!440 = !DILocation(line: 607, column: 3, scope: !432)
!441 = !DILocation(line: 607, column: 30, scope: !442)
!442 = distinct !DILexicalBlock(scope: !425, file: !3, line: 607, column: 14)
!443 = !DILocation(line: 607, column: 14, scope: !442)
!444 = !DILocation(line: 607, column: 33, scope: !442)
!445 = !DILocation(line: 607, column: 39, scope: !442)
!446 = !DILocation(line: 607, column: 14, scope: !425)
!447 = !DILocation(line: 613, column: 9, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 613, column: 8)
!449 = distinct !DILexicalBlock(scope: !442, file: !3, line: 607, column: 68)
!450 = !DILocation(line: 613, column: 20, scope: !448)
!451 = !DILocation(line: 613, column: 28, scope: !448)
!452 = !DILocation(line: 613, column: 32, scope: !448)
!453 = !DILocation(line: 613, column: 40, scope: !448)
!454 = !DILocation(line: 614, column: 10, scope: !448)
!455 = !DILocation(line: 614, column: 21, scope: !448)
!456 = !DILocation(line: 614, column: 29, scope: !448)
!457 = !DILocation(line: 614, column: 32, scope: !448)
!458 = !DILocation(line: 613, column: 8, scope: !449)
!459 = !DILocation(line: 615, column: 5, scope: !460)
!460 = distinct !DILexicalBlock(scope: !448, file: !3, line: 614, column: 41)
!461 = !DILocation(line: 625, column: 4, scope: !460)
!462 = !DILocation(line: 626, column: 3, scope: !449)
!463 = !DILocation(line: 627, column: 2, scope: !360)
!464 = !DILocation(line: 489, column: 43, scope: !356)
!465 = !DILocation(line: 489, column: 2, scope: !356)
!466 = distinct !{!466, !358, !467, !468, !469}
!467 = !DILocation(line: 627, column: 2, scope: !353)
!468 = !{!"llvm.loop.mustprogress"}
!469 = !{!"llvm.loop.unroll.disable"}
!470 = !DILocation(line: 628, column: 1, scope: !312)
!471 = distinct !DISubprogram(name: "acpi_tb_setup_fadt_registers", scope: !3, file: !3, line: 643, type: !168, scopeLine: 644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!472 = !{!473, !474, !475, !476}
!473 = !DILocalVariable(name: "target64", scope: !471, file: !3, line: 645, type: !27)
!474 = !DILocalVariable(name: "source64", scope: !471, file: !3, line: 646, type: !27)
!475 = !DILocalVariable(name: "pm1_register_byte_width", scope: !471, file: !3, line: 647, type: !23)
!476 = !DILocalVariable(name: "i", scope: !471, file: !3, line: 648, type: !12)
!477 = !DILocation(line: 645, column: 2, scope: !471)
!478 = !DILocation(line: 645, column: 31, scope: !471)
!479 = !DILocation(line: 646, column: 2, scope: !471)
!480 = !DILocation(line: 646, column: 31, scope: !471)
!481 = !DILocation(line: 647, column: 2, scope: !471)
!482 = !DILocation(line: 647, column: 5, scope: !471)
!483 = !DILocation(line: 648, column: 2, scope: !471)
!484 = !DILocation(line: 648, column: 6, scope: !471)
!485 = !DILocation(line: 654, column: 6, scope: !486)
!486 = distinct !DILexicalBlock(scope: !471, file: !3, line: 654, column: 6)
!487 = !DILocation(line: 654, column: 6, scope: !471)
!488 = !DILocation(line: 655, column: 10, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 655, column: 3)
!490 = distinct !DILexicalBlock(scope: !486, file: !3, line: 654, column: 44)
!491 = !DILocation(line: 655, column: 8, scope: !489)
!492 = !DILocation(line: 655, column: 15, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !3, line: 655, column: 3)
!494 = !DILocation(line: 655, column: 17, scope: !493)
!495 = !DILocation(line: 655, column: 3, scope: !489)
!496 = !DILocation(line: 657, column: 8, scope: !497)
!497 = distinct !DILexicalBlock(scope: !493, file: !3, line: 655, column: 48)
!498 = !DILocation(line: 656, column: 13, scope: !497)
!499 = !DILocation(line: 665, column: 9, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !3, line: 665, column: 8)
!501 = !DILocation(line: 665, column: 19, scope: !500)
!502 = !DILocation(line: 665, column: 8, scope: !500)
!503 = !DILocation(line: 665, column: 28, scope: !500)
!504 = !DILocation(line: 666, column: 25, scope: !500)
!505 = !DILocation(line: 666, column: 9, scope: !500)
!506 = !DILocation(line: 666, column: 28, scope: !500)
!507 = !DILocation(line: 666, column: 43, scope: !500)
!508 = !DILocation(line: 666, column: 48, scope: !500)
!509 = !DILocation(line: 667, column: 25, scope: !500)
!510 = !DILocation(line: 667, column: 9, scope: !500)
!511 = !DILocation(line: 667, column: 28, scope: !500)
!512 = !DILocation(line: 668, column: 9, scope: !500)
!513 = !DILocation(line: 668, column: 19, scope: !500)
!514 = !DILocation(line: 667, column: 43, scope: !500)
!515 = !DILocation(line: 665, column: 8, scope: !497)
!516 = !DILocation(line: 669, column: 5, scope: !517)
!517 = distinct !DILexicalBlock(scope: !500, file: !3, line: 668, column: 31)
!518 = !DILocation(line: 679, column: 25, scope: !517)
!519 = !DILocation(line: 679, column: 9, scope: !517)
!520 = !DILocation(line: 679, column: 28, scope: !517)
!521 = !DILocation(line: 678, column: 5, scope: !517)
!522 = !DILocation(line: 678, column: 15, scope: !517)
!523 = !DILocation(line: 678, column: 25, scope: !517)
!524 = !DILocation(line: 680, column: 4, scope: !517)
!525 = !DILocation(line: 681, column: 3, scope: !497)
!526 = !DILocation(line: 655, column: 44, scope: !493)
!527 = !DILocation(line: 655, column: 3, scope: !493)
!528 = distinct !{!528, !495, !529, !468, !469}
!529 = !DILocation(line: 681, column: 3, scope: !489)
!530 = !DILocation(line: 682, column: 2, scope: !490)
!531 = !DILocation(line: 690, column: 6, scope: !471)
!532 = !DILocation(line: 689, column: 28, scope: !471)
!533 = !DILocation(line: 689, column: 26, scope: !471)
!534 = !DILocation(line: 706, column: 9, scope: !535)
!535 = distinct !DILexicalBlock(scope: !471, file: !3, line: 706, column: 2)
!536 = !DILocation(line: 706, column: 7, scope: !535)
!537 = !DILocation(line: 706, column: 14, scope: !538)
!538 = distinct !DILexicalBlock(scope: !535, file: !3, line: 706, column: 2)
!539 = !DILocation(line: 706, column: 16, scope: !538)
!540 = !DILocation(line: 706, column: 2, scope: !535)
!541 = !DILocation(line: 708, column: 7, scope: !542)
!542 = distinct !DILexicalBlock(scope: !538, file: !3, line: 706, column: 50)
!543 = !DILocation(line: 707, column: 12, scope: !542)
!544 = !DILocation(line: 711, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !542, file: !3, line: 711, column: 7)
!546 = !DILocation(line: 711, column: 17, scope: !545)
!547 = !DILocation(line: 711, column: 7, scope: !542)
!548 = !DILocation(line: 712, column: 52, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !3, line: 711, column: 26)
!550 = !DILocation(line: 712, column: 33, scope: !549)
!551 = !DILocation(line: 713, column: 12, scope: !549)
!552 = !DILocation(line: 713, column: 20, scope: !549)
!553 = !DILocation(line: 713, column: 30, scope: !549)
!554 = !DILocation(line: 714, column: 12, scope: !549)
!555 = !DILocation(line: 715, column: 12, scope: !549)
!556 = !DILocation(line: 715, column: 22, scope: !549)
!557 = !DILocation(line: 716, column: 32, scope: !549)
!558 = !DILocation(line: 716, column: 13, scope: !549)
!559 = !DILocation(line: 717, column: 13, scope: !549)
!560 = !DILocation(line: 718, column: 13, scope: !549)
!561 = !DILocation(line: 717, column: 26, scope: !549)
!562 = !DILocation(line: 716, column: 12, scope: !549)
!563 = !DILocation(line: 715, column: 30, scope: !549)
!564 = !DILocation(line: 712, column: 4, scope: !549)
!565 = !DILocation(line: 720, column: 3, scope: !549)
!566 = !DILocation(line: 721, column: 2, scope: !542)
!567 = !DILocation(line: 706, column: 46, scope: !538)
!568 = !DILocation(line: 706, column: 2, scope: !538)
!569 = distinct !{!569, !540, !570, !468, !469}
!570 = !DILocation(line: 721, column: 2, scope: !535)
!571 = !DILocation(line: 722, column: 1, scope: !471)
!572 = distinct !DISubprogram(name: "acpi_tb_select_address", scope: !3, file: !3, line: 229, type: !573, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!573 = !DISubroutineType(types: !574)
!574 = !{!7, !575, !12, !7}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!576 = !{!577, !578, !579}
!577 = !DILocalVariable(name: "register_name", arg: 1, scope: !572, file: !3, line: 229, type: !575)
!578 = !DILocalVariable(name: "address32", arg: 2, scope: !572, file: !3, line: 229, type: !12)
!579 = !DILocalVariable(name: "address64", arg: 3, scope: !572, file: !3, line: 229, type: !7)
!580 = !DILocation(line: 229, column: 30, scope: !572)
!581 = !DILocation(line: 229, column: 49, scope: !572)
!582 = !DILocation(line: 229, column: 64, scope: !572)
!583 = !DILocation(line: 232, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !572, file: !3, line: 232, column: 6)
!585 = !DILocation(line: 232, column: 6, scope: !572)
!586 = !DILocation(line: 236, column: 16, scope: !587)
!587 = distinct !DILexicalBlock(scope: !584, file: !3, line: 232, column: 18)
!588 = !DILocation(line: 236, column: 11, scope: !587)
!589 = !DILocation(line: 236, column: 3, scope: !587)
!590 = !DILocation(line: 239, column: 6, scope: !591)
!591 = distinct !DILexicalBlock(scope: !572, file: !3, line: 239, column: 6)
!592 = !DILocation(line: 239, column: 16, scope: !591)
!593 = !DILocation(line: 239, column: 20, scope: !591)
!594 = !DILocation(line: 239, column: 38, scope: !591)
!595 = !DILocation(line: 239, column: 33, scope: !591)
!596 = !DILocation(line: 239, column: 30, scope: !591)
!597 = !DILocation(line: 239, column: 6, scope: !572)
!598 = !DILocation(line: 243, column: 3, scope: !599)
!599 = distinct !DILexicalBlock(scope: !591, file: !3, line: 239, column: 50)
!600 = !DILocation(line: 253, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !599, file: !3, line: 253, column: 7)
!602 = !DILocation(line: 253, column: 7, scope: !599)
!603 = !DILocation(line: 254, column: 17, scope: !604)
!604 = distinct !DILexicalBlock(scope: !601, file: !3, line: 253, column: 42)
!605 = !DILocation(line: 254, column: 12, scope: !604)
!606 = !DILocation(line: 254, column: 4, scope: !604)
!607 = !DILocation(line: 256, column: 2, scope: !599)
!608 = !DILocation(line: 260, column: 10, scope: !572)
!609 = !DILocation(line: 260, column: 2, scope: !572)
!610 = !DILocation(line: 261, column: 1, scope: !572)
!611 = distinct !DISubprogram(name: "acpi_tb_init_generic_address", scope: !3, file: !3, line: 158, type: !612, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !614)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !27, !23, !23, !7, !125, !23}
!614 = !{!615, !616, !617, !618, !619, !620, !621}
!615 = !DILocalVariable(name: "generic_address", arg: 1, scope: !611, file: !3, line: 158, type: !27)
!616 = !DILocalVariable(name: "space_id", arg: 2, scope: !611, file: !3, line: 159, type: !23)
!617 = !DILocalVariable(name: "byte_width", arg: 3, scope: !611, file: !3, line: 160, type: !23)
!618 = !DILocalVariable(name: "address", arg: 4, scope: !611, file: !3, line: 161, type: !7)
!619 = !DILocalVariable(name: "register_name", arg: 5, scope: !611, file: !3, line: 161, type: !125)
!620 = !DILocalVariable(name: "flags", arg: 6, scope: !611, file: !3, line: 161, type: !23)
!621 = !DILocalVariable(name: "bit_width", scope: !611, file: !3, line: 163, type: !23)
!622 = !DILocation(line: 158, column: 59, scope: !611)
!623 = !DILocation(line: 159, column: 12, scope: !611)
!624 = !DILocation(line: 160, column: 12, scope: !611)
!625 = !DILocation(line: 161, column: 13, scope: !611)
!626 = !DILocation(line: 161, column: 34, scope: !611)
!627 = !DILocation(line: 161, column: 52, scope: !611)
!628 = !DILocation(line: 163, column: 2, scope: !611)
!629 = !DILocation(line: 163, column: 5, scope: !611)
!630 = !DILocation(line: 169, column: 19, scope: !611)
!631 = !DILocation(line: 169, column: 30, scope: !611)
!632 = !DILocation(line: 169, column: 14, scope: !611)
!633 = !DILocation(line: 169, column: 12, scope: !611)
!634 = !DILocation(line: 170, column: 6, scope: !635)
!635 = distinct !DILexicalBlock(scope: !611, file: !3, line: 170, column: 6)
!636 = !DILocation(line: 170, column: 17, scope: !635)
!637 = !DILocation(line: 170, column: 6, scope: !611)
!638 = !DILocation(line: 176, column: 9, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 176, column: 7)
!640 = distinct !DILexicalBlock(scope: !635, file: !3, line: 170, column: 23)
!641 = !DILocation(line: 176, column: 15, scope: !639)
!642 = !DILocation(line: 176, column: 7, scope: !640)
!643 = !DILocation(line: 177, column: 4, scope: !644)
!644 = distinct !DILexicalBlock(scope: !639, file: !3, line: 176, column: 42)
!645 = !DILocation(line: 182, column: 3, scope: !644)
!646 = !DILocation(line: 184, column: 13, scope: !640)
!647 = !DILocation(line: 185, column: 2, scope: !640)
!648 = !DILocation(line: 191, column: 2, scope: !611)
!649 = !DILocation(line: 195, column: 30, scope: !611)
!650 = !DILocation(line: 195, column: 2, scope: !611)
!651 = !DILocation(line: 195, column: 19, scope: !611)
!652 = !DILocation(line: 195, column: 28, scope: !611)
!653 = !DILocation(line: 196, column: 31, scope: !611)
!654 = !DILocation(line: 196, column: 2, scope: !611)
!655 = !DILocation(line: 196, column: 19, scope: !611)
!656 = !DILocation(line: 196, column: 29, scope: !611)
!657 = !DILocation(line: 197, column: 2, scope: !611)
!658 = !DILocation(line: 197, column: 19, scope: !611)
!659 = !DILocation(line: 197, column: 30, scope: !611)
!660 = !DILocation(line: 198, column: 2, scope: !611)
!661 = !DILocation(line: 198, column: 19, scope: !611)
!662 = !DILocation(line: 198, column: 32, scope: !611)
!663 = !DILocation(line: 199, column: 1, scope: !611)
!664 = !DISubprogram(name: "acpi_bios_error", scope: !309, file: !309, line: 920, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!665 = !DISubprogram(name: "acpi_error", scope: !309, file: !309, line: 901, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
