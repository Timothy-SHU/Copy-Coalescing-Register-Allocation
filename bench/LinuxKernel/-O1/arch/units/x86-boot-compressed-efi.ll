; ModuleID = 'arch/x86/boot/compressed/efi.c'
source_filename = "arch/x86/boot/compressed/efi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.efi_setup_data = type { i64, i64, i64, i64, [8 x i64] }
%struct.efi_system_table_64_t = type { %struct.efi_table_hdr_t, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.efi_system_table_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_data = type { i64, i32, i32, [0 x i8] }
%struct.guid_t = type { [16 x i8] }
%struct.efi_config_table_64_t = type { %struct.guid_t, i64 }
%struct.efi_config_table_32_t = type { %struct.guid_t, i32 }

@.str = private unnamed_addr constant [5 x i8] c"EL64\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"EL32\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [30 x i8] c"No EFI environment detected.\0A\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [28 x i8] c"EFI system table not found.\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [58 x i8] c"kexec EFI environment missing valid configuration table.\0A\00", align 1, !dbg !19

; Function Attrs: noredzone nounwind
define hidden i32 @efi_get_type(ptr noundef %bp) #0 !dbg !141 {
entry:
  %bp.addr = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %et = alloca i32, align 4
  %sig = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !473, metadata !DIExpression()), !dbg !480
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #6, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !474, metadata !DIExpression()), !dbg !482
  call void @llvm.lifetime.start.p0(i64 4, ptr %et) #6, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %et, metadata !476, metadata !DIExpression()), !dbg !484
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #6, !dbg !485
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !477, metadata !DIExpression()), !dbg !486
  %0 = load ptr, ptr %bp.addr, align 8, !dbg !487
  %efi_info = getelementptr inbounds %struct.boot_params, ptr %0, i32 0, i32 17, !dbg !488
  store ptr %efi_info, ptr %ei, align 8, !dbg !489
  %1 = load ptr, ptr %ei, align 8, !dbg !490
  %efi_loader_signature = getelementptr inbounds %struct.efi_info, ptr %1, i32 0, i32 0, !dbg !491
  store ptr %efi_loader_signature, ptr %sig, align 8, !dbg !492
  %2 = load ptr, ptr %sig, align 8, !dbg !493
  %call = call i32 @strncmp(ptr noundef %2, ptr noundef @.str, i64 noundef 4) #7, !dbg !495
  %tobool = icmp ne i32 %call, 0, !dbg !495
  br i1 %tobool, label %if.else, label %if.then, !dbg !496

if.then:                                          ; preds = %entry
  store i32 0, ptr %et, align 4, !dbg !497
  br label %if.end5, !dbg !499

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %sig, align 8, !dbg !500
  %call1 = call i32 @strncmp(ptr noundef %3, ptr noundef @.str.1, i64 noundef 4) #7, !dbg !502
  %tobool2 = icmp ne i32 %call1, 0, !dbg !502
  br i1 %tobool2, label %if.else4, label %if.then3, !dbg !503

if.then3:                                         ; preds = %if.else
  store i32 1, ptr %et, align 4, !dbg !504
  br label %if.end, !dbg !506

if.else4:                                         ; preds = %if.else
  call void @__putstr(ptr noundef @.str.2) #7, !dbg !507
  store i32 2, ptr %et, align 4, !dbg !509
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %4 = load i32, ptr %et, align 4, !dbg !510
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #6, !dbg !511
  call void @llvm.lifetime.end.p0(i64 4, ptr %et) #6, !dbg !511
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #6, !dbg !511
  ret i32 %4, !dbg !512
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone
declare !dbg !513 hidden i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone
declare !dbg !522 hidden void @__putstr(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone nounwind
define hidden i64 @efi_get_system_table(ptr noundef %bp) #0 !dbg !525 {
entry:
  %retval = alloca i64, align 8
  %bp.addr = alloca ptr, align 8
  %sys_tbl_pa = alloca i64, align 8
  %ei = alloca ptr, align 8
  %et = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !529, metadata !DIExpression()), !dbg !533
  call void @llvm.lifetime.start.p0(i64 8, ptr %sys_tbl_pa) #6, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %sys_tbl_pa, metadata !530, metadata !DIExpression()), !dbg !535
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #6, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !531, metadata !DIExpression()), !dbg !537
  call void @llvm.lifetime.start.p0(i64 4, ptr %et) #6, !dbg !538
  call void @llvm.dbg.declare(metadata ptr %et, metadata !532, metadata !DIExpression()), !dbg !539
  %0 = load ptr, ptr %bp.addr, align 8, !dbg !540
  %efi_info = getelementptr inbounds %struct.boot_params, ptr %0, i32 0, i32 17, !dbg !541
  store ptr %efi_info, ptr %ei, align 8, !dbg !542
  %1 = load ptr, ptr %ei, align 8, !dbg !543
  %efi_systab = getelementptr inbounds %struct.efi_info, ptr %1, i32 0, i32 1, !dbg !544
  %2 = load i32, ptr %efi_systab, align 4, !dbg !544
  %conv = zext i32 %2 to i64, !dbg !543
  %3 = load ptr, ptr %ei, align 8, !dbg !545
  %efi_systab_hi = getelementptr inbounds %struct.efi_info, ptr %3, i32 0, i32 6, !dbg !546
  %4 = load i32, ptr %efi_systab_hi, align 4, !dbg !546
  %conv1 = zext i32 %4 to i64, !dbg !547
  %shl = shl i64 %conv1, 32, !dbg !548
  %or = or i64 %conv, %shl, !dbg !549
  store i64 %or, ptr %sys_tbl_pa, align 8, !dbg !550
  %5 = load i64, ptr %sys_tbl_pa, align 8, !dbg !551
  %tobool = icmp ne i64 %5, 0, !dbg !551
  br i1 %tobool, label %if.end, label %if.then, !dbg !553

if.then:                                          ; preds = %entry
  call void @__putstr(ptr noundef @.str.3) #7, !dbg !554
  store i64 0, ptr %retval, align 8, !dbg !556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !556

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %sys_tbl_pa, align 8, !dbg !557
  store i64 %6, ptr %retval, align 8, !dbg !558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !558

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %et) #6, !dbg !559
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #6, !dbg !559
  call void @llvm.lifetime.end.p0(i64 8, ptr %sys_tbl_pa) #6, !dbg !559
  %7 = load i64, ptr %retval, align 8, !dbg !559
  ret i64 %7, !dbg !559
}

; Function Attrs: noredzone nounwind
define hidden i32 @efi_get_conf_table(ptr noundef %bp, ptr noundef %cfg_tbl_pa, ptr noundef %cfg_tbl_len) #0 !dbg !560 {
entry:
  %retval = alloca i32, align 4
  %bp.addr = alloca ptr, align 8
  %cfg_tbl_pa.addr = alloca ptr, align 8
  %cfg_tbl_len.addr = alloca ptr, align 8
  %sys_tbl_pa = alloca i64, align 8
  %et = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %stbl = alloca ptr, align 8
  %esd = alloca ptr, align 8
  %stbl12 = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !566, metadata !DIExpression()), !dbg !579
  store ptr %cfg_tbl_pa, ptr %cfg_tbl_pa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cfg_tbl_pa.addr, metadata !567, metadata !DIExpression()), !dbg !580
  store ptr %cfg_tbl_len, ptr %cfg_tbl_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cfg_tbl_len.addr, metadata !568, metadata !DIExpression()), !dbg !581
  call void @llvm.lifetime.start.p0(i64 8, ptr %sys_tbl_pa) #6, !dbg !582
  call void @llvm.dbg.declare(metadata ptr %sys_tbl_pa, metadata !569, metadata !DIExpression()), !dbg !583
  call void @llvm.lifetime.start.p0(i64 4, ptr %et) #6, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %et, metadata !570, metadata !DIExpression()), !dbg !585
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !586
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !571, metadata !DIExpression()), !dbg !587
  %0 = load ptr, ptr %cfg_tbl_pa.addr, align 8, !dbg !588
  %tobool = icmp ne ptr %0, null, !dbg !588
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !590

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %cfg_tbl_len.addr, align 8, !dbg !591
  %tobool1 = icmp ne ptr %1, null, !dbg !591
  br i1 %tobool1, label %if.end, label %if.then, !dbg !592

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !593

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %bp.addr, align 8, !dbg !594
  %call = call i64 @efi_get_system_table(ptr noundef %2) #7, !dbg !595
  store i64 %call, ptr %sys_tbl_pa, align 8, !dbg !596
  %3 = load i64, ptr %sys_tbl_pa, align 8, !dbg !597
  %tobool2 = icmp ne i64 %3, 0, !dbg !597
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !599

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !600

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %bp.addr, align 8, !dbg !601
  %call5 = call i32 @efi_get_type(ptr noundef %4) #7, !dbg !602
  store i32 %call5, ptr %et, align 4, !dbg !603
  %5 = load i32, ptr %et, align 4, !dbg !604
  %cmp = icmp eq i32 %5, 0, !dbg !605
  br i1 %cmp, label %if.then6, label %if.else, !dbg !606

if.then6:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %stbl) #6, !dbg !607
  call void @llvm.dbg.declare(metadata ptr %stbl, metadata !572, metadata !DIExpression()), !dbg !608
  %6 = load i64, ptr %sys_tbl_pa, align 8, !dbg !609
  %7 = inttoptr i64 %6 to ptr, !dbg !610
  store ptr %7, ptr %stbl, align 8, !dbg !608
  call void @llvm.lifetime.start.p0(i64 8, ptr %esd) #6, !dbg !611
  call void @llvm.dbg.declare(metadata ptr %esd, metadata !575, metadata !DIExpression()), !dbg !612
  %8 = load ptr, ptr %bp.addr, align 8, !dbg !613
  %9 = load i32, ptr %et, align 4, !dbg !614
  %call7 = call ptr @get_kexec_setup_data(ptr noundef %8, i32 noundef %9) #7, !dbg !615
  store ptr %call7, ptr %esd, align 8, !dbg !616
  %10 = load ptr, ptr %esd, align 8, !dbg !617
  %tobool8 = icmp ne ptr %10, null, !dbg !617
  br i1 %tobool8, label %cond.true, label %cond.false, !dbg !617

cond.true:                                        ; preds = %if.then6
  %11 = load ptr, ptr %esd, align 8, !dbg !618
  %tables = getelementptr inbounds %struct.efi_setup_data, ptr %11, i32 0, i32 2, !dbg !619
  %12 = load i64, ptr %tables, align 8, !dbg !619
  br label %cond.end, !dbg !617

cond.false:                                       ; preds = %if.then6
  %13 = load ptr, ptr %stbl, align 8, !dbg !620
  %tables9 = getelementptr inbounds %struct.efi_system_table_64_t, ptr %13, i32 0, i32 14, !dbg !621
  %14 = load i64, ptr %tables9, align 8, !dbg !621
  br label %cond.end, !dbg !617

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %14, %cond.false ], !dbg !617
  %15 = load ptr, ptr %cfg_tbl_pa.addr, align 8, !dbg !622
  store i64 %cond, ptr %15, align 8, !dbg !623
  %16 = load ptr, ptr %stbl, align 8, !dbg !624
  %nr_tables = getelementptr inbounds %struct.efi_system_table_64_t, ptr %16, i32 0, i32 12, !dbg !625
  %17 = load i32, ptr %nr_tables, align 8, !dbg !625
  %18 = load ptr, ptr %cfg_tbl_len.addr, align 8, !dbg !626
  store i32 %17, ptr %18, align 4, !dbg !627
  call void @llvm.lifetime.end.p0(i64 8, ptr %esd) #6, !dbg !628
  call void @llvm.lifetime.end.p0(i64 8, ptr %stbl) #6, !dbg !628
  br label %if.end17, !dbg !629

if.else:                                          ; preds = %if.end4
  %19 = load i32, ptr %et, align 4, !dbg !630
  %cmp10 = icmp eq i32 %19, 1, !dbg !631
  br i1 %cmp10, label %if.then11, label %if.else15, !dbg !632

if.then11:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %stbl12) #6, !dbg !633
  call void @llvm.dbg.declare(metadata ptr %stbl12, metadata !576, metadata !DIExpression()), !dbg !634
  %20 = load i64, ptr %sys_tbl_pa, align 8, !dbg !635
  %21 = inttoptr i64 %20 to ptr, !dbg !636
  store ptr %21, ptr %stbl12, align 8, !dbg !634
  %22 = load ptr, ptr %stbl12, align 8, !dbg !637
  %tables13 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %22, i32 0, i32 12, !dbg !638
  %23 = load i32, ptr %tables13, align 4, !dbg !638
  %conv = zext i32 %23 to i64, !dbg !637
  %24 = load ptr, ptr %cfg_tbl_pa.addr, align 8, !dbg !639
  store i64 %conv, ptr %24, align 8, !dbg !640
  %25 = load ptr, ptr %stbl12, align 8, !dbg !641
  %nr_tables14 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %25, i32 0, i32 11, !dbg !642
  %26 = load i32, ptr %nr_tables14, align 8, !dbg !642
  %27 = load ptr, ptr %cfg_tbl_len.addr, align 8, !dbg !643
  store i32 %26, ptr %27, align 4, !dbg !644
  call void @llvm.lifetime.end.p0(i64 8, ptr %stbl12) #6, !dbg !645
  br label %if.end16, !dbg !646

if.else15:                                        ; preds = %if.else
  store i32 -22, ptr %retval, align 4, !dbg !647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !647

if.end16:                                         ; preds = %if.then11
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %cond.end
  store i32 0, ptr %retval, align 4, !dbg !649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !649

cleanup:                                          ; preds = %if.end17, %if.else15, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !650
  call void @llvm.lifetime.end.p0(i64 4, ptr %et) #6, !dbg !650
  call void @llvm.lifetime.end.p0(i64 8, ptr %sys_tbl_pa) #6, !dbg !650
  %28 = load i32, ptr %retval, align 4, !dbg !650
  ret i32 %28, !dbg !650
}

; Function Attrs: noredzone nounwind
define internal ptr @get_kexec_setup_data(ptr noundef %bp, i32 noundef %et) #0 !dbg !651 {
entry:
  %retval = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %et.addr = alloca i32, align 4
  %esd = alloca ptr, align 8
  %data = alloca ptr, align 8
  %pa_data = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !655, metadata !DIExpression()), !dbg !660
  store i32 %et, ptr %et.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %et.addr, metadata !656, metadata !DIExpression()), !dbg !661
  call void @llvm.lifetime.start.p0(i64 8, ptr %esd) #6, !dbg !662
  call void @llvm.dbg.declare(metadata ptr %esd, metadata !657, metadata !DIExpression()), !dbg !663
  store ptr null, ptr %esd, align 8, !dbg !663
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #6, !dbg !664
  call void @llvm.dbg.declare(metadata ptr %data, metadata !658, metadata !DIExpression()), !dbg !665
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa_data) #6, !dbg !666
  call void @llvm.dbg.declare(metadata ptr %pa_data, metadata !659, metadata !DIExpression()), !dbg !667
  %0 = load ptr, ptr %bp.addr, align 8, !dbg !668
  %hdr = getelementptr inbounds %struct.boot_params, ptr %0, i32 0, i32 28, !dbg !669
  %setup_data = getelementptr inbounds %struct.setup_header, ptr %hdr, i32 0, i32 34, !dbg !670
  %1 = load i64, ptr %setup_data, align 1, !dbg !670
  store i64 %1, ptr %pa_data, align 8, !dbg !671
  br label %while.cond, !dbg !672

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, ptr %pa_data, align 8, !dbg !673
  %tobool = icmp ne i64 %2, 0, !dbg !672
  br i1 %tobool, label %while.body, label %while.end, !dbg !672

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %pa_data, align 8, !dbg !674
  %4 = inttoptr i64 %3 to ptr, !dbg !676
  store ptr %4, ptr %data, align 8, !dbg !677
  %5 = load ptr, ptr %data, align 8, !dbg !678
  %type = getelementptr inbounds %struct.setup_data, ptr %5, i32 0, i32 1, !dbg !680
  %6 = load i32, ptr %type, align 8, !dbg !680
  %cmp = icmp eq i32 %6, 4, !dbg !681
  br i1 %cmp, label %if.then, label %if.end, !dbg !682

if.then:                                          ; preds = %while.body
  %7 = load i64, ptr %pa_data, align 8, !dbg !683
  %add = add i64 %7, 16, !dbg !685
  %8 = inttoptr i64 %add to ptr, !dbg !686
  store ptr %8, ptr %esd, align 8, !dbg !687
  br label %while.end, !dbg !688

if.end:                                           ; preds = %while.body
  %9 = load ptr, ptr %data, align 8, !dbg !689
  %next = getelementptr inbounds %struct.setup_data, ptr %9, i32 0, i32 0, !dbg !690
  %10 = load i64, ptr %next, align 8, !dbg !690
  store i64 %10, ptr %pa_data, align 8, !dbg !691
  br label %while.cond, !dbg !672, !llvm.loop !692

while.end:                                        ; preds = %if.then, %while.cond
  %11 = load ptr, ptr %esd, align 8, !dbg !696
  %tobool1 = icmp ne ptr %11, null, !dbg !696
  br i1 %tobool1, label %land.lhs.true, label %if.end4, !dbg !698

land.lhs.true:                                    ; preds = %while.end
  %12 = load ptr, ptr %esd, align 8, !dbg !699
  %tables = getelementptr inbounds %struct.efi_setup_data, ptr %12, i32 0, i32 2, !dbg !700
  %13 = load i64, ptr %tables, align 8, !dbg !700
  %tobool2 = icmp ne i64 %13, 0, !dbg !699
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !701

if.then3:                                         ; preds = %land.lhs.true
  call void @__putstr(ptr noundef @.str.4) #7, !dbg !702
  store ptr null, ptr %retval, align 8, !dbg !704
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !704

if.end4:                                          ; preds = %land.lhs.true, %while.end
  %14 = load ptr, ptr %esd, align 8, !dbg !705
  store ptr %14, ptr %retval, align 8, !dbg !706
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !706

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa_data) #6, !dbg !707
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #6, !dbg !707
  call void @llvm.lifetime.end.p0(i64 8, ptr %esd) #6, !dbg !707
  %15 = load ptr, ptr %retval, align 8, !dbg !707
  ret ptr %15, !dbg !707
}

; Function Attrs: noredzone nounwind
define hidden i64 @efi_find_vendor_table(ptr noundef %bp, i64 noundef %cfg_tbl_pa, i32 noundef %cfg_tbl_len, i64 %guid.coerce0, i64 %guid.coerce1) #0 !dbg !708 {
entry:
  %retval = alloca i64, align 8
  %guid = alloca %struct.guid_t, align 4
  %bp.addr = alloca ptr, align 8
  %cfg_tbl_pa.addr = alloca i64, align 8
  %cfg_tbl_len.addr = alloca i32, align 4
  %et = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %vendor_tbl_pa = alloca i64, align 8
  %vendor_tbl_guid = alloca %struct.guid_t, align 4
  %ret = alloca i32, align 4
  %0 = getelementptr inbounds { i64, i64 }, ptr %guid, i32 0, i32 0
  store i64 %guid.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds { i64, i64 }, ptr %guid, i32 0, i32 1
  store i64 %guid.coerce1, ptr %1, align 4
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !712, metadata !DIExpression()), !dbg !724
  store i64 %cfg_tbl_pa, ptr %cfg_tbl_pa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cfg_tbl_pa.addr, metadata !713, metadata !DIExpression()), !dbg !725
  store i32 %cfg_tbl_len, ptr %cfg_tbl_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cfg_tbl_len.addr, metadata !714, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.declare(metadata ptr %guid, metadata !715, metadata !DIExpression()), !dbg !727
  call void @llvm.lifetime.start.p0(i64 4, ptr %et) #6, !dbg !728
  call void @llvm.dbg.declare(metadata ptr %et, metadata !716, metadata !DIExpression()), !dbg !729
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !730
  call void @llvm.dbg.declare(metadata ptr %i, metadata !717, metadata !DIExpression()), !dbg !731
  %2 = load ptr, ptr %bp.addr, align 8, !dbg !732
  %call = call i32 @efi_get_type(ptr noundef %2) #7, !dbg !733
  store i32 %call, ptr %et, align 4, !dbg !734
  %3 = load i32, ptr %et, align 4, !dbg !735
  %cmp = icmp eq i32 %3, 2, !dbg !737
  br i1 %cmp, label %if.then, label %if.end, !dbg !738

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !739
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11, !dbg !739

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !740
  br label %for.cond, !dbg !741

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !742
  %5 = load i32, ptr %cfg_tbl_len.addr, align 4, !dbg !743
  %cmp1 = icmp ult i32 %4, %5, !dbg !744
  br i1 %cmp1, label %for.body, label %for.end, !dbg !745

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vendor_tbl_pa) #6, !dbg !746
  call void @llvm.dbg.declare(metadata ptr %vendor_tbl_pa, metadata !718, metadata !DIExpression()), !dbg !747
  call void @llvm.lifetime.start.p0(i64 16, ptr %vendor_tbl_guid) #6, !dbg !748
  call void @llvm.dbg.declare(metadata ptr %vendor_tbl_guid, metadata !722, metadata !DIExpression()), !dbg !749
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !750
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !723, metadata !DIExpression()), !dbg !751
  %6 = load i64, ptr %cfg_tbl_pa.addr, align 8, !dbg !752
  %7 = inttoptr i64 %6 to ptr, !dbg !753
  %8 = load i32, ptr %i, align 4, !dbg !754
  %9 = load i32, ptr %et, align 4, !dbg !755
  %call2 = call i32 @get_vendor_table(ptr noundef %7, i32 noundef %8, ptr noundef %vendor_tbl_pa, ptr noundef %vendor_tbl_guid, i32 noundef %9) #7, !dbg !756
  store i32 %call2, ptr %ret, align 4, !dbg !757
  %10 = load i32, ptr %ret, align 4, !dbg !758
  %tobool = icmp ne i32 %10, 0, !dbg !758
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !760

if.then3:                                         ; preds = %for.body
  store i64 0, ptr %retval, align 8, !dbg !761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !761

if.end4:                                          ; preds = %for.body
  %11 = getelementptr inbounds { i64, i64 }, ptr %guid, i32 0, i32 0, !dbg !762
  %12 = load i64, ptr %11, align 4, !dbg !762
  %13 = getelementptr inbounds { i64, i64 }, ptr %guid, i32 0, i32 1, !dbg !762
  %14 = load i64, ptr %13, align 4, !dbg !762
  %15 = getelementptr inbounds { i64, i64 }, ptr %vendor_tbl_guid, i32 0, i32 0, !dbg !762
  %16 = load i64, ptr %15, align 4, !dbg !762
  %17 = getelementptr inbounds { i64, i64 }, ptr %vendor_tbl_guid, i32 0, i32 1, !dbg !762
  %18 = load i64, ptr %17, align 4, !dbg !762
  %call5 = call i32 @efi_guidcmp(i64 %12, i64 %14, i64 %16, i64 %18) #7, !dbg !762
  %tobool6 = icmp ne i32 %call5, 0, !dbg !762
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !764

if.then7:                                         ; preds = %if.end4
  %19 = load i64, ptr %vendor_tbl_pa, align 8, !dbg !765
  store i64 %19, ptr %retval, align 8, !dbg !766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !766

if.end8:                                          ; preds = %if.end4
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !767
  br label %cleanup, !dbg !767

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !767
  call void @llvm.lifetime.end.p0(i64 16, ptr %vendor_tbl_guid) #6, !dbg !767
  call void @llvm.lifetime.end.p0(i64 8, ptr %vendor_tbl_pa) #6, !dbg !767
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup11 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !768

for.inc:                                          ; preds = %cleanup.cont
  %20 = load i32, ptr %i, align 4, !dbg !769
  %inc = add i32 %20, 1, !dbg !769
  store i32 %inc, ptr %i, align 4, !dbg !769
  br label %for.cond, !dbg !770, !llvm.loop !771

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %retval, align 8, !dbg !773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11, !dbg !773

cleanup11:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !774
  call void @llvm.lifetime.end.p0(i64 4, ptr %et) #6, !dbg !774
  %21 = load i64, ptr %retval, align 8, !dbg !774
  ret i64 %21, !dbg !774
}

; Function Attrs: noredzone nounwind
define internal i32 @get_vendor_table(ptr noundef %cfg_tbl, i32 noundef %idx, ptr noundef %vendor_tbl_pa, ptr noundef %vendor_tbl_guid, i32 noundef %et) #0 !dbg !775 {
entry:
  %retval = alloca i32, align 4
  %cfg_tbl.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %vendor_tbl_pa.addr = alloca ptr, align 8
  %vendor_tbl_guid.addr = alloca ptr, align 8
  %et.addr = alloca i32, align 4
  %tbl_entry = alloca ptr, align 8
  %tbl_entry3 = alloca ptr, align 8
  store ptr %cfg_tbl, ptr %cfg_tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cfg_tbl.addr, metadata !780, metadata !DIExpression()), !dbg !791
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !781, metadata !DIExpression()), !dbg !792
  store ptr %vendor_tbl_pa, ptr %vendor_tbl_pa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vendor_tbl_pa.addr, metadata !782, metadata !DIExpression()), !dbg !793
  store ptr %vendor_tbl_guid, ptr %vendor_tbl_guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vendor_tbl_guid.addr, metadata !783, metadata !DIExpression()), !dbg !794
  store i32 %et, ptr %et.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %et.addr, metadata !784, metadata !DIExpression()), !dbg !795
  %0 = load i32, ptr %et.addr, align 4, !dbg !796
  %cmp = icmp eq i32 %0, 0, !dbg !797
  br i1 %cmp, label %if.then, label %if.else, !dbg !798

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl_entry) #6, !dbg !799
  call void @llvm.dbg.declare(metadata ptr %tbl_entry, metadata !785, metadata !DIExpression()), !dbg !800
  %1 = load ptr, ptr %cfg_tbl.addr, align 8, !dbg !801
  %2 = load i32, ptr %idx.addr, align 4, !dbg !802
  %idx.ext = zext i32 %2 to i64, !dbg !803
  %add.ptr = getelementptr inbounds %struct.efi_config_table_64_t, ptr %1, i64 %idx.ext, !dbg !803
  store ptr %add.ptr, ptr %tbl_entry, align 8, !dbg !800
  %3 = load ptr, ptr %tbl_entry, align 8, !dbg !804
  %table = getelementptr inbounds %struct.efi_config_table_64_t, ptr %3, i32 0, i32 1, !dbg !805
  %4 = load i64, ptr %table, align 8, !dbg !805
  %5 = load ptr, ptr %vendor_tbl_pa.addr, align 8, !dbg !806
  store i64 %4, ptr %5, align 8, !dbg !807
  %6 = load ptr, ptr %vendor_tbl_guid.addr, align 8, !dbg !808
  %7 = load ptr, ptr %tbl_entry, align 8, !dbg !809
  %guid = getelementptr inbounds %struct.efi_config_table_64_t, ptr %7, i32 0, i32 0, !dbg !810
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 8 %guid, i64 16, i1 false), !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl_entry) #6, !dbg !811
  br label %if.end9, !dbg !812

if.else:                                          ; preds = %entry
  %8 = load i32, ptr %et.addr, align 4, !dbg !813
  %cmp1 = icmp eq i32 %8, 1, !dbg !814
  br i1 %cmp1, label %if.then2, label %if.else8, !dbg !815

if.then2:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl_entry3) #6, !dbg !816
  call void @llvm.dbg.declare(metadata ptr %tbl_entry3, metadata !788, metadata !DIExpression()), !dbg !817
  %9 = load ptr, ptr %cfg_tbl.addr, align 8, !dbg !818
  %10 = load i32, ptr %idx.addr, align 4, !dbg !819
  %idx.ext4 = zext i32 %10 to i64, !dbg !820
  %add.ptr5 = getelementptr inbounds %struct.efi_config_table_32_t, ptr %9, i64 %idx.ext4, !dbg !820
  store ptr %add.ptr5, ptr %tbl_entry3, align 8, !dbg !817
  %11 = load ptr, ptr %tbl_entry3, align 8, !dbg !821
  %table6 = getelementptr inbounds %struct.efi_config_table_32_t, ptr %11, i32 0, i32 1, !dbg !822
  %12 = load i32, ptr %table6, align 4, !dbg !822
  %conv = zext i32 %12 to i64, !dbg !821
  %13 = load ptr, ptr %vendor_tbl_pa.addr, align 8, !dbg !823
  store i64 %conv, ptr %13, align 8, !dbg !824
  %14 = load ptr, ptr %vendor_tbl_guid.addr, align 8, !dbg !825
  %15 = load ptr, ptr %tbl_entry3, align 8, !dbg !826
  %guid7 = getelementptr inbounds %struct.efi_config_table_32_t, ptr %15, i32 0, i32 0, !dbg !827
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %guid7, i64 16, i1 false), !dbg !827
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl_entry3) #6, !dbg !828
  br label %if.end, !dbg !829

if.else8:                                         ; preds = %if.else
  store i32 -22, ptr %retval, align 4, !dbg !830
  br label %return, !dbg !830

if.end:                                           ; preds = %if.then2
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  store i32 0, ptr %retval, align 4, !dbg !832
  br label %return, !dbg !832

return:                                           ; preds = %if.end9, %if.else8
  %16 = load i32, ptr %retval, align 4, !dbg !833
  ret i32 %16, !dbg !833
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @efi_guidcmp(i64 %left.coerce0, i64 %left.coerce1, i64 %right.coerce0, i64 %right.coerce1) #4 !dbg !834 {
entry:
  %left = alloca %struct.guid_t, align 4
  %right = alloca %struct.guid_t, align 4
  %0 = getelementptr inbounds { i64, i64 }, ptr %left, i32 0, i32 0
  store i64 %left.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds { i64, i64 }, ptr %left, i32 0, i32 1
  store i64 %left.coerce1, ptr %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, ptr %right, i32 0, i32 0
  store i64 %right.coerce0, ptr %2, align 4
  %3 = getelementptr inbounds { i64, i64 }, ptr %right, i32 0, i32 1
  store i64 %right.coerce1, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !838, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.declare(metadata ptr %right, metadata !839, metadata !DIExpression()), !dbg !841
  %call = call i32 @memcmp(ptr noundef %left, ptr noundef %right, i64 noundef 16) #7, !dbg !842
  ret i32 %call, !dbg !843
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone
declare !dbg !844 hidden i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/boot/compressed/efi.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7511f453bb9518f90df2b252af6c2601")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 30)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 28)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 58)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/compressed/.efi.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m64 -O1 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -std=gnu11 -fno-strict-aliasing -fPIE -Wundef -D DISABLE_BRANCH_PROFILING -mcmodel=small -mno-red-zone -mno-mmx -mno-sse -ffreestanding -fshort-wchar -fno-stack-protector -Wno-address-of-packed-member -Wno-gnu -Wno-pointer-sign -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D __DISABLE_EXPORTS -Wa,-mrelax-relocations=no -include ./include/linux/hidden.h -D KBUILD_MODFILE=\22arch/x86/boot/compressed/efi\22 -D KBUILD_BASENAME=\22efi\22 -D KBUILD_MODNAME=\22efi\22 -D __KBUILD_MODNAME=kmod_efi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/compressed/efi.ll arch/x86/boot/compressed/efi.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !33, globals: !133, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "efi_type", file: !27, line: 205, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "arch/x86/boot/compressed/misc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31b219c11b56e2bcf8daba9cc959bca7")
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30, !31, !32}
!30 = !DIEnumerator(name: "EFI_TYPE_64", value: 0)
!31 = !DIEnumerator(name: "EFI_TYPE_32", value: 1)
!32 = !DIEnumerator(name: "EFI_TYPE_NONE", value: 2)
!33 = !{!34, !35, !38, !70, !87, !88, !101, !112, !127}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !36, line: 31, baseType: !37)
!36 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!37 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_system_table_64_t", file: !40, line: 82, baseType: !41)
!40 = !DIFile(filename: "arch/x86/boot/compressed/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fce95a19879dc454423d87814ff243aa")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 66, size: 960, elements: !42)
!42 = !{!43, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !41, file: !40, line: 67, baseType: !44, size: 192)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_table_hdr_t", file: !40, line: 33, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 27, size: 192, elements: !46)
!46 = !{!47, !50, !53, !54, !55}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !45, file: !40, line: 28, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !49, line: 23, baseType: !35)
!49 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!50 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !45, file: !40, line: 29, baseType: !51, size: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !49, line: 21, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !36, line: 27, baseType: !28)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !45, file: !40, line: 30, baseType: !51, size: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !45, file: !40, line: 31, baseType: !51, size: 32, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !45, file: !40, line: 32, baseType: !51, size: 32, offset: 160)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "fw_vendor", scope: !41, file: !40, line: 68, baseType: !48, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "fw_revision", scope: !41, file: !40, line: 69, baseType: !51, size: 32, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !41, file: !40, line: 70, baseType: !51, size: 32, offset: 288)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "con_in_handle", scope: !41, file: !40, line: 71, baseType: !48, size: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "con_in", scope: !41, file: !40, line: 72, baseType: !48, size: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "con_out_handle", scope: !41, file: !40, line: 73, baseType: !48, size: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "con_out", scope: !41, file: !40, line: 74, baseType: !48, size: 64, offset: 512)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "stderr_handle", scope: !41, file: !40, line: 75, baseType: !48, size: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "stderr", scope: !41, file: !40, line: 76, baseType: !48, size: 64, offset: 640)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !41, file: !40, line: 77, baseType: !48, size: 64, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "boottime", scope: !41, file: !40, line: 78, baseType: !48, size: 64, offset: 768)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tables", scope: !41, file: !40, line: 79, baseType: !51, size: 32, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !41, file: !40, line: 80, baseType: !51, size: 32, offset: 864)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "tables", scope: !41, file: !40, line: 81, baseType: !48, size: 64, offset: 896)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_system_table_32_t", file: !40, line: 98, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 84, size: 576, elements: !73)
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !72, file: !40, line: 85, baseType: !44, size: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "fw_vendor", scope: !72, file: !40, line: 86, baseType: !51, size: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "fw_revision", scope: !72, file: !40, line: 87, baseType: !51, size: 32, offset: 224)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "con_in_handle", scope: !72, file: !40, line: 88, baseType: !51, size: 32, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "con_in", scope: !72, file: !40, line: 89, baseType: !51, size: 32, offset: 288)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "con_out_handle", scope: !72, file: !40, line: 90, baseType: !51, size: 32, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "con_out", scope: !72, file: !40, line: 91, baseType: !51, size: 32, offset: 352)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "stderr_handle", scope: !72, file: !40, line: 92, baseType: !51, size: 32, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "stderr", scope: !72, file: !40, line: 93, baseType: !51, size: 32, offset: 416)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !72, file: !40, line: 94, baseType: !51, size: 32, offset: 448)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "boottime", scope: !72, file: !40, line: 95, baseType: !51, size: 32, offset: 480)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tables", scope: !72, file: !40, line: 96, baseType: !51, size: 32, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "tables", scope: !72, file: !40, line: 97, baseType: !51, size: 32, offset: 544)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_data", file: !90, line: 53, size: 128, elements: !91)
!90 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!91 = !{!92, !93, !94, !95}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !90, line: 54, baseType: !35, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !90, line: 55, baseType: !52, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !89, file: !90, line: 56, baseType: !52, size: 32, offset: 96)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !89, file: !90, line: 57, baseType: !96, offset: 128)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, elements: !99)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !36, line: 21, baseType: !98)
!98 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!99 = !{!100}
!100 = !DISubrange(count: -1)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_setup_data", file: !40, line: 101, size: 768, elements: !103)
!103 = !{!104, !105, !106, !107, !108}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "fw_vendor", scope: !102, file: !40, line: 102, baseType: !48, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !102, file: !40, line: 103, baseType: !48, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tables", scope: !102, file: !40, line: 104, baseType: !48, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "smbios", scope: !102, file: !40, line: 105, baseType: !48, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !102, file: !40, line: 106, baseType: !109, size: 512, offset: 256)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 512, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 8)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_config_table_64_t", file: !40, line: 59, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 56, size: 192, elements: !115)
!115 = !{!116, !126}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !114, file: !40, line: 57, baseType: !117, size: 128, align: 32)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !40, line: 9, baseType: !118, align: 32)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !119, line: 17, baseType: !120)
!119 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 15, size: 128, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !120, file: !119, line: 16, baseType: !123, size: 128)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 16)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !114, file: !40, line: 58, baseType: !48, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_config_table_32_t", file: !40, line: 64, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 61, size: 160, elements: !130)
!130 = !{!131, !132}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !129, file: !40, line: 62, baseType: !117, size: 128, align: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !129, file: !40, line: 63, baseType: !51, size: 32, offset: 128)
!133 = !{!0, !7, !9, !14, !19}
!134 = !{i32 7, !"Dwarf Version", i32 5}
!135 = !{i32 2, !"Debug Info Version", i32 3}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 8, !"PIC Level", i32 2}
!138 = !{i32 7, !"PIE Level", i32 2}
!139 = !{i32 1, !"Code Model", i32 1}
!140 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!141 = distinct !DISubprogram(name: "efi_get_type", scope: !2, file: !2, line: 17, type: !142, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !472)
!142 = !DISubroutineType(types: !143)
!143 = !{!26, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_params", file: !90, line: 186, size: 32768, elements: !146)
!146 = !{!147, !192, !205, !209, !210, !218, !219, !221, !222, !223, !231, !238, !239, !240, !241, !245, !246, !254, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !278, !320, !324, !326, !333, !337, !468}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "screen_info", scope: !145, file: !90, line: 187, baseType: !148, size: 512)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "screen_info", file: !149, line: 11, size: 512, elements: !150)
!149 = !DIFile(filename: "./include/uapi/linux/screen_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "395c08eb846a258de3277732fcbc2819")
!150 = !{!151, !152, !153, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "orig_x", scope: !148, file: !149, line: 12, baseType: !97, size: 8)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "orig_y", scope: !148, file: !149, line: 13, baseType: !97, size: 8, offset: 8)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ext_mem_k", scope: !148, file: !149, line: 14, baseType: !154, size: 16, offset: 16)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !36, line: 24, baseType: !155)
!155 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_page", scope: !148, file: !149, line: 15, baseType: !154, size: 16, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_mode", scope: !148, file: !149, line: 16, baseType: !97, size: 8, offset: 48)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_cols", scope: !148, file: !149, line: 17, baseType: !97, size: 8, offset: 56)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !148, file: !149, line: 18, baseType: !97, size: 8, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !148, file: !149, line: 19, baseType: !97, size: 8, offset: 72)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_ega_bx", scope: !148, file: !149, line: 20, baseType: !154, size: 16, offset: 80)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "unused3", scope: !148, file: !149, line: 21, baseType: !154, size: 16, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_lines", scope: !148, file: !149, line: 22, baseType: !97, size: 8, offset: 112)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_isVGA", scope: !148, file: !149, line: 23, baseType: !97, size: 8, offset: 120)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_points", scope: !148, file: !149, line: 24, baseType: !154, size: 16, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_width", scope: !148, file: !149, line: 27, baseType: !154, size: 16, offset: 144)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_height", scope: !148, file: !149, line: 28, baseType: !154, size: 16, offset: 160)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_depth", scope: !148, file: !149, line: 29, baseType: !154, size: 16, offset: 176)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_base", scope: !148, file: !149, line: 30, baseType: !52, size: 32, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_size", scope: !148, file: !149, line: 31, baseType: !52, size: 32, offset: 224)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "cl_magic", scope: !148, file: !149, line: 32, baseType: !154, size: 16, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "cl_offset", scope: !148, file: !149, line: 32, baseType: !154, size: 16, offset: 272)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_linelength", scope: !148, file: !149, line: 33, baseType: !154, size: 16, offset: 288)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "red_size", scope: !148, file: !149, line: 34, baseType: !97, size: 8, offset: 304)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "red_pos", scope: !148, file: !149, line: 35, baseType: !97, size: 8, offset: 312)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "green_size", scope: !148, file: !149, line: 36, baseType: !97, size: 8, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "green_pos", scope: !148, file: !149, line: 37, baseType: !97, size: 8, offset: 328)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "blue_size", scope: !148, file: !149, line: 38, baseType: !97, size: 8, offset: 336)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "blue_pos", scope: !148, file: !149, line: 39, baseType: !97, size: 8, offset: 344)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_size", scope: !148, file: !149, line: 40, baseType: !97, size: 8, offset: 352)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_pos", scope: !148, file: !149, line: 41, baseType: !97, size: 8, offset: 360)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_seg", scope: !148, file: !149, line: 42, baseType: !154, size: 16, offset: 368)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_off", scope: !148, file: !149, line: 43, baseType: !154, size: 16, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !148, file: !149, line: 44, baseType: !154, size: 16, offset: 400)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "vesa_attributes", scope: !148, file: !149, line: 45, baseType: !154, size: 16, offset: 416)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !148, file: !149, line: 46, baseType: !52, size: 32, offset: 432)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ext_lfb_base", scope: !148, file: !149, line: 47, baseType: !52, size: 32, offset: 464)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved", scope: !148, file: !149, line: 48, baseType: !189, size: 16, offset: 496)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 16, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 2)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "apm_bios_info", scope: !145, file: !90, line: 188, baseType: !193, size: 160, offset: 512)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apm_bios_info", file: !194, line: 25, size: 160, elements: !195)
!194 = !DIFile(filename: "./include/uapi/linux/apm_bios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a2faf7b1bd7c92e79370dc4887ba91d3")
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !193, file: !194, line: 26, baseType: !154, size: 16)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "cseg", scope: !193, file: !194, line: 27, baseType: !154, size: 16, offset: 16)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !193, file: !194, line: 28, baseType: !52, size: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16", scope: !193, file: !194, line: 29, baseType: !154, size: 16, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "dseg", scope: !193, file: !194, line: 30, baseType: !154, size: 16, offset: 80)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !194, line: 31, baseType: !154, size: 16, offset: 96)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_len", scope: !193, file: !194, line: 32, baseType: !154, size: 16, offset: 112)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16_len", scope: !193, file: !194, line: 33, baseType: !154, size: 16, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "dseg_len", scope: !193, file: !194, line: 34, baseType: !154, size: 16, offset: 144)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2", scope: !145, file: !90, line: 189, baseType: !206, size: 32, offset: 672)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 32, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 4)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "tboot_addr", scope: !145, file: !90, line: 190, baseType: !35, size: 64, offset: 704)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ist_info", scope: !145, file: !90, line: 191, baseType: !211, size: 128, offset: 768)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ist_info", file: !212, line: 23, size: 128, elements: !213)
!212 = !DIFile(filename: "./arch/x86/include/uapi/asm/ist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3966eee4102636d4a6a170719935cbb6")
!213 = !{!214, !215, !216, !217}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !211, file: !212, line: 24, baseType: !52, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !211, file: !212, line: 25, baseType: !52, size: 32, offset: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !211, file: !212, line: 26, baseType: !52, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "perf_level", scope: !211, file: !212, line: 27, baseType: !52, size: 32, offset: 96)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_rsdp_addr", scope: !145, file: !90, line: 192, baseType: !35, size: 64, offset: 896)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_pad3", scope: !145, file: !90, line: 193, baseType: !220, size: 64, offset: 960)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !110)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "hd0_info", scope: !145, file: !90, line: 194, baseType: !123, size: 128, offset: 1024)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "hd1_info", scope: !145, file: !90, line: 195, baseType: !123, size: 128, offset: 1152)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "sys_desc_table", scope: !145, file: !90, line: 196, baseType: !224, size: 128, offset: 1280)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_desc_table", file: !90, line: 110, size: 128, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !224, file: !90, line: 111, baseType: !154, size: 16)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !224, file: !90, line: 112, baseType: !228, size: 112, offset: 16)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 112, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 14)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "olpc_ofw_header", scope: !145, file: !90, line: 197, baseType: !232, size: 128, offset: 1408)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "olpc_ofw_header", file: !90, line: 116, size: 128, elements: !233)
!233 = !{!234, !235, !236, !237}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_magic", scope: !232, file: !90, line: 117, baseType: !52, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_version", scope: !232, file: !90, line: 118, baseType: !52, size: 32, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "cif_handler", scope: !232, file: !90, line: 119, baseType: !52, size: 32, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "irq_desc_table", scope: !232, file: !90, line: 120, baseType: !52, size: 32, offset: 96)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_image", scope: !145, file: !90, line: 198, baseType: !52, size: 32, offset: 1536)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_size", scope: !145, file: !90, line: 199, baseType: !52, size: 32, offset: 1568)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cmd_line_ptr", scope: !145, file: !90, line: 200, baseType: !52, size: 32, offset: 1600)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_pad4", scope: !145, file: !90, line: 201, baseType: !242, size: 896, offset: 1632)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 896, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 112)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "cc_blob_address", scope: !145, file: !90, line: 202, baseType: !52, size: 32, offset: 2528)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "edid_info", scope: !145, file: !90, line: 203, baseType: !247, size: 1024, offset: 2560)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edid_info", file: !248, line: 5, size: 1024, elements: !249)
!248 = !DIFile(filename: "./include/uapi/video/edid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a36c5e7269b764712ba1a5dc2e5eb27d")
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !247, file: !248, line: 6, baseType: !251, size: 1024)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1024, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "efi_info", scope: !145, file: !90, line: 204, baseType: !255, size: 256, offset: 3584)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_info", file: !90, line: 123, size: 256, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "efi_loader_signature", scope: !255, file: !90, line: 124, baseType: !52, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab", scope: !255, file: !90, line: 125, baseType: !52, size: 32, offset: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_size", scope: !255, file: !90, line: 126, baseType: !52, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_version", scope: !255, file: !90, line: 127, baseType: !52, size: 32, offset: 96)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap", scope: !255, file: !90, line: 128, baseType: !52, size: 32, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_size", scope: !255, file: !90, line: 129, baseType: !52, size: 32, offset: 160)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab_hi", scope: !255, file: !90, line: 130, baseType: !52, size: 32, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_hi", scope: !255, file: !90, line: 131, baseType: !52, size: 32, offset: 224)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "alt_mem_k", scope: !145, file: !90, line: 205, baseType: !52, size: 32, offset: 3840)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !145, file: !90, line: 206, baseType: !52, size: 32, offset: 3872)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "e820_entries", scope: !145, file: !90, line: 207, baseType: !97, size: 8, offset: 3904)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf_entries", scope: !145, file: !90, line: 208, baseType: !97, size: 8, offset: 3912)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buf_entries", scope: !145, file: !90, line: 209, baseType: !97, size: 8, offset: 3920)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "kbd_status", scope: !145, file: !90, line: 210, baseType: !97, size: 8, offset: 3928)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "secure_boot", scope: !145, file: !90, line: 211, baseType: !97, size: 8, offset: 3936)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_pad5", scope: !145, file: !90, line: 212, baseType: !189, size: 16, offset: 3944)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !145, file: !90, line: 224, baseType: !97, size: 8, offset: 3960)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_pad6", scope: !145, file: !90, line: 225, baseType: !275, size: 8, offset: 3968)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 8, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 1)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !145, file: !90, line: 226, baseType: !279, size: 984, offset: 3976)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_header", file: !90, line: 68, size: 984, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "setup_sects", scope: !279, file: !90, line: 69, baseType: !97, size: 8)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "root_flags", scope: !279, file: !90, line: 70, baseType: !154, size: 16, offset: 8)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "syssize", scope: !279, file: !90, line: 71, baseType: !52, size: 32, offset: 24)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ram_size", scope: !279, file: !90, line: 72, baseType: !154, size: 16, offset: 56)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "vid_mode", scope: !279, file: !90, line: 73, baseType: !154, size: 16, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "root_dev", scope: !279, file: !90, line: 74, baseType: !154, size: 16, offset: 88)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "boot_flag", scope: !279, file: !90, line: 75, baseType: !154, size: 16, offset: 104)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !279, file: !90, line: 76, baseType: !154, size: 16, offset: 120)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !279, file: !90, line: 77, baseType: !52, size: 32, offset: 136)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !279, file: !90, line: 78, baseType: !154, size: 16, offset: 168)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "realmode_swtch", scope: !279, file: !90, line: 79, baseType: !52, size: 32, offset: 184)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "start_sys_seg", scope: !279, file: !90, line: 80, baseType: !154, size: 16, offset: 216)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_version", scope: !279, file: !90, line: 81, baseType: !154, size: 16, offset: 232)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type_of_loader", scope: !279, file: !90, line: 82, baseType: !97, size: 8, offset: 248)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "loadflags", scope: !279, file: !90, line: 83, baseType: !97, size: 8, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "setup_move_size", scope: !279, file: !90, line: 84, baseType: !154, size: 16, offset: 264)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "code32_start", scope: !279, file: !90, line: 85, baseType: !52, size: 32, offset: 280)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_image", scope: !279, file: !90, line: 86, baseType: !52, size: 32, offset: 312)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_size", scope: !279, file: !90, line: 87, baseType: !52, size: 32, offset: 344)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "bootsect_kludge", scope: !279, file: !90, line: 88, baseType: !52, size: 32, offset: 376)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "heap_end_ptr", scope: !279, file: !90, line: 89, baseType: !154, size: 16, offset: 408)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_ver", scope: !279, file: !90, line: 90, baseType: !97, size: 8, offset: 424)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_type", scope: !279, file: !90, line: 91, baseType: !97, size: 8, offset: 432)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_line_ptr", scope: !279, file: !90, line: 92, baseType: !52, size: 32, offset: 440)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "initrd_addr_max", scope: !279, file: !90, line: 93, baseType: !52, size: 32, offset: 472)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_alignment", scope: !279, file: !90, line: 94, baseType: !52, size: 32, offset: 504)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "relocatable_kernel", scope: !279, file: !90, line: 95, baseType: !97, size: 8, offset: 536)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "min_alignment", scope: !279, file: !90, line: 96, baseType: !97, size: 8, offset: 544)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "xloadflags", scope: !279, file: !90, line: 97, baseType: !154, size: 16, offset: 552)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_size", scope: !279, file: !90, line: 98, baseType: !52, size: 32, offset: 568)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch", scope: !279, file: !90, line: 99, baseType: !52, size: 32, offset: 600)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch_data", scope: !279, file: !90, line: 100, baseType: !35, size: 64, offset: 632)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "payload_offset", scope: !279, file: !90, line: 101, baseType: !52, size: 32, offset: 696)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "payload_length", scope: !279, file: !90, line: 102, baseType: !52, size: 32, offset: 728)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "setup_data", scope: !279, file: !90, line: 103, baseType: !35, size: 64, offset: 760)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pref_address", scope: !279, file: !90, line: 104, baseType: !35, size: 64, offset: 824)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "init_size", scope: !279, file: !90, line: 105, baseType: !52, size: 32, offset: 888)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "handover_offset", scope: !279, file: !90, line: 106, baseType: !52, size: 32, offset: 920)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_info_offset", scope: !279, file: !90, line: 107, baseType: !52, size: 32, offset: 952)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_pad7", scope: !145, file: !90, line: 227, baseType: !321, size: 288, offset: 4960)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 288, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 36)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buffer", scope: !145, file: !90, line: 228, baseType: !325, size: 512, offset: 5248)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 512, elements: !124)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "e820_table", scope: !145, file: !90, line: 229, baseType: !327, size: 20480, offset: 5760)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 20480, elements: !252)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_e820_entry", file: !90, line: 143, size: 160, elements: !329)
!329 = !{!330, !331, !332}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !328, file: !90, line: 144, baseType: !35, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !328, file: !90, line: 145, baseType: !35, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !328, file: !90, line: 146, baseType: !52, size: 32, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_pad8", scope: !145, file: !90, line: 230, baseType: !334, size: 384, offset: 26240)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 384, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 48)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf", scope: !145, file: !90, line: 231, baseType: !338, size: 3936, offset: 26624)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 3936, elements: !466)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_info", file: !340, line: 173, size: 656, elements: !341)
!340 = !DIFile(filename: "./include/uapi/linux/edd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6546916b3caeeabef2983c5e06678df")
!341 = !{!342, !343, !344, !345, !346, !347, !348}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !339, file: !340, line: 174, baseType: !97, size: 8)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !339, file: !340, line: 175, baseType: !97, size: 8, offset: 8)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "interface_support", scope: !339, file: !340, line: 176, baseType: !154, size: 16, offset: 16)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_cylinder", scope: !339, file: !340, line: 177, baseType: !154, size: 16, offset: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_head", scope: !339, file: !340, line: 178, baseType: !97, size: 8, offset: 48)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_sectors_per_track", scope: !339, file: !340, line: 179, baseType: !97, size: 8, offset: 56)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !339, file: !340, line: 180, baseType: !349, size: 592, offset: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_device_params", file: !340, line: 72, size: 592, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !398, !464, !465}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !349, file: !340, line: 73, baseType: !154, size: 16)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !349, file: !340, line: 74, baseType: !154, size: 16, offset: 16)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_cylinders", scope: !349, file: !340, line: 75, baseType: !52, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_heads", scope: !349, file: !340, line: 76, baseType: !52, size: 32, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "sectors_per_track", scope: !349, file: !340, line: 77, baseType: !52, size: 32, offset: 96)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_sectors", scope: !349, file: !340, line: 78, baseType: !35, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_per_sector", scope: !349, file: !340, line: 79, baseType: !154, size: 16, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "dpte_ptr", scope: !349, file: !340, line: 80, baseType: !52, size: 32, offset: 208)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !349, file: !340, line: 81, baseType: !154, size: 16, offset: 240)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "device_path_info_length", scope: !349, file: !340, line: 82, baseType: !97, size: 8, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !349, file: !340, line: 83, baseType: !97, size: 8, offset: 264)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !349, file: !340, line: 84, baseType: !154, size: 16, offset: 272)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "host_bus_type", scope: !349, file: !340, line: 85, baseType: !206, size: 32, offset: 288)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "interface_type", scope: !349, file: !340, line: 86, baseType: !220, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "interface_path", scope: !349, file: !340, line: 113, baseType: !366, size: 64, offset: 384)
!366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !340, line: 87, size: 64, elements: !367)
!367 = !{!368, !374, !382, !386, !390, !394}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !366, file: !340, line: 92, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !340, line: 88, size: 64, elements: !370)
!370 = !{!371, !372, !373}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !369, file: !340, line: 89, baseType: !154, size: 16)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !369, file: !340, line: 90, baseType: !154, size: 16, offset: 16)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !369, file: !340, line: 91, baseType: !52, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !366, file: !340, line: 99, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !340, line: 93, size: 64, elements: !376)
!376 = !{!377, !378, !379, !380, !381}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !375, file: !340, line: 94, baseType: !97, size: 8)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !375, file: !340, line: 95, baseType: !97, size: 8, offset: 8)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !375, file: !340, line: 96, baseType: !97, size: 8, offset: 16)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !375, file: !340, line: 97, baseType: !97, size: 8, offset: 24)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !375, file: !340, line: 98, baseType: !52, size: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ibnd", scope: !366, file: !340, line: 103, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !340, line: 101, size: 64, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !383, file: !340, line: 102, baseType: !35, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "xprs", scope: !366, file: !340, line: 106, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !340, line: 104, size: 64, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !387, file: !340, line: 105, baseType: !35, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "htpt", scope: !366, file: !340, line: 109, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !340, line: 107, size: 64, elements: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !391, file: !340, line: 108, baseType: !35, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !366, file: !340, line: 112, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !340, line: 110, size: 64, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !395, file: !340, line: 111, baseType: !35, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "device_path", scope: !349, file: !340, line: 168, baseType: !399, size: 128, offset: 448)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !340, line: 114, size: 128, elements: !400)
!400 = !{!401, !409, !418, !425, !430, !435, !440, !445, !451, !459}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ata", scope: !399, file: !340, line: 121, baseType: !402, size: 128)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !340, line: 115, size: 128, elements: !403)
!403 = !{!404, !405, !406, !407, !408}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !402, file: !340, line: 116, baseType: !97, size: 8)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !402, file: !340, line: 117, baseType: !97, size: 8, offset: 8)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !402, file: !340, line: 118, baseType: !154, size: 16, offset: 16)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !402, file: !340, line: 119, baseType: !52, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !402, file: !340, line: 120, baseType: !35, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "atapi", scope: !399, file: !340, line: 129, baseType: !410, size: 128)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !340, line: 122, size: 128, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !410, file: !340, line: 123, baseType: !97, size: 8)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !410, file: !340, line: 124, baseType: !97, size: 8, offset: 8)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !410, file: !340, line: 125, baseType: !97, size: 8, offset: 16)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !410, file: !340, line: 126, baseType: !97, size: 8, offset: 24)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !410, file: !340, line: 127, baseType: !52, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !410, file: !340, line: 128, baseType: !35, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "scsi", scope: !399, file: !340, line: 135, baseType: !419, size: 128)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !340, line: 130, size: 128, elements: !420)
!420 = !{!421, !422, !423, !424}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !419, file: !340, line: 131, baseType: !154, size: 16)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !419, file: !340, line: 132, baseType: !35, size: 64, offset: 16)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !419, file: !340, line: 133, baseType: !154, size: 16, offset: 80)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !419, file: !340, line: 134, baseType: !52, size: 32, offset: 96)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "usb", scope: !399, file: !340, line: 139, baseType: !426, size: 128)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !340, line: 136, size: 128, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "serial_number", scope: !426, file: !340, line: 137, baseType: !35, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !426, file: !340, line: 138, baseType: !35, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i1394", scope: !399, file: !340, line: 143, baseType: !431, size: 128)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !340, line: 140, size: 128, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "eui", scope: !431, file: !340, line: 141, baseType: !35, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !431, file: !340, line: 142, baseType: !35, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "fibre", scope: !399, file: !340, line: 147, baseType: !436, size: 128)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !340, line: 144, size: 128, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "wwid", scope: !436, file: !340, line: 145, baseType: !35, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !436, file: !340, line: 146, baseType: !35, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i2o", scope: !399, file: !340, line: 151, baseType: !441, size: 128)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !340, line: 148, size: 128, elements: !442)
!442 = !{!443, !444}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "identity_tag", scope: !441, file: !340, line: 149, baseType: !35, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !441, file: !340, line: 150, baseType: !35, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "raid", scope: !399, file: !340, line: 156, baseType: !446, size: 128)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !340, line: 152, size: 128, elements: !447)
!447 = !{!448, !449, !450}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "array_number", scope: !446, file: !340, line: 153, baseType: !52, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !446, file: !340, line: 154, baseType: !52, size: 32, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !446, file: !340, line: 155, baseType: !35, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sata", scope: !399, file: !340, line: 163, baseType: !452, size: 128)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !340, line: 157, size: 128, elements: !453)
!453 = !{!454, !455, !456, !457, !458}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !452, file: !340, line: 158, baseType: !97, size: 8)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !452, file: !340, line: 159, baseType: !97, size: 8, offset: 8)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !452, file: !340, line: 160, baseType: !154, size: 16, offset: 16)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !452, file: !340, line: 161, baseType: !52, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !452, file: !340, line: 162, baseType: !35, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !399, file: !340, line: 167, baseType: !460, size: 128)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !340, line: 164, size: 128, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !460, file: !340, line: 165, baseType: !35, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !460, file: !340, line: 166, baseType: !35, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !349, file: !340, line: 169, baseType: !97, size: 8, offset: 576)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !349, file: !340, line: 170, baseType: !97, size: 8, offset: 584)
!466 = !{!467}
!467 = !DISubrange(count: 6)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_pad9", scope: !145, file: !90, line: 232, baseType: !469, size: 2208, offset: 30560)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 2208, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 276)
!472 = !{!473, !474, !476, !477}
!473 = !DILocalVariable(name: "bp", arg: 1, scope: !141, file: !2, line: 17, type: !144)
!474 = !DILocalVariable(name: "ei", scope: !141, file: !2, line: 19, type: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!476 = !DILocalVariable(name: "et", scope: !141, file: !2, line: 20, type: !26)
!477 = !DILocalVariable(name: "sig", scope: !141, file: !2, line: 21, type: !478)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!480 = !DILocation(line: 17, column: 48, scope: !141)
!481 = !DILocation(line: 19, column: 2, scope: !141)
!482 = !DILocation(line: 19, column: 19, scope: !141)
!483 = !DILocation(line: 20, column: 2, scope: !141)
!484 = !DILocation(line: 20, column: 16, scope: !141)
!485 = !DILocation(line: 21, column: 2, scope: !141)
!486 = !DILocation(line: 21, column: 14, scope: !141)
!487 = !DILocation(line: 23, column: 8, scope: !141)
!488 = !DILocation(line: 23, column: 12, scope: !141)
!489 = !DILocation(line: 23, column: 5, scope: !141)
!490 = !DILocation(line: 24, column: 17, scope: !141)
!491 = !DILocation(line: 24, column: 21, scope: !141)
!492 = !DILocation(line: 24, column: 6, scope: !141)
!493 = !DILocation(line: 26, column: 15, scope: !494)
!494 = distinct !DILexicalBlock(scope: !141, file: !2, line: 26, column: 6)
!495 = !DILocation(line: 26, column: 7, scope: !494)
!496 = !DILocation(line: 26, column: 6, scope: !141)
!497 = !DILocation(line: 27, column: 6, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !2, line: 26, column: 48)
!499 = !DILocation(line: 28, column: 2, scope: !498)
!500 = !DILocation(line: 28, column: 22, scope: !501)
!501 = distinct !DILexicalBlock(scope: !494, file: !2, line: 28, column: 13)
!502 = !DILocation(line: 28, column: 14, scope: !501)
!503 = !DILocation(line: 28, column: 13, scope: !494)
!504 = !DILocation(line: 29, column: 6, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !2, line: 28, column: 55)
!506 = !DILocation(line: 30, column: 2, scope: !505)
!507 = !DILocation(line: 31, column: 3, scope: !508)
!508 = distinct !DILexicalBlock(scope: !501, file: !2, line: 30, column: 9)
!509 = !DILocation(line: 32, column: 6, scope: !508)
!510 = !DILocation(line: 47, column: 9, scope: !141)
!511 = !DILocation(line: 48, column: 1, scope: !141)
!512 = !DILocation(line: 47, column: 2, scope: !141)
!513 = !DISubprogram(name: "strncmp", scope: !514, file: !514, line: 91, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!514 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!515 = !DISubroutineType(types: !516)
!516 = !{!517, !478, !478, !518}
!517 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !519, line: 72, baseType: !520)
!519 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !519, line: 16, baseType: !521)
!521 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!522 = !DISubprogram(name: "__putstr", scope: !27, file: !27, line: 64, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !478}
!525 = distinct !DISubprogram(name: "efi_get_system_table", scope: !2, file: !2, line: 58, type: !526, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{!521, !144}
!528 = !{!529, !530, !531, !532}
!529 = !DILocalVariable(name: "bp", arg: 1, scope: !525, file: !2, line: 58, type: !144)
!530 = !DILocalVariable(name: "sys_tbl_pa", scope: !525, file: !2, line: 60, type: !521)
!531 = !DILocalVariable(name: "ei", scope: !525, file: !2, line: 61, type: !475)
!532 = !DILocalVariable(name: "et", scope: !525, file: !2, line: 62, type: !26)
!533 = !DILocation(line: 58, column: 56, scope: !525)
!534 = !DILocation(line: 60, column: 2, scope: !525)
!535 = !DILocation(line: 60, column: 16, scope: !525)
!536 = !DILocation(line: 61, column: 2, scope: !525)
!537 = !DILocation(line: 61, column: 19, scope: !525)
!538 = !DILocation(line: 62, column: 2, scope: !525)
!539 = !DILocation(line: 62, column: 16, scope: !525)
!540 = !DILocation(line: 65, column: 8, scope: !525)
!541 = !DILocation(line: 65, column: 12, scope: !525)
!542 = !DILocation(line: 65, column: 5, scope: !525)
!543 = !DILocation(line: 67, column: 15, scope: !525)
!544 = !DILocation(line: 67, column: 19, scope: !525)
!545 = !DILocation(line: 67, column: 40, scope: !525)
!546 = !DILocation(line: 67, column: 44, scope: !525)
!547 = !DILocation(line: 67, column: 33, scope: !525)
!548 = !DILocation(line: 67, column: 58, scope: !525)
!549 = !DILocation(line: 67, column: 30, scope: !525)
!550 = !DILocation(line: 67, column: 13, scope: !525)
!551 = !DILocation(line: 71, column: 7, scope: !552)
!552 = distinct !DILexicalBlock(scope: !525, file: !2, line: 71, column: 6)
!553 = !DILocation(line: 71, column: 6, scope: !525)
!554 = !DILocation(line: 72, column: 3, scope: !555)
!555 = distinct !DILexicalBlock(scope: !552, file: !2, line: 71, column: 19)
!556 = !DILocation(line: 73, column: 3, scope: !555)
!557 = !DILocation(line: 76, column: 9, scope: !525)
!558 = !DILocation(line: 76, column: 2, scope: !525)
!559 = !DILocation(line: 77, column: 1, scope: !525)
!560 = distinct !DISubprogram(name: "efi_get_conf_table", scope: !2, file: !2, line: 129, type: !561, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !565)
!561 = !DISubroutineType(types: !562)
!562 = !{!517, !144, !563, !564}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!565 = !{!566, !567, !568, !569, !570, !571, !572, !575, !576}
!566 = !DILocalVariable(name: "bp", arg: 1, scope: !560, file: !2, line: 129, type: !144)
!567 = !DILocalVariable(name: "cfg_tbl_pa", arg: 2, scope: !560, file: !2, line: 129, type: !563)
!568 = !DILocalVariable(name: "cfg_tbl_len", arg: 3, scope: !560, file: !2, line: 130, type: !564)
!569 = !DILocalVariable(name: "sys_tbl_pa", scope: !560, file: !2, line: 132, type: !521)
!570 = !DILocalVariable(name: "et", scope: !560, file: !2, line: 133, type: !26)
!571 = !DILocalVariable(name: "ret", scope: !560, file: !2, line: 134, type: !517)
!572 = !DILocalVariable(name: "stbl", scope: !573, file: !2, line: 146, type: !38)
!573 = distinct !DILexicalBlock(scope: !574, file: !2, line: 145, column: 25)
!574 = distinct !DILexicalBlock(scope: !560, file: !2, line: 145, column: 6)
!575 = !DILocalVariable(name: "esd", scope: !573, file: !2, line: 147, type: !101)
!576 = !DILocalVariable(name: "stbl", scope: !577, file: !2, line: 155, type: !70)
!577 = distinct !DILexicalBlock(scope: !578, file: !2, line: 154, column: 32)
!578 = distinct !DILexicalBlock(scope: !574, file: !2, line: 154, column: 13)
!579 = !DILocation(line: 129, column: 44, scope: !560)
!580 = !DILocation(line: 129, column: 63, scope: !560)
!581 = !DILocation(line: 130, column: 24, scope: !560)
!582 = !DILocation(line: 132, column: 2, scope: !560)
!583 = !DILocation(line: 132, column: 16, scope: !560)
!584 = !DILocation(line: 133, column: 2, scope: !560)
!585 = !DILocation(line: 133, column: 16, scope: !560)
!586 = !DILocation(line: 134, column: 2, scope: !560)
!587 = !DILocation(line: 134, column: 6, scope: !560)
!588 = !DILocation(line: 136, column: 7, scope: !589)
!589 = distinct !DILexicalBlock(scope: !560, file: !2, line: 136, column: 6)
!590 = !DILocation(line: 136, column: 18, scope: !589)
!591 = !DILocation(line: 136, column: 22, scope: !589)
!592 = !DILocation(line: 136, column: 6, scope: !560)
!593 = !DILocation(line: 137, column: 3, scope: !589)
!594 = !DILocation(line: 139, column: 36, scope: !560)
!595 = !DILocation(line: 139, column: 15, scope: !560)
!596 = !DILocation(line: 139, column: 13, scope: !560)
!597 = !DILocation(line: 140, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !560, file: !2, line: 140, column: 6)
!599 = !DILocation(line: 140, column: 6, scope: !560)
!600 = !DILocation(line: 141, column: 3, scope: !598)
!601 = !DILocation(line: 144, column: 20, scope: !560)
!602 = !DILocation(line: 144, column: 7, scope: !560)
!603 = !DILocation(line: 144, column: 5, scope: !560)
!604 = !DILocation(line: 145, column: 6, scope: !574)
!605 = !DILocation(line: 145, column: 9, scope: !574)
!606 = !DILocation(line: 145, column: 6, scope: !560)
!607 = !DILocation(line: 146, column: 3, scope: !573)
!608 = !DILocation(line: 146, column: 26, scope: !573)
!609 = !DILocation(line: 146, column: 58, scope: !573)
!610 = !DILocation(line: 146, column: 33, scope: !573)
!611 = !DILocation(line: 147, column: 3, scope: !573)
!612 = !DILocation(line: 147, column: 26, scope: !573)
!613 = !DILocation(line: 150, column: 30, scope: !573)
!614 = !DILocation(line: 150, column: 34, scope: !573)
!615 = !DILocation(line: 150, column: 9, scope: !573)
!616 = !DILocation(line: 150, column: 7, scope: !573)
!617 = !DILocation(line: 152, column: 17, scope: !573)
!618 = !DILocation(line: 152, column: 23, scope: !573)
!619 = !DILocation(line: 152, column: 28, scope: !573)
!620 = !DILocation(line: 152, column: 37, scope: !573)
!621 = !DILocation(line: 152, column: 43, scope: !573)
!622 = !DILocation(line: 152, column: 4, scope: !573)
!623 = !DILocation(line: 152, column: 15, scope: !573)
!624 = !DILocation(line: 153, column: 18, scope: !573)
!625 = !DILocation(line: 153, column: 24, scope: !573)
!626 = !DILocation(line: 153, column: 4, scope: !573)
!627 = !DILocation(line: 153, column: 16, scope: !573)
!628 = !DILocation(line: 154, column: 2, scope: !574)
!629 = !DILocation(line: 154, column: 2, scope: !573)
!630 = !DILocation(line: 154, column: 13, scope: !578)
!631 = !DILocation(line: 154, column: 16, scope: !578)
!632 = !DILocation(line: 154, column: 13, scope: !574)
!633 = !DILocation(line: 155, column: 3, scope: !577)
!634 = !DILocation(line: 155, column: 26, scope: !577)
!635 = !DILocation(line: 155, column: 58, scope: !577)
!636 = !DILocation(line: 155, column: 33, scope: !577)
!637 = !DILocation(line: 157, column: 17, scope: !577)
!638 = !DILocation(line: 157, column: 23, scope: !577)
!639 = !DILocation(line: 157, column: 4, scope: !577)
!640 = !DILocation(line: 157, column: 15, scope: !577)
!641 = !DILocation(line: 158, column: 18, scope: !577)
!642 = !DILocation(line: 158, column: 24, scope: !577)
!643 = !DILocation(line: 158, column: 4, scope: !577)
!644 = !DILocation(line: 158, column: 16, scope: !577)
!645 = !DILocation(line: 159, column: 2, scope: !578)
!646 = !DILocation(line: 159, column: 2, scope: !577)
!647 = !DILocation(line: 160, column: 3, scope: !648)
!648 = distinct !DILexicalBlock(scope: !578, file: !2, line: 159, column: 9)
!649 = !DILocation(line: 163, column: 2, scope: !560)
!650 = !DILocation(line: 164, column: 1, scope: !560)
!651 = distinct !DISubprogram(name: "get_kexec_setup_data", scope: !2, file: !2, line: 85, type: !652, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{!101, !144, !26}
!654 = !{!655, !656, !657, !658, !659}
!655 = !DILocalVariable(name: "bp", arg: 1, scope: !651, file: !2, line: 85, type: !144)
!656 = !DILocalVariable(name: "et", arg: 2, scope: !651, file: !2, line: 86, type: !26)
!657 = !DILocalVariable(name: "esd", scope: !651, file: !2, line: 89, type: !101)
!658 = !DILocalVariable(name: "data", scope: !651, file: !2, line: 90, type: !88)
!659 = !DILocalVariable(name: "pa_data", scope: !651, file: !2, line: 91, type: !48)
!660 = !DILocation(line: 85, column: 72, scope: !651)
!661 = !DILocation(line: 86, column: 24, scope: !651)
!662 = !DILocation(line: 89, column: 2, scope: !651)
!663 = !DILocation(line: 89, column: 25, scope: !651)
!664 = !DILocation(line: 90, column: 2, scope: !651)
!665 = !DILocation(line: 90, column: 21, scope: !651)
!666 = !DILocation(line: 91, column: 2, scope: !651)
!667 = !DILocation(line: 91, column: 6, scope: !651)
!668 = !DILocation(line: 93, column: 12, scope: !651)
!669 = !DILocation(line: 93, column: 16, scope: !651)
!670 = !DILocation(line: 93, column: 20, scope: !651)
!671 = !DILocation(line: 93, column: 10, scope: !651)
!672 = !DILocation(line: 94, column: 2, scope: !651)
!673 = !DILocation(line: 94, column: 9, scope: !651)
!674 = !DILocation(line: 95, column: 31, scope: !675)
!675 = distinct !DILexicalBlock(scope: !651, file: !2, line: 94, column: 18)
!676 = !DILocation(line: 95, column: 10, scope: !675)
!677 = !DILocation(line: 95, column: 8, scope: !675)
!678 = !DILocation(line: 96, column: 7, scope: !679)
!679 = distinct !DILexicalBlock(scope: !675, file: !2, line: 96, column: 7)
!680 = !DILocation(line: 96, column: 13, scope: !679)
!681 = !DILocation(line: 96, column: 18, scope: !679)
!682 = !DILocation(line: 96, column: 7, scope: !675)
!683 = !DILocation(line: 97, column: 36, scope: !684)
!684 = distinct !DILexicalBlock(scope: !679, file: !2, line: 96, column: 32)
!685 = !DILocation(line: 97, column: 44, scope: !684)
!686 = !DILocation(line: 97, column: 10, scope: !684)
!687 = !DILocation(line: 97, column: 8, scope: !684)
!688 = !DILocation(line: 98, column: 4, scope: !684)
!689 = !DILocation(line: 101, column: 13, scope: !675)
!690 = !DILocation(line: 101, column: 19, scope: !675)
!691 = !DILocation(line: 101, column: 11, scope: !675)
!692 = distinct !{!692, !672, !693, !694, !695}
!693 = !DILocation(line: 102, column: 2, scope: !651)
!694 = !{!"llvm.loop.mustprogress"}
!695 = !{!"llvm.loop.unroll.disable"}
!696 = !DILocation(line: 109, column: 6, scope: !697)
!697 = distinct !DILexicalBlock(scope: !651, file: !2, line: 109, column: 6)
!698 = !DILocation(line: 109, column: 10, scope: !697)
!699 = !DILocation(line: 109, column: 14, scope: !697)
!700 = !DILocation(line: 109, column: 19, scope: !697)
!701 = !DILocation(line: 109, column: 6, scope: !651)
!702 = !DILocation(line: 110, column: 3, scope: !703)
!703 = distinct !DILexicalBlock(scope: !697, file: !2, line: 109, column: 27)
!704 = !DILocation(line: 111, column: 3, scope: !703)
!705 = !DILocation(line: 114, column: 9, scope: !651)
!706 = !DILocation(line: 114, column: 2, scope: !651)
!707 = !DILocation(line: 117, column: 1, scope: !651)
!708 = distinct !DISubprogram(name: "efi_find_vendor_table", scope: !2, file: !2, line: 206, type: !709, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !711)
!709 = !DISubroutineType(types: !710)
!710 = !{!521, !144, !521, !28, !117}
!711 = !{!712, !713, !714, !715, !716, !717, !718, !722, !723}
!712 = !DILocalVariable(name: "bp", arg: 1, scope: !708, file: !2, line: 206, type: !144)
!713 = !DILocalVariable(name: "cfg_tbl_pa", arg: 2, scope: !708, file: !2, line: 207, type: !521)
!714 = !DILocalVariable(name: "cfg_tbl_len", arg: 3, scope: !708, file: !2, line: 208, type: !28)
!715 = !DILocalVariable(name: "guid", arg: 4, scope: !708, file: !2, line: 209, type: !117)
!716 = !DILocalVariable(name: "et", scope: !708, file: !2, line: 211, type: !26)
!717 = !DILocalVariable(name: "i", scope: !708, file: !2, line: 212, type: !28)
!718 = !DILocalVariable(name: "vendor_tbl_pa", scope: !719, file: !2, line: 219, type: !521)
!719 = distinct !DILexicalBlock(scope: !720, file: !2, line: 218, column: 36)
!720 = distinct !DILexicalBlock(scope: !721, file: !2, line: 218, column: 2)
!721 = distinct !DILexicalBlock(scope: !708, file: !2, line: 218, column: 2)
!722 = !DILocalVariable(name: "vendor_tbl_guid", scope: !719, file: !2, line: 220, type: !117)
!723 = !DILocalVariable(name: "ret", scope: !719, file: !2, line: 221, type: !517)
!724 = !DILocation(line: 206, column: 57, scope: !708)
!725 = !DILocation(line: 207, column: 23, scope: !708)
!726 = !DILocation(line: 208, column: 22, scope: !708)
!727 = !DILocation(line: 209, column: 20, scope: !708)
!728 = !DILocation(line: 211, column: 2, scope: !708)
!729 = !DILocation(line: 211, column: 16, scope: !708)
!730 = !DILocation(line: 212, column: 2, scope: !708)
!731 = !DILocation(line: 212, column: 15, scope: !708)
!732 = !DILocation(line: 214, column: 20, scope: !708)
!733 = !DILocation(line: 214, column: 7, scope: !708)
!734 = !DILocation(line: 214, column: 5, scope: !708)
!735 = !DILocation(line: 215, column: 6, scope: !736)
!736 = distinct !DILexicalBlock(scope: !708, file: !2, line: 215, column: 6)
!737 = !DILocation(line: 215, column: 9, scope: !736)
!738 = !DILocation(line: 215, column: 6, scope: !708)
!739 = !DILocation(line: 216, column: 3, scope: !736)
!740 = !DILocation(line: 218, column: 9, scope: !721)
!741 = !DILocation(line: 218, column: 7, scope: !721)
!742 = !DILocation(line: 218, column: 14, scope: !720)
!743 = !DILocation(line: 218, column: 18, scope: !720)
!744 = !DILocation(line: 218, column: 16, scope: !720)
!745 = !DILocation(line: 218, column: 2, scope: !721)
!746 = !DILocation(line: 219, column: 3, scope: !719)
!747 = !DILocation(line: 219, column: 17, scope: !719)
!748 = !DILocation(line: 220, column: 3, scope: !719)
!749 = !DILocation(line: 220, column: 14, scope: !719)
!750 = !DILocation(line: 221, column: 3, scope: !719)
!751 = !DILocation(line: 221, column: 7, scope: !719)
!752 = !DILocation(line: 223, column: 34, scope: !719)
!753 = !DILocation(line: 223, column: 26, scope: !719)
!754 = !DILocation(line: 223, column: 46, scope: !719)
!755 = !DILocation(line: 225, column: 30, scope: !719)
!756 = !DILocation(line: 223, column: 9, scope: !719)
!757 = !DILocation(line: 223, column: 7, scope: !719)
!758 = !DILocation(line: 226, column: 7, scope: !759)
!759 = distinct !DILexicalBlock(scope: !719, file: !2, line: 226, column: 7)
!760 = !DILocation(line: 226, column: 7, scope: !719)
!761 = !DILocation(line: 227, column: 4, scope: !759)
!762 = !DILocation(line: 229, column: 8, scope: !763)
!763 = distinct !DILexicalBlock(scope: !719, file: !2, line: 229, column: 7)
!764 = !DILocation(line: 229, column: 7, scope: !719)
!765 = !DILocation(line: 230, column: 11, scope: !763)
!766 = !DILocation(line: 230, column: 4, scope: !763)
!767 = !DILocation(line: 231, column: 2, scope: !720)
!768 = !DILocation(line: 231, column: 2, scope: !719)
!769 = !DILocation(line: 218, column: 32, scope: !720)
!770 = !DILocation(line: 218, column: 2, scope: !720)
!771 = distinct !{!771, !745, !772, !694, !695}
!772 = !DILocation(line: 231, column: 2, scope: !721)
!773 = !DILocation(line: 233, column: 2, scope: !708)
!774 = !DILocation(line: 234, column: 1, scope: !708)
!775 = distinct !DISubprogram(name: "get_vendor_table", scope: !2, file: !2, line: 167, type: !776, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !779)
!776 = !DISubroutineType(types: !777)
!777 = !{!517, !87, !28, !563, !778, !26}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!779 = !{!780, !781, !782, !783, !784, !785, !788}
!780 = !DILocalVariable(name: "cfg_tbl", arg: 1, scope: !775, file: !2, line: 167, type: !87)
!781 = !DILocalVariable(name: "idx", arg: 2, scope: !775, file: !2, line: 167, type: !28)
!782 = !DILocalVariable(name: "vendor_tbl_pa", arg: 3, scope: !775, file: !2, line: 168, type: !563)
!783 = !DILocalVariable(name: "vendor_tbl_guid", arg: 4, scope: !775, file: !2, line: 169, type: !778)
!784 = !DILocalVariable(name: "et", arg: 5, scope: !775, file: !2, line: 170, type: !26)
!785 = !DILocalVariable(name: "tbl_entry", scope: !786, file: !2, line: 173, type: !112)
!786 = distinct !DILexicalBlock(scope: !787, file: !2, line: 172, column: 25)
!787 = distinct !DILexicalBlock(scope: !775, file: !2, line: 172, column: 6)
!788 = !DILocalVariable(name: "tbl_entry", scope: !789, file: !2, line: 184, type: !127)
!789 = distinct !DILexicalBlock(scope: !790, file: !2, line: 183, column: 32)
!790 = distinct !DILexicalBlock(scope: !787, file: !2, line: 183, column: 13)
!791 = !DILocation(line: 167, column: 35, scope: !775)
!792 = !DILocation(line: 167, column: 57, scope: !775)
!793 = !DILocation(line: 168, column: 23, scope: !775)
!794 = !DILocation(line: 169, column: 20, scope: !775)
!795 = !DILocation(line: 170, column: 22, scope: !775)
!796 = !DILocation(line: 172, column: 6, scope: !787)
!797 = !DILocation(line: 172, column: 9, scope: !787)
!798 = !DILocation(line: 172, column: 6, scope: !775)
!799 = !DILocation(line: 173, column: 3, scope: !786)
!800 = !DILocation(line: 173, column: 26, scope: !786)
!801 = !DILocation(line: 173, column: 63, scope: !786)
!802 = !DILocation(line: 173, column: 73, scope: !786)
!803 = !DILocation(line: 173, column: 71, scope: !786)
!804 = !DILocation(line: 180, column: 20, scope: !786)
!805 = !DILocation(line: 180, column: 31, scope: !786)
!806 = !DILocation(line: 180, column: 4, scope: !786)
!807 = !DILocation(line: 180, column: 18, scope: !786)
!808 = !DILocation(line: 181, column: 4, scope: !786)
!809 = !DILocation(line: 181, column: 22, scope: !786)
!810 = !DILocation(line: 181, column: 33, scope: !786)
!811 = !DILocation(line: 183, column: 2, scope: !787)
!812 = !DILocation(line: 183, column: 2, scope: !786)
!813 = !DILocation(line: 183, column: 13, scope: !790)
!814 = !DILocation(line: 183, column: 16, scope: !790)
!815 = !DILocation(line: 183, column: 13, scope: !787)
!816 = !DILocation(line: 184, column: 3, scope: !789)
!817 = !DILocation(line: 184, column: 26, scope: !789)
!818 = !DILocation(line: 184, column: 63, scope: !789)
!819 = !DILocation(line: 184, column: 73, scope: !789)
!820 = !DILocation(line: 184, column: 71, scope: !789)
!821 = !DILocation(line: 186, column: 20, scope: !789)
!822 = !DILocation(line: 186, column: 31, scope: !789)
!823 = !DILocation(line: 186, column: 4, scope: !789)
!824 = !DILocation(line: 186, column: 18, scope: !789)
!825 = !DILocation(line: 187, column: 4, scope: !789)
!826 = !DILocation(line: 187, column: 22, scope: !789)
!827 = !DILocation(line: 187, column: 33, scope: !789)
!828 = !DILocation(line: 188, column: 2, scope: !790)
!829 = !DILocation(line: 188, column: 2, scope: !789)
!830 = !DILocation(line: 189, column: 3, scope: !831)
!831 = distinct !DILexicalBlock(scope: !790, file: !2, line: 188, column: 9)
!832 = !DILocation(line: 192, column: 2, scope: !775)
!833 = !DILocation(line: 193, column: 1, scope: !775)
!834 = distinct !DISubprogram(name: "efi_guidcmp", scope: !40, file: !40, line: 117, type: !835, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !837)
!835 = !DISubroutineType(types: !836)
!836 = !{!517, !117, !117}
!837 = !{!838, !839}
!838 = !DILocalVariable(name: "left", arg: 1, scope: !834, file: !40, line: 117, type: !117)
!839 = !DILocalVariable(name: "right", arg: 2, scope: !834, file: !40, line: 117, type: !117)
!840 = !DILocation(line: 117, column: 43, scope: !834)
!841 = !DILocation(line: 117, column: 60, scope: !834)
!842 = !DILocation(line: 119, column: 9, scope: !834)
!843 = !DILocation(line: 119, column: 2, scope: !834)
!844 = !DISubprogram(name: "memcmp", scope: !514, file: !514, line: 196, type: !845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!845 = !DISubroutineType(types: !846)
!846 = !{!517, !847, !847, !518}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
