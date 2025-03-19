; ModuleID = 'arch/x86/boot/compressed/acpi.c'
source_filename = "arch/x86/boot/compressed/acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_vector = type { i64, i64 }
%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type <{ i64, i64, i32 }>
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon, %union.anon.5, i8, i8 }>
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { i64 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i8, i8, i16, i32, i64 }
%struct.guid_t = type { [16 x i8] }
%struct.acpi_table_rsdp = type <{ [8 x i8], i8, [6 x i8], i8, i32, i32, i64, i8, [3 x i8] }>

@boot_params_ptr = external hidden global ptr, align 8
@immovable_mem = hidden global [128 x %struct.mem_vector] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [59 x i8] c"EFI support advertised, but unable to locate system table.\00", align 1, !dbg !58
@.str.1 = private unnamed_addr constant [28 x i8] c"EFI config table not found.\00", align 1, !dbg !63
@.str.2 = private unnamed_addr constant [29 x i8] c"Error getting RSDP address.\0A\00", align 1, !dbg !68
@.str.3 = private unnamed_addr constant [9 x i8] c"RSD PTR \00", align 1, !dbg !73

; Function Attrs: noredzone nounwind
define hidden i64 @get_rsdp_addr() #0 !dbg !92 {
entry:
  %pa = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa) #5, !dbg !97
  call void @llvm.dbg.declare(metadata ptr %pa, metadata !96, metadata !DIExpression()), !dbg !98
  %0 = load ptr, ptr @boot_params_ptr, align 8, !dbg !99
  %acpi_rsdp_addr = getelementptr inbounds %struct.boot_params, ptr %0, i32 0, i32 5, !dbg !100
  %1 = load i64, ptr %acpi_rsdp_addr, align 1, !dbg !100
  store i64 %1, ptr %pa, align 8, !dbg !101
  %2 = load i64, ptr %pa, align 8, !dbg !102
  %tobool = icmp ne i64 %2, 0, !dbg !102
  br i1 %tobool, label %if.end, label %if.then, !dbg !104

if.then:                                          ; preds = %entry
  %call = call i64 @efi_get_rsdp_addr() #6, !dbg !105
  store i64 %call, ptr %pa, align 8, !dbg !106
  br label %if.end, !dbg !107

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %pa, align 8, !dbg !108
  %tobool1 = icmp ne i64 %3, 0, !dbg !108
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !110

if.then2:                                         ; preds = %if.end
  %call3 = call i64 @bios_get_rsdp_addr() #6, !dbg !111
  store i64 %call3, ptr %pa, align 8, !dbg !112
  br label %if.end4, !dbg !113

if.end4:                                          ; preds = %if.then2, %if.end
  %4 = load i64, ptr %pa, align 8, !dbg !114
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa) #5, !dbg !115
  ret i64 %4, !dbg !116
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone nounwind
define internal i64 @efi_get_rsdp_addr() #0 !dbg !117 {
entry:
  %retval = alloca i64, align 8
  %cfg_tbl_pa = alloca i64, align 8
  %cfg_tbl_len = alloca i32, align 4
  %systab_pa = alloca i64, align 8
  %nr_tables = alloca i32, align 4
  %et = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg_tbl_pa) #5, !dbg !126
  call void @llvm.dbg.declare(metadata ptr %cfg_tbl_pa, metadata !119, metadata !DIExpression()), !dbg !127
  store i64 0, ptr %cfg_tbl_pa, align 8, !dbg !127
  call void @llvm.lifetime.start.p0(i64 4, ptr %cfg_tbl_len) #5, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %cfg_tbl_len, metadata !120, metadata !DIExpression()), !dbg !129
  call void @llvm.lifetime.start.p0(i64 8, ptr %systab_pa) #5, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %systab_pa, metadata !121, metadata !DIExpression()), !dbg !131
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_tables) #5, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %nr_tables, metadata !122, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.start.p0(i64 4, ptr %et) #5, !dbg !134
  call void @llvm.dbg.declare(metadata ptr %et, metadata !123, metadata !DIExpression()), !dbg !135
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5, !dbg !136
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !124, metadata !DIExpression()), !dbg !137
  %0 = load ptr, ptr @boot_params_ptr, align 8, !dbg !138
  %call = call i32 @efi_get_type(ptr noundef %0) #6, !dbg !139
  store i32 %call, ptr %et, align 4, !dbg !140
  %1 = load i32, ptr %et, align 4, !dbg !141
  %cmp = icmp eq i32 %1, 2, !dbg !143
  br i1 %cmp, label %if.then, label %if.end, !dbg !144

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !145

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @boot_params_ptr, align 8, !dbg !146
  %call1 = call i64 @efi_get_system_table(ptr noundef %2) #6, !dbg !147
  store i64 %call1, ptr %systab_pa, align 8, !dbg !148
  %3 = load i64, ptr %systab_pa, align 8, !dbg !149
  %tobool = icmp ne i64 %3, 0, !dbg !149
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !151

if.then2:                                         ; preds = %if.end
  call void @error(ptr noundef @.str) #7, !dbg !152
  unreachable, !dbg !152

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr @boot_params_ptr, align 8, !dbg !153
  %call4 = call i32 @efi_get_conf_table(ptr noundef %4, ptr noundef %cfg_tbl_pa, ptr noundef %cfg_tbl_len) #6, !dbg !154
  store i32 %call4, ptr %ret, align 4, !dbg !155
  %5 = load i32, ptr %ret, align 4, !dbg !156
  %tobool5 = icmp ne i32 %5, 0, !dbg !156
  br i1 %tobool5, label %if.then7, label %lor.lhs.false, !dbg !158

lor.lhs.false:                                    ; preds = %if.end3
  %6 = load i64, ptr %cfg_tbl_pa, align 8, !dbg !159
  %tobool6 = icmp ne i64 %6, 0, !dbg !159
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !160

if.then7:                                         ; preds = %lor.lhs.false, %if.end3
  call void @error(ptr noundef @.str.1) #7, !dbg !161
  unreachable, !dbg !161

if.end8:                                          ; preds = %lor.lhs.false
  %7 = load i64, ptr %cfg_tbl_pa, align 8, !dbg !162
  %8 = load i32, ptr %cfg_tbl_len, align 4, !dbg !163
  %call9 = call i64 @__efi_get_rsdp_addr(i64 noundef %7, i32 noundef %8) #6, !dbg !164
  store i64 %call9, ptr %retval, align 8, !dbg !165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !165

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5, !dbg !166
  call void @llvm.lifetime.end.p0(i64 4, ptr %et) #5, !dbg !166
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_tables) #5, !dbg !166
  call void @llvm.lifetime.end.p0(i64 8, ptr %systab_pa) #5, !dbg !166
  call void @llvm.lifetime.end.p0(i64 4, ptr %cfg_tbl_len) #5, !dbg !166
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg_tbl_pa) #5, !dbg !166
  %9 = load i64, ptr %retval, align 8, !dbg !166
  ret i64 %9, !dbg !166
}

; Function Attrs: noredzone nounwind
define internal i64 @bios_get_rsdp_addr() #0 !dbg !167 {
entry:
  %retval = alloca i64, align 8
  %address = alloca i64, align 8
  %rsdp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #5, !dbg !171
  call void @llvm.dbg.declare(metadata ptr %address, metadata !169, metadata !DIExpression()), !dbg !172
  call void @llvm.lifetime.start.p0(i64 8, ptr %rsdp) #5, !dbg !173
  call void @llvm.dbg.declare(metadata ptr %rsdp, metadata !170, metadata !DIExpression()), !dbg !174
  %0 = load i16, ptr inttoptr (i64 1038 to ptr), align 2, !dbg !175
  %conv = zext i16 %0 to i64, !dbg !175
  store i64 %conv, ptr %address, align 8, !dbg !176
  %1 = load i64, ptr %address, align 8, !dbg !177
  %shl = shl i64 %1, 4, !dbg !177
  store i64 %shl, ptr %address, align 8, !dbg !177
  %2 = load i64, ptr %address, align 8, !dbg !178
  %cmp = icmp ugt i64 %2, 1024, !dbg !180
  br i1 %cmp, label %if.then, label %if.end3, !dbg !181

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %address, align 8, !dbg !182
  %4 = inttoptr i64 %3 to ptr, !dbg !184
  %call = call ptr @scan_mem_for_rsdp(ptr noundef %4, i32 noundef 1024) #6, !dbg !185
  store ptr %call, ptr %rsdp, align 8, !dbg !186
  %5 = load ptr, ptr %rsdp, align 8, !dbg !187
  %tobool = icmp ne ptr %5, null, !dbg !187
  br i1 %tobool, label %if.then2, label %if.end, !dbg !189

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %rsdp, align 8, !dbg !190
  %7 = ptrtoint ptr %6 to i64, !dbg !191
  store i64 %7, ptr %retval, align 8, !dbg !192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !192

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !193

if.end3:                                          ; preds = %if.end, %entry
  %call4 = call ptr @scan_mem_for_rsdp(ptr noundef inttoptr (i64 917504 to ptr), i32 noundef 131072) #6, !dbg !194
  store ptr %call4, ptr %rsdp, align 8, !dbg !195
  %8 = load ptr, ptr %rsdp, align 8, !dbg !196
  %tobool5 = icmp ne ptr %8, null, !dbg !196
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !198

if.then6:                                         ; preds = %if.end3
  %9 = load ptr, ptr %rsdp, align 8, !dbg !199
  %10 = ptrtoint ptr %9 to i64, !dbg !200
  store i64 %10, ptr %retval, align 8, !dbg !201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !201

if.end7:                                          ; preds = %if.end3
  store i64 0, ptr %retval, align 8, !dbg !202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !202

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %rsdp) #5, !dbg !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #5, !dbg !203
  %11 = load i64, ptr %retval, align 8, !dbg !203
  ret i64 %11, !dbg !203
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noredzone
declare !dbg !204 hidden i32 @efi_get_type(ptr noundef) #3

; Function Attrs: noredzone
declare !dbg !533 hidden i64 @efi_get_system_table(ptr noundef) #3

; Function Attrs: noredzone noreturn
declare !dbg !536 hidden void @error(ptr noundef) #4

; Function Attrs: noredzone
declare !dbg !540 hidden i32 @efi_get_conf_table(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone nounwind
define internal i64 @__efi_get_rsdp_addr(i64 noundef %cfg_tbl_pa, i32 noundef %cfg_tbl_len) #0 !dbg !545 {
entry:
  %retval = alloca i64, align 8
  %cfg_tbl_pa.addr = alloca i64, align 8
  %cfg_tbl_len.addr = alloca i32, align 4
  %rsdp_addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.guid_t, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral15 = alloca %struct.guid_t, align 4
  store i64 %cfg_tbl_pa, ptr %cfg_tbl_pa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cfg_tbl_pa.addr, metadata !549, metadata !DIExpression()), !dbg !553
  store i32 %cfg_tbl_len, ptr %cfg_tbl_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cfg_tbl_len.addr, metadata !550, metadata !DIExpression()), !dbg !554
  call void @llvm.lifetime.start.p0(i64 8, ptr %rsdp_addr) #5, !dbg !555
  call void @llvm.dbg.declare(metadata ptr %rsdp_addr, metadata !551, metadata !DIExpression()), !dbg !556
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5, !dbg !557
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !552, metadata !DIExpression()), !dbg !558
  %0 = load ptr, ptr @boot_params_ptr, align 8, !dbg !559
  %1 = load i64, ptr %cfg_tbl_pa.addr, align 8, !dbg !560
  %2 = load i32, ptr %cfg_tbl_len.addr, align 4, !dbg !561
  %b = getelementptr inbounds %struct.guid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !562
  %arrayinit.begin = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !562
  store i8 113, ptr %arrayinit.begin, align 1, !dbg !562
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1, !dbg !562
  store i8 -24, ptr %arrayinit.element, align 1, !dbg !562
  %arrayinit.element1 = getelementptr inbounds i8, ptr %arrayinit.element, i64 1, !dbg !562
  store i8 104, ptr %arrayinit.element1, align 1, !dbg !562
  %arrayinit.element2 = getelementptr inbounds i8, ptr %arrayinit.element1, i64 1, !dbg !562
  store i8 -120, ptr %arrayinit.element2, align 1, !dbg !562
  %arrayinit.element3 = getelementptr inbounds i8, ptr %arrayinit.element2, i64 1, !dbg !562
  store i8 -15, ptr %arrayinit.element3, align 1, !dbg !562
  %arrayinit.element4 = getelementptr inbounds i8, ptr %arrayinit.element3, i64 1, !dbg !562
  store i8 -28, ptr %arrayinit.element4, align 1, !dbg !562
  %arrayinit.element5 = getelementptr inbounds i8, ptr %arrayinit.element4, i64 1, !dbg !562
  store i8 -45, ptr %arrayinit.element5, align 1, !dbg !562
  %arrayinit.element6 = getelementptr inbounds i8, ptr %arrayinit.element5, i64 1, !dbg !562
  store i8 17, ptr %arrayinit.element6, align 1, !dbg !562
  %arrayinit.element7 = getelementptr inbounds i8, ptr %arrayinit.element6, i64 1, !dbg !562
  store i8 -68, ptr %arrayinit.element7, align 1, !dbg !562
  %arrayinit.element8 = getelementptr inbounds i8, ptr %arrayinit.element7, i64 1, !dbg !562
  store i8 34, ptr %arrayinit.element8, align 1, !dbg !562
  %arrayinit.element9 = getelementptr inbounds i8, ptr %arrayinit.element8, i64 1, !dbg !562
  store i8 0, ptr %arrayinit.element9, align 1, !dbg !562
  %arrayinit.element10 = getelementptr inbounds i8, ptr %arrayinit.element9, i64 1, !dbg !562
  store i8 -128, ptr %arrayinit.element10, align 1, !dbg !562
  %arrayinit.element11 = getelementptr inbounds i8, ptr %arrayinit.element10, i64 1, !dbg !562
  store i8 -57, ptr %arrayinit.element11, align 1, !dbg !562
  %arrayinit.element12 = getelementptr inbounds i8, ptr %arrayinit.element11, i64 1, !dbg !562
  store i8 60, ptr %arrayinit.element12, align 1, !dbg !562
  %arrayinit.element13 = getelementptr inbounds i8, ptr %arrayinit.element12, i64 1, !dbg !562
  store i8 -120, ptr %arrayinit.element13, align 1, !dbg !562
  %arrayinit.element14 = getelementptr inbounds i8, ptr %arrayinit.element13, i64 1, !dbg !562
  store i8 -127, ptr %arrayinit.element14, align 1, !dbg !562
  %3 = getelementptr inbounds { i64, i64 }, ptr %.compoundliteral, i32 0, i32 0, !dbg !563
  %4 = load i64, ptr %3, align 4, !dbg !563
  %5 = getelementptr inbounds { i64, i64 }, ptr %.compoundliteral, i32 0, i32 1, !dbg !563
  %6 = load i64, ptr %5, align 4, !dbg !563
  %call = call i64 @efi_find_vendor_table(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 %4, i64 %6) #6, !dbg !563
  store i64 %call, ptr %rsdp_addr, align 8, !dbg !564
  %7 = load i64, ptr %rsdp_addr, align 8, !dbg !565
  %tobool = icmp ne i64 %7, 0, !dbg !565
  br i1 %tobool, label %if.then, label %if.end, !dbg !567

if.then:                                          ; preds = %entry
  %8 = load i64, ptr %rsdp_addr, align 8, !dbg !568
  store i64 %8, ptr %retval, align 8, !dbg !569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !569

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr @boot_params_ptr, align 8, !dbg !570
  %10 = load i64, ptr %cfg_tbl_pa.addr, align 8, !dbg !571
  %11 = load i32, ptr %cfg_tbl_len.addr, align 4, !dbg !572
  %b16 = getelementptr inbounds %struct.guid_t, ptr %.compoundliteral15, i32 0, i32 0, !dbg !573
  %arrayinit.begin17 = getelementptr inbounds [16 x i8], ptr %b16, i64 0, i64 0, !dbg !573
  store i8 48, ptr %arrayinit.begin17, align 1, !dbg !573
  %arrayinit.element18 = getelementptr inbounds i8, ptr %arrayinit.begin17, i64 1, !dbg !573
  store i8 45, ptr %arrayinit.element18, align 1, !dbg !573
  %arrayinit.element19 = getelementptr inbounds i8, ptr %arrayinit.element18, i64 1, !dbg !573
  store i8 -99, ptr %arrayinit.element19, align 1, !dbg !573
  %arrayinit.element20 = getelementptr inbounds i8, ptr %arrayinit.element19, i64 1, !dbg !573
  store i8 -21, ptr %arrayinit.element20, align 1, !dbg !573
  %arrayinit.element21 = getelementptr inbounds i8, ptr %arrayinit.element20, i64 1, !dbg !573
  store i8 -120, ptr %arrayinit.element21, align 1, !dbg !573
  %arrayinit.element22 = getelementptr inbounds i8, ptr %arrayinit.element21, i64 1, !dbg !573
  store i8 45, ptr %arrayinit.element22, align 1, !dbg !573
  %arrayinit.element23 = getelementptr inbounds i8, ptr %arrayinit.element22, i64 1, !dbg !573
  store i8 -45, ptr %arrayinit.element23, align 1, !dbg !573
  %arrayinit.element24 = getelementptr inbounds i8, ptr %arrayinit.element23, i64 1, !dbg !573
  store i8 17, ptr %arrayinit.element24, align 1, !dbg !573
  %arrayinit.element25 = getelementptr inbounds i8, ptr %arrayinit.element24, i64 1, !dbg !573
  store i8 -102, ptr %arrayinit.element25, align 1, !dbg !573
  %arrayinit.element26 = getelementptr inbounds i8, ptr %arrayinit.element25, i64 1, !dbg !573
  store i8 22, ptr %arrayinit.element26, align 1, !dbg !573
  %arrayinit.element27 = getelementptr inbounds i8, ptr %arrayinit.element26, i64 1, !dbg !573
  store i8 0, ptr %arrayinit.element27, align 1, !dbg !573
  %arrayinit.element28 = getelementptr inbounds i8, ptr %arrayinit.element27, i64 1, !dbg !573
  store i8 -112, ptr %arrayinit.element28, align 1, !dbg !573
  %arrayinit.element29 = getelementptr inbounds i8, ptr %arrayinit.element28, i64 1, !dbg !573
  store i8 39, ptr %arrayinit.element29, align 1, !dbg !573
  %arrayinit.element30 = getelementptr inbounds i8, ptr %arrayinit.element29, i64 1, !dbg !573
  store i8 63, ptr %arrayinit.element30, align 1, !dbg !573
  %arrayinit.element31 = getelementptr inbounds i8, ptr %arrayinit.element30, i64 1, !dbg !573
  store i8 -63, ptr %arrayinit.element31, align 1, !dbg !573
  %arrayinit.element32 = getelementptr inbounds i8, ptr %arrayinit.element31, i64 1, !dbg !573
  store i8 77, ptr %arrayinit.element32, align 1, !dbg !573
  %12 = getelementptr inbounds { i64, i64 }, ptr %.compoundliteral15, i32 0, i32 0, !dbg !574
  %13 = load i64, ptr %12, align 4, !dbg !574
  %14 = getelementptr inbounds { i64, i64 }, ptr %.compoundliteral15, i32 0, i32 1, !dbg !574
  %15 = load i64, ptr %14, align 4, !dbg !574
  %call33 = call i64 @efi_find_vendor_table(ptr noundef %9, i64 noundef %10, i32 noundef %11, i64 %13, i64 %15) #6, !dbg !574
  store i64 %call33, ptr %rsdp_addr, align 8, !dbg !575
  %16 = load i64, ptr %rsdp_addr, align 8, !dbg !576
  %tobool34 = icmp ne i64 %16, 0, !dbg !576
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !578

if.then35:                                        ; preds = %if.end
  %17 = load i64, ptr %rsdp_addr, align 8, !dbg !579
  store i64 %17, ptr %retval, align 8, !dbg !580
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !580

if.end36:                                         ; preds = %if.end
  call void @__putstr(ptr noundef @.str.2) #6, !dbg !581
  store i64 0, ptr %retval, align 8, !dbg !582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !582

cleanup:                                          ; preds = %if.end36, %if.then35, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5, !dbg !583
  call void @llvm.lifetime.end.p0(i64 8, ptr %rsdp_addr) #5, !dbg !583
  %18 = load i64, ptr %retval, align 8, !dbg !583
  ret i64 %18, !dbg !583
}

; Function Attrs: noredzone
declare !dbg !584 hidden i64 @efi_find_vendor_table(ptr noundef, i64 noundef, i32 noundef, i64, i64) #3

; Function Attrs: noredzone
declare !dbg !594 hidden void @__putstr(ptr noundef) #3

; Function Attrs: noredzone nounwind
define internal ptr @scan_mem_for_rsdp(ptr noundef %start, i32 noundef %length) #0 !dbg !599 {
entry:
  %retval = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %rsdp = alloca ptr, align 8
  %address = alloca ptr, align 8
  %end = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !603, metadata !DIExpression()), !dbg !608
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !604, metadata !DIExpression()), !dbg !609
  call void @llvm.lifetime.start.p0(i64 8, ptr %rsdp) #5, !dbg !610
  call void @llvm.dbg.declare(metadata ptr %rsdp, metadata !605, metadata !DIExpression()), !dbg !611
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #5, !dbg !612
  call void @llvm.dbg.declare(metadata ptr %address, metadata !606, metadata !DIExpression()), !dbg !613
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #5, !dbg !612
  call void @llvm.dbg.declare(metadata ptr %end, metadata !607, metadata !DIExpression()), !dbg !614
  %0 = load ptr, ptr %start.addr, align 8, !dbg !615
  %1 = load i32, ptr %length.addr, align 4, !dbg !616
  %idx.ext = zext i32 %1 to i64, !dbg !617
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext, !dbg !617
  store ptr %add.ptr, ptr %end, align 8, !dbg !618
  %2 = load ptr, ptr %start.addr, align 8, !dbg !619
  store ptr %2, ptr %address, align 8, !dbg !621
  br label %for.cond, !dbg !622

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %address, align 8, !dbg !623
  %4 = load ptr, ptr %end, align 8, !dbg !625
  %cmp = icmp ult ptr %3, %4, !dbg !626
  br i1 %cmp, label %for.body, label %for.end, !dbg !627

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %address, align 8, !dbg !628
  store ptr %5, ptr %rsdp, align 8, !dbg !630
  %6 = load ptr, ptr %rsdp, align 8, !dbg !631
  %signature = getelementptr inbounds %struct.acpi_table_rsdp, ptr %6, i32 0, i32 0, !dbg !631
  %arraydecay = getelementptr inbounds [8 x i8], ptr %signature, i64 0, i64 0, !dbg !631
  %7 = ptrtoint ptr %arraydecay to i64, !dbg !631
  %8 = inttoptr i64 %7 to ptr, !dbg !631
  %call = call i32 @strncmp(ptr noundef %8, ptr noundef @.str.3, i64 noundef 8) #6, !dbg !631
  %tobool = icmp ne i32 %call, 0, !dbg !631
  br i1 %tobool, label %if.then, label %if.end, !dbg !633

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !634

if.end:                                           ; preds = %for.body
  %9 = load ptr, ptr %rsdp, align 8, !dbg !635
  %call1 = call zeroext i8 @compute_checksum(ptr noundef %9, i32 noundef 20) #6, !dbg !637
  %tobool2 = icmp ne i8 %call1, 0, !dbg !637
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !638

if.then3:                                         ; preds = %if.end
  br label %for.inc, !dbg !639

if.end4:                                          ; preds = %if.end
  %10 = load ptr, ptr %rsdp, align 8, !dbg !640
  %revision = getelementptr inbounds %struct.acpi_table_rsdp, ptr %10, i32 0, i32 3, !dbg !642
  %11 = load i8, ptr %revision, align 1, !dbg !642
  %conv = zext i8 %11 to i32, !dbg !640
  %cmp5 = icmp sge i32 %conv, 2, !dbg !643
  br i1 %cmp5, label %land.lhs.true, label %if.end11, !dbg !644

land.lhs.true:                                    ; preds = %if.end4
  %12 = load ptr, ptr %rsdp, align 8, !dbg !645
  %call7 = call zeroext i8 @compute_checksum(ptr noundef %12, i32 noundef 36) #6, !dbg !646
  %conv8 = zext i8 %call7 to i32, !dbg !647
  %tobool9 = icmp ne i32 %conv8, 0, !dbg !647
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !648

if.then10:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !649

if.end11:                                         ; preds = %land.lhs.true, %if.end4
  %13 = load ptr, ptr %address, align 8, !dbg !650
  store ptr %13, ptr %retval, align 8, !dbg !651
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !651

for.inc:                                          ; preds = %if.then10, %if.then3, %if.then
  %14 = load ptr, ptr %address, align 8, !dbg !652
  %add.ptr12 = getelementptr inbounds i8, ptr %14, i64 16, !dbg !652
  store ptr %add.ptr12, ptr %address, align 8, !dbg !652
  br label %for.cond, !dbg !653, !llvm.loop !654

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !658
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !658

cleanup:                                          ; preds = %for.end, %if.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #5, !dbg !659
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #5, !dbg !659
  call void @llvm.lifetime.end.p0(i64 8, ptr %rsdp) #5, !dbg !659
  %15 = load ptr, ptr %retval, align 8, !dbg !659
  ret ptr %15, !dbg !659
}

; Function Attrs: noredzone
declare !dbg !660 hidden i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone nounwind
define internal zeroext i8 @compute_checksum(ptr noundef %buffer, i32 noundef %length) #0 !dbg !668 {
entry:
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %end = alloca ptr, align 8
  %sum = alloca i8, align 1
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !672, metadata !DIExpression()), !dbg !676
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !673, metadata !DIExpression()), !dbg !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #5, !dbg !678
  call void @llvm.dbg.declare(metadata ptr %end, metadata !674, metadata !DIExpression()), !dbg !679
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !680
  %1 = load i32, ptr %length.addr, align 4, !dbg !681
  %idx.ext = zext i32 %1 to i64, !dbg !682
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext, !dbg !682
  store ptr %add.ptr, ptr %end, align 8, !dbg !679
  call void @llvm.lifetime.start.p0(i64 1, ptr %sum) #5, !dbg !683
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !675, metadata !DIExpression()), !dbg !684
  store i8 0, ptr %sum, align 1, !dbg !684
  br label %while.cond, !dbg !685

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !686
  %3 = load ptr, ptr %end, align 8, !dbg !687
  %cmp = icmp ult ptr %2, %3, !dbg !688
  br i1 %cmp, label %while.body, label %while.end, !dbg !685

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %buffer.addr, align 8, !dbg !689
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1, !dbg !689
  store ptr %incdec.ptr, ptr %buffer.addr, align 8, !dbg !689
  %5 = load i8, ptr %4, align 1, !dbg !690
  %conv = zext i8 %5 to i32, !dbg !690
  %6 = load i8, ptr %sum, align 1, !dbg !691
  %conv1 = zext i8 %6 to i32, !dbg !691
  %add = add nsw i32 %conv1, %conv, !dbg !691
  %conv2 = trunc i32 %add to i8, !dbg !691
  store i8 %conv2, ptr %sum, align 1, !dbg !691
  br label %while.cond, !dbg !685, !llvm.loop !692

while.end:                                        ; preds = %while.cond
  %7 = load i8, ptr %sum, align 1, !dbg !694
  call void @llvm.lifetime.end.p0(i64 1, ptr %sum) #5, !dbg !695
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #5, !dbg !695
  ret i8 %7, !dbg !696
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone noreturn "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone "no-builtins" }
attributes #7 = { nobuiltin noredzone noreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "immovable_mem", scope: !2, file: !3, line: 20, type: !78, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/compressed/.acpi.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m64 -O1 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -std=gnu11 -fno-strict-aliasing -fPIE -Wundef -D DISABLE_BRANCH_PROFILING -mcmodel=small -mno-red-zone -mno-mmx -mno-sse -ffreestanding -fshort-wchar -fno-stack-protector -Wno-address-of-packed-member -Wno-gnu -Wno-pointer-sign -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D __DISABLE_EXPORTS -Wa,-mrelax-relocations=no -include ./include/linux/hidden.h -D KBUILD_MODFILE=\22arch/x86/boot/compressed/acpi\22 -D KBUILD_BASENAME=\22acpi\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/compressed/acpi.ll arch/x86/boot/compressed/acpi.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !57, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/boot/compressed/acpi.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f59af84a876b9b9d0659130120fc80a4")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "efi_type", file: !6, line: 205, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "arch/x86/boot/compressed/misc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31b219c11b56e2bcf8daba9cc959bca7")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "EFI_TYPE_64", value: 0)
!10 = !DIEnumerator(name: "EFI_TYPE_32", value: 1)
!11 = !DIEnumerator(name: "EFI_TYPE_NONE", value: 2)
!12 = !{!13, !20, !24, !28, !29, !54, !55}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !14, line: 129, baseType: !15)
!14 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !16, line: 23, baseType: !17)
!16 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !18, line: 31, baseType: !19)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!19 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !16, line: 19, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !18, line: 24, baseType: !23)
!23 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !16, line: 17, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !18, line: 21, baseType: !27)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_rsdp", file: !31, line: 105, size: 288, elements: !32)
!31 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!32 = !{!33, !38, !39, !43, !44, !47, !48, !49, !50}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !30, file: !31, line: 106, baseType: !34, size: 64)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !36)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !{!37}
!37 = !DISubrange(count: 8)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !30, file: !31, line: 107, baseType: !25, size: 8, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !30, file: !31, line: 108, baseType: !40, size: 48, offset: 72)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 48, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 6)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !30, file: !31, line: 109, baseType: !25, size: 8, offset: 120)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "rsdt_physical_address", scope: !30, file: !31, line: 110, baseType: !45, size: 32, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !16, line: 21, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !18, line: 27, baseType: !7)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !30, file: !31, line: 111, baseType: !45, size: 32, offset: 160)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "xsdt_physical_address", scope: !30, file: !31, line: 112, baseType: !15, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "extended_checksum", scope: !30, file: !31, line: 113, baseType: !25, size: 8, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !30, file: !31, line: 114, baseType: !51, size: 24, offset: 264)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 24, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 3)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !56, line: 42, baseType: !28)
!56 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!57 = !{!0, !58, !63, !68, !73}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 472, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 59)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 224, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 28)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 232, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 29)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 72, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 9)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 16384, elements: !83)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_vector", file: !6, line: 93, size: 128, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !79, file: !6, line: 94, baseType: !15, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !79, file: !6, line: 95, baseType: !15, size: 64, offset: 64)
!83 = !{!84}
!84 = !DISubrange(count: 128)
!85 = !{i32 7, !"Dwarf Version", i32 5}
!86 = !{i32 2, !"Debug Info Version", i32 3}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 8, !"PIC Level", i32 2}
!89 = !{i32 7, !"PIE Level", i32 2}
!90 = !{i32 1, !"Code Model", i32 1}
!91 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!92 = distinct !DISubprogram(name: "get_rsdp_addr", scope: !3, file: !3, line: 155, type: !93, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{!13}
!95 = !{!96}
!96 = !DILocalVariable(name: "pa", scope: !92, file: !3, line: 157, type: !13)
!97 = !DILocation(line: 157, column: 2, scope: !92)
!98 = !DILocation(line: 157, column: 24, scope: !92)
!99 = !DILocation(line: 159, column: 7, scope: !92)
!100 = !DILocation(line: 159, column: 24, scope: !92)
!101 = !DILocation(line: 159, column: 5, scope: !92)
!102 = !DILocation(line: 161, column: 7, scope: !103)
!103 = distinct !DILexicalBlock(scope: !92, file: !3, line: 161, column: 6)
!104 = !DILocation(line: 161, column: 6, scope: !92)
!105 = !DILocation(line: 162, column: 8, scope: !103)
!106 = !DILocation(line: 162, column: 6, scope: !103)
!107 = !DILocation(line: 162, column: 3, scope: !103)
!108 = !DILocation(line: 164, column: 7, scope: !109)
!109 = distinct !DILexicalBlock(scope: !92, file: !3, line: 164, column: 6)
!110 = !DILocation(line: 164, column: 6, scope: !92)
!111 = !DILocation(line: 165, column: 8, scope: !109)
!112 = !DILocation(line: 165, column: 6, scope: !109)
!113 = !DILocation(line: 165, column: 3, scope: !109)
!114 = !DILocation(line: 167, column: 9, scope: !92)
!115 = !DILocation(line: 168, column: 1, scope: !92)
!116 = !DILocation(line: 167, column: 2, scope: !92)
!117 = distinct !DISubprogram(name: "efi_get_rsdp_addr", scope: !3, file: !3, line: 49, type: !93, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DILocalVariable(name: "cfg_tbl_pa", scope: !117, file: !3, line: 52, type: !28)
!120 = !DILocalVariable(name: "cfg_tbl_len", scope: !117, file: !3, line: 53, type: !7)
!121 = !DILocalVariable(name: "systab_pa", scope: !117, file: !3, line: 54, type: !28)
!122 = !DILocalVariable(name: "nr_tables", scope: !117, file: !3, line: 55, type: !7)
!123 = !DILocalVariable(name: "et", scope: !117, file: !3, line: 56, type: !5)
!124 = !DILocalVariable(name: "ret", scope: !117, file: !3, line: 57, type: !125)
!125 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!126 = !DILocation(line: 52, column: 2, scope: !117)
!127 = !DILocation(line: 52, column: 16, scope: !117)
!128 = !DILocation(line: 53, column: 2, scope: !117)
!129 = !DILocation(line: 53, column: 15, scope: !117)
!130 = !DILocation(line: 54, column: 2, scope: !117)
!131 = !DILocation(line: 54, column: 16, scope: !117)
!132 = !DILocation(line: 55, column: 2, scope: !117)
!133 = !DILocation(line: 55, column: 15, scope: !117)
!134 = !DILocation(line: 56, column: 2, scope: !117)
!135 = !DILocation(line: 56, column: 16, scope: !117)
!136 = !DILocation(line: 57, column: 2, scope: !117)
!137 = !DILocation(line: 57, column: 6, scope: !117)
!138 = !DILocation(line: 59, column: 20, scope: !117)
!139 = !DILocation(line: 59, column: 7, scope: !117)
!140 = !DILocation(line: 59, column: 5, scope: !117)
!141 = !DILocation(line: 60, column: 6, scope: !142)
!142 = distinct !DILexicalBlock(scope: !117, file: !3, line: 60, column: 6)
!143 = !DILocation(line: 60, column: 9, scope: !142)
!144 = !DILocation(line: 60, column: 6, scope: !117)
!145 = !DILocation(line: 61, column: 3, scope: !142)
!146 = !DILocation(line: 63, column: 35, scope: !117)
!147 = !DILocation(line: 63, column: 14, scope: !117)
!148 = !DILocation(line: 63, column: 12, scope: !117)
!149 = !DILocation(line: 64, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !117, file: !3, line: 64, column: 6)
!151 = !DILocation(line: 64, column: 6, scope: !117)
!152 = !DILocation(line: 65, column: 3, scope: !150)
!153 = !DILocation(line: 67, column: 27, scope: !117)
!154 = !DILocation(line: 67, column: 8, scope: !117)
!155 = !DILocation(line: 67, column: 6, scope: !117)
!156 = !DILocation(line: 68, column: 6, scope: !157)
!157 = distinct !DILexicalBlock(scope: !117, file: !3, line: 68, column: 6)
!158 = !DILocation(line: 68, column: 10, scope: !157)
!159 = !DILocation(line: 68, column: 14, scope: !157)
!160 = !DILocation(line: 68, column: 6, scope: !117)
!161 = !DILocation(line: 69, column: 3, scope: !157)
!162 = !DILocation(line: 71, column: 29, scope: !117)
!163 = !DILocation(line: 71, column: 41, scope: !117)
!164 = !DILocation(line: 71, column: 9, scope: !117)
!165 = !DILocation(line: 71, column: 2, scope: !117)
!166 = !DILocation(line: 75, column: 1, scope: !117)
!167 = distinct !DISubprogram(name: "bios_get_rsdp_addr", scope: !3, file: !3, line: 126, type: !93, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !168)
!168 = !{!169, !170}
!169 = !DILocalVariable(name: "address", scope: !167, file: !3, line: 128, type: !28)
!170 = !DILocalVariable(name: "rsdp", scope: !167, file: !3, line: 129, type: !24)
!171 = !DILocation(line: 128, column: 2, scope: !167)
!172 = !DILocation(line: 128, column: 16, scope: !167)
!173 = !DILocation(line: 129, column: 2, scope: !167)
!174 = !DILocation(line: 129, column: 6, scope: !167)
!175 = !DILocation(line: 132, column: 12, scope: !167)
!176 = !DILocation(line: 132, column: 10, scope: !167)
!177 = !DILocation(line: 133, column: 10, scope: !167)
!178 = !DILocation(line: 139, column: 6, scope: !179)
!179 = distinct !DILexicalBlock(scope: !167, file: !3, line: 139, column: 6)
!180 = !DILocation(line: 139, column: 14, scope: !179)
!181 = !DILocation(line: 139, column: 6, scope: !167)
!182 = !DILocation(line: 140, column: 34, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !3, line: 139, column: 23)
!184 = !DILocation(line: 140, column: 28, scope: !183)
!185 = !DILocation(line: 140, column: 10, scope: !183)
!186 = !DILocation(line: 140, column: 8, scope: !183)
!187 = !DILocation(line: 141, column: 7, scope: !188)
!188 = distinct !DILexicalBlock(scope: !183, file: !3, line: 141, column: 7)
!189 = !DILocation(line: 141, column: 7, scope: !183)
!190 = !DILocation(line: 142, column: 49, scope: !188)
!191 = !DILocation(line: 142, column: 34, scope: !188)
!192 = !DILocation(line: 142, column: 4, scope: !188)
!193 = !DILocation(line: 143, column: 2, scope: !183)
!194 = !DILocation(line: 146, column: 9, scope: !167)
!195 = !DILocation(line: 146, column: 7, scope: !167)
!196 = !DILocation(line: 148, column: 6, scope: !197)
!197 = distinct !DILexicalBlock(scope: !167, file: !3, line: 148, column: 6)
!198 = !DILocation(line: 148, column: 6, scope: !167)
!199 = !DILocation(line: 149, column: 48, scope: !197)
!200 = !DILocation(line: 149, column: 33, scope: !197)
!201 = !DILocation(line: 149, column: 3, scope: !197)
!202 = !DILocation(line: 151, column: 2, scope: !167)
!203 = !DILocation(line: 152, column: 1, scope: !167)
!204 = !DISubprogram(name: "efi_get_type", scope: !6, file: !6, line: 213, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!205 = !DISubroutineType(types: !206)
!206 = !{!5, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_params", file: !209, line: 186, size: 32768, elements: !210)
!209 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!210 = !{!211, !254, !267, !271, !272, !280, !281, !283, !287, !288, !296, !303, !304, !305, !306, !310, !311, !317, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !341, !383, !387, !389, !396, !400, !529}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "screen_info", scope: !208, file: !209, line: 187, baseType: !212, size: 512)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "screen_info", file: !213, line: 11, size: 512, elements: !214)
!213 = !DIFile(filename: "./include/uapi/linux/screen_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "395c08eb846a258de3277732fcbc2819")
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "orig_x", scope: !212, file: !213, line: 12, baseType: !26, size: 8)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "orig_y", scope: !212, file: !213, line: 13, baseType: !26, size: 8, offset: 8)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ext_mem_k", scope: !212, file: !213, line: 14, baseType: !22, size: 16, offset: 16)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_page", scope: !212, file: !213, line: 15, baseType: !22, size: 16, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_mode", scope: !212, file: !213, line: 16, baseType: !26, size: 8, offset: 48)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_cols", scope: !212, file: !213, line: 17, baseType: !26, size: 8, offset: 56)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !213, line: 18, baseType: !26, size: 8, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !212, file: !213, line: 19, baseType: !26, size: 8, offset: 72)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_ega_bx", scope: !212, file: !213, line: 20, baseType: !22, size: 16, offset: 80)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "unused3", scope: !212, file: !213, line: 21, baseType: !22, size: 16, offset: 96)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_lines", scope: !212, file: !213, line: 22, baseType: !26, size: 8, offset: 112)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_isVGA", scope: !212, file: !213, line: 23, baseType: !26, size: 8, offset: 120)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_points", scope: !212, file: !213, line: 24, baseType: !22, size: 16, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_width", scope: !212, file: !213, line: 27, baseType: !22, size: 16, offset: 144)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_height", scope: !212, file: !213, line: 28, baseType: !22, size: 16, offset: 160)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_depth", scope: !212, file: !213, line: 29, baseType: !22, size: 16, offset: 176)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_base", scope: !212, file: !213, line: 30, baseType: !46, size: 32, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_size", scope: !212, file: !213, line: 31, baseType: !46, size: 32, offset: 224)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "cl_magic", scope: !212, file: !213, line: 32, baseType: !22, size: 16, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "cl_offset", scope: !212, file: !213, line: 32, baseType: !22, size: 16, offset: 272)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_linelength", scope: !212, file: !213, line: 33, baseType: !22, size: 16, offset: 288)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "red_size", scope: !212, file: !213, line: 34, baseType: !26, size: 8, offset: 304)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "red_pos", scope: !212, file: !213, line: 35, baseType: !26, size: 8, offset: 312)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "green_size", scope: !212, file: !213, line: 36, baseType: !26, size: 8, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "green_pos", scope: !212, file: !213, line: 37, baseType: !26, size: 8, offset: 328)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "blue_size", scope: !212, file: !213, line: 38, baseType: !26, size: 8, offset: 336)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "blue_pos", scope: !212, file: !213, line: 39, baseType: !26, size: 8, offset: 344)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_size", scope: !212, file: !213, line: 40, baseType: !26, size: 8, offset: 352)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_pos", scope: !212, file: !213, line: 41, baseType: !26, size: 8, offset: 360)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_seg", scope: !212, file: !213, line: 42, baseType: !22, size: 16, offset: 368)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_off", scope: !212, file: !213, line: 43, baseType: !22, size: 16, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !212, file: !213, line: 44, baseType: !22, size: 16, offset: 400)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "vesa_attributes", scope: !212, file: !213, line: 45, baseType: !22, size: 16, offset: 416)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !212, file: !213, line: 46, baseType: !46, size: 32, offset: 432)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ext_lfb_base", scope: !212, file: !213, line: 47, baseType: !46, size: 32, offset: 464)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved", scope: !212, file: !213, line: 48, baseType: !251, size: 16, offset: 496)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 16, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 2)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "apm_bios_info", scope: !208, file: !209, line: 188, baseType: !255, size: 160, offset: 512)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apm_bios_info", file: !256, line: 25, size: 160, elements: !257)
!256 = !DIFile(filename: "./include/uapi/linux/apm_bios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a2faf7b1bd7c92e79370dc4887ba91d3")
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !255, file: !256, line: 26, baseType: !22, size: 16)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cseg", scope: !255, file: !256, line: 27, baseType: !22, size: 16, offset: 16)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !255, file: !256, line: 28, baseType: !46, size: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16", scope: !255, file: !256, line: 29, baseType: !22, size: 16, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "dseg", scope: !255, file: !256, line: 30, baseType: !22, size: 16, offset: 80)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !256, line: 31, baseType: !22, size: 16, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_len", scope: !255, file: !256, line: 32, baseType: !22, size: 16, offset: 112)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16_len", scope: !255, file: !256, line: 33, baseType: !22, size: 16, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "dseg_len", scope: !255, file: !256, line: 34, baseType: !22, size: 16, offset: 144)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2", scope: !208, file: !209, line: 189, baseType: !268, size: 32, offset: 672)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 4)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tboot_addr", scope: !208, file: !209, line: 190, baseType: !17, size: 64, offset: 704)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ist_info", scope: !208, file: !209, line: 191, baseType: !273, size: 128, offset: 768)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ist_info", file: !274, line: 23, size: 128, elements: !275)
!274 = !DIFile(filename: "./arch/x86/include/uapi/asm/ist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3966eee4102636d4a6a170719935cbb6")
!275 = !{!276, !277, !278, !279}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !273, file: !274, line: 24, baseType: !46, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !273, file: !274, line: 25, baseType: !46, size: 32, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !273, file: !274, line: 26, baseType: !46, size: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "perf_level", scope: !273, file: !274, line: 27, baseType: !46, size: 32, offset: 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_rsdp_addr", scope: !208, file: !209, line: 192, baseType: !17, size: 64, offset: 896)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_pad3", scope: !208, file: !209, line: 193, baseType: !282, size: 64, offset: 960)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !36)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "hd0_info", scope: !208, file: !209, line: 194, baseType: !284, size: 128, offset: 1024)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 16)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "hd1_info", scope: !208, file: !209, line: 195, baseType: !284, size: 128, offset: 1152)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "sys_desc_table", scope: !208, file: !209, line: 196, baseType: !289, size: 128, offset: 1280)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_desc_table", file: !209, line: 110, size: 128, elements: !290)
!290 = !{!291, !292}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !289, file: !209, line: 111, baseType: !22, size: 16)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !289, file: !209, line: 112, baseType: !293, size: 112, offset: 16)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 112, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 14)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "olpc_ofw_header", scope: !208, file: !209, line: 197, baseType: !297, size: 128, offset: 1408)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "olpc_ofw_header", file: !209, line: 116, size: 128, elements: !298)
!298 = !{!299, !300, !301, !302}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_magic", scope: !297, file: !209, line: 117, baseType: !46, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_version", scope: !297, file: !209, line: 118, baseType: !46, size: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "cif_handler", scope: !297, file: !209, line: 119, baseType: !46, size: 32, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "irq_desc_table", scope: !297, file: !209, line: 120, baseType: !46, size: 32, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_image", scope: !208, file: !209, line: 198, baseType: !46, size: 32, offset: 1536)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_size", scope: !208, file: !209, line: 199, baseType: !46, size: 32, offset: 1568)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cmd_line_ptr", scope: !208, file: !209, line: 200, baseType: !46, size: 32, offset: 1600)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_pad4", scope: !208, file: !209, line: 201, baseType: !307, size: 896, offset: 1632)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 896, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 112)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "cc_blob_address", scope: !208, file: !209, line: 202, baseType: !46, size: 32, offset: 2528)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "edid_info", scope: !208, file: !209, line: 203, baseType: !312, size: 1024, offset: 2560)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edid_info", file: !313, line: 5, size: 1024, elements: !314)
!313 = !DIFile(filename: "./include/uapi/video/edid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a36c5e7269b764712ba1a5dc2e5eb27d")
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !312, file: !313, line: 6, baseType: !316, size: 1024)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 1024, elements: !83)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "efi_info", scope: !208, file: !209, line: 204, baseType: !318, size: 256, offset: 3584)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_info", file: !209, line: 123, size: 256, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "efi_loader_signature", scope: !318, file: !209, line: 124, baseType: !46, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab", scope: !318, file: !209, line: 125, baseType: !46, size: 32, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_size", scope: !318, file: !209, line: 126, baseType: !46, size: 32, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_version", scope: !318, file: !209, line: 127, baseType: !46, size: 32, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap", scope: !318, file: !209, line: 128, baseType: !46, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_size", scope: !318, file: !209, line: 129, baseType: !46, size: 32, offset: 160)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab_hi", scope: !318, file: !209, line: 130, baseType: !46, size: 32, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_hi", scope: !318, file: !209, line: 131, baseType: !46, size: 32, offset: 224)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "alt_mem_k", scope: !208, file: !209, line: 205, baseType: !46, size: 32, offset: 3840)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !208, file: !209, line: 206, baseType: !46, size: 32, offset: 3872)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "e820_entries", scope: !208, file: !209, line: 207, baseType: !26, size: 8, offset: 3904)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf_entries", scope: !208, file: !209, line: 208, baseType: !26, size: 8, offset: 3912)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buf_entries", scope: !208, file: !209, line: 209, baseType: !26, size: 8, offset: 3920)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "kbd_status", scope: !208, file: !209, line: 210, baseType: !26, size: 8, offset: 3928)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "secure_boot", scope: !208, file: !209, line: 211, baseType: !26, size: 8, offset: 3936)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_pad5", scope: !208, file: !209, line: 212, baseType: !251, size: 16, offset: 3944)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !208, file: !209, line: 224, baseType: !26, size: 8, offset: 3960)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_pad6", scope: !208, file: !209, line: 225, baseType: !338, size: 8, offset: 3968)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 1)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !208, file: !209, line: 226, baseType: !342, size: 984, offset: 3976)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_header", file: !209, line: 68, size: 984, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "setup_sects", scope: !342, file: !209, line: 69, baseType: !26, size: 8)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "root_flags", scope: !342, file: !209, line: 70, baseType: !22, size: 16, offset: 8)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "syssize", scope: !342, file: !209, line: 71, baseType: !46, size: 32, offset: 24)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ram_size", scope: !342, file: !209, line: 72, baseType: !22, size: 16, offset: 56)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "vid_mode", scope: !342, file: !209, line: 73, baseType: !22, size: 16, offset: 72)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "root_dev", scope: !342, file: !209, line: 74, baseType: !22, size: 16, offset: 88)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "boot_flag", scope: !342, file: !209, line: 75, baseType: !22, size: 16, offset: 104)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !342, file: !209, line: 76, baseType: !22, size: 16, offset: 120)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !342, file: !209, line: 77, baseType: !46, size: 32, offset: 136)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !342, file: !209, line: 78, baseType: !22, size: 16, offset: 168)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "realmode_swtch", scope: !342, file: !209, line: 79, baseType: !46, size: 32, offset: 184)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "start_sys_seg", scope: !342, file: !209, line: 80, baseType: !22, size: 16, offset: 216)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_version", scope: !342, file: !209, line: 81, baseType: !22, size: 16, offset: 232)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "type_of_loader", scope: !342, file: !209, line: 82, baseType: !26, size: 8, offset: 248)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "loadflags", scope: !342, file: !209, line: 83, baseType: !26, size: 8, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "setup_move_size", scope: !342, file: !209, line: 84, baseType: !22, size: 16, offset: 264)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "code32_start", scope: !342, file: !209, line: 85, baseType: !46, size: 32, offset: 280)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_image", scope: !342, file: !209, line: 86, baseType: !46, size: 32, offset: 312)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_size", scope: !342, file: !209, line: 87, baseType: !46, size: 32, offset: 344)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "bootsect_kludge", scope: !342, file: !209, line: 88, baseType: !46, size: 32, offset: 376)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "heap_end_ptr", scope: !342, file: !209, line: 89, baseType: !22, size: 16, offset: 408)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_ver", scope: !342, file: !209, line: 90, baseType: !26, size: 8, offset: 424)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_type", scope: !342, file: !209, line: 91, baseType: !26, size: 8, offset: 432)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_line_ptr", scope: !342, file: !209, line: 92, baseType: !46, size: 32, offset: 440)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "initrd_addr_max", scope: !342, file: !209, line: 93, baseType: !46, size: 32, offset: 472)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_alignment", scope: !342, file: !209, line: 94, baseType: !46, size: 32, offset: 504)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "relocatable_kernel", scope: !342, file: !209, line: 95, baseType: !26, size: 8, offset: 536)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "min_alignment", scope: !342, file: !209, line: 96, baseType: !26, size: 8, offset: 544)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "xloadflags", scope: !342, file: !209, line: 97, baseType: !22, size: 16, offset: 552)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_size", scope: !342, file: !209, line: 98, baseType: !46, size: 32, offset: 568)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch", scope: !342, file: !209, line: 99, baseType: !46, size: 32, offset: 600)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch_data", scope: !342, file: !209, line: 100, baseType: !17, size: 64, offset: 632)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "payload_offset", scope: !342, file: !209, line: 101, baseType: !46, size: 32, offset: 696)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "payload_length", scope: !342, file: !209, line: 102, baseType: !46, size: 32, offset: 728)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "setup_data", scope: !342, file: !209, line: 103, baseType: !17, size: 64, offset: 760)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "pref_address", scope: !342, file: !209, line: 104, baseType: !17, size: 64, offset: 824)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "init_size", scope: !342, file: !209, line: 105, baseType: !46, size: 32, offset: 888)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "handover_offset", scope: !342, file: !209, line: 106, baseType: !46, size: 32, offset: 920)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_info_offset", scope: !342, file: !209, line: 107, baseType: !46, size: 32, offset: 952)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_pad7", scope: !208, file: !209, line: 227, baseType: !384, size: 288, offset: 4960)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 288, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 36)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buffer", scope: !208, file: !209, line: 228, baseType: !388, size: 512, offset: 5248)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 512, elements: !285)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "e820_table", scope: !208, file: !209, line: 229, baseType: !390, size: 20480, offset: 5760)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 20480, elements: !83)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_e820_entry", file: !209, line: 143, size: 160, elements: !392)
!392 = !{!393, !394, !395}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !391, file: !209, line: 144, baseType: !17, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !391, file: !209, line: 145, baseType: !17, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !391, file: !209, line: 146, baseType: !46, size: 32, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_pad8", scope: !208, file: !209, line: 230, baseType: !397, size: 384, offset: 26240)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 384, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 48)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf", scope: !208, file: !209, line: 231, baseType: !401, size: 3936, offset: 26624)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 3936, elements: !41)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_info", file: !403, line: 173, size: 656, elements: !404)
!403 = !DIFile(filename: "./include/uapi/linux/edd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6546916b3caeeabef2983c5e06678df")
!404 = !{!405, !406, !407, !408, !409, !410, !411}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !402, file: !403, line: 174, baseType: !26, size: 8)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !402, file: !403, line: 175, baseType: !26, size: 8, offset: 8)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "interface_support", scope: !402, file: !403, line: 176, baseType: !22, size: 16, offset: 16)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_cylinder", scope: !402, file: !403, line: 177, baseType: !22, size: 16, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_head", scope: !402, file: !403, line: 178, baseType: !26, size: 8, offset: 48)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_sectors_per_track", scope: !402, file: !403, line: 179, baseType: !26, size: 8, offset: 56)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !402, file: !403, line: 180, baseType: !412, size: 592, offset: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_device_params", file: !403, line: 72, size: 592, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !461, !527, !528}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !412, file: !403, line: 73, baseType: !22, size: 16)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !412, file: !403, line: 74, baseType: !22, size: 16, offset: 16)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_cylinders", scope: !412, file: !403, line: 75, baseType: !46, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_heads", scope: !412, file: !403, line: 76, baseType: !46, size: 32, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sectors_per_track", scope: !412, file: !403, line: 77, baseType: !46, size: 32, offset: 96)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_sectors", scope: !412, file: !403, line: 78, baseType: !17, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_per_sector", scope: !412, file: !403, line: 79, baseType: !22, size: 16, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "dpte_ptr", scope: !412, file: !403, line: 80, baseType: !46, size: 32, offset: 208)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !412, file: !403, line: 81, baseType: !22, size: 16, offset: 240)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "device_path_info_length", scope: !412, file: !403, line: 82, baseType: !26, size: 8, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !412, file: !403, line: 83, baseType: !26, size: 8, offset: 264)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !412, file: !403, line: 84, baseType: !22, size: 16, offset: 272)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "host_bus_type", scope: !412, file: !403, line: 85, baseType: !268, size: 32, offset: 288)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "interface_type", scope: !412, file: !403, line: 86, baseType: !282, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "interface_path", scope: !412, file: !403, line: 113, baseType: !429, size: 64, offset: 384)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !403, line: 87, size: 64, elements: !430)
!430 = !{!431, !437, !445, !449, !453, !457}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !429, file: !403, line: 92, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !403, line: 88, size: 64, elements: !433)
!433 = !{!434, !435, !436}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !432, file: !403, line: 89, baseType: !22, size: 16)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !432, file: !403, line: 90, baseType: !22, size: 16, offset: 16)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !432, file: !403, line: 91, baseType: !46, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !429, file: !403, line: 99, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !403, line: 93, size: 64, elements: !439)
!439 = !{!440, !441, !442, !443, !444}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !438, file: !403, line: 94, baseType: !26, size: 8)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !438, file: !403, line: 95, baseType: !26, size: 8, offset: 8)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !438, file: !403, line: 96, baseType: !26, size: 8, offset: 16)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !438, file: !403, line: 97, baseType: !26, size: 8, offset: 24)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !438, file: !403, line: 98, baseType: !46, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ibnd", scope: !429, file: !403, line: 103, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !403, line: 101, size: 64, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !446, file: !403, line: 102, baseType: !17, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "xprs", scope: !429, file: !403, line: 106, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !403, line: 104, size: 64, elements: !451)
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !450, file: !403, line: 105, baseType: !17, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "htpt", scope: !429, file: !403, line: 109, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !403, line: 107, size: 64, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !454, file: !403, line: 108, baseType: !17, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !429, file: !403, line: 112, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !403, line: 110, size: 64, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !458, file: !403, line: 111, baseType: !17, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "device_path", scope: !412, file: !403, line: 168, baseType: !462, size: 128, offset: 448)
!462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !403, line: 114, size: 128, elements: !463)
!463 = !{!464, !472, !481, !488, !493, !498, !503, !508, !514, !522}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ata", scope: !462, file: !403, line: 121, baseType: !465, size: 128)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !403, line: 115, size: 128, elements: !466)
!466 = !{!467, !468, !469, !470, !471}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !465, file: !403, line: 116, baseType: !26, size: 8)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !465, file: !403, line: 117, baseType: !26, size: 8, offset: 8)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !465, file: !403, line: 118, baseType: !22, size: 16, offset: 16)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !465, file: !403, line: 119, baseType: !46, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !465, file: !403, line: 120, baseType: !17, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "atapi", scope: !462, file: !403, line: 129, baseType: !473, size: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !403, line: 122, size: 128, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !473, file: !403, line: 123, baseType: !26, size: 8)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !473, file: !403, line: 124, baseType: !26, size: 8, offset: 8)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !473, file: !403, line: 125, baseType: !26, size: 8, offset: 16)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !473, file: !403, line: 126, baseType: !26, size: 8, offset: 24)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !473, file: !403, line: 127, baseType: !46, size: 32, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !473, file: !403, line: 128, baseType: !17, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "scsi", scope: !462, file: !403, line: 135, baseType: !482, size: 128)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !403, line: 130, size: 128, elements: !483)
!483 = !{!484, !485, !486, !487}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !482, file: !403, line: 131, baseType: !22, size: 16)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !482, file: !403, line: 132, baseType: !17, size: 64, offset: 16)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !482, file: !403, line: 133, baseType: !22, size: 16, offset: 80)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !482, file: !403, line: 134, baseType: !46, size: 32, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "usb", scope: !462, file: !403, line: 139, baseType: !489, size: 128)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !403, line: 136, size: 128, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "serial_number", scope: !489, file: !403, line: 137, baseType: !17, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !489, file: !403, line: 138, baseType: !17, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i1394", scope: !462, file: !403, line: 143, baseType: !494, size: 128)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !403, line: 140, size: 128, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "eui", scope: !494, file: !403, line: 141, baseType: !17, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !494, file: !403, line: 142, baseType: !17, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "fibre", scope: !462, file: !403, line: 147, baseType: !499, size: 128)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !403, line: 144, size: 128, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "wwid", scope: !499, file: !403, line: 145, baseType: !17, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !499, file: !403, line: 146, baseType: !17, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i2o", scope: !462, file: !403, line: 151, baseType: !504, size: 128)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !403, line: 148, size: 128, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "identity_tag", scope: !504, file: !403, line: 149, baseType: !17, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !504, file: !403, line: 150, baseType: !17, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "raid", scope: !462, file: !403, line: 156, baseType: !509, size: 128)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !403, line: 152, size: 128, elements: !510)
!510 = !{!511, !512, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "array_number", scope: !509, file: !403, line: 153, baseType: !46, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !509, file: !403, line: 154, baseType: !46, size: 32, offset: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !509, file: !403, line: 155, baseType: !17, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sata", scope: !462, file: !403, line: 163, baseType: !515, size: 128)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !403, line: 157, size: 128, elements: !516)
!516 = !{!517, !518, !519, !520, !521}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !515, file: !403, line: 158, baseType: !26, size: 8)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !515, file: !403, line: 159, baseType: !26, size: 8, offset: 8)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !515, file: !403, line: 160, baseType: !22, size: 16, offset: 16)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !515, file: !403, line: 161, baseType: !46, size: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !515, file: !403, line: 162, baseType: !17, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !462, file: !403, line: 167, baseType: !523, size: 128)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !403, line: 164, size: 128, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !523, file: !403, line: 165, baseType: !17, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !523, file: !403, line: 166, baseType: !17, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !412, file: !403, line: 169, baseType: !26, size: 8, offset: 576)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !412, file: !403, line: 170, baseType: !26, size: 8, offset: 584)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_pad9", scope: !208, file: !209, line: 232, baseType: !530, size: 2208, offset: 30560)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2208, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 276)
!533 = !DISubprogram(name: "efi_get_system_table", scope: !6, file: !6, line: 214, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!534 = !DISubroutineType(types: !535)
!535 = !{!28, !207}
!536 = !DISubprogram(name: "error", scope: !537, file: !537, line: 8, type: !538, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!537 = !DIFile(filename: "arch/x86/boot/compressed/error.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0b20f0f8db8d544195cf5a95e28d98dc")
!538 = !DISubroutineType(types: !539)
!539 = !{null, !54}
!540 = !DISubprogram(name: "efi_get_conf_table", scope: !6, file: !6, line: 215, type: !541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!541 = !DISubroutineType(types: !542)
!542 = !{!125, !207, !543, !544}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!545 = distinct !DISubprogram(name: "__efi_get_rsdp_addr", scope: !3, file: !3, line: 23, type: !546, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{!13, !28, !7}
!548 = !{!549, !550, !551, !552}
!549 = !DILocalVariable(name: "cfg_tbl_pa", arg: 1, scope: !545, file: !3, line: 23, type: !28)
!550 = !DILocalVariable(name: "cfg_tbl_len", arg: 2, scope: !545, file: !3, line: 23, type: !7)
!551 = !DILocalVariable(name: "rsdp_addr", scope: !545, file: !3, line: 26, type: !28)
!552 = !DILocalVariable(name: "ret", scope: !545, file: !3, line: 27, type: !125)
!553 = !DILocation(line: 23, column: 35, scope: !545)
!554 = !DILocation(line: 23, column: 60, scope: !545)
!555 = !DILocation(line: 26, column: 2, scope: !545)
!556 = !DILocation(line: 26, column: 16, scope: !545)
!557 = !DILocation(line: 27, column: 2, scope: !545)
!558 = !DILocation(line: 27, column: 6, scope: !545)
!559 = !DILocation(line: 33, column: 36, scope: !545)
!560 = !DILocation(line: 33, column: 53, scope: !545)
!561 = !DILocation(line: 33, column: 65, scope: !545)
!562 = !DILocation(line: 34, column: 8, scope: !545)
!563 = !DILocation(line: 33, column: 14, scope: !545)
!564 = !DILocation(line: 33, column: 12, scope: !545)
!565 = !DILocation(line: 35, column: 6, scope: !566)
!566 = distinct !DILexicalBlock(scope: !545, file: !3, line: 35, column: 6)
!567 = !DILocation(line: 35, column: 6, scope: !545)
!568 = !DILocation(line: 36, column: 33, scope: !566)
!569 = !DILocation(line: 36, column: 3, scope: !566)
!570 = !DILocation(line: 39, column: 36, scope: !545)
!571 = !DILocation(line: 39, column: 53, scope: !545)
!572 = !DILocation(line: 39, column: 65, scope: !545)
!573 = !DILocation(line: 40, column: 8, scope: !545)
!574 = !DILocation(line: 39, column: 14, scope: !545)
!575 = !DILocation(line: 39, column: 12, scope: !545)
!576 = !DILocation(line: 41, column: 6, scope: !577)
!577 = distinct !DILexicalBlock(scope: !545, file: !3, line: 41, column: 6)
!578 = !DILocation(line: 41, column: 6, scope: !545)
!579 = !DILocation(line: 42, column: 33, scope: !577)
!580 = !DILocation(line: 42, column: 3, scope: !577)
!581 = !DILocation(line: 44, column: 2, scope: !545)
!582 = !DILocation(line: 46, column: 2, scope: !545)
!583 = !DILocation(line: 47, column: 1, scope: !545)
!584 = !DISubprogram(name: "efi_find_vendor_table", scope: !6, file: !6, line: 217, type: !585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!585 = !DISubroutineType(types: !586)
!586 = !{!28, !207, !28, !7, !587}
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !588, line: 9, baseType: !589, align: 32)
!588 = !DIFile(filename: "arch/x86/boot/compressed/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fce95a19879dc454423d87814ff243aa")
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !590, line: 17, baseType: !591)
!590 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !590, line: 15, size: 128, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !591, file: !590, line: 16, baseType: !284, size: 128)
!594 = !DISubprogram(name: "__putstr", scope: !6, file: !6, line: 64, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!599 = distinct !DISubprogram(name: "scan_mem_for_rsdp", scope: !3, file: !3, line: 89, type: !600, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{!24, !24, !45}
!602 = !{!603, !604, !605, !606, !607}
!603 = !DILocalVariable(name: "start", arg: 1, scope: !599, file: !3, line: 89, type: !24)
!604 = !DILocalVariable(name: "length", arg: 2, scope: !599, file: !3, line: 89, type: !45)
!605 = !DILocalVariable(name: "rsdp", scope: !599, file: !3, line: 91, type: !29)
!606 = !DILocalVariable(name: "address", scope: !599, file: !3, line: 92, type: !24)
!607 = !DILocalVariable(name: "end", scope: !599, file: !3, line: 92, type: !24)
!608 = !DILocation(line: 89, column: 34, scope: !599)
!609 = !DILocation(line: 89, column: 45, scope: !599)
!610 = !DILocation(line: 91, column: 2, scope: !599)
!611 = !DILocation(line: 91, column: 26, scope: !599)
!612 = !DILocation(line: 92, column: 2, scope: !599)
!613 = !DILocation(line: 92, column: 6, scope: !599)
!614 = !DILocation(line: 92, column: 16, scope: !599)
!615 = !DILocation(line: 94, column: 8, scope: !599)
!616 = !DILocation(line: 94, column: 16, scope: !599)
!617 = !DILocation(line: 94, column: 14, scope: !599)
!618 = !DILocation(line: 94, column: 6, scope: !599)
!619 = !DILocation(line: 97, column: 17, scope: !620)
!620 = distinct !DILexicalBlock(scope: !599, file: !3, line: 97, column: 2)
!621 = !DILocation(line: 97, column: 15, scope: !620)
!622 = !DILocation(line: 97, column: 7, scope: !620)
!623 = !DILocation(line: 97, column: 24, scope: !624)
!624 = distinct !DILexicalBlock(scope: !620, file: !3, line: 97, column: 2)
!625 = !DILocation(line: 97, column: 34, scope: !624)
!626 = !DILocation(line: 97, column: 32, scope: !624)
!627 = !DILocation(line: 97, column: 2, scope: !620)
!628 = !DILocation(line: 104, column: 36, scope: !629)
!629 = distinct !DILexicalBlock(scope: !624, file: !3, line: 97, column: 71)
!630 = !DILocation(line: 104, column: 8, scope: !629)
!631 = !DILocation(line: 107, column: 8, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !3, line: 107, column: 7)
!633 = !DILocation(line: 107, column: 7, scope: !629)
!634 = !DILocation(line: 108, column: 4, scope: !632)
!635 = !DILocation(line: 111, column: 30, scope: !636)
!636 = distinct !DILexicalBlock(scope: !629, file: !3, line: 111, column: 7)
!637 = !DILocation(line: 111, column: 7, scope: !636)
!638 = !DILocation(line: 111, column: 7, scope: !629)
!639 = !DILocation(line: 112, column: 4, scope: !636)
!640 = !DILocation(line: 115, column: 8, scope: !641)
!641 = distinct !DILexicalBlock(scope: !629, file: !3, line: 115, column: 7)
!642 = !DILocation(line: 115, column: 14, scope: !641)
!643 = !DILocation(line: 115, column: 23, scope: !641)
!644 = !DILocation(line: 115, column: 29, scope: !641)
!645 = !DILocation(line: 116, column: 31, scope: !641)
!646 = !DILocation(line: 116, column: 8, scope: !641)
!647 = !DILocation(line: 116, column: 7, scope: !641)
!648 = !DILocation(line: 115, column: 7, scope: !629)
!649 = !DILocation(line: 117, column: 4, scope: !641)
!650 = !DILocation(line: 120, column: 10, scope: !629)
!651 = !DILocation(line: 120, column: 3, scope: !629)
!652 = !DILocation(line: 97, column: 47, scope: !624)
!653 = !DILocation(line: 97, column: 2, scope: !624)
!654 = distinct !{!654, !627, !655, !656, !657}
!655 = !DILocation(line: 121, column: 2, scope: !620)
!656 = !{!"llvm.loop.mustprogress"}
!657 = !{!"llvm.loop.unroll.disable"}
!658 = !DILocation(line: 122, column: 2, scope: !599)
!659 = !DILocation(line: 123, column: 1, scope: !599)
!660 = !DISubprogram(name: "strncmp", scope: !661, file: !661, line: 22, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!661 = !DIFile(filename: "arch/x86/boot/compressed/../string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "57f8c28d9f334417175b0af782b739d7")
!662 = !DISubroutineType(types: !663)
!663 = !{!125, !597, !597, !664}
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 61, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !666, line: 72, baseType: !667)
!666 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !666, line: 16, baseType: !28)
!668 = distinct !DISubprogram(name: "compute_checksum", scope: !3, file: !3, line: 77, type: !669, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !671)
!669 = !DISubroutineType(types: !670)
!670 = !{!25, !24, !45}
!671 = !{!672, !673, !674, !675}
!672 = !DILocalVariable(name: "buffer", arg: 1, scope: !668, file: !3, line: 77, type: !24)
!673 = !DILocalVariable(name: "length", arg: 2, scope: !668, file: !3, line: 77, type: !45)
!674 = !DILocalVariable(name: "end", scope: !668, file: !3, line: 79, type: !24)
!675 = !DILocalVariable(name: "sum", scope: !668, file: !3, line: 80, type: !25)
!676 = !DILocation(line: 77, column: 32, scope: !668)
!677 = !DILocation(line: 77, column: 44, scope: !668)
!678 = !DILocation(line: 79, column: 2, scope: !668)
!679 = !DILocation(line: 79, column: 6, scope: !668)
!680 = !DILocation(line: 79, column: 12, scope: !668)
!681 = !DILocation(line: 79, column: 21, scope: !668)
!682 = !DILocation(line: 79, column: 19, scope: !668)
!683 = !DILocation(line: 80, column: 2, scope: !668)
!684 = !DILocation(line: 80, column: 5, scope: !668)
!685 = !DILocation(line: 82, column: 2, scope: !668)
!686 = !DILocation(line: 82, column: 9, scope: !668)
!687 = !DILocation(line: 82, column: 18, scope: !668)
!688 = !DILocation(line: 82, column: 16, scope: !668)
!689 = !DILocation(line: 83, column: 18, scope: !668)
!690 = !DILocation(line: 83, column: 10, scope: !668)
!691 = !DILocation(line: 83, column: 7, scope: !668)
!692 = distinct !{!692, !685, !693, !656, !657}
!693 = !DILocation(line: 83, column: 20, scope: !668)
!694 = !DILocation(line: 85, column: 9, scope: !668)
!695 = !DILocation(line: 86, column: 1, scope: !668)
!696 = !DILocation(line: 85, column: 2, scope: !668)
