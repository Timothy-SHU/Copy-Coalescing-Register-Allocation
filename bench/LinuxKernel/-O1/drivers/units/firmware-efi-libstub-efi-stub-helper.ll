; ModuleID = 'drivers/firmware/efi/libstub/efi-stub-helper.c'
source_filename = "drivers/firmware/efi/libstub/efi-stub-helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guid_t = type { [16 x i8] }
%struct.anon.9 = type { i32, i32, i32, [52 x i8] }
%struct.anon.13 = type { %struct.efi_vendor_dev_path, %struct.efi_generic_dev_path }
%struct.efi_vendor_dev_path = type { %struct.efi_generic_dev_path, %struct.guid_t, [0 x i8] }
%struct.efi_generic_dev_path = type { i8, i8, i16 }
%struct.anon.1 = type { %struct.efi_table_hdr_t, i64, i32, i64, ptr, i64, ptr, i64, i64, ptr, ptr, i64, i64 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.efi_system_table_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.0 = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efi_load_option_unpacked_t = type { i32, i16, ptr, ptr, i32, ptr }
%struct.efi_load_option_t = type <{ i32, i16, [0 x i8] }>
%struct.anon.2 = type { i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i32, i32, ptr }
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.efi_tcg2_event = type <{ i32, %struct.anon.10 }>
%struct.anon.10 = type <{ i32, i16, i32, i32 }>
%struct.efi_tcg2_tagged_event = type { i32, i32 }
%struct.efi_measured_event = type <{ %struct.efi_tcg2_event, %struct.efi_tcg2_tagged_event, [0 x i8] }>
%struct.anon.11 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.12 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.efi_boot_memmap = type { i64, i64, i32, i64, i64, [0 x %struct.efi_memory_desc_t] }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.anon.4 = type { %struct.guid_t, ptr }
%struct.efi_config_table_32_t = type { %struct.guid_t, i32 }
%struct.linux_efi_initrd = type { i64, i64 }
%struct.anon.14 = type { ptr }
%struct.anon.15 = type { i32 }
%struct.anon.5 = type { ptr, ptr, ptr }
%struct.anon.6 = type { i32, i32, i32 }
%struct.anon.7 = type { ptr, ptr, ptr }

@efi_nokaslr = hidden global i8 0, align 1, !dbg !0
@efi_nosoftreserve = internal global i8 0, align 1, !dbg !454
@efi_system_table = external hidden global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1, !dbg !297
@.str.1 = private unnamed_addr constant [8 x i8] c"nokaslr\00", align 1, !dbg !302
@.str.2 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1, !dbg !307
@efi_loglevel = external hidden global i32, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"noinitrd\00", align 1, !dbg !312
@efi_noinitrd = internal global i8 0, align 1, !dbg !452
@.str.4 = private unnamed_addr constant [7 x i8] c"no5lvl\00", align 1, !dbg !317
@efi_no5lvl = external hidden global i8, align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"mem_encrypt\00", align 1, !dbg !322
@.str.6 = private unnamed_addr constant [3 x i8] c"on\00", align 1, !dbg !327
@efi_mem_encrypt = hidden global i32 0, align 4, !dbg !456
@.str.7 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !329
@.str.8 = private unnamed_addr constant [4 x i8] c"efi\00", align 1, !dbg !334
@.str.9 = private unnamed_addr constant [8 x i8] c"nochunk\00", align 1, !dbg !336
@efi_nochunk = hidden global i8 0, align 1, !dbg !448
@.str.10 = private unnamed_addr constant [8 x i8] c"novamap\00", align 1, !dbg !338
@efi_novamap = hidden global i8 0, align 1, !dbg !450
@.str.11 = private unnamed_addr constant [22 x i8] c"disable_early_pci_dma\00", align 1, !dbg !340
@efi_disable_pci_dma = internal global i8 0, align 1, !dbg !458
@.str.12 = private unnamed_addr constant [25 x i8] c"no_disable_early_pci_dma\00", align 1, !dbg !345
@.str.13 = private unnamed_addr constant [6 x i8] c"debug\00", align 1, !dbg !350
@.str.14 = private unnamed_addr constant [6 x i8] c"video\00", align 1, !dbg !352
@.str.15 = private unnamed_addr constant [7 x i8] c"efifb:\00", align 1, !dbg !354
@efi_apply_loadoptions_quirk.__print_once = internal global i8 0, align 1, !dbg !356
@.str.16 = private unnamed_addr constant [73 x i8] c"\014WARNING: [Firmware Bug]: LoadOptions is an EFI_LOAD_OPTION descriptor\0A\00", align 1, !dbg !392
@efi_apply_loadoptions_quirk.__print_once.17 = internal global i8 0, align 1, !dbg !397
@.str.18 = private unnamed_addr constant [63 x i8] c"\014WARNING: [Firmware Bug]: Using OptionalData as a workaround\0A\00", align 1, !dbg !399
@_ctype = external hidden constant [0 x i8], align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"\013ERROR: Command line is too long: truncated to %d bytes\0A\00", align 1, !dbg !404
@.str.20 = private unnamed_addr constant [6 x i8] c"%.*ls\00", align 1, !dbg !409
@__const.efi_load_initrd.tbl_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"'\E4hU\FCh=O\ACt\CAUR1\CCh" }, align 4
@.str.21 = private unnamed_addr constant [62 x i8] c"\016Loaded initrd from LINUX_EFI_INITRD_MEDIA_GUID device path\0A\00", align 1, !dbg !411
@.str.22 = private unnamed_addr constant [35 x i8] c"\016Measured initrd data into PCR 9\0A\00", align 1, !dbg !416
@.str.23 = private unnamed_addr constant [42 x i8] c"\016Loaded initrd from command line option\0A\00", align 1, !dbg !421
@.str.24 = private unnamed_addr constant [39 x i8] c"\013ERROR: Failed to load initrd: 0x%lx\0A\00", align 1, !dbg !426
@__const.efi_remap_image.guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\F6\0CV\F4\EC@JK\A1\92\BF\1DW\D0\B1\89" }, align 4
@.str.25 = private unnamed_addr constant [73 x i8] c"\014WARNING: Failed to retrieve memory attributes for image region: 0x%lx\0A\00", align 1, !dbg !431
@.str.26 = private unnamed_addr constant [50 x i8] c"\014WARNING: Failed to remap code region read-only\0A\00", align 1, !dbg !433
@.str.27 = private unnamed_addr constant [51 x i8] c"\014WARNING: Failed to remap code region executable\0A\00", align 1, !dbg !438
@.str.28 = private unnamed_addr constant [55 x i8] c"\014WARNING: Failed to remap data region non-executable\0A\00", align 1, !dbg !443
@efi_is64 = external hidden constant i8, align 1
@__const.efi_measure_tagged_event.tcg2_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"lv\7F`Ut\BEB\93\0B\E4\D7m\B2r\0F" }, align 4
@events = internal constant [2 x %struct.anon.9] [%struct.anon.9 { i32 9, i32 -1891949844, i32 13, [52 x i8] c"Linux initrd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.9 { i32 9, i32 -1891949843, i32 26, [52 x i8] c"LOADED_IMAGE::LoadOptions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], align 16, !dbg !462
@.str.29 = private unnamed_addr constant [55 x i8] c"\014WARNING: Failed to measure data for event %d: 0x%lx\0A\00", align 1, !dbg !460
@__const.efi_load_initrd_dev_path.lf2_proto_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\C1\C0\06@\B3\FC>@\99mJl\87$\E0m" }, align 4
@initrd_dev_path = internal constant %struct.anon.13 { %struct.efi_vendor_dev_path { %struct.efi_generic_dev_path { i8 4, i8 3, i16 20 }, %struct.guid_t { [16 x i8] c"'\E4hU\FCh=O\ACt\CAUR1\CCh" }, [0 x i8] zeroinitializer }, %struct.efi_generic_dev_path { i8 127, i8 -1, i16 4 } }, align 1, !dbg !477
@.str.30 = private unnamed_addr constant [8 x i16] [i16 105, i16 110, i16 105, i16 116, i16 114, i16 100, i16 61, i16 0], align 2, !dbg !489

; Function Attrs: noredzone nounwind willreturn memory(read)
define hidden zeroext i1 @__efi_soft_reserve_enabled() #0 !dbg !498 {
entry:
  %0 = load i8, ptr @efi_nosoftreserve, align 1, !dbg !501, !range !502, !noundef !503
  %tobool = trunc i8 %0 to i1, !dbg !501
  %lnot = xor i1 %tobool, true, !dbg !504
  ret i1 %lnot, !dbg !505
}

; Function Attrs: noredzone nounwind
define hidden i64 @efi_parse_options(ptr noundef %cmdline) #1 !dbg !506 {
entry:
  %retval = alloca i64, align 8
  %cmdline.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %status = alloca i64, align 8
  %str = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %param = alloca ptr, align 8
  %val = alloca ptr, align 8
  %__pad116 = alloca [3 x i64], align 16
  %tmp120 = alloca i64, align 8
  store ptr %cmdline, ptr %cmdline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline.addr, metadata !512, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %len, metadata !513, metadata !DIExpression()), !dbg !531
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #7, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %status, metadata !518, metadata !DIExpression()), !dbg !533
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #7, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %str, metadata !519, metadata !DIExpression()), !dbg !535
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #7, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !520, metadata !DIExpression()), !dbg !536
  %0 = load ptr, ptr %cmdline.addr, align 8, !dbg !537
  %tobool = icmp ne ptr %0, null, !dbg !537
  br i1 %tobool, label %if.end, label %if.then, !dbg !539

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup136, !dbg !540

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cmdline.addr, align 8, !dbg !541
  %call = call i64 @strnlen(ptr noundef %1, i64 noundef 2047) #8, !dbg !542
  %add = add i64 %call, 1, !dbg !543
  store i64 %add, ptr %len, align 8, !dbg !544
  %call1 = call zeroext i1 @efi_is_native() #8, !dbg !545
  br i1 %call1, label %cond.true, label %cond.false6, !dbg !545

cond.true:                                        ; preds = %if.end
  %call2 = call zeroext i1 @efi_is_native() #8, !dbg !545
  br i1 %call2, label %cond.true3, label %cond.false, !dbg !545

cond.true3:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !545
  %boottime = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 10, !dbg !545
  %3 = load ptr, ptr %boottime, align 8, !dbg !545
  br label %cond.end, !dbg !545

cond.false:                                       ; preds = %cond.true
  %4 = load ptr, ptr @efi_system_table, align 8, !dbg !545
  %boottime4 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %4, i32 0, i32 10, !dbg !545
  %5 = load i32, ptr %boottime4, align 4, !dbg !545
  %conv = zext i32 %5 to i64, !dbg !545
  %6 = inttoptr i64 %conv to ptr, !dbg !545
  br label %cond.end, !dbg !545

cond.end:                                         ; preds = %cond.false, %cond.true3
  %cond = phi ptr [ %3, %cond.true3 ], [ %6, %cond.false ], !dbg !545
  %allocate_pool = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 6, !dbg !545
  %7 = load ptr, ptr %allocate_pool, align 8, !dbg !545
  %8 = load i64, ptr %len, align 8, !dbg !545
  %call5 = call win64cc i64 %7(i32 noundef 2, i64 noundef %8, ptr noundef %buf) #8, !dbg !545
  br label %cond.end20, !dbg !545

cond.false6:                                      ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #7, !dbg !546
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !521, metadata !DIExpression()), !dbg !546
  br label %do.body, !dbg !547

do.body:                                          ; preds = %cond.false6
  br label %do.cond, !dbg !549

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !549

do.end:                                           ; preds = %do.cond
  %call7 = call zeroext i1 @efi_is_native() #8, !dbg !546
  br i1 %call7, label %cond.true9, label %cond.false11, !dbg !546

cond.true9:                                       ; preds = %do.end
  %9 = load ptr, ptr @efi_system_table, align 8, !dbg !546
  %boottime10 = getelementptr inbounds %struct.anon.1, ptr %9, i32 0, i32 10, !dbg !546
  %10 = load ptr, ptr %boottime10, align 8, !dbg !546
  br label %cond.end14, !dbg !546

cond.false11:                                     ; preds = %do.end
  %11 = load ptr, ptr @efi_system_table, align 8, !dbg !546
  %boottime12 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %11, i32 0, i32 10, !dbg !546
  %12 = load i32, ptr %boottime12, align 4, !dbg !546
  %conv13 = zext i32 %12 to i64, !dbg !546
  %13 = inttoptr i64 %conv13 to ptr, !dbg !546
  br label %cond.end14, !dbg !546

cond.end14:                                       ; preds = %cond.false11, %cond.true9
  %cond15 = phi ptr [ %10, %cond.true9 ], [ %13, %cond.false11 ], !dbg !546
  %allocate_pool16 = getelementptr inbounds %struct.anon.0, ptr %cond15, i32 0, i32 6, !dbg !546
  %14 = load i32, ptr %allocate_pool16, align 4, !dbg !546
  %15 = load i64, ptr %len, align 8, !dbg !546
  %call17 = call ptr @efi64_zero_upper(ptr noundef %buf) #8, !dbg !546
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !546
  %call18 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %14, i32 noundef 2, i64 noundef %15, ptr noundef %call17, ptr noundef %arraydecay) #8, !dbg !546
  store i64 %call18, ptr %tmp, align 8, !dbg !546
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #7, !dbg !545
  %16 = load i64, ptr %tmp, align 8, !dbg !546
  %call19 = call i64 @__efi64_widen_efi_status(i64 noundef %16) #8, !dbg !545
  br label %cond.end20, !dbg !545

cond.end20:                                       ; preds = %cond.end14, %cond.end
  %cond21 = phi i64 [ %call5, %cond.end ], [ %call19, %cond.end14 ], !dbg !545
  store i64 %cond21, ptr %status, align 8, !dbg !551
  %17 = load i64, ptr %status, align 8, !dbg !552
  %cmp = icmp ne i64 %17, 0, !dbg !554
  br i1 %cmp, label %if.then23, label %if.end24, !dbg !555

if.then23:                                        ; preds = %cond.end20
  %18 = load i64, ptr %status, align 8, !dbg !556
  store i64 %18, ptr %retval, align 8, !dbg !557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup136, !dbg !557

if.end24:                                         ; preds = %cond.end20
  %19 = load ptr, ptr %buf, align 8, !dbg !558
  %20 = load ptr, ptr %cmdline.addr, align 8, !dbg !559
  %21 = load i64, ptr %len, align 8, !dbg !560
  %sub = sub i64 %21, 1, !dbg !561
  %call25 = call ptr @memcpy(ptr noundef %19, ptr noundef %20, i64 noundef %sub) #8, !dbg !562
  %22 = load ptr, ptr %buf, align 8, !dbg !563
  %23 = load i64, ptr %len, align 8, !dbg !564
  %sub26 = sub i64 %23, 1, !dbg !565
  %arrayidx = getelementptr inbounds i8, ptr %22, i64 %sub26, !dbg !563
  store i8 0, ptr %arrayidx, align 1, !dbg !566
  %24 = load ptr, ptr %buf, align 8, !dbg !567
  %call27 = call ptr @skip_spaces(ptr noundef %24) #8, !dbg !568
  store ptr %call27, ptr %str, align 8, !dbg !569
  br label %while.cond, !dbg !570

while.cond:                                       ; preds = %cleanup.cont, %if.end24
  %25 = load ptr, ptr %str, align 8, !dbg !571
  %26 = load i8, ptr %25, align 1, !dbg !572
  %tobool28 = icmp ne i8 %26, 0, !dbg !570
  br i1 %tobool28, label %while.body, label %while.end, !dbg !570

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %param) #7, !dbg !573
  call void @llvm.dbg.declare(metadata ptr %param, metadata !524, metadata !DIExpression()), !dbg !574
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !573
  call void @llvm.dbg.declare(metadata ptr %val, metadata !526, metadata !DIExpression()), !dbg !575
  %27 = load ptr, ptr %str, align 8, !dbg !576
  %call29 = call ptr @next_arg(ptr noundef %27, ptr noundef %param, ptr noundef %val) #8, !dbg !577
  store ptr %call29, ptr %str, align 8, !dbg !578
  %28 = load ptr, ptr %val, align 8, !dbg !579
  %tobool30 = icmp ne ptr %28, null, !dbg !579
  br i1 %tobool30, label %if.end34, label %land.lhs.true, !dbg !581

land.lhs.true:                                    ; preds = %while.body
  %29 = load ptr, ptr %param, align 8, !dbg !582
  %call31 = call i32 @strcmp(ptr noundef %29, ptr noundef @.str) #8, !dbg !583
  %tobool32 = icmp ne i32 %call31, 0, !dbg !583
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !584

if.then33:                                        ; preds = %land.lhs.true
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !585

if.end34:                                         ; preds = %land.lhs.true, %while.body
  %30 = load ptr, ptr %param, align 8, !dbg !586
  %call35 = call i32 @strcmp(ptr noundef %30, ptr noundef @.str.1) #8, !dbg !588
  %tobool36 = icmp ne i32 %call35, 0, !dbg !588
  br i1 %tobool36, label %if.else, label %if.then37, !dbg !589

if.then37:                                        ; preds = %if.end34
  store i8 1, ptr @efi_nokaslr, align 1, !dbg !590
  br label %if.end100, !dbg !592

if.else:                                          ; preds = %if.end34
  %31 = load ptr, ptr %param, align 8, !dbg !593
  %call38 = call i32 @strcmp(ptr noundef %31, ptr noundef @.str.2) #8, !dbg !595
  %tobool39 = icmp ne i32 %call38, 0, !dbg !595
  br i1 %tobool39, label %if.else41, label %if.then40, !dbg !596

if.then40:                                        ; preds = %if.else
  store i32 4, ptr @efi_loglevel, align 4, !dbg !597
  br label %if.end99, !dbg !599

if.else41:                                        ; preds = %if.else
  %32 = load ptr, ptr %param, align 8, !dbg !600
  %call42 = call i32 @strcmp(ptr noundef %32, ptr noundef @.str.3) #8, !dbg !602
  %tobool43 = icmp ne i32 %call42, 0, !dbg !602
  br i1 %tobool43, label %if.else45, label %if.then44, !dbg !603

if.then44:                                        ; preds = %if.else41
  store i8 1, ptr @efi_noinitrd, align 1, !dbg !604
  br label %if.end98, !dbg !606

if.else45:                                        ; preds = %if.else41
  %33 = load ptr, ptr %param, align 8, !dbg !607
  %call46 = call i32 @strcmp(ptr noundef %33, ptr noundef @.str.4) #8, !dbg !609
  %tobool47 = icmp ne i32 %call46, 0, !dbg !609
  br i1 %tobool47, label %if.else49, label %if.then48, !dbg !610

if.then48:                                        ; preds = %if.else45
  store i8 1, ptr @efi_no5lvl, align 1, !dbg !611
  br label %if.end97, !dbg !613

if.else49:                                        ; preds = %if.else45
  %34 = load ptr, ptr %param, align 8, !dbg !614
  %call50 = call i32 @strcmp(ptr noundef %34, ptr noundef @.str.5) #8, !dbg !616
  %tobool51 = icmp ne i32 %call50, 0, !dbg !616
  br i1 %tobool51, label %if.else62, label %land.lhs.true52, !dbg !617

land.lhs.true52:                                  ; preds = %if.else49
  %35 = load ptr, ptr %val, align 8, !dbg !618
  %tobool53 = icmp ne ptr %35, null, !dbg !618
  br i1 %tobool53, label %if.then54, label %if.else62, !dbg !619

if.then54:                                        ; preds = %land.lhs.true52
  %36 = load ptr, ptr %val, align 8, !dbg !620
  %call55 = call zeroext i1 @parse_option_str(ptr noundef %36, ptr noundef @.str.6) #8, !dbg !623
  br i1 %call55, label %if.then56, label %if.else57, !dbg !624

if.then56:                                        ; preds = %if.then54
  store i32 1, ptr @efi_mem_encrypt, align 4, !dbg !625
  br label %if.end61, !dbg !626

if.else57:                                        ; preds = %if.then54
  %37 = load ptr, ptr %val, align 8, !dbg !627
  %call58 = call zeroext i1 @parse_option_str(ptr noundef %37, ptr noundef @.str.7) #8, !dbg !629
  br i1 %call58, label %if.then59, label %if.end60, !dbg !630

if.then59:                                        ; preds = %if.else57
  store i32 -1, ptr @efi_mem_encrypt, align 4, !dbg !631
  br label %if.end60, !dbg !632

if.end60:                                         ; preds = %if.then59, %if.else57
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then56
  br label %if.end96, !dbg !633

if.else62:                                        ; preds = %land.lhs.true52, %if.else49
  %38 = load ptr, ptr %param, align 8, !dbg !634
  %call63 = call i32 @strcmp(ptr noundef %38, ptr noundef @.str.8) #8, !dbg !636
  %tobool64 = icmp ne i32 %call63, 0, !dbg !636
  br i1 %tobool64, label %if.else84, label %land.lhs.true65, !dbg !637

land.lhs.true65:                                  ; preds = %if.else62
  %39 = load ptr, ptr %val, align 8, !dbg !638
  %tobool66 = icmp ne ptr %39, null, !dbg !638
  br i1 %tobool66, label %if.then67, label %if.else84, !dbg !639

if.then67:                                        ; preds = %land.lhs.true65
  %40 = load ptr, ptr %val, align 8, !dbg !640
  %call68 = call zeroext i1 @parse_option_str(ptr noundef %40, ptr noundef @.str.9) #8, !dbg !642
  %frombool = zext i1 %call68 to i8, !dbg !643
  store i8 %frombool, ptr @efi_nochunk, align 1, !dbg !643
  %41 = load ptr, ptr %val, align 8, !dbg !644
  %call69 = call zeroext i1 @parse_option_str(ptr noundef %41, ptr noundef @.str.10) #8, !dbg !645
  %conv70 = zext i1 %call69 to i32, !dbg !645
  %42 = load i8, ptr @efi_novamap, align 1, !dbg !646, !range !502, !noundef !503
  %tobool71 = trunc i8 %42 to i1, !dbg !646
  %conv72 = zext i1 %tobool71 to i32, !dbg !646
  %or = or i32 %conv72, %conv70, !dbg !646
  %tobool73 = icmp ne i32 %or, 0, !dbg !646
  %frombool74 = zext i1 %tobool73 to i8, !dbg !646
  store i8 %frombool74, ptr @efi_novamap, align 1, !dbg !646
  store i8 0, ptr @efi_nosoftreserve, align 1, !dbg !647
  %43 = load ptr, ptr %val, align 8, !dbg !648
  %call75 = call zeroext i1 @parse_option_str(ptr noundef %43, ptr noundef @.str.11) #8, !dbg !650
  br i1 %call75, label %if.then76, label %if.end77, !dbg !651

if.then76:                                        ; preds = %if.then67
  store i8 1, ptr @efi_disable_pci_dma, align 1, !dbg !652
  br label %if.end77, !dbg !653

if.end77:                                         ; preds = %if.then76, %if.then67
  %44 = load ptr, ptr %val, align 8, !dbg !654
  %call78 = call zeroext i1 @parse_option_str(ptr noundef %44, ptr noundef @.str.12) #8, !dbg !656
  br i1 %call78, label %if.then79, label %if.end80, !dbg !657

if.then79:                                        ; preds = %if.end77
  store i8 0, ptr @efi_disable_pci_dma, align 1, !dbg !658
  br label %if.end80, !dbg !659

if.end80:                                         ; preds = %if.then79, %if.end77
  %45 = load ptr, ptr %val, align 8, !dbg !660
  %call81 = call zeroext i1 @parse_option_str(ptr noundef %45, ptr noundef @.str.13) #8, !dbg !662
  br i1 %call81, label %if.then82, label %if.end83, !dbg !663

if.then82:                                        ; preds = %if.end80
  store i32 10, ptr @efi_loglevel, align 4, !dbg !664
  br label %if.end83, !dbg !665

if.end83:                                         ; preds = %if.then82, %if.end80
  br label %if.end95, !dbg !666

if.else84:                                        ; preds = %land.lhs.true65, %if.else62
  %46 = load ptr, ptr %param, align 8, !dbg !667
  %call85 = call i32 @strcmp(ptr noundef %46, ptr noundef @.str.14) #8, !dbg !669
  %tobool86 = icmp ne i32 %call85, 0, !dbg !669
  br i1 %tobool86, label %if.end94, label %land.lhs.true87, !dbg !670

land.lhs.true87:                                  ; preds = %if.else84
  %47 = load ptr, ptr %val, align 8, !dbg !671
  %tobool88 = icmp ne ptr %47, null, !dbg !671
  br i1 %tobool88, label %land.lhs.true89, label %if.end94, !dbg !672

land.lhs.true89:                                  ; preds = %land.lhs.true87
  %48 = load ptr, ptr %val, align 8, !dbg !673
  %call90 = call zeroext i1 @strstarts(ptr noundef %48, ptr noundef @.str.15) #8, !dbg !674
  br i1 %call90, label %if.then92, label %if.end94, !dbg !675

if.then92:                                        ; preds = %land.lhs.true89
  %49 = load ptr, ptr %val, align 8, !dbg !676
  %call93 = call i64 @strlen(ptr noundef @.str.15) #8, !dbg !678
  %add.ptr = getelementptr inbounds i8, ptr %49, i64 %call93, !dbg !679
  call void @efi_parse_option_graphics(ptr noundef %add.ptr) #8, !dbg !680
  br label %if.end94, !dbg !681

if.end94:                                         ; preds = %if.then92, %land.lhs.true89, %land.lhs.true87, %if.else84
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end83
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end61
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then48
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then44
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then40
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then37
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !682
  br label %cleanup, !dbg !682

cleanup:                                          ; preds = %if.end100, %if.then33
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !682
  call void @llvm.lifetime.end.p0(i64 8, ptr %param) #7, !dbg !682
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !570, !llvm.loop !683

while.end:                                        ; preds = %cleanup, %while.cond
  %call102 = call zeroext i1 @efi_is_native() #8, !dbg !686
  br i1 %call102, label %cond.true104, label %cond.false115, !dbg !686

cond.true104:                                     ; preds = %while.end
  %call105 = call zeroext i1 @efi_is_native() #8, !dbg !686
  br i1 %call105, label %cond.true107, label %cond.false109, !dbg !686

cond.true107:                                     ; preds = %cond.true104
  %50 = load ptr, ptr @efi_system_table, align 8, !dbg !686
  %boottime108 = getelementptr inbounds %struct.anon.1, ptr %50, i32 0, i32 10, !dbg !686
  %51 = load ptr, ptr %boottime108, align 8, !dbg !686
  br label %cond.end112, !dbg !686

cond.false109:                                    ; preds = %cond.true104
  %52 = load ptr, ptr @efi_system_table, align 8, !dbg !686
  %boottime110 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %52, i32 0, i32 10, !dbg !686
  %53 = load i32, ptr %boottime110, align 4, !dbg !686
  %conv111 = zext i32 %53 to i64, !dbg !686
  %54 = inttoptr i64 %conv111 to ptr, !dbg !686
  br label %cond.end112, !dbg !686

cond.end112:                                      ; preds = %cond.false109, %cond.true107
  %cond113 = phi ptr [ %51, %cond.true107 ], [ %54, %cond.false109 ], !dbg !686
  %free_pool = getelementptr inbounds %struct.anon, ptr %cond113, i32 0, i32 7, !dbg !686
  %55 = load ptr, ptr %free_pool, align 8, !dbg !686
  %56 = load ptr, ptr %buf, align 8, !dbg !686
  %call114 = call win64cc i64 %55(ptr noundef %56) #8, !dbg !686
  br label %cond.end134, !dbg !686

cond.false115:                                    ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad116) #7, !dbg !687
  call void @llvm.dbg.declare(metadata ptr %__pad116, metadata !527, metadata !DIExpression()), !dbg !687
  br label %do.body117, !dbg !688

do.body117:                                       ; preds = %cond.false115
  br label %do.cond118, !dbg !690

do.cond118:                                       ; preds = %do.body117
  br label %do.end119, !dbg !690

do.end119:                                        ; preds = %do.cond118
  %call121 = call zeroext i1 @efi_is_native() #8, !dbg !687
  br i1 %call121, label %cond.true123, label %cond.false125, !dbg !687

cond.true123:                                     ; preds = %do.end119
  %57 = load ptr, ptr @efi_system_table, align 8, !dbg !687
  %boottime124 = getelementptr inbounds %struct.anon.1, ptr %57, i32 0, i32 10, !dbg !687
  %58 = load ptr, ptr %boottime124, align 8, !dbg !687
  br label %cond.end128, !dbg !687

cond.false125:                                    ; preds = %do.end119
  %59 = load ptr, ptr @efi_system_table, align 8, !dbg !687
  %boottime126 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %59, i32 0, i32 10, !dbg !687
  %60 = load i32, ptr %boottime126, align 4, !dbg !687
  %conv127 = zext i32 %60 to i64, !dbg !687
  %61 = inttoptr i64 %conv127 to ptr, !dbg !687
  br label %cond.end128, !dbg !687

cond.end128:                                      ; preds = %cond.false125, %cond.true123
  %cond129 = phi ptr [ %58, %cond.true123 ], [ %61, %cond.false125 ], !dbg !687
  %free_pool130 = getelementptr inbounds %struct.anon.0, ptr %cond129, i32 0, i32 7, !dbg !687
  %62 = load i32, ptr %free_pool130, align 8, !dbg !687
  %63 = load ptr, ptr %buf, align 8, !dbg !687
  %arraydecay131 = getelementptr inbounds [3 x i64], ptr %__pad116, i64 0, i64 0, !dbg !687
  %call132 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %62, ptr noundef %63, ptr noundef %arraydecay131) #8, !dbg !687
  store i64 %call132, ptr %tmp120, align 8, !dbg !687
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad116) #7, !dbg !686
  %64 = load i64, ptr %tmp120, align 8, !dbg !687
  %call133 = call i64 @__efi64_widen_efi_status(i64 noundef %64) #8, !dbg !686
  br label %cond.end134, !dbg !686

cond.end134:                                      ; preds = %cond.end128, %cond.end112
  %cond135 = phi i64 [ %call114, %cond.end112 ], [ %call133, %cond.end128 ], !dbg !686
  store i64 0, ptr %retval, align 8, !dbg !692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup136, !dbg !692

cleanup136:                                       ; preds = %cond.end134, %if.then23, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #7, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #7, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #7, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7, !dbg !693
  %65 = load i64, ptr %retval, align 8, !dbg !693
  ret i64 %65, !dbg !693

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone
declare !dbg !694 hidden i64 @strnlen(ptr noundef, i64 noundef) #4

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_native() #5 !dbg !698 {
entry:
  %call = call zeroext i1 @efi_is_64bit() #8, !dbg !700
  ret i1 %call, !dbg !701
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__efi64_widen_efi_status(i64 noundef %status) #5 !dbg !702 {
entry:
  %status.addr = alloca i64, align 8
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !706, metadata !DIExpression()), !dbg !707
  %0 = load i64, ptr %status.addr, align 8, !dbg !708
  %conv = trunc i64 %0 to i32, !dbg !708
  %call = call i32 @rol32(i32 noundef %conv, i32 noundef 1) #8, !dbg !709
  %conv1 = zext i32 %call to i64, !dbg !709
  %call2 = call i64 @ror64(i64 noundef %conv1, i32 noundef 1) #8, !dbg !710
  ret i64 %call2, !dbg !711
}

; Function Attrs: noredzone
declare !dbg !712 hidden i64 @__efi64_thunk(i32 noundef, ...) #4

; Function Attrs: inlinehint noredzone nounwind
define internal ptr @efi64_zero_upper(ptr noundef %p) #5 !dbg !715 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !719, metadata !DIExpression()), !dbg !720
  %0 = load ptr, ptr %p.addr, align 8, !dbg !721
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 1, !dbg !722
  store i32 0, ptr %arrayidx, align 4, !dbg !723
  %1 = load ptr, ptr %p.addr, align 8, !dbg !724
  ret ptr %1, !dbg !725
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone
declare !dbg !726 hidden ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone
declare !dbg !730 hidden ptr @skip_spaces(ptr noundef) #4

; Function Attrs: noredzone
declare !dbg !733 hidden ptr @next_arg(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone
declare !dbg !738 hidden i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone
declare !dbg !741 hidden zeroext i1 @parse_option_str(ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @strstarts(ptr noundef %str, ptr noundef %prefix) #5 !dbg !744 {
entry:
  %str.addr = alloca ptr, align 8
  %prefix.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !746, metadata !DIExpression()), !dbg !748
  store ptr %prefix, ptr %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !747, metadata !DIExpression()), !dbg !749
  %0 = load ptr, ptr %str.addr, align 8, !dbg !750
  %1 = load ptr, ptr %prefix.addr, align 8, !dbg !751
  %2 = load ptr, ptr %prefix.addr, align 8, !dbg !752
  %call = call i64 @strlen(ptr noundef %2) #8, !dbg !753
  %call1 = call i32 @strncmp(ptr noundef %0, ptr noundef %1, i64 noundef %call) #8, !dbg !754
  %cmp = icmp eq i32 %call1, 0, !dbg !755
  ret i1 %cmp, !dbg !756
}

; Function Attrs: noredzone
declare !dbg !757 hidden void @efi_parse_option_graphics(ptr noundef) #4

; Function Attrs: noredzone
declare !dbg !760 hidden i64 @strlen(ptr noundef) #4

; Function Attrs: noredzone nounwind
define hidden void @efi_apply_loadoptions_quirk(ptr noundef %load_options, ptr noundef %load_options_size) #1 !dbg !358 {
entry:
  %load_options.addr = alloca ptr, align 8
  %load_options_size.addr = alloca ptr, align 8
  %load_option = alloca ptr, align 8
  %load_option_unpacked = alloca %struct.efi_load_option_unpacked_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_print_once = alloca i8, align 1
  %tmp = alloca i8, align 1
  %__ret_print_once19 = alloca i8, align 1
  %tmp27 = alloca i8, align 1
  store ptr %load_options, ptr %load_options.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %load_options.addr, metadata !362, metadata !DIExpression()), !dbg !763
  store ptr %load_options_size, ptr %load_options_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %load_options_size.addr, metadata !363, metadata !DIExpression()), !dbg !764
  call void @llvm.lifetime.start.p0(i64 8, ptr %load_option) #7, !dbg !765
  call void @llvm.dbg.declare(metadata ptr %load_option, metadata !364, metadata !DIExpression()), !dbg !766
  %0 = load ptr, ptr %load_options.addr, align 8, !dbg !767
  %1 = load ptr, ptr %0, align 8, !dbg !768
  store ptr %1, ptr %load_option, align 8, !dbg !766
  call void @llvm.lifetime.start.p0(i64 40, ptr %load_option_unpacked) #7, !dbg !769
  call void @llvm.dbg.declare(metadata ptr %load_option_unpacked, metadata !376, metadata !DIExpression()), !dbg !770
  %2 = load ptr, ptr %load_option, align 8, !dbg !771
  %tobool = icmp ne ptr %2, null, !dbg !771
  br i1 %tobool, label %if.end, label %if.then, !dbg !773

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !774

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %load_options_size.addr, align 8, !dbg !775
  %4 = load i32, ptr %3, align 4, !dbg !777
  %conv = zext i32 %4 to i64, !dbg !777
  %cmp = icmp ult i64 %conv, 6, !dbg !778
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !779

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !780

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %load_option, align 8, !dbg !781
  %attributes = getelementptr inbounds %struct.efi_load_option_t, ptr %5, i32 0, i32 0, !dbg !783
  %6 = load i32, ptr %attributes, align 1, !dbg !783
  %and = and i32 %6, -7946, !dbg !784
  %cmp4 = icmp ne i32 %and, 0, !dbg !785
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !786

if.then6:                                         ; preds = %if.end3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !787

if.end7:                                          ; preds = %if.end3
  %7 = load ptr, ptr %load_option, align 8, !dbg !788
  %8 = load ptr, ptr %load_options_size.addr, align 8, !dbg !790
  %9 = load i32, ptr %8, align 4, !dbg !791
  %conv8 = zext i32 %9 to i64, !dbg !791
  %call = call zeroext i1 @efi_load_option_unpack(ptr noundef %load_option_unpacked, ptr noundef %7, i64 noundef %conv8) #8, !dbg !792
  br i1 %call, label %if.end10, label %if.then9, !dbg !793

if.then9:                                         ; preds = %if.end7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !794

if.end10:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_print_once) #7, !dbg !795
  call void @llvm.dbg.declare(metadata ptr %__ret_print_once, metadata !388, metadata !DIExpression()), !dbg !795
  %10 = load i8, ptr @efi_apply_loadoptions_quirk.__print_once, align 1, !dbg !795, !range !502, !noundef !503
  %tobool11 = trunc i8 %10 to i1, !dbg !795
  %lnot = xor i1 %tobool11, true, !dbg !795
  %frombool = zext i1 %lnot to i8, !dbg !795
  store i8 %frombool, ptr %__ret_print_once, align 1, !dbg !795
  %11 = load i8, ptr @efi_apply_loadoptions_quirk.__print_once, align 1, !dbg !796, !range !502, !noundef !503
  %tobool12 = trunc i8 %11 to i1, !dbg !796
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !795

if.then13:                                        ; preds = %if.end10
  store i8 1, ptr @efi_apply_loadoptions_quirk.__print_once, align 1, !dbg !798
  %call14 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.16) #8, !dbg !798
  br label %if.end15, !dbg !798

if.end15:                                         ; preds = %if.then13, %if.end10
  %12 = load i8, ptr %__ret_print_once, align 1, !dbg !795, !range !502, !noundef !503
  %tobool16 = trunc i8 %12 to i1, !dbg !795
  %frombool17 = zext i1 %tobool16 to i8, !dbg !796
  store i8 %frombool17, ptr %tmp, align 1, !dbg !796
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_print_once) #7, !dbg !800
  %13 = load i8, ptr %tmp, align 1, !dbg !795, !range !502, !noundef !503
  %tobool18 = trunc i8 %13 to i1, !dbg !795
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_print_once19) #7, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %__ret_print_once19, metadata !390, metadata !DIExpression()), !dbg !801
  %14 = load i8, ptr @efi_apply_loadoptions_quirk.__print_once.17, align 1, !dbg !801, !range !502, !noundef !503
  %tobool20 = trunc i8 %14 to i1, !dbg !801
  %lnot21 = xor i1 %tobool20, true, !dbg !801
  %frombool22 = zext i1 %lnot21 to i8, !dbg !801
  store i8 %frombool22, ptr %__ret_print_once19, align 1, !dbg !801
  %15 = load i8, ptr @efi_apply_loadoptions_quirk.__print_once.17, align 1, !dbg !802, !range !502, !noundef !503
  %tobool23 = trunc i8 %15 to i1, !dbg !802
  br i1 %tobool23, label %if.end26, label %if.then24, !dbg !801

if.then24:                                        ; preds = %if.end15
  store i8 1, ptr @efi_apply_loadoptions_quirk.__print_once.17, align 1, !dbg !804
  %call25 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.18) #8, !dbg !804
  br label %if.end26, !dbg !804

if.end26:                                         ; preds = %if.then24, %if.end15
  %16 = load i8, ptr %__ret_print_once19, align 1, !dbg !801, !range !502, !noundef !503
  %tobool28 = trunc i8 %16 to i1, !dbg !801
  %frombool29 = zext i1 %tobool28 to i8, !dbg !802
  store i8 %frombool29, ptr %tmp27, align 1, !dbg !802
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_print_once19) #7, !dbg !806
  %17 = load i8, ptr %tmp27, align 1, !dbg !801, !range !502, !noundef !503
  %tobool30 = trunc i8 %17 to i1, !dbg !801
  %optional_data = getelementptr inbounds %struct.efi_load_option_unpacked_t, ptr %load_option_unpacked, i32 0, i32 5, !dbg !807
  %18 = load ptr, ptr %optional_data, align 8, !dbg !807
  %19 = load ptr, ptr %load_options.addr, align 8, !dbg !808
  store ptr %18, ptr %19, align 8, !dbg !809
  %optional_data_size = getelementptr inbounds %struct.efi_load_option_unpacked_t, ptr %load_option_unpacked, i32 0, i32 4, !dbg !810
  %20 = load i32, ptr %optional_data_size, align 8, !dbg !810
  %21 = load ptr, ptr %load_options_size.addr, align 8, !dbg !811
  store i32 %20, ptr %21, align 4, !dbg !812
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !813
  br label %cleanup, !dbg !813

cleanup:                                          ; preds = %if.end26, %if.then9, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr %load_option_unpacked) #7, !dbg !813
  call void @llvm.lifetime.end.p0(i64 8, ptr %load_option) #7, !dbg !813
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !813

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone nounwind
define internal zeroext i1 @efi_load_option_unpack(ptr noundef %dest, ptr noundef %src, i64 noundef %size) #1 !dbg !814 {
entry:
  %retval = alloca i1, align 1
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %pos = alloca ptr, align 8
  %c = alloca i16, align 2
  %header = alloca %struct.efi_generic_dev_path, align 1
  %description = alloca ptr, align 8
  %file_path_list = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !819, metadata !DIExpression()), !dbg !827
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !820, metadata !DIExpression()), !dbg !828
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !821, metadata !DIExpression()), !dbg !829
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #7, !dbg !830
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !822, metadata !DIExpression()), !dbg !831
  call void @llvm.lifetime.start.p0(i64 2, ptr %c) #7, !dbg !832
  call void @llvm.dbg.declare(metadata ptr %c, metadata !823, metadata !DIExpression()), !dbg !833
  call void @llvm.lifetime.start.p0(i64 4, ptr %header) #7, !dbg !834
  call void @llvm.dbg.declare(metadata ptr %header, metadata !824, metadata !DIExpression()), !dbg !835
  call void @llvm.lifetime.start.p0(i64 8, ptr %description) #7, !dbg !836
  call void @llvm.dbg.declare(metadata ptr %description, metadata !825, metadata !DIExpression()), !dbg !837
  call void @llvm.lifetime.start.p0(i64 8, ptr %file_path_list) #7, !dbg !838
  call void @llvm.dbg.declare(metadata ptr %file_path_list, metadata !826, metadata !DIExpression()), !dbg !839
  %0 = load i64, ptr %size.addr, align 8, !dbg !840
  %cmp = icmp ult i64 %0, 6, !dbg !842
  br i1 %cmp, label %if.then, label %if.end, !dbg !843

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !844

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %src.addr, align 8, !dbg !845
  %variable_data = getelementptr inbounds %struct.efi_load_option_t, ptr %1, i32 0, i32 2, !dbg !846
  %arraydecay = getelementptr inbounds [0 x i8], ptr %variable_data, i64 0, i64 0, !dbg !845
  store ptr %arraydecay, ptr %pos, align 8, !dbg !847
  %2 = load i64, ptr %size.addr, align 8, !dbg !848
  %sub = sub i64 %2, 6, !dbg !848
  store i64 %sub, ptr %size.addr, align 8, !dbg !848
  %3 = load ptr, ptr %src.addr, align 8, !dbg !849
  %attributes = getelementptr inbounds %struct.efi_load_option_t, ptr %3, i32 0, i32 0, !dbg !851
  %4 = load i32, ptr %attributes, align 1, !dbg !851
  %and = and i32 %4, -7948, !dbg !852
  %cmp1 = icmp ne i32 %and, 0, !dbg !853
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !854

if.then2:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !855

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %pos, align 8, !dbg !856
  store ptr %5, ptr %description, align 8, !dbg !857
  br label %do.body, !dbg !858

do.body:                                          ; preds = %do.cond, %if.end3
  %6 = load i64, ptr %size.addr, align 8, !dbg !859
  %cmp4 = icmp ult i64 %6, 2, !dbg !862
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !863

if.then5:                                         ; preds = %do.body
  store i1 false, ptr %retval, align 1, !dbg !864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !864

if.end6:                                          ; preds = %do.body
  %7 = load ptr, ptr %pos, align 8, !dbg !865
  %8 = load i16, ptr %7, align 2, !dbg !866
  store i16 %8, ptr %c, align 2, !dbg !867
  %9 = load ptr, ptr %pos, align 8, !dbg !868
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 2, !dbg !868
  store ptr %add.ptr, ptr %pos, align 8, !dbg !868
  %10 = load i64, ptr %size.addr, align 8, !dbg !869
  %sub7 = sub i64 %10, 2, !dbg !869
  store i64 %sub7, ptr %size.addr, align 8, !dbg !869
  br label %do.cond, !dbg !870

do.cond:                                          ; preds = %if.end6
  %11 = load i16, ptr %c, align 2, !dbg !871
  %conv = zext i16 %11 to i32, !dbg !871
  %cmp8 = icmp ne i32 %conv, 0, !dbg !872
  br i1 %cmp8, label %do.body, label %do.end, !dbg !870, !llvm.loop !873

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %pos, align 8, !dbg !875
  store ptr %12, ptr %file_path_list, align 8, !dbg !876
  br label %do.body10, !dbg !877

do.body10:                                        ; preds = %lor.end, %do.end
  %13 = load i64, ptr %size.addr, align 8, !dbg !878
  %cmp11 = icmp ult i64 %13, 4, !dbg !881
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !882

if.then13:                                        ; preds = %do.body10
  store i1 false, ptr %retval, align 1, !dbg !883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !883

if.end14:                                         ; preds = %do.body10
  %14 = load ptr, ptr %pos, align 8, !dbg !884
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %header, ptr align 1 %14, i64 4, i1 false), !dbg !885
  %length = getelementptr inbounds %struct.efi_generic_dev_path, ptr %header, i32 0, i32 2, !dbg !886
  %15 = load i16, ptr %length, align 1, !dbg !886
  %conv15 = zext i16 %15 to i64, !dbg !888
  %cmp16 = icmp ult i64 %conv15, 4, !dbg !889
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !890

if.then18:                                        ; preds = %if.end14
  store i1 false, ptr %retval, align 1, !dbg !891
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !891

if.end19:                                         ; preds = %if.end14
  %16 = load i64, ptr %size.addr, align 8, !dbg !892
  %length20 = getelementptr inbounds %struct.efi_generic_dev_path, ptr %header, i32 0, i32 2, !dbg !894
  %17 = load i16, ptr %length20, align 1, !dbg !894
  %conv21 = zext i16 %17 to i64, !dbg !895
  %cmp22 = icmp ult i64 %16, %conv21, !dbg !896
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !897

if.then24:                                        ; preds = %if.end19
  store i1 false, ptr %retval, align 1, !dbg !898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !898

if.end25:                                         ; preds = %if.end19
  %length26 = getelementptr inbounds %struct.efi_generic_dev_path, ptr %header, i32 0, i32 2, !dbg !899
  %18 = load i16, ptr %length26, align 1, !dbg !899
  %conv27 = zext i16 %18 to i32, !dbg !900
  %19 = load ptr, ptr %pos, align 8, !dbg !901
  %idx.ext = sext i32 %conv27 to i64, !dbg !901
  %add.ptr28 = getelementptr inbounds i8, ptr %19, i64 %idx.ext, !dbg !901
  store ptr %add.ptr28, ptr %pos, align 8, !dbg !901
  %length29 = getelementptr inbounds %struct.efi_generic_dev_path, ptr %header, i32 0, i32 2, !dbg !902
  %20 = load i16, ptr %length29, align 1, !dbg !902
  %conv30 = zext i16 %20 to i64, !dbg !903
  %21 = load i64, ptr %size.addr, align 8, !dbg !904
  %sub31 = sub i64 %21, %conv30, !dbg !904
  store i64 %sub31, ptr %size.addr, align 8, !dbg !904
  br label %do.cond32, !dbg !905

do.cond32:                                        ; preds = %if.end25
  %type = getelementptr inbounds %struct.efi_generic_dev_path, ptr %header, i32 0, i32 0, !dbg !906
  %22 = load i8, ptr %type, align 1, !dbg !906
  %conv33 = zext i8 %22 to i32, !dbg !907
  %cmp34 = icmp ne i32 %conv33, 127, !dbg !908
  br i1 %cmp34, label %land.lhs.true, label %lor.rhs, !dbg !909

land.lhs.true:                                    ; preds = %do.cond32
  %type36 = getelementptr inbounds %struct.efi_generic_dev_path, ptr %header, i32 0, i32 0, !dbg !910
  %23 = load i8, ptr %type36, align 1, !dbg !910
  %conv37 = zext i8 %23 to i32, !dbg !911
  %cmp38 = icmp ne i32 %conv37, 255, !dbg !912
  br i1 %cmp38, label %lor.end, label %lor.rhs, !dbg !913

lor.rhs:                                          ; preds = %land.lhs.true, %do.cond32
  %sub_type = getelementptr inbounds %struct.efi_generic_dev_path, ptr %header, i32 0, i32 1, !dbg !914
  %24 = load i8, ptr %sub_type, align 1, !dbg !914
  %conv40 = zext i8 %24 to i32, !dbg !915
  %cmp41 = icmp ne i32 %conv40, 255, !dbg !916
  br label %lor.end, !dbg !913

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %25 = phi i1 [ true, %land.lhs.true ], [ %cmp41, %lor.rhs ]
  br i1 %25, label %do.body10, label %do.end43, !dbg !905, !llvm.loop !917

do.end43:                                         ; preds = %lor.end
  %26 = load ptr, ptr %pos, align 8, !dbg !919
  %27 = load ptr, ptr %file_path_list, align 8, !dbg !921
  %28 = load ptr, ptr %src.addr, align 8, !dbg !922
  %file_path_list_length = getelementptr inbounds %struct.efi_load_option_t, ptr %28, i32 0, i32 1, !dbg !923
  %29 = load i16, ptr %file_path_list_length, align 1, !dbg !923
  %conv44 = zext i16 %29 to i32, !dbg !922
  %idx.ext45 = sext i32 %conv44 to i64, !dbg !924
  %add.ptr46 = getelementptr inbounds i8, ptr %27, i64 %idx.ext45, !dbg !924
  %cmp47 = icmp ne ptr %26, %add.ptr46, !dbg !925
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !926

if.then49:                                        ; preds = %do.end43
  store i1 false, ptr %retval, align 1, !dbg !927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !927

if.end50:                                         ; preds = %do.end43
  %30 = load ptr, ptr %src.addr, align 8, !dbg !928
  %attributes51 = getelementptr inbounds %struct.efi_load_option_t, ptr %30, i32 0, i32 0, !dbg !929
  %31 = load i32, ptr %attributes51, align 1, !dbg !929
  %32 = load ptr, ptr %dest.addr, align 8, !dbg !930
  %attributes52 = getelementptr inbounds %struct.efi_load_option_unpacked_t, ptr %32, i32 0, i32 0, !dbg !931
  store i32 %31, ptr %attributes52, align 8, !dbg !932
  %33 = load ptr, ptr %src.addr, align 8, !dbg !933
  %file_path_list_length53 = getelementptr inbounds %struct.efi_load_option_t, ptr %33, i32 0, i32 1, !dbg !934
  %34 = load i16, ptr %file_path_list_length53, align 1, !dbg !934
  %35 = load ptr, ptr %dest.addr, align 8, !dbg !935
  %file_path_list_length54 = getelementptr inbounds %struct.efi_load_option_unpacked_t, ptr %35, i32 0, i32 1, !dbg !936
  store i16 %34, ptr %file_path_list_length54, align 4, !dbg !937
  %36 = load ptr, ptr %description, align 8, !dbg !938
  %37 = load ptr, ptr %dest.addr, align 8, !dbg !939
  %description55 = getelementptr inbounds %struct.efi_load_option_unpacked_t, ptr %37, i32 0, i32 2, !dbg !940
  store ptr %36, ptr %description55, align 8, !dbg !941
  %38 = load ptr, ptr %file_path_list, align 8, !dbg !942
  %39 = load ptr, ptr %dest.addr, align 8, !dbg !943
  %file_path_list56 = getelementptr inbounds %struct.efi_load_option_unpacked_t, ptr %39, i32 0, i32 3, !dbg !944
  store ptr %38, ptr %file_path_list56, align 8, !dbg !945
  %40 = load i64, ptr %size.addr, align 8, !dbg !946
  %conv57 = trunc i64 %40 to i32, !dbg !946
  %41 = load ptr, ptr %dest.addr, align 8, !dbg !947
  %optional_data_size = getelementptr inbounds %struct.efi_load_option_unpacked_t, ptr %41, i32 0, i32 4, !dbg !948
  store i32 %conv57, ptr %optional_data_size, align 8, !dbg !949
  %42 = load i64, ptr %size.addr, align 8, !dbg !950
  %tobool = icmp ne i64 %42, 0, !dbg !950
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !950

cond.true:                                        ; preds = %if.end50
  %43 = load ptr, ptr %pos, align 8, !dbg !951
  br label %cond.end, !dbg !950

cond.false:                                       ; preds = %if.end50
  br label %cond.end, !dbg !950

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %43, %cond.true ], [ null, %cond.false ], !dbg !950
  %44 = load ptr, ptr %dest.addr, align 8, !dbg !952
  %optional_data = getelementptr inbounds %struct.efi_load_option_unpacked_t, ptr %44, i32 0, i32 5, !dbg !953
  store ptr %cond, ptr %optional_data, align 8, !dbg !954
  store i1 true, ptr %retval, align 1, !dbg !955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !955

cleanup:                                          ; preds = %cond.end, %if.then49, %if.then24, %if.then18, %if.then13, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %file_path_list) #7, !dbg !956
  call void @llvm.lifetime.end.p0(i64 8, ptr %description) #7, !dbg !956
  call void @llvm.lifetime.end.p0(i64 4, ptr %header) #7, !dbg !956
  call void @llvm.lifetime.end.p0(i64 2, ptr %c) #7, !dbg !956
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #7, !dbg !956
  %45 = load i1, ptr %retval, align 1, !dbg !956
  ret i1 %45, !dbg !956
}

; Function Attrs: noredzone
declare !dbg !957 hidden i32 @efi_printk(ptr noundef, ...) #4

; Function Attrs: noredzone nounwind
define hidden ptr @efi_convert_cmdline(ptr noundef %image, ptr noundef %cmd_line_len) #1 !dbg !960 {
entry:
  %retval = alloca ptr, align 8
  %image.addr = alloca ptr, align 8
  %cmd_line_len.addr = alloca ptr, align 8
  %options = alloca ptr, align 8
  %options_size = alloca i32, align 4
  %options_bytes = alloca i32, align 4
  %safe_options_bytes = alloca i32, align 4
  %cmdline_addr = alloca i64, align 8
  %s2 = alloca ptr, align 8
  %in_quote = alloca i8, align 1
  %status = alloca i64, align 8
  %options_chars = alloca i32, align 4
  %c = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !1184, metadata !DIExpression()), !dbg !1201
  store ptr %cmd_line_len, ptr %cmd_line_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmd_line_len.addr, metadata !1185, metadata !DIExpression()), !dbg !1202
  call void @llvm.lifetime.start.p0(i64 8, ptr %options) #7, !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %options, metadata !1186, metadata !DIExpression()), !dbg !1204
  %call = call zeroext i1 @efi_is_native() #8, !dbg !1205
  br i1 %call, label %cond.true, label %cond.false, !dbg !1205

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %image.addr, align 8, !dbg !1205
  %load_options = getelementptr inbounds %struct.anon.2, ptr %0, i32 0, i32 7, !dbg !1205
  %1 = load ptr, ptr %load_options, align 8, !dbg !1205
  br label %cond.end, !dbg !1205

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %image.addr, align 8, !dbg !1205
  %load_options1 = getelementptr inbounds %struct.anon.3, ptr %2, i32 0, i32 7, !dbg !1205
  %3 = load i32, ptr %load_options1, align 4, !dbg !1205
  %conv = zext i32 %3 to i64, !dbg !1205
  %4 = inttoptr i64 %conv to ptr, !dbg !1205
  br label %cond.end, !dbg !1205

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %4, %cond.false ], !dbg !1205
  store ptr %cond, ptr %options, align 8, !dbg !1204
  call void @llvm.lifetime.start.p0(i64 4, ptr %options_size) #7, !dbg !1206
  call void @llvm.dbg.declare(metadata ptr %options_size, metadata !1187, metadata !DIExpression()), !dbg !1207
  %call2 = call zeroext i1 @efi_is_native() #8, !dbg !1208
  br i1 %call2, label %cond.true4, label %cond.false5, !dbg !1208

cond.true4:                                       ; preds = %cond.end
  %5 = load ptr, ptr %image.addr, align 8, !dbg !1208
  %load_options_size = getelementptr inbounds %struct.anon.2, ptr %5, i32 0, i32 6, !dbg !1208
  %6 = load i32, ptr %load_options_size, align 8, !dbg !1208
  br label %cond.end9, !dbg !1208

cond.false5:                                      ; preds = %cond.end
  %7 = load ptr, ptr %image.addr, align 8, !dbg !1208
  %load_options_size6 = getelementptr inbounds %struct.anon.3, ptr %7, i32 0, i32 6, !dbg !1208
  %8 = load i32, ptr %load_options_size6, align 8, !dbg !1208
  %conv7 = zext i32 %8 to i64, !dbg !1208
  %conv8 = trunc i64 %conv7 to i32, !dbg !1208
  br label %cond.end9, !dbg !1208

cond.end9:                                        ; preds = %cond.false5, %cond.true4
  %cond10 = phi i32 [ %6, %cond.true4 ], [ %conv8, %cond.false5 ], !dbg !1208
  store i32 %cond10, ptr %options_size, align 4, !dbg !1207
  call void @llvm.lifetime.start.p0(i64 4, ptr %options_bytes) #7, !dbg !1209
  call void @llvm.dbg.declare(metadata ptr %options_bytes, metadata !1188, metadata !DIExpression()), !dbg !1210
  store i32 0, ptr %options_bytes, align 4, !dbg !1210
  call void @llvm.lifetime.start.p0(i64 4, ptr %safe_options_bytes) #7, !dbg !1209
  call void @llvm.dbg.declare(metadata ptr %safe_options_bytes, metadata !1189, metadata !DIExpression()), !dbg !1211
  store i32 0, ptr %safe_options_bytes, align 4, !dbg !1211
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmdline_addr) #7, !dbg !1212
  call void @llvm.dbg.declare(metadata ptr %cmdline_addr, metadata !1190, metadata !DIExpression()), !dbg !1213
  store i64 0, ptr %cmdline_addr, align 8, !dbg !1213
  call void @llvm.lifetime.start.p0(i64 8, ptr %s2) #7, !dbg !1214
  call void @llvm.dbg.declare(metadata ptr %s2, metadata !1191, metadata !DIExpression()), !dbg !1215
  call void @llvm.lifetime.start.p0(i64 1, ptr %in_quote) #7, !dbg !1216
  call void @llvm.dbg.declare(metadata ptr %in_quote, metadata !1192, metadata !DIExpression()), !dbg !1217
  store i8 0, ptr %in_quote, align 1, !dbg !1217
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #7, !dbg !1218
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1193, metadata !DIExpression()), !dbg !1219
  call void @llvm.lifetime.start.p0(i64 4, ptr %options_chars) #7, !dbg !1220
  call void @llvm.dbg.declare(metadata ptr %options_chars, metadata !1194, metadata !DIExpression()), !dbg !1221
  %9 = load i32, ptr %options_size, align 4, !dbg !1222
  %cmp = icmp ugt i32 %9, 0, !dbg !1224
  br i1 %cmp, label %if.then, label %if.end, !dbg !1225

if.then:                                          ; preds = %cond.end9
  %10 = load ptr, ptr %options, align 8, !dbg !1226
  %11 = ptrtoint ptr %10 to i64, !dbg !1227
  %12 = load i32, ptr %options_size, align 4, !dbg !1228
  %conv12 = zext i32 %12 to i64, !dbg !1228
  %call13 = call i64 @efi_measure_tagged_event(i64 noundef %11, i64 noundef %conv12, i32 noundef 1) #8, !dbg !1229
  br label %if.end, !dbg !1229

if.end:                                           ; preds = %if.then, %cond.end9
  call void @efi_apply_loadoptions_quirk(ptr noundef %options, ptr noundef %options_size) #8, !dbg !1230
  %13 = load i32, ptr %options_size, align 4, !dbg !1231
  %conv14 = zext i32 %13 to i64, !dbg !1231
  %div = udiv i64 %conv14, 2, !dbg !1232
  %conv15 = trunc i64 %div to i32, !dbg !1231
  store i32 %conv15, ptr %options_chars, align 4, !dbg !1233
  %14 = load ptr, ptr %options, align 8, !dbg !1234
  %tobool = icmp ne ptr %14, null, !dbg !1234
  br i1 %tobool, label %if.then16, label %if.end75, !dbg !1235

if.then16:                                        ; preds = %if.end
  %15 = load ptr, ptr %options, align 8, !dbg !1236
  store ptr %15, ptr %s2, align 8, !dbg !1237
  br label %while.cond, !dbg !1238

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.then16
  %16 = load i32, ptr %options_bytes, align 4, !dbg !1239
  %cmp17 = icmp slt i32 %16, 2048, !dbg !1240
  br i1 %cmp17, label %land.rhs, label %land.end, !dbg !1241

land.rhs:                                         ; preds = %while.cond
  %17 = load i32, ptr %options_chars, align 4, !dbg !1242
  %dec = add i32 %17, -1, !dbg !1242
  store i32 %dec, ptr %options_chars, align 4, !dbg !1242
  %tobool19 = icmp ne i32 %17, 0, !dbg !1241
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %tobool19, %land.rhs ], !dbg !1243
  br i1 %18, label %while.body, label %while.end, !dbg !1238

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 2, ptr %c) #7, !dbg !1244
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1195, metadata !DIExpression()), !dbg !1245
  %19 = load ptr, ptr %s2, align 8, !dbg !1246
  %incdec.ptr = getelementptr inbounds i16, ptr %19, i32 1, !dbg !1246
  store ptr %incdec.ptr, ptr %s2, align 8, !dbg !1246
  %20 = load i16, ptr %19, align 2, !dbg !1247
  store i16 %20, ptr %c, align 2, !dbg !1245
  %21 = load i16, ptr %c, align 2, !dbg !1248
  %conv20 = zext i16 %21 to i32, !dbg !1248
  %cmp21 = icmp slt i32 %conv20, 128, !dbg !1250
  br i1 %cmp21, label %if.then23, label %if.end46, !dbg !1251

if.then23:                                        ; preds = %while.body
  %22 = load i16, ptr %c, align 2, !dbg !1252
  %conv24 = zext i16 %22 to i32, !dbg !1252
  %cmp25 = icmp eq i32 %conv24, 0, !dbg !1255
  br i1 %cmp25, label %if.then30, label %lor.lhs.false, !dbg !1256

lor.lhs.false:                                    ; preds = %if.then23
  %23 = load i16, ptr %c, align 2, !dbg !1257
  %conv27 = zext i16 %23 to i32, !dbg !1257
  %cmp28 = icmp eq i32 %conv27, 10, !dbg !1258
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !1259

if.then30:                                        ; preds = %lor.lhs.false, %if.then23
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1260

if.end31:                                         ; preds = %lor.lhs.false
  %24 = load i16, ptr %c, align 2, !dbg !1261
  %conv32 = zext i16 %24 to i32, !dbg !1261
  %cmp33 = icmp eq i32 %conv32, 34, !dbg !1263
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !1264

if.then35:                                        ; preds = %if.end31
  %25 = load i8, ptr %in_quote, align 1, !dbg !1265, !range !502, !noundef !503
  %tobool36 = trunc i8 %25 to i1, !dbg !1265
  %lnot = xor i1 %tobool36, true, !dbg !1266
  %frombool = zext i1 %lnot to i8, !dbg !1267
  store i8 %frombool, ptr %in_quote, align 1, !dbg !1267
  br label %if.end45, !dbg !1268

if.else:                                          ; preds = %if.end31
  %26 = load i8, ptr %in_quote, align 1, !dbg !1269, !range !502, !noundef !503
  %tobool37 = trunc i8 %26 to i1, !dbg !1269
  br i1 %tobool37, label %if.end44, label %land.lhs.true, !dbg !1271

land.lhs.true:                                    ; preds = %if.else
  %27 = load i16, ptr %c, align 2, !dbg !1272
  %conv38 = trunc i16 %27 to i8, !dbg !1272
  %conv39 = zext i8 %conv38 to i32, !dbg !1272
  %idxprom = sext i32 %conv39 to i64, !dbg !1272
  %arrayidx = getelementptr inbounds [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !1272
  %28 = load i8, ptr %arrayidx, align 1, !dbg !1272
  %conv40 = zext i8 %28 to i32, !dbg !1272
  %and = and i32 %conv40, 32, !dbg !1272
  %cmp41 = icmp ne i32 %and, 0, !dbg !1272
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !1273

if.then43:                                        ; preds = %land.lhs.true
  %29 = load i32, ptr %options_bytes, align 4, !dbg !1274
  store i32 %29, ptr %safe_options_bytes, align 4, !dbg !1275
  br label %if.end44, !dbg !1276

if.end44:                                         ; preds = %if.then43, %land.lhs.true, %if.else
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then35
  %30 = load i32, ptr %options_bytes, align 4, !dbg !1277
  %inc = add nsw i32 %30, 1, !dbg !1277
  store i32 %inc, ptr %options_bytes, align 4, !dbg !1277
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1278, !llvm.loop !1279

if.end46:                                         ; preds = %while.body
  %31 = load i16, ptr %c, align 2, !dbg !1281
  %conv47 = zext i16 %31 to i32, !dbg !1281
  %cmp48 = icmp sge i32 %conv47, 2048, !dbg !1282
  %conv49 = zext i1 %cmp48 to i32, !dbg !1282
  %add = add nsw i32 2, %conv49, !dbg !1283
  %32 = load i32, ptr %options_bytes, align 4, !dbg !1284
  %add50 = add nsw i32 %32, %add, !dbg !1284
  store i32 %add50, ptr %options_bytes, align 4, !dbg !1284
  %33 = load i16, ptr %c, align 2, !dbg !1285
  %conv51 = zext i16 %33 to i32, !dbg !1285
  %and52 = and i32 %conv51, 64512, !dbg !1287
  %cmp53 = icmp eq i32 %and52, 55296, !dbg !1288
  br i1 %cmp53, label %if.then55, label %if.end69, !dbg !1289

if.then55:                                        ; preds = %if.end46
  %34 = load i32, ptr %options_chars, align 4, !dbg !1290
  %tobool56 = icmp ne i32 %34, 0, !dbg !1290
  br i1 %tobool56, label %if.else58, label %if.then57, !dbg !1293

if.then57:                                        ; preds = %if.then55
  %35 = load i32, ptr %options_bytes, align 4, !dbg !1294
  %sub = sub nsw i32 %35, 3, !dbg !1294
  store i32 %sub, ptr %options_bytes, align 4, !dbg !1294
  br label %if.end68, !dbg !1296

if.else58:                                        ; preds = %if.then55
  %36 = load ptr, ptr %s2, align 8, !dbg !1297
  %37 = load i16, ptr %36, align 2, !dbg !1299
  %conv59 = zext i16 %37 to i32, !dbg !1299
  %and60 = and i32 %conv59, 64512, !dbg !1300
  %cmp61 = icmp eq i32 %and60, 56320, !dbg !1301
  br i1 %cmp61, label %if.then63, label %if.end67, !dbg !1302

if.then63:                                        ; preds = %if.else58
  %38 = load i32, ptr %options_bytes, align 4, !dbg !1303
  %inc64 = add nsw i32 %38, 1, !dbg !1303
  store i32 %inc64, ptr %options_bytes, align 4, !dbg !1303
  %39 = load i32, ptr %options_chars, align 4, !dbg !1305
  %dec65 = add i32 %39, -1, !dbg !1305
  store i32 %dec65, ptr %options_chars, align 4, !dbg !1305
  %40 = load ptr, ptr %s2, align 8, !dbg !1306
  %incdec.ptr66 = getelementptr inbounds i16, ptr %40, i32 1, !dbg !1306
  store ptr %incdec.ptr66, ptr %s2, align 8, !dbg !1306
  br label %if.end67, !dbg !1307

if.end67:                                         ; preds = %if.then63, %if.else58
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then57
  br label %if.end69, !dbg !1308

if.end69:                                         ; preds = %if.end68, %if.end46
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1280
  br label %cleanup, !dbg !1280

cleanup:                                          ; preds = %if.end69, %if.end45, %if.then30
  call void @llvm.lifetime.end.p0(i64 2, ptr %c) #7, !dbg !1280
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !1238, !llvm.loop !1279

while.end:                                        ; preds = %cleanup, %land.end
  %41 = load i32, ptr %options_bytes, align 4, !dbg !1309
  %cmp70 = icmp sge i32 %41, 2048, !dbg !1311
  br i1 %cmp70, label %if.then72, label %if.end74, !dbg !1312

if.then72:                                        ; preds = %while.end
  %42 = load i32, ptr %safe_options_bytes, align 4, !dbg !1313
  store i32 %42, ptr %options_bytes, align 4, !dbg !1315
  %43 = load i32, ptr %options_bytes, align 4, !dbg !1316
  %call73 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.19, i32 noundef %43) #8, !dbg !1316
  br label %if.end74, !dbg !1317

if.end74:                                         ; preds = %if.then72, %while.end
  br label %if.end75, !dbg !1318

if.end75:                                         ; preds = %if.end74, %if.end
  %44 = load i32, ptr %options_bytes, align 4, !dbg !1319
  %inc76 = add nsw i32 %44, 1, !dbg !1319
  store i32 %inc76, ptr %options_bytes, align 4, !dbg !1319
  %call77 = call zeroext i1 @efi_is_native() #8, !dbg !1320
  br i1 %call77, label %cond.true79, label %cond.false90, !dbg !1320

cond.true79:                                      ; preds = %if.end75
  %call80 = call zeroext i1 @efi_is_native() #8, !dbg !1320
  br i1 %call80, label %cond.true82, label %cond.false83, !dbg !1320

cond.true82:                                      ; preds = %cond.true79
  %45 = load ptr, ptr @efi_system_table, align 8, !dbg !1320
  %boottime = getelementptr inbounds %struct.anon.1, ptr %45, i32 0, i32 10, !dbg !1320
  %46 = load ptr, ptr %boottime, align 8, !dbg !1320
  br label %cond.end86, !dbg !1320

cond.false83:                                     ; preds = %cond.true79
  %47 = load ptr, ptr @efi_system_table, align 8, !dbg !1320
  %boottime84 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %47, i32 0, i32 10, !dbg !1320
  %48 = load i32, ptr %boottime84, align 4, !dbg !1320
  %conv85 = zext i32 %48 to i64, !dbg !1320
  %49 = inttoptr i64 %conv85 to ptr, !dbg !1320
  br label %cond.end86, !dbg !1320

cond.end86:                                       ; preds = %cond.false83, %cond.true82
  %cond87 = phi ptr [ %46, %cond.true82 ], [ %49, %cond.false83 ], !dbg !1320
  %allocate_pool = getelementptr inbounds %struct.anon, ptr %cond87, i32 0, i32 6, !dbg !1320
  %50 = load ptr, ptr %allocate_pool, align 8, !dbg !1320
  %51 = load i32, ptr %options_bytes, align 4, !dbg !1320
  %conv88 = sext i32 %51 to i64, !dbg !1320
  %call89 = call win64cc i64 %50(i32 noundef 2, i64 noundef %conv88, ptr noundef %cmdline_addr) #8, !dbg !1320
  br label %cond.end104, !dbg !1320

cond.false90:                                     ; preds = %if.end75
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #7, !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1199, metadata !DIExpression()), !dbg !1321
  br label %do.body, !dbg !1322

do.body:                                          ; preds = %cond.false90
  br label %do.cond, !dbg !1324

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1324

do.end:                                           ; preds = %do.cond
  %call91 = call zeroext i1 @efi_is_native() #8, !dbg !1321
  br i1 %call91, label %cond.true93, label %cond.false95, !dbg !1321

cond.true93:                                      ; preds = %do.end
  %52 = load ptr, ptr @efi_system_table, align 8, !dbg !1321
  %boottime94 = getelementptr inbounds %struct.anon.1, ptr %52, i32 0, i32 10, !dbg !1321
  %53 = load ptr, ptr %boottime94, align 8, !dbg !1321
  br label %cond.end98, !dbg !1321

cond.false95:                                     ; preds = %do.end
  %54 = load ptr, ptr @efi_system_table, align 8, !dbg !1321
  %boottime96 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %54, i32 0, i32 10, !dbg !1321
  %55 = load i32, ptr %boottime96, align 4, !dbg !1321
  %conv97 = zext i32 %55 to i64, !dbg !1321
  %56 = inttoptr i64 %conv97 to ptr, !dbg !1321
  br label %cond.end98, !dbg !1321

cond.end98:                                       ; preds = %cond.false95, %cond.true93
  %cond99 = phi ptr [ %53, %cond.true93 ], [ %56, %cond.false95 ], !dbg !1321
  %allocate_pool100 = getelementptr inbounds %struct.anon.0, ptr %cond99, i32 0, i32 6, !dbg !1321
  %57 = load i32, ptr %allocate_pool100, align 4, !dbg !1321
  %58 = load i32, ptr %options_bytes, align 4, !dbg !1321
  %call101 = call ptr @efi64_zero_upper(ptr noundef %cmdline_addr) #8, !dbg !1321
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1321
  %call102 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %57, i32 noundef 2, i32 noundef %58, ptr noundef %call101, ptr noundef %arraydecay) #8, !dbg !1321
  store i64 %call102, ptr %tmp, align 8, !dbg !1321
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #7, !dbg !1320
  %59 = load i64, ptr %tmp, align 8, !dbg !1321
  %call103 = call i64 @__efi64_widen_efi_status(i64 noundef %59) #8, !dbg !1320
  br label %cond.end104, !dbg !1320

cond.end104:                                      ; preds = %cond.end98, %cond.end86
  %cond105 = phi i64 [ %call89, %cond.end86 ], [ %call103, %cond.end98 ], !dbg !1320
  store i64 %cond105, ptr %status, align 8, !dbg !1326
  %60 = load i64, ptr %status, align 8, !dbg !1327
  %cmp106 = icmp ne i64 %60, 0, !dbg !1329
  br i1 %cmp106, label %if.then108, label %if.end109, !dbg !1330

if.then108:                                       ; preds = %cond.end104
  store ptr null, ptr %retval, align 8, !dbg !1331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup113, !dbg !1331

if.end109:                                        ; preds = %cond.end104
  %61 = load i64, ptr %cmdline_addr, align 8, !dbg !1332
  %62 = inttoptr i64 %61 to ptr, !dbg !1333
  %63 = load i32, ptr %options_bytes, align 4, !dbg !1334
  %conv110 = sext i32 %63 to i64, !dbg !1334
  %64 = load i32, ptr %options_bytes, align 4, !dbg !1335
  %sub111 = sub nsw i32 %64, 1, !dbg !1336
  %65 = load ptr, ptr %options, align 8, !dbg !1337
  %call112 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %62, i64 noundef %conv110, ptr noundef @.str.20, i32 noundef %sub111, ptr noundef %65) #8, !dbg !1338
  %66 = load i32, ptr %options_bytes, align 4, !dbg !1339
  %67 = load ptr, ptr %cmd_line_len.addr, align 8, !dbg !1340
  store i32 %66, ptr %67, align 4, !dbg !1341
  %68 = load i64, ptr %cmdline_addr, align 8, !dbg !1342
  %69 = inttoptr i64 %68 to ptr, !dbg !1343
  store ptr %69, ptr %retval, align 8, !dbg !1344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup113, !dbg !1344

cleanup113:                                       ; preds = %if.end109, %if.then108
  call void @llvm.lifetime.end.p0(i64 4, ptr %options_chars) #7, !dbg !1345
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #7, !dbg !1345
  call void @llvm.lifetime.end.p0(i64 1, ptr %in_quote) #7, !dbg !1345
  call void @llvm.lifetime.end.p0(i64 8, ptr %s2) #7, !dbg !1345
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmdline_addr) #7, !dbg !1345
  call void @llvm.lifetime.end.p0(i64 4, ptr %safe_options_bytes) #7, !dbg !1345
  call void @llvm.lifetime.end.p0(i64 4, ptr %options_bytes) #7, !dbg !1345
  call void @llvm.lifetime.end.p0(i64 4, ptr %options_size) #7, !dbg !1345
  call void @llvm.lifetime.end.p0(i64 8, ptr %options) #7, !dbg !1345
  %70 = load ptr, ptr %retval, align 8, !dbg !1345
  ret ptr %70, !dbg !1345

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone nounwind
define internal i64 @efi_measure_tagged_event(i64 noundef %load_addr, i64 noundef %load_size, i32 noundef %event) #1 !dbg !1346 {
entry:
  %retval = alloca i64, align 8
  %load_addr.addr = alloca i64, align 8
  %load_size.addr = alloca i64, align 8
  %event.addr = alloca i32, align 4
  %tcg2_guid = alloca %struct.guid_t, align 4
  %tcg2 = alloca ptr, align 8
  %status = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %evt = alloca ptr, align 8
  %size = alloca i32, align 4
  %__pad38 = alloca [3 x i64], align 16
  %tmp42 = alloca i64, align 8
  %.compoundliteral = alloca %struct.efi_tcg2_event, align 1
  %.compoundliteral64 = alloca %struct.efi_tcg2_tagged_event, align 1
  %__inst = alloca ptr, align 8
  %tmp80 = alloca i64, align 8
  %__pad87 = alloca [3 x i64], align 16
  %tmp91 = alloca i64, align 8
  %__pad113 = alloca [3 x i64], align 16
  %tmp117 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %load_addr, ptr %load_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %load_addr.addr, metadata !1350, metadata !DIExpression()), !dbg !1426
  store i64 %load_size, ptr %load_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %load_size.addr, metadata !1351, metadata !DIExpression()), !dbg !1427
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !1352, metadata !DIExpression()), !dbg !1428
  call void @llvm.lifetime.start.p0(i64 16, ptr %tcg2_guid) #7, !dbg !1429
  call void @llvm.dbg.declare(metadata ptr %tcg2_guid, metadata !1353, metadata !DIExpression()), !dbg !1430
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tcg2_guid, ptr align 4 @__const.efi_measure_tagged_event.tcg2_guid, i64 16, i1 false), !dbg !1430
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcg2) #7, !dbg !1431
  call void @llvm.dbg.declare(metadata ptr %tcg2, metadata !1354, metadata !DIExpression()), !dbg !1432
  store ptr null, ptr %tcg2, align 8, !dbg !1432
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #7, !dbg !1433
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1399, metadata !DIExpression()), !dbg !1434
  %call = call zeroext i1 @efi_is_native() #8, !dbg !1435
  br i1 %call, label %cond.true, label %cond.false5, !dbg !1435

cond.true:                                        ; preds = %entry
  %call1 = call zeroext i1 @efi_is_native() #8, !dbg !1435
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !1435

cond.true2:                                       ; preds = %cond.true
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !1435
  %boottime = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 10, !dbg !1435
  %1 = load ptr, ptr %boottime, align 8, !dbg !1435
  br label %cond.end, !dbg !1435

cond.false:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !1435
  %boottime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 10, !dbg !1435
  %3 = load i32, ptr %boottime3, align 4, !dbg !1435
  %conv = zext i32 %3 to i64, !dbg !1435
  %4 = inttoptr i64 %conv to ptr, !dbg !1435
  br label %cond.end, !dbg !1435

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %1, %cond.true2 ], [ %4, %cond.false ], !dbg !1435
  %locate_protocol = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 38, !dbg !1435
  %5 = load ptr, ptr %locate_protocol, align 8, !dbg !1435
  %call4 = call win64cc i64 %5(ptr noundef %tcg2_guid, ptr noundef null, ptr noundef %tcg2) #8, !dbg !1435
  br label %cond.end19, !dbg !1435

cond.false5:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #7, !dbg !1436
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1400, metadata !DIExpression()), !dbg !1436
  br label %do.body, !dbg !1437

do.body:                                          ; preds = %cond.false5
  br label %do.cond, !dbg !1439

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1439

do.end:                                           ; preds = %do.cond
  %call6 = call zeroext i1 @efi_is_native() #8, !dbg !1436
  br i1 %call6, label %cond.true8, label %cond.false10, !dbg !1436

cond.true8:                                       ; preds = %do.end
  %6 = load ptr, ptr @efi_system_table, align 8, !dbg !1436
  %boottime9 = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 10, !dbg !1436
  %7 = load ptr, ptr %boottime9, align 8, !dbg !1436
  br label %cond.end13, !dbg !1436

cond.false10:                                     ; preds = %do.end
  %8 = load ptr, ptr @efi_system_table, align 8, !dbg !1436
  %boottime11 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %8, i32 0, i32 10, !dbg !1436
  %9 = load i32, ptr %boottime11, align 4, !dbg !1436
  %conv12 = zext i32 %9 to i64, !dbg !1436
  %10 = inttoptr i64 %conv12 to ptr, !dbg !1436
  br label %cond.end13, !dbg !1436

cond.end13:                                       ; preds = %cond.false10, %cond.true8
  %cond14 = phi ptr [ %7, %cond.true8 ], [ %10, %cond.false10 ], !dbg !1436
  %locate_protocol15 = getelementptr inbounds %struct.anon.0, ptr %cond14, i32 0, i32 38, !dbg !1436
  %11 = load i32, ptr %locate_protocol15, align 4, !dbg !1436
  %call16 = call ptr @efi64_zero_upper(ptr noundef %tcg2) #8, !dbg !1436
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1436
  %call17 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %11, ptr noundef %tcg2_guid, ptr noundef null, ptr noundef %call16, ptr noundef %arraydecay) #8, !dbg !1436
  store i64 %call17, ptr %tmp, align 8, !dbg !1436
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #7, !dbg !1435
  %12 = load i64, ptr %tmp, align 8, !dbg !1436
  %call18 = call i64 @__efi64_widen_efi_status(i64 noundef %12) #8, !dbg !1435
  br label %cond.end19, !dbg !1435

cond.end19:                                       ; preds = %cond.end13, %cond.end
  %cond20 = phi i64 [ %call4, %cond.end ], [ %call18, %cond.end13 ], !dbg !1435
  %13 = load ptr, ptr %tcg2, align 8, !dbg !1441
  %tobool = icmp ne ptr %13, null, !dbg !1441
  br i1 %tobool, label %if.then, label %if.end138, !dbg !1442

if.then:                                          ; preds = %cond.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %evt) #7, !dbg !1443
  call void @llvm.dbg.declare(metadata ptr %evt, metadata !1402, metadata !DIExpression()), !dbg !1444
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #7, !dbg !1445
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1416, metadata !DIExpression()), !dbg !1446
  %14 = load i32, ptr %event.addr, align 4, !dbg !1447
  %idxprom = zext i32 %14 to i64, !dbg !1448
  %arrayidx = getelementptr inbounds [2 x %struct.anon.9], ptr @events, i64 0, i64 %idxprom, !dbg !1448
  %event_data_len = getelementptr inbounds %struct.anon.9, ptr %arrayidx, i32 0, i32 2, !dbg !1449
  %15 = load i32, ptr %event_data_len, align 8, !dbg !1449
  %conv21 = zext i32 %15 to i64, !dbg !1448
  %add = add i64 26, %conv21, !dbg !1450
  %conv22 = trunc i64 %add to i32, !dbg !1451
  store i32 %conv22, ptr %size, align 4, !dbg !1446
  %call23 = call zeroext i1 @efi_is_native() #8, !dbg !1452
  br i1 %call23, label %cond.true25, label %cond.false37, !dbg !1452

cond.true25:                                      ; preds = %if.then
  %call26 = call zeroext i1 @efi_is_native() #8, !dbg !1452
  br i1 %call26, label %cond.true28, label %cond.false30, !dbg !1452

cond.true28:                                      ; preds = %cond.true25
  %16 = load ptr, ptr @efi_system_table, align 8, !dbg !1452
  %boottime29 = getelementptr inbounds %struct.anon.1, ptr %16, i32 0, i32 10, !dbg !1452
  %17 = load ptr, ptr %boottime29, align 8, !dbg !1452
  br label %cond.end33, !dbg !1452

cond.false30:                                     ; preds = %cond.true25
  %18 = load ptr, ptr @efi_system_table, align 8, !dbg !1452
  %boottime31 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %18, i32 0, i32 10, !dbg !1452
  %19 = load i32, ptr %boottime31, align 4, !dbg !1452
  %conv32 = zext i32 %19 to i64, !dbg !1452
  %20 = inttoptr i64 %conv32 to ptr, !dbg !1452
  br label %cond.end33, !dbg !1452

cond.end33:                                       ; preds = %cond.false30, %cond.true28
  %cond34 = phi ptr [ %17, %cond.true28 ], [ %20, %cond.false30 ], !dbg !1452
  %allocate_pool = getelementptr inbounds %struct.anon, ptr %cond34, i32 0, i32 6, !dbg !1452
  %21 = load ptr, ptr %allocate_pool, align 8, !dbg !1452
  %22 = load i32, ptr %size, align 4, !dbg !1452
  %conv35 = sext i32 %22 to i64, !dbg !1452
  %call36 = call win64cc i64 %21(i32 noundef 2, i64 noundef %conv35, ptr noundef %evt) #8, !dbg !1452
  br label %cond.end57, !dbg !1452

cond.false37:                                     ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad38) #7, !dbg !1453
  call void @llvm.dbg.declare(metadata ptr %__pad38, metadata !1417, metadata !DIExpression()), !dbg !1453
  br label %do.body39, !dbg !1454

do.body39:                                        ; preds = %cond.false37
  br label %do.cond40, !dbg !1456

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !1456

do.end41:                                         ; preds = %do.cond40
  %call43 = call zeroext i1 @efi_is_native() #8, !dbg !1453
  br i1 %call43, label %cond.true45, label %cond.false47, !dbg !1453

cond.true45:                                      ; preds = %do.end41
  %23 = load ptr, ptr @efi_system_table, align 8, !dbg !1453
  %boottime46 = getelementptr inbounds %struct.anon.1, ptr %23, i32 0, i32 10, !dbg !1453
  %24 = load ptr, ptr %boottime46, align 8, !dbg !1453
  br label %cond.end50, !dbg !1453

cond.false47:                                     ; preds = %do.end41
  %25 = load ptr, ptr @efi_system_table, align 8, !dbg !1453
  %boottime48 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %25, i32 0, i32 10, !dbg !1453
  %26 = load i32, ptr %boottime48, align 4, !dbg !1453
  %conv49 = zext i32 %26 to i64, !dbg !1453
  %27 = inttoptr i64 %conv49 to ptr, !dbg !1453
  br label %cond.end50, !dbg !1453

cond.end50:                                       ; preds = %cond.false47, %cond.true45
  %cond51 = phi ptr [ %24, %cond.true45 ], [ %27, %cond.false47 ], !dbg !1453
  %allocate_pool52 = getelementptr inbounds %struct.anon.0, ptr %cond51, i32 0, i32 6, !dbg !1453
  %28 = load i32, ptr %allocate_pool52, align 4, !dbg !1453
  %29 = load i32, ptr %size, align 4, !dbg !1453
  %call53 = call ptr @efi64_zero_upper(ptr noundef %evt) #8, !dbg !1453
  %arraydecay54 = getelementptr inbounds [3 x i64], ptr %__pad38, i64 0, i64 0, !dbg !1453
  %call55 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %28, i32 noundef 2, i32 noundef %29, ptr noundef %call53, ptr noundef %arraydecay54) #8, !dbg !1453
  store i64 %call55, ptr %tmp42, align 8, !dbg !1453
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad38) #7, !dbg !1452
  %30 = load i64, ptr %tmp42, align 8, !dbg !1453
  %call56 = call i64 @__efi64_widen_efi_status(i64 noundef %30) #8, !dbg !1452
  br label %cond.end57, !dbg !1452

cond.end57:                                       ; preds = %cond.end50, %cond.end33
  %cond58 = phi i64 [ %call36, %cond.end33 ], [ %call56, %cond.end50 ], !dbg !1452
  store i64 %cond58, ptr %status, align 8, !dbg !1458
  %31 = load i64, ptr %status, align 8, !dbg !1459
  %cmp = icmp ne i64 %31, 0, !dbg !1461
  br i1 %cmp, label %if.then60, label %if.end, !dbg !1462

if.then60:                                        ; preds = %cond.end57
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1463

if.end:                                           ; preds = %cond.end57
  %32 = load ptr, ptr %evt, align 8, !dbg !1464
  %event_data = getelementptr inbounds %struct.efi_measured_event, ptr %32, i32 0, i32 0, !dbg !1465
  %event_size = getelementptr inbounds %struct.efi_tcg2_event, ptr %.compoundliteral, i32 0, i32 0, !dbg !1466
  %33 = load i32, ptr %size, align 4, !dbg !1467
  store i32 %33, ptr %event_size, align 1, !dbg !1466
  %event_header = getelementptr inbounds %struct.efi_tcg2_event, ptr %.compoundliteral, i32 0, i32 1, !dbg !1466
  %header_size = getelementptr inbounds %struct.anon.10, ptr %event_header, i32 0, i32 0, !dbg !1468
  store i32 14, ptr %header_size, align 1, !dbg !1468
  %header_version = getelementptr inbounds %struct.anon.10, ptr %event_header, i32 0, i32 1, !dbg !1468
  store i16 1, ptr %header_version, align 1, !dbg !1468
  %pcr_index = getelementptr inbounds %struct.anon.10, ptr %event_header, i32 0, i32 2, !dbg !1468
  %34 = load i32, ptr %event.addr, align 4, !dbg !1469
  %idxprom61 = zext i32 %34 to i64, !dbg !1470
  %arrayidx62 = getelementptr inbounds [2 x %struct.anon.9], ptr @events, i64 0, i64 %idxprom61, !dbg !1470
  %pcr_index63 = getelementptr inbounds %struct.anon.9, ptr %arrayidx62, i32 0, i32 0, !dbg !1471
  %35 = load i32, ptr %pcr_index63, align 16, !dbg !1471
  store i32 %35, ptr %pcr_index, align 1, !dbg !1468
  %event_type = getelementptr inbounds %struct.anon.10, ptr %event_header, i32 0, i32 3, !dbg !1468
  store i32 6, ptr %event_type, align 1, !dbg !1468
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %event_data, ptr align 1 %.compoundliteral, i64 18, i1 false), !dbg !1472
  %36 = load ptr, ptr %evt, align 8, !dbg !1473
  %tagged_event = getelementptr inbounds %struct.efi_measured_event, ptr %36, i32 0, i32 1, !dbg !1474
  %tagged_event_id = getelementptr inbounds %struct.efi_tcg2_tagged_event, ptr %.compoundliteral64, i32 0, i32 0, !dbg !1475
  %37 = load i32, ptr %event.addr, align 4, !dbg !1476
  %idxprom65 = zext i32 %37 to i64, !dbg !1477
  %arrayidx66 = getelementptr inbounds [2 x %struct.anon.9], ptr @events, i64 0, i64 %idxprom65, !dbg !1477
  %event_id = getelementptr inbounds %struct.anon.9, ptr %arrayidx66, i32 0, i32 1, !dbg !1478
  %38 = load i32, ptr %event_id, align 4, !dbg !1478
  store i32 %38, ptr %tagged_event_id, align 1, !dbg !1475
  %tagged_event_data_size = getelementptr inbounds %struct.efi_tcg2_tagged_event, ptr %.compoundliteral64, i32 0, i32 1, !dbg !1475
  %39 = load i32, ptr %event.addr, align 4, !dbg !1479
  %idxprom67 = zext i32 %39 to i64, !dbg !1480
  %arrayidx68 = getelementptr inbounds [2 x %struct.anon.9], ptr @events, i64 0, i64 %idxprom67, !dbg !1480
  %event_data_len69 = getelementptr inbounds %struct.anon.9, ptr %arrayidx68, i32 0, i32 2, !dbg !1481
  %40 = load i32, ptr %event_data_len69, align 8, !dbg !1481
  store i32 %40, ptr %tagged_event_data_size, align 1, !dbg !1475
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tagged_event, ptr align 1 %.compoundliteral64, i64 8, i1 false), !dbg !1482
  %41 = load ptr, ptr %evt, align 8, !dbg !1483
  %tagged_event_data = getelementptr inbounds %struct.efi_measured_event, ptr %41, i32 0, i32 2, !dbg !1484
  %arraydecay70 = getelementptr inbounds [0 x i8], ptr %tagged_event_data, i64 0, i64 0, !dbg !1483
  %42 = load i32, ptr %event.addr, align 4, !dbg !1485
  %idxprom71 = zext i32 %42 to i64, !dbg !1486
  %arrayidx72 = getelementptr inbounds [2 x %struct.anon.9], ptr @events, i64 0, i64 %idxprom71, !dbg !1486
  %event_data73 = getelementptr inbounds %struct.anon.9, ptr %arrayidx72, i32 0, i32 3, !dbg !1487
  %arraydecay74 = getelementptr inbounds [52 x i8], ptr %event_data73, i64 0, i64 0, !dbg !1486
  %43 = load i32, ptr %event.addr, align 4, !dbg !1488
  %idxprom75 = zext i32 %43 to i64, !dbg !1489
  %arrayidx76 = getelementptr inbounds [2 x %struct.anon.9], ptr @events, i64 0, i64 %idxprom75, !dbg !1489
  %event_data_len77 = getelementptr inbounds %struct.anon.9, ptr %arrayidx76, i32 0, i32 2, !dbg !1490
  %44 = load i32, ptr %event_data_len77, align 8, !dbg !1490
  %conv78 = zext i32 %44 to i64, !dbg !1489
  %call79 = call ptr @memcpy(ptr noundef %arraydecay70, ptr noundef %arraydecay74, i64 noundef %conv78) #8, !dbg !1491
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #7, !dbg !1492
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !1419, metadata !DIExpression()), !dbg !1492
  %45 = load ptr, ptr %tcg2, align 8, !dbg !1492
  store ptr %45, ptr %__inst, align 8, !dbg !1492
  %call81 = call zeroext i1 @efi_is_native() #8, !dbg !1492
  br i1 %call81, label %cond.true83, label %cond.false86, !dbg !1492

cond.true83:                                      ; preds = %if.end
  %46 = load ptr, ptr %__inst, align 8, !dbg !1492
  %hash_log_extend_event = getelementptr inbounds %struct.anon.11, ptr %46, i32 0, i32 2, !dbg !1492
  %47 = load ptr, ptr %hash_log_extend_event, align 8, !dbg !1492
  %48 = load ptr, ptr %__inst, align 8, !dbg !1492
  %49 = load i64, ptr %load_addr.addr, align 8, !dbg !1492
  %50 = load i64, ptr %load_size.addr, align 8, !dbg !1492
  %51 = load ptr, ptr %evt, align 8, !dbg !1492
  %event_data84 = getelementptr inbounds %struct.efi_measured_event, ptr %51, i32 0, i32 0, !dbg !1492
  %call85 = call win64cc i64 %47(ptr noundef %48, i64 noundef 0, i64 noundef %49, i64 noundef %50, ptr noundef %event_data84) #8, !dbg !1492
  br label %cond.end97, !dbg !1492

cond.false86:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad87) #7, !dbg !1493
  call void @llvm.dbg.declare(metadata ptr %__pad87, metadata !1421, metadata !DIExpression()), !dbg !1493
  br label %do.body88, !dbg !1494

do.body88:                                        ; preds = %cond.false86
  br label %do.cond89, !dbg !1496

do.cond89:                                        ; preds = %do.body88
  br label %do.end90, !dbg !1496

do.end90:                                         ; preds = %do.cond89
  %52 = load ptr, ptr %__inst, align 8, !dbg !1493
  %hash_log_extend_event92 = getelementptr inbounds %struct.anon.12, ptr %52, i32 0, i32 2, !dbg !1493
  %53 = load i32, ptr %hash_log_extend_event92, align 8, !dbg !1493
  %54 = load ptr, ptr %__inst, align 8, !dbg !1493
  %55 = load i64, ptr %load_addr.addr, align 8, !dbg !1493
  %56 = load i64, ptr %load_size.addr, align 8, !dbg !1493
  %57 = load ptr, ptr %evt, align 8, !dbg !1493
  %event_data93 = getelementptr inbounds %struct.efi_measured_event, ptr %57, i32 0, i32 0, !dbg !1493
  %arraydecay94 = getelementptr inbounds [3 x i64], ptr %__pad87, i64 0, i64 0, !dbg !1493
  %call95 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %53, ptr noundef %54, i32 noundef 0, i64 noundef 0, i64 noundef %55, i64 noundef 0, i64 noundef %56, i64 noundef 0, ptr noundef %event_data93, ptr noundef %arraydecay94) #8, !dbg !1493
  store i64 %call95, ptr %tmp91, align 8, !dbg !1493
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad87) #7, !dbg !1492
  %58 = load i64, ptr %tmp91, align 8, !dbg !1493
  %call96 = call i64 @__efi64_widen_efi_status(i64 noundef %58) #8, !dbg !1492
  br label %cond.end97, !dbg !1492

cond.end97:                                       ; preds = %do.end90, %cond.true83
  %cond98 = phi i64 [ %call85, %cond.true83 ], [ %call96, %do.end90 ], !dbg !1492
  store i64 %cond98, ptr %tmp80, align 8, !dbg !1492
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #7, !dbg !1498
  %59 = load i64, ptr %tmp80, align 8, !dbg !1492
  store i64 %59, ptr %status, align 8, !dbg !1499
  %call99 = call zeroext i1 @efi_is_native() #8, !dbg !1500
  br i1 %call99, label %cond.true101, label %cond.false112, !dbg !1500

cond.true101:                                     ; preds = %cond.end97
  %call102 = call zeroext i1 @efi_is_native() #8, !dbg !1500
  br i1 %call102, label %cond.true104, label %cond.false106, !dbg !1500

cond.true104:                                     ; preds = %cond.true101
  %60 = load ptr, ptr @efi_system_table, align 8, !dbg !1500
  %boottime105 = getelementptr inbounds %struct.anon.1, ptr %60, i32 0, i32 10, !dbg !1500
  %61 = load ptr, ptr %boottime105, align 8, !dbg !1500
  br label %cond.end109, !dbg !1500

cond.false106:                                    ; preds = %cond.true101
  %62 = load ptr, ptr @efi_system_table, align 8, !dbg !1500
  %boottime107 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %62, i32 0, i32 10, !dbg !1500
  %63 = load i32, ptr %boottime107, align 4, !dbg !1500
  %conv108 = zext i32 %63 to i64, !dbg !1500
  %64 = inttoptr i64 %conv108 to ptr, !dbg !1500
  br label %cond.end109, !dbg !1500

cond.end109:                                      ; preds = %cond.false106, %cond.true104
  %cond110 = phi ptr [ %61, %cond.true104 ], [ %64, %cond.false106 ], !dbg !1500
  %free_pool = getelementptr inbounds %struct.anon, ptr %cond110, i32 0, i32 7, !dbg !1500
  %65 = load ptr, ptr %free_pool, align 8, !dbg !1500
  %66 = load ptr, ptr %evt, align 8, !dbg !1500
  %call111 = call win64cc i64 %65(ptr noundef %66) #8, !dbg !1500
  br label %cond.end131, !dbg !1500

cond.false112:                                    ; preds = %cond.end97
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad113) #7, !dbg !1501
  call void @llvm.dbg.declare(metadata ptr %__pad113, metadata !1423, metadata !DIExpression()), !dbg !1501
  br label %do.body114, !dbg !1502

do.body114:                                       ; preds = %cond.false112
  br label %do.cond115, !dbg !1504

do.cond115:                                       ; preds = %do.body114
  br label %do.end116, !dbg !1504

do.end116:                                        ; preds = %do.cond115
  %call118 = call zeroext i1 @efi_is_native() #8, !dbg !1501
  br i1 %call118, label %cond.true120, label %cond.false122, !dbg !1501

cond.true120:                                     ; preds = %do.end116
  %67 = load ptr, ptr @efi_system_table, align 8, !dbg !1501
  %boottime121 = getelementptr inbounds %struct.anon.1, ptr %67, i32 0, i32 10, !dbg !1501
  %68 = load ptr, ptr %boottime121, align 8, !dbg !1501
  br label %cond.end125, !dbg !1501

cond.false122:                                    ; preds = %do.end116
  %69 = load ptr, ptr @efi_system_table, align 8, !dbg !1501
  %boottime123 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %69, i32 0, i32 10, !dbg !1501
  %70 = load i32, ptr %boottime123, align 4, !dbg !1501
  %conv124 = zext i32 %70 to i64, !dbg !1501
  %71 = inttoptr i64 %conv124 to ptr, !dbg !1501
  br label %cond.end125, !dbg !1501

cond.end125:                                      ; preds = %cond.false122, %cond.true120
  %cond126 = phi ptr [ %68, %cond.true120 ], [ %71, %cond.false122 ], !dbg !1501
  %free_pool127 = getelementptr inbounds %struct.anon.0, ptr %cond126, i32 0, i32 7, !dbg !1501
  %72 = load i32, ptr %free_pool127, align 8, !dbg !1501
  %73 = load ptr, ptr %evt, align 8, !dbg !1501
  %arraydecay128 = getelementptr inbounds [3 x i64], ptr %__pad113, i64 0, i64 0, !dbg !1501
  %call129 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %72, ptr noundef %73, ptr noundef %arraydecay128) #8, !dbg !1501
  store i64 %call129, ptr %tmp117, align 8, !dbg !1501
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad113) #7, !dbg !1500
  %74 = load i64, ptr %tmp117, align 8, !dbg !1501
  %call130 = call i64 @__efi64_widen_efi_status(i64 noundef %74) #8, !dbg !1500
  br label %cond.end131, !dbg !1500

cond.end131:                                      ; preds = %cond.end125, %cond.end109
  %cond132 = phi i64 [ %call111, %cond.end109 ], [ %call130, %cond.end125 ], !dbg !1500
  %75 = load i64, ptr %status, align 8, !dbg !1506
  %cmp133 = icmp ne i64 %75, 0, !dbg !1508
  br i1 %cmp133, label %if.then135, label %if.end136, !dbg !1509

if.then135:                                       ; preds = %cond.end131
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1510

if.end136:                                        ; preds = %cond.end131
  store i64 0, ptr %retval, align 8, !dbg !1511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1511

cleanup:                                          ; preds = %if.then135, %if.then60, %if.end136
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #7, !dbg !1512
  call void @llvm.lifetime.end.p0(i64 8, ptr %evt) #7, !dbg !1512
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup140 [
    i32 6, label %fail
  ]

if.end138:                                        ; preds = %cond.end19
  store i64 -9223372036854775805, ptr %retval, align 8, !dbg !1513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup140, !dbg !1513

fail:                                             ; preds = %cleanup
  call void @llvm.dbg.label(metadata !1425), !dbg !1514
  %76 = load i32, ptr %event.addr, align 4, !dbg !1515
  %77 = load i64, ptr %status, align 8, !dbg !1515
  %call139 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.29, i32 noundef %76, i64 noundef %77) #8, !dbg !1515
  %78 = load i64, ptr %status, align 8, !dbg !1516
  store i64 %78, ptr %retval, align 8, !dbg !1517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup140, !dbg !1517

cleanup140:                                       ; preds = %fail, %cleanup, %if.end138
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #7, !dbg !1518
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcg2) #7, !dbg !1518
  call void @llvm.lifetime.end.p0(i64 16, ptr %tcg2_guid) #7, !dbg !1518
  %79 = load i64, ptr %retval, align 8, !dbg !1518
  ret i64 %79, !dbg !1518
}

; Function Attrs: noredzone
declare !dbg !1519 hidden i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone nounwind
define hidden i64 @efi_exit_boot_services(ptr noundef %handle, ptr noundef %priv, ptr noundef %priv_func) #1 !dbg !1523 {
entry:
  %retval = alloca i64, align 8
  %handle.addr = alloca ptr, align 8
  %priv.addr = alloca ptr, align 8
  %priv_func.addr = alloca ptr, align 8
  %map = alloca ptr, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %__pad41 = alloca [3 x i64], align 16
  %tmp45 = alloca i64, align 8
  %__pad82 = alloca [3 x i64], align 16
  %tmp86 = alloca i64, align 8
  %__pad134 = alloca [3 x i64], align 16
  %tmp138 = alloca i64, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1541, metadata !DIExpression()), !dbg !1558
  store ptr %priv, ptr %priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv.addr, metadata !1542, metadata !DIExpression()), !dbg !1559
  store ptr %priv_func, ptr %priv_func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv_func.addr, metadata !1543, metadata !DIExpression()), !dbg !1560
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #7, !dbg !1561
  call void @llvm.dbg.declare(metadata ptr %map, metadata !1544, metadata !DIExpression()), !dbg !1562
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #7, !dbg !1563
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1545, metadata !DIExpression()), !dbg !1564
  %0 = load i8, ptr @efi_disable_pci_dma, align 1, !dbg !1565, !range !502, !noundef !503
  %tobool = trunc i8 %0 to i1, !dbg !1565
  br i1 %tobool, label %if.then, label %if.end, !dbg !1567

if.then:                                          ; preds = %entry
  call void @efi_pci_disable_bridge_busmaster() #8, !dbg !1568
  br label %if.end, !dbg !1568

if.end:                                           ; preds = %if.then, %entry
  %call = call i64 @efi_get_memory_map(ptr noundef %map, i1 noundef zeroext true) #8, !dbg !1569
  store i64 %call, ptr %status, align 8, !dbg !1570
  %1 = load i64, ptr %status, align 8, !dbg !1571
  %cmp = icmp ne i64 %1, 0, !dbg !1573
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1574

if.then1:                                         ; preds = %if.end
  %2 = load i64, ptr %status, align 8, !dbg !1575
  store i64 %2, ptr %retval, align 8, !dbg !1576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1576

if.end2:                                          ; preds = %if.end
  %3 = load ptr, ptr %priv_func.addr, align 8, !dbg !1577
  %4 = load ptr, ptr %map, align 8, !dbg !1578
  %5 = load ptr, ptr %priv.addr, align 8, !dbg !1579
  %call3 = call i64 %3(ptr noundef %4, ptr noundef %5) #8, !dbg !1577
  store i64 %call3, ptr %status, align 8, !dbg !1580
  %6 = load i64, ptr %status, align 8, !dbg !1581
  %cmp4 = icmp ne i64 %6, 0, !dbg !1582
  br i1 %cmp4, label %if.then5, label %if.end26, !dbg !1583

if.then5:                                         ; preds = %if.end2
  %call6 = call zeroext i1 @efi_is_native() #8, !dbg !1584
  br i1 %call6, label %cond.true, label %cond.false11, !dbg !1584

cond.true:                                        ; preds = %if.then5
  %call7 = call zeroext i1 @efi_is_native() #8, !dbg !1584
  br i1 %call7, label %cond.true8, label %cond.false, !dbg !1584

cond.true8:                                       ; preds = %cond.true
  %7 = load ptr, ptr @efi_system_table, align 8, !dbg !1584
  %boottime = getelementptr inbounds %struct.anon.1, ptr %7, i32 0, i32 10, !dbg !1584
  %8 = load ptr, ptr %boottime, align 8, !dbg !1584
  br label %cond.end, !dbg !1584

cond.false:                                       ; preds = %cond.true
  %9 = load ptr, ptr @efi_system_table, align 8, !dbg !1584
  %boottime9 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %9, i32 0, i32 10, !dbg !1584
  %10 = load i32, ptr %boottime9, align 4, !dbg !1584
  %conv = zext i32 %10 to i64, !dbg !1584
  %11 = inttoptr i64 %conv to ptr, !dbg !1584
  br label %cond.end, !dbg !1584

cond.end:                                         ; preds = %cond.false, %cond.true8
  %cond = phi ptr [ %8, %cond.true8 ], [ %11, %cond.false ], !dbg !1584
  %free_pool = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 7, !dbg !1584
  %12 = load ptr, ptr %free_pool, align 8, !dbg !1584
  %13 = load ptr, ptr %map, align 8, !dbg !1584
  %call10 = call win64cc i64 %12(ptr noundef %13) #8, !dbg !1584
  br label %cond.end24, !dbg !1584

cond.false11:                                     ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #7, !dbg !1585
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1546, metadata !DIExpression()), !dbg !1585
  br label %do.body, !dbg !1586

do.body:                                          ; preds = %cond.false11
  br label %do.cond, !dbg !1588

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1588

do.end:                                           ; preds = %do.cond
  %call12 = call zeroext i1 @efi_is_native() #8, !dbg !1585
  br i1 %call12, label %cond.true14, label %cond.false16, !dbg !1585

cond.true14:                                      ; preds = %do.end
  %14 = load ptr, ptr @efi_system_table, align 8, !dbg !1585
  %boottime15 = getelementptr inbounds %struct.anon.1, ptr %14, i32 0, i32 10, !dbg !1585
  %15 = load ptr, ptr %boottime15, align 8, !dbg !1585
  br label %cond.end19, !dbg !1585

cond.false16:                                     ; preds = %do.end
  %16 = load ptr, ptr @efi_system_table, align 8, !dbg !1585
  %boottime17 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %16, i32 0, i32 10, !dbg !1585
  %17 = load i32, ptr %boottime17, align 4, !dbg !1585
  %conv18 = zext i32 %17 to i64, !dbg !1585
  %18 = inttoptr i64 %conv18 to ptr, !dbg !1585
  br label %cond.end19, !dbg !1585

cond.end19:                                       ; preds = %cond.false16, %cond.true14
  %cond20 = phi ptr [ %15, %cond.true14 ], [ %18, %cond.false16 ], !dbg !1585
  %free_pool21 = getelementptr inbounds %struct.anon.0, ptr %cond20, i32 0, i32 7, !dbg !1585
  %19 = load i32, ptr %free_pool21, align 8, !dbg !1585
  %20 = load ptr, ptr %map, align 8, !dbg !1585
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1585
  %call22 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %19, ptr noundef %20, ptr noundef %arraydecay) #8, !dbg !1585
  store i64 %call22, ptr %tmp, align 8, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #7, !dbg !1584
  %21 = load i64, ptr %tmp, align 8, !dbg !1585
  %call23 = call i64 @__efi64_widen_efi_status(i64 noundef %21) #8, !dbg !1584
  br label %cond.end24, !dbg !1584

cond.end24:                                       ; preds = %cond.end19, %cond.end
  %cond25 = phi i64 [ %call10, %cond.end ], [ %call23, %cond.end19 ], !dbg !1584
  %22 = load i64, ptr %status, align 8, !dbg !1590
  store i64 %22, ptr %retval, align 8, !dbg !1591
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1591

if.end26:                                         ; preds = %if.end2
  %call27 = call zeroext i1 @efi_is_native() #8, !dbg !1592
  br i1 %call27, label %cond.true29, label %cond.false40, !dbg !1592

cond.true29:                                      ; preds = %if.end26
  %call30 = call zeroext i1 @efi_is_native() #8, !dbg !1592
  br i1 %call30, label %cond.true32, label %cond.false34, !dbg !1592

cond.true32:                                      ; preds = %cond.true29
  %23 = load ptr, ptr @efi_system_table, align 8, !dbg !1592
  %boottime33 = getelementptr inbounds %struct.anon.1, ptr %23, i32 0, i32 10, !dbg !1592
  %24 = load ptr, ptr %boottime33, align 8, !dbg !1592
  br label %cond.end37, !dbg !1592

cond.false34:                                     ; preds = %cond.true29
  %25 = load ptr, ptr @efi_system_table, align 8, !dbg !1592
  %boottime35 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %25, i32 0, i32 10, !dbg !1592
  %26 = load i32, ptr %boottime35, align 4, !dbg !1592
  %conv36 = zext i32 %26 to i64, !dbg !1592
  %27 = inttoptr i64 %conv36 to ptr, !dbg !1592
  br label %cond.end37, !dbg !1592

cond.end37:                                       ; preds = %cond.false34, %cond.true32
  %cond38 = phi ptr [ %24, %cond.true32 ], [ %27, %cond.false34 ], !dbg !1592
  %exit_boot_services = getelementptr inbounds %struct.anon, ptr %cond38, i32 0, i32 27, !dbg !1592
  %28 = load ptr, ptr %exit_boot_services, align 8, !dbg !1592
  %29 = load ptr, ptr %handle.addr, align 8, !dbg !1592
  %30 = load ptr, ptr %map, align 8, !dbg !1592
  %map_key = getelementptr inbounds %struct.efi_boot_memmap, ptr %30, i32 0, i32 3, !dbg !1592
  %31 = load i64, ptr %map_key, align 8, !dbg !1592
  %call39 = call win64cc i64 %28(ptr noundef %29, i64 noundef %31) #8, !dbg !1592
  br label %cond.end60, !dbg !1592

cond.false40:                                     ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad41) #7, !dbg !1593
  call void @llvm.dbg.declare(metadata ptr %__pad41, metadata !1550, metadata !DIExpression()), !dbg !1593
  br label %do.body42, !dbg !1594

do.body42:                                        ; preds = %cond.false40
  br label %do.cond43, !dbg !1596

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !1596

do.end44:                                         ; preds = %do.cond43
  %call46 = call zeroext i1 @efi_is_native() #8, !dbg !1593
  br i1 %call46, label %cond.true48, label %cond.false50, !dbg !1593

cond.true48:                                      ; preds = %do.end44
  %32 = load ptr, ptr @efi_system_table, align 8, !dbg !1593
  %boottime49 = getelementptr inbounds %struct.anon.1, ptr %32, i32 0, i32 10, !dbg !1593
  %33 = load ptr, ptr %boottime49, align 8, !dbg !1593
  br label %cond.end53, !dbg !1593

cond.false50:                                     ; preds = %do.end44
  %34 = load ptr, ptr @efi_system_table, align 8, !dbg !1593
  %boottime51 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %34, i32 0, i32 10, !dbg !1593
  %35 = load i32, ptr %boottime51, align 4, !dbg !1593
  %conv52 = zext i32 %35 to i64, !dbg !1593
  %36 = inttoptr i64 %conv52 to ptr, !dbg !1593
  br label %cond.end53, !dbg !1593

cond.end53:                                       ; preds = %cond.false50, %cond.true48
  %cond54 = phi ptr [ %33, %cond.true48 ], [ %36, %cond.false50 ], !dbg !1593
  %exit_boot_services55 = getelementptr inbounds %struct.anon.0, ptr %cond54, i32 0, i32 27, !dbg !1593
  %37 = load i32, ptr %exit_boot_services55, align 8, !dbg !1593
  %38 = load ptr, ptr %handle.addr, align 8, !dbg !1593
  %39 = load ptr, ptr %map, align 8, !dbg !1593
  %map_key56 = getelementptr inbounds %struct.efi_boot_memmap, ptr %39, i32 0, i32 3, !dbg !1593
  %40 = load i64, ptr %map_key56, align 8, !dbg !1593
  %arraydecay57 = getelementptr inbounds [3 x i64], ptr %__pad41, i64 0, i64 0, !dbg !1593
  %call58 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %37, ptr noundef %38, i64 noundef %40, ptr noundef %arraydecay57) #8, !dbg !1593
  store i64 %call58, ptr %tmp45, align 8, !dbg !1593
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad41) #7, !dbg !1592
  %41 = load i64, ptr %tmp45, align 8, !dbg !1593
  %call59 = call i64 @__efi64_widen_efi_status(i64 noundef %41) #8, !dbg !1592
  br label %cond.end60, !dbg !1592

cond.end60:                                       ; preds = %cond.end53, %cond.end37
  %cond61 = phi i64 [ %call39, %cond.end37 ], [ %call59, %cond.end53 ], !dbg !1592
  store i64 %cond61, ptr %status, align 8, !dbg !1598
  %42 = load i64, ptr %status, align 8, !dbg !1599
  %cmp62 = icmp eq i64 %42, -9223372036854775806, !dbg !1600
  br i1 %cmp62, label %if.then64, label %if.end155, !dbg !1601

if.then64:                                        ; preds = %cond.end60
  %43 = load ptr, ptr %map, align 8, !dbg !1602
  %buff_size = getelementptr inbounds %struct.efi_boot_memmap, ptr %43, i32 0, i32 4, !dbg !1603
  %44 = load i64, ptr %buff_size, align 8, !dbg !1603
  %45 = load ptr, ptr %map, align 8, !dbg !1604
  %map_size = getelementptr inbounds %struct.efi_boot_memmap, ptr %45, i32 0, i32 0, !dbg !1605
  store i64 %44, ptr %map_size, align 8, !dbg !1606
  %call65 = call zeroext i1 @efi_is_native() #8, !dbg !1607
  br i1 %call65, label %cond.true67, label %cond.false81, !dbg !1607

cond.true67:                                      ; preds = %if.then64
  %call68 = call zeroext i1 @efi_is_native() #8, !dbg !1607
  br i1 %call68, label %cond.true70, label %cond.false72, !dbg !1607

cond.true70:                                      ; preds = %cond.true67
  %46 = load ptr, ptr @efi_system_table, align 8, !dbg !1607
  %boottime71 = getelementptr inbounds %struct.anon.1, ptr %46, i32 0, i32 10, !dbg !1607
  %47 = load ptr, ptr %boottime71, align 8, !dbg !1607
  br label %cond.end75, !dbg !1607

cond.false72:                                     ; preds = %cond.true67
  %48 = load ptr, ptr @efi_system_table, align 8, !dbg !1607
  %boottime73 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %48, i32 0, i32 10, !dbg !1607
  %49 = load i32, ptr %boottime73, align 4, !dbg !1607
  %conv74 = zext i32 %49 to i64, !dbg !1607
  %50 = inttoptr i64 %conv74 to ptr, !dbg !1607
  br label %cond.end75, !dbg !1607

cond.end75:                                       ; preds = %cond.false72, %cond.true70
  %cond76 = phi ptr [ %47, %cond.true70 ], [ %50, %cond.false72 ], !dbg !1607
  %get_memory_map = getelementptr inbounds %struct.anon, ptr %cond76, i32 0, i32 5, !dbg !1607
  %51 = load ptr, ptr %get_memory_map, align 8, !dbg !1607
  %52 = load ptr, ptr %map, align 8, !dbg !1607
  %map_size77 = getelementptr inbounds %struct.efi_boot_memmap, ptr %52, i32 0, i32 0, !dbg !1607
  %53 = load ptr, ptr %map, align 8, !dbg !1607
  %map78 = getelementptr inbounds %struct.efi_boot_memmap, ptr %53, i32 0, i32 5, !dbg !1607
  %54 = load ptr, ptr %map, align 8, !dbg !1607
  %map_key79 = getelementptr inbounds %struct.efi_boot_memmap, ptr %54, i32 0, i32 3, !dbg !1607
  %55 = load ptr, ptr %map, align 8, !dbg !1607
  %desc_size = getelementptr inbounds %struct.efi_boot_memmap, ptr %55, i32 0, i32 1, !dbg !1607
  %56 = load ptr, ptr %map, align 8, !dbg !1607
  %desc_ver = getelementptr inbounds %struct.efi_boot_memmap, ptr %56, i32 0, i32 2, !dbg !1607
  %call80 = call win64cc i64 %51(ptr noundef %map_size77, ptr noundef %map78, ptr noundef %map_key79, ptr noundef %desc_size, ptr noundef %desc_ver) #8, !dbg !1607
  br label %cond.end107, !dbg !1607

cond.false81:                                     ; preds = %if.then64
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad82) #7, !dbg !1608
  call void @llvm.dbg.declare(metadata ptr %__pad82, metadata !1552, metadata !DIExpression()), !dbg !1608
  br label %do.body83, !dbg !1609

do.body83:                                        ; preds = %cond.false81
  br label %do.cond84, !dbg !1611

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !1611

do.end85:                                         ; preds = %do.cond84
  %call87 = call zeroext i1 @efi_is_native() #8, !dbg !1608
  br i1 %call87, label %cond.true89, label %cond.false91, !dbg !1608

cond.true89:                                      ; preds = %do.end85
  %57 = load ptr, ptr @efi_system_table, align 8, !dbg !1608
  %boottime90 = getelementptr inbounds %struct.anon.1, ptr %57, i32 0, i32 10, !dbg !1608
  %58 = load ptr, ptr %boottime90, align 8, !dbg !1608
  br label %cond.end94, !dbg !1608

cond.false91:                                     ; preds = %do.end85
  %59 = load ptr, ptr @efi_system_table, align 8, !dbg !1608
  %boottime92 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %59, i32 0, i32 10, !dbg !1608
  %60 = load i32, ptr %boottime92, align 4, !dbg !1608
  %conv93 = zext i32 %60 to i64, !dbg !1608
  %61 = inttoptr i64 %conv93 to ptr, !dbg !1608
  br label %cond.end94, !dbg !1608

cond.end94:                                       ; preds = %cond.false91, %cond.true89
  %cond95 = phi ptr [ %58, %cond.true89 ], [ %61, %cond.false91 ], !dbg !1608
  %get_memory_map96 = getelementptr inbounds %struct.anon.0, ptr %cond95, i32 0, i32 5, !dbg !1608
  %62 = load i32, ptr %get_memory_map96, align 8, !dbg !1608
  %63 = load ptr, ptr %map, align 8, !dbg !1608
  %map_size97 = getelementptr inbounds %struct.efi_boot_memmap, ptr %63, i32 0, i32 0, !dbg !1608
  %64 = load ptr, ptr %map, align 8, !dbg !1608
  %map98 = getelementptr inbounds %struct.efi_boot_memmap, ptr %64, i32 0, i32 5, !dbg !1608
  %65 = load ptr, ptr %map, align 8, !dbg !1608
  %map_key99 = getelementptr inbounds %struct.efi_boot_memmap, ptr %65, i32 0, i32 3, !dbg !1608
  %call100 = call ptr @efi64_zero_upper(ptr noundef %map_key99) #8, !dbg !1608
  %66 = load ptr, ptr %map, align 8, !dbg !1608
  %desc_size101 = getelementptr inbounds %struct.efi_boot_memmap, ptr %66, i32 0, i32 1, !dbg !1608
  %call102 = call ptr @efi64_zero_upper(ptr noundef %desc_size101) #8, !dbg !1608
  %67 = load ptr, ptr %map, align 8, !dbg !1608
  %desc_ver103 = getelementptr inbounds %struct.efi_boot_memmap, ptr %67, i32 0, i32 2, !dbg !1608
  %arraydecay104 = getelementptr inbounds [3 x i64], ptr %__pad82, i64 0, i64 0, !dbg !1608
  %call105 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %62, ptr noundef %map_size97, ptr noundef %map98, ptr noundef %call100, ptr noundef %call102, ptr noundef %desc_ver103, ptr noundef %arraydecay104) #8, !dbg !1608
  store i64 %call105, ptr %tmp86, align 8, !dbg !1608
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad82) #7, !dbg !1607
  %68 = load i64, ptr %tmp86, align 8, !dbg !1608
  %call106 = call i64 @__efi64_widen_efi_status(i64 noundef %68) #8, !dbg !1607
  br label %cond.end107, !dbg !1607

cond.end107:                                      ; preds = %cond.end94, %cond.end75
  %cond108 = phi i64 [ %call80, %cond.end75 ], [ %call106, %cond.end94 ], !dbg !1607
  store i64 %cond108, ptr %status, align 8, !dbg !1613
  %69 = load i64, ptr %status, align 8, !dbg !1614
  %cmp109 = icmp ne i64 %69, 0, !dbg !1616
  br i1 %cmp109, label %if.then111, label %if.end112, !dbg !1617

if.then111:                                       ; preds = %cond.end107
  %70 = load i64, ptr %status, align 8, !dbg !1618
  store i64 %70, ptr %retval, align 8, !dbg !1619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1619

if.end112:                                        ; preds = %cond.end107
  %71 = load ptr, ptr %priv_func.addr, align 8, !dbg !1620
  %72 = load ptr, ptr %map, align 8, !dbg !1621
  %73 = load ptr, ptr %priv.addr, align 8, !dbg !1622
  %call113 = call i64 %71(ptr noundef %72, ptr noundef %73) #8, !dbg !1620
  store i64 %call113, ptr %status, align 8, !dbg !1623
  %74 = load i64, ptr %status, align 8, !dbg !1624
  %cmp114 = icmp ne i64 %74, 0, !dbg !1626
  br i1 %cmp114, label %if.then116, label %if.end117, !dbg !1627

if.then116:                                       ; preds = %if.end112
  %75 = load i64, ptr %status, align 8, !dbg !1628
  store i64 %75, ptr %retval, align 8, !dbg !1629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1629

if.end117:                                        ; preds = %if.end112
  %call118 = call zeroext i1 @efi_is_native() #8, !dbg !1630
  br i1 %call118, label %cond.true120, label %cond.false133, !dbg !1630

cond.true120:                                     ; preds = %if.end117
  %call121 = call zeroext i1 @efi_is_native() #8, !dbg !1630
  br i1 %call121, label %cond.true123, label %cond.false125, !dbg !1630

cond.true123:                                     ; preds = %cond.true120
  %76 = load ptr, ptr @efi_system_table, align 8, !dbg !1630
  %boottime124 = getelementptr inbounds %struct.anon.1, ptr %76, i32 0, i32 10, !dbg !1630
  %77 = load ptr, ptr %boottime124, align 8, !dbg !1630
  br label %cond.end128, !dbg !1630

cond.false125:                                    ; preds = %cond.true120
  %78 = load ptr, ptr @efi_system_table, align 8, !dbg !1630
  %boottime126 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %78, i32 0, i32 10, !dbg !1630
  %79 = load i32, ptr %boottime126, align 4, !dbg !1630
  %conv127 = zext i32 %79 to i64, !dbg !1630
  %80 = inttoptr i64 %conv127 to ptr, !dbg !1630
  br label %cond.end128, !dbg !1630

cond.end128:                                      ; preds = %cond.false125, %cond.true123
  %cond129 = phi ptr [ %77, %cond.true123 ], [ %80, %cond.false125 ], !dbg !1630
  %exit_boot_services130 = getelementptr inbounds %struct.anon, ptr %cond129, i32 0, i32 27, !dbg !1630
  %81 = load ptr, ptr %exit_boot_services130, align 8, !dbg !1630
  %82 = load ptr, ptr %handle.addr, align 8, !dbg !1630
  %83 = load ptr, ptr %map, align 8, !dbg !1630
  %map_key131 = getelementptr inbounds %struct.efi_boot_memmap, ptr %83, i32 0, i32 3, !dbg !1630
  %84 = load i64, ptr %map_key131, align 8, !dbg !1630
  %call132 = call win64cc i64 %81(ptr noundef %82, i64 noundef %84) #8, !dbg !1630
  br label %cond.end153, !dbg !1630

cond.false133:                                    ; preds = %if.end117
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad134) #7, !dbg !1631
  call void @llvm.dbg.declare(metadata ptr %__pad134, metadata !1556, metadata !DIExpression()), !dbg !1631
  br label %do.body135, !dbg !1632

do.body135:                                       ; preds = %cond.false133
  br label %do.cond136, !dbg !1634

do.cond136:                                       ; preds = %do.body135
  br label %do.end137, !dbg !1634

do.end137:                                        ; preds = %do.cond136
  %call139 = call zeroext i1 @efi_is_native() #8, !dbg !1631
  br i1 %call139, label %cond.true141, label %cond.false143, !dbg !1631

cond.true141:                                     ; preds = %do.end137
  %85 = load ptr, ptr @efi_system_table, align 8, !dbg !1631
  %boottime142 = getelementptr inbounds %struct.anon.1, ptr %85, i32 0, i32 10, !dbg !1631
  %86 = load ptr, ptr %boottime142, align 8, !dbg !1631
  br label %cond.end146, !dbg !1631

cond.false143:                                    ; preds = %do.end137
  %87 = load ptr, ptr @efi_system_table, align 8, !dbg !1631
  %boottime144 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %87, i32 0, i32 10, !dbg !1631
  %88 = load i32, ptr %boottime144, align 4, !dbg !1631
  %conv145 = zext i32 %88 to i64, !dbg !1631
  %89 = inttoptr i64 %conv145 to ptr, !dbg !1631
  br label %cond.end146, !dbg !1631

cond.end146:                                      ; preds = %cond.false143, %cond.true141
  %cond147 = phi ptr [ %86, %cond.true141 ], [ %89, %cond.false143 ], !dbg !1631
  %exit_boot_services148 = getelementptr inbounds %struct.anon.0, ptr %cond147, i32 0, i32 27, !dbg !1631
  %90 = load i32, ptr %exit_boot_services148, align 8, !dbg !1631
  %91 = load ptr, ptr %handle.addr, align 8, !dbg !1631
  %92 = load ptr, ptr %map, align 8, !dbg !1631
  %map_key149 = getelementptr inbounds %struct.efi_boot_memmap, ptr %92, i32 0, i32 3, !dbg !1631
  %93 = load i64, ptr %map_key149, align 8, !dbg !1631
  %arraydecay150 = getelementptr inbounds [3 x i64], ptr %__pad134, i64 0, i64 0, !dbg !1631
  %call151 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %90, ptr noundef %91, i64 noundef %93, ptr noundef %arraydecay150) #8, !dbg !1631
  store i64 %call151, ptr %tmp138, align 8, !dbg !1631
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad134) #7, !dbg !1630
  %94 = load i64, ptr %tmp138, align 8, !dbg !1631
  %call152 = call i64 @__efi64_widen_efi_status(i64 noundef %94) #8, !dbg !1630
  br label %cond.end153, !dbg !1630

cond.end153:                                      ; preds = %cond.end146, %cond.end128
  %cond154 = phi i64 [ %call132, %cond.end128 ], [ %call152, %cond.end146 ], !dbg !1630
  store i64 %cond154, ptr %status, align 8, !dbg !1636
  br label %if.end155, !dbg !1637

if.end155:                                        ; preds = %cond.end153, %cond.end60
  %95 = load i64, ptr %status, align 8, !dbg !1638
  store i64 %95, ptr %retval, align 8, !dbg !1639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1639

cleanup:                                          ; preds = %if.end155, %if.then116, %if.then111, %cond.end24, %if.then1
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #7, !dbg !1640
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #7, !dbg !1640
  %96 = load i64, ptr %retval, align 8, !dbg !1640
  ret i64 %96, !dbg !1640
}

; Function Attrs: noredzone
declare !dbg !1641 hidden void @efi_pci_disable_bridge_busmaster() #4

; Function Attrs: noredzone
declare !dbg !1644 hidden i64 @efi_get_memory_map(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: noredzone nounwind
define hidden ptr @get_efi_config_table(i64 %guid.coerce0, i64 %guid.coerce1) #1 !dbg !1648 {
entry:
  %retval = alloca ptr, align 8
  %guid = alloca %struct.guid_t, align 4
  %tables = alloca i64, align 8
  %nr_tables = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %0 = getelementptr inbounds { i64, i64 }, ptr %guid, i32 0, i32 0
  store i64 %guid.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds { i64, i64 }, ptr %guid, i32 0, i32 1
  store i64 %guid.coerce1, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %guid, metadata !1652, metadata !DIExpression()), !dbg !1675
  call void @llvm.lifetime.start.p0(i64 8, ptr %tables) #7, !dbg !1676
  call void @llvm.dbg.declare(metadata ptr %tables, metadata !1653, metadata !DIExpression()), !dbg !1677
  %call = call zeroext i1 @efi_is_native() #8, !dbg !1678
  br i1 %call, label %cond.true, label %cond.false, !dbg !1678

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !1678
  %tables1 = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 12, !dbg !1678
  %3 = load i64, ptr %tables1, align 8, !dbg !1678
  br label %cond.end, !dbg !1678

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr @efi_system_table, align 8, !dbg !1678
  %tables2 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %4, i32 0, i32 12, !dbg !1678
  %5 = load i32, ptr %tables2, align 4, !dbg !1678
  %conv = zext i32 %5 to i64, !dbg !1678
  br label %cond.end, !dbg !1678

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %conv, %cond.false ], !dbg !1678
  store i64 %cond, ptr %tables, align 8, !dbg !1677
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_tables) #7, !dbg !1679
  call void @llvm.dbg.declare(metadata ptr %nr_tables, metadata !1654, metadata !DIExpression()), !dbg !1680
  %call3 = call zeroext i1 @efi_is_native() #8, !dbg !1681
  br i1 %call3, label %cond.true5, label %cond.false7, !dbg !1681

cond.true5:                                       ; preds = %cond.end
  %6 = load ptr, ptr @efi_system_table, align 8, !dbg !1681
  %nr_tables6 = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 11, !dbg !1681
  %7 = load i64, ptr %nr_tables6, align 8, !dbg !1681
  br label %cond.end10, !dbg !1681

cond.false7:                                      ; preds = %cond.end
  %8 = load ptr, ptr @efi_system_table, align 8, !dbg !1681
  %nr_tables8 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %8, i32 0, i32 11, !dbg !1681
  %9 = load i32, ptr %nr_tables8, align 8, !dbg !1681
  %conv9 = zext i32 %9 to i64, !dbg !1681
  br label %cond.end10, !dbg !1681

cond.end10:                                       ; preds = %cond.false7, %cond.true5
  %cond11 = phi i64 [ %7, %cond.true5 ], [ %conv9, %cond.false7 ], !dbg !1681
  %conv12 = trunc i64 %cond11 to i32, !dbg !1681
  store i32 %conv12, ptr %nr_tables, align 4, !dbg !1680
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !1682
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1655, metadata !DIExpression()), !dbg !1683
  store i32 0, ptr %i, align 4, !dbg !1684
  br label %for.cond, !dbg !1685

for.cond:                                         ; preds = %for.inc, %cond.end10
  %10 = load i32, ptr %i, align 4, !dbg !1686
  %11 = load i32, ptr %nr_tables, align 4, !dbg !1687
  %cmp = icmp slt i32 %10, %11, !dbg !1688
  br i1 %cmp, label %for.body, label %for.end, !dbg !1689

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #7, !dbg !1690
  call void @llvm.dbg.declare(metadata ptr %t, metadata !1656, metadata !DIExpression()), !dbg !1691
  %12 = load i64, ptr %tables, align 8, !dbg !1692
  %13 = inttoptr i64 %12 to ptr, !dbg !1693
  store ptr %13, ptr %t, align 8, !dbg !1691
  %14 = load ptr, ptr %t, align 8, !dbg !1694
  %guid14 = getelementptr inbounds %struct.anon.4, ptr %14, i32 0, i32 0, !dbg !1696
  %15 = getelementptr inbounds { i64, i64 }, ptr %guid14, i32 0, i32 0, !dbg !1697
  %16 = load i64, ptr %15, align 8, !dbg !1697
  %17 = getelementptr inbounds { i64, i64 }, ptr %guid14, i32 0, i32 1, !dbg !1697
  %18 = load i64, ptr %17, align 8, !dbg !1697
  %19 = getelementptr inbounds { i64, i64 }, ptr %guid, i32 0, i32 0, !dbg !1697
  %20 = load i64, ptr %19, align 4, !dbg !1697
  %21 = getelementptr inbounds { i64, i64 }, ptr %guid, i32 0, i32 1, !dbg !1697
  %22 = load i64, ptr %21, align 4, !dbg !1697
  %call15 = call i32 @efi_guidcmp(i64 %16, i64 %18, i64 %20, i64 %22) #8, !dbg !1697
  %cmp16 = icmp eq i32 %call15, 0, !dbg !1698
  br i1 %cmp16, label %if.then, label %if.end, !dbg !1699

if.then:                                          ; preds = %for.body
  %call18 = call zeroext i1 @efi_is_native() #8, !dbg !1700
  br i1 %call18, label %cond.true20, label %cond.false21, !dbg !1700

cond.true20:                                      ; preds = %if.then
  %23 = load ptr, ptr %t, align 8, !dbg !1700
  %table = getelementptr inbounds %struct.anon.4, ptr %23, i32 0, i32 1, !dbg !1700
  %24 = load ptr, ptr %table, align 8, !dbg !1700
  br label %cond.end24, !dbg !1700

cond.false21:                                     ; preds = %if.then
  %25 = load ptr, ptr %t, align 8, !dbg !1700
  %table22 = getelementptr inbounds %struct.efi_config_table_32_t, ptr %25, i32 0, i32 1, !dbg !1700
  %26 = load i32, ptr %table22, align 8, !dbg !1700
  %conv23 = zext i32 %26 to i64, !dbg !1700
  %27 = inttoptr i64 %conv23 to ptr, !dbg !1700
  br label %cond.end24, !dbg !1700

cond.end24:                                       ; preds = %cond.false21, %cond.true20
  %cond25 = phi ptr [ %24, %cond.true20 ], [ %27, %cond.false21 ], !dbg !1700
  store ptr %cond25, ptr %retval, align 8, !dbg !1701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1701

if.end:                                           ; preds = %for.body
  %call26 = call zeroext i1 @efi_is_native() #8, !dbg !1702
  %28 = zext i1 %call26 to i64, !dbg !1702
  %cond28 = select i1 %call26, i64 24, i64 20, !dbg !1702
  %29 = load i64, ptr %tables, align 8, !dbg !1703
  %add = add i64 %29, %cond28, !dbg !1703
  store i64 %add, ptr %tables, align 8, !dbg !1703
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1704
  br label %cleanup, !dbg !1704

cleanup:                                          ; preds = %if.end, %cond.end24
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #7, !dbg !1704
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1705

for.inc:                                          ; preds = %cleanup.cont
  %30 = load i32, ptr %i, align 4, !dbg !1706
  %inc = add nsw i32 %30, 1, !dbg !1706
  store i32 %inc, ptr %i, align 4, !dbg !1706
  br label %for.cond, !dbg !1707, !llvm.loop !1708

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !1710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !1710

cleanup29:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !1711
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_tables) #7, !dbg !1711
  call void @llvm.lifetime.end.p0(i64 8, ptr %tables) #7, !dbg !1711
  %31 = load ptr, ptr %retval, align 8, !dbg !1711
  ret ptr %31, !dbg !1711
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @efi_guidcmp(i64 %left.coerce0, i64 %left.coerce1, i64 %right.coerce0, i64 %right.coerce1) #5 !dbg !1712 {
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
  call void @llvm.dbg.declare(metadata ptr %left, metadata !1716, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.declare(metadata ptr %right, metadata !1717, metadata !DIExpression()), !dbg !1719
  %call = call i32 @memcmp(ptr noundef %left, ptr noundef %right, i64 noundef 16) #8, !dbg !1720
  ret i32 %call, !dbg !1721
}

; Function Attrs: noredzone nounwind
define hidden i64 @efi_load_initrd(ptr noundef %image, i64 noundef %soft_limit, i64 noundef %hard_limit, ptr noundef %out) #1 !dbg !1722 {
entry:
  %retval = alloca i64, align 8
  %image.addr = alloca ptr, align 8
  %soft_limit.addr = alloca i64, align 8
  %hard_limit.addr = alloca i64, align 8
  %out.addr = alloca ptr, align 8
  %tbl_guid = alloca %struct.guid_t, align 4
  %status = alloca i64, align 8
  %initrd = alloca %struct.linux_efi_initrd, align 8
  %tbl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %__pad65 = alloca [3 x i64], align 16
  %tmp69 = alloca i64, align 8
  %__pad106 = alloca [3 x i64], align 16
  %tmp110 = alloca i64, align 8
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !1733, metadata !DIExpression()), !dbg !1751
  store i64 %soft_limit, ptr %soft_limit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %soft_limit.addr, metadata !1734, metadata !DIExpression()), !dbg !1752
  store i64 %hard_limit, ptr %hard_limit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hard_limit.addr, metadata !1735, metadata !DIExpression()), !dbg !1753
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !1736, metadata !DIExpression()), !dbg !1754
  call void @llvm.lifetime.start.p0(i64 16, ptr %tbl_guid) #7, !dbg !1755
  call void @llvm.dbg.declare(metadata ptr %tbl_guid, metadata !1737, metadata !DIExpression()), !dbg !1756
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tbl_guid, ptr align 4 @__const.efi_load_initrd.tbl_guid, i64 16, i1 false), !dbg !1756
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #7, !dbg !1757
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1738, metadata !DIExpression()), !dbg !1758
  store i64 0, ptr %status, align 8, !dbg !1758
  call void @llvm.lifetime.start.p0(i64 16, ptr %initrd) #7, !dbg !1759
  call void @llvm.dbg.declare(metadata ptr %initrd, metadata !1739, metadata !DIExpression()), !dbg !1760
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #7, !dbg !1759
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !1740, metadata !DIExpression()), !dbg !1761
  %0 = load i8, ptr @efi_noinitrd, align 1, !dbg !1762, !range !502, !noundef !503
  %tobool = trunc i8 %0 to i1, !dbg !1762
  br i1 %tobool, label %if.then, label %if.end, !dbg !1764

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1765
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1765

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %hard_limit.addr, align 8, !dbg !1766
  %call = call i64 @efi_load_initrd_dev_path(ptr noundef %initrd, i64 noundef %1) #8, !dbg !1767
  store i64 %call, ptr %status, align 8, !dbg !1768
  %2 = load i64, ptr %status, align 8, !dbg !1769
  %cmp = icmp eq i64 %2, 0, !dbg !1771
  br i1 %cmp, label %if.then1, label %if.else, !dbg !1772

if.then1:                                         ; preds = %if.end
  %call2 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.21) #8, !dbg !1773
  %size = getelementptr inbounds %struct.linux_efi_initrd, ptr %initrd, i32 0, i32 1, !dbg !1775
  %3 = load i64, ptr %size, align 8, !dbg !1775
  %cmp3 = icmp ugt i64 %3, 0, !dbg !1777
  br i1 %cmp3, label %land.lhs.true, label %if.end9, !dbg !1778

land.lhs.true:                                    ; preds = %if.then1
  %base = getelementptr inbounds %struct.linux_efi_initrd, ptr %initrd, i32 0, i32 0, !dbg !1779
  %4 = load i64, ptr %base, align 8, !dbg !1779
  %size4 = getelementptr inbounds %struct.linux_efi_initrd, ptr %initrd, i32 0, i32 1, !dbg !1780
  %5 = load i64, ptr %size4, align 8, !dbg !1780
  %call5 = call i64 @efi_measure_tagged_event(i64 noundef %4, i64 noundef %5, i32 noundef 0) #8, !dbg !1781
  %cmp6 = icmp eq i64 %call5, 0, !dbg !1782
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !1783

if.then7:                                         ; preds = %land.lhs.true
  %call8 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.22) #8, !dbg !1784
  br label %if.end9, !dbg !1784

if.end9:                                          ; preds = %if.then7, %land.lhs.true, %if.then1
  br label %if.end22, !dbg !1785

if.else:                                          ; preds = %if.end
  %6 = load i64, ptr %status, align 8, !dbg !1786
  %cmp10 = icmp eq i64 %6, -9223372036854775794, !dbg !1788
  br i1 %cmp10, label %if.then11, label %if.end21, !dbg !1789

if.then11:                                        ; preds = %if.else
  %7 = load ptr, ptr %image.addr, align 8, !dbg !1790
  %8 = load i64, ptr %soft_limit.addr, align 8, !dbg !1792
  %9 = load i64, ptr %hard_limit.addr, align 8, !dbg !1793
  %call12 = call i64 @efi_load_initrd_cmdline(ptr noundef %7, ptr noundef %initrd, i64 noundef %8, i64 noundef %9) #8, !dbg !1794
  store i64 %call12, ptr %status, align 8, !dbg !1795
  %10 = load i64, ptr %status, align 8, !dbg !1796
  %cmp13 = icmp eq i64 %10, -9223372036854775805, !dbg !1798
  br i1 %cmp13, label %if.then15, label %lor.lhs.false, !dbg !1799

lor.lhs.false:                                    ; preds = %if.then11
  %11 = load i64, ptr %status, align 8, !dbg !1800
  %cmp14 = icmp eq i64 %11, -9223372036854775802, !dbg !1801
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1802

if.then15:                                        ; preds = %lor.lhs.false, %if.then11
  store i64 0, ptr %retval, align 8, !dbg !1803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1803

if.end16:                                         ; preds = %lor.lhs.false
  %12 = load i64, ptr %status, align 8, !dbg !1804
  %cmp17 = icmp eq i64 %12, 0, !dbg !1806
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !1807

if.then18:                                        ; preds = %if.end16
  %call19 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.23) #8, !dbg !1808
  br label %if.end20, !dbg !1808

if.end20:                                         ; preds = %if.then18, %if.end16
  br label %if.end21, !dbg !1809

if.end21:                                         ; preds = %if.end20, %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end9
  %13 = load i64, ptr %status, align 8, !dbg !1810
  %cmp23 = icmp ne i64 %13, 0, !dbg !1812
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !1813

if.then24:                                        ; preds = %if.end22
  br label %failed, !dbg !1814

if.end25:                                         ; preds = %if.end22
  %call26 = call zeroext i1 @efi_is_native() #8, !dbg !1815
  br i1 %call26, label %cond.true, label %cond.false31, !dbg !1815

cond.true:                                        ; preds = %if.end25
  %call27 = call zeroext i1 @efi_is_native() #8, !dbg !1815
  br i1 %call27, label %cond.true28, label %cond.false, !dbg !1815

cond.true28:                                      ; preds = %cond.true
  %14 = load ptr, ptr @efi_system_table, align 8, !dbg !1815
  %boottime = getelementptr inbounds %struct.anon.1, ptr %14, i32 0, i32 10, !dbg !1815
  %15 = load ptr, ptr %boottime, align 8, !dbg !1815
  br label %cond.end, !dbg !1815

cond.false:                                       ; preds = %cond.true
  %16 = load ptr, ptr @efi_system_table, align 8, !dbg !1815
  %boottime29 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %16, i32 0, i32 10, !dbg !1815
  %17 = load i32, ptr %boottime29, align 4, !dbg !1815
  %conv = zext i32 %17 to i64, !dbg !1815
  %18 = inttoptr i64 %conv to ptr, !dbg !1815
  br label %cond.end, !dbg !1815

cond.end:                                         ; preds = %cond.false, %cond.true28
  %cond = phi ptr [ %15, %cond.true28 ], [ %18, %cond.false ], !dbg !1815
  %allocate_pool = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 6, !dbg !1815
  %19 = load ptr, ptr %allocate_pool, align 8, !dbg !1815
  %call30 = call win64cc i64 %19(i32 noundef 2, i64 noundef 16, ptr noundef %tbl) #8, !dbg !1815
  br label %cond.end45, !dbg !1815

cond.false31:                                     ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #7, !dbg !1816
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1742, metadata !DIExpression()), !dbg !1816
  br label %do.body, !dbg !1817

do.body:                                          ; preds = %cond.false31
  br label %do.cond, !dbg !1819

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1819

do.end:                                           ; preds = %do.cond
  %call32 = call zeroext i1 @efi_is_native() #8, !dbg !1816
  br i1 %call32, label %cond.true34, label %cond.false36, !dbg !1816

cond.true34:                                      ; preds = %do.end
  %20 = load ptr, ptr @efi_system_table, align 8, !dbg !1816
  %boottime35 = getelementptr inbounds %struct.anon.1, ptr %20, i32 0, i32 10, !dbg !1816
  %21 = load ptr, ptr %boottime35, align 8, !dbg !1816
  br label %cond.end39, !dbg !1816

cond.false36:                                     ; preds = %do.end
  %22 = load ptr, ptr @efi_system_table, align 8, !dbg !1816
  %boottime37 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %22, i32 0, i32 10, !dbg !1816
  %23 = load i32, ptr %boottime37, align 4, !dbg !1816
  %conv38 = zext i32 %23 to i64, !dbg !1816
  %24 = inttoptr i64 %conv38 to ptr, !dbg !1816
  br label %cond.end39, !dbg !1816

cond.end39:                                       ; preds = %cond.false36, %cond.true34
  %cond40 = phi ptr [ %21, %cond.true34 ], [ %24, %cond.false36 ], !dbg !1816
  %allocate_pool41 = getelementptr inbounds %struct.anon.0, ptr %cond40, i32 0, i32 6, !dbg !1816
  %25 = load i32, ptr %allocate_pool41, align 4, !dbg !1816
  %call42 = call ptr @efi64_zero_upper(ptr noundef %tbl) #8, !dbg !1816
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1816
  %call43 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %25, i32 noundef 2, i64 noundef 16, ptr noundef %call42, ptr noundef %arraydecay) #8, !dbg !1816
  store i64 %call43, ptr %tmp, align 8, !dbg !1816
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #7, !dbg !1815
  %26 = load i64, ptr %tmp, align 8, !dbg !1816
  %call44 = call i64 @__efi64_widen_efi_status(i64 noundef %26) #8, !dbg !1815
  br label %cond.end45, !dbg !1815

cond.end45:                                       ; preds = %cond.end39, %cond.end
  %cond46 = phi i64 [ %call30, %cond.end ], [ %call44, %cond.end39 ], !dbg !1815
  store i64 %cond46, ptr %status, align 8, !dbg !1821
  %27 = load i64, ptr %status, align 8, !dbg !1822
  %cmp47 = icmp ne i64 %27, 0, !dbg !1824
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !1825

if.then49:                                        ; preds = %cond.end45
  br label %free_initrd, !dbg !1826

if.end50:                                         ; preds = %cond.end45
  %28 = load ptr, ptr %tbl, align 8, !dbg !1827
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %28, ptr align 8 %initrd, i64 16, i1 false), !dbg !1828
  %call51 = call zeroext i1 @efi_is_native() #8, !dbg !1829
  br i1 %call51, label %cond.true53, label %cond.false64, !dbg !1829

cond.true53:                                      ; preds = %if.end50
  %call54 = call zeroext i1 @efi_is_native() #8, !dbg !1829
  br i1 %call54, label %cond.true56, label %cond.false58, !dbg !1829

cond.true56:                                      ; preds = %cond.true53
  %29 = load ptr, ptr @efi_system_table, align 8, !dbg !1829
  %boottime57 = getelementptr inbounds %struct.anon.1, ptr %29, i32 0, i32 10, !dbg !1829
  %30 = load ptr, ptr %boottime57, align 8, !dbg !1829
  br label %cond.end61, !dbg !1829

cond.false58:                                     ; preds = %cond.true53
  %31 = load ptr, ptr @efi_system_table, align 8, !dbg !1829
  %boottime59 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %31, i32 0, i32 10, !dbg !1829
  %32 = load i32, ptr %boottime59, align 4, !dbg !1829
  %conv60 = zext i32 %32 to i64, !dbg !1829
  %33 = inttoptr i64 %conv60 to ptr, !dbg !1829
  br label %cond.end61, !dbg !1829

cond.end61:                                       ; preds = %cond.false58, %cond.true56
  %cond62 = phi ptr [ %30, %cond.true56 ], [ %33, %cond.false58 ], !dbg !1829
  %install_configuration_table = getelementptr inbounds %struct.anon, ptr %cond62, i32 0, i32 22, !dbg !1829
  %34 = load ptr, ptr %install_configuration_table, align 8, !dbg !1829
  %35 = load ptr, ptr %tbl, align 8, !dbg !1829
  %call63 = call win64cc i64 %34(ptr noundef %tbl_guid, ptr noundef %35) #8, !dbg !1829
  br label %cond.end83, !dbg !1829

cond.false64:                                     ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad65) #7, !dbg !1830
  call void @llvm.dbg.declare(metadata ptr %__pad65, metadata !1744, metadata !DIExpression()), !dbg !1830
  br label %do.body66, !dbg !1831

do.body66:                                        ; preds = %cond.false64
  br label %do.cond67, !dbg !1833

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !1833

do.end68:                                         ; preds = %do.cond67
  %call70 = call zeroext i1 @efi_is_native() #8, !dbg !1830
  br i1 %call70, label %cond.true72, label %cond.false74, !dbg !1830

cond.true72:                                      ; preds = %do.end68
  %36 = load ptr, ptr @efi_system_table, align 8, !dbg !1830
  %boottime73 = getelementptr inbounds %struct.anon.1, ptr %36, i32 0, i32 10, !dbg !1830
  %37 = load ptr, ptr %boottime73, align 8, !dbg !1830
  br label %cond.end77, !dbg !1830

cond.false74:                                     ; preds = %do.end68
  %38 = load ptr, ptr @efi_system_table, align 8, !dbg !1830
  %boottime75 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %38, i32 0, i32 10, !dbg !1830
  %39 = load i32, ptr %boottime75, align 4, !dbg !1830
  %conv76 = zext i32 %39 to i64, !dbg !1830
  %40 = inttoptr i64 %conv76 to ptr, !dbg !1830
  br label %cond.end77, !dbg !1830

cond.end77:                                       ; preds = %cond.false74, %cond.true72
  %cond78 = phi ptr [ %37, %cond.true72 ], [ %40, %cond.false74 ], !dbg !1830
  %install_configuration_table79 = getelementptr inbounds %struct.anon.0, ptr %cond78, i32 0, i32 22, !dbg !1830
  %41 = load i32, ptr %install_configuration_table79, align 4, !dbg !1830
  %42 = load ptr, ptr %tbl, align 8, !dbg !1830
  %arraydecay80 = getelementptr inbounds [3 x i64], ptr %__pad65, i64 0, i64 0, !dbg !1830
  %call81 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %41, ptr noundef %tbl_guid, ptr noundef %42, ptr noundef %arraydecay80) #8, !dbg !1830
  store i64 %call81, ptr %tmp69, align 8, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad65) #7, !dbg !1829
  %43 = load i64, ptr %tmp69, align 8, !dbg !1830
  %call82 = call i64 @__efi64_widen_efi_status(i64 noundef %43) #8, !dbg !1829
  br label %cond.end83, !dbg !1829

cond.end83:                                       ; preds = %cond.end77, %cond.end61
  %cond84 = phi i64 [ %call63, %cond.end61 ], [ %call82, %cond.end77 ], !dbg !1829
  store i64 %cond84, ptr %status, align 8, !dbg !1835
  %44 = load i64, ptr %status, align 8, !dbg !1836
  %cmp85 = icmp ne i64 %44, 0, !dbg !1838
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !1839

if.then87:                                        ; preds = %cond.end83
  br label %free_tbl, !dbg !1840

if.end88:                                         ; preds = %cond.end83
  %45 = load ptr, ptr %out.addr, align 8, !dbg !1841
  %tobool89 = icmp ne ptr %45, null, !dbg !1841
  br i1 %tobool89, label %if.then90, label %if.end91, !dbg !1843

if.then90:                                        ; preds = %if.end88
  %46 = load ptr, ptr %tbl, align 8, !dbg !1844
  %47 = load ptr, ptr %out.addr, align 8, !dbg !1845
  store ptr %46, ptr %47, align 8, !dbg !1846
  br label %if.end91, !dbg !1847

if.end91:                                         ; preds = %if.then90, %if.end88
  store i64 0, ptr %retval, align 8, !dbg !1848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1848

free_tbl:                                         ; preds = %if.then87
  call void @llvm.dbg.label(metadata !1746), !dbg !1849
  %call92 = call zeroext i1 @efi_is_native() #8, !dbg !1850
  br i1 %call92, label %cond.true94, label %cond.false105, !dbg !1850

cond.true94:                                      ; preds = %free_tbl
  %call95 = call zeroext i1 @efi_is_native() #8, !dbg !1850
  br i1 %call95, label %cond.true97, label %cond.false99, !dbg !1850

cond.true97:                                      ; preds = %cond.true94
  %48 = load ptr, ptr @efi_system_table, align 8, !dbg !1850
  %boottime98 = getelementptr inbounds %struct.anon.1, ptr %48, i32 0, i32 10, !dbg !1850
  %49 = load ptr, ptr %boottime98, align 8, !dbg !1850
  br label %cond.end102, !dbg !1850

cond.false99:                                     ; preds = %cond.true94
  %50 = load ptr, ptr @efi_system_table, align 8, !dbg !1850
  %boottime100 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %50, i32 0, i32 10, !dbg !1850
  %51 = load i32, ptr %boottime100, align 4, !dbg !1850
  %conv101 = zext i32 %51 to i64, !dbg !1850
  %52 = inttoptr i64 %conv101 to ptr, !dbg !1850
  br label %cond.end102, !dbg !1850

cond.end102:                                      ; preds = %cond.false99, %cond.true97
  %cond103 = phi ptr [ %49, %cond.true97 ], [ %52, %cond.false99 ], !dbg !1850
  %free_pool = getelementptr inbounds %struct.anon, ptr %cond103, i32 0, i32 7, !dbg !1850
  %53 = load ptr, ptr %free_pool, align 8, !dbg !1850
  %54 = load ptr, ptr %tbl, align 8, !dbg !1850
  %call104 = call win64cc i64 %53(ptr noundef %54) #8, !dbg !1850
  br label %cond.end124, !dbg !1850

cond.false105:                                    ; preds = %free_tbl
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad106) #7, !dbg !1851
  call void @llvm.dbg.declare(metadata ptr %__pad106, metadata !1747, metadata !DIExpression()), !dbg !1851
  br label %do.body107, !dbg !1852

do.body107:                                       ; preds = %cond.false105
  br label %do.cond108, !dbg !1854

do.cond108:                                       ; preds = %do.body107
  br label %do.end109, !dbg !1854

do.end109:                                        ; preds = %do.cond108
  %call111 = call zeroext i1 @efi_is_native() #8, !dbg !1851
  br i1 %call111, label %cond.true113, label %cond.false115, !dbg !1851

cond.true113:                                     ; preds = %do.end109
  %55 = load ptr, ptr @efi_system_table, align 8, !dbg !1851
  %boottime114 = getelementptr inbounds %struct.anon.1, ptr %55, i32 0, i32 10, !dbg !1851
  %56 = load ptr, ptr %boottime114, align 8, !dbg !1851
  br label %cond.end118, !dbg !1851

cond.false115:                                    ; preds = %do.end109
  %57 = load ptr, ptr @efi_system_table, align 8, !dbg !1851
  %boottime116 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %57, i32 0, i32 10, !dbg !1851
  %58 = load i32, ptr %boottime116, align 4, !dbg !1851
  %conv117 = zext i32 %58 to i64, !dbg !1851
  %59 = inttoptr i64 %conv117 to ptr, !dbg !1851
  br label %cond.end118, !dbg !1851

cond.end118:                                      ; preds = %cond.false115, %cond.true113
  %cond119 = phi ptr [ %56, %cond.true113 ], [ %59, %cond.false115 ], !dbg !1851
  %free_pool120 = getelementptr inbounds %struct.anon.0, ptr %cond119, i32 0, i32 7, !dbg !1851
  %60 = load i32, ptr %free_pool120, align 8, !dbg !1851
  %61 = load ptr, ptr %tbl, align 8, !dbg !1851
  %arraydecay121 = getelementptr inbounds [3 x i64], ptr %__pad106, i64 0, i64 0, !dbg !1851
  %call122 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %60, ptr noundef %61, ptr noundef %arraydecay121) #8, !dbg !1851
  store i64 %call122, ptr %tmp110, align 8, !dbg !1851
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad106) #7, !dbg !1850
  %62 = load i64, ptr %tmp110, align 8, !dbg !1851
  %call123 = call i64 @__efi64_widen_efi_status(i64 noundef %62) #8, !dbg !1850
  br label %cond.end124, !dbg !1850

cond.end124:                                      ; preds = %cond.end118, %cond.end102
  %cond125 = phi i64 [ %call104, %cond.end102 ], [ %call123, %cond.end118 ], !dbg !1850
  br label %free_initrd, !dbg !1850

free_initrd:                                      ; preds = %cond.end124, %if.then49
  call void @llvm.dbg.label(metadata !1749), !dbg !1856
  %size126 = getelementptr inbounds %struct.linux_efi_initrd, ptr %initrd, i32 0, i32 1, !dbg !1857
  %63 = load i64, ptr %size126, align 8, !dbg !1857
  %base127 = getelementptr inbounds %struct.linux_efi_initrd, ptr %initrd, i32 0, i32 0, !dbg !1858
  %64 = load i64, ptr %base127, align 8, !dbg !1858
  call void @efi_free(i64 noundef %63, i64 noundef %64) #8, !dbg !1859
  br label %failed, !dbg !1859

failed:                                           ; preds = %free_initrd, %if.then24
  call void @llvm.dbg.label(metadata !1750), !dbg !1860
  %65 = load i64, ptr %status, align 8, !dbg !1861
  %call128 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.24, i64 noundef %65) #8, !dbg !1861
  %66 = load i64, ptr %status, align 8, !dbg !1862
  store i64 %66, ptr %retval, align 8, !dbg !1863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1863

cleanup:                                          ; preds = %failed, %if.end91, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #7, !dbg !1864
  call void @llvm.lifetime.end.p0(i64 16, ptr %initrd) #7, !dbg !1864
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #7, !dbg !1864
  call void @llvm.lifetime.end.p0(i64 16, ptr %tbl_guid) #7, !dbg !1864
  %67 = load i64, ptr %retval, align 8, !dbg !1864
  ret i64 %67, !dbg !1864
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone nounwind
define internal i64 @efi_load_initrd_dev_path(ptr noundef %initrd, i64 noundef %max) #1 !dbg !1865 {
entry:
  %retval = alloca i64, align 8
  %initrd.addr = alloca ptr, align 8
  %max.addr = alloca i64, align 8
  %lf2_proto_guid = alloca %struct.guid_t, align 4
  %dp = alloca ptr, align 8
  %lf2 = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %status = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad36 = alloca [3 x i64], align 16
  %tmp40 = alloca i64, align 8
  %__inst = alloca ptr, align 8
  %tmp61 = alloca i64, align 8
  %__pad68 = alloca [3 x i64], align 16
  %tmp72 = alloca i64, align 8
  %__inst91 = alloca ptr, align 8
  %tmp92 = alloca i64, align 8
  %__pad101 = alloca [3 x i64], align 16
  %tmp105 = alloca i64, align 8
  store ptr %initrd, ptr %initrd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %initrd.addr, metadata !1869, metadata !DIExpression()), !dbg !1905
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !1870, metadata !DIExpression()), !dbg !1906
  call void @llvm.lifetime.start.p0(i64 16, ptr %lf2_proto_guid) #7, !dbg !1907
  call void @llvm.dbg.declare(metadata ptr %lf2_proto_guid, metadata !1871, metadata !DIExpression()), !dbg !1908
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lf2_proto_guid, ptr align 4 @__const.efi_load_initrd_dev_path.lf2_proto_guid, i64 16, i1 false), !dbg !1908
  call void @llvm.lifetime.start.p0(i64 8, ptr %dp) #7, !dbg !1909
  call void @llvm.dbg.declare(metadata ptr %dp, metadata !1872, metadata !DIExpression()), !dbg !1910
  call void @llvm.lifetime.start.p0(i64 8, ptr %lf2) #7, !dbg !1911
  call void @llvm.dbg.declare(metadata ptr %lf2, metadata !1873, metadata !DIExpression()), !dbg !1912
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #7, !dbg !1913
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !1891, metadata !DIExpression()), !dbg !1914
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #7, !dbg !1915
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1892, metadata !DIExpression()), !dbg !1916
  store ptr @initrd_dev_path, ptr %dp, align 8, !dbg !1917
  %call = call zeroext i1 @efi_is_native() #8, !dbg !1918
  br i1 %call, label %cond.true, label %cond.false5, !dbg !1918

cond.true:                                        ; preds = %entry
  %call1 = call zeroext i1 @efi_is_native() #8, !dbg !1918
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !1918

cond.true2:                                       ; preds = %cond.true
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !1918
  %boottime = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 10, !dbg !1918
  %1 = load ptr, ptr %boottime, align 8, !dbg !1918
  br label %cond.end, !dbg !1918

cond.false:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !1918
  %boottime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 10, !dbg !1918
  %3 = load i32, ptr %boottime3, align 4, !dbg !1918
  %conv = zext i32 %3 to i64, !dbg !1918
  %4 = inttoptr i64 %conv to ptr, !dbg !1918
  br label %cond.end, !dbg !1918

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %1, %cond.true2 ], [ %4, %cond.false ], !dbg !1918
  %locate_device_path = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 21, !dbg !1918
  %5 = load ptr, ptr %locate_device_path, align 8, !dbg !1918
  %call4 = call win64cc i64 %5(ptr noundef %lf2_proto_guid, ptr noundef %dp, ptr noundef %handle) #8, !dbg !1918
  br label %cond.end19, !dbg !1918

cond.false5:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #7, !dbg !1919
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1893, metadata !DIExpression()), !dbg !1919
  br label %do.body, !dbg !1920

do.body:                                          ; preds = %cond.false5
  br label %do.cond, !dbg !1922

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1922

do.end:                                           ; preds = %do.cond
  %call6 = call zeroext i1 @efi_is_native() #8, !dbg !1919
  br i1 %call6, label %cond.true8, label %cond.false10, !dbg !1919

cond.true8:                                       ; preds = %do.end
  %6 = load ptr, ptr @efi_system_table, align 8, !dbg !1919
  %boottime9 = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 10, !dbg !1919
  %7 = load ptr, ptr %boottime9, align 8, !dbg !1919
  br label %cond.end13, !dbg !1919

cond.false10:                                     ; preds = %do.end
  %8 = load ptr, ptr @efi_system_table, align 8, !dbg !1919
  %boottime11 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %8, i32 0, i32 10, !dbg !1919
  %9 = load i32, ptr %boottime11, align 4, !dbg !1919
  %conv12 = zext i32 %9 to i64, !dbg !1919
  %10 = inttoptr i64 %conv12 to ptr, !dbg !1919
  br label %cond.end13, !dbg !1919

cond.end13:                                       ; preds = %cond.false10, %cond.true8
  %cond14 = phi ptr [ %7, %cond.true8 ], [ %10, %cond.false10 ], !dbg !1919
  %locate_device_path15 = getelementptr inbounds %struct.anon.0, ptr %cond14, i32 0, i32 21, !dbg !1919
  %11 = load i32, ptr %locate_device_path15, align 8, !dbg !1919
  %call16 = call ptr @efi64_zero_upper(ptr noundef %handle) #8, !dbg !1919
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1919
  %call17 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %11, ptr noundef %lf2_proto_guid, ptr noundef %dp, ptr noundef %call16, ptr noundef %arraydecay) #8, !dbg !1919
  store i64 %call17, ptr %tmp, align 8, !dbg !1919
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #7, !dbg !1918
  %12 = load i64, ptr %tmp, align 8, !dbg !1919
  %call18 = call i64 @__efi64_widen_efi_status(i64 noundef %12) #8, !dbg !1918
  br label %cond.end19, !dbg !1918

cond.end19:                                       ; preds = %cond.end13, %cond.end
  %cond20 = phi i64 [ %call4, %cond.end ], [ %call18, %cond.end13 ], !dbg !1918
  store i64 %cond20, ptr %status, align 8, !dbg !1924
  %13 = load i64, ptr %status, align 8, !dbg !1925
  %cmp = icmp ne i64 %13, 0, !dbg !1927
  br i1 %cmp, label %if.then, label %if.end, !dbg !1928

if.then:                                          ; preds = %cond.end19
  %14 = load i64, ptr %status, align 8, !dbg !1929
  store i64 %14, ptr %retval, align 8, !dbg !1930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1930

if.end:                                           ; preds = %cond.end19
  %call22 = call zeroext i1 @efi_is_native() #8, !dbg !1931
  br i1 %call22, label %cond.true24, label %cond.false35, !dbg !1931

cond.true24:                                      ; preds = %if.end
  %call25 = call zeroext i1 @efi_is_native() #8, !dbg !1931
  br i1 %call25, label %cond.true27, label %cond.false29, !dbg !1931

cond.true27:                                      ; preds = %cond.true24
  %15 = load ptr, ptr @efi_system_table, align 8, !dbg !1931
  %boottime28 = getelementptr inbounds %struct.anon.1, ptr %15, i32 0, i32 10, !dbg !1931
  %16 = load ptr, ptr %boottime28, align 8, !dbg !1931
  br label %cond.end32, !dbg !1931

cond.false29:                                     ; preds = %cond.true24
  %17 = load ptr, ptr @efi_system_table, align 8, !dbg !1931
  %boottime30 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %17, i32 0, i32 10, !dbg !1931
  %18 = load i32, ptr %boottime30, align 4, !dbg !1931
  %conv31 = zext i32 %18 to i64, !dbg !1931
  %19 = inttoptr i64 %conv31 to ptr, !dbg !1931
  br label %cond.end32, !dbg !1931

cond.end32:                                       ; preds = %cond.false29, %cond.true27
  %cond33 = phi ptr [ %16, %cond.true27 ], [ %19, %cond.false29 ], !dbg !1931
  %handle_protocol = getelementptr inbounds %struct.anon, ptr %cond33, i32 0, i32 17, !dbg !1931
  %20 = load ptr, ptr %handle_protocol, align 8, !dbg !1931
  %21 = load ptr, ptr %handle, align 8, !dbg !1931
  %call34 = call win64cc i64 %20(ptr noundef %21, ptr noundef %lf2_proto_guid, ptr noundef %lf2) #8, !dbg !1931
  br label %cond.end55, !dbg !1931

cond.false35:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad36) #7, !dbg !1932
  call void @llvm.dbg.declare(metadata ptr %__pad36, metadata !1895, metadata !DIExpression()), !dbg !1932
  br label %do.body37, !dbg !1933

do.body37:                                        ; preds = %cond.false35
  br label %do.cond38, !dbg !1935

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !1935

do.end39:                                         ; preds = %do.cond38
  %call41 = call zeroext i1 @efi_is_native() #8, !dbg !1932
  br i1 %call41, label %cond.true43, label %cond.false45, !dbg !1932

cond.true43:                                      ; preds = %do.end39
  %22 = load ptr, ptr @efi_system_table, align 8, !dbg !1932
  %boottime44 = getelementptr inbounds %struct.anon.1, ptr %22, i32 0, i32 10, !dbg !1932
  %23 = load ptr, ptr %boottime44, align 8, !dbg !1932
  br label %cond.end48, !dbg !1932

cond.false45:                                     ; preds = %do.end39
  %24 = load ptr, ptr @efi_system_table, align 8, !dbg !1932
  %boottime46 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %24, i32 0, i32 10, !dbg !1932
  %25 = load i32, ptr %boottime46, align 4, !dbg !1932
  %conv47 = zext i32 %25 to i64, !dbg !1932
  %26 = inttoptr i64 %conv47 to ptr, !dbg !1932
  br label %cond.end48, !dbg !1932

cond.end48:                                       ; preds = %cond.false45, %cond.true43
  %cond49 = phi ptr [ %23, %cond.true43 ], [ %26, %cond.false45 ], !dbg !1932
  %handle_protocol50 = getelementptr inbounds %struct.anon.0, ptr %cond49, i32 0, i32 17, !dbg !1932
  %27 = load i32, ptr %handle_protocol50, align 8, !dbg !1932
  %28 = load ptr, ptr %handle, align 8, !dbg !1932
  %call51 = call ptr @efi64_zero_upper(ptr noundef %lf2) #8, !dbg !1932
  %arraydecay52 = getelementptr inbounds [3 x i64], ptr %__pad36, i64 0, i64 0, !dbg !1932
  %call53 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %27, ptr noundef %28, ptr noundef %lf2_proto_guid, ptr noundef %call51, ptr noundef %arraydecay52) #8, !dbg !1932
  store i64 %call53, ptr %tmp40, align 8, !dbg !1932
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad36) #7, !dbg !1931
  %29 = load i64, ptr %tmp40, align 8, !dbg !1932
  %call54 = call i64 @__efi64_widen_efi_status(i64 noundef %29) #8, !dbg !1931
  br label %cond.end55, !dbg !1931

cond.end55:                                       ; preds = %cond.end48, %cond.end32
  %cond56 = phi i64 [ %call34, %cond.end32 ], [ %call54, %cond.end48 ], !dbg !1931
  store i64 %cond56, ptr %status, align 8, !dbg !1937
  %30 = load i64, ptr %status, align 8, !dbg !1938
  %cmp57 = icmp ne i64 %30, 0, !dbg !1940
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !1941

if.then59:                                        ; preds = %cond.end55
  %31 = load i64, ptr %status, align 8, !dbg !1942
  store i64 %31, ptr %retval, align 8, !dbg !1943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1943

if.end60:                                         ; preds = %cond.end55
  %32 = load ptr, ptr %initrd.addr, align 8, !dbg !1944
  %size = getelementptr inbounds %struct.linux_efi_initrd, ptr %32, i32 0, i32 1, !dbg !1945
  store i64 0, ptr %size, align 8, !dbg !1946
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #7, !dbg !1947
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !1897, metadata !DIExpression()), !dbg !1947
  %33 = load ptr, ptr %lf2, align 8, !dbg !1947
  store ptr %33, ptr %__inst, align 8, !dbg !1947
  %call62 = call zeroext i1 @efi_is_native() #8, !dbg !1947
  br i1 %call62, label %cond.true64, label %cond.false67, !dbg !1947

cond.true64:                                      ; preds = %if.end60
  %34 = load ptr, ptr %__inst, align 8, !dbg !1947
  %load_file = getelementptr inbounds %struct.anon.14, ptr %34, i32 0, i32 0, !dbg !1947
  %35 = load ptr, ptr %load_file, align 8, !dbg !1947
  %36 = load ptr, ptr %__inst, align 8, !dbg !1947
  %37 = load ptr, ptr %dp, align 8, !dbg !1947
  %38 = load ptr, ptr %initrd.addr, align 8, !dbg !1947
  %size65 = getelementptr inbounds %struct.linux_efi_initrd, ptr %38, i32 0, i32 1, !dbg !1947
  %call66 = call win64cc i64 %35(ptr noundef %36, ptr noundef %37, i1 noundef zeroext false, ptr noundef %size65, ptr noundef null) #8, !dbg !1947
  br label %cond.end79, !dbg !1947

cond.false67:                                     ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad68) #7, !dbg !1948
  call void @llvm.dbg.declare(metadata ptr %__pad68, metadata !1899, metadata !DIExpression()), !dbg !1948
  br label %do.body69, !dbg !1949

do.body69:                                        ; preds = %cond.false67
  br label %do.cond70, !dbg !1951

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !1951

do.end71:                                         ; preds = %do.cond70
  %39 = load ptr, ptr %__inst, align 8, !dbg !1948
  %load_file73 = getelementptr inbounds %struct.anon.15, ptr %39, i32 0, i32 0, !dbg !1948
  %40 = load i32, ptr %load_file73, align 8, !dbg !1948
  %41 = load ptr, ptr %__inst, align 8, !dbg !1948
  %42 = load ptr, ptr %dp, align 8, !dbg !1948
  %43 = load ptr, ptr %initrd.addr, align 8, !dbg !1948
  %size74 = getelementptr inbounds %struct.linux_efi_initrd, ptr %43, i32 0, i32 1, !dbg !1948
  %call75 = call ptr @efi64_zero_upper(ptr noundef %size74) #8, !dbg !1948
  %arraydecay76 = getelementptr inbounds [3 x i64], ptr %__pad68, i64 0, i64 0, !dbg !1948
  %call77 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %40, ptr noundef %41, ptr noundef %42, i32 noundef 0, ptr noundef %call75, ptr noundef null, ptr noundef %arraydecay76) #8, !dbg !1948
  store i64 %call77, ptr %tmp72, align 8, !dbg !1948
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad68) #7, !dbg !1947
  %44 = load i64, ptr %tmp72, align 8, !dbg !1948
  %call78 = call i64 @__efi64_widen_efi_status(i64 noundef %44) #8, !dbg !1947
  br label %cond.end79, !dbg !1947

cond.end79:                                       ; preds = %do.end71, %cond.true64
  %cond80 = phi i64 [ %call66, %cond.true64 ], [ %call78, %do.end71 ], !dbg !1947
  store i64 %cond80, ptr %tmp61, align 8, !dbg !1947
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #7, !dbg !1953
  %45 = load i64, ptr %tmp61, align 8, !dbg !1947
  store i64 %45, ptr %status, align 8, !dbg !1954
  %46 = load i64, ptr %status, align 8, !dbg !1955
  %cmp81 = icmp ne i64 %46, -9223372036854775803, !dbg !1957
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !1958

if.then83:                                        ; preds = %cond.end79
  store i64 -9223372036854775807, ptr %retval, align 8, !dbg !1959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1959

if.end84:                                         ; preds = %cond.end79
  %47 = load ptr, ptr %initrd.addr, align 8, !dbg !1960
  %size85 = getelementptr inbounds %struct.linux_efi_initrd, ptr %47, i32 0, i32 1, !dbg !1961
  %48 = load i64, ptr %size85, align 8, !dbg !1961
  %49 = load ptr, ptr %initrd.addr, align 8, !dbg !1962
  %base = getelementptr inbounds %struct.linux_efi_initrd, ptr %49, i32 0, i32 0, !dbg !1963
  %50 = load i64, ptr %max.addr, align 8, !dbg !1964
  %call86 = call i64 @efi_allocate_pages(i64 noundef %48, ptr noundef %base, i64 noundef %50) #8, !dbg !1965
  store i64 %call86, ptr %status, align 8, !dbg !1966
  %51 = load i64, ptr %status, align 8, !dbg !1967
  %cmp87 = icmp ne i64 %51, 0, !dbg !1969
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !1970

if.then89:                                        ; preds = %if.end84
  %52 = load i64, ptr %status, align 8, !dbg !1971
  store i64 %52, ptr %retval, align 8, !dbg !1972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1972

if.end90:                                         ; preds = %if.end84
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst91) #7, !dbg !1973
  call void @llvm.dbg.declare(metadata ptr %__inst91, metadata !1901, metadata !DIExpression()), !dbg !1973
  %53 = load ptr, ptr %lf2, align 8, !dbg !1973
  store ptr %53, ptr %__inst91, align 8, !dbg !1973
  %call93 = call zeroext i1 @efi_is_native() #8, !dbg !1973
  br i1 %call93, label %cond.true95, label %cond.false100, !dbg !1973

cond.true95:                                      ; preds = %if.end90
  %54 = load ptr, ptr %__inst91, align 8, !dbg !1973
  %load_file96 = getelementptr inbounds %struct.anon.14, ptr %54, i32 0, i32 0, !dbg !1973
  %55 = load ptr, ptr %load_file96, align 8, !dbg !1973
  %56 = load ptr, ptr %__inst91, align 8, !dbg !1973
  %57 = load ptr, ptr %dp, align 8, !dbg !1973
  %58 = load ptr, ptr %initrd.addr, align 8, !dbg !1973
  %size97 = getelementptr inbounds %struct.linux_efi_initrd, ptr %58, i32 0, i32 1, !dbg !1973
  %59 = load ptr, ptr %initrd.addr, align 8, !dbg !1973
  %base98 = getelementptr inbounds %struct.linux_efi_initrd, ptr %59, i32 0, i32 0, !dbg !1973
  %60 = load i64, ptr %base98, align 8, !dbg !1973
  %61 = inttoptr i64 %60 to ptr, !dbg !1973
  %call99 = call win64cc i64 %55(ptr noundef %56, ptr noundef %57, i1 noundef zeroext false, ptr noundef %size97, ptr noundef %61) #8, !dbg !1973
  br label %cond.end113, !dbg !1973

cond.false100:                                    ; preds = %if.end90
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad101) #7, !dbg !1974
  call void @llvm.dbg.declare(metadata ptr %__pad101, metadata !1903, metadata !DIExpression()), !dbg !1974
  br label %do.body102, !dbg !1975

do.body102:                                       ; preds = %cond.false100
  br label %do.cond103, !dbg !1977

do.cond103:                                       ; preds = %do.body102
  br label %do.end104, !dbg !1977

do.end104:                                        ; preds = %do.cond103
  %62 = load ptr, ptr %__inst91, align 8, !dbg !1974
  %load_file106 = getelementptr inbounds %struct.anon.15, ptr %62, i32 0, i32 0, !dbg !1974
  %63 = load i32, ptr %load_file106, align 8, !dbg !1974
  %64 = load ptr, ptr %__inst91, align 8, !dbg !1974
  %65 = load ptr, ptr %dp, align 8, !dbg !1974
  %66 = load ptr, ptr %initrd.addr, align 8, !dbg !1974
  %size107 = getelementptr inbounds %struct.linux_efi_initrd, ptr %66, i32 0, i32 1, !dbg !1974
  %call108 = call ptr @efi64_zero_upper(ptr noundef %size107) #8, !dbg !1974
  %67 = load ptr, ptr %initrd.addr, align 8, !dbg !1974
  %base109 = getelementptr inbounds %struct.linux_efi_initrd, ptr %67, i32 0, i32 0, !dbg !1974
  %68 = load i64, ptr %base109, align 8, !dbg !1974
  %69 = inttoptr i64 %68 to ptr, !dbg !1974
  %arraydecay110 = getelementptr inbounds [3 x i64], ptr %__pad101, i64 0, i64 0, !dbg !1974
  %call111 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %63, ptr noundef %64, ptr noundef %65, i32 noundef 0, ptr noundef %call108, ptr noundef %69, ptr noundef %arraydecay110) #8, !dbg !1974
  store i64 %call111, ptr %tmp105, align 8, !dbg !1974
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad101) #7, !dbg !1973
  %70 = load i64, ptr %tmp105, align 8, !dbg !1974
  %call112 = call i64 @__efi64_widen_efi_status(i64 noundef %70) #8, !dbg !1973
  br label %cond.end113, !dbg !1973

cond.end113:                                      ; preds = %do.end104, %cond.true95
  %cond114 = phi i64 [ %call99, %cond.true95 ], [ %call112, %do.end104 ], !dbg !1973
  store i64 %cond114, ptr %tmp92, align 8, !dbg !1973
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst91) #7, !dbg !1979
  %71 = load i64, ptr %tmp92, align 8, !dbg !1973
  store i64 %71, ptr %status, align 8, !dbg !1980
  %72 = load i64, ptr %status, align 8, !dbg !1981
  %cmp115 = icmp ne i64 %72, 0, !dbg !1983
  br i1 %cmp115, label %if.then117, label %if.end120, !dbg !1984

if.then117:                                       ; preds = %cond.end113
  %73 = load ptr, ptr %initrd.addr, align 8, !dbg !1985
  %size118 = getelementptr inbounds %struct.linux_efi_initrd, ptr %73, i32 0, i32 1, !dbg !1987
  %74 = load i64, ptr %size118, align 8, !dbg !1987
  %75 = load ptr, ptr %initrd.addr, align 8, !dbg !1988
  %base119 = getelementptr inbounds %struct.linux_efi_initrd, ptr %75, i32 0, i32 0, !dbg !1989
  %76 = load i64, ptr %base119, align 8, !dbg !1989
  call void @efi_free(i64 noundef %74, i64 noundef %76) #8, !dbg !1990
  store i64 -9223372036854775807, ptr %retval, align 8, !dbg !1991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1991

if.end120:                                        ; preds = %cond.end113
  store i64 0, ptr %retval, align 8, !dbg !1992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1992

cleanup:                                          ; preds = %if.end120, %if.then117, %if.then89, %if.then83, %if.then59, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #7, !dbg !1993
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #7, !dbg !1993
  call void @llvm.lifetime.end.p0(i64 8, ptr %lf2) #7, !dbg !1993
  call void @llvm.lifetime.end.p0(i64 8, ptr %dp) #7, !dbg !1993
  call void @llvm.lifetime.end.p0(i64 16, ptr %lf2_proto_guid) #7, !dbg !1993
  %77 = load i64, ptr %retval, align 8, !dbg !1993
  ret i64 %77, !dbg !1993
}

; Function Attrs: noredzone nounwind
define internal i64 @efi_load_initrd_cmdline(ptr noundef %image, ptr noundef %initrd, i64 noundef %soft_limit, i64 noundef %hard_limit) #1 !dbg !1994 {
entry:
  %retval = alloca i64, align 8
  %image.addr = alloca ptr, align 8
  %initrd.addr = alloca ptr, align 8
  %soft_limit.addr = alloca i64, align 8
  %hard_limit.addr = alloca i64, align 8
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !1998, metadata !DIExpression()), !dbg !2002
  store ptr %initrd, ptr %initrd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %initrd.addr, metadata !1999, metadata !DIExpression()), !dbg !2003
  store i64 %soft_limit, ptr %soft_limit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %soft_limit.addr, metadata !2000, metadata !DIExpression()), !dbg !2004
  store i64 %hard_limit, ptr %hard_limit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hard_limit.addr, metadata !2001, metadata !DIExpression()), !dbg !2005
  %0 = load ptr, ptr %image.addr, align 8, !dbg !2006
  %cmp = icmp eq ptr %0, null, !dbg !2008
  br i1 %cmp, label %if.then, label %if.end, !dbg !2009

if.then:                                          ; preds = %entry
  store i64 -9223372036854775805, ptr %retval, align 8, !dbg !2010
  br label %return, !dbg !2010

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %image.addr, align 8, !dbg !2011
  %2 = load i64, ptr %soft_limit.addr, align 8, !dbg !2012
  %3 = load i64, ptr %hard_limit.addr, align 8, !dbg !2013
  %4 = load ptr, ptr %initrd.addr, align 8, !dbg !2014
  %base = getelementptr inbounds %struct.linux_efi_initrd, ptr %4, i32 0, i32 0, !dbg !2015
  %5 = load ptr, ptr %initrd.addr, align 8, !dbg !2016
  %size = getelementptr inbounds %struct.linux_efi_initrd, ptr %5, i32 0, i32 1, !dbg !2017
  %call = call i64 @handle_cmdline_files(ptr noundef %1, ptr noundef @.str.30, i32 noundef 14, i64 noundef %2, i64 noundef %3, ptr noundef %base, ptr noundef %size) #8, !dbg !2018
  store i64 %call, ptr %retval, align 8, !dbg !2019
  br label %return, !dbg !2019

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, ptr %retval, align 8, !dbg !2020
  ret i64 %6, !dbg !2020
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone
declare !dbg !2021 hidden void @efi_free(i64 noundef, i64 noundef) #4

; Function Attrs: noredzone nounwind
define hidden i64 @efi_wait_for_key(i64 noundef %usec, ptr noundef %key) #1 !dbg !2024 {
entry:
  %retval = alloca i64, align 8
  %usec.addr = alloca i64, align 8
  %key.addr = alloca ptr, align 8
  %events = alloca [2 x ptr], align 16
  %timer = alloca ptr, align 8
  %index = alloca i64, align 8
  %con_in = alloca ptr, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %__pad57 = alloca [3 x i64], align 16
  %tmp61 = alloca i64, align 8
  %__pad102 = alloca [3 x i64], align 16
  %tmp106 = alloca i64, align 8
  %__inst = alloca ptr, align 8
  %tmp130 = alloca i64, align 8
  %__pad136 = alloca [3 x i64], align 16
  %tmp140 = alloca i64, align 8
  %__pad163 = alloca [3 x i64], align 16
  %tmp167 = alloca i64, align 8
  store i64 %usec, ptr %usec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usec.addr, metadata !2028, metadata !DIExpression()), !dbg !2051
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2029, metadata !DIExpression()), !dbg !2052
  call void @llvm.lifetime.start.p0(i64 16, ptr %events) #7, !dbg !2053
  call void @llvm.dbg.declare(metadata ptr %events, metadata !2030, metadata !DIExpression()), !dbg !2054
  call void @llvm.lifetime.start.p0(i64 8, ptr %timer) #7, !dbg !2053
  call void @llvm.dbg.declare(metadata ptr %timer, metadata !2032, metadata !DIExpression()), !dbg !2055
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #7, !dbg !2056
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2033, metadata !DIExpression()), !dbg !2057
  call void @llvm.lifetime.start.p0(i64 8, ptr %con_in) #7, !dbg !2058
  call void @llvm.dbg.declare(metadata ptr %con_in, metadata !2034, metadata !DIExpression()), !dbg !2059
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #7, !dbg !2060
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2035, metadata !DIExpression()), !dbg !2061
  %call = call zeroext i1 @efi_is_native() #8, !dbg !2062
  br i1 %call, label %cond.true, label %cond.false, !dbg !2062

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !2062
  %con_in1 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 4, !dbg !2062
  %1 = load ptr, ptr %con_in1, align 8, !dbg !2062
  br label %cond.end, !dbg !2062

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !2062
  %con_in2 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 4, !dbg !2062
  %3 = load i32, ptr %con_in2, align 4, !dbg !2062
  %conv = zext i32 %3 to i64, !dbg !2062
  %4 = inttoptr i64 %conv to ptr, !dbg !2062
  br label %cond.end, !dbg !2062

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %4, %cond.false ], !dbg !2062
  store ptr %cond, ptr %con_in, align 8, !dbg !2063
  %5 = load ptr, ptr %con_in, align 8, !dbg !2064
  %tobool = icmp ne ptr %5, null, !dbg !2064
  br i1 %tobool, label %if.end, label %if.then, !dbg !2066

if.then:                                          ; preds = %cond.end
  store i64 -9223372036854775805, ptr %retval, align 8, !dbg !2067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2067

if.end:                                           ; preds = %cond.end
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %events, i64 0, i64 0, !dbg !2068
  %call3 = call zeroext i1 @efi_is_native() #8, !dbg !2069
  br i1 %call3, label %cond.true5, label %cond.false6, !dbg !2069

cond.true5:                                       ; preds = %if.end
  %6 = load ptr, ptr %con_in, align 8, !dbg !2069
  %wait_for_key = getelementptr inbounds %struct.anon.5, ptr %6, i32 0, i32 2, !dbg !2069
  %7 = load ptr, ptr %wait_for_key, align 8, !dbg !2069
  br label %cond.end9, !dbg !2069

cond.false6:                                      ; preds = %if.end
  %8 = load ptr, ptr %con_in, align 8, !dbg !2069
  %wait_for_key7 = getelementptr inbounds %struct.anon.6, ptr %8, i32 0, i32 2, !dbg !2069
  %9 = load i32, ptr %wait_for_key7, align 8, !dbg !2069
  %conv8 = zext i32 %9 to i64, !dbg !2069
  %10 = inttoptr i64 %conv8 to ptr, !dbg !2069
  br label %cond.end9, !dbg !2069

cond.end9:                                        ; preds = %cond.false6, %cond.true5
  %cond10 = phi ptr [ %7, %cond.true5 ], [ %10, %cond.false6 ], !dbg !2069
  call void @efi_set_event_at(ptr noundef %arraydecay, i64 noundef 0, ptr noundef %cond10) #8, !dbg !2070
  %call11 = call zeroext i1 @efi_is_native() #8, !dbg !2071
  br i1 %call11, label %cond.true13, label %cond.false23, !dbg !2071

cond.true13:                                      ; preds = %cond.end9
  %call14 = call zeroext i1 @efi_is_native() #8, !dbg !2071
  br i1 %call14, label %cond.true16, label %cond.false17, !dbg !2071

cond.true16:                                      ; preds = %cond.true13
  %11 = load ptr, ptr @efi_system_table, align 8, !dbg !2071
  %boottime = getelementptr inbounds %struct.anon.1, ptr %11, i32 0, i32 10, !dbg !2071
  %12 = load ptr, ptr %boottime, align 8, !dbg !2071
  br label %cond.end20, !dbg !2071

cond.false17:                                     ; preds = %cond.true13
  %13 = load ptr, ptr @efi_system_table, align 8, !dbg !2071
  %boottime18 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %13, i32 0, i32 10, !dbg !2071
  %14 = load i32, ptr %boottime18, align 4, !dbg !2071
  %conv19 = zext i32 %14 to i64, !dbg !2071
  %15 = inttoptr i64 %conv19 to ptr, !dbg !2071
  br label %cond.end20, !dbg !2071

cond.end20:                                       ; preds = %cond.false17, %cond.true16
  %cond21 = phi ptr [ %12, %cond.true16 ], [ %15, %cond.false17 ], !dbg !2071
  %create_event = getelementptr inbounds %struct.anon, ptr %cond21, i32 0, i32 8, !dbg !2071
  %16 = load ptr, ptr %create_event, align 8, !dbg !2071
  %call22 = call win64cc i64 %16(i32 noundef -2147483648, i64 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %timer) #8, !dbg !2071
  br label %cond.end38, !dbg !2071

cond.false23:                                     ; preds = %cond.end9
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #7, !dbg !2072
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !2036, metadata !DIExpression()), !dbg !2072
  br label %do.body, !dbg !2073

do.body:                                          ; preds = %cond.false23
  br label %do.cond, !dbg !2075

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2075

do.end:                                           ; preds = %do.cond
  %call24 = call zeroext i1 @efi_is_native() #8, !dbg !2072
  br i1 %call24, label %cond.true26, label %cond.false28, !dbg !2072

cond.true26:                                      ; preds = %do.end
  %17 = load ptr, ptr @efi_system_table, align 8, !dbg !2072
  %boottime27 = getelementptr inbounds %struct.anon.1, ptr %17, i32 0, i32 10, !dbg !2072
  %18 = load ptr, ptr %boottime27, align 8, !dbg !2072
  br label %cond.end31, !dbg !2072

cond.false28:                                     ; preds = %do.end
  %19 = load ptr, ptr @efi_system_table, align 8, !dbg !2072
  %boottime29 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %19, i32 0, i32 10, !dbg !2072
  %20 = load i32, ptr %boottime29, align 4, !dbg !2072
  %conv30 = zext i32 %20 to i64, !dbg !2072
  %21 = inttoptr i64 %conv30 to ptr, !dbg !2072
  br label %cond.end31, !dbg !2072

cond.end31:                                       ; preds = %cond.false28, %cond.true26
  %cond32 = phi ptr [ %18, %cond.true26 ], [ %21, %cond.false28 ], !dbg !2072
  %create_event33 = getelementptr inbounds %struct.anon.0, ptr %cond32, i32 0, i32 8, !dbg !2072
  %22 = load i32, ptr %create_event33, align 4, !dbg !2072
  %call34 = call ptr @efi64_zero_upper(ptr noundef %timer) #8, !dbg !2072
  %arraydecay35 = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !2072
  %call36 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %22, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %call34, ptr noundef %arraydecay35) #8, !dbg !2072
  store i64 %call36, ptr %tmp, align 8, !dbg !2072
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #7, !dbg !2071
  %23 = load i64, ptr %tmp, align 8, !dbg !2072
  %call37 = call i64 @__efi64_widen_efi_status(i64 noundef %23) #8, !dbg !2071
  br label %cond.end38, !dbg !2071

cond.end38:                                       ; preds = %cond.end31, %cond.end20
  %cond39 = phi i64 [ %call22, %cond.end20 ], [ %call37, %cond.end31 ], !dbg !2071
  store i64 %cond39, ptr %status, align 8, !dbg !2077
  %24 = load i64, ptr %status, align 8, !dbg !2078
  %cmp = icmp ne i64 %24, 0, !dbg !2080
  br i1 %cmp, label %if.then41, label %if.end42, !dbg !2081

if.then41:                                        ; preds = %cond.end38
  %25 = load i64, ptr %status, align 8, !dbg !2082
  store i64 %25, ptr %retval, align 8, !dbg !2083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2083

if.end42:                                         ; preds = %cond.end38
  %call43 = call zeroext i1 @efi_is_native() #8, !dbg !2084
  br i1 %call43, label %cond.true45, label %cond.false56, !dbg !2084

cond.true45:                                      ; preds = %if.end42
  %call46 = call zeroext i1 @efi_is_native() #8, !dbg !2084
  br i1 %call46, label %cond.true48, label %cond.false50, !dbg !2084

cond.true48:                                      ; preds = %cond.true45
  %26 = load ptr, ptr @efi_system_table, align 8, !dbg !2084
  %boottime49 = getelementptr inbounds %struct.anon.1, ptr %26, i32 0, i32 10, !dbg !2084
  %27 = load ptr, ptr %boottime49, align 8, !dbg !2084
  br label %cond.end53, !dbg !2084

cond.false50:                                     ; preds = %cond.true45
  %28 = load ptr, ptr @efi_system_table, align 8, !dbg !2084
  %boottime51 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %28, i32 0, i32 10, !dbg !2084
  %29 = load i32, ptr %boottime51, align 4, !dbg !2084
  %conv52 = zext i32 %29 to i64, !dbg !2084
  %30 = inttoptr i64 %conv52 to ptr, !dbg !2084
  br label %cond.end53, !dbg !2084

cond.end53:                                       ; preds = %cond.false50, %cond.true48
  %cond54 = phi ptr [ %27, %cond.true48 ], [ %30, %cond.false50 ], !dbg !2084
  %set_timer = getelementptr inbounds %struct.anon, ptr %cond54, i32 0, i32 9, !dbg !2084
  %31 = load ptr, ptr %set_timer, align 8, !dbg !2084
  %32 = load ptr, ptr %timer, align 8, !dbg !2084
  %33 = load i64, ptr %usec.addr, align 8, !dbg !2084
  %mul = mul i64 10, %33, !dbg !2084
  %call55 = call win64cc i64 %31(ptr noundef %32, i32 noundef 2, i64 noundef %mul) #8, !dbg !2084
  br label %cond.end80, !dbg !2084

cond.false56:                                     ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad57) #7, !dbg !2085
  call void @llvm.dbg.declare(metadata ptr %__pad57, metadata !2038, metadata !DIExpression()), !dbg !2085
  br label %do.body58, !dbg !2086

do.body58:                                        ; preds = %cond.false56
  br label %do.cond59, !dbg !2088

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !2088

do.end60:                                         ; preds = %do.cond59
  %call62 = call zeroext i1 @efi_is_native() #8, !dbg !2085
  br i1 %call62, label %cond.true64, label %cond.false66, !dbg !2085

cond.true64:                                      ; preds = %do.end60
  %34 = load ptr, ptr @efi_system_table, align 8, !dbg !2085
  %boottime65 = getelementptr inbounds %struct.anon.1, ptr %34, i32 0, i32 10, !dbg !2085
  %35 = load ptr, ptr %boottime65, align 8, !dbg !2085
  br label %cond.end69, !dbg !2085

cond.false66:                                     ; preds = %do.end60
  %36 = load ptr, ptr @efi_system_table, align 8, !dbg !2085
  %boottime67 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %36, i32 0, i32 10, !dbg !2085
  %37 = load i32, ptr %boottime67, align 4, !dbg !2085
  %conv68 = zext i32 %37 to i64, !dbg !2085
  %38 = inttoptr i64 %conv68 to ptr, !dbg !2085
  br label %cond.end69, !dbg !2085

cond.end69:                                       ; preds = %cond.false66, %cond.true64
  %cond70 = phi ptr [ %35, %cond.true64 ], [ %38, %cond.false66 ], !dbg !2085
  %set_timer71 = getelementptr inbounds %struct.anon.0, ptr %cond70, i32 0, i32 9, !dbg !2085
  %39 = load i32, ptr %set_timer71, align 8, !dbg !2085
  %40 = load ptr, ptr %timer, align 8, !dbg !2085
  %41 = load i64, ptr %usec.addr, align 8, !dbg !2085
  %mul72 = mul i64 10, %41, !dbg !2085
  %and = and i64 %mul72, 4294967295, !dbg !2085
  %conv73 = trunc i64 %and to i32, !dbg !2085
  %42 = load i64, ptr %usec.addr, align 8, !dbg !2085
  %mul74 = mul i64 10, %42, !dbg !2085
  %shr = lshr i64 %mul74, 16, !dbg !2085
  %shr75 = lshr i64 %shr, 16, !dbg !2085
  %conv76 = trunc i64 %shr75 to i32, !dbg !2085
  %arraydecay77 = getelementptr inbounds [3 x i64], ptr %__pad57, i64 0, i64 0, !dbg !2085
  %call78 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %39, ptr noundef %40, i32 noundef 2, i32 noundef %conv73, i32 noundef %conv76, ptr noundef %arraydecay77) #8, !dbg !2085
  store i64 %call78, ptr %tmp61, align 8, !dbg !2085
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad57) #7, !dbg !2084
  %43 = load i64, ptr %tmp61, align 8, !dbg !2085
  %call79 = call i64 @__efi64_widen_efi_status(i64 noundef %43) #8, !dbg !2084
  br label %cond.end80, !dbg !2084

cond.end80:                                       ; preds = %cond.end69, %cond.end53
  %cond81 = phi i64 [ %call55, %cond.end53 ], [ %call79, %cond.end69 ], !dbg !2084
  store i64 %cond81, ptr %status, align 8, !dbg !2090
  %44 = load i64, ptr %status, align 8, !dbg !2091
  %cmp82 = icmp ne i64 %44, 0, !dbg !2093
  br i1 %cmp82, label %if.then84, label %if.end85, !dbg !2094

if.then84:                                        ; preds = %cond.end80
  %45 = load i64, ptr %status, align 8, !dbg !2095
  store i64 %45, ptr %retval, align 8, !dbg !2096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2096

if.end85:                                         ; preds = %cond.end80
  %arraydecay86 = getelementptr inbounds [2 x ptr], ptr %events, i64 0, i64 0, !dbg !2097
  %46 = load ptr, ptr %timer, align 8, !dbg !2098
  call void @efi_set_event_at(ptr noundef %arraydecay86, i64 noundef 1, ptr noundef %46) #8, !dbg !2099
  %call87 = call zeroext i1 @efi_is_native() #8, !dbg !2100
  br i1 %call87, label %cond.true89, label %cond.false101, !dbg !2100

cond.true89:                                      ; preds = %if.end85
  %call90 = call zeroext i1 @efi_is_native() #8, !dbg !2100
  br i1 %call90, label %cond.true92, label %cond.false94, !dbg !2100

cond.true92:                                      ; preds = %cond.true89
  %47 = load ptr, ptr @efi_system_table, align 8, !dbg !2100
  %boottime93 = getelementptr inbounds %struct.anon.1, ptr %47, i32 0, i32 10, !dbg !2100
  %48 = load ptr, ptr %boottime93, align 8, !dbg !2100
  br label %cond.end97, !dbg !2100

cond.false94:                                     ; preds = %cond.true89
  %49 = load ptr, ptr @efi_system_table, align 8, !dbg !2100
  %boottime95 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %49, i32 0, i32 10, !dbg !2100
  %50 = load i32, ptr %boottime95, align 4, !dbg !2100
  %conv96 = zext i32 %50 to i64, !dbg !2100
  %51 = inttoptr i64 %conv96 to ptr, !dbg !2100
  br label %cond.end97, !dbg !2100

cond.end97:                                       ; preds = %cond.false94, %cond.true92
  %cond98 = phi ptr [ %48, %cond.true92 ], [ %51, %cond.false94 ], !dbg !2100
  %wait_for_event = getelementptr inbounds %struct.anon, ptr %cond98, i32 0, i32 10, !dbg !2100
  %52 = load ptr, ptr %wait_for_event, align 8, !dbg !2100
  %arraydecay99 = getelementptr inbounds [2 x ptr], ptr %events, i64 0, i64 0, !dbg !2100
  %call100 = call win64cc i64 %52(i64 noundef 2, ptr noundef %arraydecay99, ptr noundef %index) #8, !dbg !2100
  br label %cond.end122, !dbg !2100

cond.false101:                                    ; preds = %if.end85
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad102) #7, !dbg !2101
  call void @llvm.dbg.declare(metadata ptr %__pad102, metadata !2040, metadata !DIExpression()), !dbg !2101
  br label %do.body103, !dbg !2102

do.body103:                                       ; preds = %cond.false101
  br label %do.cond104, !dbg !2104

do.cond104:                                       ; preds = %do.body103
  br label %do.end105, !dbg !2104

do.end105:                                        ; preds = %do.cond104
  %call107 = call zeroext i1 @efi_is_native() #8, !dbg !2101
  br i1 %call107, label %cond.true109, label %cond.false111, !dbg !2101

cond.true109:                                     ; preds = %do.end105
  %53 = load ptr, ptr @efi_system_table, align 8, !dbg !2101
  %boottime110 = getelementptr inbounds %struct.anon.1, ptr %53, i32 0, i32 10, !dbg !2101
  %54 = load ptr, ptr %boottime110, align 8, !dbg !2101
  br label %cond.end114, !dbg !2101

cond.false111:                                    ; preds = %do.end105
  %55 = load ptr, ptr @efi_system_table, align 8, !dbg !2101
  %boottime112 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %55, i32 0, i32 10, !dbg !2101
  %56 = load i32, ptr %boottime112, align 4, !dbg !2101
  %conv113 = zext i32 %56 to i64, !dbg !2101
  %57 = inttoptr i64 %conv113 to ptr, !dbg !2101
  br label %cond.end114, !dbg !2101

cond.end114:                                      ; preds = %cond.false111, %cond.true109
  %cond115 = phi ptr [ %54, %cond.true109 ], [ %57, %cond.false111 ], !dbg !2101
  %wait_for_event116 = getelementptr inbounds %struct.anon.0, ptr %cond115, i32 0, i32 10, !dbg !2101
  %58 = load i32, ptr %wait_for_event116, align 4, !dbg !2101
  %arraydecay117 = getelementptr inbounds [2 x ptr], ptr %events, i64 0, i64 0, !dbg !2101
  %call118 = call ptr @efi64_zero_upper(ptr noundef %index) #8, !dbg !2101
  %arraydecay119 = getelementptr inbounds [3 x i64], ptr %__pad102, i64 0, i64 0, !dbg !2101
  %call120 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %58, i32 noundef 2, ptr noundef %arraydecay117, ptr noundef %call118, ptr noundef %arraydecay119) #8, !dbg !2101
  store i64 %call120, ptr %tmp106, align 8, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad102) #7, !dbg !2100
  %59 = load i64, ptr %tmp106, align 8, !dbg !2101
  %call121 = call i64 @__efi64_widen_efi_status(i64 noundef %59) #8, !dbg !2100
  br label %cond.end122, !dbg !2100

cond.end122:                                      ; preds = %cond.end114, %cond.end97
  %cond123 = phi i64 [ %call100, %cond.end97 ], [ %call121, %cond.end114 ], !dbg !2100
  store i64 %cond123, ptr %status, align 8, !dbg !2106
  %60 = load i64, ptr %status, align 8, !dbg !2107
  %cmp124 = icmp eq i64 %60, 0, !dbg !2108
  br i1 %cmp124, label %if.then126, label %if.end148, !dbg !2109

if.then126:                                       ; preds = %cond.end122
  %61 = load i64, ptr %index, align 8, !dbg !2110
  %cmp127 = icmp eq i64 %61, 0, !dbg !2111
  br i1 %cmp127, label %if.then129, label %if.else, !dbg !2112

if.then129:                                       ; preds = %if.then126
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #7, !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !2042, metadata !DIExpression()), !dbg !2113
  %62 = load ptr, ptr %con_in, align 8, !dbg !2113
  store ptr %62, ptr %__inst, align 8, !dbg !2113
  %call131 = call zeroext i1 @efi_is_native() #8, !dbg !2113
  br i1 %call131, label %cond.true133, label %cond.false135, !dbg !2113

cond.true133:                                     ; preds = %if.then129
  %63 = load ptr, ptr %__inst, align 8, !dbg !2113
  %read_keystroke = getelementptr inbounds %struct.anon.5, ptr %63, i32 0, i32 1, !dbg !2113
  %64 = load ptr, ptr %read_keystroke, align 8, !dbg !2113
  %65 = load ptr, ptr %__inst, align 8, !dbg !2113
  %66 = load ptr, ptr %key.addr, align 8, !dbg !2113
  %call134 = call win64cc i64 %64(ptr noundef %65, ptr noundef %66) #8, !dbg !2113
  br label %cond.end145, !dbg !2113

cond.false135:                                    ; preds = %if.then129
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad136) #7, !dbg !2114
  call void @llvm.dbg.declare(metadata ptr %__pad136, metadata !2047, metadata !DIExpression()), !dbg !2114
  br label %do.body137, !dbg !2115

do.body137:                                       ; preds = %cond.false135
  br label %do.cond138, !dbg !2117

do.cond138:                                       ; preds = %do.body137
  br label %do.end139, !dbg !2117

do.end139:                                        ; preds = %do.cond138
  %67 = load ptr, ptr %__inst, align 8, !dbg !2114
  %read_keystroke141 = getelementptr inbounds %struct.anon.6, ptr %67, i32 0, i32 1, !dbg !2114
  %68 = load i32, ptr %read_keystroke141, align 4, !dbg !2114
  %69 = load ptr, ptr %__inst, align 8, !dbg !2114
  %70 = load ptr, ptr %key.addr, align 8, !dbg !2114
  %arraydecay142 = getelementptr inbounds [3 x i64], ptr %__pad136, i64 0, i64 0, !dbg !2114
  %call143 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %arraydecay142) #8, !dbg !2114
  store i64 %call143, ptr %tmp140, align 8, !dbg !2114
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad136) #7, !dbg !2113
  %71 = load i64, ptr %tmp140, align 8, !dbg !2114
  %call144 = call i64 @__efi64_widen_efi_status(i64 noundef %71) #8, !dbg !2113
  br label %cond.end145, !dbg !2113

cond.end145:                                      ; preds = %do.end139, %cond.true133
  %cond146 = phi i64 [ %call134, %cond.true133 ], [ %call144, %do.end139 ], !dbg !2113
  store i64 %cond146, ptr %tmp130, align 8, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #7, !dbg !2119
  %72 = load i64, ptr %tmp130, align 8, !dbg !2113
  store i64 %72, ptr %status, align 8, !dbg !2120
  br label %if.end147, !dbg !2121

if.else:                                          ; preds = %if.then126
  store i64 -9223372036854775790, ptr %status, align 8, !dbg !2122
  br label %if.end147

if.end147:                                        ; preds = %if.else, %cond.end145
  br label %if.end148, !dbg !2123

if.end148:                                        ; preds = %if.end147, %cond.end122
  %call149 = call zeroext i1 @efi_is_native() #8, !dbg !2124
  br i1 %call149, label %cond.true151, label %cond.false162, !dbg !2124

cond.true151:                                     ; preds = %if.end148
  %call152 = call zeroext i1 @efi_is_native() #8, !dbg !2124
  br i1 %call152, label %cond.true154, label %cond.false156, !dbg !2124

cond.true154:                                     ; preds = %cond.true151
  %73 = load ptr, ptr @efi_system_table, align 8, !dbg !2124
  %boottime155 = getelementptr inbounds %struct.anon.1, ptr %73, i32 0, i32 10, !dbg !2124
  %74 = load ptr, ptr %boottime155, align 8, !dbg !2124
  br label %cond.end159, !dbg !2124

cond.false156:                                    ; preds = %cond.true151
  %75 = load ptr, ptr @efi_system_table, align 8, !dbg !2124
  %boottime157 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %75, i32 0, i32 10, !dbg !2124
  %76 = load i32, ptr %boottime157, align 4, !dbg !2124
  %conv158 = zext i32 %76 to i64, !dbg !2124
  %77 = inttoptr i64 %conv158 to ptr, !dbg !2124
  br label %cond.end159, !dbg !2124

cond.end159:                                      ; preds = %cond.false156, %cond.true154
  %cond160 = phi ptr [ %74, %cond.true154 ], [ %77, %cond.false156 ], !dbg !2124
  %close_event = getelementptr inbounds %struct.anon, ptr %cond160, i32 0, i32 12, !dbg !2124
  %78 = load ptr, ptr %close_event, align 8, !dbg !2124
  %79 = load ptr, ptr %timer, align 8, !dbg !2124
  %call161 = call win64cc i64 %78(ptr noundef %79) #8, !dbg !2124
  br label %cond.end181, !dbg !2124

cond.false162:                                    ; preds = %if.end148
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad163) #7, !dbg !2125
  call void @llvm.dbg.declare(metadata ptr %__pad163, metadata !2049, metadata !DIExpression()), !dbg !2125
  br label %do.body164, !dbg !2126

do.body164:                                       ; preds = %cond.false162
  br label %do.cond165, !dbg !2128

do.cond165:                                       ; preds = %do.body164
  br label %do.end166, !dbg !2128

do.end166:                                        ; preds = %do.cond165
  %call168 = call zeroext i1 @efi_is_native() #8, !dbg !2125
  br i1 %call168, label %cond.true170, label %cond.false172, !dbg !2125

cond.true170:                                     ; preds = %do.end166
  %80 = load ptr, ptr @efi_system_table, align 8, !dbg !2125
  %boottime171 = getelementptr inbounds %struct.anon.1, ptr %80, i32 0, i32 10, !dbg !2125
  %81 = load ptr, ptr %boottime171, align 8, !dbg !2125
  br label %cond.end175, !dbg !2125

cond.false172:                                    ; preds = %do.end166
  %82 = load ptr, ptr @efi_system_table, align 8, !dbg !2125
  %boottime173 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %82, i32 0, i32 10, !dbg !2125
  %83 = load i32, ptr %boottime173, align 4, !dbg !2125
  %conv174 = zext i32 %83 to i64, !dbg !2125
  %84 = inttoptr i64 %conv174 to ptr, !dbg !2125
  br label %cond.end175, !dbg !2125

cond.end175:                                      ; preds = %cond.false172, %cond.true170
  %cond176 = phi ptr [ %81, %cond.true170 ], [ %84, %cond.false172 ], !dbg !2125
  %close_event177 = getelementptr inbounds %struct.anon.0, ptr %cond176, i32 0, i32 12, !dbg !2125
  %85 = load i32, ptr %close_event177, align 4, !dbg !2125
  %86 = load ptr, ptr %timer, align 8, !dbg !2125
  %arraydecay178 = getelementptr inbounds [3 x i64], ptr %__pad163, i64 0, i64 0, !dbg !2125
  %call179 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %85, ptr noundef %86, ptr noundef %arraydecay178) #8, !dbg !2125
  store i64 %call179, ptr %tmp167, align 8, !dbg !2125
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad163) #7, !dbg !2124
  %87 = load i64, ptr %tmp167, align 8, !dbg !2125
  %call180 = call i64 @__efi64_widen_efi_status(i64 noundef %87) #8, !dbg !2124
  br label %cond.end181, !dbg !2124

cond.end181:                                      ; preds = %cond.end175, %cond.end159
  %cond182 = phi i64 [ %call161, %cond.end159 ], [ %call180, %cond.end175 ], !dbg !2124
  %88 = load i64, ptr %status, align 8, !dbg !2130
  store i64 %88, ptr %retval, align 8, !dbg !2131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2131

cleanup:                                          ; preds = %cond.end181, %if.then84, %if.then41, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #7, !dbg !2132
  call void @llvm.lifetime.end.p0(i64 8, ptr %con_in) #7, !dbg !2132
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #7, !dbg !2132
  call void @llvm.lifetime.end.p0(i64 8, ptr %timer) #7, !dbg !2132
  call void @llvm.lifetime.end.p0(i64 16, ptr %events) #7, !dbg !2132
  %89 = load i64, ptr %retval, align 8, !dbg !2132
  ret i64 %89, !dbg !2132
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @efi_set_event_at(ptr noundef %events, i64 noundef %idx, ptr noundef %event) #5 !dbg !2133 {
entry:
  %events.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  %event.addr = alloca ptr, align 8
  store ptr %events, ptr %events.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %events.addr, metadata !2137, metadata !DIExpression()), !dbg !2140
  store i64 %idx, ptr %idx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !2138, metadata !DIExpression()), !dbg !2141
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !2139, metadata !DIExpression()), !dbg !2142
  %call = call zeroext i1 @efi_is_native() #8, !dbg !2143
  br i1 %call, label %if.then, label %if.else, !dbg !2145

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %event.addr, align 8, !dbg !2146
  %1 = load ptr, ptr %events.addr, align 8, !dbg !2147
  %2 = load i64, ptr %idx.addr, align 8, !dbg !2148
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !2147
  store ptr %0, ptr %arrayidx, align 8, !dbg !2149
  br label %if.end, !dbg !2147

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %event.addr, align 8, !dbg !2150
  %4 = ptrtoint ptr %3 to i64, !dbg !2151
  %conv = trunc i64 %4 to i32, !dbg !2152
  %5 = load ptr, ptr %events.addr, align 8, !dbg !2153
  %6 = load i64, ptr %idx.addr, align 8, !dbg !2154
  %arrayidx1 = getelementptr inbounds i32, ptr %5, i64 %6, !dbg !2155
  store i32 %conv, ptr %arrayidx1, align 4, !dbg !2156
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2157
}

; Function Attrs: noredzone nounwind
define hidden void @efi_remap_image(i64 noundef %image_base, i32 noundef %alloc_size, i64 noundef %code_size) #1 !dbg !2158 {
entry:
  %image_base.addr = alloca i64, align 8
  %alloc_size.addr = alloca i32, align 4
  %code_size.addr = alloca i64, align 8
  %guid = alloca %struct.guid_t, align 4
  %memattr = alloca ptr, align 8
  %status = alloca i64, align 8
  %attr = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %image_base, ptr %image_base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image_base.addr, metadata !2162, metadata !DIExpression()), !dbg !2193
  store i32 %alloc_size, ptr %alloc_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %alloc_size.addr, metadata !2163, metadata !DIExpression()), !dbg !2194
  store i64 %code_size, ptr %code_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code_size.addr, metadata !2164, metadata !DIExpression()), !dbg !2195
  call void @llvm.lifetime.start.p0(i64 16, ptr %guid) #7, !dbg !2196
  call void @llvm.dbg.declare(metadata ptr %guid, metadata !2165, metadata !DIExpression()), !dbg !2197
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %guid, ptr align 4 @__const.efi_remap_image.guid, i64 16, i1 false), !dbg !2197
  call void @llvm.lifetime.start.p0(i64 8, ptr %memattr) #7, !dbg !2198
  call void @llvm.dbg.declare(metadata ptr %memattr, metadata !2166, metadata !DIExpression()), !dbg !2199
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #7, !dbg !2200
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2189, metadata !DIExpression()), !dbg !2201
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #7, !dbg !2202
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !2190, metadata !DIExpression()), !dbg !2203
  %call = call zeroext i1 @efi_is_native() #8, !dbg !2204
  br i1 %call, label %cond.true, label %cond.false5, !dbg !2204

cond.true:                                        ; preds = %entry
  %call1 = call zeroext i1 @efi_is_native() #8, !dbg !2204
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !2204

cond.true2:                                       ; preds = %cond.true
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !2204
  %boottime = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 10, !dbg !2204
  %1 = load ptr, ptr %boottime, align 8, !dbg !2204
  br label %cond.end, !dbg !2204

cond.false:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !2204
  %boottime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 10, !dbg !2204
  %3 = load i32, ptr %boottime3, align 4, !dbg !2204
  %conv = zext i32 %3 to i64, !dbg !2204
  %4 = inttoptr i64 %conv to ptr, !dbg !2204
  br label %cond.end, !dbg !2204

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %1, %cond.true2 ], [ %4, %cond.false ], !dbg !2204
  %locate_protocol = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 38, !dbg !2204
  %5 = load ptr, ptr %locate_protocol, align 8, !dbg !2204
  %call4 = call win64cc i64 %5(ptr noundef %guid, ptr noundef null, ptr noundef %memattr) #8, !dbg !2204
  br label %cond.end19, !dbg !2204

cond.false5:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #7, !dbg !2205
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !2191, metadata !DIExpression()), !dbg !2205
  br label %do.body, !dbg !2206

do.body:                                          ; preds = %cond.false5
  br label %do.cond, !dbg !2208

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2208

do.end:                                           ; preds = %do.cond
  %call6 = call zeroext i1 @efi_is_native() #8, !dbg !2205
  br i1 %call6, label %cond.true8, label %cond.false10, !dbg !2205

cond.true8:                                       ; preds = %do.end
  %6 = load ptr, ptr @efi_system_table, align 8, !dbg !2205
  %boottime9 = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 10, !dbg !2205
  %7 = load ptr, ptr %boottime9, align 8, !dbg !2205
  br label %cond.end13, !dbg !2205

cond.false10:                                     ; preds = %do.end
  %8 = load ptr, ptr @efi_system_table, align 8, !dbg !2205
  %boottime11 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %8, i32 0, i32 10, !dbg !2205
  %9 = load i32, ptr %boottime11, align 4, !dbg !2205
  %conv12 = zext i32 %9 to i64, !dbg !2205
  %10 = inttoptr i64 %conv12 to ptr, !dbg !2205
  br label %cond.end13, !dbg !2205

cond.end13:                                       ; preds = %cond.false10, %cond.true8
  %cond14 = phi ptr [ %7, %cond.true8 ], [ %10, %cond.false10 ], !dbg !2205
  %locate_protocol15 = getelementptr inbounds %struct.anon.0, ptr %cond14, i32 0, i32 38, !dbg !2205
  %11 = load i32, ptr %locate_protocol15, align 4, !dbg !2205
  %call16 = call ptr @efi64_zero_upper(ptr noundef %memattr) #8, !dbg !2205
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !2205
  %call17 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %11, ptr noundef %guid, ptr noundef null, ptr noundef %call16, ptr noundef %arraydecay) #8, !dbg !2205
  store i64 %call17, ptr %tmp, align 8, !dbg !2205
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #7, !dbg !2204
  %12 = load i64, ptr %tmp, align 8, !dbg !2205
  %call18 = call i64 @__efi64_widen_efi_status(i64 noundef %12) #8, !dbg !2204
  br label %cond.end19, !dbg !2204

cond.end19:                                       ; preds = %cond.end13, %cond.end
  %cond20 = phi i64 [ %call4, %cond.end ], [ %call18, %cond.end13 ], !dbg !2204
  store i64 %cond20, ptr %status, align 8, !dbg !2210
  %13 = load i64, ptr %status, align 8, !dbg !2211
  %cmp = icmp ne i64 %13, 0, !dbg !2213
  br i1 %cmp, label %if.then, label %if.end, !dbg !2214

if.then:                                          ; preds = %cond.end19
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2215

if.end:                                           ; preds = %cond.end19
  %14 = load ptr, ptr %memattr, align 8, !dbg !2216
  %get_memory_attributes = getelementptr inbounds %struct.anon.7, ptr %14, i32 0, i32 0, !dbg !2217
  %15 = load ptr, ptr %get_memory_attributes, align 8, !dbg !2217
  %16 = load ptr, ptr %memattr, align 8, !dbg !2218
  %17 = load i64, ptr %image_base.addr, align 8, !dbg !2219
  %18 = load i32, ptr %alloc_size.addr, align 4, !dbg !2220
  %conv22 = zext i32 %18 to i64, !dbg !2220
  %call23 = call win64cc i64 %15(ptr noundef %16, i64 noundef %17, i64 noundef %conv22, ptr noundef %attr) #8, !dbg !2216
  store i64 %call23, ptr %status, align 8, !dbg !2221
  %19 = load i64, ptr %status, align 8, !dbg !2222
  %cmp24 = icmp ne i64 %19, 0, !dbg !2224
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !2225

if.then26:                                        ; preds = %if.end
  %20 = load i64, ptr %status, align 8, !dbg !2226
  %call27 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.25, i64 noundef %20) #8, !dbg !2226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2228

if.end28:                                         ; preds = %if.end
  %21 = load ptr, ptr %memattr, align 8, !dbg !2229
  %set_memory_attributes = getelementptr inbounds %struct.anon.7, ptr %21, i32 0, i32 1, !dbg !2230
  %22 = load ptr, ptr %set_memory_attributes, align 8, !dbg !2230
  %23 = load ptr, ptr %memattr, align 8, !dbg !2231
  %24 = load i64, ptr %image_base.addr, align 8, !dbg !2232
  %25 = load i64, ptr %code_size.addr, align 8, !dbg !2233
  %call29 = call win64cc i64 %22(ptr noundef %23, i64 noundef %24, i64 noundef %25, i64 noundef 131072) #8, !dbg !2229
  store i64 %call29, ptr %status, align 8, !dbg !2234
  %26 = load i64, ptr %status, align 8, !dbg !2235
  %cmp30 = icmp ne i64 %26, 0, !dbg !2237
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !2238

if.then32:                                        ; preds = %if.end28
  %call33 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.26) #8, !dbg !2239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2241

if.end34:                                         ; preds = %if.end28
  %27 = load i64, ptr %attr, align 8, !dbg !2242
  %and = and i64 %27, 16384, !dbg !2244
  %tobool = icmp ne i64 %and, 0, !dbg !2244
  br i1 %tobool, label %if.then35, label %if.else, !dbg !2245

if.then35:                                        ; preds = %if.end34
  %28 = load ptr, ptr %memattr, align 8, !dbg !2246
  %clear_memory_attributes = getelementptr inbounds %struct.anon.7, ptr %28, i32 0, i32 2, !dbg !2248
  %29 = load ptr, ptr %clear_memory_attributes, align 8, !dbg !2248
  %30 = load ptr, ptr %memattr, align 8, !dbg !2249
  %31 = load i64, ptr %image_base.addr, align 8, !dbg !2250
  %32 = load i64, ptr %code_size.addr, align 8, !dbg !2251
  %call36 = call win64cc i64 %29(ptr noundef %30, i64 noundef %31, i64 noundef %32, i64 noundef 16384) #8, !dbg !2246
  store i64 %call36, ptr %status, align 8, !dbg !2252
  %33 = load i64, ptr %status, align 8, !dbg !2253
  %cmp37 = icmp ne i64 %33, 0, !dbg !2255
  br i1 %cmp37, label %if.then39, label %if.end41, !dbg !2256

if.then39:                                        ; preds = %if.then35
  %call40 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.27) #8, !dbg !2257
  br label %if.end41, !dbg !2257

if.end41:                                         ; preds = %if.then39, %if.then35
  br label %if.end50, !dbg !2258

if.else:                                          ; preds = %if.end34
  %34 = load ptr, ptr %memattr, align 8, !dbg !2259
  %set_memory_attributes42 = getelementptr inbounds %struct.anon.7, ptr %34, i32 0, i32 1, !dbg !2261
  %35 = load ptr, ptr %set_memory_attributes42, align 8, !dbg !2261
  %36 = load ptr, ptr %memattr, align 8, !dbg !2262
  %37 = load i64, ptr %image_base.addr, align 8, !dbg !2263
  %38 = load i64, ptr %code_size.addr, align 8, !dbg !2264
  %add = add i64 %37, %38, !dbg !2265
  %39 = load i32, ptr %alloc_size.addr, align 4, !dbg !2266
  %conv43 = zext i32 %39 to i64, !dbg !2266
  %40 = load i64, ptr %code_size.addr, align 8, !dbg !2267
  %sub = sub i64 %conv43, %40, !dbg !2268
  %call44 = call win64cc i64 %35(ptr noundef %36, i64 noundef %add, i64 noundef %sub, i64 noundef 16384) #8, !dbg !2259
  store i64 %call44, ptr %status, align 8, !dbg !2269
  %41 = load i64, ptr %status, align 8, !dbg !2270
  %cmp45 = icmp ne i64 %41, 0, !dbg !2272
  br i1 %cmp45, label %if.then47, label %if.end49, !dbg !2273

if.then47:                                        ; preds = %if.else
  %call48 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.28) #8, !dbg !2274
  br label %if.end49, !dbg !2274

if.end49:                                         ; preds = %if.then47, %if.else
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end41
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2275
  br label %cleanup, !dbg !2275

cleanup:                                          ; preds = %if.end50, %if.then32, %if.then26, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #7, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #7, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 8, ptr %memattr) #7, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 16, ptr %guid) #7, !dbg !2275
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2275

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_64bit() #5 !dbg !2276 {
entry:
  %0 = load i8, ptr @efi_is64, align 1, !dbg !2277, !range !502, !noundef !503
  %tobool = trunc i8 %0 to i1, !dbg !2277
  ret i1 %tobool, !dbg !2278
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @ror64(i64 noundef %word, i32 noundef %shift) #5 !dbg !2279 {
entry:
  %word.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !2284, metadata !DIExpression()), !dbg !2286
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !2285, metadata !DIExpression()), !dbg !2287
  %0 = load i64, ptr %word.addr, align 8, !dbg !2288
  %1 = load i32, ptr %shift.addr, align 4, !dbg !2289
  %and = and i32 %1, 63, !dbg !2290
  %sh_prom = zext i32 %and to i64, !dbg !2291
  %shr = lshr i64 %0, %sh_prom, !dbg !2291
  %2 = load i64, ptr %word.addr, align 8, !dbg !2292
  %3 = load i32, ptr %shift.addr, align 4, !dbg !2293
  %sub = sub i32 0, %3, !dbg !2294
  %and1 = and i32 %sub, 63, !dbg !2295
  %sh_prom2 = zext i32 %and1 to i64, !dbg !2296
  %shl = shl i64 %2, %sh_prom2, !dbg !2296
  %or = or i64 %shr, %shl, !dbg !2297
  ret i64 %or, !dbg !2298
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #5 !dbg !2299 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !2303, metadata !DIExpression()), !dbg !2305
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !2304, metadata !DIExpression()), !dbg !2306
  %0 = load i32, ptr %word.addr, align 4, !dbg !2307
  %1 = load i32, ptr %shift.addr, align 4, !dbg !2308
  %and = and i32 %1, 31, !dbg !2309
  %shl = shl i32 %0, %and, !dbg !2310
  %2 = load i32, ptr %word.addr, align 4, !dbg !2311
  %3 = load i32, ptr %shift.addr, align 4, !dbg !2312
  %sub = sub i32 0, %3, !dbg !2313
  %and1 = and i32 %sub, 31, !dbg !2314
  %shr = lshr i32 %2, %and1, !dbg !2315
  %or = or i32 %shl, %shr, !dbg !2316
  ret i32 %or, !dbg !2317
}

; Function Attrs: noredzone
declare !dbg !2318 hidden i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone
declare !dbg !2321 hidden i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone
declare !dbg !2324 hidden i64 @efi_allocate_pages(i64 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone
declare !dbg !2327 hidden i64 @handle_cmdline_files(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #4

attributes #0 = { noredzone nounwind willreturn memory(read) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!492, !493, !494, !495, !496}
!llvm.ident = !{!497}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "efi_nokaslr", scope: !2, file: !3, line: 20, type: !154, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.efi-stub-helper.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/efi-stub-helper\22 -D KBUILD_BASENAME=\22efi_stub_helper\22 -D KBUILD_MODNAME=\22efi_stub_helper\22 -D __KBUILD_MODNAME=kmod_efi_stub_helper -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/efi-stub-helper.ll drivers/firmware/efi/libstub/efi-stub-helper.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !22, globals: !296, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/firmware/efi/libstub/efi-stub-helper.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a0f01dfc850769d63286702d3506a28")
!4 = !{!5, !12, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 243, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/firmware/efi/libstub/efistub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbf2d830301e583887d4171bbc8b6c3a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "EfiTimerCancel", value: 0)
!10 = !DIEnumerator(name: "EfiTimerPeriodic", value: 1)
!11 = !DIEnumerator(name: "EfiTimerRelative", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 10, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "false", value: 0)
!16 = !DIEnumerator(name: "true", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "efistub_event", file: !3, line: 204, baseType: !7, size: 32, elements: !18)
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "EFISTUB_EVT_INITRD", value: 0)
!20 = !DIEnumerator(name: "EFISTUB_EVT_LOAD_OPTIONS", value: 1)
!21 = !DIEnumerator(name: "EFISTUB_EVT_COUNT", value: 2)
!22 = !{!23, !55, !73, !48, !42, !264, !56, !120, !265, !266, !267, !86, !36, !68, !292, !294, !209, !135}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_boot_services_t", file: !25, line: 250, baseType: !26)
!25 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_boot_services", file: !6, line: 252, size: 3008, elements: !27)
!27 = !{!28, !216}
!28 = !DIDerivedType(tag: DW_TAG_member, scope: !26, file: !6, line: 253, baseType: !29, size: 3008)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !6, line: 253, size: 3008, elements: !30)
!30 = !{!31, !47, !49, !50, !59, !63, !69, !74, !78, !88, !93, !97, !98, !102, !103, !104, !105, !106, !123, !124, !125, !130, !146, !150, !157, !164, !168, !172, !176, !177, !181, !182, !183, !187, !188, !189, !190, !191, !192, !196, !200, !204, !205, !211, !215}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !29, file: !6, line: 254, baseType: !32, size: 192)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_table_hdr_t", file: !25, line: 90, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 84, size: 192, elements: !34)
!34 = !{!35, !41, !44, !45, !46}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !33, file: !25, line: 85, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !37, line: 23, baseType: !38)
!37 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !39, line: 31, baseType: !40)
!39 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!40 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !33, file: !25, line: 86, baseType: !42, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !37, line: 21, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !39, line: 27, baseType: !7)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !33, file: !25, line: 87, baseType: !42, size: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !33, file: !25, line: 88, baseType: !42, size: 32, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !33, file: !25, line: 89, baseType: !42, size: 32, offset: 160)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !29, file: !6, line: 255, baseType: !48, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !29, file: !6, line: 256, baseType: !48, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !29, file: !6, line: 257, baseType: !51, size: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !53)
!53 = !{!54, !56, !56, !55, !57}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !25, line: 47, baseType: !55)
!55 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_physical_addr_t", file: !25, line: 50, baseType: !36)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !29, file: !6, line: 259, baseType: !60, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !62)
!62 = !{!54, !58, !55}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !29, file: !6, line: 261, baseType: !64, size: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !66)
!66 = !{!54, !67, !48, !67, !67, !68}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !29, file: !6, line: 264, baseType: !70, size: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !72)
!72 = !{!54, !56, !55, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !29, file: !6, line: 266, baseType: !75, size: 64, offset: 576)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !77)
!77 = !{!54, !48}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !29, file: !6, line: 267, baseType: !79, size: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !81)
!81 = !{!54, !42, !55, !82, !48, !87}
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_notify_t", file: !6, line: 212, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !85)
!85 = !{null, !86, !48}
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_t", file: !6, line: 210, baseType: !48)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !29, file: !6, line: 270, baseType: !89, size: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !91)
!91 = !{!54, !86, !92, !36}
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIMER_DELAY", file: !6, line: 247, baseType: !5)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !29, file: !6, line: 272, baseType: !94, size: 64, offset: 768)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !96)
!96 = !{!54, !55, !87, !67}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !29, file: !6, line: 275, baseType: !48, size: 64, offset: 832)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !29, file: !6, line: 276, baseType: !99, size: 64, offset: 896)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !101)
!101 = !{!54, !86}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !29, file: !6, line: 277, baseType: !48, size: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !29, file: !6, line: 278, baseType: !48, size: 64, offset: 1024)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !29, file: !6, line: 279, baseType: !48, size: 64, offset: 1088)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !29, file: !6, line: 280, baseType: !48, size: 64, offset: 1152)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !29, file: !6, line: 281, baseType: !107, size: 64, offset: 1216)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !109)
!109 = !{!54, !110, !111, !73}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_handle_t", file: !25, line: 51, baseType: !48)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !25, line: 74, baseType: !113, align: 32)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !114, line: 17, baseType: !115)
!114 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 15, size: 128, elements: !116)
!116 = !{!117}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !115, file: !114, line: 16, baseType: !118, size: 128)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 128, elements: !121)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !39, line: 21, baseType: !120)
!120 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!121 = !{!122}
!122 = !DISubrange(count: 16)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !29, file: !6, line: 283, baseType: !48, size: 64, offset: 1280)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !29, file: !6, line: 284, baseType: !48, size: 64, offset: 1344)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !29, file: !6, line: 285, baseType: !126, size: 64, offset: 1408)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !128)
!128 = !{!54, !56, !111, !48, !67, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !29, file: !6, line: 288, baseType: !131, size: 64, offset: 1472)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !133)
!133 = !{!54, !111, !134, !129}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_device_path_protocol_t", file: !6, line: 176, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_generic_dev_path", file: !25, line: 985, size: 32, elements: !138)
!138 = !{!139, !141, !142}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !25, line: 986, baseType: !140, size: 8)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !37, line: 17, baseType: !119)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sub_type", scope: !137, file: !25, line: 987, baseType: !140, size: 8, offset: 8)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !137, file: !25, line: 988, baseType: !143, size: 16, offset: 16)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !37, line: 19, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !39, line: 24, baseType: !145)
!145 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !29, file: !6, line: 291, baseType: !147, size: 64, offset: 1536)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !149)
!149 = !{!54, !111, !48}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !29, file: !6, line: 293, baseType: !151, size: 64, offset: 1600)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !153)
!153 = !{!54, !154, !110, !135, !48, !55, !129}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !155, line: 35, baseType: !156)
!155 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!156 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !29, file: !6, line: 297, baseType: !158, size: 64, offset: 1664)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !160)
!160 = !{!54, !110, !67, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !25, line: 49, baseType: !143)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !29, file: !6, line: 299, baseType: !165, size: 64, offset: 1728)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !167)
!167 = !{!54, !110, !54, !55, !162}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !29, file: !6, line: 303, baseType: !169, size: 64, offset: 1792)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !171)
!171 = !{!54, !110}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !29, file: !6, line: 304, baseType: !173, size: 64, offset: 1856)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !175)
!175 = !{!54, !110, !55}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !29, file: !6, line: 306, baseType: !48, size: 64, offset: 1920)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !29, file: !6, line: 307, baseType: !178, size: 64, offset: 1984)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !180)
!180 = !{!54, !55}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !29, file: !6, line: 308, baseType: !48, size: 64, offset: 2048)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !29, file: !6, line: 309, baseType: !48, size: 64, offset: 2112)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !29, file: !6, line: 310, baseType: !184, size: 64, offset: 2176)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !186)
!186 = !{!54, !110, !110, !110}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !29, file: !6, line: 313, baseType: !48, size: 64, offset: 2240)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !29, file: !6, line: 314, baseType: !48, size: 64, offset: 2304)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !29, file: !6, line: 315, baseType: !48, size: 64, offset: 2368)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !29, file: !6, line: 316, baseType: !48, size: 64, offset: 2432)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !29, file: !6, line: 317, baseType: !48, size: 64, offset: 2496)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !29, file: !6, line: 318, baseType: !193, size: 64, offset: 2560)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !195)
!195 = !{!54, !111, !48, !73}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !29, file: !6, line: 320, baseType: !197, size: 64, offset: 2624)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !199)
!199 = !{!54, !129, null}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !29, file: !6, line: 321, baseType: !201, size: 64, offset: 2688)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !203)
!203 = !{!54, !110, null}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !29, file: !6, line: 322, baseType: !48, size: 64, offset: 2752)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !29, file: !6, line: 323, baseType: !206, size: 64, offset: 2816)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !208)
!208 = !{null, !48, !209, !55}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !29, file: !6, line: 324, baseType: !212, size: 64, offset: 2880)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !214)
!214 = !{null, !48, !55, !120}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !29, file: !6, line: 325, baseType: !48, size: 64, offset: 2944)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !26, file: !6, line: 373, baseType: !217, size: 1600)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !6, line: 327, size: 1600, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !217, file: !6, line: 328, baseType: !32, size: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !217, file: !6, line: 329, baseType: !42, size: 32, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !217, file: !6, line: 330, baseType: !42, size: 32, offset: 224)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !217, file: !6, line: 331, baseType: !42, size: 32, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !217, file: !6, line: 332, baseType: !42, size: 32, offset: 288)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !217, file: !6, line: 333, baseType: !42, size: 32, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !217, file: !6, line: 334, baseType: !42, size: 32, offset: 352)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !217, file: !6, line: 335, baseType: !42, size: 32, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !217, file: !6, line: 336, baseType: !42, size: 32, offset: 416)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !217, file: !6, line: 337, baseType: !42, size: 32, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !217, file: !6, line: 338, baseType: !42, size: 32, offset: 480)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !217, file: !6, line: 339, baseType: !42, size: 32, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !217, file: !6, line: 340, baseType: !42, size: 32, offset: 544)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !217, file: !6, line: 341, baseType: !42, size: 32, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !217, file: !6, line: 342, baseType: !42, size: 32, offset: 608)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !217, file: !6, line: 343, baseType: !42, size: 32, offset: 640)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !217, file: !6, line: 344, baseType: !42, size: 32, offset: 672)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !217, file: !6, line: 345, baseType: !42, size: 32, offset: 704)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !217, file: !6, line: 346, baseType: !42, size: 32, offset: 736)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !217, file: !6, line: 347, baseType: !42, size: 32, offset: 768)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !217, file: !6, line: 348, baseType: !42, size: 32, offset: 800)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !217, file: !6, line: 349, baseType: !42, size: 32, offset: 832)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !217, file: !6, line: 350, baseType: !42, size: 32, offset: 864)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !217, file: !6, line: 351, baseType: !42, size: 32, offset: 896)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !217, file: !6, line: 352, baseType: !42, size: 32, offset: 928)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !217, file: !6, line: 353, baseType: !42, size: 32, offset: 960)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !217, file: !6, line: 354, baseType: !42, size: 32, offset: 992)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !217, file: !6, line: 355, baseType: !42, size: 32, offset: 1024)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !217, file: !6, line: 356, baseType: !42, size: 32, offset: 1056)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !217, file: !6, line: 357, baseType: !42, size: 32, offset: 1088)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !217, file: !6, line: 358, baseType: !42, size: 32, offset: 1120)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !217, file: !6, line: 359, baseType: !42, size: 32, offset: 1152)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !217, file: !6, line: 360, baseType: !42, size: 32, offset: 1184)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !217, file: !6, line: 361, baseType: !42, size: 32, offset: 1216)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !217, file: !6, line: 362, baseType: !42, size: 32, offset: 1248)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !217, file: !6, line: 363, baseType: !42, size: 32, offset: 1280)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !217, file: !6, line: 364, baseType: !42, size: 32, offset: 1312)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !217, file: !6, line: 365, baseType: !42, size: 32, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !217, file: !6, line: 366, baseType: !42, size: 32, offset: 1376)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !217, file: !6, line: 367, baseType: !42, size: 32, offset: 1408)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !217, file: !6, line: 368, baseType: !42, size: 32, offset: 1440)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !217, file: !6, line: 369, baseType: !42, size: 32, offset: 1472)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !217, file: !6, line: 370, baseType: !42, size: 32, offset: 1504)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !217, file: !6, line: 371, baseType: !42, size: 32, offset: 1536)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !217, file: !6, line: 372, baseType: !42, size: 32, offset: 1568)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!265 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_simple_text_input_protocol_t", file: !25, line: 513, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_simple_text_input_protocol", file: !6, line: 487, size: 192, elements: !270)
!270 = !{!271, !286}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !6, line: 488, baseType: !272, size: 192)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !269, file: !6, line: 488, size: 192, elements: !273)
!273 = !{!274, !275, !285}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !272, file: !6, line: 489, baseType: !48, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "read_keystroke", scope: !272, file: !6, line: 490, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !278)
!278 = !{!54, !267, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_input_key_t", file: !6, line: 485, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 482, size: 32, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "scan_code", scope: !281, file: !6, line: 483, baseType: !143, size: 16)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "unicode_char", scope: !281, file: !6, line: 484, baseType: !163, size: 16, offset: 16)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_key", scope: !272, file: !6, line: 492, baseType: !86, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !269, file: !6, line: 498, baseType: !287, size: 96)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !269, file: !6, line: 494, size: 96, elements: !288)
!288 = !{!289, !290, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !287, file: !6, line: 495, baseType: !42, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "read_keystroke", scope: !287, file: !6, line: 496, baseType: !42, size: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_key", scope: !287, file: !6, line: 497, baseType: !42, size: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!296 = !{!0, !297, !302, !307, !312, !317, !322, !327, !329, !334, !336, !338, !340, !345, !350, !352, !354, !356, !392, !397, !399, !404, !409, !411, !416, !421, !426, !431, !433, !438, !443, !448, !450, !452, !454, !456, !458, !460, !462, !477, !489}
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 24, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 3)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 64, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 8)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !3, line: 74, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 48, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 6)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 72, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 9)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !319, isLocal: true, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 56, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 7)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !324, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 96, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 12)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !299, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 32, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 4)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !331, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !304, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !304, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !342, isLocal: true, isDefinition: true)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 176, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 22)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !347, isLocal: true, isDefinition: true)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 200, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 25)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !309, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !309, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !319, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(name: "__print_once", scope: !358, file: !3, line: 197, type: !154, isLocal: true, isDefinition: true)
!358 = distinct !DISubprogram(name: "efi_apply_loadoptions_quirk", scope: !3, file: !3, line: 180, type: !359, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !264, !68}
!361 = !{!362, !363, !364, !376, !388, !390}
!362 = !DILocalVariable(name: "load_options", arg: 1, scope: !358, file: !3, line: 180, type: !264)
!363 = !DILocalVariable(name: "load_options_size", arg: 2, scope: !358, file: !3, line: 180, type: !68)
!364 = !DILocalVariable(name: "load_option", scope: !358, file: !3, line: 182, type: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_load_option_t", file: !6, line: 913, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 906, size: 48, elements: !369)
!369 = !{!370, !371, !372}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !368, file: !6, line: 907, baseType: !42, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "file_path_list_length", scope: !368, file: !6, line: 908, baseType: !143, size: 16, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "variable_data", scope: !368, file: !6, line: 909, baseType: !373, offset: 48)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: -1)
!376 = !DILocalVariable(name: "load_option_unpacked", scope: !358, file: !3, line: 183, type: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_load_option_unpacked_t", file: !6, line: 933, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 926, size: 320, elements: !379)
!379 = !{!380, !381, !382, !385, !386, !387}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !378, file: !6, line: 927, baseType: !42, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "file_path_list_length", scope: !378, file: !6, line: 928, baseType: !143, size: 16, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !378, file: !6, line: 929, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "file_path_list", scope: !378, file: !6, line: 930, baseType: !294, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "optional_data_size", scope: !378, file: !6, line: 931, baseType: !42, size: 32, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "optional_data", scope: !378, file: !6, line: 932, baseType: !209, size: 64, offset: 256)
!388 = !DILocalVariable(name: "__ret_print_once", scope: !389, file: !3, line: 197, type: !154)
!389 = distinct !DILexicalBlock(scope: !358, file: !3, line: 197, column: 2)
!390 = !DILocalVariable(name: "__ret_print_once", scope: !391, file: !3, line: 198, type: !154)
!391 = distinct !DILexicalBlock(scope: !358, file: !3, line: 198, column: 2)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !394, isLocal: true, isDefinition: true)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 584, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 73)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "__print_once", scope: !358, file: !3, line: 198, type: !154, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !401, isLocal: true, isDefinition: true)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 504, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 63)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !3, line: 351, type: !406, isLocal: true, isDefinition: true)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 464, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 58)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !3, line: 363, type: !309, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !3, line: 581, type: !413, isLocal: true, isDefinition: true)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 496, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 62)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !3, line: 585, type: !418, isLocal: true, isDefinition: true)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 280, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 35)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !3, line: 593, type: !423, isLocal: true, isDefinition: true)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 336, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 42)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !3, line: 617, type: !428, isLocal: true, isDefinition: true)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 312, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 39)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !3, line: 700, type: !394, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !3, line: 709, type: !435, isLocal: true, isDefinition: true)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 400, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 50)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !3, line: 721, type: !440, isLocal: true, isDefinition: true)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 408, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 51)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !3, line: 728, type: !445, isLocal: true, isDefinition: true)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 440, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 55)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "efi_nochunk", scope: !2, file: !3, line: 19, type: !154, isLocal: false, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "efi_novamap", scope: !2, file: !3, line: 21, type: !154, isLocal: false, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "efi_noinitrd", scope: !2, file: !3, line: 23, type: !154, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "efi_nosoftreserve", scope: !2, file: !3, line: 24, type: !154, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(name: "efi_mem_encrypt", scope: !2, file: !3, line: 27, type: !56, isLocal: false, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "efi_disable_pci_dma", scope: !2, file: !3, line: 25, type: !154, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !3, line: 279, type: !445, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "events", scope: !2, file: !3, line: 217, type: !464, isLocal: true, isDefinition: true)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 1024, elements: !475)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 212, size: 512, elements: !467)
!467 = !{!468, !469, !470, !471}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pcr_index", scope: !466, file: !3, line: 213, baseType: !42, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "event_id", scope: !466, file: !3, line: 214, baseType: !42, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "event_data_len", scope: !466, file: !3, line: 215, baseType: !42, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "event_data", scope: !466, file: !3, line: 216, baseType: !472, size: 416, offset: 96)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 416, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 52)
!475 = !{!476}
!476 = !DISubrange(count: 2)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "initrd_dev_path", scope: !2, file: !3, line: 479, type: !479, isLocal: true, isDefinition: true)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 476, size: 192, elements: !481)
!481 = !{!482, !488}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !480, file: !3, line: 477, baseType: !483, size: 160)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_vendor_dev_path", file: !25, line: 1003, size: 160, elements: !484)
!484 = !{!485, !486, !487}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !483, file: !25, line: 1004, baseType: !137, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "vendorguid", scope: !483, file: !25, line: 1005, baseType: !112, size: 128, align: 32, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "vendordata", scope: !483, file: !25, line: 1006, baseType: !373, offset: 160)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !480, file: !3, line: 478, baseType: !137, size: 32, offset: 160)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !3, line: 554, type: !491, isLocal: true, isDefinition: true)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 128, elements: !305)
!492 = !{i32 7, !"Dwarf Version", i32 5}
!493 = !{i32 2, !"Debug Info Version", i32 3}
!494 = !{i32 1, !"wchar_size", i32 2}
!495 = !{i32 8, !"PIC Level", i32 2}
!496 = !{i32 1, !"Code Model", i32 1}
!497 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!498 = distinct !DISubprogram(name: "__efi_soft_reserve_enabled", scope: !3, file: !3, line: 29, type: !499, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!499 = !DISubroutineType(types: !500)
!500 = !{!154}
!501 = !DILocation(line: 31, column: 10, scope: !498)
!502 = !{i8 0, i8 2}
!503 = !{}
!504 = !DILocation(line: 31, column: 9, scope: !498)
!505 = !DILocation(line: 31, column: 2, scope: !498)
!506 = distinct !DISubprogram(name: "efi_parse_options", scope: !3, file: !3, line: 47, type: !507, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !511)
!507 = !DISubroutineType(types: !508)
!508 = !{!54, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!511 = !{!512, !513, !518, !519, !520, !521, !524, !526, !527}
!512 = !DILocalVariable(name: "cmdline", arg: 1, scope: !506, file: !3, line: 47, type: !509)
!513 = !DILocalVariable(name: "len", scope: !506, file: !3, line: 49, type: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !155, line: 61, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !516, line: 72, baseType: !517)
!516 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !516, line: 16, baseType: !55)
!518 = !DILocalVariable(name: "status", scope: !506, file: !3, line: 50, type: !54)
!519 = !DILocalVariable(name: "str", scope: !506, file: !3, line: 51, type: !266)
!520 = !DILocalVariable(name: "buf", scope: !506, file: !3, line: 51, type: !266)
!521 = !DILocalVariable(name: "__pad", scope: !522, file: !3, line: 57, type: !523)
!522 = distinct !DILexicalBlock(scope: !506, file: !3, line: 57, column: 11)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 192, elements: !300)
!524 = !DILocalVariable(name: "param", scope: !525, file: !3, line: 66, type: !266)
!525 = distinct !DILexicalBlock(scope: !506, file: !3, line: 65, column: 15)
!526 = !DILocalVariable(name: "val", scope: !525, file: !3, line: 66, type: !266)
!527 = !DILocalVariable(name: "__pad", scope: !528, file: !3, line: 104, type: !523)
!528 = distinct !DILexicalBlock(scope: !506, file: !3, line: 104, column: 2)
!529 = !DILocation(line: 47, column: 44, scope: !506)
!530 = !DILocation(line: 49, column: 2, scope: !506)
!531 = !DILocation(line: 49, column: 9, scope: !506)
!532 = !DILocation(line: 50, column: 2, scope: !506)
!533 = !DILocation(line: 50, column: 15, scope: !506)
!534 = !DILocation(line: 51, column: 2, scope: !506)
!535 = !DILocation(line: 51, column: 8, scope: !506)
!536 = !DILocation(line: 51, column: 14, scope: !506)
!537 = !DILocation(line: 53, column: 7, scope: !538)
!538 = distinct !DILexicalBlock(scope: !506, file: !3, line: 53, column: 6)
!539 = !DILocation(line: 53, column: 6, scope: !506)
!540 = !DILocation(line: 54, column: 3, scope: !538)
!541 = !DILocation(line: 56, column: 16, scope: !506)
!542 = !DILocation(line: 56, column: 8, scope: !506)
!543 = !DILocation(line: 56, column: 48, scope: !506)
!544 = !DILocation(line: 56, column: 6, scope: !506)
!545 = !DILocation(line: 57, column: 11, scope: !506)
!546 = !DILocation(line: 57, column: 11, scope: !522)
!547 = !DILocation(line: 57, column: 11, scope: !548)
!548 = distinct !DILexicalBlock(scope: !522, file: !3, line: 57, column: 11)
!549 = !DILocation(line: 57, column: 11, scope: !550)
!550 = distinct !DILexicalBlock(scope: !548, file: !3, line: 57, column: 11)
!551 = !DILocation(line: 57, column: 9, scope: !506)
!552 = !DILocation(line: 58, column: 6, scope: !553)
!553 = distinct !DILexicalBlock(scope: !506, file: !3, line: 58, column: 6)
!554 = !DILocation(line: 58, column: 13, scope: !553)
!555 = !DILocation(line: 58, column: 6, scope: !506)
!556 = !DILocation(line: 59, column: 10, scope: !553)
!557 = !DILocation(line: 59, column: 3, scope: !553)
!558 = !DILocation(line: 61, column: 9, scope: !506)
!559 = !DILocation(line: 61, column: 14, scope: !506)
!560 = !DILocation(line: 61, column: 23, scope: !506)
!561 = !DILocation(line: 61, column: 27, scope: !506)
!562 = !DILocation(line: 61, column: 2, scope: !506)
!563 = !DILocation(line: 62, column: 2, scope: !506)
!564 = !DILocation(line: 62, column: 6, scope: !506)
!565 = !DILocation(line: 62, column: 10, scope: !506)
!566 = !DILocation(line: 62, column: 15, scope: !506)
!567 = !DILocation(line: 63, column: 20, scope: !506)
!568 = !DILocation(line: 63, column: 8, scope: !506)
!569 = !DILocation(line: 63, column: 6, scope: !506)
!570 = !DILocation(line: 65, column: 2, scope: !506)
!571 = !DILocation(line: 65, column: 10, scope: !506)
!572 = !DILocation(line: 65, column: 9, scope: !506)
!573 = !DILocation(line: 66, column: 3, scope: !525)
!574 = !DILocation(line: 66, column: 9, scope: !525)
!575 = !DILocation(line: 66, column: 17, scope: !525)
!576 = !DILocation(line: 68, column: 18, scope: !525)
!577 = !DILocation(line: 68, column: 9, scope: !525)
!578 = !DILocation(line: 68, column: 7, scope: !525)
!579 = !DILocation(line: 69, column: 8, scope: !580)
!580 = distinct !DILexicalBlock(scope: !525, file: !3, line: 69, column: 7)
!581 = !DILocation(line: 69, column: 12, scope: !580)
!582 = !DILocation(line: 69, column: 23, scope: !580)
!583 = !DILocation(line: 69, column: 16, scope: !580)
!584 = !DILocation(line: 69, column: 7, scope: !525)
!585 = !DILocation(line: 70, column: 4, scope: !580)
!586 = !DILocation(line: 72, column: 15, scope: !587)
!587 = distinct !DILexicalBlock(scope: !525, file: !3, line: 72, column: 7)
!588 = !DILocation(line: 72, column: 8, scope: !587)
!589 = !DILocation(line: 72, column: 7, scope: !525)
!590 = !DILocation(line: 73, column: 16, scope: !591)
!591 = distinct !DILexicalBlock(scope: !587, file: !3, line: 72, column: 34)
!592 = !DILocation(line: 74, column: 3, scope: !591)
!593 = !DILocation(line: 74, column: 22, scope: !594)
!594 = distinct !DILexicalBlock(scope: !587, file: !3, line: 74, column: 14)
!595 = !DILocation(line: 74, column: 15, scope: !594)
!596 = !DILocation(line: 74, column: 14, scope: !587)
!597 = !DILocation(line: 75, column: 17, scope: !598)
!598 = distinct !DILexicalBlock(scope: !594, file: !3, line: 74, column: 39)
!599 = !DILocation(line: 76, column: 3, scope: !598)
!600 = !DILocation(line: 76, column: 22, scope: !601)
!601 = distinct !DILexicalBlock(scope: !594, file: !3, line: 76, column: 14)
!602 = !DILocation(line: 76, column: 15, scope: !601)
!603 = !DILocation(line: 76, column: 14, scope: !594)
!604 = !DILocation(line: 77, column: 17, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !3, line: 76, column: 42)
!606 = !DILocation(line: 78, column: 3, scope: !605)
!607 = !DILocation(line: 78, column: 51, scope: !608)
!608 = distinct !DILexicalBlock(scope: !601, file: !3, line: 78, column: 14)
!609 = !DILocation(line: 78, column: 44, scope: !608)
!610 = !DILocation(line: 78, column: 14, scope: !601)
!611 = !DILocation(line: 79, column: 15, scope: !612)
!612 = distinct !DILexicalBlock(scope: !608, file: !3, line: 78, column: 69)
!613 = !DILocation(line: 80, column: 3, scope: !612)
!614 = !DILocation(line: 81, column: 15, scope: !615)
!615 = distinct !DILexicalBlock(scope: !608, file: !3, line: 80, column: 14)
!616 = !DILocation(line: 81, column: 8, scope: !615)
!617 = !DILocation(line: 81, column: 37, scope: !615)
!618 = !DILocation(line: 81, column: 40, scope: !615)
!619 = !DILocation(line: 80, column: 14, scope: !608)
!620 = !DILocation(line: 82, column: 25, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 82, column: 8)
!622 = distinct !DILexicalBlock(scope: !615, file: !3, line: 81, column: 45)
!623 = !DILocation(line: 82, column: 8, scope: !621)
!624 = !DILocation(line: 82, column: 8, scope: !622)
!625 = !DILocation(line: 83, column: 21, scope: !621)
!626 = !DILocation(line: 83, column: 5, scope: !621)
!627 = !DILocation(line: 84, column: 30, scope: !628)
!628 = distinct !DILexicalBlock(scope: !621, file: !3, line: 84, column: 13)
!629 = !DILocation(line: 84, column: 13, scope: !628)
!630 = !DILocation(line: 84, column: 13, scope: !621)
!631 = !DILocation(line: 85, column: 21, scope: !628)
!632 = !DILocation(line: 85, column: 5, scope: !628)
!633 = !DILocation(line: 86, column: 3, scope: !622)
!634 = !DILocation(line: 86, column: 22, scope: !635)
!635 = distinct !DILexicalBlock(scope: !615, file: !3, line: 86, column: 14)
!636 = !DILocation(line: 86, column: 15, scope: !635)
!637 = !DILocation(line: 86, column: 36, scope: !635)
!638 = !DILocation(line: 86, column: 39, scope: !635)
!639 = !DILocation(line: 86, column: 14, scope: !615)
!640 = !DILocation(line: 87, column: 35, scope: !641)
!641 = distinct !DILexicalBlock(scope: !635, file: !3, line: 86, column: 44)
!642 = !DILocation(line: 87, column: 18, scope: !641)
!643 = !DILocation(line: 87, column: 16, scope: !641)
!644 = !DILocation(line: 88, column: 36, scope: !641)
!645 = !DILocation(line: 88, column: 19, scope: !641)
!646 = !DILocation(line: 88, column: 16, scope: !641)
!647 = !DILocation(line: 90, column: 22, scope: !641)
!648 = !DILocation(line: 93, column: 25, scope: !649)
!649 = distinct !DILexicalBlock(scope: !641, file: !3, line: 93, column: 8)
!650 = !DILocation(line: 93, column: 8, scope: !649)
!651 = !DILocation(line: 93, column: 8, scope: !641)
!652 = !DILocation(line: 94, column: 25, scope: !649)
!653 = !DILocation(line: 94, column: 5, scope: !649)
!654 = !DILocation(line: 95, column: 25, scope: !655)
!655 = distinct !DILexicalBlock(scope: !641, file: !3, line: 95, column: 8)
!656 = !DILocation(line: 95, column: 8, scope: !655)
!657 = !DILocation(line: 95, column: 8, scope: !641)
!658 = !DILocation(line: 96, column: 25, scope: !655)
!659 = !DILocation(line: 96, column: 5, scope: !655)
!660 = !DILocation(line: 97, column: 25, scope: !661)
!661 = distinct !DILexicalBlock(scope: !641, file: !3, line: 97, column: 8)
!662 = !DILocation(line: 97, column: 8, scope: !661)
!663 = !DILocation(line: 97, column: 8, scope: !641)
!664 = !DILocation(line: 98, column: 18, scope: !661)
!665 = !DILocation(line: 98, column: 5, scope: !661)
!666 = !DILocation(line: 99, column: 3, scope: !641)
!667 = !DILocation(line: 99, column: 22, scope: !668)
!668 = distinct !DILexicalBlock(scope: !635, file: !3, line: 99, column: 14)
!669 = !DILocation(line: 99, column: 15, scope: !668)
!670 = !DILocation(line: 99, column: 38, scope: !668)
!671 = !DILocation(line: 100, column: 7, scope: !668)
!672 = !DILocation(line: 100, column: 11, scope: !668)
!673 = !DILocation(line: 100, column: 24, scope: !668)
!674 = !DILocation(line: 100, column: 14, scope: !668)
!675 = !DILocation(line: 99, column: 14, scope: !635)
!676 = !DILocation(line: 101, column: 30, scope: !677)
!677 = distinct !DILexicalBlock(scope: !668, file: !3, line: 100, column: 40)
!678 = !DILocation(line: 101, column: 36, scope: !677)
!679 = !DILocation(line: 101, column: 34, scope: !677)
!680 = !DILocation(line: 101, column: 4, scope: !677)
!681 = !DILocation(line: 102, column: 3, scope: !677)
!682 = !DILocation(line: 103, column: 2, scope: !506)
!683 = distinct !{!683, !570, !682, !684, !685}
!684 = !{!"llvm.loop.mustprogress"}
!685 = !{!"llvm.loop.unroll.disable"}
!686 = !DILocation(line: 104, column: 2, scope: !506)
!687 = !DILocation(line: 104, column: 2, scope: !528)
!688 = !DILocation(line: 104, column: 2, scope: !689)
!689 = distinct !DILexicalBlock(scope: !528, file: !3, line: 104, column: 2)
!690 = !DILocation(line: 104, column: 2, scope: !691)
!691 = distinct !DILexicalBlock(scope: !689, file: !3, line: 104, column: 2)
!692 = !DILocation(line: 105, column: 2, scope: !506)
!693 = !DILocation(line: 106, column: 1, scope: !506)
!694 = !DISubprogram(name: "strnlen", scope: !695, file: !695, line: 131, type: !696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!695 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!696 = !DISubroutineType(types: !697)
!697 = !{!515, !509, !515}
!698 = distinct !DISubprogram(name: "efi_is_native", scope: !699, file: !699, line: 205, type: !499, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!699 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!700 = !DILocation(line: 207, column: 9, scope: !698)
!701 = !DILocation(line: 207, column: 2, scope: !698)
!702 = distinct !DISubprogram(name: "__efi64_widen_efi_status", scope: !699, file: !699, line: 346, type: !703, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{!54, !36}
!705 = !{!706}
!706 = !DILocalVariable(name: "status", arg: 1, scope: !702, file: !699, line: 346, type: !36)
!707 = !DILocation(line: 346, column: 57, scope: !702)
!708 = !DILocation(line: 349, column: 21, scope: !702)
!709 = !DILocation(line: 349, column: 15, scope: !702)
!710 = !DILocation(line: 349, column: 9, scope: !702)
!711 = !DILocation(line: 349, column: 2, scope: !702)
!712 = !DISubprogram(name: "__efi64_thunk", scope: !699, file: !699, line: 158, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!713 = !DISubroutineType(types: !714)
!714 = !{!36, !42, null}
!715 = distinct !DISubprogram(name: "efi64_zero_upper", scope: !699, file: !699, line: 239, type: !716, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !718)
!716 = !DISubroutineType(types: !717)
!717 = !{!48, !48}
!718 = !{!719}
!719 = !DILocalVariable(name: "p", arg: 1, scope: !715, file: !699, line: 239, type: !48)
!720 = !DILocation(line: 239, column: 44, scope: !715)
!721 = !DILocation(line: 241, column: 10, scope: !715)
!722 = !DILocation(line: 241, column: 2, scope: !715)
!723 = !DILocation(line: 241, column: 16, scope: !715)
!724 = !DILocation(line: 242, column: 9, scope: !715)
!725 = !DILocation(line: 242, column: 2, scope: !715)
!726 = !DISubprogram(name: "memcpy", scope: !727, file: !727, line: 18, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!727 = !DIFile(filename: "./arch/x86/include/asm/string_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2915e714ca16a16b791287599ade0ea7")
!728 = !DISubroutineType(types: !729)
!729 = !{!48, !48, !209, !514}
!730 = !DISubprogram(name: "skip_spaces", scope: !695, file: !695, line: 112, type: !731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!731 = !DISubroutineType(types: !732)
!732 = !{!266, !509}
!733 = !DISubprogram(name: "next_arg", scope: !734, file: !734, line: 211, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!734 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!735 = !DISubroutineType(types: !736)
!736 = !{!266, !266, !737, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!738 = !DISubprogram(name: "strcmp", scope: !695, file: !695, line: 88, type: !739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!739 = !DISubroutineType(types: !740)
!740 = !{!56, !509, !509}
!741 = !DISubprogram(name: "parse_option_str", scope: !734, file: !734, line: 210, type: !742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!742 = !DISubroutineType(types: !743)
!743 = !{!154, !509, !509}
!744 = distinct !DISubprogram(name: "strstarts", scope: !695, file: !695, line: 255, type: !742, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !745)
!745 = !{!746, !747}
!746 = !DILocalVariable(name: "str", arg: 1, scope: !744, file: !695, line: 255, type: !509)
!747 = !DILocalVariable(name: "prefix", arg: 2, scope: !744, file: !695, line: 255, type: !509)
!748 = !DILocation(line: 255, column: 42, scope: !744)
!749 = !DILocation(line: 255, column: 59, scope: !744)
!750 = !DILocation(line: 257, column: 17, scope: !744)
!751 = !DILocation(line: 257, column: 22, scope: !744)
!752 = !DILocation(line: 257, column: 37, scope: !744)
!753 = !DILocation(line: 257, column: 30, scope: !744)
!754 = !DILocation(line: 257, column: 9, scope: !744)
!755 = !DILocation(line: 257, column: 46, scope: !744)
!756 = !DILocation(line: 257, column: 2, scope: !744)
!757 = !DISubprogram(name: "efi_parse_option_graphics", scope: !6, file: !6, line: 1002, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !266}
!760 = !DISubprogram(name: "strlen", scope: !695, file: !695, line: 128, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!761 = !DISubroutineType(types: !762)
!762 = !{!514, !509}
!763 = !DILocation(line: 180, column: 47, scope: !358)
!764 = !DILocation(line: 180, column: 66, scope: !358)
!765 = !DILocation(line: 182, column: 2, scope: !358)
!766 = !DILocation(line: 182, column: 27, scope: !358)
!767 = !DILocation(line: 182, column: 42, scope: !358)
!768 = !DILocation(line: 182, column: 41, scope: !358)
!769 = !DILocation(line: 183, column: 2, scope: !358)
!770 = !DILocation(line: 183, column: 29, scope: !358)
!771 = !DILocation(line: 187, column: 7, scope: !772)
!772 = distinct !DILexicalBlock(scope: !358, file: !3, line: 187, column: 6)
!773 = !DILocation(line: 187, column: 6, scope: !358)
!774 = !DILocation(line: 188, column: 3, scope: !772)
!775 = !DILocation(line: 189, column: 7, scope: !776)
!776 = distinct !DILexicalBlock(scope: !358, file: !3, line: 189, column: 6)
!777 = !DILocation(line: 189, column: 6, scope: !776)
!778 = !DILocation(line: 189, column: 25, scope: !776)
!779 = !DILocation(line: 189, column: 6, scope: !358)
!780 = !DILocation(line: 190, column: 3, scope: !776)
!781 = !DILocation(line: 191, column: 7, scope: !782)
!782 = distinct !DILexicalBlock(scope: !358, file: !3, line: 191, column: 6)
!783 = !DILocation(line: 191, column: 20, scope: !782)
!784 = !DILocation(line: 191, column: 31, scope: !782)
!785 = !DILocation(line: 191, column: 61, scope: !782)
!786 = !DILocation(line: 191, column: 6, scope: !358)
!787 = !DILocation(line: 192, column: 3, scope: !782)
!788 = !DILocation(line: 194, column: 53, scope: !789)
!789 = distinct !DILexicalBlock(scope: !358, file: !3, line: 194, column: 6)
!790 = !DILocation(line: 194, column: 67, scope: !789)
!791 = !DILocation(line: 194, column: 66, scope: !789)
!792 = !DILocation(line: 194, column: 7, scope: !789)
!793 = !DILocation(line: 194, column: 6, scope: !358)
!794 = !DILocation(line: 195, column: 3, scope: !789)
!795 = !DILocation(line: 197, column: 2, scope: !389)
!796 = !DILocation(line: 197, column: 2, scope: !797)
!797 = distinct !DILexicalBlock(scope: !389, file: !3, line: 197, column: 2)
!798 = !DILocation(line: 197, column: 2, scope: !799)
!799 = distinct !DILexicalBlock(scope: !797, file: !3, line: 197, column: 2)
!800 = !DILocation(line: 197, column: 2, scope: !358)
!801 = !DILocation(line: 198, column: 2, scope: !391)
!802 = !DILocation(line: 198, column: 2, scope: !803)
!803 = distinct !DILexicalBlock(scope: !391, file: !3, line: 198, column: 2)
!804 = !DILocation(line: 198, column: 2, scope: !805)
!805 = distinct !DILexicalBlock(scope: !803, file: !3, line: 198, column: 2)
!806 = !DILocation(line: 198, column: 2, scope: !358)
!807 = !DILocation(line: 200, column: 39, scope: !358)
!808 = !DILocation(line: 200, column: 3, scope: !358)
!809 = !DILocation(line: 200, column: 16, scope: !358)
!810 = !DILocation(line: 201, column: 44, scope: !358)
!811 = !DILocation(line: 201, column: 3, scope: !358)
!812 = !DILocation(line: 201, column: 21, scope: !358)
!813 = !DILocation(line: 202, column: 1, scope: !358)
!814 = distinct !DISubprogram(name: "efi_load_option_unpack", scope: !3, file: !3, line: 119, type: !815, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !818)
!815 = !DISubroutineType(types: !816)
!816 = !{!154, !817, !365, !514}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!818 = !{!819, !820, !821, !822, !823, !824, !825, !826}
!819 = !DILocalVariable(name: "dest", arg: 1, scope: !814, file: !3, line: 119, type: !817)
!820 = !DILocalVariable(name: "src", arg: 2, scope: !814, file: !3, line: 120, type: !365)
!821 = !DILocalVariable(name: "size", arg: 3, scope: !814, file: !3, line: 120, type: !514)
!822 = !DILocalVariable(name: "pos", scope: !814, file: !3, line: 122, type: !209)
!823 = !DILocalVariable(name: "c", scope: !814, file: !3, line: 123, type: !143)
!824 = !DILocalVariable(name: "header", scope: !814, file: !3, line: 124, type: !136)
!825 = !DILocalVariable(name: "description", scope: !814, file: !3, line: 125, type: !383)
!826 = !DILocalVariable(name: "file_path_list", scope: !814, file: !3, line: 126, type: !294)
!827 = !DILocation(line: 119, column: 57, scope: !814)
!828 = !DILocation(line: 120, column: 33, scope: !814)
!829 = !DILocation(line: 120, column: 45, scope: !814)
!830 = !DILocation(line: 122, column: 2, scope: !814)
!831 = !DILocation(line: 122, column: 14, scope: !814)
!832 = !DILocation(line: 123, column: 2, scope: !814)
!833 = !DILocation(line: 123, column: 6, scope: !814)
!834 = !DILocation(line: 124, column: 2, scope: !814)
!835 = !DILocation(line: 124, column: 29, scope: !814)
!836 = !DILocation(line: 125, column: 2, scope: !814)
!837 = !DILocation(line: 125, column: 22, scope: !814)
!838 = !DILocation(line: 126, column: 2, scope: !814)
!839 = !DILocation(line: 126, column: 36, scope: !814)
!840 = !DILocation(line: 128, column: 6, scope: !841)
!841 = distinct !DILexicalBlock(scope: !814, file: !3, line: 128, column: 6)
!842 = !DILocation(line: 128, column: 11, scope: !841)
!843 = !DILocation(line: 128, column: 6, scope: !814)
!844 = !DILocation(line: 129, column: 3, scope: !841)
!845 = !DILocation(line: 130, column: 8, scope: !814)
!846 = !DILocation(line: 130, column: 13, scope: !814)
!847 = !DILocation(line: 130, column: 6, scope: !814)
!848 = !DILocation(line: 131, column: 7, scope: !814)
!849 = !DILocation(line: 133, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !814, file: !3, line: 133, column: 6)
!851 = !DILocation(line: 133, column: 12, scope: !850)
!852 = !DILocation(line: 133, column: 23, scope: !850)
!853 = !DILocation(line: 133, column: 48, scope: !850)
!854 = !DILocation(line: 133, column: 6, scope: !814)
!855 = !DILocation(line: 134, column: 3, scope: !850)
!856 = !DILocation(line: 137, column: 16, scope: !814)
!857 = !DILocation(line: 137, column: 14, scope: !814)
!858 = !DILocation(line: 138, column: 2, scope: !814)
!859 = !DILocation(line: 139, column: 7, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 139, column: 7)
!861 = distinct !DILexicalBlock(scope: !814, file: !3, line: 138, column: 5)
!862 = !DILocation(line: 139, column: 12, scope: !860)
!863 = !DILocation(line: 139, column: 7, scope: !861)
!864 = !DILocation(line: 140, column: 4, scope: !860)
!865 = !DILocation(line: 141, column: 21, scope: !861)
!866 = !DILocation(line: 141, column: 7, scope: !861)
!867 = !DILocation(line: 141, column: 5, scope: !861)
!868 = !DILocation(line: 142, column: 7, scope: !861)
!869 = !DILocation(line: 143, column: 8, scope: !861)
!870 = !DILocation(line: 144, column: 2, scope: !861)
!871 = !DILocation(line: 144, column: 11, scope: !814)
!872 = !DILocation(line: 144, column: 13, scope: !814)
!873 = distinct !{!873, !858, !874, !684, !685}
!874 = !DILocation(line: 144, column: 21, scope: !814)
!875 = !DILocation(line: 147, column: 19, scope: !814)
!876 = !DILocation(line: 147, column: 17, scope: !814)
!877 = !DILocation(line: 148, column: 2, scope: !814)
!878 = !DILocation(line: 149, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 149, column: 7)
!880 = distinct !DILexicalBlock(scope: !814, file: !3, line: 148, column: 5)
!881 = !DILocation(line: 149, column: 12, scope: !879)
!882 = !DILocation(line: 149, column: 7, scope: !880)
!883 = !DILocation(line: 150, column: 4, scope: !879)
!884 = !DILocation(line: 151, column: 49, scope: !880)
!885 = !DILocation(line: 151, column: 12, scope: !880)
!886 = !DILocation(line: 152, column: 14, scope: !887)
!887 = distinct !DILexicalBlock(scope: !880, file: !3, line: 152, column: 7)
!888 = !DILocation(line: 152, column: 7, scope: !887)
!889 = !DILocation(line: 152, column: 21, scope: !887)
!890 = !DILocation(line: 152, column: 7, scope: !880)
!891 = !DILocation(line: 153, column: 4, scope: !887)
!892 = !DILocation(line: 154, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !880, file: !3, line: 154, column: 7)
!894 = !DILocation(line: 154, column: 21, scope: !893)
!895 = !DILocation(line: 154, column: 14, scope: !893)
!896 = !DILocation(line: 154, column: 12, scope: !893)
!897 = !DILocation(line: 154, column: 7, scope: !880)
!898 = !DILocation(line: 155, column: 4, scope: !893)
!899 = !DILocation(line: 156, column: 17, scope: !880)
!900 = !DILocation(line: 156, column: 10, scope: !880)
!901 = !DILocation(line: 156, column: 7, scope: !880)
!902 = !DILocation(line: 157, column: 18, scope: !880)
!903 = !DILocation(line: 157, column: 11, scope: !880)
!904 = !DILocation(line: 157, column: 8, scope: !880)
!905 = !DILocation(line: 158, column: 2, scope: !880)
!906 = !DILocation(line: 158, column: 19, scope: !814)
!907 = !DILocation(line: 158, column: 12, scope: !814)
!908 = !DILocation(line: 158, column: 24, scope: !814)
!909 = !DILocation(line: 158, column: 44, scope: !814)
!910 = !DILocation(line: 158, column: 54, scope: !814)
!911 = !DILocation(line: 158, column: 47, scope: !814)
!912 = !DILocation(line: 158, column: 59, scope: !814)
!913 = !DILocation(line: 158, column: 81, scope: !814)
!914 = !DILocation(line: 159, column: 12, scope: !814)
!915 = !DILocation(line: 159, column: 5, scope: !814)
!916 = !DILocation(line: 159, column: 21, scope: !814)
!917 = distinct !{!917, !877, !918, !684, !685}
!918 = !DILocation(line: 159, column: 43, scope: !814)
!919 = !DILocation(line: 160, column: 6, scope: !920)
!920 = distinct !DILexicalBlock(scope: !814, file: !3, line: 160, column: 6)
!921 = !DILocation(line: 160, column: 27, scope: !920)
!922 = !DILocation(line: 160, column: 44, scope: !920)
!923 = !DILocation(line: 160, column: 49, scope: !920)
!924 = !DILocation(line: 160, column: 42, scope: !920)
!925 = !DILocation(line: 160, column: 10, scope: !920)
!926 = !DILocation(line: 160, column: 6, scope: !814)
!927 = !DILocation(line: 161, column: 3, scope: !920)
!928 = !DILocation(line: 163, column: 21, scope: !814)
!929 = !DILocation(line: 163, column: 26, scope: !814)
!930 = !DILocation(line: 163, column: 2, scope: !814)
!931 = !DILocation(line: 163, column: 8, scope: !814)
!932 = !DILocation(line: 163, column: 19, scope: !814)
!933 = !DILocation(line: 164, column: 32, scope: !814)
!934 = !DILocation(line: 164, column: 37, scope: !814)
!935 = !DILocation(line: 164, column: 2, scope: !814)
!936 = !DILocation(line: 164, column: 8, scope: !814)
!937 = !DILocation(line: 164, column: 30, scope: !814)
!938 = !DILocation(line: 165, column: 22, scope: !814)
!939 = !DILocation(line: 165, column: 2, scope: !814)
!940 = !DILocation(line: 165, column: 8, scope: !814)
!941 = !DILocation(line: 165, column: 20, scope: !814)
!942 = !DILocation(line: 166, column: 25, scope: !814)
!943 = !DILocation(line: 166, column: 2, scope: !814)
!944 = !DILocation(line: 166, column: 8, scope: !814)
!945 = !DILocation(line: 166, column: 23, scope: !814)
!946 = !DILocation(line: 167, column: 29, scope: !814)
!947 = !DILocation(line: 167, column: 2, scope: !814)
!948 = !DILocation(line: 167, column: 8, scope: !814)
!949 = !DILocation(line: 167, column: 27, scope: !814)
!950 = !DILocation(line: 168, column: 24, scope: !814)
!951 = !DILocation(line: 168, column: 31, scope: !814)
!952 = !DILocation(line: 168, column: 2, scope: !814)
!953 = !DILocation(line: 168, column: 8, scope: !814)
!954 = !DILocation(line: 168, column: 22, scope: !814)
!955 = !DILocation(line: 170, column: 2, scope: !814)
!956 = !DILocation(line: 171, column: 1, scope: !814)
!957 = !DISubprogram(name: "efi_printk", scope: !6, file: !6, line: 972, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!958 = !DISubroutineType(types: !959)
!959 = !{!56, !509, null}
!960 = distinct !DISubprogram(name: "efi_convert_cmdline", scope: !3, file: !3, line: 288, type: !961, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1183)
!961 = !DISubroutineType(types: !962)
!962 = !{!266, !963, !1113}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_loaded_image_t", file: !6, line: 610, baseType: !965)
!965 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 579, size: 768, elements: !966)
!966 = !{!967, !1167}
!967 = !DIDerivedType(tag: DW_TAG_member, scope: !965, file: !6, line: 580, baseType: !968, size: 768)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !965, file: !6, line: 580, size: 768, elements: !969)
!969 = !{!970, !971, !972, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !968, file: !6, line: 581, baseType: !42, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "parent_handle", scope: !968, file: !6, line: 582, baseType: !110, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "system_table", scope: !968, file: !6, line: 583, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_system_table_t", file: !25, line: 533, baseType: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !25, line: 516, size: 960, elements: !976)
!976 = !{!977, !1140}
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !25, line: 517, baseType: !978, size: 960)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !975, file: !25, line: 517, size: 960, elements: !979)
!979 = !{!980, !981, !982, !983, !984, !985, !986, !1006, !1007, !1008, !1137, !1138, !1139}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !978, file: !25, line: 518, baseType: !32, size: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "fw_vendor", scope: !978, file: !25, line: 519, baseType: !55, size: 64, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "fw_revision", scope: !978, file: !25, line: 520, baseType: !42, size: 32, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "con_in_handle", scope: !978, file: !25, line: 521, baseType: !55, size: 64, offset: 320)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "con_in", scope: !978, file: !25, line: 522, baseType: !267, size: 64, offset: 384)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "con_out_handle", scope: !978, file: !25, line: 523, baseType: !55, size: 64, offset: 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "con_out", scope: !978, file: !25, line: 524, baseType: !987, size: 64, offset: 512)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_simple_text_output_protocol_t", file: !25, line: 514, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_simple_text_output_protocol", file: !6, line: 503, size: 192, elements: !990)
!990 = !{!991, !1000}
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !6, line: 504, baseType: !992, size: 192)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !989, file: !6, line: 504, size: 192, elements: !993)
!993 = !{!994, !995, !999}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !992, file: !6, line: 505, baseType: !48, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "output_string", scope: !992, file: !6, line: 506, baseType: !996, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !998)
!998 = !{!54, !987, !162}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "test_string", scope: !992, file: !6, line: 508, baseType: !48, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !989, file: !6, line: 514, baseType: !1001, size: 96)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !989, file: !6, line: 510, size: 96, elements: !1002)
!1002 = !{!1003, !1004, !1005}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !1001, file: !6, line: 511, baseType: !42, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "output_string", scope: !1001, file: !6, line: 512, baseType: !42, size: 32, offset: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "test_string", scope: !1001, file: !6, line: 513, baseType: !42, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "stderr_handle", scope: !978, file: !25, line: 525, baseType: !55, size: 64, offset: 576)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "stderr", scope: !978, file: !25, line: 526, baseType: !55, size: 64, offset: 640)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !978, file: !25, line: 527, baseType: !1009, size: 64, offset: 704)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_runtime_services_t", file: !25, line: 336, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !25, line: 317, size: 1088, elements: !1012)
!1012 = !{!1013, !1118}
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !25, line: 318, baseType: !1014, size: 1088)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1011, file: !25, line: 318, size: 1088, elements: !1015)
!1015 = !{!1016, !1017, !1046, !1050, !1056, !1060, !1074, !1075, !1079, !1083, !1087, !1091, !1095, !1108, !1114}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !1014, file: !25, line: 319, baseType: !32, size: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1014, file: !25, line: 320, baseType: !1018, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1020)
!1020 = !{!54, !1021, !1039}
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_time_t", file: !25, line: 242, baseType: !1023)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 230, size: 128, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1037, !1038}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !1023, file: !25, line: 231, baseType: !143, size: 16)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !1023, file: !25, line: 232, baseType: !140, size: 8, offset: 16)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "day", scope: !1023, file: !25, line: 233, baseType: !140, size: 8, offset: 24)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "hour", scope: !1023, file: !25, line: 234, baseType: !140, size: 8, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "minute", scope: !1023, file: !25, line: 235, baseType: !140, size: 8, offset: 40)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !1023, file: !25, line: 236, baseType: !140, size: 8, offset: 48)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !1023, file: !25, line: 237, baseType: !140, size: 8, offset: 56)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "nanosecond", scope: !1023, file: !25, line: 238, baseType: !42, size: 32, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "timezone", scope: !1023, file: !25, line: 239, baseType: !1034, size: 16, offset: 96)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !37, line: 18, baseType: !1035)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !39, line: 23, baseType: !1036)
!1036 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "daylight", scope: !1023, file: !25, line: 240, baseType: !140, size: 8, offset: 112)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !1023, file: !25, line: 241, baseType: !140, size: 8, offset: 120)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_time_cap_t", file: !25, line: 248, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 244, size: 96, elements: !1042)
!1042 = !{!1043, !1044, !1045}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !1041, file: !25, line: 245, baseType: !42, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "accuracy", scope: !1041, file: !25, line: 246, baseType: !42, size: 32, offset: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "sets_to_zero", scope: !1041, file: !25, line: 247, baseType: !140, size: 8, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !1014, file: !25, line: 321, baseType: !1047, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1049)
!1049 = !{!54, !1021}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "get_wakeup_time", scope: !1014, file: !25, line: 322, baseType: !1051, size: 64, offset: 320)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1053)
!1053 = !{!54, !1054, !1054, !1021}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_bool_t", file: !25, line: 48, baseType: !140)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup_time", scope: !1014, file: !25, line: 323, baseType: !1057, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1059)
!1059 = !{!54, !1055, !1021}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "set_virtual_address_map", scope: !1014, file: !25, line: 324, baseType: !1061, size: 64, offset: 448)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1063)
!1063 = !{!54, !55, !55, !42, !1064}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_desc_t", file: !25, line: 145, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 138, size: 320, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1066, file: !25, line: 139, baseType: !42, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1066, file: !25, line: 140, baseType: !42, size: 32, offset: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1066, file: !25, line: 141, baseType: !36, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !1066, file: !25, line: 142, baseType: !36, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !1066, file: !25, line: 143, baseType: !36, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1066, file: !25, line: 144, baseType: !36, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "convert_pointer", scope: !1014, file: !25, line: 325, baseType: !48, size: 64, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "get_variable", scope: !1014, file: !25, line: 326, baseType: !1076, size: 64, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1078)
!1078 = !{!54, !162, !111, !68, !67, !48}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_variable", scope: !1014, file: !25, line: 327, baseType: !1080, size: 64, offset: 640)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1082)
!1082 = !{!54, !67, !162, !111}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "set_variable", scope: !1014, file: !25, line: 328, baseType: !1084, size: 64, offset: 704)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1086)
!1086 = !{!54, !162, !111, !42, !55, !48}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_high_mono_count", scope: !1014, file: !25, line: 329, baseType: !1088, size: 64, offset: 768)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1090)
!1090 = !{!54, !68}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "reset_system", scope: !1014, file: !25, line: 330, baseType: !1092, size: 64, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1094)
!1094 = !{null, !56, !54, !55, !162}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "update_capsule", scope: !1014, file: !25, line: 331, baseType: !1096, size: 64, offset: 896)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1098)
!1098 = !{!54, !1099, !55, !55}
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_capsule_header_t", file: !25, line: 152, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 147, size: 224, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1107}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !1102, file: !25, line: 148, baseType: !112, size: 128, align: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !1102, file: !25, line: 149, baseType: !42, size: 32, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1102, file: !25, line: 150, baseType: !42, size: 32, offset: 160)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "imagesize", scope: !1102, file: !25, line: 151, baseType: !42, size: 32, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "query_capsule_caps", scope: !1014, file: !25, line: 332, baseType: !1109, size: 64, offset: 960)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1111)
!1111 = !{!54, !1099, !55, !1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "query_variable_info", scope: !1014, file: !25, line: 333, baseType: !1115, size: 64, offset: 1024)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1117)
!1117 = !{!54, !42, !1112, !1112, !1112}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !1011, file: !25, line: 335, baseType: !1119, size: 640)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_runtime_services_32_t", file: !25, line: 281, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 265, size: 640, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !1120, file: !25, line: 266, baseType: !32, size: 192)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1120, file: !25, line: 267, baseType: !42, size: 32, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !1120, file: !25, line: 268, baseType: !42, size: 32, offset: 224)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "get_wakeup_time", scope: !1120, file: !25, line: 269, baseType: !42, size: 32, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup_time", scope: !1120, file: !25, line: 270, baseType: !42, size: 32, offset: 288)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "set_virtual_address_map", scope: !1120, file: !25, line: 271, baseType: !42, size: 32, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "convert_pointer", scope: !1120, file: !25, line: 272, baseType: !42, size: 32, offset: 352)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "get_variable", scope: !1120, file: !25, line: 273, baseType: !42, size: 32, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_variable", scope: !1120, file: !25, line: 274, baseType: !42, size: 32, offset: 416)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "set_variable", scope: !1120, file: !25, line: 275, baseType: !42, size: 32, offset: 448)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_high_mono_count", scope: !1120, file: !25, line: 276, baseType: !42, size: 32, offset: 480)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "reset_system", scope: !1120, file: !25, line: 277, baseType: !42, size: 32, offset: 512)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "update_capsule", scope: !1120, file: !25, line: 278, baseType: !42, size: 32, offset: 544)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "query_capsule_caps", scope: !1120, file: !25, line: 279, baseType: !42, size: 32, offset: 576)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "query_variable_info", scope: !1120, file: !25, line: 280, baseType: !42, size: 32, offset: 608)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "boottime", scope: !978, file: !25, line: 528, baseType: !23, size: 64, offset: 768)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tables", scope: !978, file: !25, line: 529, baseType: !55, size: 64, offset: 832)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "tables", scope: !978, file: !25, line: 530, baseType: !55, size: 64, offset: 896)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !975, file: !25, line: 532, baseType: !1141, size: 576)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_system_table_32_t", file: !25, line: 511, baseType: !1142)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 497, size: 576, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !1142, file: !25, line: 498, baseType: !32, size: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "fw_vendor", scope: !1142, file: !25, line: 499, baseType: !42, size: 32, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "fw_revision", scope: !1142, file: !25, line: 500, baseType: !42, size: 32, offset: 224)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "con_in_handle", scope: !1142, file: !25, line: 501, baseType: !42, size: 32, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "con_in", scope: !1142, file: !25, line: 502, baseType: !42, size: 32, offset: 288)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "con_out_handle", scope: !1142, file: !25, line: 503, baseType: !42, size: 32, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "con_out", scope: !1142, file: !25, line: 504, baseType: !42, size: 32, offset: 352)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "stderr_handle", scope: !1142, file: !25, line: 505, baseType: !42, size: 32, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "stderr", scope: !1142, file: !25, line: 506, baseType: !42, size: 32, offset: 416)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1142, file: !25, line: 507, baseType: !42, size: 32, offset: 448)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "boottime", scope: !1142, file: !25, line: 508, baseType: !42, size: 32, offset: 480)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tables", scope: !1142, file: !25, line: 509, baseType: !42, size: 32, offset: 512)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "tables", scope: !1142, file: !25, line: 510, baseType: !42, size: 32, offset: 544)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "device_handle", scope: !968, file: !6, line: 584, baseType: !110, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "file_path", scope: !968, file: !6, line: 585, baseType: !48, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !968, file: !6, line: 586, baseType: !48, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "load_options_size", scope: !968, file: !6, line: 587, baseType: !42, size: 32, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "load_options", scope: !968, file: !6, line: 588, baseType: !48, size: 64, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "image_base", scope: !968, file: !6, line: 589, baseType: !48, size: 64, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "image_size", scope: !968, file: !6, line: 590, baseType: !38, size: 64, align: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "image_code_type", scope: !968, file: !6, line: 591, baseType: !7, size: 32, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "image_data_type", scope: !968, file: !6, line: 592, baseType: !7, size: 32, offset: 672)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !968, file: !6, line: 593, baseType: !169, size: 64, offset: 704)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !965, file: !6, line: 609, baseType: !1168, size: 512)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !965, file: !6, line: 595, size: 512, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !1168, file: !6, line: 596, baseType: !42, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "parent_handle", scope: !1168, file: !6, line: 597, baseType: !42, size: 32, offset: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "system_table", scope: !1168, file: !6, line: 598, baseType: !42, size: 32, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "device_handle", scope: !1168, file: !6, line: 599, baseType: !42, size: 32, offset: 96)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "file_path", scope: !1168, file: !6, line: 600, baseType: !42, size: 32, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1168, file: !6, line: 601, baseType: !42, size: 32, offset: 160)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "load_options_size", scope: !1168, file: !6, line: 602, baseType: !42, size: 32, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "load_options", scope: !1168, file: !6, line: 603, baseType: !42, size: 32, offset: 224)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "image_base", scope: !1168, file: !6, line: 604, baseType: !42, size: 32, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "image_size", scope: !1168, file: !6, line: 605, baseType: !38, size: 64, align: 64, offset: 320)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "image_code_type", scope: !1168, file: !6, line: 606, baseType: !42, size: 32, offset: 384)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "image_data_type", scope: !1168, file: !6, line: 607, baseType: !42, size: 32, offset: 416)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !1168, file: !6, line: 608, baseType: !42, size: 32, offset: 448)
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1199}
!1184 = !DILocalVariable(name: "image", arg: 1, scope: !960, file: !3, line: 288, type: !963)
!1185 = !DILocalVariable(name: "cmd_line_len", arg: 2, scope: !960, file: !3, line: 288, type: !1113)
!1186 = !DILocalVariable(name: "options", scope: !960, file: !3, line: 290, type: !383)
!1187 = !DILocalVariable(name: "options_size", scope: !960, file: !3, line: 291, type: !42)
!1188 = !DILocalVariable(name: "options_bytes", scope: !960, file: !3, line: 292, type: !56)
!1189 = !DILocalVariable(name: "safe_options_bytes", scope: !960, file: !3, line: 292, type: !56)
!1190 = !DILocalVariable(name: "cmdline_addr", scope: !960, file: !3, line: 293, type: !55)
!1191 = !DILocalVariable(name: "s2", scope: !960, file: !3, line: 294, type: !383)
!1192 = !DILocalVariable(name: "in_quote", scope: !960, file: !3, line: 295, type: !154)
!1193 = !DILocalVariable(name: "status", scope: !960, file: !3, line: 296, type: !54)
!1194 = !DILocalVariable(name: "options_chars", scope: !960, file: !3, line: 297, type: !42)
!1195 = !DILocalVariable(name: "c", scope: !1196, file: !3, line: 309, type: !163)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 308, column: 64)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 306, column: 15)
!1198 = distinct !DILexicalBlock(scope: !960, file: !3, line: 306, column: 6)
!1199 = !DILocalVariable(name: "__pad", scope: !1200, file: !3, line: 358, type: !523)
!1200 = distinct !DILexicalBlock(scope: !960, file: !3, line: 358, column: 11)
!1201 = !DILocation(line: 288, column: 47, scope: !960)
!1202 = !DILocation(line: 288, column: 59, scope: !960)
!1203 = !DILocation(line: 290, column: 2, scope: !960)
!1204 = !DILocation(line: 290, column: 22, scope: !960)
!1205 = !DILocation(line: 290, column: 32, scope: !960)
!1206 = !DILocation(line: 291, column: 2, scope: !960)
!1207 = !DILocation(line: 291, column: 6, scope: !960)
!1208 = !DILocation(line: 291, column: 21, scope: !960)
!1209 = !DILocation(line: 292, column: 2, scope: !960)
!1210 = !DILocation(line: 292, column: 6, scope: !960)
!1211 = !DILocation(line: 292, column: 25, scope: !960)
!1212 = !DILocation(line: 293, column: 2, scope: !960)
!1213 = !DILocation(line: 293, column: 16, scope: !960)
!1214 = !DILocation(line: 294, column: 2, scope: !960)
!1215 = !DILocation(line: 294, column: 22, scope: !960)
!1216 = !DILocation(line: 295, column: 2, scope: !960)
!1217 = !DILocation(line: 295, column: 7, scope: !960)
!1218 = !DILocation(line: 296, column: 2, scope: !960)
!1219 = !DILocation(line: 296, column: 15, scope: !960)
!1220 = !DILocation(line: 297, column: 2, scope: !960)
!1221 = !DILocation(line: 297, column: 6, scope: !960)
!1222 = !DILocation(line: 299, column: 6, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !960, file: !3, line: 299, column: 6)
!1224 = !DILocation(line: 299, column: 19, scope: !1223)
!1225 = !DILocation(line: 299, column: 6, scope: !960)
!1226 = !DILocation(line: 300, column: 43, scope: !1223)
!1227 = !DILocation(line: 300, column: 28, scope: !1223)
!1228 = !DILocation(line: 300, column: 52, scope: !1223)
!1229 = !DILocation(line: 300, column: 3, scope: !1223)
!1230 = !DILocation(line: 303, column: 2, scope: !960)
!1231 = !DILocation(line: 304, column: 18, scope: !960)
!1232 = !DILocation(line: 304, column: 31, scope: !960)
!1233 = !DILocation(line: 304, column: 16, scope: !960)
!1234 = !DILocation(line: 306, column: 6, scope: !1198)
!1235 = !DILocation(line: 306, column: 6, scope: !960)
!1236 = !DILocation(line: 307, column: 8, scope: !1197)
!1237 = !DILocation(line: 307, column: 6, scope: !1197)
!1238 = !DILocation(line: 308, column: 3, scope: !1197)
!1239 = !DILocation(line: 308, column: 10, scope: !1197)
!1240 = !DILocation(line: 308, column: 24, scope: !1197)
!1241 = !DILocation(line: 308, column: 44, scope: !1197)
!1242 = !DILocation(line: 308, column: 60, scope: !1197)
!1243 = !DILocation(line: 0, scope: !1197)
!1244 = !DILocation(line: 309, column: 4, scope: !1196)
!1245 = !DILocation(line: 309, column: 17, scope: !1196)
!1246 = !DILocation(line: 309, column: 24, scope: !1196)
!1247 = !DILocation(line: 309, column: 21, scope: !1196)
!1248 = !DILocation(line: 311, column: 8, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 311, column: 8)
!1250 = !DILocation(line: 311, column: 10, scope: !1249)
!1251 = !DILocation(line: 311, column: 8, scope: !1196)
!1252 = !DILocation(line: 312, column: 9, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 312, column: 9)
!1254 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 311, column: 18)
!1255 = !DILocation(line: 312, column: 11, scope: !1253)
!1256 = !DILocation(line: 312, column: 20, scope: !1253)
!1257 = !DILocation(line: 312, column: 23, scope: !1253)
!1258 = !DILocation(line: 312, column: 25, scope: !1253)
!1259 = !DILocation(line: 312, column: 9, scope: !1254)
!1260 = !DILocation(line: 313, column: 6, scope: !1253)
!1261 = !DILocation(line: 314, column: 9, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 314, column: 9)
!1263 = !DILocation(line: 314, column: 11, scope: !1262)
!1264 = !DILocation(line: 314, column: 9, scope: !1254)
!1265 = !DILocation(line: 315, column: 18, scope: !1262)
!1266 = !DILocation(line: 315, column: 17, scope: !1262)
!1267 = !DILocation(line: 315, column: 15, scope: !1262)
!1268 = !DILocation(line: 315, column: 6, scope: !1262)
!1269 = !DILocation(line: 316, column: 15, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 316, column: 14)
!1271 = !DILocation(line: 316, column: 24, scope: !1270)
!1272 = !DILocation(line: 316, column: 27, scope: !1270)
!1273 = !DILocation(line: 316, column: 14, scope: !1262)
!1274 = !DILocation(line: 317, column: 27, scope: !1270)
!1275 = !DILocation(line: 317, column: 25, scope: !1270)
!1276 = !DILocation(line: 317, column: 6, scope: !1270)
!1277 = !DILocation(line: 319, column: 18, scope: !1254)
!1278 = !DILocation(line: 320, column: 5, scope: !1254)
!1279 = distinct !{!1279, !1238, !1280, !684, !685}
!1280 = !DILocation(line: 348, column: 3, scope: !1197)
!1281 = !DILocation(line: 328, column: 26, scope: !1196)
!1282 = !DILocation(line: 328, column: 28, scope: !1196)
!1283 = !DILocation(line: 328, column: 23, scope: !1196)
!1284 = !DILocation(line: 328, column: 18, scope: !1196)
!1285 = !DILocation(line: 334, column: 9, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 334, column: 8)
!1287 = !DILocation(line: 334, column: 11, scope: !1286)
!1288 = !DILocation(line: 334, column: 21, scope: !1286)
!1289 = !DILocation(line: 334, column: 8, scope: !1196)
!1290 = !DILocation(line: 340, column: 10, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 340, column: 9)
!1292 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 334, column: 32)
!1293 = !DILocation(line: 340, column: 9, scope: !1292)
!1294 = !DILocation(line: 341, column: 20, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 340, column: 25)
!1296 = !DILocation(line: 342, column: 5, scope: !1295)
!1297 = !DILocation(line: 342, column: 18, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 342, column: 16)
!1299 = !DILocation(line: 342, column: 17, scope: !1298)
!1300 = !DILocation(line: 342, column: 21, scope: !1298)
!1301 = !DILocation(line: 342, column: 31, scope: !1298)
!1302 = !DILocation(line: 342, column: 16, scope: !1291)
!1303 = !DILocation(line: 343, column: 19, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 342, column: 42)
!1305 = !DILocation(line: 344, column: 19, scope: !1304)
!1306 = !DILocation(line: 345, column: 8, scope: !1304)
!1307 = !DILocation(line: 346, column: 5, scope: !1304)
!1308 = !DILocation(line: 347, column: 4, scope: !1292)
!1309 = !DILocation(line: 349, column: 7, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 349, column: 7)
!1311 = !DILocation(line: 349, column: 21, scope: !1310)
!1312 = !DILocation(line: 349, column: 7, scope: !1197)
!1313 = !DILocation(line: 350, column: 20, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 349, column: 43)
!1315 = !DILocation(line: 350, column: 18, scope: !1314)
!1316 = !DILocation(line: 351, column: 4, scope: !1314)
!1317 = !DILocation(line: 353, column: 3, scope: !1314)
!1318 = !DILocation(line: 354, column: 2, scope: !1197)
!1319 = !DILocation(line: 356, column: 15, scope: !960)
!1320 = !DILocation(line: 358, column: 11, scope: !960)
!1321 = !DILocation(line: 358, column: 11, scope: !1200)
!1322 = !DILocation(line: 358, column: 11, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 358, column: 11)
!1324 = !DILocation(line: 358, column: 11, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 358, column: 11)
!1326 = !DILocation(line: 358, column: 9, scope: !960)
!1327 = !DILocation(line: 360, column: 6, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !960, file: !3, line: 360, column: 6)
!1329 = !DILocation(line: 360, column: 13, scope: !1328)
!1330 = !DILocation(line: 360, column: 6, scope: !960)
!1331 = !DILocation(line: 361, column: 3, scope: !1328)
!1332 = !DILocation(line: 363, column: 19, scope: !960)
!1333 = !DILocation(line: 363, column: 11, scope: !960)
!1334 = !DILocation(line: 363, column: 33, scope: !960)
!1335 = !DILocation(line: 364, column: 4, scope: !960)
!1336 = !DILocation(line: 364, column: 18, scope: !960)
!1337 = !DILocation(line: 364, column: 23, scope: !960)
!1338 = !DILocation(line: 363, column: 2, scope: !960)
!1339 = !DILocation(line: 366, column: 18, scope: !960)
!1340 = !DILocation(line: 366, column: 3, scope: !960)
!1341 = !DILocation(line: 366, column: 16, scope: !960)
!1342 = !DILocation(line: 367, column: 17, scope: !960)
!1343 = !DILocation(line: 367, column: 9, scope: !960)
!1344 = !DILocation(line: 367, column: 2, scope: !960)
!1345 = !DILocation(line: 368, column: 1, scope: !960)
!1346 = distinct !DISubprogram(name: "efi_measure_tagged_event", scope: !3, file: !3, line: 230, type: !1347, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1349)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!54, !55, !55, !17}
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1399, !1400, !1402, !1416, !1417, !1419, !1421, !1423, !1425}
!1350 = !DILocalVariable(name: "load_addr", arg: 1, scope: !1346, file: !3, line: 230, type: !55)
!1351 = !DILocalVariable(name: "load_size", arg: 2, scope: !1346, file: !3, line: 231, type: !55)
!1352 = !DILocalVariable(name: "event", arg: 3, scope: !1346, file: !3, line: 232, type: !17)
!1353 = !DILocalVariable(name: "tcg2_guid", scope: !1346, file: !3, line: 234, type: !112)
!1354 = !DILocalVariable(name: "tcg2", scope: !1346, file: !3, line: 235, type: !1355)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_tcg2_protocol_t", file: !6, line: 854, baseType: !1357)
!1357 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_tcg2_protocol", file: !6, line: 856, size: 448, elements: !1358)
!1358 = !{!1359, !1389}
!1359 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !6, line: 857, baseType: !1360, size: 448)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1357, file: !6, line: 857, size: 448, elements: !1361)
!1361 = !{!1362, !1363, !1368, !1385, !1386, !1387, !1388}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "get_capability", scope: !1360, file: !6, line: 858, baseType: !48, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "get_event_log", scope: !1360, file: !6, line: 859, baseType: !1364, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1366)
!1366 = !{!54, !1355, !1367, !57, !57, !1054}
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_tcg2_event_log_format", file: !6, line: 828, baseType: !42)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "hash_log_extend_event", scope: !1360, file: !6, line: 864, baseType: !1369, size: 64, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1371)
!1371 = !{!54, !1355, !36, !58, !36, !1372}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_tcg2_event_t", file: !6, line: 852, baseType: !1375)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_tcg2_event", file: !6, line: 835, size: 144, elements: !1376)
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "event_size", scope: !1375, file: !6, line: 836, baseType: !42, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "event_header", scope: !1375, file: !6, line: 842, baseType: !1379, size: 112, offset: 32)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1375, file: !6, line: 837, size: 112, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1384}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !1379, file: !6, line: 838, baseType: !42, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "header_version", scope: !1379, file: !6, line: 839, baseType: !143, size: 16, offset: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pcr_index", scope: !1379, file: !6, line: 840, baseType: !42, size: 32, offset: 48)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !1379, file: !6, line: 841, baseType: !42, size: 32, offset: 80)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "submit_command", scope: !1360, file: !6, line: 869, baseType: !48, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "get_active_pcr_banks", scope: !1360, file: !6, line: 870, baseType: !48, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "set_active_pcr_banks", scope: !1360, file: !6, line: 871, baseType: !48, size: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "get_result_of_set_active_pcr_banks", scope: !1360, file: !6, line: 872, baseType: !48, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !1357, file: !6, line: 882, baseType: !1390, size: 224)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1357, file: !6, line: 874, size: 224, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1398}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "get_capability", scope: !1390, file: !6, line: 875, baseType: !42, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "get_event_log", scope: !1390, file: !6, line: 876, baseType: !42, size: 32, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "hash_log_extend_event", scope: !1390, file: !6, line: 877, baseType: !42, size: 32, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "submit_command", scope: !1390, file: !6, line: 878, baseType: !42, size: 32, offset: 96)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "get_active_pcr_banks", scope: !1390, file: !6, line: 879, baseType: !42, size: 32, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "set_active_pcr_banks", scope: !1390, file: !6, line: 880, baseType: !42, size: 32, offset: 160)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "get_result_of_set_active_pcr_banks", scope: !1390, file: !6, line: 881, baseType: !42, size: 32, offset: 192)
!1399 = !DILocalVariable(name: "status", scope: !1346, file: !3, line: 236, type: !54)
!1400 = !DILocalVariable(name: "__pad", scope: !1401, file: !3, line: 238, type: !523)
!1401 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 238, column: 2)
!1402 = !DILocalVariable(name: "evt", scope: !1403, file: !3, line: 244, type: !1405)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 239, column: 12)
!1404 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 239, column: 6)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_measured_event", scope: !1346, file: !3, line: 240, size: 208, elements: !1407)
!1407 = !{!1408, !1409, !1415}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "event_data", scope: !1406, file: !3, line: 241, baseType: !1374, size: 144)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_event", scope: !1406, file: !3, line: 242, baseType: !1410, size: 64, offset: 144)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_tcg2_tagged_event_t", file: !6, line: 853, baseType: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_tcg2_tagged_event", file: !6, line: 846, size: 64, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_event_id", scope: !1411, file: !6, line: 847, baseType: !42, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_event_data_size", scope: !1411, file: !6, line: 848, baseType: !42, size: 32, offset: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_event_data", scope: !1406, file: !3, line: 243, baseType: !373, offset: 208)
!1416 = !DILocalVariable(name: "size", scope: !1403, file: !3, line: 245, type: !56)
!1417 = !DILocalVariable(name: "__pad", scope: !1418, file: !3, line: 247, type: !523)
!1418 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 247, column: 12)
!1419 = !DILocalVariable(name: "__inst", scope: !1420, file: !3, line: 268, type: !1355)
!1420 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 268, column: 12)
!1421 = !DILocalVariable(name: "__pad", scope: !1422, file: !3, line: 268, type: !523)
!1422 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 268, column: 12)
!1423 = !DILocalVariable(name: "__pad", scope: !1424, file: !3, line: 270, type: !523)
!1424 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 270, column: 3)
!1425 = !DILabel(scope: !1346, name: "fail", file: !3, line: 278)
!1426 = !DILocation(line: 230, column: 60, scope: !1346)
!1427 = !DILocation(line: 231, column: 25, scope: !1346)
!1428 = !DILocation(line: 232, column: 30, scope: !1346)
!1429 = !DILocation(line: 234, column: 2, scope: !1346)
!1430 = !DILocation(line: 234, column: 13, scope: !1346)
!1431 = !DILocation(line: 235, column: 2, scope: !1346)
!1432 = !DILocation(line: 235, column: 23, scope: !1346)
!1433 = !DILocation(line: 236, column: 2, scope: !1346)
!1434 = !DILocation(line: 236, column: 15, scope: !1346)
!1435 = !DILocation(line: 238, column: 2, scope: !1346)
!1436 = !DILocation(line: 238, column: 2, scope: !1401)
!1437 = !DILocation(line: 238, column: 2, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 238, column: 2)
!1439 = !DILocation(line: 238, column: 2, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 238, column: 2)
!1441 = !DILocation(line: 239, column: 6, scope: !1404)
!1442 = !DILocation(line: 239, column: 6, scope: !1346)
!1443 = !DILocation(line: 240, column: 3, scope: !1403)
!1444 = !DILocation(line: 244, column: 6, scope: !1403)
!1445 = !DILocation(line: 245, column: 3, scope: !1403)
!1446 = !DILocation(line: 245, column: 7, scope: !1403)
!1447 = !DILocation(line: 245, column: 36, scope: !1403)
!1448 = !DILocation(line: 245, column: 29, scope: !1403)
!1449 = !DILocation(line: 245, column: 43, scope: !1403)
!1450 = !DILocation(line: 245, column: 27, scope: !1403)
!1451 = !DILocation(line: 245, column: 14, scope: !1403)
!1452 = !DILocation(line: 247, column: 12, scope: !1403)
!1453 = !DILocation(line: 247, column: 12, scope: !1418)
!1454 = !DILocation(line: 247, column: 12, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 247, column: 12)
!1456 = !DILocation(line: 247, column: 12, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 247, column: 12)
!1458 = !DILocation(line: 247, column: 10, scope: !1403)
!1459 = !DILocation(line: 249, column: 7, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 249, column: 7)
!1461 = !DILocation(line: 249, column: 14, scope: !1460)
!1462 = !DILocation(line: 249, column: 7, scope: !1403)
!1463 = !DILocation(line: 250, column: 4, scope: !1460)
!1464 = !DILocation(line: 252, column: 3, scope: !1403)
!1465 = !DILocation(line: 252, column: 8, scope: !1403)
!1466 = !DILocation(line: 252, column: 44, scope: !1403)
!1467 = !DILocation(line: 253, column: 20, scope: !1403)
!1468 = !DILocation(line: 254, column: 17, scope: !1403)
!1469 = !DILocation(line: 256, column: 38, scope: !1403)
!1470 = !DILocation(line: 256, column: 31, scope: !1403)
!1471 = !DILocation(line: 256, column: 45, scope: !1403)
!1472 = !DILocation(line: 252, column: 21, scope: !1403)
!1473 = !DILocation(line: 260, column: 3, scope: !1403)
!1474 = !DILocation(line: 260, column: 8, scope: !1403)
!1475 = !DILocation(line: 260, column: 53, scope: !1403)
!1476 = !DILocation(line: 261, column: 31, scope: !1403)
!1477 = !DILocation(line: 261, column: 24, scope: !1403)
!1478 = !DILocation(line: 261, column: 38, scope: !1403)
!1479 = !DILocation(line: 262, column: 38, scope: !1403)
!1480 = !DILocation(line: 262, column: 31, scope: !1403)
!1481 = !DILocation(line: 262, column: 45, scope: !1403)
!1482 = !DILocation(line: 260, column: 23, scope: !1403)
!1483 = !DILocation(line: 265, column: 10, scope: !1403)
!1484 = !DILocation(line: 265, column: 15, scope: !1403)
!1485 = !DILocation(line: 265, column: 41, scope: !1403)
!1486 = !DILocation(line: 265, column: 34, scope: !1403)
!1487 = !DILocation(line: 265, column: 48, scope: !1403)
!1488 = !DILocation(line: 266, column: 17, scope: !1403)
!1489 = !DILocation(line: 266, column: 10, scope: !1403)
!1490 = !DILocation(line: 266, column: 24, scope: !1403)
!1491 = !DILocation(line: 265, column: 3, scope: !1403)
!1492 = !DILocation(line: 268, column: 12, scope: !1420)
!1493 = !DILocation(line: 268, column: 12, scope: !1422)
!1494 = !DILocation(line: 268, column: 12, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 268, column: 12)
!1496 = !DILocation(line: 268, column: 12, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 268, column: 12)
!1498 = !DILocation(line: 268, column: 12, scope: !1403)
!1499 = !DILocation(line: 268, column: 10, scope: !1403)
!1500 = !DILocation(line: 270, column: 3, scope: !1403)
!1501 = !DILocation(line: 270, column: 3, scope: !1424)
!1502 = !DILocation(line: 270, column: 3, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 270, column: 3)
!1504 = !DILocation(line: 270, column: 3, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 270, column: 3)
!1506 = !DILocation(line: 272, column: 7, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 272, column: 7)
!1508 = !DILocation(line: 272, column: 14, scope: !1507)
!1509 = !DILocation(line: 272, column: 7, scope: !1403)
!1510 = !DILocation(line: 273, column: 4, scope: !1507)
!1511 = !DILocation(line: 274, column: 3, scope: !1403)
!1512 = !DILocation(line: 275, column: 2, scope: !1404)
!1513 = !DILocation(line: 277, column: 2, scope: !1346)
!1514 = !DILocation(line: 278, column: 1, scope: !1346)
!1515 = !DILocation(line: 279, column: 2, scope: !1346)
!1516 = !DILocation(line: 280, column: 9, scope: !1346)
!1517 = !DILocation(line: 280, column: 2, scope: !1346)
!1518 = !DILocation(line: 281, column: 1, scope: !1346)
!1519 = !DISubprogram(name: "snprintf", scope: !1520, file: !1520, line: 12, type: !1521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1520 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!56, !266, !514, !509, null}
!1523 = distinct !DISubprogram(name: "efi_exit_boot_services", scope: !3, file: !3, line: 385, type: !1524, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1540)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!54, !48, !48, !1526}
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_exit_boot_map_processing", file: !6, line: 937, baseType: !1527)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!54, !1530, !48}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_boot_memmap", file: !25, line: 535, size: 320, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1537, !1538}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "map_size", scope: !1531, file: !25, line: 536, baseType: !55, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "desc_size", scope: !1531, file: !25, line: 537, baseType: !55, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "desc_ver", scope: !1531, file: !25, line: 538, baseType: !42, size: 32, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "map_key", scope: !1531, file: !25, line: 539, baseType: !55, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "buff_size", scope: !1531, file: !25, line: 540, baseType: !55, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1531, file: !25, line: 541, baseType: !1539, offset: 320)
!1539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1065, elements: !374)
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1550, !1552, !1556}
!1541 = !DILocalVariable(name: "handle", arg: 1, scope: !1523, file: !3, line: 385, type: !48)
!1542 = !DILocalVariable(name: "priv", arg: 2, scope: !1523, file: !3, line: 385, type: !48)
!1543 = !DILocalVariable(name: "priv_func", arg: 3, scope: !1523, file: !3, line: 386, type: !1526)
!1544 = !DILocalVariable(name: "map", scope: !1523, file: !3, line: 388, type: !1530)
!1545 = !DILocalVariable(name: "status", scope: !1523, file: !3, line: 389, type: !54)
!1546 = !DILocalVariable(name: "__pad", scope: !1547, file: !3, line: 400, type: !523)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 400, column: 3)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 399, column: 29)
!1549 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 399, column: 6)
!1550 = !DILocalVariable(name: "__pad", scope: !1551, file: !3, line: 404, type: !523)
!1551 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 404, column: 11)
!1552 = !DILocalVariable(name: "__pad", scope: !1553, file: !3, line: 421, type: !523)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 421, column: 12)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 406, column: 39)
!1555 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 406, column: 6)
!1556 = !DILocalVariable(name: "__pad", scope: !1557, file: !3, line: 437, type: !523)
!1557 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 437, column: 12)
!1558 = !DILocation(line: 385, column: 43, scope: !1523)
!1559 = !DILocation(line: 385, column: 57, scope: !1523)
!1560 = !DILocation(line: 386, column: 38, scope: !1523)
!1561 = !DILocation(line: 388, column: 2, scope: !1523)
!1562 = !DILocation(line: 388, column: 26, scope: !1523)
!1563 = !DILocation(line: 389, column: 2, scope: !1523)
!1564 = !DILocation(line: 389, column: 15, scope: !1523)
!1565 = !DILocation(line: 391, column: 6, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 391, column: 6)
!1567 = !DILocation(line: 391, column: 6, scope: !1523)
!1568 = !DILocation(line: 392, column: 3, scope: !1566)
!1569 = !DILocation(line: 394, column: 11, scope: !1523)
!1570 = !DILocation(line: 394, column: 9, scope: !1523)
!1571 = !DILocation(line: 395, column: 6, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 395, column: 6)
!1573 = !DILocation(line: 395, column: 13, scope: !1572)
!1574 = !DILocation(line: 395, column: 6, scope: !1523)
!1575 = !DILocation(line: 396, column: 10, scope: !1572)
!1576 = !DILocation(line: 396, column: 3, scope: !1572)
!1577 = !DILocation(line: 398, column: 11, scope: !1523)
!1578 = !DILocation(line: 398, column: 21, scope: !1523)
!1579 = !DILocation(line: 398, column: 26, scope: !1523)
!1580 = !DILocation(line: 398, column: 9, scope: !1523)
!1581 = !DILocation(line: 399, column: 6, scope: !1549)
!1582 = !DILocation(line: 399, column: 13, scope: !1549)
!1583 = !DILocation(line: 399, column: 6, scope: !1523)
!1584 = !DILocation(line: 400, column: 3, scope: !1548)
!1585 = !DILocation(line: 400, column: 3, scope: !1547)
!1586 = !DILocation(line: 400, column: 3, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 400, column: 3)
!1588 = !DILocation(line: 400, column: 3, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 400, column: 3)
!1590 = !DILocation(line: 401, column: 10, scope: !1548)
!1591 = !DILocation(line: 401, column: 3, scope: !1548)
!1592 = !DILocation(line: 404, column: 11, scope: !1523)
!1593 = !DILocation(line: 404, column: 11, scope: !1551)
!1594 = !DILocation(line: 404, column: 11, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 404, column: 11)
!1596 = !DILocation(line: 404, column: 11, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 404, column: 11)
!1598 = !DILocation(line: 404, column: 9, scope: !1523)
!1599 = !DILocation(line: 406, column: 6, scope: !1555)
!1600 = !DILocation(line: 406, column: 13, scope: !1555)
!1601 = !DILocation(line: 406, column: 6, scope: !1523)
!1602 = !DILocation(line: 420, column: 19, scope: !1554)
!1603 = !DILocation(line: 420, column: 24, scope: !1554)
!1604 = !DILocation(line: 420, column: 3, scope: !1554)
!1605 = !DILocation(line: 420, column: 8, scope: !1554)
!1606 = !DILocation(line: 420, column: 17, scope: !1554)
!1607 = !DILocation(line: 421, column: 12, scope: !1554)
!1608 = !DILocation(line: 421, column: 12, scope: !1553)
!1609 = !DILocation(line: 421, column: 12, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 421, column: 12)
!1611 = !DILocation(line: 421, column: 12, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 421, column: 12)
!1613 = !DILocation(line: 421, column: 10, scope: !1554)
!1614 = !DILocation(line: 429, column: 7, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 429, column: 7)
!1616 = !DILocation(line: 429, column: 14, scope: !1615)
!1617 = !DILocation(line: 429, column: 7, scope: !1554)
!1618 = !DILocation(line: 430, column: 11, scope: !1615)
!1619 = !DILocation(line: 430, column: 4, scope: !1615)
!1620 = !DILocation(line: 432, column: 12, scope: !1554)
!1621 = !DILocation(line: 432, column: 22, scope: !1554)
!1622 = !DILocation(line: 432, column: 27, scope: !1554)
!1623 = !DILocation(line: 432, column: 10, scope: !1554)
!1624 = !DILocation(line: 434, column: 7, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 434, column: 7)
!1626 = !DILocation(line: 434, column: 14, scope: !1625)
!1627 = !DILocation(line: 434, column: 7, scope: !1554)
!1628 = !DILocation(line: 435, column: 11, scope: !1625)
!1629 = !DILocation(line: 435, column: 4, scope: !1625)
!1630 = !DILocation(line: 437, column: 12, scope: !1554)
!1631 = !DILocation(line: 437, column: 12, scope: !1557)
!1632 = !DILocation(line: 437, column: 12, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 437, column: 12)
!1634 = !DILocation(line: 437, column: 12, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 437, column: 12)
!1636 = !DILocation(line: 437, column: 10, scope: !1554)
!1637 = !DILocation(line: 438, column: 2, scope: !1554)
!1638 = !DILocation(line: 440, column: 9, scope: !1523)
!1639 = !DILocation(line: 440, column: 2, scope: !1523)
!1640 = !DILocation(line: 441, column: 1, scope: !1523)
!1641 = !DISubprogram(name: "efi_pci_disable_bridge_busmaster", scope: !6, file: !6, line: 935, type: !1642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null}
!1644 = !DISubprogram(name: "efi_get_memory_map", scope: !6, file: !6, line: 980, type: !1645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!54, !1647, !154}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1648 = distinct !DISubprogram(name: "get_efi_config_table", scope: !3, file: !3, line: 448, type: !1649, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1651)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!48, !112}
!1651 = !{!1652, !1653, !1654, !1655, !1656}
!1652 = !DILocalVariable(name: "guid", arg: 1, scope: !1648, file: !3, line: 448, type: !112)
!1653 = !DILocalVariable(name: "tables", scope: !1648, file: !3, line: 450, type: !55)
!1654 = !DILocalVariable(name: "nr_tables", scope: !1648, file: !3, line: 451, type: !56)
!1655 = !DILocalVariable(name: "i", scope: !1648, file: !3, line: 452, type: !56)
!1656 = !DILocalVariable(name: "t", scope: !1657, file: !3, line: 455, type: !1660)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 454, column: 34)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 454, column: 2)
!1659 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 454, column: 2)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_config_table_t", file: !25, line: 461, baseType: !1662)
!1662 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !25, line: 455, size: 192, elements: !1663)
!1663 = !{!1664, !1669}
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !25, line: 456, baseType: !1665, size: 192)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !25, line: 456, size: 192, elements: !1666)
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !1665, file: !25, line: 457, baseType: !112, size: 128, align: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1665, file: !25, line: 458, baseType: !48, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !1662, file: !25, line: 460, baseType: !1670, size: 160)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_config_table_32_t", file: !25, line: 453, baseType: !1671)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 450, size: 160, elements: !1672)
!1672 = !{!1673, !1674}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !1671, file: !25, line: 451, baseType: !112, size: 128, align: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1671, file: !25, line: 452, baseType: !42, size: 32, offset: 128)
!1675 = !DILocation(line: 448, column: 39, scope: !1648)
!1676 = !DILocation(line: 450, column: 2, scope: !1648)
!1677 = !DILocation(line: 450, column: 16, scope: !1648)
!1678 = !DILocation(line: 450, column: 25, scope: !1648)
!1679 = !DILocation(line: 451, column: 2, scope: !1648)
!1680 = !DILocation(line: 451, column: 6, scope: !1648)
!1681 = !DILocation(line: 451, column: 18, scope: !1648)
!1682 = !DILocation(line: 452, column: 2, scope: !1648)
!1683 = !DILocation(line: 452, column: 6, scope: !1648)
!1684 = !DILocation(line: 454, column: 9, scope: !1659)
!1685 = !DILocation(line: 454, column: 7, scope: !1659)
!1686 = !DILocation(line: 454, column: 14, scope: !1658)
!1687 = !DILocation(line: 454, column: 18, scope: !1658)
!1688 = !DILocation(line: 454, column: 16, scope: !1658)
!1689 = !DILocation(line: 454, column: 2, scope: !1659)
!1690 = !DILocation(line: 455, column: 3, scope: !1657)
!1691 = !DILocation(line: 455, column: 23, scope: !1657)
!1692 = !DILocation(line: 455, column: 35, scope: !1657)
!1693 = !DILocation(line: 455, column: 27, scope: !1657)
!1694 = !DILocation(line: 457, column: 19, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 457, column: 7)
!1696 = !DILocation(line: 457, column: 22, scope: !1695)
!1697 = !DILocation(line: 457, column: 7, scope: !1695)
!1698 = !DILocation(line: 457, column: 34, scope: !1695)
!1699 = !DILocation(line: 457, column: 7, scope: !1657)
!1700 = !DILocation(line: 458, column: 11, scope: !1695)
!1701 = !DILocation(line: 458, column: 4, scope: !1695)
!1702 = !DILocation(line: 460, column: 13, scope: !1657)
!1703 = !DILocation(line: 460, column: 10, scope: !1657)
!1704 = !DILocation(line: 462, column: 2, scope: !1658)
!1705 = !DILocation(line: 462, column: 2, scope: !1657)
!1706 = !DILocation(line: 454, column: 30, scope: !1658)
!1707 = !DILocation(line: 454, column: 2, scope: !1658)
!1708 = distinct !{!1708, !1689, !1709, !684, !685}
!1709 = !DILocation(line: 462, column: 2, scope: !1659)
!1710 = !DILocation(line: 463, column: 2, scope: !1648)
!1711 = !DILocation(line: 464, column: 1, scope: !1648)
!1712 = distinct !DISubprogram(name: "efi_guidcmp", scope: !25, file: !25, line: 699, type: !1713, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1715)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!56, !112, !112}
!1715 = !{!1716, !1717}
!1716 = !DILocalVariable(name: "left", arg: 1, scope: !1712, file: !25, line: 699, type: !112)
!1717 = !DILocalVariable(name: "right", arg: 2, scope: !1712, file: !25, line: 699, type: !112)
!1718 = !DILocation(line: 699, column: 25, scope: !1712)
!1719 = !DILocation(line: 699, column: 42, scope: !1712)
!1720 = !DILocation(line: 701, column: 9, scope: !1712)
!1721 = !DILocation(line: 701, column: 2, scope: !1712)
!1722 = distinct !DISubprogram(name: "efi_load_initrd", scope: !3, file: !3, line: 567, type: !1723, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1732)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!54, !963, !55, !55, !1725}
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_efi_initrd", file: !25, line: 1339, size: 128, elements: !1729)
!1729 = !{!1730, !1731}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1728, file: !25, line: 1340, baseType: !55, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1728, file: !25, line: 1341, baseType: !55, size: 64, offset: 64)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1742, !1744, !1746, !1747, !1749, !1750}
!1733 = !DILocalVariable(name: "image", arg: 1, scope: !1722, file: !3, line: 567, type: !963)
!1734 = !DILocalVariable(name: "soft_limit", arg: 2, scope: !1722, file: !3, line: 568, type: !55)
!1735 = !DILocalVariable(name: "hard_limit", arg: 3, scope: !1722, file: !3, line: 569, type: !55)
!1736 = !DILocalVariable(name: "out", arg: 4, scope: !1722, file: !3, line: 570, type: !1725)
!1737 = !DILocalVariable(name: "tbl_guid", scope: !1722, file: !3, line: 572, type: !112)
!1738 = !DILocalVariable(name: "status", scope: !1722, file: !3, line: 573, type: !54)
!1739 = !DILocalVariable(name: "initrd", scope: !1722, file: !3, line: 574, type: !1728)
!1740 = !DILocalVariable(name: "tbl", scope: !1722, file: !3, line: 574, type: !1741)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1742 = !DILocalVariable(name: "__pad", scope: !1743, file: !3, line: 598, type: !523)
!1743 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 598, column: 11)
!1744 = !DILocalVariable(name: "__pad", scope: !1745, file: !3, line: 604, type: !523)
!1745 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 604, column: 11)
!1746 = !DILabel(scope: !1722, name: "free_tbl", file: !3, line: 612)
!1747 = !DILocalVariable(name: "__pad", scope: !1748, file: !3, line: 613, type: !523)
!1748 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 613, column: 2)
!1749 = !DILabel(scope: !1722, name: "free_initrd", file: !3, line: 614)
!1750 = !DILabel(scope: !1722, name: "failed", file: !3, line: 616)
!1751 = !DILocation(line: 567, column: 50, scope: !1722)
!1752 = !DILocation(line: 568, column: 23, scope: !1722)
!1753 = !DILocation(line: 569, column: 23, scope: !1722)
!1754 = !DILocation(line: 570, column: 41, scope: !1722)
!1755 = !DILocation(line: 572, column: 2, scope: !1722)
!1756 = !DILocation(line: 572, column: 13, scope: !1722)
!1757 = !DILocation(line: 573, column: 2, scope: !1722)
!1758 = !DILocation(line: 573, column: 15, scope: !1722)
!1759 = !DILocation(line: 574, column: 2, scope: !1722)
!1760 = !DILocation(line: 574, column: 26, scope: !1722)
!1761 = !DILocation(line: 574, column: 35, scope: !1722)
!1762 = !DILocation(line: 576, column: 44, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 576, column: 6)
!1764 = !DILocation(line: 576, column: 6, scope: !1722)
!1765 = !DILocation(line: 577, column: 3, scope: !1763)
!1766 = !DILocation(line: 579, column: 45, scope: !1722)
!1767 = !DILocation(line: 579, column: 11, scope: !1722)
!1768 = !DILocation(line: 579, column: 9, scope: !1722)
!1769 = !DILocation(line: 580, column: 6, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 580, column: 6)
!1771 = !DILocation(line: 580, column: 13, scope: !1770)
!1772 = !DILocation(line: 580, column: 6, scope: !1722)
!1773 = !DILocation(line: 581, column: 3, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 580, column: 29)
!1775 = !DILocation(line: 582, column: 14, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 582, column: 7)
!1777 = !DILocation(line: 582, column: 19, scope: !1776)
!1778 = !DILocation(line: 582, column: 23, scope: !1776)
!1779 = !DILocation(line: 583, column: 39, scope: !1776)
!1780 = !DILocation(line: 583, column: 52, scope: !1776)
!1781 = !DILocation(line: 583, column: 7, scope: !1776)
!1782 = !DILocation(line: 584, column: 31, scope: !1776)
!1783 = !DILocation(line: 582, column: 7, scope: !1774)
!1784 = !DILocation(line: 585, column: 4, scope: !1776)
!1785 = !DILocation(line: 586, column: 2, scope: !1774)
!1786 = !DILocation(line: 586, column: 13, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 586, column: 13)
!1788 = !DILocation(line: 586, column: 20, scope: !1787)
!1789 = !DILocation(line: 586, column: 13, scope: !1770)
!1790 = !DILocation(line: 587, column: 36, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 586, column: 38)
!1792 = !DILocation(line: 587, column: 52, scope: !1791)
!1793 = !DILocation(line: 588, column: 8, scope: !1791)
!1794 = !DILocation(line: 587, column: 12, scope: !1791)
!1795 = !DILocation(line: 587, column: 10, scope: !1791)
!1796 = !DILocation(line: 590, column: 7, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 590, column: 7)
!1798 = !DILocation(line: 590, column: 14, scope: !1797)
!1799 = !DILocation(line: 590, column: 33, scope: !1797)
!1800 = !DILocation(line: 590, column: 36, scope: !1797)
!1801 = !DILocation(line: 590, column: 43, scope: !1797)
!1802 = !DILocation(line: 590, column: 7, scope: !1791)
!1803 = !DILocation(line: 591, column: 4, scope: !1797)
!1804 = !DILocation(line: 592, column: 7, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 592, column: 7)
!1806 = !DILocation(line: 592, column: 14, scope: !1805)
!1807 = !DILocation(line: 592, column: 7, scope: !1791)
!1808 = !DILocation(line: 593, column: 4, scope: !1805)
!1809 = !DILocation(line: 594, column: 2, scope: !1791)
!1810 = !DILocation(line: 595, column: 6, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 595, column: 6)
!1812 = !DILocation(line: 595, column: 13, scope: !1811)
!1813 = !DILocation(line: 595, column: 6, scope: !1722)
!1814 = !DILocation(line: 596, column: 3, scope: !1811)
!1815 = !DILocation(line: 598, column: 11, scope: !1722)
!1816 = !DILocation(line: 598, column: 11, scope: !1743)
!1817 = !DILocation(line: 598, column: 11, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1743, file: !3, line: 598, column: 11)
!1819 = !DILocation(line: 598, column: 11, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 598, column: 11)
!1821 = !DILocation(line: 598, column: 9, scope: !1722)
!1822 = !DILocation(line: 600, column: 6, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 600, column: 6)
!1824 = !DILocation(line: 600, column: 13, scope: !1823)
!1825 = !DILocation(line: 600, column: 6, scope: !1722)
!1826 = !DILocation(line: 601, column: 3, scope: !1823)
!1827 = !DILocation(line: 603, column: 3, scope: !1722)
!1828 = !DILocation(line: 603, column: 9, scope: !1722)
!1829 = !DILocation(line: 604, column: 11, scope: !1722)
!1830 = !DILocation(line: 604, column: 11, scope: !1745)
!1831 = !DILocation(line: 604, column: 11, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 604, column: 11)
!1833 = !DILocation(line: 604, column: 11, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 604, column: 11)
!1835 = !DILocation(line: 604, column: 9, scope: !1722)
!1836 = !DILocation(line: 605, column: 6, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 605, column: 6)
!1838 = !DILocation(line: 605, column: 13, scope: !1837)
!1839 = !DILocation(line: 605, column: 6, scope: !1722)
!1840 = !DILocation(line: 606, column: 3, scope: !1837)
!1841 = !DILocation(line: 608, column: 6, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 608, column: 6)
!1843 = !DILocation(line: 608, column: 6, scope: !1722)
!1844 = !DILocation(line: 609, column: 10, scope: !1842)
!1845 = !DILocation(line: 609, column: 4, scope: !1842)
!1846 = !DILocation(line: 609, column: 8, scope: !1842)
!1847 = !DILocation(line: 609, column: 3, scope: !1842)
!1848 = !DILocation(line: 610, column: 2, scope: !1722)
!1849 = !DILocation(line: 612, column: 1, scope: !1722)
!1850 = !DILocation(line: 613, column: 2, scope: !1722)
!1851 = !DILocation(line: 613, column: 2, scope: !1748)
!1852 = !DILocation(line: 613, column: 2, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 613, column: 2)
!1854 = !DILocation(line: 613, column: 2, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1853, file: !3, line: 613, column: 2)
!1856 = !DILocation(line: 614, column: 1, scope: !1722)
!1857 = !DILocation(line: 615, column: 18, scope: !1722)
!1858 = !DILocation(line: 615, column: 31, scope: !1722)
!1859 = !DILocation(line: 615, column: 2, scope: !1722)
!1860 = !DILocation(line: 616, column: 1, scope: !1722)
!1861 = !DILocation(line: 617, column: 2, scope: !1722)
!1862 = !DILocation(line: 618, column: 9, scope: !1722)
!1863 = !DILocation(line: 618, column: 2, scope: !1722)
!1864 = !DILocation(line: 619, column: 1, scope: !1722)
!1865 = distinct !DISubprogram(name: "efi_load_initrd_dev_path", scope: !3, file: !3, line: 508, type: !1866, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1868)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!54, !1741, !55}
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1891, !1892, !1893, !1895, !1897, !1899, !1901, !1903}
!1869 = !DILocalVariable(name: "initrd", arg: 1, scope: !1865, file: !3, line: 508, type: !1741)
!1870 = !DILocalVariable(name: "max", arg: 2, scope: !1865, file: !3, line: 509, type: !55)
!1871 = !DILocalVariable(name: "lf2_proto_guid", scope: !1865, file: !3, line: 511, type: !112)
!1872 = !DILocalVariable(name: "dp", scope: !1865, file: !3, line: 512, type: !135)
!1873 = !DILocalVariable(name: "lf2", scope: !1865, file: !3, line: 513, type: !1874)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_load_file2_protocol_t", file: !6, line: 893, baseType: !1876)
!1876 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_load_file_protocol", file: !6, line: 895, size: 64, elements: !1877)
!1877 = !{!1878, !1887}
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1876, file: !6, line: 896, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1876, file: !6, line: 896, size: 64, elements: !1880)
!1880 = !{!1881}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "load_file", scope: !1879, file: !6, line: 897, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1884)
!1884 = !{!54, !1885, !135, !154, !67, !48}
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_load_file_protocol_t", file: !6, line: 892, baseType: !1876)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !1876, file: !6, line: 903, baseType: !1888, size: 32)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1876, file: !6, line: 901, size: 32, elements: !1889)
!1889 = !{!1890}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "load_file", scope: !1888, file: !6, line: 902, baseType: !42, size: 32)
!1891 = !DILocalVariable(name: "handle", scope: !1865, file: !3, line: 514, type: !110)
!1892 = !DILocalVariable(name: "status", scope: !1865, file: !3, line: 515, type: !54)
!1893 = !DILocalVariable(name: "__pad", scope: !1894, file: !3, line: 518, type: !523)
!1894 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 518, column: 11)
!1895 = !DILocalVariable(name: "__pad", scope: !1896, file: !3, line: 522, type: !523)
!1896 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 522, column: 11)
!1897 = !DILocalVariable(name: "__inst", scope: !1898, file: !3, line: 528, type: !1874)
!1898 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 528, column: 11)
!1899 = !DILocalVariable(name: "__pad", scope: !1900, file: !3, line: 528, type: !523)
!1900 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 528, column: 11)
!1901 = !DILocalVariable(name: "__inst", scope: !1902, file: !3, line: 536, type: !1874)
!1902 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 536, column: 11)
!1903 = !DILocalVariable(name: "__pad", scope: !1904, file: !3, line: 536, type: !523)
!1904 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 536, column: 11)
!1905 = !DILocation(line: 508, column: 64, scope: !1865)
!1906 = !DILocation(line: 509, column: 25, scope: !1865)
!1907 = !DILocation(line: 511, column: 2, scope: !1865)
!1908 = !DILocation(line: 511, column: 13, scope: !1865)
!1909 = !DILocation(line: 512, column: 2, scope: !1865)
!1910 = !DILocation(line: 512, column: 30, scope: !1865)
!1911 = !DILocation(line: 513, column: 2, scope: !1865)
!1912 = !DILocation(line: 513, column: 29, scope: !1865)
!1913 = !DILocation(line: 514, column: 2, scope: !1865)
!1914 = !DILocation(line: 514, column: 15, scope: !1865)
!1915 = !DILocation(line: 515, column: 2, scope: !1865)
!1916 = !DILocation(line: 515, column: 15, scope: !1865)
!1917 = !DILocation(line: 517, column: 5, scope: !1865)
!1918 = !DILocation(line: 518, column: 11, scope: !1865)
!1919 = !DILocation(line: 518, column: 11, scope: !1894)
!1920 = !DILocation(line: 518, column: 11, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 518, column: 11)
!1922 = !DILocation(line: 518, column: 11, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 518, column: 11)
!1924 = !DILocation(line: 518, column: 9, scope: !1865)
!1925 = !DILocation(line: 519, column: 6, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 519, column: 6)
!1927 = !DILocation(line: 519, column: 13, scope: !1926)
!1928 = !DILocation(line: 519, column: 6, scope: !1865)
!1929 = !DILocation(line: 520, column: 10, scope: !1926)
!1930 = !DILocation(line: 520, column: 3, scope: !1926)
!1931 = !DILocation(line: 522, column: 11, scope: !1865)
!1932 = !DILocation(line: 522, column: 11, scope: !1896)
!1933 = !DILocation(line: 522, column: 11, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 522, column: 11)
!1935 = !DILocation(line: 522, column: 11, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 522, column: 11)
!1937 = !DILocation(line: 522, column: 9, scope: !1865)
!1938 = !DILocation(line: 524, column: 6, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 524, column: 6)
!1940 = !DILocation(line: 524, column: 13, scope: !1939)
!1941 = !DILocation(line: 524, column: 6, scope: !1865)
!1942 = !DILocation(line: 525, column: 10, scope: !1939)
!1943 = !DILocation(line: 525, column: 3, scope: !1939)
!1944 = !DILocation(line: 527, column: 2, scope: !1865)
!1945 = !DILocation(line: 527, column: 10, scope: !1865)
!1946 = !DILocation(line: 527, column: 15, scope: !1865)
!1947 = !DILocation(line: 528, column: 11, scope: !1898)
!1948 = !DILocation(line: 528, column: 11, scope: !1900)
!1949 = !DILocation(line: 528, column: 11, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 528, column: 11)
!1951 = !DILocation(line: 528, column: 11, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 528, column: 11)
!1953 = !DILocation(line: 528, column: 11, scope: !1865)
!1954 = !DILocation(line: 528, column: 9, scope: !1865)
!1955 = !DILocation(line: 529, column: 6, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 529, column: 6)
!1957 = !DILocation(line: 529, column: 13, scope: !1956)
!1958 = !DILocation(line: 529, column: 6, scope: !1865)
!1959 = !DILocation(line: 530, column: 3, scope: !1956)
!1960 = !DILocation(line: 532, column: 30, scope: !1865)
!1961 = !DILocation(line: 532, column: 38, scope: !1865)
!1962 = !DILocation(line: 532, column: 45, scope: !1865)
!1963 = !DILocation(line: 532, column: 53, scope: !1865)
!1964 = !DILocation(line: 532, column: 59, scope: !1865)
!1965 = !DILocation(line: 532, column: 11, scope: !1865)
!1966 = !DILocation(line: 532, column: 9, scope: !1865)
!1967 = !DILocation(line: 533, column: 6, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 533, column: 6)
!1969 = !DILocation(line: 533, column: 13, scope: !1968)
!1970 = !DILocation(line: 533, column: 6, scope: !1865)
!1971 = !DILocation(line: 534, column: 10, scope: !1968)
!1972 = !DILocation(line: 534, column: 3, scope: !1968)
!1973 = !DILocation(line: 536, column: 11, scope: !1902)
!1974 = !DILocation(line: 536, column: 11, scope: !1904)
!1975 = !DILocation(line: 536, column: 11, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 536, column: 11)
!1977 = !DILocation(line: 536, column: 11, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 536, column: 11)
!1979 = !DILocation(line: 536, column: 11, scope: !1865)
!1980 = !DILocation(line: 536, column: 9, scope: !1865)
!1981 = !DILocation(line: 538, column: 6, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 538, column: 6)
!1983 = !DILocation(line: 538, column: 13, scope: !1982)
!1984 = !DILocation(line: 538, column: 6, scope: !1865)
!1985 = !DILocation(line: 539, column: 12, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 538, column: 29)
!1987 = !DILocation(line: 539, column: 20, scope: !1986)
!1988 = !DILocation(line: 539, column: 26, scope: !1986)
!1989 = !DILocation(line: 539, column: 34, scope: !1986)
!1990 = !DILocation(line: 539, column: 3, scope: !1986)
!1991 = !DILocation(line: 540, column: 3, scope: !1986)
!1992 = !DILocation(line: 542, column: 2, scope: !1865)
!1993 = !DILocation(line: 543, column: 1, scope: !1865)
!1994 = distinct !DISubprogram(name: "efi_load_initrd_cmdline", scope: !3, file: !3, line: 546, type: !1995, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1997)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!54, !963, !1741, !55, !55}
!1997 = !{!1998, !1999, !2000, !2001}
!1998 = !DILocalVariable(name: "image", arg: 1, scope: !1994, file: !3, line: 546, type: !963)
!1999 = !DILocalVariable(name: "initrd", arg: 2, scope: !1994, file: !3, line: 547, type: !1741)
!2000 = !DILocalVariable(name: "soft_limit", arg: 3, scope: !1994, file: !3, line: 548, type: !55)
!2001 = !DILocalVariable(name: "hard_limit", arg: 4, scope: !1994, file: !3, line: 549, type: !55)
!2002 = !DILocation(line: 546, column: 58, scope: !1994)
!2003 = !DILocation(line: 547, column: 35, scope: !1994)
!2004 = !DILocation(line: 548, column: 24, scope: !1994)
!2005 = !DILocation(line: 549, column: 24, scope: !1994)
!2006 = !DILocation(line: 551, column: 6, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 551, column: 6)
!2008 = !DILocation(line: 551, column: 12, scope: !2007)
!2009 = !DILocation(line: 551, column: 6, scope: !1994)
!2010 = !DILocation(line: 552, column: 3, scope: !2007)
!2011 = !DILocation(line: 554, column: 30, scope: !1994)
!2012 = !DILocation(line: 555, column: 9, scope: !1994)
!2013 = !DILocation(line: 555, column: 21, scope: !1994)
!2014 = !DILocation(line: 556, column: 10, scope: !1994)
!2015 = !DILocation(line: 556, column: 18, scope: !1994)
!2016 = !DILocation(line: 556, column: 25, scope: !1994)
!2017 = !DILocation(line: 556, column: 33, scope: !1994)
!2018 = !DILocation(line: 554, column: 9, scope: !1994)
!2019 = !DILocation(line: 554, column: 2, scope: !1994)
!2020 = !DILocation(line: 557, column: 1, scope: !1994)
!2021 = !DISubprogram(name: "efi_free", scope: !6, file: !6, line: 974, type: !2022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{null, !55, !55}
!2024 = distinct !DISubprogram(name: "efi_wait_for_key", scope: !3, file: !3, line: 630, type: !2025, scopeLine: 631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2027)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!54, !55, !279}
!2027 = !{!2028, !2029, !2030, !2032, !2033, !2034, !2035, !2036, !2038, !2040, !2042, !2047, !2049}
!2028 = !DILocalVariable(name: "usec", arg: 1, scope: !2024, file: !3, line: 630, type: !55)
!2029 = !DILocalVariable(name: "key", arg: 2, scope: !2024, file: !3, line: 630, type: !279)
!2030 = !DILocalVariable(name: "events", scope: !2024, file: !3, line: 632, type: !2031)
!2031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !475)
!2032 = !DILocalVariable(name: "timer", scope: !2024, file: !3, line: 632, type: !86)
!2033 = !DILocalVariable(name: "index", scope: !2024, file: !3, line: 633, type: !55)
!2034 = !DILocalVariable(name: "con_in", scope: !2024, file: !3, line: 634, type: !267)
!2035 = !DILocalVariable(name: "status", scope: !2024, file: !3, line: 635, type: !54)
!2036 = !DILocalVariable(name: "__pad", scope: !2037, file: !3, line: 642, type: !523)
!2037 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 642, column: 11)
!2038 = !DILocalVariable(name: "__pad", scope: !2039, file: !3, line: 646, type: !523)
!2039 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 646, column: 11)
!2040 = !DILocalVariable(name: "__pad", scope: !2041, file: !3, line: 652, type: !523)
!2041 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 652, column: 11)
!2042 = !DILocalVariable(name: "__inst", scope: !2043, file: !3, line: 655, type: !267)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 655, column: 13)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 654, column: 7)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 653, column: 29)
!2046 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 653, column: 6)
!2047 = !DILocalVariable(name: "__pad", scope: !2048, file: !3, line: 655, type: !523)
!2048 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 655, column: 13)
!2049 = !DILocalVariable(name: "__pad", scope: !2050, file: !3, line: 660, type: !523)
!2050 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 660, column: 2)
!2051 = !DILocation(line: 630, column: 45, scope: !2024)
!2052 = !DILocation(line: 630, column: 68, scope: !2024)
!2053 = !DILocation(line: 632, column: 2, scope: !2024)
!2054 = !DILocation(line: 632, column: 14, scope: !2024)
!2055 = !DILocation(line: 632, column: 25, scope: !2024)
!2056 = !DILocation(line: 633, column: 2, scope: !2024)
!2057 = !DILocation(line: 633, column: 16, scope: !2024)
!2058 = !DILocation(line: 634, column: 2, scope: !2024)
!2059 = !DILocation(line: 634, column: 36, scope: !2024)
!2060 = !DILocation(line: 635, column: 2, scope: !2024)
!2061 = !DILocation(line: 635, column: 15, scope: !2024)
!2062 = !DILocation(line: 637, column: 11, scope: !2024)
!2063 = !DILocation(line: 637, column: 9, scope: !2024)
!2064 = !DILocation(line: 638, column: 7, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 638, column: 6)
!2066 = !DILocation(line: 638, column: 6, scope: !2024)
!2067 = !DILocation(line: 639, column: 3, scope: !2065)
!2068 = !DILocation(line: 640, column: 19, scope: !2024)
!2069 = !DILocation(line: 640, column: 30, scope: !2024)
!2070 = !DILocation(line: 640, column: 2, scope: !2024)
!2071 = !DILocation(line: 642, column: 11, scope: !2024)
!2072 = !DILocation(line: 642, column: 11, scope: !2037)
!2073 = !DILocation(line: 642, column: 11, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 642, column: 11)
!2075 = !DILocation(line: 642, column: 11, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 642, column: 11)
!2077 = !DILocation(line: 642, column: 9, scope: !2024)
!2078 = !DILocation(line: 643, column: 6, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 643, column: 6)
!2080 = !DILocation(line: 643, column: 13, scope: !2079)
!2081 = !DILocation(line: 643, column: 6, scope: !2024)
!2082 = !DILocation(line: 644, column: 10, scope: !2079)
!2083 = !DILocation(line: 644, column: 3, scope: !2079)
!2084 = !DILocation(line: 646, column: 11, scope: !2024)
!2085 = !DILocation(line: 646, column: 11, scope: !2039)
!2086 = !DILocation(line: 646, column: 11, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 646, column: 11)
!2088 = !DILocation(line: 646, column: 11, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 646, column: 11)
!2090 = !DILocation(line: 646, column: 9, scope: !2024)
!2091 = !DILocation(line: 648, column: 6, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 648, column: 6)
!2093 = !DILocation(line: 648, column: 13, scope: !2092)
!2094 = !DILocation(line: 648, column: 6, scope: !2024)
!2095 = !DILocation(line: 649, column: 10, scope: !2092)
!2096 = !DILocation(line: 649, column: 3, scope: !2092)
!2097 = !DILocation(line: 650, column: 19, scope: !2024)
!2098 = !DILocation(line: 650, column: 30, scope: !2024)
!2099 = !DILocation(line: 650, column: 2, scope: !2024)
!2100 = !DILocation(line: 652, column: 11, scope: !2024)
!2101 = !DILocation(line: 652, column: 11, scope: !2041)
!2102 = !DILocation(line: 652, column: 11, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 652, column: 11)
!2104 = !DILocation(line: 652, column: 11, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2103, file: !3, line: 652, column: 11)
!2106 = !DILocation(line: 652, column: 9, scope: !2024)
!2107 = !DILocation(line: 653, column: 6, scope: !2046)
!2108 = !DILocation(line: 653, column: 13, scope: !2046)
!2109 = !DILocation(line: 653, column: 6, scope: !2024)
!2110 = !DILocation(line: 654, column: 7, scope: !2044)
!2111 = !DILocation(line: 654, column: 13, scope: !2044)
!2112 = !DILocation(line: 654, column: 7, scope: !2045)
!2113 = !DILocation(line: 655, column: 13, scope: !2043)
!2114 = !DILocation(line: 655, column: 13, scope: !2048)
!2115 = !DILocation(line: 655, column: 13, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 655, column: 13)
!2117 = !DILocation(line: 655, column: 13, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 655, column: 13)
!2119 = !DILocation(line: 655, column: 13, scope: !2044)
!2120 = !DILocation(line: 655, column: 11, scope: !2044)
!2121 = !DILocation(line: 655, column: 4, scope: !2044)
!2122 = !DILocation(line: 657, column: 11, scope: !2044)
!2123 = !DILocation(line: 658, column: 2, scope: !2045)
!2124 = !DILocation(line: 660, column: 2, scope: !2024)
!2125 = !DILocation(line: 660, column: 2, scope: !2050)
!2126 = !DILocation(line: 660, column: 2, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 660, column: 2)
!2128 = !DILocation(line: 660, column: 2, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 660, column: 2)
!2130 = !DILocation(line: 662, column: 9, scope: !2024)
!2131 = !DILocation(line: 662, column: 2, scope: !2024)
!2132 = !DILocation(line: 663, column: 1, scope: !2024)
!2133 = distinct !DISubprogram(name: "efi_set_event_at", scope: !6, file: !6, line: 230, type: !2134, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2136)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !87, !514, !86}
!2136 = !{!2137, !2138, !2139}
!2137 = !DILocalVariable(name: "events", arg: 1, scope: !2133, file: !6, line: 230, type: !87)
!2138 = !DILocalVariable(name: "idx", arg: 2, scope: !2133, file: !6, line: 230, type: !514)
!2139 = !DILocalVariable(name: "event", arg: 3, scope: !2133, file: !6, line: 230, type: !86)
!2140 = !DILocation(line: 230, column: 36, scope: !2133)
!2141 = !DILocation(line: 230, column: 51, scope: !2133)
!2142 = !DILocation(line: 230, column: 68, scope: !2133)
!2143 = !DILocation(line: 232, column: 6, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2133, file: !6, line: 232, column: 6)
!2145 = !DILocation(line: 232, column: 6, scope: !2133)
!2146 = !DILocation(line: 233, column: 17, scope: !2144)
!2147 = !DILocation(line: 233, column: 3, scope: !2144)
!2148 = !DILocation(line: 233, column: 10, scope: !2144)
!2149 = !DILocation(line: 233, column: 15, scope: !2144)
!2150 = !DILocation(line: 235, column: 46, scope: !2144)
!2151 = !DILocation(line: 235, column: 31, scope: !2144)
!2152 = !DILocation(line: 235, column: 26, scope: !2144)
!2153 = !DILocation(line: 235, column: 11, scope: !2144)
!2154 = !DILocation(line: 235, column: 19, scope: !2144)
!2155 = !DILocation(line: 235, column: 3, scope: !2144)
!2156 = !DILocation(line: 235, column: 24, scope: !2144)
!2157 = !DILocation(line: 236, column: 1, scope: !2133)
!2158 = distinct !DISubprogram(name: "efi_remap_image", scope: !3, file: !3, line: 679, type: !2159, scopeLine: 681, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2161)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{null, !55, !7, !55}
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2189, !2190, !2191}
!2162 = !DILocalVariable(name: "image_base", arg: 1, scope: !2158, file: !3, line: 679, type: !55)
!2163 = !DILocalVariable(name: "alloc_size", arg: 2, scope: !2158, file: !3, line: 679, type: !7)
!2164 = !DILocalVariable(name: "code_size", arg: 3, scope: !2158, file: !3, line: 680, type: !55)
!2165 = !DILocalVariable(name: "guid", scope: !2158, file: !3, line: 682, type: !112)
!2166 = !DILocalVariable(name: "memattr", scope: !2158, file: !3, line: 683, type: !2167)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_attribute_protocol_t", file: !6, line: 446, baseType: !2169)
!2169 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_memory_attribute_protocol", file: !6, line: 448, size: 192, elements: !2170)
!2170 = !{!2171, !2183}
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !6, line: 449, baseType: !2172, size: 192)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2169, file: !6, line: 449, size: 192, elements: !2173)
!2173 = !{!2174, !2178, !2182}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_attributes", scope: !2172, file: !6, line: 450, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !2177)
!2177 = !{!54, !2167, !58, !36, !1112}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "set_memory_attributes", scope: !2172, file: !6, line: 453, baseType: !2179, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !2181)
!2181 = !{!54, !2167, !58, !36, !36}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "clear_memory_attributes", scope: !2172, file: !6, line: 456, baseType: !2179, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !2169, file: !6, line: 463, baseType: !2184, size: 96)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2169, file: !6, line: 459, size: 96, elements: !2185)
!2185 = !{!2186, !2187, !2188}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_attributes", scope: !2184, file: !6, line: 460, baseType: !42, size: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "set_memory_attributes", scope: !2184, file: !6, line: 461, baseType: !42, size: 32, offset: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "clear_memory_attributes", scope: !2184, file: !6, line: 462, baseType: !42, size: 32, offset: 64)
!2189 = !DILocalVariable(name: "status", scope: !2158, file: !3, line: 684, type: !54)
!2190 = !DILocalVariable(name: "attr", scope: !2158, file: !3, line: 685, type: !36)
!2191 = !DILocalVariable(name: "__pad", scope: !2192, file: !3, line: 692, type: !523)
!2192 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 692, column: 11)
!2193 = !DILocation(line: 679, column: 36, scope: !2158)
!2194 = !DILocation(line: 679, column: 57, scope: !2158)
!2195 = !DILocation(line: 680, column: 22, scope: !2158)
!2196 = !DILocation(line: 682, column: 2, scope: !2158)
!2197 = !DILocation(line: 682, column: 13, scope: !2158)
!2198 = !DILocation(line: 683, column: 2, scope: !2158)
!2199 = !DILocation(line: 683, column: 35, scope: !2158)
!2200 = !DILocation(line: 684, column: 2, scope: !2158)
!2201 = !DILocation(line: 684, column: 15, scope: !2158)
!2202 = !DILocation(line: 685, column: 2, scope: !2158)
!2203 = !DILocation(line: 685, column: 6, scope: !2158)
!2204 = !DILocation(line: 692, column: 11, scope: !2158)
!2205 = !DILocation(line: 692, column: 11, scope: !2192)
!2206 = !DILocation(line: 692, column: 11, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 692, column: 11)
!2208 = !DILocation(line: 692, column: 11, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 692, column: 11)
!2210 = !DILocation(line: 692, column: 9, scope: !2158)
!2211 = !DILocation(line: 693, column: 6, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 693, column: 6)
!2213 = !DILocation(line: 693, column: 13, scope: !2212)
!2214 = !DILocation(line: 693, column: 6, scope: !2158)
!2215 = !DILocation(line: 694, column: 3, scope: !2212)
!2216 = !DILocation(line: 697, column: 11, scope: !2158)
!2217 = !DILocation(line: 697, column: 20, scope: !2158)
!2218 = !DILocation(line: 697, column: 42, scope: !2158)
!2219 = !DILocation(line: 697, column: 51, scope: !2158)
!2220 = !DILocation(line: 698, column: 7, scope: !2158)
!2221 = !DILocation(line: 697, column: 9, scope: !2158)
!2222 = !DILocation(line: 699, column: 6, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 699, column: 6)
!2224 = !DILocation(line: 699, column: 13, scope: !2223)
!2225 = !DILocation(line: 699, column: 6, scope: !2158)
!2226 = !DILocation(line: 700, column: 3, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 699, column: 29)
!2228 = !DILocation(line: 702, column: 3, scope: !2227)
!2229 = !DILocation(line: 706, column: 11, scope: !2158)
!2230 = !DILocation(line: 706, column: 20, scope: !2158)
!2231 = !DILocation(line: 706, column: 42, scope: !2158)
!2232 = !DILocation(line: 706, column: 51, scope: !2158)
!2233 = !DILocation(line: 706, column: 63, scope: !2158)
!2234 = !DILocation(line: 706, column: 9, scope: !2158)
!2235 = !DILocation(line: 708, column: 6, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 708, column: 6)
!2237 = !DILocation(line: 708, column: 13, scope: !2236)
!2238 = !DILocation(line: 708, column: 6, scope: !2158)
!2239 = !DILocation(line: 709, column: 3, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 708, column: 29)
!2241 = !DILocation(line: 710, column: 3, scope: !2240)
!2242 = !DILocation(line: 716, column: 6, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 716, column: 6)
!2244 = !DILocation(line: 716, column: 11, scope: !2243)
!2245 = !DILocation(line: 716, column: 6, scope: !2158)
!2246 = !DILocation(line: 717, column: 12, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 716, column: 28)
!2248 = !DILocation(line: 717, column: 21, scope: !2247)
!2249 = !DILocation(line: 717, column: 45, scope: !2247)
!2250 = !DILocation(line: 717, column: 54, scope: !2247)
!2251 = !DILocation(line: 718, column: 10, scope: !2247)
!2252 = !DILocation(line: 717, column: 10, scope: !2247)
!2253 = !DILocation(line: 720, column: 7, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 720, column: 7)
!2255 = !DILocation(line: 720, column: 14, scope: !2254)
!2256 = !DILocation(line: 720, column: 7, scope: !2247)
!2257 = !DILocation(line: 721, column: 4, scope: !2254)
!2258 = !DILocation(line: 722, column: 2, scope: !2247)
!2259 = !DILocation(line: 723, column: 12, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 722, column: 9)
!2261 = !DILocation(line: 723, column: 21, scope: !2260)
!2262 = !DILocation(line: 723, column: 43, scope: !2260)
!2263 = !DILocation(line: 724, column: 8, scope: !2260)
!2264 = !DILocation(line: 724, column: 21, scope: !2260)
!2265 = !DILocation(line: 724, column: 19, scope: !2260)
!2266 = !DILocation(line: 725, column: 8, scope: !2260)
!2267 = !DILocation(line: 725, column: 21, scope: !2260)
!2268 = !DILocation(line: 725, column: 19, scope: !2260)
!2269 = !DILocation(line: 723, column: 10, scope: !2260)
!2270 = !DILocation(line: 727, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 727, column: 7)
!2272 = !DILocation(line: 727, column: 14, scope: !2271)
!2273 = !DILocation(line: 727, column: 7, scope: !2260)
!2274 = !DILocation(line: 728, column: 4, scope: !2271)
!2275 = !DILocation(line: 730, column: 1, scope: !2158)
!2276 = distinct !DISubprogram(name: "efi_is_64bit", scope: !699, file: !699, line: 198, type: !499, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2277 = !DILocation(line: 202, column: 9, scope: !2276)
!2278 = !DILocation(line: 202, column: 2, scope: !2276)
!2279 = distinct !DISubprogram(name: "ror64", scope: !2280, file: !2280, line: 115, type: !2281, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2283)
!2280 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!38, !38, !7}
!2283 = !{!2284, !2285}
!2284 = !DILocalVariable(name: "word", arg: 1, scope: !2279, file: !2280, line: 115, type: !38)
!2285 = !DILocalVariable(name: "shift", arg: 2, scope: !2279, file: !2280, line: 115, type: !7)
!2286 = !DILocation(line: 115, column: 33, scope: !2279)
!2287 = !DILocation(line: 115, column: 52, scope: !2279)
!2288 = !DILocation(line: 117, column: 10, scope: !2279)
!2289 = !DILocation(line: 117, column: 19, scope: !2279)
!2290 = !DILocation(line: 117, column: 25, scope: !2279)
!2291 = !DILocation(line: 117, column: 15, scope: !2279)
!2292 = !DILocation(line: 117, column: 35, scope: !2279)
!2293 = !DILocation(line: 117, column: 46, scope: !2279)
!2294 = !DILocation(line: 117, column: 45, scope: !2279)
!2295 = !DILocation(line: 117, column: 53, scope: !2279)
!2296 = !DILocation(line: 117, column: 40, scope: !2279)
!2297 = !DILocation(line: 117, column: 32, scope: !2279)
!2298 = !DILocation(line: 117, column: 2, scope: !2279)
!2299 = distinct !DISubprogram(name: "rol32", scope: !2280, file: !2280, line: 125, type: !2300, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!43, !43, !7}
!2302 = !{!2303, !2304}
!2303 = !DILocalVariable(name: "word", arg: 1, scope: !2299, file: !2280, line: 125, type: !43)
!2304 = !DILocalVariable(name: "shift", arg: 2, scope: !2299, file: !2280, line: 125, type: !7)
!2305 = !DILocation(line: 125, column: 33, scope: !2299)
!2306 = !DILocation(line: 125, column: 52, scope: !2299)
!2307 = !DILocation(line: 127, column: 10, scope: !2299)
!2308 = !DILocation(line: 127, column: 19, scope: !2299)
!2309 = !DILocation(line: 127, column: 25, scope: !2299)
!2310 = !DILocation(line: 127, column: 15, scope: !2299)
!2311 = !DILocation(line: 127, column: 35, scope: !2299)
!2312 = !DILocation(line: 127, column: 46, scope: !2299)
!2313 = !DILocation(line: 127, column: 45, scope: !2299)
!2314 = !DILocation(line: 127, column: 53, scope: !2299)
!2315 = !DILocation(line: 127, column: 40, scope: !2299)
!2316 = !DILocation(line: 127, column: 32, scope: !2299)
!2317 = !DILocation(line: 127, column: 2, scope: !2299)
!2318 = !DISubprogram(name: "strncmp", scope: !695, file: !695, line: 91, type: !2319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!56, !509, !509, !515}
!2321 = !DISubprogram(name: "memcmp", scope: !695, file: !695, line: 196, type: !2322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!56, !209, !209, !515}
!2324 = !DISubprogram(name: "efi_allocate_pages", scope: !6, file: !6, line: 983, type: !2325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!54, !55, !67, !55}
!2327 = !DISubprogram(name: "handle_cmdline_files", scope: !6, file: !6, line: 1007, type: !2328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!54, !963, !383, !56, !55, !55, !67, !67}
