; ModuleID = 'drivers/acpi/tables.c'
source_filename = "drivers/acpi/tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio_data = type { ptr, i64, [18 x i8] }
%struct.acpi_table_desc = type { i64, ptr, i32, %union.acpi_name_union, i16, i8, i16 }
%union.acpi_name_union = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.acpi_subtable_header = type { i8, i8 }
%struct.acpi_madt_interrupt_override = type <{ %struct.acpi_subtable_header, i8, i8, i32, i16 }>
%struct.acpi_madt_nmi_source = type { %struct.acpi_subtable_header, i16, i32 }
%struct.acpi_madt_local_apic_nmi = type <{ %struct.acpi_subtable_header, i8, i16, i8 }>
%struct.acpi_madt_local_x2apic_nmi = type { %struct.acpi_subtable_header, i16, i32, i8, [3 x i8] }
%struct.acpi_madt_local_apic_override = type <{ %struct.acpi_subtable_header, i16, i64 }>
%struct.acpi_madt_interrupt_source = type { %struct.acpi_subtable_header, i16, i8, i8, i8, i8, i32, i32 }
%struct.acpi_subtable_entry = type { ptr, i32 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_subtable_proc = type { i32, ptr, ptr, ptr, i32 }
%struct.acpi_hmat_structure = type { i16, i16, i32 }
%struct.acpi_cedt_header = type { i8, i8, i16 }
%struct.acpi_prmt_module_header = type { i16, i16 }

@.str = private unnamed_addr constant [61 x i8] c"\016ACPI: INT_SRC_OVR (bus %d bus_irq %d global_irq %d %s %s)\0A\00", align 1, !dbg !0
@mps_inti_flags_polarity = internal global [4 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], align 16, !dbg !7
@mps_inti_flags_trigger = internal global [4 x ptr] [ptr @.str.20, ptr @.str.24, ptr @.str.22, ptr @.str.25], align 16, !dbg !481
@.str.1 = private unnamed_addr constant [53 x i8] c"\016ACPI: INT_SRC_OVR unexpected reserved flags: 0x%x\0A\00", align 1, !dbg !299
@.str.2 = private unnamed_addr constant [39 x i8] c"\016ACPI: NMI_SRC (%s %s global_irq %d)\0A\00", align 1, !dbg !304
@.str.3 = private unnamed_addr constant [54 x i8] c"\016ACPI: LAPIC_NMI (acpi_id[0x%02x] %s %s lint[0x%x])\0A\00", align 1, !dbg !309
@.str.4 = private unnamed_addr constant [51 x i8] c"\016ACPI: X2APIC_NMI (uid[0x%02x] %s %s lint[0x%x])\0A\00", align 1, !dbg !314
@.str.5 = private unnamed_addr constant [42 x i8] c"\016ACPI: LAPIC_ADDR_OVR (address[0x%llx])\0A\00", align 1, !dbg !319
@.str.6 = private unnamed_addr constant [99 x i8] c"\016ACPI: PLAT_INT_SRC (%s %s type[0x%x] id[0x%04x] eid[0x%x] iosapic_vector[0x%x] global_irq[0x%x]\0A\00", align 1, !dbg !324
@.str.7 = private unnamed_addr constant [52 x i8] c"\014ACPI: Found unsupported MADT entry (type = 0x%x)\0A\00", align 1, !dbg !329
@acpi_disabled = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"APIC\00", align 1, !dbg !334
@acpi_apic_instance = internal global i32 0, section ".init.data", align 4, !dbg !445
@.str.9 = private unnamed_addr constant [5 x i8] c"CEDT\00", align 1, !dbg !339
@__const.acpi_table_upgrade.cpio_path = private unnamed_addr constant [32 x i8] c"kernel/firmware/acpi/\00\00\00\00\00\00\00\00\00\00\00", align 16
@initrd_start = external dso_local global i64, align 8
@initrd_end = external dso_local global i64, align 8
@.str.10 = private unnamed_addr constant [62 x i8] c"\013ACPI: ACPI OVERRIDE: Table smaller than ACPI header [%s%s]\0A\00", align 1, !dbg !341
@table_sigs = internal constant [45 x [4 x i8]] [[4 x i8] c"BERT", [4 x i8] c"BGRT", [4 x i8] c"CPEP", [4 x i8] c"ECDT", [4 x i8] c"EINJ", [4 x i8] c"ERST", [4 x i8] c"HEST", [4 x i8] c"APIC", [4 x i8] c"MSCT", [4 x i8] c"SBST", [4 x i8] c"SLIT", [4 x i8] c"SRAT", [4 x i8] c"ASF!", [4 x i8] c"BOOT", [4 x i8] c"DBGP", [4 x i8] c"DMAR", [4 x i8] c"HPET", [4 x i8] c"IBFT", [4 x i8] c"IVRS", [4 x i8] c"MCFG", [4 x i8] c"MCHI", [4 x i8] c"SLIC", [4 x i8] c"SPCR", [4 x i8] c"SPMI", [4 x i8] c"TCPA", [4 x i8] c"UEFI", [4 x i8] c"WAET", [4 x i8] c"WDAT", [4 x i8] c"WDDT", [4 x i8] c"WDRT", [4 x i8] c"DSDT", [4 x i8] c"FACP", [4 x i8] c"PSDT", [4 x i8] c"RSDT", [4 x i8] c"XSDT", [4 x i8] c"SSDT", [4 x i8] c"IORT", [4 x i8] c"NFIT", [4 x i8] c"HMAT", [4 x i8] c"PPTT", [4 x i8] c"NHLT", [4 x i8] c"AEST", [4 x i8] c"CEDT", [4 x i8] c"AGDI", [4 x i8] c"NBFT"], section ".init.rodata", align 16, !dbg !495
@.str.11 = private unnamed_addr constant [49 x i8] c"\013ACPI: ACPI OVERRIDE: Unknown signature [%s%s]\0A\00", align 1, !dbg !346
@.str.12 = private unnamed_addr constant [71 x i8] c"\013ACPI: ACPI OVERRIDE: File length does not match table length [%s%s]\0A\00", align 1, !dbg !351
@.str.13 = private unnamed_addr constant [50 x i8] c"\013ACPI: ACPI OVERRIDE: Bad table checksum [%s%s]\0A\00", align 1, !dbg !356
@.str.14 = private unnamed_addr constant [55 x i8] c"\016ACPI: %4.4s ACPI table found in initrd [%s%s][0x%x]\0A\00", align 1, !dbg !361
@all_tables_size = internal global i32 0, align 4, !dbg !449
@acpi_initrd_files = internal global [64 x %struct.cpio_data] zeroinitializer, section ".init.data", align 16, !dbg !451
@.str.15 = private unnamed_addr constant [56 x i8] c"\015ACPI: kernel is locked down, ignoring table override\0A\00", align 1, !dbg !366
@max_low_pfn_mapped = external dso_local global i64, align 8
@acpi_tables_addr = internal global i64 0, align 8, !dbg !447
@.str.16 = private unnamed_addr constant [22 x i8] c"drivers/acpi/tables.c\00", align 1, !dbg !371
@acpi_verify_table_checksum = internal global i8 0, section ".init.data", align 1, !dbg !510
@.str.17 = private unnamed_addr constant [51 x i8] c"\016ACPI: Early table checksum verification enabled\0A\00", align 1, !dbg !376
@acpi_gbl_enable_table_validation = external dso_local global i8, align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"\016ACPI: Early table checksum verification disabled\0A\00", align 1, !dbg !378
@initial_tables = internal global [128 x %struct.acpi_table_desc] zeroinitializer, section ".init.data", align 16, !dbg !403
@.str.19 = private unnamed_addr constant [59 x i8] c"\016ACPI: Reserving %4s table memory at [mem 0x%llx-0x%llx]\0A\00", align 1, !dbg !380
@__setup_str_acpi_parse_apic_instance = internal constant [19 x i8] c"acpi_apic_instance\00", section ".init.rodata", align 1, !dbg !527
@__setup_acpi_parse_apic_instance = internal global %struct.obs_kernel_param { ptr @__setup_str_acpi_parse_apic_instance, ptr @acpi_parse_apic_instance, i32 1 }, section ".init.setup", align 8, !dbg !385
@__setup_str_acpi_force_table_verification_setup = internal constant [30 x i8] c"acpi_force_table_verification\00", section ".init.rodata", align 1, !dbg !537
@__setup_acpi_force_table_verification_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_acpi_force_table_verification_setup, ptr @acpi_force_table_verification_setup, i32 1 }, section ".init.setup", align 8, !dbg !399
@__setup_str_acpi_force_32bit_fadt_addr = internal constant [27 x i8] c"acpi_force_32bit_fadt_addr\00", section ".init.rodata", align 1, !dbg !542
@__setup_acpi_force_32bit_fadt_addr = internal global %struct.obs_kernel_param { ptr @__setup_str_acpi_force_32bit_fadt_addr, ptr @acpi_force_32bit_fadt_addr, i32 1 }, section ".init.setup", align 8, !dbg !401
@.str.20 = private unnamed_addr constant [4 x i8] c"dfl\00", align 1, !dbg !469
@.str.21 = private unnamed_addr constant [5 x i8] c"high\00", align 1, !dbg !471
@.str.22 = private unnamed_addr constant [4 x i8] c"res\00", align 1, !dbg !473
@.str.23 = private unnamed_addr constant [4 x i8] c"low\00", align 1, !dbg !475
@.str.24 = private unnamed_addr constant [5 x i8] c"edge\00", align 1, !dbg !477
@.str.25 = private unnamed_addr constant [6 x i8] c"level\00", align 1, !dbg !479
@.str.26 = private unnamed_addr constant [44 x i8] c"\013ACPI: [%4.4s:0x%02x] Invalid zero length\0A\00", align 1, !dbg !484
@.str.27 = private unnamed_addr constant [53 x i8] c"\014ACPI: [%4.4s:0x%02x] found the maximum %i entries\0A\00", align 1, !dbg !489
@.str.28 = private unnamed_addr constant [5 x i8] c"HMAT\00", align 1, !dbg !491
@.str.29 = private unnamed_addr constant [5 x i8] c"PRMT\00", align 1, !dbg !493
@acpi_initrd_installed = internal global [1 x i64] zeroinitializer, align 8, !dbg !502
@.str.30 = private unnamed_addr constant [53 x i8] c"\016ACPI: Table Upgrade: override [%4.4s-%6.6s-%8.8s]\0A\00", align 1, !dbg !500
@.str.31 = private unnamed_addr constant [65 x i8] c"\014ACPI: Override [%4.4s-%8.8s], this is unsafe: tainting kernel\0A\00", align 1, !dbg !505
@.str.32 = private unnamed_addr constant [5 x i8] c"RSDT\00", align 1, !dbg !514
@.str.33 = private unnamed_addr constant [5 x i8] c"XSDT\00", align 1, !dbg !516
@.str.34 = private unnamed_addr constant [52 x i8] c"\016ACPI: Table Upgrade: install [%4.4s-%6.6s-%8.8s]\0A\00", align 1, !dbg !518
@.str.35 = private unnamed_addr constant [54 x i8] c"\014ACPI: BIOS bug: multiple APIC/MADT found, using %d\0A\00", align 1, !dbg !520
@.str.36 = private unnamed_addr constant [84 x i8] c"\014ACPI: If \22acpi_apic_instance=%d\22 works better, notify linux-acpi@vger.kernel.org\0A\00", align 1, !dbg !522
@.str.37 = private unnamed_addr constant [38 x i8] c"\015ACPI: Shall use APIC/MADT table %d\0A\00", align 1, !dbg !532
@.str.38 = private unnamed_addr constant [39 x i8] c"\016ACPI: Forcing 32 Bit FADT addresses\0A\00", align 1, !dbg !547
@acpi_gbl_use32_bit_fadt_addresses = external dso_local global i8, align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__setup_acpi_parse_apic_instance, ptr @__setup_acpi_force_table_verification_setup, ptr @__setup_acpi_force_32bit_fadt_addr], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_table_print_madt_entry(ptr noundef %header) #0 align 16 !dbg !558 {
entry:
  %header.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %p2 = alloca ptr, align 8
  %tmp3 = alloca i32, align 4
  %p5 = alloca ptr, align 8
  %tmp6 = alloca i32, align 4
  %p8 = alloca ptr, align 8
  %tmp9 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  %p33 = alloca ptr, align 8
  %tmp37 = alloca i32, align 4
  %p52 = alloca ptr, align 8
  %tmp56 = alloca i32, align 4
  %polarity = alloca i16, align 2
  %trigger = alloca i16, align 2
  %p72 = alloca ptr, align 8
  %tmp85 = alloca i32, align 4
  %p94 = alloca ptr, align 8
  %tmp98 = alloca i32, align 4
  %p101 = alloca ptr, align 8
  %tmp102 = alloca i32, align 4
  %p104 = alloca ptr, align 8
  %tmp105 = alloca i32, align 4
  %p107 = alloca ptr, align 8
  %tmp111 = alloca i32, align 4
  %p131 = alloca ptr, align 8
  %tmp132 = alloca i32, align 4
  %p134 = alloca ptr, align 8
  %tmp135 = alloca i32, align 4
  %p137 = alloca ptr, align 8
  %tmp138 = alloca i32, align 4
  %p140 = alloca ptr, align 8
  %tmp141 = alloca i32, align 4
  %tmp145 = alloca i32, align 4
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !563, metadata !DIExpression()), !dbg !597
  %0 = load ptr, ptr %header.addr, align 8, !dbg !598
  %tobool = icmp ne ptr %0, null, !dbg !598
  br i1 %tobool, label %if.end, label %if.then, !dbg !600

if.then:                                          ; preds = %entry
  br label %sw.epilog, !dbg !601

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %header.addr, align 8, !dbg !602
  %type = getelementptr inbounds %struct.acpi_subtable_header, ptr %1, i32 0, i32 0, !dbg !603
  %2 = load i8, ptr %type, align 1, !dbg !603
  %conv = zext i8 %2 to i32, !dbg !602
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 9, label %sw.bb1
    i32 1, label %sw.bb4
    i32 2, label %sw.bb7
    i32 3, label %sw.bb32
    i32 4, label %sw.bb51
    i32 10, label %sw.bb71
    i32 5, label %sw.bb93
    i32 6, label %sw.bb100
    i32 7, label %sw.bb103
    i32 8, label %sw.bb106
    i32 11, label %sw.bb130
    i32 12, label %sw.bb133
    i32 17, label %sw.bb136
    i32 24, label %sw.bb139
  ], !dbg !604

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !605
  call void @llvm.dbg.declare(metadata ptr %p, metadata !564, metadata !DIExpression()), !dbg !606
  %3 = load ptr, ptr %header.addr, align 8, !dbg !607
  store ptr %3, ptr %p, align 8, !dbg !606
  store i32 0, ptr %tmp, align 4, !dbg !608
  %4 = load i32, ptr %tmp, align 4, !dbg !611
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !612
  br label %sw.epilog, !dbg !613

sw.bb1:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p2) #11, !dbg !614
  call void @llvm.dbg.declare(metadata ptr %p2, metadata !567, metadata !DIExpression()), !dbg !615
  %5 = load ptr, ptr %header.addr, align 8, !dbg !616
  store ptr %5, ptr %p2, align 8, !dbg !615
  store i32 0, ptr %tmp3, align 4, !dbg !617
  %6 = load i32, ptr %tmp3, align 4, !dbg !620
  call void @llvm.lifetime.end.p0(i64 8, ptr %p2) #11, !dbg !621
  br label %sw.epilog, !dbg !622

sw.bb4:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p5) #11, !dbg !623
  call void @llvm.dbg.declare(metadata ptr %p5, metadata !569, metadata !DIExpression()), !dbg !624
  %7 = load ptr, ptr %header.addr, align 8, !dbg !625
  store ptr %7, ptr %p5, align 8, !dbg !624
  store i32 0, ptr %tmp6, align 4, !dbg !626
  %8 = load i32, ptr %tmp6, align 4, !dbg !629
  call void @llvm.lifetime.end.p0(i64 8, ptr %p5) #11, !dbg !630
  br label %sw.epilog, !dbg !631

sw.bb7:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p8) #11, !dbg !632
  call void @llvm.dbg.declare(metadata ptr %p8, metadata !571, metadata !DIExpression()), !dbg !633
  %9 = load ptr, ptr %header.addr, align 8, !dbg !634
  store ptr %9, ptr %p8, align 8, !dbg !633
  br label %do.body, !dbg !635

do.body:                                          ; preds = %sw.bb7
  br label %do.cond, !dbg !637

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !637

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %p8, align 8, !dbg !635
  %bus = getelementptr inbounds %struct.acpi_madt_interrupt_override, ptr %10, i32 0, i32 1, !dbg !635
  %11 = load i8, ptr %bus, align 1, !dbg !635
  %conv10 = zext i8 %11 to i32, !dbg !635
  %12 = load ptr, ptr %p8, align 8, !dbg !635
  %source_irq = getelementptr inbounds %struct.acpi_madt_interrupt_override, ptr %12, i32 0, i32 2, !dbg !635
  %13 = load i8, ptr %source_irq, align 1, !dbg !635
  %conv11 = zext i8 %13 to i32, !dbg !635
  %14 = load ptr, ptr %p8, align 8, !dbg !635
  %global_irq = getelementptr inbounds %struct.acpi_madt_interrupt_override, ptr %14, i32 0, i32 3, !dbg !635
  %15 = load i32, ptr %global_irq, align 1, !dbg !635
  %16 = load ptr, ptr %p8, align 8, !dbg !635
  %inti_flags = getelementptr inbounds %struct.acpi_madt_interrupt_override, ptr %16, i32 0, i32 4, !dbg !635
  %17 = load i16, ptr %inti_flags, align 1, !dbg !635
  %conv12 = zext i16 %17 to i32, !dbg !635
  %and = and i32 %conv12, 3, !dbg !635
  %idxprom = sext i32 %and to i64, !dbg !635
  %arrayidx = getelementptr [4 x ptr], ptr @mps_inti_flags_polarity, i64 0, i64 %idxprom, !dbg !635
  %18 = load ptr, ptr %arrayidx, align 8, !dbg !635
  %19 = load ptr, ptr %p8, align 8, !dbg !635
  %inti_flags13 = getelementptr inbounds %struct.acpi_madt_interrupt_override, ptr %19, i32 0, i32 4, !dbg !635
  %20 = load i16, ptr %inti_flags13, align 1, !dbg !635
  %conv14 = zext i16 %20 to i32, !dbg !635
  %and15 = and i32 %conv14, 12, !dbg !635
  %shr = ashr i32 %and15, 2, !dbg !635
  %idxprom16 = sext i32 %shr to i64, !dbg !635
  %arrayidx17 = getelementptr [4 x ptr], ptr @mps_inti_flags_trigger, i64 0, i64 %idxprom16, !dbg !635
  %21 = load ptr, ptr %arrayidx17, align 8, !dbg !635
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %15, ptr noundef %18, ptr noundef %21) #12, !dbg !635
  store i32 %call, ptr %tmp9, align 4, !dbg !637
  %22 = load i32, ptr %tmp9, align 4, !dbg !635
  %23 = load ptr, ptr %p8, align 8, !dbg !639
  %inti_flags18 = getelementptr inbounds %struct.acpi_madt_interrupt_override, ptr %23, i32 0, i32 4, !dbg !641
  %24 = load i16, ptr %inti_flags18, align 1, !dbg !641
  %conv19 = zext i16 %24 to i32, !dbg !639
  %and20 = and i32 %conv19, -16, !dbg !642
  %tobool21 = icmp ne i32 %and20, 0, !dbg !642
  br i1 %tobool21, label %if.then22, label %if.end31, !dbg !643

if.then22:                                        ; preds = %do.end
  br label %do.body23, !dbg !644

do.body23:                                        ; preds = %if.then22
  br label %do.cond24, !dbg !646

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !646

do.end25:                                         ; preds = %do.cond24
  %25 = load ptr, ptr %p8, align 8, !dbg !644
  %inti_flags27 = getelementptr inbounds %struct.acpi_madt_interrupt_override, ptr %25, i32 0, i32 4, !dbg !644
  %26 = load i16, ptr %inti_flags27, align 1, !dbg !644
  %conv28 = zext i16 %26 to i32, !dbg !644
  %and29 = and i32 %conv28, -16, !dbg !644
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %and29) #12, !dbg !644
  store i32 %call30, ptr %tmp26, align 4, !dbg !646
  %27 = load i32, ptr %tmp26, align 4, !dbg !644
  br label %if.end31, !dbg !648

if.end31:                                         ; preds = %do.end25, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %p8) #11, !dbg !649
  br label %sw.epilog, !dbg !650

sw.bb32:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p33) #11, !dbg !651
  call void @llvm.dbg.declare(metadata ptr %p33, metadata !573, metadata !DIExpression()), !dbg !652
  %28 = load ptr, ptr %header.addr, align 8, !dbg !653
  store ptr %28, ptr %p33, align 8, !dbg !652
  br label %do.body34, !dbg !654

do.body34:                                        ; preds = %sw.bb32
  br label %do.cond35, !dbg !656

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !656

do.end36:                                         ; preds = %do.cond35
  %29 = load ptr, ptr %p33, align 8, !dbg !654
  %inti_flags38 = getelementptr inbounds %struct.acpi_madt_nmi_source, ptr %29, i32 0, i32 1, !dbg !654
  %30 = load i16, ptr %inti_flags38, align 1, !dbg !654
  %conv39 = zext i16 %30 to i32, !dbg !654
  %and40 = and i32 %conv39, 3, !dbg !654
  %idxprom41 = sext i32 %and40 to i64, !dbg !654
  %arrayidx42 = getelementptr [4 x ptr], ptr @mps_inti_flags_polarity, i64 0, i64 %idxprom41, !dbg !654
  %31 = load ptr, ptr %arrayidx42, align 8, !dbg !654
  %32 = load ptr, ptr %p33, align 8, !dbg !654
  %inti_flags43 = getelementptr inbounds %struct.acpi_madt_nmi_source, ptr %32, i32 0, i32 1, !dbg !654
  %33 = load i16, ptr %inti_flags43, align 1, !dbg !654
  %conv44 = zext i16 %33 to i32, !dbg !654
  %and45 = and i32 %conv44, 12, !dbg !654
  %shr46 = ashr i32 %and45, 2, !dbg !654
  %idxprom47 = sext i32 %shr46 to i64, !dbg !654
  %arrayidx48 = getelementptr [4 x ptr], ptr @mps_inti_flags_trigger, i64 0, i64 %idxprom47, !dbg !654
  %34 = load ptr, ptr %arrayidx48, align 8, !dbg !654
  %35 = load ptr, ptr %p33, align 8, !dbg !654
  %global_irq49 = getelementptr inbounds %struct.acpi_madt_nmi_source, ptr %35, i32 0, i32 2, !dbg !654
  %36 = load i32, ptr %global_irq49, align 1, !dbg !654
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %31, ptr noundef %34, i32 noundef %36) #12, !dbg !654
  store i32 %call50, ptr %tmp37, align 4, !dbg !656
  %37 = load i32, ptr %tmp37, align 4, !dbg !654
  call void @llvm.lifetime.end.p0(i64 8, ptr %p33) #11, !dbg !658
  br label %sw.epilog, !dbg !659

sw.bb51:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p52) #11, !dbg !660
  call void @llvm.dbg.declare(metadata ptr %p52, metadata !575, metadata !DIExpression()), !dbg !661
  %38 = load ptr, ptr %header.addr, align 8, !dbg !662
  store ptr %38, ptr %p52, align 8, !dbg !661
  br label %do.body53, !dbg !663

do.body53:                                        ; preds = %sw.bb51
  br label %do.cond54, !dbg !665

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !665

do.end55:                                         ; preds = %do.cond54
  %39 = load ptr, ptr %p52, align 8, !dbg !663
  %processor_id = getelementptr inbounds %struct.acpi_madt_local_apic_nmi, ptr %39, i32 0, i32 1, !dbg !663
  %40 = load i8, ptr %processor_id, align 1, !dbg !663
  %conv57 = zext i8 %40 to i32, !dbg !663
  %41 = load ptr, ptr %p52, align 8, !dbg !663
  %inti_flags58 = getelementptr inbounds %struct.acpi_madt_local_apic_nmi, ptr %41, i32 0, i32 2, !dbg !663
  %42 = load i16, ptr %inti_flags58, align 1, !dbg !663
  %conv59 = zext i16 %42 to i32, !dbg !663
  %and60 = and i32 %conv59, 3, !dbg !663
  %idxprom61 = sext i32 %and60 to i64, !dbg !663
  %arrayidx62 = getelementptr [4 x ptr], ptr @mps_inti_flags_polarity, i64 0, i64 %idxprom61, !dbg !663
  %43 = load ptr, ptr %arrayidx62, align 8, !dbg !663
  %44 = load ptr, ptr %p52, align 8, !dbg !663
  %inti_flags63 = getelementptr inbounds %struct.acpi_madt_local_apic_nmi, ptr %44, i32 0, i32 2, !dbg !663
  %45 = load i16, ptr %inti_flags63, align 1, !dbg !663
  %conv64 = zext i16 %45 to i32, !dbg !663
  %and65 = and i32 %conv64, 12, !dbg !663
  %shr66 = ashr i32 %and65, 2, !dbg !663
  %idxprom67 = sext i32 %shr66 to i64, !dbg !663
  %arrayidx68 = getelementptr [4 x ptr], ptr @mps_inti_flags_trigger, i64 0, i64 %idxprom67, !dbg !663
  %46 = load ptr, ptr %arrayidx68, align 8, !dbg !663
  %47 = load ptr, ptr %p52, align 8, !dbg !663
  %lint = getelementptr inbounds %struct.acpi_madt_local_apic_nmi, ptr %47, i32 0, i32 3, !dbg !663
  %48 = load i8, ptr %lint, align 1, !dbg !663
  %conv69 = zext i8 %48 to i32, !dbg !663
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %conv57, ptr noundef %43, ptr noundef %46, i32 noundef %conv69) #12, !dbg !663
  store i32 %call70, ptr %tmp56, align 4, !dbg !665
  %49 = load i32, ptr %tmp56, align 4, !dbg !663
  call void @llvm.lifetime.end.p0(i64 8, ptr %p52) #11, !dbg !667
  br label %sw.epilog, !dbg !668

sw.bb71:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr %polarity) #11, !dbg !669
  call void @llvm.dbg.declare(metadata ptr %polarity, metadata !577, metadata !DIExpression()), !dbg !670
  call void @llvm.lifetime.start.p0(i64 2, ptr %trigger) #11, !dbg !669
  call void @llvm.dbg.declare(metadata ptr %trigger, metadata !579, metadata !DIExpression()), !dbg !671
  call void @llvm.lifetime.start.p0(i64 8, ptr %p72) #11, !dbg !672
  call void @llvm.dbg.declare(metadata ptr %p72, metadata !580, metadata !DIExpression()), !dbg !673
  %50 = load ptr, ptr %header.addr, align 8, !dbg !674
  store ptr %50, ptr %p72, align 8, !dbg !673
  %51 = load ptr, ptr %p72, align 8, !dbg !675
  %inti_flags73 = getelementptr inbounds %struct.acpi_madt_local_x2apic_nmi, ptr %51, i32 0, i32 1, !dbg !676
  %52 = load i16, ptr %inti_flags73, align 1, !dbg !676
  %conv74 = zext i16 %52 to i32, !dbg !675
  %and75 = and i32 %conv74, 3, !dbg !677
  %conv76 = trunc i32 %and75 to i16, !dbg !675
  store i16 %conv76, ptr %polarity, align 2, !dbg !678
  %53 = load ptr, ptr %p72, align 8, !dbg !679
  %inti_flags77 = getelementptr inbounds %struct.acpi_madt_local_x2apic_nmi, ptr %53, i32 0, i32 1, !dbg !680
  %54 = load i16, ptr %inti_flags77, align 1, !dbg !680
  %conv78 = zext i16 %54 to i32, !dbg !679
  %and79 = and i32 %conv78, 12, !dbg !681
  %shr80 = ashr i32 %and79, 2, !dbg !682
  %conv81 = trunc i32 %shr80 to i16, !dbg !683
  store i16 %conv81, ptr %trigger, align 2, !dbg !684
  br label %do.body82, !dbg !685

do.body82:                                        ; preds = %sw.bb71
  br label %do.cond83, !dbg !687

do.cond83:                                        ; preds = %do.body82
  br label %do.end84, !dbg !687

do.end84:                                         ; preds = %do.cond83
  %55 = load ptr, ptr %p72, align 8, !dbg !685
  %uid = getelementptr inbounds %struct.acpi_madt_local_x2apic_nmi, ptr %55, i32 0, i32 2, !dbg !685
  %56 = load i32, ptr %uid, align 1, !dbg !685
  %57 = load i16, ptr %polarity, align 2, !dbg !685
  %idxprom86 = zext i16 %57 to i64, !dbg !685
  %arrayidx87 = getelementptr [4 x ptr], ptr @mps_inti_flags_polarity, i64 0, i64 %idxprom86, !dbg !685
  %58 = load ptr, ptr %arrayidx87, align 8, !dbg !685
  %59 = load i16, ptr %trigger, align 2, !dbg !685
  %idxprom88 = zext i16 %59 to i64, !dbg !685
  %arrayidx89 = getelementptr [4 x ptr], ptr @mps_inti_flags_trigger, i64 0, i64 %idxprom88, !dbg !685
  %60 = load ptr, ptr %arrayidx89, align 8, !dbg !685
  %61 = load ptr, ptr %p72, align 8, !dbg !685
  %lint90 = getelementptr inbounds %struct.acpi_madt_local_x2apic_nmi, ptr %61, i32 0, i32 3, !dbg !685
  %62 = load i8, ptr %lint90, align 1, !dbg !685
  %conv91 = zext i8 %62 to i32, !dbg !685
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %56, ptr noundef %58, ptr noundef %60, i32 noundef %conv91) #12, !dbg !685
  store i32 %call92, ptr %tmp85, align 4, !dbg !687
  %63 = load i32, ptr %tmp85, align 4, !dbg !685
  call void @llvm.lifetime.end.p0(i64 8, ptr %p72) #11, !dbg !689
  call void @llvm.lifetime.end.p0(i64 2, ptr %trigger) #11, !dbg !689
  call void @llvm.lifetime.end.p0(i64 2, ptr %polarity) #11, !dbg !689
  br label %sw.epilog, !dbg !690

sw.bb93:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p94) #11, !dbg !691
  call void @llvm.dbg.declare(metadata ptr %p94, metadata !581, metadata !DIExpression()), !dbg !692
  %64 = load ptr, ptr %header.addr, align 8, !dbg !693
  store ptr %64, ptr %p94, align 8, !dbg !692
  br label %do.body95, !dbg !694

do.body95:                                        ; preds = %sw.bb93
  br label %do.cond96, !dbg !696

do.cond96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !696

do.end97:                                         ; preds = %do.cond96
  %65 = load ptr, ptr %p94, align 8, !dbg !694
  %address = getelementptr inbounds %struct.acpi_madt_local_apic_override, ptr %65, i32 0, i32 2, !dbg !694
  %66 = load i64, ptr %address, align 1, !dbg !694
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i64 noundef %66) #12, !dbg !694
  store i32 %call99, ptr %tmp98, align 4, !dbg !696
  %67 = load i32, ptr %tmp98, align 4, !dbg !694
  call void @llvm.lifetime.end.p0(i64 8, ptr %p94) #11, !dbg !698
  br label %sw.epilog, !dbg !699

sw.bb100:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p101) #11, !dbg !700
  call void @llvm.dbg.declare(metadata ptr %p101, metadata !583, metadata !DIExpression()), !dbg !701
  %68 = load ptr, ptr %header.addr, align 8, !dbg !702
  store ptr %68, ptr %p101, align 8, !dbg !701
  store i32 0, ptr %tmp102, align 4, !dbg !703
  %69 = load i32, ptr %tmp102, align 4, !dbg !706
  call void @llvm.lifetime.end.p0(i64 8, ptr %p101) #11, !dbg !707
  br label %sw.epilog, !dbg !708

sw.bb103:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p104) #11, !dbg !709
  call void @llvm.dbg.declare(metadata ptr %p104, metadata !585, metadata !DIExpression()), !dbg !710
  %70 = load ptr, ptr %header.addr, align 8, !dbg !711
  store ptr %70, ptr %p104, align 8, !dbg !710
  store i32 0, ptr %tmp105, align 4, !dbg !712
  %71 = load i32, ptr %tmp105, align 4, !dbg !715
  call void @llvm.lifetime.end.p0(i64 8, ptr %p104) #11, !dbg !716
  br label %sw.epilog, !dbg !717

sw.bb106:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p107) #11, !dbg !718
  call void @llvm.dbg.declare(metadata ptr %p107, metadata !587, metadata !DIExpression()), !dbg !719
  %72 = load ptr, ptr %header.addr, align 8, !dbg !720
  store ptr %72, ptr %p107, align 8, !dbg !719
  br label %do.body108, !dbg !721

do.body108:                                       ; preds = %sw.bb106
  br label %do.cond109, !dbg !723

do.cond109:                                       ; preds = %do.body108
  br label %do.end110, !dbg !723

do.end110:                                        ; preds = %do.cond109
  %73 = load ptr, ptr %p107, align 8, !dbg !721
  %inti_flags112 = getelementptr inbounds %struct.acpi_madt_interrupt_source, ptr %73, i32 0, i32 1, !dbg !721
  %74 = load i16, ptr %inti_flags112, align 1, !dbg !721
  %conv113 = zext i16 %74 to i32, !dbg !721
  %and114 = and i32 %conv113, 3, !dbg !721
  %idxprom115 = sext i32 %and114 to i64, !dbg !721
  %arrayidx116 = getelementptr [4 x ptr], ptr @mps_inti_flags_polarity, i64 0, i64 %idxprom115, !dbg !721
  %75 = load ptr, ptr %arrayidx116, align 8, !dbg !721
  %76 = load ptr, ptr %p107, align 8, !dbg !721
  %inti_flags117 = getelementptr inbounds %struct.acpi_madt_interrupt_source, ptr %76, i32 0, i32 1, !dbg !721
  %77 = load i16, ptr %inti_flags117, align 1, !dbg !721
  %conv118 = zext i16 %77 to i32, !dbg !721
  %and119 = and i32 %conv118, 12, !dbg !721
  %shr120 = ashr i32 %and119, 2, !dbg !721
  %idxprom121 = sext i32 %shr120 to i64, !dbg !721
  %arrayidx122 = getelementptr [4 x ptr], ptr @mps_inti_flags_trigger, i64 0, i64 %idxprom121, !dbg !721
  %78 = load ptr, ptr %arrayidx122, align 8, !dbg !721
  %79 = load ptr, ptr %p107, align 8, !dbg !721
  %type123 = getelementptr inbounds %struct.acpi_madt_interrupt_source, ptr %79, i32 0, i32 2, !dbg !721
  %80 = load i8, ptr %type123, align 1, !dbg !721
  %conv124 = zext i8 %80 to i32, !dbg !721
  %81 = load ptr, ptr %p107, align 8, !dbg !721
  %id = getelementptr inbounds %struct.acpi_madt_interrupt_source, ptr %81, i32 0, i32 3, !dbg !721
  %82 = load i8, ptr %id, align 1, !dbg !721
  %conv125 = zext i8 %82 to i32, !dbg !721
  %83 = load ptr, ptr %p107, align 8, !dbg !721
  %eid = getelementptr inbounds %struct.acpi_madt_interrupt_source, ptr %83, i32 0, i32 4, !dbg !721
  %84 = load i8, ptr %eid, align 1, !dbg !721
  %conv126 = zext i8 %84 to i32, !dbg !721
  %85 = load ptr, ptr %p107, align 8, !dbg !721
  %io_sapic_vector = getelementptr inbounds %struct.acpi_madt_interrupt_source, ptr %85, i32 0, i32 5, !dbg !721
  %86 = load i8, ptr %io_sapic_vector, align 1, !dbg !721
  %conv127 = zext i8 %86 to i32, !dbg !721
  %87 = load ptr, ptr %p107, align 8, !dbg !721
  %global_irq128 = getelementptr inbounds %struct.acpi_madt_interrupt_source, ptr %87, i32 0, i32 6, !dbg !721
  %88 = load i32, ptr %global_irq128, align 1, !dbg !721
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, ptr noundef %75, ptr noundef %78, i32 noundef %conv124, i32 noundef %conv125, i32 noundef %conv126, i32 noundef %conv127, i32 noundef %88) #12, !dbg !721
  store i32 %call129, ptr %tmp111, align 4, !dbg !723
  %89 = load i32, ptr %tmp111, align 4, !dbg !721
  call void @llvm.lifetime.end.p0(i64 8, ptr %p107) #11, !dbg !725
  br label %sw.epilog, !dbg !726

sw.bb130:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p131) #11, !dbg !727
  call void @llvm.dbg.declare(metadata ptr %p131, metadata !589, metadata !DIExpression()), !dbg !728
  %90 = load ptr, ptr %header.addr, align 8, !dbg !729
  store ptr %90, ptr %p131, align 8, !dbg !728
  store i32 0, ptr %tmp132, align 4, !dbg !730
  %91 = load i32, ptr %tmp132, align 4, !dbg !733
  call void @llvm.lifetime.end.p0(i64 8, ptr %p131) #11, !dbg !734
  br label %sw.epilog, !dbg !735

sw.bb133:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p134) #11, !dbg !736
  call void @llvm.dbg.declare(metadata ptr %p134, metadata !591, metadata !DIExpression()), !dbg !737
  %92 = load ptr, ptr %header.addr, align 8, !dbg !738
  store ptr %92, ptr %p134, align 8, !dbg !737
  store i32 0, ptr %tmp135, align 4, !dbg !739
  %93 = load i32, ptr %tmp135, align 4, !dbg !742
  call void @llvm.lifetime.end.p0(i64 8, ptr %p134) #11, !dbg !743
  br label %sw.epilog, !dbg !744

sw.bb136:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p137) #11, !dbg !745
  call void @llvm.dbg.declare(metadata ptr %p137, metadata !593, metadata !DIExpression()), !dbg !746
  %94 = load ptr, ptr %header.addr, align 8, !dbg !747
  store ptr %94, ptr %p137, align 8, !dbg !746
  store i32 0, ptr %tmp138, align 4, !dbg !748
  %95 = load i32, ptr %tmp138, align 4, !dbg !751
  call void @llvm.lifetime.end.p0(i64 8, ptr %p137) #11, !dbg !752
  br label %sw.epilog, !dbg !753

sw.bb139:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p140) #11, !dbg !754
  call void @llvm.dbg.declare(metadata ptr %p140, metadata !595, metadata !DIExpression()), !dbg !755
  %96 = load ptr, ptr %header.addr, align 8, !dbg !756
  store ptr %96, ptr %p140, align 8, !dbg !755
  store i32 0, ptr %tmp141, align 4, !dbg !757
  %97 = load i32, ptr %tmp141, align 4, !dbg !760
  call void @llvm.lifetime.end.p0(i64 8, ptr %p140) #11, !dbg !761
  br label %sw.epilog, !dbg !762

sw.default:                                       ; preds = %if.end
  br label %do.body142, !dbg !763

do.body142:                                       ; preds = %sw.default
  br label %do.end144, !dbg !765

do.end144:                                        ; preds = %do.body142
  %98 = load ptr, ptr %header.addr, align 8, !dbg !763
  %type146 = getelementptr inbounds %struct.acpi_subtable_header, ptr %98, i32 0, i32 0, !dbg !763
  %99 = load i8, ptr %type146, align 1, !dbg !763
  %conv147 = zext i8 %99 to i32, !dbg !763
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %conv147) #12, !dbg !763
  store i32 %call148, ptr %tmp145, align 4, !dbg !765
  %100 = load i32, ptr %tmp145, align 4, !dbg !763
  br label %sw.epilog, !dbg !767

sw.epilog:                                        ; preds = %if.then, %do.end144, %sw.bb139, %sw.bb136, %sw.bb133, %sw.bb130, %do.end110, %sw.bb103, %sw.bb100, %do.end97, %do.end84, %do.end55, %do.end36, %if.end31, %sw.bb4, %sw.bb1, %sw.bb
  ret void, !dbg !768
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !769 dso_local i32 @_printk(ptr noundef, ...) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_table_parse_entries_array(ptr noundef %id, i64 noundef %table_size, ptr noundef %proc, i32 noundef %proc_num, i32 noundef %max_entries) #4 section ".init.text" align 16 !dbg !773 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  %table_size.addr = alloca i64, align 8
  %proc.addr = alloca ptr, align 8
  %proc_num.addr = alloca i32, align 4
  %max_entries.addr = alloca i32, align 4
  %table_header = alloca ptr, align 8
  %count = alloca i32, align 4
  %instance = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !794, metadata !DIExpression()), !dbg !802
  store i64 %table_size, ptr %table_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_size.addr, metadata !795, metadata !DIExpression()), !dbg !803
  store ptr %proc, ptr %proc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %proc.addr, metadata !796, metadata !DIExpression()), !dbg !804
  store i32 %proc_num, ptr %proc_num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %proc_num.addr, metadata !797, metadata !DIExpression()), !dbg !805
  store i32 %max_entries, ptr %max_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_entries.addr, metadata !798, metadata !DIExpression()), !dbg !806
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_header) #11, !dbg !807
  call void @llvm.dbg.declare(metadata ptr %table_header, metadata !799, metadata !DIExpression()), !dbg !808
  store ptr null, ptr %table_header, align 8, !dbg !808
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #11, !dbg !809
  call void @llvm.dbg.declare(metadata ptr %count, metadata !800, metadata !DIExpression()), !dbg !810
  call void @llvm.lifetime.start.p0(i64 4, ptr %instance) #11, !dbg !811
  call void @llvm.dbg.declare(metadata ptr %instance, metadata !801, metadata !DIExpression()), !dbg !812
  store i32 0, ptr %instance, align 4, !dbg !812
  %0 = load i32, ptr @acpi_disabled, align 4, !dbg !813
  %tobool = icmp ne i32 %0, 0, !dbg !813
  br i1 %tobool, label %if.then, label %if.end, !dbg !815

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !816

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %id.addr, align 8, !dbg !817
  %tobool1 = icmp ne ptr %1, null, !dbg !817
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !819

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !820

if.end3:                                          ; preds = %if.end
  %2 = load i64, ptr %table_size.addr, align 8, !dbg !821
  %tobool4 = icmp ne i64 %2, 0, !dbg !821
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !823

if.then5:                                         ; preds = %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !824
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !824

if.end6:                                          ; preds = %if.end3
  %3 = load ptr, ptr %id.addr, align 8, !dbg !825
  %call = call i32 @strncmp(ptr noundef %3, ptr noundef @.str.8, i64 noundef 4) #13, !dbg !827
  %tobool7 = icmp ne i32 %call, 0, !dbg !827
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !828

if.then8:                                         ; preds = %if.end6
  %4 = load i32, ptr @acpi_apic_instance, align 4, !dbg !829
  store i32 %4, ptr %instance, align 4, !dbg !830
  br label %if.end9, !dbg !831

if.end9:                                          ; preds = %if.then8, %if.end6
  %5 = load ptr, ptr %id.addr, align 8, !dbg !832
  %6 = load i32, ptr %instance, align 4, !dbg !833
  %call10 = call i32 @acpi_get_table(ptr noundef %5, i32 noundef %6, ptr noundef %table_header) #13, !dbg !834
  %7 = load ptr, ptr %table_header, align 8, !dbg !835
  %tobool11 = icmp ne ptr %7, null, !dbg !835
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !837

if.then12:                                        ; preds = %if.end9
  store i32 0, ptr %tmp, align 4, !dbg !838
  %8 = load i32, ptr %tmp, align 4, !dbg !842
  store i32 -19, ptr %retval, align 4, !dbg !843
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !843

if.end13:                                         ; preds = %if.end9
  %9 = load ptr, ptr %id.addr, align 8, !dbg !844
  %10 = load i64, ptr %table_size.addr, align 8, !dbg !845
  %11 = load ptr, ptr %table_header, align 8, !dbg !846
  %12 = load ptr, ptr %proc.addr, align 8, !dbg !847
  %13 = load i32, ptr %proc_num.addr, align 4, !dbg !848
  %14 = load i32, ptr %max_entries.addr, align 4, !dbg !849
  %call14 = call i32 @acpi_parse_entries_array(ptr noundef %9, i64 noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, i32 noundef %14) #12, !dbg !850
  store i32 %call14, ptr %count, align 4, !dbg !851
  %15 = load ptr, ptr %table_header, align 8, !dbg !852
  call void @acpi_put_table(ptr noundef %15) #13, !dbg !853
  %16 = load i32, ptr %count, align 4, !dbg !854
  store i32 %16, ptr %retval, align 4, !dbg !855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !855

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %instance) #11, !dbg !856
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #11, !dbg !856
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_header) #11, !dbg !856
  %17 = load i32, ptr %retval, align 4, !dbg !856
  ret i32 %17, !dbg !856
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !857 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !861 dso_local i32 @acpi_get_table(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_parse_entries_array(ptr noundef %id, i64 noundef %table_size, ptr noundef %table_header, ptr noundef %proc, i32 noundef %proc_num, i32 noundef %max_entries) #4 section ".init.text" align 16 !dbg !867 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  %table_size.addr = alloca i64, align 8
  %table_header.addr = alloca ptr, align 8
  %proc.addr = alloca ptr, align 8
  %proc_num.addr = alloca i32, align 4
  %max_entries.addr = alloca i32, align 4
  %entry1 = alloca %struct.acpi_subtable_entry, align 8
  %table_end = alloca i64, align 8
  %subtable_len = alloca i64, align 8
  %entry_len = alloca i64, align 8
  %count = alloca i32, align 4
  %errs = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !871, metadata !DIExpression()), !dbg !888
  store i64 %table_size, ptr %table_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_size.addr, metadata !872, metadata !DIExpression()), !dbg !889
  store ptr %table_header, ptr %table_header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_header.addr, metadata !873, metadata !DIExpression()), !dbg !890
  store ptr %proc, ptr %proc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %proc.addr, metadata !874, metadata !DIExpression()), !dbg !891
  store i32 %proc_num, ptr %proc_num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %proc_num.addr, metadata !875, metadata !DIExpression()), !dbg !892
  store i32 %max_entries, ptr %max_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_entries.addr, metadata !876, metadata !DIExpression()), !dbg !893
  call void @llvm.lifetime.start.p0(i64 16, ptr %entry1) #11, !dbg !894
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !877, metadata !DIExpression()), !dbg !895
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_end) #11, !dbg !896
  call void @llvm.dbg.declare(metadata ptr %table_end, metadata !882, metadata !DIExpression()), !dbg !897
  call void @llvm.lifetime.start.p0(i64 8, ptr %subtable_len) #11, !dbg !896
  call void @llvm.dbg.declare(metadata ptr %subtable_len, metadata !883, metadata !DIExpression()), !dbg !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_len) #11, !dbg !896
  call void @llvm.dbg.declare(metadata ptr %entry_len, metadata !884, metadata !DIExpression()), !dbg !899
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #11, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %count, metadata !885, metadata !DIExpression()), !dbg !901
  store i32 0, ptr %count, align 4, !dbg !901
  call void @llvm.lifetime.start.p0(i64 4, ptr %errs) #11, !dbg !902
  call void @llvm.dbg.declare(metadata ptr %errs, metadata !886, metadata !DIExpression()), !dbg !903
  store i32 0, ptr %errs, align 4, !dbg !903
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !904
  call void @llvm.dbg.declare(metadata ptr %i, metadata !887, metadata !DIExpression()), !dbg !905
  %0 = load ptr, ptr %table_header.addr, align 8, !dbg !906
  %1 = ptrtoint ptr %0 to i64, !dbg !907
  %2 = load ptr, ptr %table_header.addr, align 8, !dbg !908
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %2, i32 0, i32 1, !dbg !909
  %3 = load i32, ptr %length, align 1, !dbg !909
  %conv = zext i32 %3 to i64, !dbg !908
  %add = add i64 %1, %conv, !dbg !910
  store i64 %add, ptr %table_end, align 8, !dbg !911
  %4 = load ptr, ptr %id.addr, align 8, !dbg !912
  %call = call i32 @acpi_get_subtable_type(ptr noundef %4) #12, !dbg !913
  %type = getelementptr inbounds %struct.acpi_subtable_entry, ptr %entry1, i32 0, i32 1, !dbg !914
  store i32 %call, ptr %type, align 8, !dbg !915
  %5 = load ptr, ptr %table_header.addr, align 8, !dbg !916
  %6 = ptrtoint ptr %5 to i64, !dbg !917
  %7 = load i64, ptr %table_size.addr, align 8, !dbg !918
  %add2 = add i64 %6, %7, !dbg !919
  %8 = inttoptr i64 %add2 to ptr, !dbg !920
  %hdr = getelementptr inbounds %struct.acpi_subtable_entry, ptr %entry1, i32 0, i32 0, !dbg !921
  store ptr %8, ptr %hdr, align 8, !dbg !922
  %call3 = call i64 @acpi_get_subtable_header_length(ptr noundef %entry1) #12, !dbg !923
  store i64 %call3, ptr %subtable_len, align 8, !dbg !924
  br label %while.cond, !dbg !925

while.cond:                                       ; preds = %if.end46, %entry
  %hdr4 = getelementptr inbounds %struct.acpi_subtable_entry, ptr %entry1, i32 0, i32 0, !dbg !926
  %9 = load ptr, ptr %hdr4, align 8, !dbg !926
  %10 = ptrtoint ptr %9 to i64, !dbg !927
  %11 = load i64, ptr %subtable_len, align 8, !dbg !928
  %add5 = add i64 %10, %11, !dbg !929
  %12 = load i64, ptr %table_end, align 8, !dbg !930
  %cmp = icmp ult i64 %add5, %12, !dbg !931
  br i1 %cmp, label %while.body, label %while.end, !dbg !925

while.body:                                       ; preds = %while.cond
  %13 = load i32, ptr %max_entries.addr, align 4, !dbg !932
  %tobool = icmp ne i32 %13, 0, !dbg !932
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !935

land.lhs.true:                                    ; preds = %while.body
  %14 = load i32, ptr %count, align 4, !dbg !936
  %15 = load i32, ptr %max_entries.addr, align 4, !dbg !937
  %cmp7 = icmp uge i32 %14, %15, !dbg !938
  br i1 %cmp7, label %if.then, label %if.end, !dbg !939

if.then:                                          ; preds = %land.lhs.true
  br label %while.end, !dbg !940

if.end:                                           ; preds = %land.lhs.true, %while.body
  store i32 0, ptr %i, align 4, !dbg !941
  br label %for.cond, !dbg !943

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, ptr %i, align 4, !dbg !944
  %17 = load i32, ptr %proc_num.addr, align 4, !dbg !946
  %cmp9 = icmp slt i32 %16, %17, !dbg !947
  br i1 %cmp9, label %for.body, label %for.end, !dbg !948

for.body:                                         ; preds = %for.cond
  %call11 = call i64 @acpi_get_entry_type(ptr noundef %entry1) #12, !dbg !949
  %18 = load ptr, ptr %proc.addr, align 8, !dbg !952
  %19 = load i32, ptr %i, align 4, !dbg !953
  %idxprom = sext i32 %19 to i64, !dbg !952
  %arrayidx = getelementptr %struct.acpi_subtable_proc, ptr %18, i64 %idxprom, !dbg !952
  %id12 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %arrayidx, i32 0, i32 0, !dbg !954
  %20 = load i32, ptr %id12, align 8, !dbg !954
  %conv13 = sext i32 %20 to i64, !dbg !952
  %cmp14 = icmp ne i64 %call11, %conv13, !dbg !955
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !956

if.then16:                                        ; preds = %for.body
  br label %for.inc, !dbg !957

if.end17:                                         ; preds = %for.body
  %21 = load ptr, ptr %proc.addr, align 8, !dbg !958
  %22 = load i32, ptr %i, align 4, !dbg !960
  %idxprom18 = sext i32 %22 to i64, !dbg !958
  %arrayidx19 = getelementptr %struct.acpi_subtable_proc, ptr %21, i64 %idxprom18, !dbg !958
  %call20 = call zeroext i1 @has_handler(ptr noundef %arrayidx19) #12, !dbg !961
  br i1 %call20, label %lor.lhs.false, label %if.then28, !dbg !962

lor.lhs.false:                                    ; preds = %if.end17
  %23 = load i32, ptr %errs, align 4, !dbg !963
  %tobool21 = icmp ne i32 %23, 0, !dbg !963
  br i1 %tobool21, label %if.end29, label %land.lhs.true22, !dbg !964

land.lhs.true22:                                  ; preds = %lor.lhs.false
  %24 = load ptr, ptr %proc.addr, align 8, !dbg !965
  %25 = load i32, ptr %i, align 4, !dbg !966
  %idxprom23 = sext i32 %25 to i64, !dbg !965
  %arrayidx24 = getelementptr %struct.acpi_subtable_proc, ptr %24, i64 %idxprom23, !dbg !965
  %hdr25 = getelementptr inbounds %struct.acpi_subtable_entry, ptr %entry1, i32 0, i32 0, !dbg !967
  %26 = load ptr, ptr %hdr25, align 8, !dbg !967
  %27 = load i64, ptr %table_end, align 8, !dbg !968
  %call26 = call i32 @call_handler(ptr noundef %arrayidx24, ptr noundef %26, i64 noundef %27) #12, !dbg !969
  %tobool27 = icmp ne i32 %call26, 0, !dbg !969
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !970

if.then28:                                        ; preds = %land.lhs.true22, %if.end17
  %28 = load i32, ptr %errs, align 4, !dbg !971
  %inc = add i32 %28, 1, !dbg !971
  store i32 %inc, ptr %errs, align 4, !dbg !971
  br label %for.inc, !dbg !973

if.end29:                                         ; preds = %land.lhs.true22, %lor.lhs.false
  %29 = load ptr, ptr %proc.addr, align 8, !dbg !974
  %30 = load i32, ptr %i, align 4, !dbg !975
  %idxprom30 = sext i32 %30 to i64, !dbg !974
  %arrayidx31 = getelementptr %struct.acpi_subtable_proc, ptr %29, i64 %idxprom30, !dbg !974
  %count32 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %arrayidx31, i32 0, i32 4, !dbg !976
  %31 = load i32, ptr %count32, align 8, !dbg !977
  %inc33 = add i32 %31, 1, !dbg !977
  store i32 %inc33, ptr %count32, align 8, !dbg !977
  br label %for.end, !dbg !978

for.inc:                                          ; preds = %if.then28, %if.then16
  %32 = load i32, ptr %i, align 4, !dbg !979
  %inc34 = add i32 %32, 1, !dbg !979
  store i32 %inc34, ptr %i, align 4, !dbg !979
  br label %for.cond, !dbg !980, !llvm.loop !981

for.end:                                          ; preds = %if.end29, %for.cond
  %33 = load i32, ptr %i, align 4, !dbg !985
  %34 = load i32, ptr %proc_num.addr, align 4, !dbg !987
  %cmp35 = icmp ne i32 %33, %34, !dbg !988
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !989

if.then37:                                        ; preds = %for.end
  %35 = load i32, ptr %count, align 4, !dbg !990
  %inc38 = add i32 %35, 1, !dbg !990
  store i32 %inc38, ptr %count, align 4, !dbg !990
  br label %if.end39, !dbg !991

if.end39:                                         ; preds = %if.then37, %for.end
  %call40 = call i64 @acpi_get_entry_length(ptr noundef %entry1) #12, !dbg !992
  store i64 %call40, ptr %entry_len, align 8, !dbg !993
  %36 = load i64, ptr %entry_len, align 8, !dbg !994
  %cmp41 = icmp eq i64 %36, 0, !dbg !996
  br i1 %cmp41, label %if.then43, label %if.end46, !dbg !997

if.then43:                                        ; preds = %if.end39
  br label %do.body, !dbg !998

do.body:                                          ; preds = %if.then43
  br label %do.cond, !dbg !1001

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1001

do.end:                                           ; preds = %do.cond
  %37 = load ptr, ptr %id.addr, align 8, !dbg !998
  %38 = load ptr, ptr %proc.addr, align 8, !dbg !998
  %id44 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %38, i32 0, i32 0, !dbg !998
  %39 = load i32, ptr %id44, align 8, !dbg !998
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef @.str.26, ptr noundef %37, i32 noundef %39) #12, !dbg !998
  store i32 %call45, ptr %tmp, align 4, !dbg !1001
  %40 = load i32, ptr %tmp, align 4, !dbg !998
  store i32 -22, ptr %retval, align 4, !dbg !1003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1003

if.end46:                                         ; preds = %if.end39
  %hdr47 = getelementptr inbounds %struct.acpi_subtable_entry, ptr %entry1, i32 0, i32 0, !dbg !1004
  %41 = load ptr, ptr %hdr47, align 8, !dbg !1004
  %42 = ptrtoint ptr %41 to i64, !dbg !1005
  %43 = load i64, ptr %entry_len, align 8, !dbg !1006
  %add48 = add i64 %42, %43, !dbg !1007
  %44 = inttoptr i64 %add48 to ptr, !dbg !1008
  %hdr49 = getelementptr inbounds %struct.acpi_subtable_entry, ptr %entry1, i32 0, i32 0, !dbg !1009
  store ptr %44, ptr %hdr49, align 8, !dbg !1010
  br label %while.cond, !dbg !925, !llvm.loop !1011

while.end:                                        ; preds = %if.then, %while.cond
  %45 = load i32, ptr %max_entries.addr, align 4, !dbg !1013
  %tobool50 = icmp ne i32 %45, 0, !dbg !1013
  br i1 %tobool50, label %land.lhs.true51, label %if.end61, !dbg !1015

land.lhs.true51:                                  ; preds = %while.end
  %46 = load i32, ptr %count, align 4, !dbg !1016
  %47 = load i32, ptr %max_entries.addr, align 4, !dbg !1017
  %cmp52 = icmp ugt i32 %46, %47, !dbg !1018
  br i1 %cmp52, label %if.then54, label %if.end61, !dbg !1019

if.then54:                                        ; preds = %land.lhs.true51
  br label %do.body55, !dbg !1020

do.body55:                                        ; preds = %if.then54
  br label %do.cond56, !dbg !1023

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !1023

do.end57:                                         ; preds = %do.cond56
  %48 = load ptr, ptr %id.addr, align 8, !dbg !1020
  %49 = load ptr, ptr %proc.addr, align 8, !dbg !1020
  %id59 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %49, i32 0, i32 0, !dbg !1020
  %50 = load i32, ptr %id59, align 8, !dbg !1020
  %51 = load i32, ptr %count, align 4, !dbg !1020
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef @.str.27, ptr noundef %48, i32 noundef %50, i32 noundef %51) #12, !dbg !1020
  store i32 %call60, ptr %tmp58, align 4, !dbg !1023
  %52 = load i32, ptr %tmp58, align 4, !dbg !1020
  br label %if.end61, !dbg !1025

if.end61:                                         ; preds = %do.end57, %land.lhs.true51, %while.end
  %53 = load i32, ptr %errs, align 4, !dbg !1026
  %tobool62 = icmp ne i32 %53, 0, !dbg !1026
  br i1 %tobool62, label %cond.true, label %cond.false, !dbg !1026

cond.true:                                        ; preds = %if.end61
  br label %cond.end, !dbg !1026

cond.false:                                       ; preds = %if.end61
  %54 = load i32, ptr %count, align 4, !dbg !1027
  br label %cond.end, !dbg !1026

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -22, %cond.true ], [ %54, %cond.false ], !dbg !1026
  store i32 %cond, ptr %retval, align 4, !dbg !1028
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1028

cleanup:                                          ; preds = %cond.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !1029
  call void @llvm.lifetime.end.p0(i64 4, ptr %errs) #11, !dbg !1029
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #11, !dbg !1029
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_len) #11, !dbg !1029
  call void @llvm.lifetime.end.p0(i64 8, ptr %subtable_len) #11, !dbg !1029
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_end) #11, !dbg !1029
  call void @llvm.lifetime.end.p0(i64 16, ptr %entry1) #11, !dbg !1029
  %55 = load i32, ptr %retval, align 4, !dbg !1029
  ret i32 %55, !dbg !1029
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1030 dso_local void @acpi_put_table(ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_table_parse_cedt(i32 noundef %id, ptr noundef %handler_arg, ptr noundef %arg) #4 section ".init.text" align 16 !dbg !1033 {
entry:
  %id.addr = alloca i32, align 4
  %handler_arg.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !1037, metadata !DIExpression()), !dbg !1040
  store ptr %handler_arg, ptr %handler_arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_arg.addr, metadata !1038, metadata !DIExpression()), !dbg !1041
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1039, metadata !DIExpression()), !dbg !1042
  %0 = load i32, ptr %id.addr, align 4, !dbg !1043
  %1 = load ptr, ptr %handler_arg.addr, align 8, !dbg !1044
  %2 = load ptr, ptr %arg.addr, align 8, !dbg !1045
  %call = call i32 @__acpi_table_parse_entries(ptr noundef @.str.9, i64 noundef 36, i32 noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef 0) #12, !dbg !1046
  ret i32 %call, !dbg !1047
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @__acpi_table_parse_entries(ptr noundef %id, i64 noundef %table_size, i32 noundef %entry_id, ptr noundef %handler, ptr noundef %handler_arg, ptr noundef %arg, i32 noundef %max_entries) #4 section ".init.text" align 16 !dbg !1048 {
entry:
  %id.addr = alloca ptr, align 8
  %table_size.addr = alloca i64, align 8
  %entry_id.addr = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %handler_arg.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %max_entries.addr = alloca i32, align 4
  %proc = alloca %struct.acpi_subtable_proc, align 8
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !1052, metadata !DIExpression()), !dbg !1060
  store i64 %table_size, ptr %table_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_size.addr, metadata !1053, metadata !DIExpression()), !dbg !1061
  store i32 %entry_id, ptr %entry_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %entry_id.addr, metadata !1054, metadata !DIExpression()), !dbg !1062
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !1055, metadata !DIExpression()), !dbg !1063
  store ptr %handler_arg, ptr %handler_arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_arg.addr, metadata !1056, metadata !DIExpression()), !dbg !1064
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1057, metadata !DIExpression()), !dbg !1065
  store i32 %max_entries, ptr %max_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_entries.addr, metadata !1058, metadata !DIExpression()), !dbg !1066
  call void @llvm.lifetime.start.p0(i64 40, ptr %proc) #11, !dbg !1067
  call void @llvm.dbg.declare(metadata ptr %proc, metadata !1059, metadata !DIExpression()), !dbg !1068
  %id1 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %proc, i32 0, i32 0, !dbg !1069
  %0 = load i32, ptr %entry_id.addr, align 4, !dbg !1070
  store i32 %0, ptr %id1, align 8, !dbg !1069
  %handler2 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %proc, i32 0, i32 1, !dbg !1069
  %1 = load ptr, ptr %handler.addr, align 8, !dbg !1071
  store ptr %1, ptr %handler2, align 8, !dbg !1069
  %handler_arg3 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %proc, i32 0, i32 2, !dbg !1069
  %2 = load ptr, ptr %handler_arg.addr, align 8, !dbg !1072
  store ptr %2, ptr %handler_arg3, align 8, !dbg !1069
  %arg4 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %proc, i32 0, i32 3, !dbg !1069
  %3 = load ptr, ptr %arg.addr, align 8, !dbg !1073
  store ptr %3, ptr %arg4, align 8, !dbg !1069
  %count = getelementptr inbounds %struct.acpi_subtable_proc, ptr %proc, i32 0, i32 4, !dbg !1069
  store i32 0, ptr %count, align 8, !dbg !1069
  %4 = load ptr, ptr %id.addr, align 8, !dbg !1074
  %5 = load i64, ptr %table_size.addr, align 8, !dbg !1075
  %6 = load i32, ptr %max_entries.addr, align 4, !dbg !1076
  %call = call i32 @acpi_table_parse_entries_array(ptr noundef %4, i64 noundef %5, ptr noundef %proc, i32 noundef 1, i32 noundef %6) #12, !dbg !1077
  call void @llvm.lifetime.end.p0(i64 40, ptr %proc) #11, !dbg !1078
  ret i32 %call, !dbg !1079
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_table_parse_entries(ptr noundef %id, i64 noundef %table_size, i32 noundef %entry_id, ptr noundef %handler, i32 noundef %max_entries) #4 section ".init.text" align 16 !dbg !1080 {
entry:
  %id.addr = alloca ptr, align 8
  %table_size.addr = alloca i64, align 8
  %entry_id.addr = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %max_entries.addr = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !1084, metadata !DIExpression()), !dbg !1089
  store i64 %table_size, ptr %table_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_size.addr, metadata !1085, metadata !DIExpression()), !dbg !1090
  store i32 %entry_id, ptr %entry_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %entry_id.addr, metadata !1086, metadata !DIExpression()), !dbg !1091
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !1087, metadata !DIExpression()), !dbg !1092
  store i32 %max_entries, ptr %max_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_entries.addr, metadata !1088, metadata !DIExpression()), !dbg !1093
  %0 = load ptr, ptr %id.addr, align 8, !dbg !1094
  %1 = load i64, ptr %table_size.addr, align 8, !dbg !1095
  %2 = load i32, ptr %entry_id.addr, align 4, !dbg !1096
  %3 = load ptr, ptr %handler.addr, align 8, !dbg !1097
  %4 = load i32, ptr %max_entries.addr, align 4, !dbg !1098
  %call = call i32 @__acpi_table_parse_entries(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null, i32 noundef %4) #12, !dbg !1099
  ret i32 %call, !dbg !1100
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_table_parse_madt(i32 noundef %id, ptr noundef %handler, i32 noundef %max_entries) #4 section ".init.text" align 16 !dbg !1101 {
entry:
  %id.addr = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %max_entries.addr = alloca i32, align 4
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !1105, metadata !DIExpression()), !dbg !1108
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !1106, metadata !DIExpression()), !dbg !1109
  store i32 %max_entries, ptr %max_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_entries.addr, metadata !1107, metadata !DIExpression()), !dbg !1110
  %0 = load i32, ptr %id.addr, align 4, !dbg !1111
  %1 = load ptr, ptr %handler.addr, align 8, !dbg !1112
  %2 = load i32, ptr %max_entries.addr, align 4, !dbg !1113
  %call = call i32 @acpi_table_parse_entries(ptr noundef @.str.8, i64 noundef 44, i32 noundef %0, ptr noundef %1, i32 noundef %2) #12, !dbg !1114
  ret i32 %call, !dbg !1115
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_table_parse(ptr noundef %id, ptr noundef %handler) #4 section ".init.text" align 16 !dbg !1116 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  %handler.addr = alloca ptr, align 8
  %table = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !1124, metadata !DIExpression()), !dbg !1127
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !1125, metadata !DIExpression()), !dbg !1128
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #11, !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %table, metadata !1126, metadata !DIExpression()), !dbg !1130
  store ptr null, ptr %table, align 8, !dbg !1130
  %0 = load i32, ptr @acpi_disabled, align 4, !dbg !1131
  %tobool = icmp ne i32 %0, 0, !dbg !1131
  br i1 %tobool, label %if.then, label %if.end, !dbg !1133

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !1134
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1134

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %id.addr, align 8, !dbg !1135
  %tobool1 = icmp ne ptr %1, null, !dbg !1135
  br i1 %tobool1, label %lor.lhs.false, label %if.then3, !dbg !1137

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr %handler.addr, align 8, !dbg !1138
  %tobool2 = icmp ne ptr %2, null, !dbg !1138
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1139

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1140

if.end4:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr %id.addr, align 8, !dbg !1141
  %call = call i32 @strncmp(ptr noundef %3, ptr noundef @.str.8, i64 noundef 4) #13, !dbg !1143
  %cmp = icmp eq i32 %call, 0, !dbg !1144
  br i1 %cmp, label %if.then5, label %if.else, !dbg !1145

if.then5:                                         ; preds = %if.end4
  %4 = load ptr, ptr %id.addr, align 8, !dbg !1146
  %5 = load i32, ptr @acpi_apic_instance, align 4, !dbg !1147
  %call6 = call i32 @acpi_get_table(ptr noundef %4, i32 noundef %5, ptr noundef %table) #13, !dbg !1148
  br label %if.end8, !dbg !1148

if.else:                                          ; preds = %if.end4
  %6 = load ptr, ptr %id.addr, align 8, !dbg !1149
  %call7 = call i32 @acpi_get_table(ptr noundef %6, i32 noundef 0, ptr noundef %table) #13, !dbg !1150
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %7 = load ptr, ptr %table, align 8, !dbg !1151
  %tobool9 = icmp ne ptr %7, null, !dbg !1151
  br i1 %tobool9, label %if.then10, label %if.else12, !dbg !1153

if.then10:                                        ; preds = %if.end8
  %8 = load ptr, ptr %handler.addr, align 8, !dbg !1154
  %9 = load ptr, ptr %table, align 8, !dbg !1156
  %call11 = call i32 %8(ptr noundef %9) #13, !dbg !1154
  %10 = load ptr, ptr %table, align 8, !dbg !1157
  call void @acpi_put_table(ptr noundef %10) #13, !dbg !1158
  store i32 0, ptr %retval, align 4, !dbg !1159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1159

if.else12:                                        ; preds = %if.end8
  store i32 -19, ptr %retval, align 4, !dbg !1160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1160

cleanup:                                          ; preds = %if.else12, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #11, !dbg !1161
  %11 = load i32, ptr %retval, align 4, !dbg !1161
  ret i32 %11, !dbg !1161
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @acpi_table_upgrade() #4 section ".init.text" align 16 !dbg !1162 {
entry:
  %data = alloca ptr, align 8
  %size = alloca i64, align 8
  %sig = alloca i32, align 4
  %no = alloca i32, align 4
  %table_nr = alloca i32, align 4
  %total_offset = alloca i32, align 4
  %offset = alloca i64, align 8
  %table = alloca ptr, align 8
  %cpio_path = alloca [32 x i8], align 16
  %file = alloca %struct.cpio_data, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.cpio_data, align 8
  %tmp10 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %tmp46 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  %tmp69 = alloca i32, align 4
  %tmp100 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp125 = alloca i64, align 8
  %src_p = alloca ptr, align 8
  %size142 = alloca i64, align 8
  %dest_addr = alloca i64, align 8
  %slop = alloca i64, align 8
  %clen = alloca i64, align 8
  %dest_p = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #11, !dbg !1198
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1166, metadata !DIExpression()), !dbg !1199
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #11, !dbg !1200
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1167, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.start.p0(i64 4, ptr %sig) #11, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !1168, metadata !DIExpression()), !dbg !1203
  call void @llvm.lifetime.start.p0(i64 4, ptr %no) #11, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %no, metadata !1169, metadata !DIExpression()), !dbg !1204
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_nr) #11, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %table_nr, metadata !1170, metadata !DIExpression()), !dbg !1205
  store i32 0, ptr %table_nr, align 4, !dbg !1205
  call void @llvm.lifetime.start.p0(i64 4, ptr %total_offset) #11, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %total_offset, metadata !1171, metadata !DIExpression()), !dbg !1206
  store i32 0, ptr %total_offset, align 4, !dbg !1206
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #11, !dbg !1207
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !1172, metadata !DIExpression()), !dbg !1208
  store i64 0, ptr %offset, align 8, !dbg !1208
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #11, !dbg !1209
  call void @llvm.dbg.declare(metadata ptr %table, metadata !1174, metadata !DIExpression()), !dbg !1210
  call void @llvm.lifetime.start.p0(i64 32, ptr %cpio_path) #11, !dbg !1211
  call void @llvm.dbg.declare(metadata ptr %cpio_path, metadata !1175, metadata !DIExpression()), !dbg !1212
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %cpio_path, ptr align 16 @__const.acpi_table_upgrade.cpio_path, i64 32, i1 false), !dbg !1212
  call void @llvm.lifetime.start.p0(i64 40, ptr %file) #11, !dbg !1213
  call void @llvm.dbg.declare(metadata ptr %file, metadata !1179, metadata !DIExpression()), !dbg !1214
  %0 = load i64, ptr @initrd_start, align 8, !dbg !1215
  %1 = inttoptr i64 %0 to ptr, !dbg !1218
  store ptr %1, ptr %data, align 8, !dbg !1219
  %2 = load i64, ptr @initrd_end, align 8, !dbg !1220
  %3 = load i64, ptr @initrd_start, align 8, !dbg !1221
  %sub = sub i64 %2, %3, !dbg !1222
  store i64 %sub, ptr %size, align 8, !dbg !1223
  %4 = load ptr, ptr %data, align 8, !dbg !1224
  %cmp = icmp eq ptr %4, null, !dbg !1226
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1227

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, ptr %size, align 8, !dbg !1228
  %cmp1 = icmp eq i64 %5, 0, !dbg !1229
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1230

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1231

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %no, align 4, !dbg !1232
  br label %for.cond, !dbg !1234

for.cond:                                         ; preds = %for.inc87, %if.end
  %6 = load i32, ptr %no, align 4, !dbg !1235
  %cmp2 = icmp slt i32 %6, 64, !dbg !1237
  br i1 %cmp2, label %for.body, label %for.end89, !dbg !1238

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 40, ptr %tmp) #11, !dbg !1239
  %arraydecay = getelementptr inbounds [32 x i8], ptr %cpio_path, i64 0, i64 0, !dbg !1241
  %7 = load ptr, ptr %data, align 8, !dbg !1242
  %8 = load i64, ptr %size, align 8, !dbg !1243
  call void @find_cpio_data(ptr dead_on_unwind writable sret(%struct.cpio_data) align 8 %tmp, ptr noundef %arraydecay, ptr noundef %7, i64 noundef %8, ptr noundef %offset) #13, !dbg !1239
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %file, ptr align 8 %tmp, i64 40, i1 false), !dbg !1239
  call void @llvm.lifetime.end.p0(i64 40, ptr %tmp) #11, !dbg !1239
  %data3 = getelementptr inbounds %struct.cpio_data, ptr %file, i32 0, i32 0, !dbg !1244
  %9 = load ptr, ptr %data3, align 8, !dbg !1244
  %tobool = icmp ne ptr %9, null, !dbg !1246
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !1247

if.then4:                                         ; preds = %for.body
  br label %for.end89, !dbg !1248

if.end5:                                          ; preds = %for.body
  %10 = load i64, ptr %offset, align 8, !dbg !1249
  %11 = load ptr, ptr %data, align 8, !dbg !1250
  %add.ptr = getelementptr i8, ptr %11, i64 %10, !dbg !1250
  store ptr %add.ptr, ptr %data, align 8, !dbg !1250
  %12 = load i64, ptr %offset, align 8, !dbg !1251
  %13 = load i64, ptr %size, align 8, !dbg !1252
  %sub6 = sub i64 %13, %12, !dbg !1252
  store i64 %sub6, ptr %size, align 8, !dbg !1252
  %size7 = getelementptr inbounds %struct.cpio_data, ptr %file, i32 0, i32 1, !dbg !1253
  %14 = load i64, ptr %size7, align 8, !dbg !1253
  %cmp8 = icmp ult i64 %14, 36, !dbg !1255
  br i1 %cmp8, label %if.then9, label %if.end13, !dbg !1256

if.then9:                                         ; preds = %if.end5
  br label %do.body, !dbg !1257

do.body:                                          ; preds = %if.then9
  br label %do.cond, !dbg !1260

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1260

do.end:                                           ; preds = %do.cond
  %arraydecay11 = getelementptr inbounds [32 x i8], ptr %cpio_path, i64 0, i64 0, !dbg !1257
  %name = getelementptr inbounds %struct.cpio_data, ptr %file, i32 0, i32 2, !dbg !1257
  %arraydecay12 = getelementptr inbounds [18 x i8], ptr %name, i64 0, i64 0, !dbg !1257
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, ptr noundef %arraydecay11, ptr noundef %arraydecay12) #12, !dbg !1257
  store i32 %call, ptr %tmp10, align 4, !dbg !1260
  %15 = load i32, ptr %tmp10, align 4, !dbg !1257
  br label %for.inc87, !dbg !1262

if.end13:                                         ; preds = %if.end5
  %data14 = getelementptr inbounds %struct.cpio_data, ptr %file, i32 0, i32 0, !dbg !1263
  %16 = load ptr, ptr %data14, align 8, !dbg !1263
  store ptr %16, ptr %table, align 8, !dbg !1264
  store i32 0, ptr %sig, align 4, !dbg !1265
  br label %for.cond15, !dbg !1267

for.cond15:                                       ; preds = %for.inc, %if.end13
  %17 = load i32, ptr %sig, align 4, !dbg !1268
  %conv = sext i32 %17 to i64, !dbg !1268
  %cmp16 = icmp ult i64 %conv, 45, !dbg !1270
  br i1 %cmp16, label %for.body18, label %for.end, !dbg !1271

for.body18:                                       ; preds = %for.cond15
  %18 = load ptr, ptr %table, align 8, !dbg !1272
  %signature = getelementptr inbounds %struct.acpi_table_header, ptr %18, i32 0, i32 0, !dbg !1274
  %arraydecay19 = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !1272
  %19 = load i32, ptr %sig, align 4, !dbg !1275
  %idxprom = sext i32 %19 to i64, !dbg !1276
  %arrayidx = getelementptr [45 x [4 x i8]], ptr @table_sigs, i64 0, i64 %idxprom, !dbg !1276
  %arraydecay20 = getelementptr inbounds [4 x i8], ptr %arrayidx, i64 0, i64 0, !dbg !1276
  %call21 = call i32 @memcmp(ptr noundef %arraydecay19, ptr noundef %arraydecay20, i64 noundef 4) #13, !dbg !1277
  %tobool22 = icmp ne i32 %call21, 0, !dbg !1277
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !1278

if.then23:                                        ; preds = %for.body18
  br label %for.end, !dbg !1279

if.end24:                                         ; preds = %for.body18
  br label %for.inc, !dbg !1280

for.inc:                                          ; preds = %if.end24
  %20 = load i32, ptr %sig, align 4, !dbg !1281
  %inc = add i32 %20, 1, !dbg !1281
  store i32 %inc, ptr %sig, align 4, !dbg !1281
  br label %for.cond15, !dbg !1282, !llvm.loop !1283

for.end:                                          ; preds = %if.then23, %for.cond15
  %21 = load i32, ptr %sig, align 4, !dbg !1285
  %conv25 = sext i32 %21 to i64, !dbg !1285
  %cmp26 = icmp uge i64 %conv25, 45, !dbg !1287
  br i1 %cmp26, label %if.then28, label %if.end37, !dbg !1288

if.then28:                                        ; preds = %for.end
  br label %do.body29, !dbg !1289

do.body29:                                        ; preds = %if.then28
  br label %do.cond30, !dbg !1292

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !1292

do.end31:                                         ; preds = %do.cond30
  %arraydecay33 = getelementptr inbounds [32 x i8], ptr %cpio_path, i64 0, i64 0, !dbg !1289
  %name34 = getelementptr inbounds %struct.cpio_data, ptr %file, i32 0, i32 2, !dbg !1289
  %arraydecay35 = getelementptr inbounds [18 x i8], ptr %name34, i64 0, i64 0, !dbg !1289
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, ptr noundef %arraydecay33, ptr noundef %arraydecay35) #12, !dbg !1289
  store i32 %call36, ptr %tmp32, align 4, !dbg !1292
  %22 = load i32, ptr %tmp32, align 4, !dbg !1289
  br label %for.inc87, !dbg !1294

if.end37:                                         ; preds = %for.end
  %size38 = getelementptr inbounds %struct.cpio_data, ptr %file, i32 0, i32 1, !dbg !1295
  %23 = load i64, ptr %size38, align 8, !dbg !1295
  %24 = load ptr, ptr %table, align 8, !dbg !1297
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %24, i32 0, i32 1, !dbg !1298
  %25 = load i32, ptr %length, align 1, !dbg !1298
  %conv39 = zext i32 %25 to i64, !dbg !1297
  %cmp40 = icmp ne i64 %23, %conv39, !dbg !1299
  br i1 %cmp40, label %if.then42, label %if.end51, !dbg !1300

if.then42:                                        ; preds = %if.end37
  br label %do.body43, !dbg !1301

do.body43:                                        ; preds = %if.then42
  br label %do.cond44, !dbg !1304

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !1304

do.end45:                                         ; preds = %do.cond44
  %arraydecay47 = getelementptr inbounds [32 x i8], ptr %cpio_path, i64 0, i64 0, !dbg !1301
  %name48 = getelementptr inbounds %struct.cpio_data, ptr %file, i32 0, i32 2, !dbg !1301
  %arraydecay49 = getelementptr inbounds [18 x i8], ptr %name48, i64 0, i64 0, !dbg !1301
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, ptr noundef %arraydecay47, ptr noundef %arraydecay49) #12, !dbg !1301
  store i32 %call50, ptr %tmp46, align 4, !dbg !1304
  %26 = load i32, ptr %tmp46, align 4, !dbg !1301
  br label %for.inc87, !dbg !1306

if.end51:                                         ; preds = %if.end37
  %data52 = getelementptr inbounds %struct.cpio_data, ptr %file, i32 0, i32 0, !dbg !1307
  %27 = load ptr, ptr %data52, align 8, !dbg !1307
  %28 = load ptr, ptr %table, align 8, !dbg !1309
  %length53 = getelementptr inbounds %struct.acpi_table_header, ptr %28, i32 0, i32 1, !dbg !1310
  %29 = load i32, ptr %length53, align 1, !dbg !1310
  %call54 = call zeroext i8 @acpi_table_checksum(ptr noundef %27, i32 noundef %29) #12, !dbg !1311
  %tobool55 = icmp ne i8 %call54, 0, !dbg !1311
  br i1 %tobool55, label %if.then56, label %if.end65, !dbg !1312

if.then56:                                        ; preds = %if.end51
  br label %do.body57, !dbg !1313

do.body57:                                        ; preds = %if.then56
  br label %do.cond58, !dbg !1316

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !1316

do.end59:                                         ; preds = %do.cond58
  %arraydecay61 = getelementptr inbounds [32 x i8], ptr %cpio_path, i64 0, i64 0, !dbg !1313
  %name62 = getelementptr inbounds %struct.cpio_data, ptr %file, i32 0, i32 2, !dbg !1313
  %arraydecay63 = getelementptr inbounds [18 x i8], ptr %name62, i64 0, i64 0, !dbg !1313
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, ptr noundef %arraydecay61, ptr noundef %arraydecay63) #12, !dbg !1313
  store i32 %call64, ptr %tmp60, align 4, !dbg !1316
  %30 = load i32, ptr %tmp60, align 4, !dbg !1313
  br label %for.inc87, !dbg !1318

if.end65:                                         ; preds = %if.end51
  br label %do.body66, !dbg !1319

do.body66:                                        ; preds = %if.end65
  br label %do.cond67, !dbg !1321

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !1321

do.end68:                                         ; preds = %do.cond67
  %31 = load ptr, ptr %table, align 8, !dbg !1319
  %signature70 = getelementptr inbounds %struct.acpi_table_header, ptr %31, i32 0, i32 0, !dbg !1319
  %arraydecay71 = getelementptr inbounds [4 x i8], ptr %signature70, i64 0, i64 0, !dbg !1319
  %arraydecay72 = getelementptr inbounds [32 x i8], ptr %cpio_path, i64 0, i64 0, !dbg !1319
  %name73 = getelementptr inbounds %struct.cpio_data, ptr %file, i32 0, i32 2, !dbg !1319
  %arraydecay74 = getelementptr inbounds [18 x i8], ptr %name73, i64 0, i64 0, !dbg !1319
  %32 = load ptr, ptr %table, align 8, !dbg !1319
  %length75 = getelementptr inbounds %struct.acpi_table_header, ptr %32, i32 0, i32 1, !dbg !1319
  %33 = load i32, ptr %length75, align 1, !dbg !1319
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14, ptr noundef %arraydecay71, ptr noundef %arraydecay72, ptr noundef %arraydecay74, i32 noundef %33) #12, !dbg !1319
  store i32 %call76, ptr %tmp69, align 4, !dbg !1321
  %34 = load i32, ptr %tmp69, align 4, !dbg !1319
  %35 = load ptr, ptr %table, align 8, !dbg !1323
  %length77 = getelementptr inbounds %struct.acpi_table_header, ptr %35, i32 0, i32 1, !dbg !1324
  %36 = load i32, ptr %length77, align 1, !dbg !1324
  %37 = load i32, ptr @all_tables_size, align 4, !dbg !1325
  %add = add i32 %37, %36, !dbg !1325
  store i32 %add, ptr @all_tables_size, align 4, !dbg !1325
  %data78 = getelementptr inbounds %struct.cpio_data, ptr %file, i32 0, i32 0, !dbg !1326
  %38 = load ptr, ptr %data78, align 8, !dbg !1326
  %39 = load i32, ptr %table_nr, align 4, !dbg !1327
  %idxprom79 = sext i32 %39 to i64, !dbg !1328
  %arrayidx80 = getelementptr [64 x %struct.cpio_data], ptr @acpi_initrd_files, i64 0, i64 %idxprom79, !dbg !1328
  %data81 = getelementptr inbounds %struct.cpio_data, ptr %arrayidx80, i32 0, i32 0, !dbg !1329
  store ptr %38, ptr %data81, align 8, !dbg !1330
  %size82 = getelementptr inbounds %struct.cpio_data, ptr %file, i32 0, i32 1, !dbg !1331
  %40 = load i64, ptr %size82, align 8, !dbg !1331
  %41 = load i32, ptr %table_nr, align 4, !dbg !1332
  %idxprom83 = sext i32 %41 to i64, !dbg !1333
  %arrayidx84 = getelementptr [64 x %struct.cpio_data], ptr @acpi_initrd_files, i64 0, i64 %idxprom83, !dbg !1333
  %size85 = getelementptr inbounds %struct.cpio_data, ptr %arrayidx84, i32 0, i32 1, !dbg !1334
  store i64 %40, ptr %size85, align 8, !dbg !1335
  %42 = load i32, ptr %table_nr, align 4, !dbg !1336
  %inc86 = add i32 %42, 1, !dbg !1336
  store i32 %inc86, ptr %table_nr, align 4, !dbg !1336
  br label %for.inc87, !dbg !1337

for.inc87:                                        ; preds = %do.end68, %do.end59, %do.end45, %do.end31, %do.end
  %43 = load i32, ptr %no, align 4, !dbg !1338
  %inc88 = add i32 %43, 1, !dbg !1338
  store i32 %inc88, ptr %no, align 4, !dbg !1338
  br label %for.cond, !dbg !1339, !llvm.loop !1340

for.end89:                                        ; preds = %if.then4, %for.cond
  %44 = load i32, ptr %table_nr, align 4, !dbg !1342
  %cmp90 = icmp eq i32 %44, 0, !dbg !1344
  br i1 %cmp90, label %if.then92, label %if.end93, !dbg !1345

if.then92:                                        ; preds = %for.end89
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1346

if.end93:                                         ; preds = %for.end89
  %call94 = call i32 @security_locked_down(i32 noundef 9) #13, !dbg !1347
  %tobool95 = icmp ne i32 %call94, 0, !dbg !1347
  br i1 %tobool95, label %if.then96, label %if.end102, !dbg !1349

if.then96:                                        ; preds = %if.end93
  br label %do.body97, !dbg !1350

do.body97:                                        ; preds = %if.then96
  br label %do.cond98, !dbg !1353

do.cond98:                                        ; preds = %do.body97
  br label %do.end99, !dbg !1353

do.end99:                                         ; preds = %do.cond98
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15) #12, !dbg !1350
  store i32 %call101, ptr %tmp100, align 4, !dbg !1353
  %45 = load i32, ptr %tmp100, align 4, !dbg !1350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1355

if.end102:                                        ; preds = %if.end93
  %46 = load i32, ptr @all_tables_size, align 4, !dbg !1356
  %conv103 = sext i32 %46 to i64, !dbg !1356
  %47 = load i64, ptr @max_low_pfn_mapped, align 8, !dbg !1357
  %shl = shl i64 %47, 12, !dbg !1357
  %call104 = call i64 @memblock_phys_alloc_range(i64 noundef %conv103, i64 noundef 4096, i64 noundef 0, i64 noundef %shl) #13, !dbg !1358
  store i64 %call104, ptr @acpi_tables_addr, align 8, !dbg !1359
  %48 = load i64, ptr @acpi_tables_addr, align 8, !dbg !1360
  %tobool105 = icmp ne i64 %48, 0, !dbg !1360
  br i1 %tobool105, label %if.end133, label %if.then106, !dbg !1361

if.then106:                                       ; preds = %if.end102
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1362
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1180, metadata !DIExpression()), !dbg !1362
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1362
  %49 = load i32, ptr %__ret_warn_on, align 4, !dbg !1363
  %tobool107 = icmp ne i32 %49, 0, !dbg !1363
  %lnot = xor i1 %tobool107, true, !dbg !1363
  %lnot108 = xor i1 %lnot, true, !dbg !1363
  %lnot.ext = zext i1 %lnot108 to i32, !dbg !1363
  %conv109 = sext i32 %lnot.ext to i64, !dbg !1363
  %expval = call i64 @llvm.expect.i64(i64 %conv109, i64 0), !dbg !1363
  %tobool110 = icmp ne i64 %expval, 0, !dbg !1363
  br i1 %tobool110, label %if.then111, label %if.end124, !dbg !1362

if.then111:                                       ; preds = %if.then106
  br label %do.body112, !dbg !1363

do.body112:                                       ; preds = %if.then111
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !1364
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1184, metadata !DIExpression()), !dbg !1364
  store i32 2305, ptr %__flags, align 4, !dbg !1364
  br label %do.body113, !dbg !1364

do.body113:                                       ; preds = %do.body112
  br label %do.cond114, !dbg !1365

do.cond114:                                       ; preds = %do.body113
  br label %do.end115, !dbg !1365

do.end115:                                        ; preds = %do.cond114
  br label %do.body116, !dbg !1364

do.body116:                                       ; preds = %do.end115
  %50 = load i32, ptr %__flags, align 4, !dbg !1367
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.16, i32 656, i32 %50, i64 12) #11, !dbg !1367, !srcloc !1369
  br label %do.cond117, !dbg !1367

do.cond117:                                       ; preds = %do.body116
  br label %do.end118, !dbg !1367

do.end118:                                        ; preds = %do.cond117
  br label %do.body119, !dbg !1364

do.body119:                                       ; preds = %do.end118
  br label %do.cond120, !dbg !1370

do.cond120:                                       ; preds = %do.body119
  br label %do.end121, !dbg !1370

do.end121:                                        ; preds = %do.cond120
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !1363
  br label %do.cond122, !dbg !1364

do.cond122:                                       ; preds = %do.end121
  br label %do.end123, !dbg !1364

do.end123:                                        ; preds = %do.cond122
  br label %if.end124, !dbg !1364

if.end124:                                        ; preds = %do.end123, %if.then106
  %51 = load i32, ptr %__ret_warn_on, align 4, !dbg !1362
  %tobool126 = icmp ne i32 %51, 0, !dbg !1362
  %lnot127 = xor i1 %tobool126, true, !dbg !1362
  %lnot129 = xor i1 %lnot127, true, !dbg !1362
  %lnot.ext130 = zext i1 %lnot129 to i32, !dbg !1362
  %conv131 = sext i32 %lnot.ext130 to i64, !dbg !1362
  %expval132 = call i64 @llvm.expect.i64(i64 %conv131, i64 0), !dbg !1362
  store i64 %expval132, ptr %tmp125, align 8, !dbg !1363
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1372
  %52 = load i64, ptr %tmp125, align 8, !dbg !1362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1373

if.end133:                                        ; preds = %if.end102
  %53 = load i64, ptr @acpi_tables_addr, align 8, !dbg !1374
  %54 = load i32, ptr @all_tables_size, align 4, !dbg !1375
  %conv134 = sext i32 %54 to i64, !dbg !1375
  call void @arch_reserve_mem_area(i64 noundef %53, i64 noundef %conv134) #13, !dbg !1376
  %55 = load i64, ptr @acpi_tables_addr, align 8, !dbg !1377
  call void @kmemleak_ignore_phys(i64 noundef %55) #13, !dbg !1378
  store i32 0, ptr %no, align 4, !dbg !1379
  br label %for.cond135, !dbg !1380

for.cond135:                                      ; preds = %for.inc166, %if.end133
  %56 = load i32, ptr %no, align 4, !dbg !1381
  %57 = load i32, ptr %table_nr, align 4, !dbg !1382
  %cmp136 = icmp slt i32 %56, %57, !dbg !1383
  br i1 %cmp136, label %for.body138, label %for.end168, !dbg !1384

for.body138:                                      ; preds = %for.cond135
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_p) #11, !dbg !1385
  call void @llvm.dbg.declare(metadata ptr %src_p, metadata !1187, metadata !DIExpression()), !dbg !1386
  %58 = load i32, ptr %no, align 4, !dbg !1387
  %idxprom139 = sext i32 %58 to i64, !dbg !1388
  %arrayidx140 = getelementptr [64 x %struct.cpio_data], ptr @acpi_initrd_files, i64 0, i64 %idxprom139, !dbg !1388
  %data141 = getelementptr inbounds %struct.cpio_data, ptr %arrayidx140, i32 0, i32 0, !dbg !1389
  %59 = load ptr, ptr %data141, align 8, !dbg !1389
  store ptr %59, ptr %src_p, align 8, !dbg !1386
  call void @llvm.lifetime.start.p0(i64 8, ptr %size142) #11, !dbg !1390
  call void @llvm.dbg.declare(metadata ptr %size142, metadata !1192, metadata !DIExpression()), !dbg !1391
  %60 = load i32, ptr %no, align 4, !dbg !1392
  %idxprom143 = sext i32 %60 to i64, !dbg !1393
  %arrayidx144 = getelementptr [64 x %struct.cpio_data], ptr @acpi_initrd_files, i64 0, i64 %idxprom143, !dbg !1393
  %size145 = getelementptr inbounds %struct.cpio_data, ptr %arrayidx144, i32 0, i32 1, !dbg !1394
  %61 = load i64, ptr %size145, align 8, !dbg !1394
  store i64 %61, ptr %size142, align 8, !dbg !1391
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest_addr) #11, !dbg !1395
  call void @llvm.dbg.declare(metadata ptr %dest_addr, metadata !1194, metadata !DIExpression()), !dbg !1396
  %62 = load i64, ptr @acpi_tables_addr, align 8, !dbg !1397
  %63 = load i32, ptr %total_offset, align 4, !dbg !1398
  %conv146 = sext i32 %63 to i64, !dbg !1398
  %add147 = add i64 %62, %conv146, !dbg !1399
  store i64 %add147, ptr %dest_addr, align 8, !dbg !1396
  call void @llvm.lifetime.start.p0(i64 8, ptr %slop) #11, !dbg !1400
  call void @llvm.dbg.declare(metadata ptr %slop, metadata !1195, metadata !DIExpression()), !dbg !1401
  call void @llvm.lifetime.start.p0(i64 8, ptr %clen) #11, !dbg !1400
  call void @llvm.dbg.declare(metadata ptr %clen, metadata !1196, metadata !DIExpression()), !dbg !1402
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest_p) #11, !dbg !1403
  call void @llvm.dbg.declare(metadata ptr %dest_p, metadata !1197, metadata !DIExpression()), !dbg !1404
  %64 = load i64, ptr %size142, align 8, !dbg !1405
  %65 = load i32, ptr %total_offset, align 4, !dbg !1406
  %conv148 = sext i32 %65 to i64, !dbg !1406
  %add149 = add i64 %conv148, %64, !dbg !1406
  %conv150 = trunc i64 %add149 to i32, !dbg !1406
  store i32 %conv150, ptr %total_offset, align 4, !dbg !1406
  br label %while.cond, !dbg !1407

while.cond:                                       ; preds = %if.end157, %for.body138
  %66 = load i64, ptr %size142, align 8, !dbg !1408
  %tobool151 = icmp ne i64 %66, 0, !dbg !1407
  br i1 %tobool151, label %while.body, label %while.end, !dbg !1407

while.body:                                       ; preds = %while.cond
  %67 = load i64, ptr %dest_addr, align 8, !dbg !1409
  %and = and i64 %67, 4095, !dbg !1411
  store i64 %and, ptr %slop, align 8, !dbg !1412
  %68 = load i64, ptr %size142, align 8, !dbg !1413
  store i64 %68, ptr %clen, align 8, !dbg !1414
  %69 = load i64, ptr %clen, align 8, !dbg !1415
  %70 = load i64, ptr %slop, align 8, !dbg !1417
  %sub152 = sub i64 262144, %70, !dbg !1418
  %cmp153 = icmp ugt i64 %69, %sub152, !dbg !1419
  br i1 %cmp153, label %if.then155, label %if.end157, !dbg !1420

if.then155:                                       ; preds = %while.body
  %71 = load i64, ptr %slop, align 8, !dbg !1421
  %sub156 = sub i64 262144, %71, !dbg !1422
  store i64 %sub156, ptr %clen, align 8, !dbg !1423
  br label %if.end157, !dbg !1424

if.end157:                                        ; preds = %if.then155, %while.body
  %72 = load i64, ptr %dest_addr, align 8, !dbg !1425
  %and158 = and i64 %72, -4096, !dbg !1426
  %73 = load i64, ptr %clen, align 8, !dbg !1427
  %74 = load i64, ptr %slop, align 8, !dbg !1428
  %add159 = add i64 %73, %74, !dbg !1429
  %call160 = call ptr @early_memremap(i64 noundef %and158, i64 noundef %add159) #13, !dbg !1430
  store ptr %call160, ptr %dest_p, align 8, !dbg !1431
  %75 = load ptr, ptr %dest_p, align 8, !dbg !1432
  %76 = load i64, ptr %slop, align 8, !dbg !1433
  %add.ptr161 = getelementptr i8, ptr %75, i64 %76, !dbg !1434
  %77 = load ptr, ptr %src_p, align 8, !dbg !1435
  %78 = load i64, ptr %clen, align 8, !dbg !1436
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr161, ptr align 1 %77, i64 %78, i1 false), !dbg !1437
  %79 = load ptr, ptr %dest_p, align 8, !dbg !1438
  %80 = load i64, ptr %clen, align 8, !dbg !1439
  %81 = load i64, ptr %slop, align 8, !dbg !1440
  %add162 = add i64 %80, %81, !dbg !1441
  call void @early_memunmap(ptr noundef %79, i64 noundef %add162) #13, !dbg !1442
  %82 = load i64, ptr %clen, align 8, !dbg !1443
  %83 = load ptr, ptr %src_p, align 8, !dbg !1444
  %add.ptr163 = getelementptr i8, ptr %83, i64 %82, !dbg !1444
  store ptr %add.ptr163, ptr %src_p, align 8, !dbg !1444
  %84 = load i64, ptr %clen, align 8, !dbg !1445
  %85 = load i64, ptr %dest_addr, align 8, !dbg !1446
  %add164 = add i64 %85, %84, !dbg !1446
  store i64 %add164, ptr %dest_addr, align 8, !dbg !1446
  %86 = load i64, ptr %clen, align 8, !dbg !1447
  %87 = load i64, ptr %size142, align 8, !dbg !1448
  %sub165 = sub i64 %87, %86, !dbg !1448
  store i64 %sub165, ptr %size142, align 8, !dbg !1448
  br label %while.cond, !dbg !1407, !llvm.loop !1449

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest_p) #11, !dbg !1451
  call void @llvm.lifetime.end.p0(i64 8, ptr %clen) #11, !dbg !1451
  call void @llvm.lifetime.end.p0(i64 8, ptr %slop) #11, !dbg !1451
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest_addr) #11, !dbg !1451
  call void @llvm.lifetime.end.p0(i64 8, ptr %size142) #11, !dbg !1451
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_p) #11, !dbg !1451
  br label %for.inc166, !dbg !1452

for.inc166:                                       ; preds = %while.end
  %88 = load i32, ptr %no, align 4, !dbg !1453
  %inc167 = add i32 %88, 1, !dbg !1453
  store i32 %inc167, ptr %no, align 4, !dbg !1453
  br label %for.cond135, !dbg !1454, !llvm.loop !1455

for.end168:                                       ; preds = %for.cond135
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1457
  br label %cleanup, !dbg !1457

cleanup:                                          ; preds = %for.end168, %if.end124, %do.end99, %if.then92, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr %file) #11, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 32, ptr %cpio_path) #11, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #11, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #11, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 4, ptr %total_offset) #11, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_nr) #11, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 4, ptr %no) #11, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 4, ptr %sig) #11, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #11, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #11, !dbg !1457
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1457

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1458 dso_local void @find_cpio_data(ptr dead_on_unwind writable sret(%struct.cpio_data) align 8, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1462 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i8 @acpi_table_checksum(ptr noundef %buffer, i32 noundef %length) #4 section ".init.text" align 16 !dbg !1467 {
entry:
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %sum = alloca i8, align 1
  %end = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !1472, metadata !DIExpression()), !dbg !1476
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.lifetime.start.p0(i64 1, ptr %sum) #11, !dbg !1478
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !1474, metadata !DIExpression()), !dbg !1479
  store i8 0, ptr %sum, align 1, !dbg !1479
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #11, !dbg !1480
  call void @llvm.dbg.declare(metadata ptr %end, metadata !1475, metadata !DIExpression()), !dbg !1481
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !1482
  %1 = load i32, ptr %length.addr, align 4, !dbg !1483
  %idx.ext = zext i32 %1 to i64, !dbg !1484
  %add.ptr = getelementptr i8, ptr %0, i64 %idx.ext, !dbg !1484
  store ptr %add.ptr, ptr %end, align 8, !dbg !1481
  br label %while.cond, !dbg !1485

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !1486
  %3 = load ptr, ptr %end, align 8, !dbg !1487
  %cmp = icmp ult ptr %2, %3, !dbg !1488
  br i1 %cmp, label %while.body, label %while.end, !dbg !1485

while.body:                                       ; preds = %while.cond
  %4 = load i8, ptr %sum, align 1, !dbg !1489
  %conv = zext i8 %4 to i32, !dbg !1489
  %5 = load ptr, ptr %buffer.addr, align 8, !dbg !1490
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !1490
  store ptr %incdec.ptr, ptr %buffer.addr, align 8, !dbg !1490
  %6 = load i8, ptr %5, align 1, !dbg !1491
  %conv1 = zext i8 %6 to i32, !dbg !1491
  %add = add i32 %conv, %conv1, !dbg !1492
  %conv2 = trunc i32 %add to i8, !dbg !1493
  store i8 %conv2, ptr %sum, align 1, !dbg !1494
  br label %while.cond, !dbg !1485, !llvm.loop !1495

while.end:                                        ; preds = %while.cond
  %7 = load i8, ptr %sum, align 1, !dbg !1497
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #11, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 1, ptr %sum) #11, !dbg !1498
  ret i8 %7, !dbg !1499
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1500 dso_local i32 @security_locked_down(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1503 dso_local i64 @memblock_phys_alloc_range(i64 noundef, i64 noundef, i64 noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1507 dso_local void @arch_reserve_mem_area(i64 noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmemleak_ignore_phys(i64 noundef %phys) #8 align 16 !dbg !1510 {
entry:
  %phys.addr = alloca i64, align 8
  store i64 %phys, ptr %phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys.addr, metadata !1515, metadata !DIExpression()), !dbg !1516
  ret void, !dbg !1517
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1518 dso_local ptr @early_memremap(i64 noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1523 dso_local void @early_memunmap(ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_os_physical_table_override(ptr noundef %existing_table, ptr noundef %address, ptr noundef %table_length) #0 align 16 !dbg !1526 {
entry:
  %existing_table.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %table_length.addr = alloca ptr, align 8
  store ptr %existing_table, ptr %existing_table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %existing_table.addr, metadata !1531, metadata !DIExpression()), !dbg !1534
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1532, metadata !DIExpression()), !dbg !1535
  store ptr %table_length, ptr %table_length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_length.addr, metadata !1533, metadata !DIExpression()), !dbg !1536
  %0 = load ptr, ptr %existing_table.addr, align 8, !dbg !1537
  %1 = load ptr, ptr %address.addr, align 8, !dbg !1538
  %2 = load ptr, ptr %table_length.addr, align 8, !dbg !1539
  %call = call i32 @acpi_table_initrd_override(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13, !dbg !1540
  ret i32 %call, !dbg !1541
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_table_initrd_override(ptr noundef %existing_table, ptr noundef %address, ptr noundef %length) #0 align 16 !dbg !1542 {
entry:
  %retval = alloca i32, align 4
  %existing_table.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  %table_offset = alloca i32, align 4
  %table_index = alloca i32, align 4
  %table = alloca ptr, align 8
  %table_length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp65 = alloca i32, align 4
  store ptr %existing_table, ptr %existing_table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %existing_table.addr, metadata !1544, metadata !DIExpression()), !dbg !1560
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1545, metadata !DIExpression()), !dbg !1561
  store ptr %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !1546, metadata !DIExpression()), !dbg !1562
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_offset) #11, !dbg !1563
  call void @llvm.dbg.declare(metadata ptr %table_offset, metadata !1547, metadata !DIExpression()), !dbg !1564
  store i32 0, ptr %table_offset, align 4, !dbg !1564
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_index) #11, !dbg !1565
  call void @llvm.dbg.declare(metadata ptr %table_index, metadata !1548, metadata !DIExpression()), !dbg !1566
  store i32 0, ptr %table_index, align 4, !dbg !1566
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #11, !dbg !1567
  call void @llvm.dbg.declare(metadata ptr %table, metadata !1549, metadata !DIExpression()), !dbg !1568
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_length) #11, !dbg !1569
  call void @llvm.dbg.declare(metadata ptr %table_length, metadata !1550, metadata !DIExpression()), !dbg !1570
  %0 = load ptr, ptr %length.addr, align 8, !dbg !1571
  store i32 0, ptr %0, align 4, !dbg !1572
  %1 = load ptr, ptr %address.addr, align 8, !dbg !1573
  store i64 0, ptr %1, align 8, !dbg !1574
  %2 = load i64, ptr @acpi_tables_addr, align 8, !dbg !1575
  %tobool = icmp ne i64 %2, 0, !dbg !1575
  br i1 %tobool, label %if.end, label %if.then, !dbg !1577

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1578

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !1579

while.cond:                                       ; preds = %next_table, %if.end
  %3 = load i32, ptr %table_offset, align 4, !dbg !1580
  %conv = sext i32 %3 to i64, !dbg !1580
  %add = add i64 %conv, 36, !dbg !1581
  %4 = load i32, ptr @all_tables_size, align 4, !dbg !1582
  %conv1 = sext i32 %4 to i64, !dbg !1582
  %cmp = icmp ule i64 %add, %conv1, !dbg !1583
  br i1 %cmp, label %while.body, label %while.end, !dbg !1579

while.body:                                       ; preds = %while.cond
  %5 = load i64, ptr @acpi_tables_addr, align 8, !dbg !1584
  %6 = load i32, ptr %table_offset, align 4, !dbg !1585
  %conv3 = sext i32 %6 to i64, !dbg !1585
  %add4 = add i64 %5, %conv3, !dbg !1586
  %call = call ptr @acpi_os_map_memory(i64 noundef %add4, i64 noundef 36) #13, !dbg !1587
  store ptr %call, ptr %table, align 8, !dbg !1588
  %7 = load i32, ptr %table_offset, align 4, !dbg !1589
  %8 = load ptr, ptr %table, align 8, !dbg !1590
  %length5 = getelementptr inbounds %struct.acpi_table_header, ptr %8, i32 0, i32 1, !dbg !1591
  %9 = load i32, ptr %length5, align 1, !dbg !1591
  %add6 = add i32 %7, %9, !dbg !1592
  %10 = load i32, ptr @all_tables_size, align 4, !dbg !1593
  %cmp7 = icmp ugt i32 %add6, %10, !dbg !1594
  br i1 %cmp7, label %if.then9, label %if.end32, !dbg !1595

if.then9:                                         ; preds = %while.body
  %11 = load ptr, ptr %table, align 8, !dbg !1596
  call void @acpi_os_unmap_memory(ptr noundef %11, i64 noundef 36) #13, !dbg !1597
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1598
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1551, metadata !DIExpression()), !dbg !1598
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1598
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !1599
  %tobool10 = icmp ne i32 %12, 0, !dbg !1599
  %lnot = xor i1 %tobool10, true, !dbg !1599
  %lnot11 = xor i1 %lnot, true, !dbg !1599
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !1599
  %conv12 = sext i32 %lnot.ext to i64, !dbg !1599
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !1599
  %tobool13 = icmp ne i64 %expval, 0, !dbg !1599
  br i1 %tobool13, label %if.then14, label %if.end24, !dbg !1598

if.then14:                                        ; preds = %if.then9
  br label %do.body, !dbg !1599

do.body:                                          ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !1600
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1556, metadata !DIExpression()), !dbg !1600
  store i32 2305, ptr %__flags, align 4, !dbg !1600
  br label %do.body15, !dbg !1600

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !1601

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !1601

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !1600

do.body16:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !1603
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.16, i32 722, i32 %13, i64 12) #11, !dbg !1603, !srcloc !1605
  br label %do.cond17, !dbg !1603

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !1603

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !1600

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !1606

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !1606

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !1599
  br label %do.cond22, !dbg !1600

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !1600

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !1600

if.end24:                                         ; preds = %do.end23, %if.then9
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !1598
  %tobool25 = icmp ne i32 %14, 0, !dbg !1598
  %lnot26 = xor i1 %tobool25, true, !dbg !1598
  %lnot28 = xor i1 %lnot26, true, !dbg !1598
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !1598
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !1598
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !1598
  store i64 %expval31, ptr %tmp, align 8, !dbg !1599
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1608
  %15 = load i64, ptr %tmp, align 8, !dbg !1598
  store i32 0, ptr %retval, align 4, !dbg !1609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1609

if.end32:                                         ; preds = %while.body
  %16 = load ptr, ptr %table, align 8, !dbg !1610
  %length33 = getelementptr inbounds %struct.acpi_table_header, ptr %16, i32 0, i32 1, !dbg !1611
  %17 = load i32, ptr %length33, align 1, !dbg !1611
  store i32 %17, ptr %table_length, align 4, !dbg !1612
  %18 = load ptr, ptr %existing_table.addr, align 8, !dbg !1613
  %signature = getelementptr inbounds %struct.acpi_table_header, ptr %18, i32 0, i32 0, !dbg !1615
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !1613
  %19 = load ptr, ptr %table, align 8, !dbg !1616
  %signature34 = getelementptr inbounds %struct.acpi_table_header, ptr %19, i32 0, i32 0, !dbg !1617
  %arraydecay35 = getelementptr inbounds [4 x i8], ptr %signature34, i64 0, i64 0, !dbg !1616
  %call36 = call i32 @memcmp(ptr noundef %arraydecay, ptr noundef %arraydecay35, i64 noundef 4) #13, !dbg !1618
  %tobool37 = icmp ne i32 %call36, 0, !dbg !1618
  br i1 %tobool37, label %if.then49, label %lor.lhs.false, !dbg !1619

lor.lhs.false:                                    ; preds = %if.end32
  %20 = load ptr, ptr %table, align 8, !dbg !1620
  %oem_id = getelementptr inbounds %struct.acpi_table_header, ptr %20, i32 0, i32 4, !dbg !1621
  %arraydecay38 = getelementptr inbounds [6 x i8], ptr %oem_id, i64 0, i64 0, !dbg !1620
  %21 = load ptr, ptr %existing_table.addr, align 8, !dbg !1622
  %oem_id39 = getelementptr inbounds %struct.acpi_table_header, ptr %21, i32 0, i32 4, !dbg !1623
  %arraydecay40 = getelementptr inbounds [6 x i8], ptr %oem_id39, i64 0, i64 0, !dbg !1622
  %call41 = call i32 @memcmp(ptr noundef %arraydecay38, ptr noundef %arraydecay40, i64 noundef 6) #13, !dbg !1624
  %tobool42 = icmp ne i32 %call41, 0, !dbg !1624
  br i1 %tobool42, label %if.then49, label %lor.lhs.false43, !dbg !1625

lor.lhs.false43:                                  ; preds = %lor.lhs.false
  %22 = load ptr, ptr %table, align 8, !dbg !1626
  %oem_table_id = getelementptr inbounds %struct.acpi_table_header, ptr %22, i32 0, i32 5, !dbg !1627
  %arraydecay44 = getelementptr inbounds [8 x i8], ptr %oem_table_id, i64 0, i64 0, !dbg !1626
  %23 = load ptr, ptr %existing_table.addr, align 8, !dbg !1628
  %oem_table_id45 = getelementptr inbounds %struct.acpi_table_header, ptr %23, i32 0, i32 5, !dbg !1629
  %arraydecay46 = getelementptr inbounds [8 x i8], ptr %oem_table_id45, i64 0, i64 0, !dbg !1628
  %call47 = call i32 @memcmp(ptr noundef %arraydecay44, ptr noundef %arraydecay46, i64 noundef 8) #13, !dbg !1630
  %tobool48 = icmp ne i32 %call47, 0, !dbg !1630
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !1631

if.then49:                                        ; preds = %lor.lhs.false43, %lor.lhs.false, %if.end32
  %24 = load ptr, ptr %table, align 8, !dbg !1632
  call void @acpi_os_unmap_memory(ptr noundef %24, i64 noundef 36) #13, !dbg !1634
  br label %next_table, !dbg !1635

if.end50:                                         ; preds = %lor.lhs.false43
  %25 = load i32, ptr %table_index, align 4, !dbg !1636
  %conv51 = sext i32 %25 to i64, !dbg !1636
  %call52 = call zeroext i1 @test_and_set_bit(i64 noundef %conv51, ptr noundef @acpi_initrd_installed) #13, !dbg !1638
  br i1 %call52, label %if.then58, label %lor.lhs.false54, !dbg !1639

lor.lhs.false54:                                  ; preds = %if.end50
  %26 = load ptr, ptr %existing_table.addr, align 8, !dbg !1640
  %oem_revision = getelementptr inbounds %struct.acpi_table_header, ptr %26, i32 0, i32 6, !dbg !1641
  %27 = load i32, ptr %oem_revision, align 1, !dbg !1641
  %28 = load ptr, ptr %table, align 8, !dbg !1642
  %oem_revision55 = getelementptr inbounds %struct.acpi_table_header, ptr %28, i32 0, i32 6, !dbg !1643
  %29 = load i32, ptr %oem_revision55, align 1, !dbg !1643
  %cmp56 = icmp uge i32 %27, %29, !dbg !1644
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !1645

if.then58:                                        ; preds = %lor.lhs.false54, %if.end50
  %30 = load ptr, ptr %table, align 8, !dbg !1646
  call void @acpi_os_unmap_memory(ptr noundef %30, i64 noundef 36) #13, !dbg !1648
  br label %next_table, !dbg !1649

if.end59:                                         ; preds = %lor.lhs.false54
  %31 = load i32, ptr %table_length, align 4, !dbg !1650
  %32 = load ptr, ptr %length.addr, align 8, !dbg !1651
  store i32 %31, ptr %32, align 4, !dbg !1652
  %33 = load i64, ptr @acpi_tables_addr, align 8, !dbg !1653
  %34 = load i32, ptr %table_offset, align 4, !dbg !1654
  %conv60 = sext i32 %34 to i64, !dbg !1654
  %add61 = add i64 %33, %conv60, !dbg !1655
  %35 = load ptr, ptr %address.addr, align 8, !dbg !1656
  store i64 %add61, ptr %35, align 8, !dbg !1657
  br label %do.body62, !dbg !1658

do.body62:                                        ; preds = %if.end59
  br label %do.cond63, !dbg !1660

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !1660

do.end64:                                         ; preds = %do.cond63
  %36 = load ptr, ptr %table, align 8, !dbg !1658
  %signature66 = getelementptr inbounds %struct.acpi_table_header, ptr %36, i32 0, i32 0, !dbg !1658
  %arraydecay67 = getelementptr inbounds [4 x i8], ptr %signature66, i64 0, i64 0, !dbg !1658
  %37 = load ptr, ptr %table, align 8, !dbg !1658
  %oem_id68 = getelementptr inbounds %struct.acpi_table_header, ptr %37, i32 0, i32 4, !dbg !1658
  %arraydecay69 = getelementptr inbounds [6 x i8], ptr %oem_id68, i64 0, i64 0, !dbg !1658
  %38 = load ptr, ptr %table, align 8, !dbg !1658
  %oem_table_id70 = getelementptr inbounds %struct.acpi_table_header, ptr %38, i32 0, i32 5, !dbg !1658
  %arraydecay71 = getelementptr inbounds [8 x i8], ptr %oem_table_id70, i64 0, i64 0, !dbg !1658
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef @.str.30, ptr noundef %arraydecay67, ptr noundef %arraydecay69, ptr noundef %arraydecay71) #12, !dbg !1658
  store i32 %call72, ptr %tmp65, align 4, !dbg !1660
  %39 = load i32, ptr %tmp65, align 4, !dbg !1658
  %40 = load ptr, ptr %table, align 8, !dbg !1662
  call void @acpi_os_unmap_memory(ptr noundef %40, i64 noundef 36) #13, !dbg !1663
  br label %while.end, !dbg !1664

next_table:                                       ; preds = %if.then58, %if.then49
  call void @llvm.dbg.label(metadata !1559), !dbg !1665
  %41 = load i32, ptr %table_length, align 4, !dbg !1666
  %42 = load i32, ptr %table_offset, align 4, !dbg !1667
  %add73 = add i32 %42, %41, !dbg !1667
  store i32 %add73, ptr %table_offset, align 4, !dbg !1667
  %43 = load i32, ptr %table_index, align 4, !dbg !1668
  %inc = add i32 %43, 1, !dbg !1668
  store i32 %inc, ptr %table_index, align 4, !dbg !1668
  br label %while.cond, !dbg !1579, !llvm.loop !1669

while.end:                                        ; preds = %do.end64, %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1671

cleanup:                                          ; preds = %while.end, %if.end24, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_length) #11, !dbg !1672
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #11, !dbg !1672
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_index) #11, !dbg !1672
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_offset) #11, !dbg !1672
  %44 = load i32, ptr %retval, align 4, !dbg !1672
  ret i32 %44, !dbg !1672
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_os_table_override(ptr noundef %existing_table, ptr noundef %new_table) #0 align 16 !dbg !1673 {
entry:
  %retval = alloca i32, align 4
  %existing_table.addr = alloca ptr, align 8
  %new_table.addr = alloca ptr, align 8
  store ptr %existing_table, ptr %existing_table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %existing_table.addr, metadata !1677, metadata !DIExpression()), !dbg !1679
  store ptr %new_table, ptr %new_table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_table.addr, metadata !1678, metadata !DIExpression()), !dbg !1680
  %0 = load ptr, ptr %existing_table.addr, align 8, !dbg !1681
  %tobool = icmp ne ptr %0, null, !dbg !1681
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1683

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %new_table.addr, align 8, !dbg !1684
  %tobool1 = icmp ne ptr %1, null, !dbg !1684
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1685

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !1686
  br label %return, !dbg !1686

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %new_table.addr, align 8, !dbg !1687
  store ptr null, ptr %2, align 8, !dbg !1688
  %3 = load ptr, ptr %new_table.addr, align 8, !dbg !1689
  %4 = load ptr, ptr %3, align 8, !dbg !1691
  %cmp = icmp ne ptr %4, null, !dbg !1692
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1693

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %existing_table.addr, align 8, !dbg !1694
  call void @acpi_table_taint(ptr noundef %5) #13, !dbg !1695
  br label %if.end3, !dbg !1695

if.end3:                                          ; preds = %if.then2, %if.end
  store i32 0, ptr %retval, align 4, !dbg !1696
  br label %return, !dbg !1696

return:                                           ; preds = %if.end3, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !1697
  ret i32 %6, !dbg !1697
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_table_taint(ptr noundef %table) #0 align 16 !dbg !1698 {
entry:
  %table.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !1700, metadata !DIExpression()), !dbg !1701
  br label %do.body, !dbg !1702

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1704

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %table.addr, align 8, !dbg !1702
  %signature = getelementptr inbounds %struct.acpi_table_header, ptr %0, i32 0, i32 0, !dbg !1702
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !1702
  %1 = load ptr, ptr %table.addr, align 8, !dbg !1702
  %oem_table_id = getelementptr inbounds %struct.acpi_table_header, ptr %1, i32 0, i32 5, !dbg !1702
  %arraydecay1 = getelementptr inbounds [8 x i8], ptr %oem_table_id, i64 0, i64 0, !dbg !1702
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.31, ptr noundef %arraydecay, ptr noundef %arraydecay1) #12, !dbg !1702
  store i32 %call, ptr %tmp, align 4, !dbg !1704
  %2 = load i32, ptr %tmp, align 4, !dbg !1702
  call void @add_taint(i32 noundef 8, i32 noundef 1) #13, !dbg !1706
  ret void, !dbg !1707
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_locate_initial_tables() #4 section ".init.text" align 16 !dbg !1708 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #11, !dbg !1713
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1712, metadata !DIExpression()), !dbg !1714
  %0 = load i8, ptr @acpi_verify_table_checksum, align 1, !dbg !1715, !range !1717, !noundef !1718
  %tobool = trunc i8 %0 to i1, !dbg !1715
  br i1 %tobool, label %if.then, label %if.else, !dbg !1719

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1720

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1723

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1723

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.17) #12, !dbg !1720
  store i32 %call, ptr %tmp, align 4, !dbg !1723
  %1 = load i32, ptr %tmp, align 4, !dbg !1720
  store i8 1, ptr @acpi_gbl_enable_table_validation, align 1, !dbg !1725
  br label %if.end, !dbg !1726

if.else:                                          ; preds = %entry
  br label %do.body1, !dbg !1727

do.body1:                                         ; preds = %if.else
  br label %do.cond2, !dbg !1730

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !1730

do.end3:                                          ; preds = %do.cond2
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.18) #12, !dbg !1727
  store i32 %call5, ptr %tmp4, align 4, !dbg !1730
  %2 = load i32, ptr %tmp4, align 4, !dbg !1727
  store i8 0, ptr @acpi_gbl_enable_table_validation, align 1, !dbg !1732
  br label %if.end

if.end:                                           ; preds = %do.end3, %do.end
  %call6 = call i32 @acpi_initialize_tables(ptr noundef @initial_tables, i32 noundef 128, i8 noundef zeroext 0) #12, !dbg !1733
  store i32 %call6, ptr %status, align 4, !dbg !1734
  %3 = load i32, ptr %status, align 4, !dbg !1735
  %tobool7 = icmp ne i32 %3, 0, !dbg !1735
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1737

if.then8:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1738

if.end9:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1739
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1739

cleanup:                                          ; preds = %if.end9, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #11, !dbg !1740
  %4 = load i32, ptr %retval, align 4, !dbg !1740
  ret i32 %4, !dbg !1740
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1741 dso_local i32 @acpi_initialize_tables(ptr noundef, i32 noundef, i8 noundef zeroext) #3 section ".init.text"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @acpi_reserve_initial_tables() #4 section ".init.text" align 16 !dbg !1745 {
entry:
  %i = alloca i32, align 4
  %table_desc = alloca ptr, align 8
  %start = alloca i64, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !1754
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1747, metadata !DIExpression()), !dbg !1755
  store i32 0, ptr %i, align 4, !dbg !1756
  br label %for.cond, !dbg !1757

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1758
  %cmp = icmp slt i32 %0, 128, !dbg !1759
  br i1 %cmp, label %for.body, label %for.end, !dbg !1760

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_desc) #11, !dbg !1761
  call void @llvm.dbg.declare(metadata ptr %table_desc, metadata !1748, metadata !DIExpression()), !dbg !1762
  %1 = load i32, ptr %i, align 4, !dbg !1763
  %idxprom = sext i32 %1 to i64, !dbg !1764
  %arrayidx = getelementptr [128 x %struct.acpi_table_desc], ptr @initial_tables, i64 0, i64 %idxprom, !dbg !1764
  store ptr %arrayidx, ptr %table_desc, align 8, !dbg !1762
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #11, !dbg !1765
  call void @llvm.dbg.declare(metadata ptr %start, metadata !1752, metadata !DIExpression()), !dbg !1766
  %2 = load ptr, ptr %table_desc, align 8, !dbg !1767
  %address = getelementptr inbounds %struct.acpi_table_desc, ptr %2, i32 0, i32 0, !dbg !1768
  %3 = load i64, ptr %address, align 8, !dbg !1768
  store i64 %3, ptr %start, align 8, !dbg !1766
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #11, !dbg !1769
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1753, metadata !DIExpression()), !dbg !1770
  %4 = load ptr, ptr %table_desc, align 8, !dbg !1771
  %length = getelementptr inbounds %struct.acpi_table_desc, ptr %4, i32 0, i32 2, !dbg !1772
  %5 = load i32, ptr %length, align 8, !dbg !1772
  %conv = zext i32 %5 to i64, !dbg !1771
  store i64 %conv, ptr %size, align 8, !dbg !1770
  %6 = load i64, ptr %start, align 8, !dbg !1773
  %tobool = icmp ne i64 %6, 0, !dbg !1773
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1775

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i64, ptr %size, align 8, !dbg !1776
  %tobool1 = icmp ne i64 %7, 0, !dbg !1776
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1777

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1778

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !1779

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !1781

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1781

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %table_desc, align 8, !dbg !1779
  %signature = getelementptr inbounds %struct.acpi_table_desc, ptr %8, i32 0, i32 3, !dbg !1779
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !1779
  %9 = load i64, ptr %start, align 8, !dbg !1779
  %10 = load i64, ptr %start, align 8, !dbg !1779
  %11 = load i64, ptr %size, align 8, !dbg !1779
  %add = add i64 %10, %11, !dbg !1779
  %sub = sub i64 %add, 1, !dbg !1779
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.19, ptr noundef %arraydecay, i64 noundef %9, i64 noundef %sub) #12, !dbg !1779
  store i32 %call, ptr %tmp, align 4, !dbg !1781
  %12 = load i32, ptr %tmp, align 4, !dbg !1779
  %13 = load i64, ptr %start, align 8, !dbg !1783
  %14 = load i64, ptr %size, align 8, !dbg !1784
  %call2 = call i32 @memblock_reserve(i64 noundef %13, i64 noundef %14) #13, !dbg !1785
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1786
  br label %cleanup, !dbg !1786

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #11, !dbg !1786
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #11, !dbg !1786
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_desc) #11, !dbg !1786
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1787

for.inc:                                          ; preds = %cleanup.cont
  %15 = load i32, ptr %i, align 4, !dbg !1788
  %inc = add i32 %15, 1, !dbg !1788
  store i32 %inc, ptr %i, align 4, !dbg !1788
  br label %for.cond, !dbg !1789, !llvm.loop !1790

for.end:                                          ; preds = %cleanup, %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !1792
  ret void, !dbg !1792

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1793 dso_local i32 @memblock_reserve(i64 noundef, i64 noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @acpi_table_init_complete() #4 section ".init.text" align 16 !dbg !1796 {
entry:
  call void @acpi_table_initrd_scan() #12, !dbg !1797
  call void @check_multiple_madt() #12, !dbg !1798
  ret void, !dbg !1799
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @acpi_table_initrd_scan() #4 section ".init.text" align 16 !dbg !1800 {
entry:
  %table_offset = alloca i32, align 4
  %table_index = alloca i32, align 4
  %table_length = alloca i32, align 4
  %table = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp48 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_offset) #11, !dbg !1815
  call void @llvm.dbg.declare(metadata ptr %table_offset, metadata !1802, metadata !DIExpression()), !dbg !1816
  store i32 0, ptr %table_offset, align 4, !dbg !1816
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_index) #11, !dbg !1817
  call void @llvm.dbg.declare(metadata ptr %table_index, metadata !1803, metadata !DIExpression()), !dbg !1818
  store i32 0, ptr %table_index, align 4, !dbg !1818
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_length) #11, !dbg !1819
  call void @llvm.dbg.declare(metadata ptr %table_length, metadata !1804, metadata !DIExpression()), !dbg !1820
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #11, !dbg !1821
  call void @llvm.dbg.declare(metadata ptr %table, metadata !1805, metadata !DIExpression()), !dbg !1822
  %0 = load i64, ptr @acpi_tables_addr, align 8, !dbg !1823
  %tobool = icmp ne i64 %0, 0, !dbg !1823
  br i1 %tobool, label %if.end, label %if.then, !dbg !1825

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1826

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !1827

while.cond:                                       ; preds = %next_table, %if.end
  %1 = load i32, ptr %table_offset, align 4, !dbg !1828
  %conv = sext i32 %1 to i64, !dbg !1828
  %add = add i64 %conv, 36, !dbg !1829
  %2 = load i32, ptr @all_tables_size, align 4, !dbg !1830
  %conv1 = sext i32 %2 to i64, !dbg !1830
  %cmp = icmp ule i64 %add, %conv1, !dbg !1831
  br i1 %cmp, label %while.body, label %while.end, !dbg !1827

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr @acpi_tables_addr, align 8, !dbg !1832
  %4 = load i32, ptr %table_offset, align 4, !dbg !1833
  %conv3 = sext i32 %4 to i64, !dbg !1833
  %add4 = add i64 %3, %conv3, !dbg !1834
  %call = call ptr @acpi_os_map_memory(i64 noundef %add4, i64 noundef 36) #13, !dbg !1835
  store ptr %call, ptr %table, align 8, !dbg !1836
  %5 = load i32, ptr %table_offset, align 4, !dbg !1837
  %6 = load ptr, ptr %table, align 8, !dbg !1838
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %6, i32 0, i32 1, !dbg !1839
  %7 = load i32, ptr %length, align 1, !dbg !1839
  %add5 = add i32 %5, %7, !dbg !1840
  %8 = load i32, ptr @all_tables_size, align 4, !dbg !1841
  %cmp6 = icmp ugt i32 %add5, %8, !dbg !1842
  br i1 %cmp6, label %if.then8, label %if.end31, !dbg !1843

if.then8:                                         ; preds = %while.body
  %9 = load ptr, ptr %table, align 8, !dbg !1844
  call void @acpi_os_unmap_memory(ptr noundef %9, i64 noundef 36) #13, !dbg !1845
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1846
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1806, metadata !DIExpression()), !dbg !1846
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1846
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !1847
  %tobool9 = icmp ne i32 %10, 0, !dbg !1847
  %lnot = xor i1 %tobool9, true, !dbg !1847
  %lnot10 = xor i1 %lnot, true, !dbg !1847
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !1847
  %conv11 = sext i32 %lnot.ext to i64, !dbg !1847
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !1847
  %tobool12 = icmp ne i64 %expval, 0, !dbg !1847
  br i1 %tobool12, label %if.then13, label %if.end23, !dbg !1846

if.then13:                                        ; preds = %if.then8
  br label %do.body, !dbg !1847

do.body:                                          ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !1848
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1811, metadata !DIExpression()), !dbg !1848
  store i32 2305, ptr %__flags, align 4, !dbg !1848
  br label %do.body14, !dbg !1848

do.body14:                                        ; preds = %do.body
  br label %do.cond, !dbg !1849

do.cond:                                          ; preds = %do.body14
  br label %do.end, !dbg !1849

do.end:                                           ; preds = %do.cond
  br label %do.body15, !dbg !1848

do.body15:                                        ; preds = %do.end
  %11 = load i32, ptr %__flags, align 4, !dbg !1851
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.16, i32 777, i32 %11, i64 12) #11, !dbg !1851, !srcloc !1853
  br label %do.cond16, !dbg !1851

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !1851

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !1848

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !1854

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !1854

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !1847
  br label %do.cond21, !dbg !1848

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !1848

do.end22:                                         ; preds = %do.cond21
  br label %if.end23, !dbg !1848

if.end23:                                         ; preds = %do.end22, %if.then8
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !1846
  %tobool24 = icmp ne i32 %12, 0, !dbg !1846
  %lnot25 = xor i1 %tobool24, true, !dbg !1846
  %lnot27 = xor i1 %lnot25, true, !dbg !1846
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !1846
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !1846
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !1846
  store i64 %expval30, ptr %tmp, align 8, !dbg !1847
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1856
  %13 = load i64, ptr %tmp, align 8, !dbg !1846
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1857

if.end31:                                         ; preds = %while.body
  %14 = load ptr, ptr %table, align 8, !dbg !1858
  %length32 = getelementptr inbounds %struct.acpi_table_header, ptr %14, i32 0, i32 1, !dbg !1859
  %15 = load i32, ptr %length32, align 1, !dbg !1859
  store i32 %15, ptr %table_length, align 4, !dbg !1860
  %16 = load ptr, ptr %table, align 8, !dbg !1861
  %signature = getelementptr inbounds %struct.acpi_table_header, ptr %16, i32 0, i32 0, !dbg !1861
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !1861
  %17 = ptrtoint ptr %arraydecay to i64, !dbg !1861
  %18 = inttoptr i64 %17 to ptr, !dbg !1861
  %19 = load i32, ptr %18, align 4, !dbg !1861
  %20 = load i32, ptr @.str.32, align 4, !dbg !1861
  %cmp33 = icmp eq i32 %19, %20, !dbg !1861
  br i1 %cmp33, label %if.then39, label %lor.lhs.false, !dbg !1863

lor.lhs.false:                                    ; preds = %if.end31
  %21 = load ptr, ptr %table, align 8, !dbg !1864
  %signature35 = getelementptr inbounds %struct.acpi_table_header, ptr %21, i32 0, i32 0, !dbg !1864
  %arraydecay36 = getelementptr inbounds [4 x i8], ptr %signature35, i64 0, i64 0, !dbg !1864
  %22 = ptrtoint ptr %arraydecay36 to i64, !dbg !1864
  %23 = inttoptr i64 %22 to ptr, !dbg !1864
  %24 = load i32, ptr %23, align 4, !dbg !1864
  %25 = load i32, ptr @.str.33, align 4, !dbg !1864
  %cmp37 = icmp eq i32 %24, %25, !dbg !1864
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !1865

if.then39:                                        ; preds = %lor.lhs.false, %if.end31
  %26 = load ptr, ptr %table, align 8, !dbg !1866
  call void @acpi_os_unmap_memory(ptr noundef %26, i64 noundef 36) #13, !dbg !1868
  br label %next_table, !dbg !1869

if.end40:                                         ; preds = %lor.lhs.false
  %27 = load i32, ptr %table_index, align 4, !dbg !1870
  %conv41 = sext i32 %27 to i64, !dbg !1870
  %call42 = call zeroext i1 @test_and_set_bit(i64 noundef %conv41, ptr noundef @acpi_initrd_installed) #13, !dbg !1872
  br i1 %call42, label %if.then43, label %if.end44, !dbg !1873

if.then43:                                        ; preds = %if.end40
  %28 = load ptr, ptr %table, align 8, !dbg !1874
  call void @acpi_os_unmap_memory(ptr noundef %28, i64 noundef 36) #13, !dbg !1876
  br label %next_table, !dbg !1877

if.end44:                                         ; preds = %if.end40
  br label %do.body45, !dbg !1878

do.body45:                                        ; preds = %if.end44
  br label %do.cond46, !dbg !1880

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !1880

do.end47:                                         ; preds = %do.cond46
  %29 = load ptr, ptr %table, align 8, !dbg !1878
  %signature49 = getelementptr inbounds %struct.acpi_table_header, ptr %29, i32 0, i32 0, !dbg !1878
  %arraydecay50 = getelementptr inbounds [4 x i8], ptr %signature49, i64 0, i64 0, !dbg !1878
  %30 = load ptr, ptr %table, align 8, !dbg !1878
  %oem_id = getelementptr inbounds %struct.acpi_table_header, ptr %30, i32 0, i32 4, !dbg !1878
  %arraydecay51 = getelementptr inbounds [6 x i8], ptr %oem_id, i64 0, i64 0, !dbg !1878
  %31 = load ptr, ptr %table, align 8, !dbg !1878
  %oem_table_id = getelementptr inbounds %struct.acpi_table_header, ptr %31, i32 0, i32 5, !dbg !1878
  %arraydecay52 = getelementptr inbounds [8 x i8], ptr %oem_table_id, i64 0, i64 0, !dbg !1878
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef @.str.34, ptr noundef %arraydecay50, ptr noundef %arraydecay51, ptr noundef %arraydecay52) #12, !dbg !1878
  store i32 %call53, ptr %tmp48, align 4, !dbg !1880
  %32 = load i32, ptr %tmp48, align 4, !dbg !1878
  %33 = load ptr, ptr %table, align 8, !dbg !1882
  call void @acpi_os_unmap_memory(ptr noundef %33, i64 noundef 36) #13, !dbg !1883
  %34 = load i64, ptr @acpi_tables_addr, align 8, !dbg !1884
  %35 = load i32, ptr %table_offset, align 4, !dbg !1885
  %conv54 = sext i32 %35 to i64, !dbg !1885
  %add55 = add i64 %34, %conv54, !dbg !1886
  %call56 = call i32 @acpi_install_physical_table(i64 noundef %add55) #12, !dbg !1887
  br label %next_table, !dbg !1887

next_table:                                       ; preds = %do.end47, %if.then43, %if.then39
  call void @llvm.dbg.label(metadata !1814), !dbg !1888
  %36 = load i32, ptr %table_length, align 4, !dbg !1889
  %37 = load i32, ptr %table_offset, align 4, !dbg !1890
  %add57 = add i32 %37, %36, !dbg !1890
  store i32 %add57, ptr %table_offset, align 4, !dbg !1890
  %38 = load i32, ptr %table_index, align 4, !dbg !1891
  %inc = add i32 %38, 1, !dbg !1891
  store i32 %inc, ptr %table_index, align 4, !dbg !1891
  br label %while.cond, !dbg !1827, !llvm.loop !1892

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1894
  br label %cleanup, !dbg !1894

cleanup:                                          ; preds = %while.end, %if.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #11, !dbg !1894
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_length) #11, !dbg !1894
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_index) #11, !dbg !1894
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_offset) #11, !dbg !1894
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1894

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @check_multiple_madt() #4 section ".init.text" align 16 !dbg !1895 {
entry:
  %table = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #11, !dbg !1898
  call void @llvm.dbg.declare(metadata ptr %table, metadata !1897, metadata !DIExpression()), !dbg !1899
  store ptr null, ptr %table, align 8, !dbg !1899
  %call = call i32 @acpi_get_table(ptr noundef @.str.8, i32 noundef 2, ptr noundef %table) #13, !dbg !1900
  %0 = load ptr, ptr %table, align 8, !dbg !1901
  %tobool = icmp ne ptr %0, null, !dbg !1901
  br i1 %tobool, label %if.then, label %if.else, !dbg !1903

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1904

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1907

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1907

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr @acpi_apic_instance, align 4, !dbg !1904
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.35, i32 noundef %1) #12, !dbg !1904
  store i32 %call1, ptr %tmp, align 4, !dbg !1907
  %2 = load i32, ptr %tmp, align 4, !dbg !1904
  br label %do.body2, !dbg !1909

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !1911

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1911

do.end4:                                          ; preds = %do.cond3
  %3 = load i32, ptr @acpi_apic_instance, align 4, !dbg !1909
  %tobool6 = icmp ne i32 %3, 0, !dbg !1909
  %4 = zext i1 %tobool6 to i64, !dbg !1909
  %cond = select i1 %tobool6, i32 0, i32 2, !dbg !1909
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.36, i32 noundef %cond) #12, !dbg !1909
  store i32 %call7, ptr %tmp5, align 4, !dbg !1911
  %5 = load i32, ptr %tmp5, align 4, !dbg !1909
  %6 = load ptr, ptr %table, align 8, !dbg !1913
  call void @acpi_put_table(ptr noundef %6) #13, !dbg !1914
  br label %if.end, !dbg !1915

if.else:                                          ; preds = %entry
  store i32 0, ptr @acpi_apic_instance, align 4, !dbg !1916
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end4
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #11, !dbg !1917
  ret void, !dbg !1917
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_table_init() #4 section ".init.text" align 16 !dbg !1918 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !1921
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1920, metadata !DIExpression()), !dbg !1922
  %call = call i32 @acpi_locate_initial_tables() #12, !dbg !1923
  store i32 %call, ptr %ret, align 4, !dbg !1924
  %0 = load i32, ptr %ret, align 4, !dbg !1925
  %tobool = icmp ne i32 %0, 0, !dbg !1925
  br i1 %tobool, label %if.then, label %if.end, !dbg !1927

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %ret, align 4, !dbg !1928
  store i32 %1, ptr %retval, align 4, !dbg !1929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1929

if.end:                                           ; preds = %entry
  call void @acpi_table_init_complete() #12, !dbg !1930
  store i32 0, ptr %retval, align 4, !dbg !1931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1931

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !1932
  %2 = load i32, ptr %retval, align 4, !dbg !1932
  ret i32 %2, !dbg !1932
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_parse_apic_instance(ptr noundef %str) #4 section ".init.text" align 16 !dbg !1933 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !1935, metadata !DIExpression()), !dbg !1936
  %0 = load ptr, ptr %str.addr, align 8, !dbg !1937
  %tobool = icmp ne ptr %0, null, !dbg !1937
  br i1 %tobool, label %if.end, label %if.then, !dbg !1939

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1940
  br label %return, !dbg !1940

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !1941
  %call = call i32 @kstrtoint(ptr noundef %1, i32 noundef 0, ptr noundef @acpi_apic_instance) #13, !dbg !1943
  %tobool1 = icmp ne i32 %call, 0, !dbg !1943
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1944

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1945
  br label %return, !dbg !1945

if.end3:                                          ; preds = %if.end
  br label %do.body, !dbg !1946

do.body:                                          ; preds = %if.end3
  br label %do.end, !dbg !1948

do.end:                                           ; preds = %do.body
  %2 = load i32, ptr @acpi_apic_instance, align 4, !dbg !1946
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.37, i32 noundef %2) #12, !dbg !1946
  store i32 %call4, ptr %tmp, align 4, !dbg !1948
  %3 = load i32, ptr %tmp, align 4, !dbg !1946
  store i32 0, ptr %retval, align 4, !dbg !1950
  br label %return, !dbg !1950

return:                                           ; preds = %do.end, %if.then2, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !1951
  ret i32 %4, !dbg !1951
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_force_table_verification_setup(ptr noundef %s) #4 section ".init.text" align 16 !dbg !1952 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1954, metadata !DIExpression()), !dbg !1955
  store i8 1, ptr @acpi_verify_table_checksum, align 1, !dbg !1956
  ret i32 0, !dbg !1957
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_force_32bit_fadt_addr(ptr noundef %s) #4 section ".init.text" align 16 !dbg !1958 {
entry:
  %s.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1960, metadata !DIExpression()), !dbg !1961
  br label %do.body, !dbg !1962

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1964

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.38) #12, !dbg !1962
  store i32 %call, ptr %tmp, align 4, !dbg !1964
  %0 = load i32, ptr %tmp, align 4, !dbg !1962
  store i8 1, ptr @acpi_gbl_use32_bit_fadt_addresses, align 1, !dbg !1966
  ret i32 0, !dbg !1967
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_get_subtable_type(ptr noundef %id) #4 section ".init.text" align 16 !dbg !1968 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !1972, metadata !DIExpression()), !dbg !1973
  %0 = load ptr, ptr %id.addr, align 8, !dbg !1974
  %call = call i32 @strncmp(ptr noundef %0, ptr noundef @.str.28, i64 noundef 4) #13, !dbg !1976
  %cmp = icmp eq i32 %call, 0, !dbg !1977
  br i1 %cmp, label %if.then, label %if.end, !dbg !1978

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1979
  br label %return, !dbg !1979

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %id.addr, align 8, !dbg !1980
  %call1 = call i32 @strncmp(ptr noundef %1, ptr noundef @.str.29, i64 noundef 4) #13, !dbg !1982
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1983
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1984

if.then3:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1985
  br label %return, !dbg !1985

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %id.addr, align 8, !dbg !1986
  %call5 = call i32 @strncmp(ptr noundef %2, ptr noundef @.str.9, i64 noundef 4) #13, !dbg !1988
  %cmp6 = icmp eq i32 %call5, 0, !dbg !1989
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1990

if.then7:                                         ; preds = %if.end4
  store i32 3, ptr %retval, align 4, !dbg !1991
  br label %return, !dbg !1991

if.end8:                                          ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !1992
  br label %return, !dbg !1992

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !1993
  ret i32 %3, !dbg !1993
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @acpi_get_subtable_header_length(ptr noundef %entry1) #4 section ".init.text" align 16 !dbg !1994 {
entry:
  %retval = alloca i64, align 8
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1999, metadata !DIExpression()), !dbg !2000
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2001
  %type = getelementptr inbounds %struct.acpi_subtable_entry, ptr %0, i32 0, i32 1, !dbg !2002
  %1 = load i32, ptr %type, align 8, !dbg !2002
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
  ], !dbg !2003

sw.bb:                                            ; preds = %entry
  store i64 2, ptr %retval, align 8, !dbg !2004
  br label %return, !dbg !2004

sw.bb2:                                           ; preds = %entry
  store i64 8, ptr %retval, align 8, !dbg !2006
  br label %return, !dbg !2006

sw.bb3:                                           ; preds = %entry
  store i64 4, ptr %retval, align 8, !dbg !2007
  br label %return, !dbg !2007

sw.bb4:                                           ; preds = %entry
  store i64 4, ptr %retval, align 8, !dbg !2008
  br label %return, !dbg !2008

sw.epilog:                                        ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !2009
  br label %return, !dbg !2009

return:                                           ; preds = %sw.epilog, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %2 = load i64, ptr %retval, align 8, !dbg !2010
  ret i64 %2, !dbg !2010
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @acpi_get_entry_type(ptr noundef %entry1) #4 section ".init.text" align 16 !dbg !2011 {
entry:
  %retval = alloca i64, align 8
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2013, metadata !DIExpression()), !dbg !2014
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2015
  %type = getelementptr inbounds %struct.acpi_subtable_entry, ptr %0, i32 0, i32 1, !dbg !2016
  %1 = load i32, ptr %type, align 8, !dbg !2016
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb7
    i32 3, label %sw.bb8
  ], !dbg !2017

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !2018
  %hdr = getelementptr inbounds %struct.acpi_subtable_entry, ptr %2, i32 0, i32 0, !dbg !2020
  %3 = load ptr, ptr %hdr, align 8, !dbg !2020
  %type2 = getelementptr inbounds %struct.acpi_subtable_header, ptr %3, i32 0, i32 0, !dbg !2021
  %4 = load i8, ptr %type2, align 1, !dbg !2021
  %conv = zext i8 %4 to i64, !dbg !2018
  store i64 %conv, ptr %retval, align 8, !dbg !2022
  br label %return, !dbg !2022

sw.bb3:                                           ; preds = %entry
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !2023
  %hdr4 = getelementptr inbounds %struct.acpi_subtable_entry, ptr %5, i32 0, i32 0, !dbg !2024
  %6 = load ptr, ptr %hdr4, align 8, !dbg !2024
  %type5 = getelementptr inbounds %struct.acpi_hmat_structure, ptr %6, i32 0, i32 0, !dbg !2025
  %7 = load i16, ptr %type5, align 1, !dbg !2025
  %conv6 = zext i16 %7 to i64, !dbg !2023
  store i64 %conv6, ptr %retval, align 8, !dbg !2026
  br label %return, !dbg !2026

sw.bb7:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !2027
  br label %return, !dbg !2027

sw.bb8:                                           ; preds = %entry
  %8 = load ptr, ptr %entry.addr, align 8, !dbg !2028
  %hdr9 = getelementptr inbounds %struct.acpi_subtable_entry, ptr %8, i32 0, i32 0, !dbg !2029
  %9 = load ptr, ptr %hdr9, align 8, !dbg !2029
  %type10 = getelementptr inbounds %struct.acpi_cedt_header, ptr %9, i32 0, i32 0, !dbg !2030
  %10 = load i8, ptr %type10, align 1, !dbg !2030
  %conv11 = zext i8 %10 to i64, !dbg !2028
  store i64 %conv11, ptr %retval, align 8, !dbg !2031
  br label %return, !dbg !2031

sw.epilog:                                        ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !2032
  br label %return, !dbg !2032

return:                                           ; preds = %sw.epilog, %sw.bb8, %sw.bb7, %sw.bb3, %sw.bb
  %11 = load i64, ptr %retval, align 8, !dbg !2033
  ret i64 %11, !dbg !2033
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @has_handler(ptr noundef %proc) #4 section ".init.text" align 16 !dbg !2034 {
entry:
  %proc.addr = alloca ptr, align 8
  store ptr %proc, ptr %proc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %proc.addr, metadata !2038, metadata !DIExpression()), !dbg !2039
  %0 = load ptr, ptr %proc.addr, align 8, !dbg !2040
  %handler = getelementptr inbounds %struct.acpi_subtable_proc, ptr %0, i32 0, i32 1, !dbg !2041
  %1 = load ptr, ptr %handler, align 8, !dbg !2041
  %tobool = icmp ne ptr %1, null, !dbg !2040
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2042

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %proc.addr, align 8, !dbg !2043
  %handler_arg = getelementptr inbounds %struct.acpi_subtable_proc, ptr %2, i32 0, i32 2, !dbg !2044
  %3 = load ptr, ptr %handler_arg, align 8, !dbg !2044
  %tobool1 = icmp ne ptr %3, null, !dbg !2042
  br label %lor.end, !dbg !2042

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  ret i1 %4, !dbg !2045
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @call_handler(ptr noundef %proc, ptr noundef %hdr, i64 noundef %end) #4 section ".init.text" align 16 !dbg !2046 {
entry:
  %retval = alloca i32, align 4
  %proc.addr = alloca ptr, align 8
  %hdr.addr = alloca ptr, align 8
  %end.addr = alloca i64, align 8
  store ptr %proc, ptr %proc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %proc.addr, metadata !2050, metadata !DIExpression()), !dbg !2053
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !2051, metadata !DIExpression()), !dbg !2054
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !2052, metadata !DIExpression()), !dbg !2055
  %0 = load ptr, ptr %proc.addr, align 8, !dbg !2056
  %handler = getelementptr inbounds %struct.acpi_subtable_proc, ptr %0, i32 0, i32 1, !dbg !2058
  %1 = load ptr, ptr %handler, align 8, !dbg !2058
  %tobool = icmp ne ptr %1, null, !dbg !2056
  br i1 %tobool, label %if.then, label %if.end, !dbg !2059

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %proc.addr, align 8, !dbg !2060
  %handler1 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %2, i32 0, i32 1, !dbg !2061
  %3 = load ptr, ptr %handler1, align 8, !dbg !2061
  %4 = load ptr, ptr %hdr.addr, align 8, !dbg !2062
  %5 = load i64, ptr %end.addr, align 8, !dbg !2063
  %call = call i32 %3(ptr noundef %4, i64 noundef %5) #13, !dbg !2060
  store i32 %call, ptr %retval, align 4, !dbg !2064
  br label %return, !dbg !2064

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %proc.addr, align 8, !dbg !2065
  %handler_arg = getelementptr inbounds %struct.acpi_subtable_proc, ptr %6, i32 0, i32 2, !dbg !2067
  %7 = load ptr, ptr %handler_arg, align 8, !dbg !2067
  %tobool2 = icmp ne ptr %7, null, !dbg !2065
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !2068

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %proc.addr, align 8, !dbg !2069
  %handler_arg4 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %8, i32 0, i32 2, !dbg !2070
  %9 = load ptr, ptr %handler_arg4, align 8, !dbg !2070
  %10 = load ptr, ptr %hdr.addr, align 8, !dbg !2071
  %11 = load ptr, ptr %proc.addr, align 8, !dbg !2072
  %arg = getelementptr inbounds %struct.acpi_subtable_proc, ptr %11, i32 0, i32 3, !dbg !2073
  %12 = load ptr, ptr %arg, align 8, !dbg !2073
  %13 = load i64, ptr %end.addr, align 8, !dbg !2074
  %call5 = call i32 %9(ptr noundef %10, ptr noundef %12, i64 noundef %13) #13, !dbg !2069
  store i32 %call5, ptr %retval, align 4, !dbg !2075
  br label %return, !dbg !2075

if.end6:                                          ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !2076
  br label %return, !dbg !2076

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %14 = load i32, ptr %retval, align 4, !dbg !2077
  ret i32 %14, !dbg !2077
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @acpi_get_entry_length(ptr noundef %entry1) #4 section ".init.text" align 16 !dbg !2078 {
entry:
  %retval = alloca i64, align 8
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2080, metadata !DIExpression()), !dbg !2081
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2082
  %type = getelementptr inbounds %struct.acpi_subtable_entry, ptr %0, i32 0, i32 1, !dbg !2083
  %1 = load i32, ptr %type, align 8, !dbg !2083
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb6
    i32 3, label %sw.bb10
  ], !dbg !2084

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !2085
  %hdr = getelementptr inbounds %struct.acpi_subtable_entry, ptr %2, i32 0, i32 0, !dbg !2087
  %3 = load ptr, ptr %hdr, align 8, !dbg !2087
  %length = getelementptr inbounds %struct.acpi_subtable_header, ptr %3, i32 0, i32 1, !dbg !2088
  %4 = load i8, ptr %length, align 1, !dbg !2088
  %conv = zext i8 %4 to i64, !dbg !2085
  store i64 %conv, ptr %retval, align 8, !dbg !2089
  br label %return, !dbg !2089

sw.bb2:                                           ; preds = %entry
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !2090
  %hdr3 = getelementptr inbounds %struct.acpi_subtable_entry, ptr %5, i32 0, i32 0, !dbg !2091
  %6 = load ptr, ptr %hdr3, align 8, !dbg !2091
  %length4 = getelementptr inbounds %struct.acpi_hmat_structure, ptr %6, i32 0, i32 2, !dbg !2092
  %7 = load i32, ptr %length4, align 1, !dbg !2092
  %conv5 = zext i32 %7 to i64, !dbg !2090
  store i64 %conv5, ptr %retval, align 8, !dbg !2093
  br label %return, !dbg !2093

sw.bb6:                                           ; preds = %entry
  %8 = load ptr, ptr %entry.addr, align 8, !dbg !2094
  %hdr7 = getelementptr inbounds %struct.acpi_subtable_entry, ptr %8, i32 0, i32 0, !dbg !2095
  %9 = load ptr, ptr %hdr7, align 8, !dbg !2095
  %length8 = getelementptr inbounds %struct.acpi_prmt_module_header, ptr %9, i32 0, i32 1, !dbg !2096
  %10 = load i16, ptr %length8, align 1, !dbg !2096
  %conv9 = zext i16 %10 to i64, !dbg !2094
  store i64 %conv9, ptr %retval, align 8, !dbg !2097
  br label %return, !dbg !2097

sw.bb10:                                          ; preds = %entry
  %11 = load ptr, ptr %entry.addr, align 8, !dbg !2098
  %hdr11 = getelementptr inbounds %struct.acpi_subtable_entry, ptr %11, i32 0, i32 0, !dbg !2099
  %12 = load ptr, ptr %hdr11, align 8, !dbg !2099
  %length12 = getelementptr inbounds %struct.acpi_cedt_header, ptr %12, i32 0, i32 2, !dbg !2100
  %13 = load i16, ptr %length12, align 1, !dbg !2100
  %conv13 = zext i16 %13 to i64, !dbg !2098
  store i64 %conv13, ptr %retval, align 8, !dbg !2101
  br label %return, !dbg !2101

sw.epilog:                                        ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !2102
  br label %return, !dbg !2102

return:                                           ; preds = %sw.epilog, %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb
  %14 = load i64, ptr %retval, align 8, !dbg !2103
  ret i64 %14, !dbg !2103
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2104 dso_local ptr @acpi_os_map_memory(i64 noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2109 dso_local void @acpi_os_unmap_memory(ptr noundef, i64 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !2112 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2119, metadata !DIExpression()), !dbg !2121
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2120, metadata !DIExpression()), !dbg !2122
  br label %do.body, !dbg !2123

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2124

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2126
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2127
  %div = sdiv i64 %1, 64, !dbg !2127
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2128
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !2129
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2130
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2131
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !2132
  ret i1 %call, !dbg !2133
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !2134 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2142, metadata !DIExpression()), !dbg !2144
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2143, metadata !DIExpression()), !dbg !2145
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2146
  %1 = load i64, ptr %size.addr, align 8, !dbg !2147
  %conv = trunc i64 %1 to i32, !dbg !2147
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !2148
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2149
  %3 = load i64, ptr %size.addr, align 8, !dbg !2149
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #13, !dbg !2149
  ret void, !dbg !2150
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !2151 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2154, metadata !DIExpression()), !dbg !2158
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2155, metadata !DIExpression()), !dbg !2159
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #11, !dbg !2160
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2156, metadata !DIExpression()), !dbg !2160
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2160
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2160
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #11, !dbg !2160, !srcloc !2161
  %3 = icmp ult i8 %2, 2, !dbg !2160
  call void @llvm.assume(i1 %3), !dbg !2160
  store i8 %2, ptr %c, align 1, !dbg !2160
  %4 = load i8, ptr %c, align 1, !dbg !2160, !range !1717, !noundef !1718
  %tobool = trunc i8 %4 to i1, !dbg !2160
  %frombool = zext i1 %tobool to i8, !dbg !2160
  store i8 %frombool, ptr %tmp, align 1, !dbg !2160
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #11, !dbg !2162
  %5 = load i8, ptr %tmp, align 1, !dbg !2160, !range !1717, !noundef !1718
  %tobool1 = trunc i8 %5 to i1, !dbg !2160
  ret i1 %tobool1, !dbg !2163
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !2164 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2169, metadata !DIExpression()), !dbg !2171
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2170, metadata !DIExpression()), !dbg !2172
  ret i1 true, !dbg !2173
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #8 align 16 !dbg !2174 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2179, metadata !DIExpression()), !dbg !2182
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2180, metadata !DIExpression()), !dbg !2183
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2181, metadata !DIExpression()), !dbg !2184
  ret void, !dbg !2185
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2186 dso_local void @add_taint(i32 noundef, i32 noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2189 dso_local i32 @acpi_install_physical_table(i64 noundef) #3 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2192 dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!549, !550, !551, !552, !553, !554, !555, !556}
!llvm.ident = !{!557}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/tables.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6c6de8c6711ce264546678aa959735c4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 61)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "mps_inti_flags_polarity", scope: !9, file: !2, line: 33, type: !483, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.tables.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/tables\22 -D KBUILD_BASENAME=\22tables\22 -D KBUILD_MODNAME=\22tables\22 -D __KBUILD_MODNAME=kmod_tables -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/tables.ll drivers/acpi/tables.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !102, globals: !298, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !45, !53, !86, !92, !97}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_madt_type", file: !12, line: 870, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/acpi/actbl2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7839eaf4648a429aeaa0ab12e30ee4db")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!15 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_APIC", value: 0)
!16 = !DIEnumerator(name: "ACPI_MADT_TYPE_IO_APIC", value: 1)
!17 = !DIEnumerator(name: "ACPI_MADT_TYPE_INTERRUPT_OVERRIDE", value: 2)
!18 = !DIEnumerator(name: "ACPI_MADT_TYPE_NMI_SOURCE", value: 3)
!19 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_APIC_NMI", value: 4)
!20 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_APIC_OVERRIDE", value: 5)
!21 = !DIEnumerator(name: "ACPI_MADT_TYPE_IO_SAPIC", value: 6)
!22 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_SAPIC", value: 7)
!23 = !DIEnumerator(name: "ACPI_MADT_TYPE_INTERRUPT_SOURCE", value: 8)
!24 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_X2APIC", value: 9)
!25 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_X2APIC_NMI", value: 10)
!26 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_INTERRUPT", value: 11)
!27 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_DISTRIBUTOR", value: 12)
!28 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_MSI_FRAME", value: 13)
!29 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_REDISTRIBUTOR", value: 14)
!30 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_TRANSLATOR", value: 15)
!31 = !DIEnumerator(name: "ACPI_MADT_TYPE_MULTIPROC_WAKEUP", value: 16)
!32 = !DIEnumerator(name: "ACPI_MADT_TYPE_CORE_PIC", value: 17)
!33 = !DIEnumerator(name: "ACPI_MADT_TYPE_LIO_PIC", value: 18)
!34 = !DIEnumerator(name: "ACPI_MADT_TYPE_HT_PIC", value: 19)
!35 = !DIEnumerator(name: "ACPI_MADT_TYPE_EIO_PIC", value: 20)
!36 = !DIEnumerator(name: "ACPI_MADT_TYPE_MSI_PIC", value: 21)
!37 = !DIEnumerator(name: "ACPI_MADT_TYPE_BIO_PIC", value: 22)
!38 = !DIEnumerator(name: "ACPI_MADT_TYPE_LPC_PIC", value: 23)
!39 = !DIEnumerator(name: "ACPI_MADT_TYPE_RINTC", value: 24)
!40 = !DIEnumerator(name: "ACPI_MADT_TYPE_IMSIC", value: 25)
!41 = !DIEnumerator(name: "ACPI_MADT_TYPE_APLIC", value: 26)
!42 = !DIEnumerator(name: "ACPI_MADT_TYPE_PLIC", value: 27)
!43 = !DIEnumerator(name: "ACPI_MADT_TYPE_RESERVED", value: 28)
!44 = !DIEnumerator(name: "ACPI_MADT_TYPE_OEM_RESERVED", value: 128)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_cedt_type", file: !46, line: 491, baseType: !13, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/acpi/actbl1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "82b9176197c6884c1b7affcb8f534260")
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "ACPI_CEDT_TYPE_CHBS", value: 0)
!49 = !DIEnumerator(name: "ACPI_CEDT_TYPE_CFMWS", value: 1)
!50 = !DIEnumerator(name: "ACPI_CEDT_TYPE_CXIMS", value: 2)
!51 = !DIEnumerator(name: "ACPI_CEDT_TYPE_RDPAS", value: 3)
!52 = !DIEnumerator(name: "ACPI_CEDT_TYPE_RESERVED", value: 4)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdown_reason", file: !54, line: 107, baseType: !13, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!56 = !DIEnumerator(name: "LOCKDOWN_NONE", value: 0)
!57 = !DIEnumerator(name: "LOCKDOWN_MODULE_SIGNATURE", value: 1)
!58 = !DIEnumerator(name: "LOCKDOWN_DEV_MEM", value: 2)
!59 = !DIEnumerator(name: "LOCKDOWN_EFI_TEST", value: 3)
!60 = !DIEnumerator(name: "LOCKDOWN_KEXEC", value: 4)
!61 = !DIEnumerator(name: "LOCKDOWN_HIBERNATION", value: 5)
!62 = !DIEnumerator(name: "LOCKDOWN_PCI_ACCESS", value: 6)
!63 = !DIEnumerator(name: "LOCKDOWN_IOPORT", value: 7)
!64 = !DIEnumerator(name: "LOCKDOWN_MSR", value: 8)
!65 = !DIEnumerator(name: "LOCKDOWN_ACPI_TABLES", value: 9)
!66 = !DIEnumerator(name: "LOCKDOWN_DEVICE_TREE", value: 10)
!67 = !DIEnumerator(name: "LOCKDOWN_PCMCIA_CIS", value: 11)
!68 = !DIEnumerator(name: "LOCKDOWN_TIOCSSERIAL", value: 12)
!69 = !DIEnumerator(name: "LOCKDOWN_MODULE_PARAMETERS", value: 13)
!70 = !DIEnumerator(name: "LOCKDOWN_MMIOTRACE", value: 14)
!71 = !DIEnumerator(name: "LOCKDOWN_DEBUGFS", value: 15)
!72 = !DIEnumerator(name: "LOCKDOWN_XMON_WR", value: 16)
!73 = !DIEnumerator(name: "LOCKDOWN_BPF_WRITE_USER", value: 17)
!74 = !DIEnumerator(name: "LOCKDOWN_DBG_WRITE_KERNEL", value: 18)
!75 = !DIEnumerator(name: "LOCKDOWN_RTAS_ERROR_INJECTION", value: 19)
!76 = !DIEnumerator(name: "LOCKDOWN_INTEGRITY_MAX", value: 20)
!77 = !DIEnumerator(name: "LOCKDOWN_KCORE", value: 21)
!78 = !DIEnumerator(name: "LOCKDOWN_KPROBES", value: 22)
!79 = !DIEnumerator(name: "LOCKDOWN_BPF_READ_KERNEL", value: 23)
!80 = !DIEnumerator(name: "LOCKDOWN_DBG_READ_KERNEL", value: 24)
!81 = !DIEnumerator(name: "LOCKDOWN_PERF", value: 25)
!82 = !DIEnumerator(name: "LOCKDOWN_TRACEFS", value: 26)
!83 = !DIEnumerator(name: "LOCKDOWN_XMON_RW", value: 27)
!84 = !DIEnumerator(name: "LOCKDOWN_XFRM_SECRET", value: 28)
!85 = !DIEnumerator(name: "LOCKDOWN_CONFIDENTIALITY_MAX", value: 29)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_subtable_type", file: !2, line: 40, baseType: !13, size: 32, elements: !87)
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "ACPI_SUBTABLE_COMMON", value: 0)
!89 = !DIEnumerator(name: "ACPI_SUBTABLE_HMAT", value: 1)
!90 = !DIEnumerator(name: "ACPI_SUBTABLE_PRMT", value: 2)
!91 = !DIEnumerator(name: "ACPI_SUBTABLE_CEDT", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !93, line: 10, baseType: !13, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!94 = !{!95, !96}
!95 = !DIEnumerator(name: "false", value: 0)
!96 = !DIEnumerator(name: "true", value: 1)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdep_ok", file: !98, line: 87, baseType: !13, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!99 = !{!100, !101}
!100 = !DIEnumerator(name: "LOCKDEP_STILL_OK", value: 0)
!101 = !DIEnumerator(name: "LOCKDEP_NOW_UNRELIABLE", value: 1)
!102 = !{!103, !121, !132, !140, !148, !154, !161, !172, !181, !189, !203, !214, !238, !248, !256, !268, !269, !270, !272, !273, !110, !295, !296}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_apic", file: !12, line: 909, size: 64, elements: !105)
!105 = !{!106, !116, !117, !118}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !104, file: !12, line: 910, baseType: !107, size: 16)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_subtable_header", file: !46, line: 96, size: 16, elements: !108)
!108 = !{!109, !115}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !107, file: !46, line: 97, baseType: !110, size: 8)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !111, line: 17, baseType: !112)
!111 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !113, line: 21, baseType: !114)
!113 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!114 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !107, file: !46, line: 98, baseType: !110, size: 8, offset: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", scope: !104, file: !12, line: 911, baseType: !110, size: 8, offset: 16)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !104, file: !12, line: 912, baseType: !110, size: 8, offset: 24)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "lapic_flags", scope: !104, file: !12, line: 913, baseType: !119, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !111, line: 21, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !113, line: 27, baseType: !13)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_x2apic", file: !12, line: 1003, size: 128, elements: !123)
!123 = !{!124, !125, !129, !130, !131}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !122, file: !12, line: 1004, baseType: !107, size: 16)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !122, file: !12, line: 1005, baseType: !126, size: 16, offset: 16)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !111, line: 19, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !113, line: 24, baseType: !128)
!128 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "local_apic_id", scope: !122, file: !12, line: 1006, baseType: !119, size: 32, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "lapic_flags", scope: !122, file: !12, line: 1007, baseType: !119, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !122, file: !12, line: 1008, baseType: !119, size: 32, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_io_apic", file: !12, line: 918, size: 96, elements: !134)
!134 = !{!135, !136, !137, !138, !139}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !133, file: !12, line: 919, baseType: !107, size: 16)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !133, file: !12, line: 920, baseType: !110, size: 8, offset: 16)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !133, file: !12, line: 921, baseType: !110, size: 8, offset: 24)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !133, file: !12, line: 922, baseType: !119, size: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "global_irq_base", scope: !133, file: !12, line: 923, baseType: !119, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_interrupt_override", file: !12, line: 928, size: 80, elements: !142)
!142 = !{!143, !144, !145, !146, !147}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !141, file: !12, line: 929, baseType: !107, size: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !141, file: !12, line: 930, baseType: !110, size: 8, offset: 16)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "source_irq", scope: !141, file: !12, line: 931, baseType: !110, size: 8, offset: 24)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "global_irq", scope: !141, file: !12, line: 932, baseType: !119, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "inti_flags", scope: !141, file: !12, line: 933, baseType: !126, size: 16, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_nmi_source", file: !12, line: 938, size: 64, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !149, file: !12, line: 939, baseType: !107, size: 16)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "inti_flags", scope: !149, file: !12, line: 940, baseType: !126, size: 16, offset: 16)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "global_irq", scope: !149, file: !12, line: 941, baseType: !119, size: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_apic_nmi", file: !12, line: 946, size: 48, elements: !156)
!156 = !{!157, !158, !159, !160}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !155, file: !12, line: 947, baseType: !107, size: 16)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", scope: !155, file: !12, line: 948, baseType: !110, size: 8, offset: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "inti_flags", scope: !155, file: !12, line: 949, baseType: !126, size: 16, offset: 24)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "lint", scope: !155, file: !12, line: 950, baseType: !110, size: 8, offset: 40)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_x2apic_nmi", file: !12, line: 1013, size: 96, elements: !163)
!163 = !{!164, !165, !166, !167, !168}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !162, file: !12, line: 1014, baseType: !107, size: 16)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "inti_flags", scope: !162, file: !12, line: 1015, baseType: !126, size: 16, offset: 16)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !162, file: !12, line: 1016, baseType: !119, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "lint", scope: !162, file: !12, line: 1017, baseType: !110, size: 8, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !162, file: !12, line: 1018, baseType: !169, size: 24, offset: 72)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 24, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 3)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_apic_override", file: !12, line: 955, size: 96, elements: !174)
!174 = !{!175, !176, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !173, file: !12, line: 956, baseType: !107, size: 16)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !173, file: !12, line: 957, baseType: !126, size: 16, offset: 16)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !173, file: !12, line: 958, baseType: !178, size: 64, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !111, line: 23, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !113, line: 31, baseType: !180)
!180 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_io_sapic", file: !12, line: 963, size: 128, elements: !183)
!183 = !{!184, !185, !186, !187, !188}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !182, file: !12, line: 964, baseType: !107, size: 16)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !182, file: !12, line: 965, baseType: !110, size: 8, offset: 16)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !182, file: !12, line: 966, baseType: !110, size: 8, offset: 24)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "global_irq_base", scope: !182, file: !12, line: 967, baseType: !119, size: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !182, file: !12, line: 968, baseType: !178, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_sapic", file: !12, line: 973, size: 128, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !190, file: !12, line: 974, baseType: !107, size: 16)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", scope: !190, file: !12, line: 975, baseType: !110, size: 8, offset: 16)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !190, file: !12, line: 976, baseType: !110, size: 8, offset: 24)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !190, file: !12, line: 977, baseType: !110, size: 8, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !190, file: !12, line: 978, baseType: !169, size: 24, offset: 40)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "lapic_flags", scope: !190, file: !12, line: 979, baseType: !119, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !190, file: !12, line: 980, baseType: !119, size: 32, offset: 96)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "uid_string", scope: !190, file: !12, line: 981, baseType: !200, offset: 128)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: -1)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_interrupt_source", file: !12, line: 986, size: 128, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !204, file: !12, line: 987, baseType: !107, size: 16)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "inti_flags", scope: !204, file: !12, line: 988, baseType: !126, size: 16, offset: 16)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !204, file: !12, line: 989, baseType: !110, size: 8, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !204, file: !12, line: 990, baseType: !110, size: 8, offset: 40)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !204, file: !12, line: 991, baseType: !110, size: 8, offset: 48)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "io_sapic_vector", scope: !204, file: !12, line: 992, baseType: !110, size: 8, offset: 56)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "global_irq", scope: !204, file: !12, line: 993, baseType: !119, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !12, line: 994, baseType: !119, size: 32, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_generic_interrupt", file: !12, line: 1023, size: 656, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !236, !237}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !215, file: !12, line: 1024, baseType: !107, size: 16)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !215, file: !12, line: 1025, baseType: !126, size: 16, offset: 16)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_interface_number", scope: !215, file: !12, line: 1026, baseType: !119, size: 32, offset: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !215, file: !12, line: 1027, baseType: !119, size: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !12, line: 1028, baseType: !119, size: 32, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "parking_version", scope: !215, file: !12, line: 1029, baseType: !119, size: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "performance_interrupt", scope: !215, file: !12, line: 1030, baseType: !119, size: 32, offset: 160)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parked_address", scope: !215, file: !12, line: 1031, baseType: !178, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !215, file: !12, line: 1032, baseType: !178, size: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "gicv_base_address", scope: !215, file: !12, line: 1033, baseType: !178, size: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "gich_base_address", scope: !215, file: !12, line: 1034, baseType: !178, size: 64, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "vgic_interrupt", scope: !215, file: !12, line: 1035, baseType: !119, size: 32, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "gicr_base_address", scope: !215, file: !12, line: 1036, baseType: !178, size: 64, offset: 480)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "arm_mpidr", scope: !215, file: !12, line: 1037, baseType: !178, size: 64, offset: 544)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "efficiency_class", scope: !215, file: !12, line: 1038, baseType: !110, size: 8, offset: 608)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !215, file: !12, line: 1039, baseType: !233, size: 8, offset: 616)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 8, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 1)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "spe_interrupt", scope: !215, file: !12, line: 1040, baseType: !126, size: 16, offset: 624)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "trbe_interrupt", scope: !215, file: !12, line: 1041, baseType: !126, size: 16, offset: 640)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_generic_distributor", file: !12, line: 1052, size: 192, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !239, file: !12, line: 1053, baseType: !107, size: 16)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !239, file: !12, line: 1054, baseType: !126, size: 16, offset: 16)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "gic_id", scope: !239, file: !12, line: 1055, baseType: !119, size: 32, offset: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !239, file: !12, line: 1056, baseType: !178, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "global_irq_base", scope: !239, file: !12, line: 1057, baseType: !119, size: 32, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !239, file: !12, line: 1058, baseType: !110, size: 8, offset: 160)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !239, file: !12, line: 1059, baseType: !169, size: 24, offset: 168)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_core_pic", file: !12, line: 1133, size: 120, elements: !250)
!250 = !{!251, !252, !253, !254, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !249, file: !12, line: 1134, baseType: !107, size: 16)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !249, file: !12, line: 1135, baseType: !110, size: 8, offset: 16)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", scope: !249, file: !12, line: 1136, baseType: !119, size: 32, offset: 24)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "core_id", scope: !249, file: !12, line: 1137, baseType: !119, size: 32, offset: 56)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !249, file: !12, line: 1138, baseType: !119, size: 32, offset: 88)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_rintc", file: !12, line: 1260, size: 288, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !257, file: !12, line: 1261, baseType: !107, size: 16)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !257, file: !12, line: 1262, baseType: !110, size: 8, offset: 16)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !257, file: !12, line: 1263, baseType: !110, size: 8, offset: 24)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !12, line: 1264, baseType: !119, size: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "hart_id", scope: !257, file: !12, line: 1265, baseType: !178, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !257, file: !12, line: 1266, baseType: !119, size: 32, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ext_intc_id", scope: !257, file: !12, line: 1267, baseType: !119, size: 32, offset: 160)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "imsic_addr", scope: !257, file: !12, line: 1268, baseType: !178, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "imsic_size", scope: !257, file: !12, line: 1269, baseType: !119, size: 32, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!269 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !271, line: 421, baseType: !119)
!271 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!272 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_subtable_headers", file: !275, line: 122, size: 64, elements: !276)
!275 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!276 = !{!277, !278, !284, !289}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !274, file: !275, line: 123, baseType: !107, size: 16)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "hmat", scope: !274, file: !275, line: 124, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hmat_structure", file: !46, line: 1712, size: 64, elements: !280)
!280 = !{!281, !282, !283}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !279, file: !46, line: 1713, baseType: !126, size: 16)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !279, file: !46, line: 1714, baseType: !126, size: 16, offset: 16)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !279, file: !46, line: 1715, baseType: !119, size: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "prmt", scope: !274, file: !275, line: 125, baseType: !285, size: 32)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_prmt_module_header", file: !12, line: 2625, size: 32, elements: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !285, file: !12, line: 2626, baseType: !126, size: 16)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !285, file: !12, line: 2627, baseType: !126, size: 16, offset: 16)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "cedt", scope: !274, file: !275, line: 126, baseType: !290, size: 32)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_cedt_header", file: !46, line: 483, size: 32, elements: !291)
!291 = !{!292, !293, !294}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !46, line: 484, baseType: !110, size: 8)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !290, file: !46, line: 485, baseType: !110, size: 8, offset: 8)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !290, file: !46, line: 486, baseType: !126, size: 16, offset: 16)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !297, line: 42, baseType: !272)
!297 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!298 = !{!0, !299, !304, !309, !314, !319, !324, !329, !334, !339, !341, !346, !351, !356, !361, !366, !371, !376, !378, !380, !385, !399, !401, !403, !445, !447, !449, !451, !469, !471, !473, !475, !7, !477, !479, !481, !484, !489, !491, !493, !495, !500, !502, !505, !510, !514, !516, !518, !520, !522, !527, !532, !537, !542, !547}
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 53)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 39)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !311, isLocal: true, isDefinition: true)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 54)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 51)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 42)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 792, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 99)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !2, line: 234, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 52)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !2, line: 418, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 5)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 454, type: !336, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 609, type: !343, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 62)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !2, line: 621, type: !348, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 49)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 626, type: !353, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 71)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !2, line: 631, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 50)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !2, line: 636, type: !363, isLocal: true, isDefinition: true)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 55)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !2, line: 648, type: !368, isLocal: true, isDefinition: true)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 56)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !2, line: 656, type: !373, isLocal: true, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 22)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 872, type: !316, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !2, line: 875, type: !331, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !2, line: 898, type: !382, isLocal: true, isDefinition: true)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 59)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(name: "__setup_acpi_parse_apic_instance", scope: !9, file: !2, line: 936, type: !387, isLocal: true, isDefinition: true, align: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !388, line: 324, size: 192, elements: !389)
!388 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!389 = !{!390, !393, !398}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !387, file: !388, line: 325, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !387, file: !388, line: 326, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!269, !397}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !387, file: !388, line: 327, baseType: !269, size: 32, offset: 128)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "__setup_acpi_force_table_verification_setup", scope: !9, file: !2, line: 944, type: !387, isLocal: true, isDefinition: true, align: 64)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "__setup_acpi_force_32bit_fadt_addr", scope: !9, file: !2, line: 953, type: !387, isLocal: true, isDefinition: true, align: 64)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "initial_tables", scope: !9, file: !2, line: 36, type: !405, isLocal: true, isDefinition: true)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 32768, elements: !443)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !407, line: 335, size: 256, elements: !408)
!407 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!408 = !{!409, !411, !433, !434, !439, !441, !442}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !406, file: !407, line: 336, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !271, line: 129, baseType: !178)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !406, file: !407, line: 337, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !407, line: 68, size: 288, elements: !414)
!414 = !{!415, !419, !420, !421, !422, !426, !430, !431, !432}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !413, file: !407, line: 69, baseType: !416, size: 32)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 4)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !413, file: !407, line: 70, baseType: !119, size: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !413, file: !407, line: 71, baseType: !110, size: 8, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !413, file: !407, line: 72, baseType: !110, size: 8, offset: 72)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !413, file: !407, line: 73, baseType: !423, size: 48, offset: 80)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 6)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !413, file: !407, line: 74, baseType: !427, size: 64, offset: 128)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 8)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !413, file: !407, line: 75, baseType: !119, size: 32, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !413, file: !407, line: 76, baseType: !416, size: 32, offset: 224)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !413, file: !407, line: 77, baseType: !119, size: 32, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !406, file: !407, line: 338, baseType: !119, size: 32, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !406, file: !407, line: 339, baseType: !435, size: 32, offset: 160)
!435 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !407, line: 328, size: 32, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !435, file: !407, line: 329, baseType: !119, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !435, file: !407, line: 330, baseType: !416, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !406, file: !407, line: 340, baseType: !440, size: 16, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !271, line: 445, baseType: !126)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !406, file: !407, line: 341, baseType: !110, size: 8, offset: 208)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !406, file: !407, line: 342, baseType: !126, size: 16, offset: 224)
!443 = !{!444}
!444 = !DISubrange(count: 128)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(name: "acpi_apic_instance", scope: !9, file: !2, line: 38, type: !269, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(name: "acpi_tables_addr", scope: !9, file: !2, line: 542, type: !178, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "all_tables_size", scope: !9, file: !2, line: 543, type: !269, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(name: "acpi_initrd_files", scope: !9, file: !2, line: 574, type: !453, isLocal: true, isDefinition: true)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 20480, elements: !467)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpio_data", file: !455, line: 9, size: 320, elements: !456)
!455 = !DIFile(filename: "./include/linux/earlycpio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c701ce9fd3d94067c5868d60432fc97e")
!456 = !{!457, !458, !463}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !454, file: !455, line: 10, baseType: !268, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !454, file: !455, line: 11, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !297, line: 61, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !461, line: 72, baseType: !462)
!461 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !461, line: 16, baseType: !272)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !454, file: !455, line: 12, baseType: !464, size: 144, offset: 128)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 18)
!467 = !{!468}
!468 = !DISubrange(count: 64)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !416, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !336, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !416, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !416, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !336, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !423, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "mps_inti_flags_trigger", scope: !9, file: !2, line: 34, type: !483, isLocal: true, isDefinition: true)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 256, elements: !417)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !2, line: 385, type: !486, isLocal: true, isDefinition: true)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 44)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !2, line: 394, type: !301, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !336, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !2, line: 293, type: !336, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "table_sigs", scope: !9, file: !2, line: 557, type: !497, isLocal: true, isDefinition: true)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 1440, elements: !498)
!498 = !{!499, !418}
!499 = !DISubrange(count: 45)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !2, line: 749, type: !301, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "acpi_initrd_installed", scope: !9, file: !2, line: 575, type: !504, isLocal: true, isDefinition: true)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 64, elements: !234)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !2, line: 536, type: !507, isLocal: true, isDefinition: true)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 65)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "acpi_verify_table_checksum", scope: !9, file: !2, line: 56, type: !512, isLocal: true, isDefinition: true)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !297, line: 35, baseType: !513)
!513 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !2, line: 784, type: !336, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !2, line: 785, type: !336, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !2, line: 799, type: !331, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !2, line: 521, type: !311, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !524, isLocal: true, isDefinition: true)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 672, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 84)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(name: "__setup_str_acpi_parse_apic_instance", scope: !9, file: !2, line: 936, type: !529, isLocal: true, isDefinition: true, align: 8)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 152, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 19)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !2, line: 932, type: !534, isLocal: true, isDefinition: true)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 38)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(name: "__setup_str_acpi_force_table_verification_setup", scope: !9, file: !2, line: 944, type: !539, isLocal: true, isDefinition: true, align: 8)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 240, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 30)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "__setup_str_acpi_force_32bit_fadt_addr", scope: !9, file: !2, line: 953, type: !544, isLocal: true, isDefinition: true, align: 8)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 216, elements: !545)
!545 = !{!546}
!546 = !DISubrange(count: 27)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !2, line: 948, type: !306, isLocal: true, isDefinition: true)
!549 = !{i32 7, !"Dwarf Version", i32 5}
!550 = !{i32 2, !"Debug Info Version", i32 3}
!551 = !{i32 1, !"wchar_size", i32 2}
!552 = !{i32 8, !"cf-protection-branch", i32 1}
!553 = !{i32 4, !"function_return_thunk_extern", i32 1}
!554 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!555 = !{i32 1, !"Code Model", i32 2}
!556 = !{i32 1, !"override-stack-alignment", i32 8}
!557 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!558 = distinct !DISubprogram(name: "acpi_table_print_madt_entry", scope: !2, file: !2, line: 58, type: !559, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !562)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !561}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!562 = !{!563, !564, !567, !569, !571, !573, !575, !577, !579, !580, !581, !583, !585, !587, !589, !591, !593, !595}
!563 = !DILocalVariable(name: "header", arg: 1, scope: !558, file: !2, line: 58, type: !561)
!564 = !DILocalVariable(name: "p", scope: !565, file: !2, line: 67, type: !103)
!565 = distinct !DILexicalBlock(scope: !566, file: !2, line: 66, column: 3)
!566 = distinct !DILexicalBlock(scope: !558, file: !2, line: 63, column: 24)
!567 = !DILocalVariable(name: "p", scope: !568, file: !2, line: 77, type: !121)
!568 = distinct !DILexicalBlock(scope: !566, file: !2, line: 76, column: 3)
!569 = !DILocalVariable(name: "p", scope: !570, file: !2, line: 87, type: !132)
!570 = distinct !DILexicalBlock(scope: !566, file: !2, line: 86, column: 3)
!571 = !DILocalVariable(name: "p", scope: !572, file: !2, line: 96, type: !140)
!572 = distinct !DILexicalBlock(scope: !566, file: !2, line: 95, column: 3)
!573 = !DILocalVariable(name: "p", scope: !574, file: !2, line: 112, type: !148)
!574 = distinct !DILexicalBlock(scope: !566, file: !2, line: 111, column: 3)
!575 = !DILocalVariable(name: "p", scope: !576, file: !2, line: 123, type: !154)
!576 = distinct !DILexicalBlock(scope: !566, file: !2, line: 122, column: 3)
!577 = !DILocalVariable(name: "polarity", scope: !578, file: !2, line: 135, type: !126)
!578 = distinct !DILexicalBlock(scope: !566, file: !2, line: 134, column: 3)
!579 = !DILocalVariable(name: "trigger", scope: !578, file: !2, line: 135, type: !126)
!580 = !DILocalVariable(name: "p", scope: !578, file: !2, line: 136, type: !161)
!581 = !DILocalVariable(name: "p", scope: !582, file: !2, line: 152, type: !172)
!582 = distinct !DILexicalBlock(scope: !566, file: !2, line: 151, column: 3)
!583 = !DILocalVariable(name: "p", scope: !584, file: !2, line: 161, type: !181)
!584 = distinct !DILexicalBlock(scope: !566, file: !2, line: 160, column: 3)
!585 = !DILocalVariable(name: "p", scope: !586, file: !2, line: 171, type: !189)
!586 = distinct !DILexicalBlock(scope: !566, file: !2, line: 170, column: 3)
!587 = !DILocalVariable(name: "p", scope: !588, file: !2, line: 181, type: !203)
!588 = distinct !DILexicalBlock(scope: !566, file: !2, line: 180, column: 3)
!589 = !DILocalVariable(name: "p", scope: !590, file: !2, line: 193, type: !214)
!590 = distinct !DILexicalBlock(scope: !566, file: !2, line: 192, column: 3)
!591 = !DILocalVariable(name: "p", scope: !592, file: !2, line: 205, type: !238)
!592 = distinct !DILexicalBlock(scope: !566, file: !2, line: 204, column: 3)
!593 = !DILocalVariable(name: "p", scope: !594, file: !2, line: 215, type: !248)
!594 = distinct !DILexicalBlock(scope: !566, file: !2, line: 214, column: 3)
!595 = !DILocalVariable(name: "p", scope: !596, file: !2, line: 225, type: !256)
!596 = distinct !DILexicalBlock(scope: !566, file: !2, line: 224, column: 3)
!597 = !DILocation(line: 58, column: 63, scope: !558)
!598 = !DILocation(line: 60, column: 7, scope: !599)
!599 = distinct !DILexicalBlock(scope: !558, file: !2, line: 60, column: 6)
!600 = !DILocation(line: 60, column: 6, scope: !558)
!601 = !DILocation(line: 61, column: 3, scope: !599)
!602 = !DILocation(line: 63, column: 10, scope: !558)
!603 = !DILocation(line: 63, column: 18, scope: !558)
!604 = !DILocation(line: 63, column: 2, scope: !558)
!605 = !DILocation(line: 67, column: 4, scope: !565)
!606 = !DILocation(line: 67, column: 33, scope: !565)
!607 = !DILocation(line: 68, column: 39, scope: !565)
!608 = !DILocation(line: 69, column: 4, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !2, line: 69, column: 4)
!610 = distinct !DILexicalBlock(scope: !565, file: !2, line: 69, column: 4)
!611 = !DILocation(line: 69, column: 4, scope: !610)
!612 = !DILocation(line: 72, column: 3, scope: !566)
!613 = !DILocation(line: 73, column: 3, scope: !566)
!614 = !DILocation(line: 77, column: 4, scope: !568)
!615 = !DILocation(line: 77, column: 35, scope: !568)
!616 = !DILocation(line: 78, column: 41, scope: !568)
!617 = !DILocation(line: 79, column: 4, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !2, line: 79, column: 4)
!619 = distinct !DILexicalBlock(scope: !568, file: !2, line: 79, column: 4)
!620 = !DILocation(line: 79, column: 4, scope: !619)
!621 = !DILocation(line: 82, column: 3, scope: !566)
!622 = !DILocation(line: 83, column: 3, scope: !566)
!623 = !DILocation(line: 87, column: 4, scope: !570)
!624 = !DILocation(line: 87, column: 30, scope: !570)
!625 = !DILocation(line: 88, column: 36, scope: !570)
!626 = !DILocation(line: 89, column: 4, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !2, line: 89, column: 4)
!628 = distinct !DILexicalBlock(scope: !570, file: !2, line: 89, column: 4)
!629 = !DILocation(line: 89, column: 4, scope: !628)
!630 = !DILocation(line: 91, column: 3, scope: !566)
!631 = !DILocation(line: 92, column: 3, scope: !566)
!632 = !DILocation(line: 96, column: 4, scope: !572)
!633 = !DILocation(line: 96, column: 41, scope: !572)
!634 = !DILocation(line: 97, column: 47, scope: !572)
!635 = !DILocation(line: 98, column: 4, scope: !636)
!636 = distinct !DILexicalBlock(scope: !572, file: !2, line: 98, column: 4)
!637 = !DILocation(line: 98, column: 4, scope: !638)
!638 = distinct !DILexicalBlock(scope: !636, file: !2, line: 98, column: 4)
!639 = !DILocation(line: 102, column: 8, scope: !640)
!640 = distinct !DILexicalBlock(scope: !572, file: !2, line: 102, column: 8)
!641 = !DILocation(line: 102, column: 11, scope: !640)
!642 = !DILocation(line: 102, column: 23, scope: !640)
!643 = !DILocation(line: 102, column: 8, scope: !572)
!644 = !DILocation(line: 104, column: 5, scope: !645)
!645 = distinct !DILexicalBlock(scope: !640, file: !2, line: 104, column: 5)
!646 = !DILocation(line: 104, column: 5, scope: !647)
!647 = distinct !DILexicalBlock(scope: !645, file: !2, line: 104, column: 5)
!648 = !DILocation(line: 104, column: 5, scope: !640)
!649 = !DILocation(line: 107, column: 3, scope: !566)
!650 = !DILocation(line: 108, column: 3, scope: !566)
!651 = !DILocation(line: 112, column: 4, scope: !574)
!652 = !DILocation(line: 112, column: 33, scope: !574)
!653 = !DILocation(line: 113, column: 39, scope: !574)
!654 = !DILocation(line: 114, column: 4, scope: !655)
!655 = distinct !DILexicalBlock(scope: !574, file: !2, line: 114, column: 4)
!656 = !DILocation(line: 114, column: 4, scope: !657)
!657 = distinct !DILexicalBlock(scope: !655, file: !2, line: 114, column: 4)
!658 = !DILocation(line: 118, column: 3, scope: !566)
!659 = !DILocation(line: 119, column: 3, scope: !566)
!660 = !DILocation(line: 123, column: 4, scope: !576)
!661 = !DILocation(line: 123, column: 37, scope: !576)
!662 = !DILocation(line: 124, column: 43, scope: !576)
!663 = !DILocation(line: 125, column: 4, scope: !664)
!664 = distinct !DILexicalBlock(scope: !576, file: !2, line: 125, column: 4)
!665 = !DILocation(line: 125, column: 4, scope: !666)
!666 = distinct !DILexicalBlock(scope: !664, file: !2, line: 125, column: 4)
!667 = !DILocation(line: 130, column: 3, scope: !566)
!668 = !DILocation(line: 131, column: 3, scope: !566)
!669 = !DILocation(line: 135, column: 4, scope: !578)
!670 = !DILocation(line: 135, column: 8, scope: !578)
!671 = !DILocation(line: 135, column: 18, scope: !578)
!672 = !DILocation(line: 136, column: 4, scope: !578)
!673 = !DILocation(line: 136, column: 39, scope: !578)
!674 = !DILocation(line: 137, column: 45, scope: !578)
!675 = !DILocation(line: 139, column: 15, scope: !578)
!676 = !DILocation(line: 139, column: 18, scope: !578)
!677 = !DILocation(line: 139, column: 29, scope: !578)
!678 = !DILocation(line: 139, column: 13, scope: !578)
!679 = !DILocation(line: 140, column: 15, scope: !578)
!680 = !DILocation(line: 140, column: 18, scope: !578)
!681 = !DILocation(line: 140, column: 29, scope: !578)
!682 = !DILocation(line: 140, column: 55, scope: !578)
!683 = !DILocation(line: 140, column: 14, scope: !578)
!684 = !DILocation(line: 140, column: 12, scope: !578)
!685 = !DILocation(line: 142, column: 4, scope: !686)
!686 = distinct !DILexicalBlock(scope: !578, file: !2, line: 142, column: 4)
!687 = !DILocation(line: 142, column: 4, scope: !688)
!688 = distinct !DILexicalBlock(scope: !686, file: !2, line: 142, column: 4)
!689 = !DILocation(line: 147, column: 3, scope: !566)
!690 = !DILocation(line: 148, column: 3, scope: !566)
!691 = !DILocation(line: 152, column: 4, scope: !582)
!692 = !DILocation(line: 152, column: 42, scope: !582)
!693 = !DILocation(line: 153, column: 48, scope: !582)
!694 = !DILocation(line: 154, column: 4, scope: !695)
!695 = distinct !DILexicalBlock(scope: !582, file: !2, line: 154, column: 4)
!696 = !DILocation(line: 154, column: 4, scope: !697)
!697 = distinct !DILexicalBlock(scope: !695, file: !2, line: 154, column: 4)
!698 = !DILocation(line: 156, column: 3, scope: !566)
!699 = !DILocation(line: 157, column: 3, scope: !566)
!700 = !DILocation(line: 161, column: 4, scope: !584)
!701 = !DILocation(line: 161, column: 31, scope: !584)
!702 = !DILocation(line: 162, column: 37, scope: !584)
!703 = !DILocation(line: 163, column: 4, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !2, line: 163, column: 4)
!705 = distinct !DILexicalBlock(scope: !584, file: !2, line: 163, column: 4)
!706 = !DILocation(line: 163, column: 4, scope: !705)
!707 = !DILocation(line: 166, column: 3, scope: !566)
!708 = !DILocation(line: 167, column: 3, scope: !566)
!709 = !DILocation(line: 171, column: 4, scope: !586)
!710 = !DILocation(line: 171, column: 34, scope: !586)
!711 = !DILocation(line: 172, column: 40, scope: !586)
!712 = !DILocation(line: 173, column: 4, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !2, line: 173, column: 4)
!714 = distinct !DILexicalBlock(scope: !586, file: !2, line: 173, column: 4)
!715 = !DILocation(line: 173, column: 4, scope: !714)
!716 = !DILocation(line: 176, column: 3, scope: !566)
!717 = !DILocation(line: 177, column: 3, scope: !566)
!718 = !DILocation(line: 181, column: 4, scope: !588)
!719 = !DILocation(line: 181, column: 39, scope: !588)
!720 = !DILocation(line: 182, column: 45, scope: !588)
!721 = !DILocation(line: 183, column: 4, scope: !722)
!722 = distinct !DILexicalBlock(scope: !588, file: !2, line: 183, column: 4)
!723 = !DILocation(line: 183, column: 4, scope: !724)
!724 = distinct !DILexicalBlock(scope: !722, file: !2, line: 183, column: 4)
!725 = !DILocation(line: 188, column: 3, scope: !566)
!726 = !DILocation(line: 189, column: 3, scope: !566)
!727 = !DILocation(line: 193, column: 4, scope: !590)
!728 = !DILocation(line: 193, column: 40, scope: !590)
!729 = !DILocation(line: 194, column: 43, scope: !590)
!730 = !DILocation(line: 195, column: 4, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !2, line: 195, column: 4)
!732 = distinct !DILexicalBlock(scope: !590, file: !2, line: 195, column: 4)
!733 = !DILocation(line: 195, column: 4, scope: !732)
!734 = !DILocation(line: 200, column: 3, scope: !566)
!735 = !DILocation(line: 201, column: 3, scope: !566)
!736 = !DILocation(line: 205, column: 4, scope: !592)
!737 = !DILocation(line: 205, column: 42, scope: !592)
!738 = !DILocation(line: 206, column: 45, scope: !592)
!739 = !DILocation(line: 207, column: 4, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !2, line: 207, column: 4)
!741 = distinct !DILexicalBlock(scope: !592, file: !2, line: 207, column: 4)
!742 = !DILocation(line: 207, column: 4, scope: !741)
!743 = !DILocation(line: 210, column: 3, scope: !566)
!744 = !DILocation(line: 211, column: 3, scope: !566)
!745 = !DILocation(line: 215, column: 4, scope: !594)
!746 = !DILocation(line: 215, column: 31, scope: !594)
!747 = !DILocation(line: 215, column: 64, scope: !594)
!748 = !DILocation(line: 217, column: 4, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !2, line: 217, column: 4)
!750 = distinct !DILexicalBlock(scope: !594, file: !2, line: 217, column: 4)
!751 = !DILocation(line: 217, column: 4, scope: !750)
!752 = !DILocation(line: 220, column: 3, scope: !566)
!753 = !DILocation(line: 221, column: 3, scope: !566)
!754 = !DILocation(line: 225, column: 4, scope: !596)
!755 = !DILocation(line: 225, column: 28, scope: !596)
!756 = !DILocation(line: 225, column: 58, scope: !596)
!757 = !DILocation(line: 227, column: 4, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !2, line: 227, column: 4)
!759 = distinct !DILexicalBlock(scope: !596, file: !2, line: 227, column: 4)
!760 = !DILocation(line: 227, column: 4, scope: !759)
!761 = !DILocation(line: 230, column: 3, scope: !566)
!762 = !DILocation(line: 231, column: 3, scope: !566)
!763 = !DILocation(line: 234, column: 3, scope: !764)
!764 = distinct !DILexicalBlock(scope: !566, file: !2, line: 234, column: 3)
!765 = !DILocation(line: 234, column: 3, scope: !766)
!766 = distinct !DILexicalBlock(scope: !764, file: !2, line: 234, column: 3)
!767 = !DILocation(line: 236, column: 3, scope: !566)
!768 = !DILocation(line: 238, column: 1, scope: !558)
!769 = !DISubprogram(name: "_printk", scope: !770, file: !770, line: 153, type: !771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!770 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!771 = !DISubroutineType(types: !772)
!772 = !{!269, !391, null}
!773 = distinct !DISubprogram(name: "acpi_table_parse_entries_array", scope: !2, file: !2, line: 401, type: !774, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !793)
!774 = !DISubroutineType(types: !775)
!775 = !{!269, !397, !272, !776, !269, !13}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_subtable_proc", file: !275, line: 210, size: 320, elements: !778)
!778 = !{!779, !780, !786, !791, !792}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !777, file: !275, line: 211, baseType: !269, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !777, file: !275, line: 212, baseType: !781, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_tbl_entry_handler", file: !275, line: 131, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!269, !273, !785}
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "handler_arg", scope: !777, file: !275, line: 213, baseType: !787, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_tbl_entry_handler_arg", file: !275, line: 134, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!269, !273, !268, !785}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !777, file: !275, line: 214, baseType: !268, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !777, file: !275, line: 215, baseType: !269, size: 32, offset: 256)
!793 = !{!794, !795, !796, !797, !798, !799, !800, !801}
!794 = !DILocalVariable(name: "id", arg: 1, scope: !773, file: !2, line: 402, type: !397)
!795 = !DILocalVariable(name: "table_size", arg: 2, scope: !773, file: !2, line: 402, type: !272)
!796 = !DILocalVariable(name: "proc", arg: 3, scope: !773, file: !2, line: 402, type: !776)
!797 = !DILocalVariable(name: "proc_num", arg: 4, scope: !773, file: !2, line: 403, type: !269)
!798 = !DILocalVariable(name: "max_entries", arg: 5, scope: !773, file: !2, line: 403, type: !13)
!799 = !DILocalVariable(name: "table_header", scope: !773, file: !2, line: 405, type: !412)
!800 = !DILocalVariable(name: "count", scope: !773, file: !2, line: 406, type: !269)
!801 = !DILocalVariable(name: "instance", scope: !773, file: !2, line: 407, type: !119)
!802 = !DILocation(line: 402, column: 8, scope: !773)
!803 = !DILocation(line: 402, column: 26, scope: !773)
!804 = !DILocation(line: 402, column: 65, scope: !773)
!805 = !DILocation(line: 403, column: 6, scope: !773)
!806 = !DILocation(line: 403, column: 29, scope: !773)
!807 = !DILocation(line: 405, column: 2, scope: !773)
!808 = !DILocation(line: 405, column: 28, scope: !773)
!809 = !DILocation(line: 406, column: 2, scope: !773)
!810 = !DILocation(line: 406, column: 6, scope: !773)
!811 = !DILocation(line: 407, column: 2, scope: !773)
!812 = !DILocation(line: 407, column: 6, scope: !773)
!813 = !DILocation(line: 409, column: 6, scope: !814)
!814 = distinct !DILexicalBlock(scope: !773, file: !2, line: 409, column: 6)
!815 = !DILocation(line: 409, column: 6, scope: !773)
!816 = !DILocation(line: 410, column: 3, scope: !814)
!817 = !DILocation(line: 412, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !773, file: !2, line: 412, column: 6)
!819 = !DILocation(line: 412, column: 6, scope: !773)
!820 = !DILocation(line: 413, column: 3, scope: !818)
!821 = !DILocation(line: 415, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !773, file: !2, line: 415, column: 6)
!823 = !DILocation(line: 415, column: 6, scope: !773)
!824 = !DILocation(line: 416, column: 3, scope: !822)
!825 = !DILocation(line: 418, column: 15, scope: !826)
!826 = distinct !DILexicalBlock(scope: !773, file: !2, line: 418, column: 6)
!827 = !DILocation(line: 418, column: 7, scope: !826)
!828 = !DILocation(line: 418, column: 6, scope: !773)
!829 = !DILocation(line: 419, column: 14, scope: !826)
!830 = !DILocation(line: 419, column: 12, scope: !826)
!831 = !DILocation(line: 419, column: 3, scope: !826)
!832 = !DILocation(line: 421, column: 17, scope: !773)
!833 = !DILocation(line: 421, column: 21, scope: !773)
!834 = !DILocation(line: 421, column: 2, scope: !773)
!835 = !DILocation(line: 422, column: 7, scope: !836)
!836 = distinct !DILexicalBlock(scope: !773, file: !2, line: 422, column: 6)
!837 = !DILocation(line: 422, column: 6, scope: !773)
!838 = !DILocation(line: 423, column: 3, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !2, line: 423, column: 3)
!840 = distinct !DILexicalBlock(scope: !841, file: !2, line: 423, column: 3)
!841 = distinct !DILexicalBlock(scope: !836, file: !2, line: 422, column: 21)
!842 = !DILocation(line: 423, column: 3, scope: !840)
!843 = !DILocation(line: 424, column: 3, scope: !841)
!844 = !DILocation(line: 427, column: 35, scope: !773)
!845 = !DILocation(line: 427, column: 39, scope: !773)
!846 = !DILocation(line: 427, column: 51, scope: !773)
!847 = !DILocation(line: 428, column: 4, scope: !773)
!848 = !DILocation(line: 428, column: 10, scope: !773)
!849 = !DILocation(line: 428, column: 20, scope: !773)
!850 = !DILocation(line: 427, column: 10, scope: !773)
!851 = !DILocation(line: 427, column: 8, scope: !773)
!852 = !DILocation(line: 430, column: 17, scope: !773)
!853 = !DILocation(line: 430, column: 2, scope: !773)
!854 = !DILocation(line: 431, column: 9, scope: !773)
!855 = !DILocation(line: 431, column: 2, scope: !773)
!856 = !DILocation(line: 432, column: 1, scope: !773)
!857 = !DISubprogram(name: "strncmp", scope: !858, file: !858, line: 91, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!858 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!859 = !DISubroutineType(types: !860)
!860 = !{!269, !391, !391, !460}
!861 = !DISubprogram(name: "acpi_get_table", scope: !862, file: !862, line: 489, type: !863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!862 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!863 = !DISubroutineType(types: !864)
!864 = !{!270, !865, !119, !866}
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !271, line: 423, baseType: !397)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!867 = distinct !DISubprogram(name: "acpi_parse_entries_array", scope: !2, file: !2, line: 339, type: !868, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{!269, !397, !272, !412, !776, !269, !13}
!870 = !{!871, !872, !873, !874, !875, !876, !877, !882, !883, !884, !885, !886, !887}
!871 = !DILocalVariable(name: "id", arg: 1, scope: !867, file: !2, line: 340, type: !397)
!872 = !DILocalVariable(name: "table_size", arg: 2, scope: !867, file: !2, line: 340, type: !272)
!873 = !DILocalVariable(name: "table_header", arg: 3, scope: !867, file: !2, line: 341, type: !412)
!874 = !DILocalVariable(name: "proc", arg: 4, scope: !867, file: !2, line: 341, type: !776)
!875 = !DILocalVariable(name: "proc_num", arg: 5, scope: !867, file: !2, line: 342, type: !269)
!876 = !DILocalVariable(name: "max_entries", arg: 6, scope: !867, file: !2, line: 342, type: !13)
!877 = !DILocalVariable(name: "entry", scope: !867, file: !2, line: 344, type: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_subtable_entry", file: !2, line: 47, size: 128, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !878, file: !2, line: 48, baseType: !273, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !878, file: !2, line: 49, baseType: !86, size: 32, offset: 64)
!882 = !DILocalVariable(name: "table_end", scope: !867, file: !2, line: 345, type: !272)
!883 = !DILocalVariable(name: "subtable_len", scope: !867, file: !2, line: 345, type: !272)
!884 = !DILocalVariable(name: "entry_len", scope: !867, file: !2, line: 345, type: !272)
!885 = !DILocalVariable(name: "count", scope: !867, file: !2, line: 346, type: !269)
!886 = !DILocalVariable(name: "errs", scope: !867, file: !2, line: 347, type: !269)
!887 = !DILocalVariable(name: "i", scope: !867, file: !2, line: 348, type: !269)
!888 = !DILocation(line: 340, column: 8, scope: !867)
!889 = !DILocation(line: 340, column: 26, scope: !867)
!890 = !DILocation(line: 341, column: 28, scope: !867)
!891 = !DILocation(line: 341, column: 69, scope: !867)
!892 = !DILocation(line: 342, column: 6, scope: !867)
!893 = !DILocation(line: 342, column: 29, scope: !867)
!894 = !DILocation(line: 344, column: 2, scope: !867)
!895 = !DILocation(line: 344, column: 29, scope: !867)
!896 = !DILocation(line: 345, column: 2, scope: !867)
!897 = !DILocation(line: 345, column: 16, scope: !867)
!898 = !DILocation(line: 345, column: 27, scope: !867)
!899 = !DILocation(line: 345, column: 41, scope: !867)
!900 = !DILocation(line: 346, column: 2, scope: !867)
!901 = !DILocation(line: 346, column: 6, scope: !867)
!902 = !DILocation(line: 347, column: 2, scope: !867)
!903 = !DILocation(line: 347, column: 6, scope: !867)
!904 = !DILocation(line: 348, column: 2, scope: !867)
!905 = !DILocation(line: 348, column: 6, scope: !867)
!906 = !DILocation(line: 350, column: 29, scope: !867)
!907 = !DILocation(line: 350, column: 14, scope: !867)
!908 = !DILocation(line: 350, column: 44, scope: !867)
!909 = !DILocation(line: 350, column: 58, scope: !867)
!910 = !DILocation(line: 350, column: 42, scope: !867)
!911 = !DILocation(line: 350, column: 12, scope: !867)
!912 = !DILocation(line: 354, column: 38, scope: !867)
!913 = !DILocation(line: 354, column: 15, scope: !867)
!914 = !DILocation(line: 354, column: 8, scope: !867)
!915 = !DILocation(line: 354, column: 13, scope: !867)
!916 = !DILocation(line: 356, column: 22, scope: !867)
!917 = !DILocation(line: 356, column: 7, scope: !867)
!918 = !DILocation(line: 356, column: 37, scope: !867)
!919 = !DILocation(line: 356, column: 35, scope: !867)
!920 = !DILocation(line: 355, column: 14, scope: !867)
!921 = !DILocation(line: 355, column: 8, scope: !867)
!922 = !DILocation(line: 355, column: 12, scope: !867)
!923 = !DILocation(line: 357, column: 17, scope: !867)
!924 = !DILocation(line: 357, column: 15, scope: !867)
!925 = !DILocation(line: 359, column: 2, scope: !867)
!926 = !DILocation(line: 359, column: 31, scope: !867)
!927 = !DILocation(line: 359, column: 10, scope: !867)
!928 = !DILocation(line: 359, column: 38, scope: !867)
!929 = !DILocation(line: 359, column: 36, scope: !867)
!930 = !DILocation(line: 359, column: 54, scope: !867)
!931 = !DILocation(line: 359, column: 52, scope: !867)
!932 = !DILocation(line: 360, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !2, line: 360, column: 7)
!934 = distinct !DILexicalBlock(scope: !867, file: !2, line: 359, column: 65)
!935 = !DILocation(line: 360, column: 19, scope: !933)
!936 = !DILocation(line: 360, column: 22, scope: !933)
!937 = !DILocation(line: 360, column: 31, scope: !933)
!938 = !DILocation(line: 360, column: 28, scope: !933)
!939 = !DILocation(line: 360, column: 7, scope: !934)
!940 = !DILocation(line: 361, column: 4, scope: !933)
!941 = !DILocation(line: 363, column: 10, scope: !942)
!942 = distinct !DILexicalBlock(scope: !934, file: !2, line: 363, column: 3)
!943 = !DILocation(line: 363, column: 8, scope: !942)
!944 = !DILocation(line: 363, column: 15, scope: !945)
!945 = distinct !DILexicalBlock(scope: !942, file: !2, line: 363, column: 3)
!946 = !DILocation(line: 363, column: 19, scope: !945)
!947 = !DILocation(line: 363, column: 17, scope: !945)
!948 = !DILocation(line: 363, column: 3, scope: !942)
!949 = !DILocation(line: 364, column: 8, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !2, line: 364, column: 8)
!951 = distinct !DILexicalBlock(scope: !945, file: !2, line: 363, column: 34)
!952 = !DILocation(line: 364, column: 39, scope: !950)
!953 = !DILocation(line: 364, column: 44, scope: !950)
!954 = !DILocation(line: 364, column: 47, scope: !950)
!955 = !DILocation(line: 364, column: 36, scope: !950)
!956 = !DILocation(line: 364, column: 8, scope: !951)
!957 = !DILocation(line: 365, column: 5, scope: !950)
!958 = !DILocation(line: 366, column: 22, scope: !959)
!959 = distinct !DILexicalBlock(scope: !951, file: !2, line: 366, column: 8)
!960 = !DILocation(line: 366, column: 27, scope: !959)
!961 = !DILocation(line: 366, column: 9, scope: !959)
!962 = !DILocation(line: 366, column: 31, scope: !959)
!963 = !DILocation(line: 367, column: 10, scope: !959)
!964 = !DILocation(line: 367, column: 15, scope: !959)
!965 = !DILocation(line: 368, column: 23, scope: !959)
!966 = !DILocation(line: 368, column: 28, scope: !959)
!967 = !DILocation(line: 368, column: 38, scope: !959)
!968 = !DILocation(line: 368, column: 43, scope: !959)
!969 = !DILocation(line: 368, column: 9, scope: !959)
!970 = !DILocation(line: 366, column: 8, scope: !951)
!971 = !DILocation(line: 369, column: 9, scope: !972)
!972 = distinct !DILexicalBlock(scope: !959, file: !2, line: 368, column: 56)
!973 = !DILocation(line: 370, column: 5, scope: !972)
!974 = !DILocation(line: 373, column: 4, scope: !951)
!975 = !DILocation(line: 373, column: 9, scope: !951)
!976 = !DILocation(line: 373, column: 12, scope: !951)
!977 = !DILocation(line: 373, column: 17, scope: !951)
!978 = !DILocation(line: 374, column: 4, scope: !951)
!979 = !DILocation(line: 363, column: 30, scope: !945)
!980 = !DILocation(line: 363, column: 3, scope: !945)
!981 = distinct !{!981, !948, !982, !983, !984}
!982 = !DILocation(line: 375, column: 3, scope: !942)
!983 = !{!"llvm.loop.mustprogress"}
!984 = !{!"llvm.loop.unroll.disable"}
!985 = !DILocation(line: 376, column: 7, scope: !986)
!986 = distinct !DILexicalBlock(scope: !934, file: !2, line: 376, column: 7)
!987 = !DILocation(line: 376, column: 12, scope: !986)
!988 = !DILocation(line: 376, column: 9, scope: !986)
!989 = !DILocation(line: 376, column: 7, scope: !934)
!990 = !DILocation(line: 377, column: 9, scope: !986)
!991 = !DILocation(line: 377, column: 4, scope: !986)
!992 = !DILocation(line: 383, column: 15, scope: !934)
!993 = !DILocation(line: 383, column: 13, scope: !934)
!994 = !DILocation(line: 384, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !934, file: !2, line: 384, column: 7)
!996 = !DILocation(line: 384, column: 17, scope: !995)
!997 = !DILocation(line: 384, column: 7, scope: !934)
!998 = !DILocation(line: 385, column: 4, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 385, column: 4)
!1000 = distinct !DILexicalBlock(scope: !995, file: !2, line: 384, column: 23)
!1001 = !DILocation(line: 385, column: 4, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !2, line: 385, column: 4)
!1003 = !DILocation(line: 386, column: 4, scope: !1000)
!1004 = !DILocation(line: 390, column: 29, scope: !934)
!1005 = !DILocation(line: 390, column: 8, scope: !934)
!1006 = !DILocation(line: 390, column: 35, scope: !934)
!1007 = !DILocation(line: 390, column: 33, scope: !934)
!1008 = !DILocation(line: 389, column: 15, scope: !934)
!1009 = !DILocation(line: 389, column: 9, scope: !934)
!1010 = !DILocation(line: 389, column: 13, scope: !934)
!1011 = distinct !{!1011, !925, !1012, !983, !984}
!1012 = !DILocation(line: 391, column: 2, scope: !867)
!1013 = !DILocation(line: 393, column: 6, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !867, file: !2, line: 393, column: 6)
!1015 = !DILocation(line: 393, column: 18, scope: !1014)
!1016 = !DILocation(line: 393, column: 21, scope: !1014)
!1017 = !DILocation(line: 393, column: 29, scope: !1014)
!1018 = !DILocation(line: 393, column: 27, scope: !1014)
!1019 = !DILocation(line: 393, column: 6, scope: !867)
!1020 = !DILocation(line: 394, column: 3, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 394, column: 3)
!1022 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 393, column: 42)
!1023 = !DILocation(line: 394, column: 3, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 394, column: 3)
!1025 = !DILocation(line: 396, column: 2, scope: !1022)
!1026 = !DILocation(line: 398, column: 9, scope: !867)
!1027 = !DILocation(line: 398, column: 26, scope: !867)
!1028 = !DILocation(line: 398, column: 2, scope: !867)
!1029 = !DILocation(line: 399, column: 1, scope: !867)
!1030 = !DISubprogram(name: "acpi_put_table", scope: !862, file: !862, line: 493, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !412}
!1033 = distinct !DISubprogram(name: "acpi_table_parse_cedt", scope: !2, file: !2, line: 451, type: !1034, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1036)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!269, !45, !787, !268}
!1036 = !{!1037, !1038, !1039}
!1037 = !DILocalVariable(name: "id", arg: 1, scope: !1033, file: !2, line: 451, type: !45)
!1038 = !DILocalVariable(name: "handler_arg", arg: 2, scope: !1033, file: !2, line: 452, type: !787)
!1039 = !DILocalVariable(name: "arg", arg: 3, scope: !1033, file: !2, line: 452, type: !268)
!1040 = !DILocation(line: 451, column: 43, scope: !1033)
!1041 = !DILocation(line: 452, column: 36, scope: !1033)
!1042 = !DILocation(line: 452, column: 55, scope: !1033)
!1043 = !DILocation(line: 455, column: 40, scope: !1033)
!1044 = !DILocation(line: 456, column: 14, scope: !1033)
!1045 = !DILocation(line: 456, column: 27, scope: !1033)
!1046 = !DILocation(line: 454, column: 9, scope: !1033)
!1047 = !DILocation(line: 454, column: 2, scope: !1033)
!1048 = distinct !DISubprogram(name: "__acpi_table_parse_entries", scope: !2, file: !2, line: 434, type: !1049, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!269, !397, !272, !269, !781, !787, !268, !13}
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059}
!1052 = !DILocalVariable(name: "id", arg: 1, scope: !1048, file: !2, line: 435, type: !397)
!1053 = !DILocalVariable(name: "table_size", arg: 2, scope: !1048, file: !2, line: 435, type: !272)
!1054 = !DILocalVariable(name: "entry_id", arg: 3, scope: !1048, file: !2, line: 435, type: !269)
!1055 = !DILocalVariable(name: "handler", arg: 4, scope: !1048, file: !2, line: 436, type: !781)
!1056 = !DILocalVariable(name: "handler_arg", arg: 5, scope: !1048, file: !2, line: 436, type: !787)
!1057 = !DILocalVariable(name: "arg", arg: 6, scope: !1048, file: !2, line: 437, type: !268)
!1058 = !DILocalVariable(name: "max_entries", arg: 7, scope: !1048, file: !2, line: 437, type: !13)
!1059 = !DILocalVariable(name: "proc", scope: !1048, file: !2, line: 439, type: !777)
!1060 = !DILocation(line: 435, column: 8, scope: !1048)
!1061 = !DILocation(line: 435, column: 26, scope: !1048)
!1062 = !DILocation(line: 435, column: 42, scope: !1048)
!1063 = !DILocation(line: 436, column: 25, scope: !1048)
!1064 = !DILocation(line: 436, column: 61, scope: !1048)
!1065 = !DILocation(line: 437, column: 8, scope: !1048)
!1066 = !DILocation(line: 437, column: 26, scope: !1048)
!1067 = !DILocation(line: 439, column: 2, scope: !1048)
!1068 = !DILocation(line: 439, column: 28, scope: !1048)
!1069 = !DILocation(line: 439, column: 35, scope: !1048)
!1070 = !DILocation(line: 440, column: 10, scope: !1048)
!1071 = !DILocation(line: 441, column: 14, scope: !1048)
!1072 = !DILocation(line: 442, column: 18, scope: !1048)
!1073 = !DILocation(line: 443, column: 11, scope: !1048)
!1074 = !DILocation(line: 446, column: 40, scope: !1048)
!1075 = !DILocation(line: 446, column: 44, scope: !1048)
!1076 = !DILocation(line: 447, column: 7, scope: !1048)
!1077 = !DILocation(line: 446, column: 9, scope: !1048)
!1078 = !DILocation(line: 448, column: 1, scope: !1048)
!1079 = !DILocation(line: 446, column: 2, scope: !1048)
!1080 = distinct !DISubprogram(name: "acpi_table_parse_entries", scope: !2, file: !2, line: 460, type: !1081, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1083)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!269, !397, !272, !269, !781, !13}
!1083 = !{!1084, !1085, !1086, !1087, !1088}
!1084 = !DILocalVariable(name: "id", arg: 1, scope: !1080, file: !2, line: 460, type: !397)
!1085 = !DILocalVariable(name: "table_size", arg: 2, scope: !1080, file: !2, line: 460, type: !272)
!1086 = !DILocalVariable(name: "entry_id", arg: 3, scope: !1080, file: !2, line: 461, type: !269)
!1087 = !DILocalVariable(name: "handler", arg: 4, scope: !1080, file: !2, line: 462, type: !781)
!1088 = !DILocalVariable(name: "max_entries", arg: 5, scope: !1080, file: !2, line: 463, type: !13)
!1089 = !DILocation(line: 460, column: 43, scope: !1080)
!1090 = !DILocation(line: 460, column: 61, scope: !1080)
!1091 = !DILocation(line: 461, column: 13, scope: !1080)
!1092 = !DILocation(line: 462, column: 32, scope: !1080)
!1093 = !DILocation(line: 463, column: 22, scope: !1080)
!1094 = !DILocation(line: 465, column: 36, scope: !1080)
!1095 = !DILocation(line: 465, column: 40, scope: !1080)
!1096 = !DILocation(line: 465, column: 52, scope: !1080)
!1097 = !DILocation(line: 465, column: 62, scope: !1080)
!1098 = !DILocation(line: 466, column: 20, scope: !1080)
!1099 = !DILocation(line: 465, column: 9, scope: !1080)
!1100 = !DILocation(line: 465, column: 2, scope: !1080)
!1101 = distinct !DISubprogram(name: "acpi_table_parse_madt", scope: !2, file: !2, line: 469, type: !1102, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1104)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!269, !11, !781, !13}
!1104 = !{!1105, !1106, !1107}
!1105 = !DILocalVariable(name: "id", arg: 1, scope: !1101, file: !2, line: 469, type: !11)
!1106 = !DILocalVariable(name: "handler", arg: 2, scope: !1101, file: !2, line: 470, type: !781)
!1107 = !DILocalVariable(name: "max_entries", arg: 3, scope: !1101, file: !2, line: 470, type: !13)
!1108 = !DILocation(line: 469, column: 54, scope: !1101)
!1109 = !DILocation(line: 470, column: 32, scope: !1101)
!1110 = !DILocation(line: 470, column: 54, scope: !1101)
!1111 = !DILocation(line: 473, column: 42, scope: !1101)
!1112 = !DILocation(line: 474, column: 10, scope: !1101)
!1113 = !DILocation(line: 474, column: 19, scope: !1101)
!1114 = !DILocation(line: 472, column: 9, scope: !1101)
!1115 = !DILocation(line: 472, column: 2, scope: !1101)
!1116 = distinct !DISubprogram(name: "acpi_table_parse", scope: !2, file: !2, line: 487, type: !1117, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1123)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!269, !397, !1119}
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_tbl_table_handler", file: !275, line: 129, baseType: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!269, !412}
!1123 = !{!1124, !1125, !1126}
!1124 = !DILocalVariable(name: "id", arg: 1, scope: !1116, file: !2, line: 487, type: !397)
!1125 = !DILocalVariable(name: "handler", arg: 2, scope: !1116, file: !2, line: 487, type: !1119)
!1126 = !DILocalVariable(name: "table", scope: !1116, file: !2, line: 489, type: !412)
!1127 = !DILocation(line: 487, column: 35, scope: !1116)
!1128 = !DILocation(line: 487, column: 62, scope: !1116)
!1129 = !DILocation(line: 489, column: 2, scope: !1116)
!1130 = !DILocation(line: 489, column: 28, scope: !1116)
!1131 = !DILocation(line: 491, column: 6, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 491, column: 6)
!1133 = !DILocation(line: 491, column: 6, scope: !1116)
!1134 = !DILocation(line: 492, column: 3, scope: !1132)
!1135 = !DILocation(line: 494, column: 7, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 494, column: 6)
!1137 = !DILocation(line: 494, column: 10, scope: !1136)
!1138 = !DILocation(line: 494, column: 14, scope: !1136)
!1139 = !DILocation(line: 494, column: 6, scope: !1116)
!1140 = !DILocation(line: 495, column: 3, scope: !1136)
!1141 = !DILocation(line: 497, column: 14, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 497, column: 6)
!1143 = !DILocation(line: 497, column: 6, scope: !1142)
!1144 = !DILocation(line: 497, column: 36, scope: !1142)
!1145 = !DILocation(line: 497, column: 6, scope: !1116)
!1146 = !DILocation(line: 498, column: 18, scope: !1142)
!1147 = !DILocation(line: 498, column: 22, scope: !1142)
!1148 = !DILocation(line: 498, column: 3, scope: !1142)
!1149 = !DILocation(line: 500, column: 18, scope: !1142)
!1150 = !DILocation(line: 500, column: 3, scope: !1142)
!1151 = !DILocation(line: 502, column: 6, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 502, column: 6)
!1153 = !DILocation(line: 502, column: 6, scope: !1116)
!1154 = !DILocation(line: 503, column: 3, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 502, column: 13)
!1156 = !DILocation(line: 503, column: 11, scope: !1155)
!1157 = !DILocation(line: 504, column: 18, scope: !1155)
!1158 = !DILocation(line: 504, column: 3, scope: !1155)
!1159 = !DILocation(line: 505, column: 3, scope: !1155)
!1160 = !DILocation(line: 507, column: 3, scope: !1152)
!1161 = !DILocation(line: 508, column: 1, scope: !1116)
!1162 = distinct !DISubprogram(name: "acpi_table_upgrade", scope: !2, file: !2, line: 579, type: !1163, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1165)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null}
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1172, !1174, !1175, !1179, !1180, !1184, !1187, !1192, !1194, !1195, !1196, !1197}
!1166 = !DILocalVariable(name: "data", scope: !1162, file: !2, line: 581, type: !268)
!1167 = !DILocalVariable(name: "size", scope: !1162, file: !2, line: 582, type: !459)
!1168 = !DILocalVariable(name: "sig", scope: !1162, file: !2, line: 583, type: !269)
!1169 = !DILocalVariable(name: "no", scope: !1162, file: !2, line: 583, type: !269)
!1170 = !DILocalVariable(name: "table_nr", scope: !1162, file: !2, line: 583, type: !269)
!1171 = !DILocalVariable(name: "total_offset", scope: !1162, file: !2, line: 583, type: !269)
!1172 = !DILocalVariable(name: "offset", scope: !1162, file: !2, line: 584, type: !1173)
!1173 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1174 = !DILocalVariable(name: "table", scope: !1162, file: !2, line: 585, type: !412)
!1175 = !DILocalVariable(name: "cpio_path", scope: !1162, file: !2, line: 586, type: !1176)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1177)
!1177 = !{!1178}
!1178 = !DISubrange(count: 32)
!1179 = !DILocalVariable(name: "file", scope: !1162, file: !2, line: 587, type: !454)
!1180 = !DILocalVariable(name: "__ret_warn_on", scope: !1181, file: !2, line: 656, type: !269)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 656, column: 3)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 655, column: 25)
!1183 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 655, column: 6)
!1184 = !DILocalVariable(name: "__flags", scope: !1185, file: !2, line: 656, type: !269)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 656, column: 3)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 656, column: 3)
!1187 = !DILocalVariable(name: "src_p", scope: !1188, file: !2, line: 679, type: !1191)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 678, column: 36)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 678, column: 2)
!1190 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 678, column: 2)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!1192 = !DILocalVariable(name: "size", scope: !1188, file: !2, line: 680, type: !1193)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !297, line: 159, baseType: !178)
!1194 = !DILocalVariable(name: "dest_addr", scope: !1188, file: !2, line: 681, type: !1193)
!1195 = !DILocalVariable(name: "slop", scope: !1188, file: !2, line: 682, type: !1193)
!1196 = !DILocalVariable(name: "clen", scope: !1188, file: !2, line: 682, type: !1193)
!1197 = !DILocalVariable(name: "dest_p", scope: !1188, file: !2, line: 683, type: !397)
!1198 = !DILocation(line: 581, column: 2, scope: !1162)
!1199 = !DILocation(line: 581, column: 8, scope: !1162)
!1200 = !DILocation(line: 582, column: 2, scope: !1162)
!1201 = !DILocation(line: 582, column: 9, scope: !1162)
!1202 = !DILocation(line: 583, column: 2, scope: !1162)
!1203 = !DILocation(line: 583, column: 6, scope: !1162)
!1204 = !DILocation(line: 583, column: 11, scope: !1162)
!1205 = !DILocation(line: 583, column: 15, scope: !1162)
!1206 = !DILocation(line: 583, column: 29, scope: !1162)
!1207 = !DILocation(line: 584, column: 2, scope: !1162)
!1208 = !DILocation(line: 584, column: 7, scope: !1162)
!1209 = !DILocation(line: 585, column: 2, scope: !1162)
!1210 = !DILocation(line: 585, column: 28, scope: !1162)
!1211 = !DILocation(line: 586, column: 2, scope: !1162)
!1212 = !DILocation(line: 586, column: 7, scope: !1162)
!1213 = !DILocation(line: 587, column: 2, scope: !1162)
!1214 = !DILocation(line: 587, column: 19, scope: !1162)
!1215 = !DILocation(line: 593, column: 18, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 592, column: 9)
!1217 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 589, column: 6)
!1218 = !DILocation(line: 593, column: 10, scope: !1216)
!1219 = !DILocation(line: 593, column: 8, scope: !1216)
!1220 = !DILocation(line: 594, column: 10, scope: !1216)
!1221 = !DILocation(line: 594, column: 23, scope: !1216)
!1222 = !DILocation(line: 594, column: 21, scope: !1216)
!1223 = !DILocation(line: 594, column: 8, scope: !1216)
!1224 = !DILocation(line: 597, column: 6, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 597, column: 6)
!1226 = !DILocation(line: 597, column: 11, scope: !1225)
!1227 = !DILocation(line: 597, column: 19, scope: !1225)
!1228 = !DILocation(line: 597, column: 22, scope: !1225)
!1229 = !DILocation(line: 597, column: 27, scope: !1225)
!1230 = !DILocation(line: 597, column: 6, scope: !1162)
!1231 = !DILocation(line: 598, column: 3, scope: !1225)
!1232 = !DILocation(line: 600, column: 10, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 600, column: 2)
!1234 = !DILocation(line: 600, column: 7, scope: !1233)
!1235 = !DILocation(line: 600, column: 15, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !2, line: 600, column: 2)
!1237 = !DILocation(line: 600, column: 18, scope: !1236)
!1238 = !DILocation(line: 600, column: 2, scope: !1233)
!1239 = !DILocation(line: 601, column: 10, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1236, file: !2, line: 600, column: 49)
!1241 = !DILocation(line: 601, column: 25, scope: !1240)
!1242 = !DILocation(line: 601, column: 36, scope: !1240)
!1243 = !DILocation(line: 601, column: 42, scope: !1240)
!1244 = !DILocation(line: 602, column: 13, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 602, column: 7)
!1246 = !DILocation(line: 602, column: 8, scope: !1245)
!1247 = !DILocation(line: 602, column: 7, scope: !1240)
!1248 = !DILocation(line: 603, column: 4, scope: !1245)
!1249 = !DILocation(line: 605, column: 11, scope: !1240)
!1250 = !DILocation(line: 605, column: 8, scope: !1240)
!1251 = !DILocation(line: 606, column: 11, scope: !1240)
!1252 = !DILocation(line: 606, column: 8, scope: !1240)
!1253 = !DILocation(line: 608, column: 12, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 608, column: 7)
!1255 = !DILocation(line: 608, column: 17, scope: !1254)
!1256 = !DILocation(line: 608, column: 7, scope: !1240)
!1257 = !DILocation(line: 609, column: 4, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !2, line: 609, column: 4)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 608, column: 53)
!1260 = !DILocation(line: 609, column: 4, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 609, column: 4)
!1262 = !DILocation(line: 611, column: 4, scope: !1259)
!1263 = !DILocation(line: 614, column: 16, scope: !1240)
!1264 = !DILocation(line: 614, column: 9, scope: !1240)
!1265 = !DILocation(line: 616, column: 12, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 616, column: 3)
!1267 = !DILocation(line: 616, column: 8, scope: !1266)
!1268 = !DILocation(line: 616, column: 17, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 616, column: 3)
!1270 = !DILocation(line: 616, column: 21, scope: !1269)
!1271 = !DILocation(line: 616, column: 3, scope: !1266)
!1272 = !DILocation(line: 617, column: 16, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 617, column: 8)
!1274 = !DILocation(line: 617, column: 23, scope: !1273)
!1275 = !DILocation(line: 617, column: 45, scope: !1273)
!1276 = !DILocation(line: 617, column: 34, scope: !1273)
!1277 = !DILocation(line: 617, column: 9, scope: !1273)
!1278 = !DILocation(line: 617, column: 8, scope: !1269)
!1279 = !DILocation(line: 618, column: 5, scope: !1273)
!1280 = !DILocation(line: 617, column: 52, scope: !1273)
!1281 = !DILocation(line: 616, column: 50, scope: !1269)
!1282 = !DILocation(line: 616, column: 3, scope: !1269)
!1283 = distinct !{!1283, !1271, !1284, !983, !984}
!1284 = !DILocation(line: 618, column: 5, scope: !1266)
!1285 = !DILocation(line: 620, column: 7, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 620, column: 7)
!1287 = !DILocation(line: 620, column: 11, scope: !1286)
!1288 = !DILocation(line: 620, column: 7, scope: !1240)
!1289 = !DILocation(line: 621, column: 4, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 621, column: 4)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 620, column: 38)
!1292 = !DILocation(line: 621, column: 4, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 621, column: 4)
!1294 = !DILocation(line: 623, column: 4, scope: !1291)
!1295 = !DILocation(line: 625, column: 12, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 625, column: 7)
!1297 = !DILocation(line: 625, column: 20, scope: !1296)
!1298 = !DILocation(line: 625, column: 27, scope: !1296)
!1299 = !DILocation(line: 625, column: 17, scope: !1296)
!1300 = !DILocation(line: 625, column: 7, scope: !1240)
!1301 = !DILocation(line: 626, column: 4, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 626, column: 4)
!1303 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 625, column: 35)
!1304 = !DILocation(line: 626, column: 4, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 626, column: 4)
!1306 = !DILocation(line: 628, column: 4, scope: !1303)
!1307 = !DILocation(line: 630, column: 32, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 630, column: 7)
!1309 = !DILocation(line: 630, column: 38, scope: !1308)
!1310 = !DILocation(line: 630, column: 45, scope: !1308)
!1311 = !DILocation(line: 630, column: 7, scope: !1308)
!1312 = !DILocation(line: 630, column: 7, scope: !1240)
!1313 = !DILocation(line: 631, column: 4, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 631, column: 4)
!1315 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 630, column: 54)
!1316 = !DILocation(line: 631, column: 4, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 631, column: 4)
!1318 = !DILocation(line: 633, column: 4, scope: !1315)
!1319 = !DILocation(line: 636, column: 3, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 636, column: 3)
!1321 = !DILocation(line: 636, column: 3, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 636, column: 3)
!1323 = !DILocation(line: 639, column: 22, scope: !1240)
!1324 = !DILocation(line: 639, column: 29, scope: !1240)
!1325 = !DILocation(line: 639, column: 19, scope: !1240)
!1326 = !DILocation(line: 640, column: 43, scope: !1240)
!1327 = !DILocation(line: 640, column: 21, scope: !1240)
!1328 = !DILocation(line: 640, column: 3, scope: !1240)
!1329 = !DILocation(line: 640, column: 31, scope: !1240)
!1330 = !DILocation(line: 640, column: 36, scope: !1240)
!1331 = !DILocation(line: 641, column: 43, scope: !1240)
!1332 = !DILocation(line: 641, column: 21, scope: !1240)
!1333 = !DILocation(line: 641, column: 3, scope: !1240)
!1334 = !DILocation(line: 641, column: 31, scope: !1240)
!1335 = !DILocation(line: 641, column: 36, scope: !1240)
!1336 = !DILocation(line: 642, column: 11, scope: !1240)
!1337 = !DILocation(line: 643, column: 2, scope: !1240)
!1338 = !DILocation(line: 600, column: 45, scope: !1236)
!1339 = !DILocation(line: 600, column: 2, scope: !1236)
!1340 = distinct !{!1340, !1238, !1341, !983, !984}
!1341 = !DILocation(line: 643, column: 2, scope: !1233)
!1342 = !DILocation(line: 644, column: 6, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 644, column: 6)
!1344 = !DILocation(line: 644, column: 15, scope: !1343)
!1345 = !DILocation(line: 644, column: 6, scope: !1162)
!1346 = !DILocation(line: 645, column: 3, scope: !1343)
!1347 = !DILocation(line: 647, column: 6, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 647, column: 6)
!1349 = !DILocation(line: 647, column: 6, scope: !1162)
!1350 = !DILocation(line: 648, column: 3, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 648, column: 3)
!1352 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 647, column: 50)
!1353 = !DILocation(line: 648, column: 3, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 648, column: 3)
!1355 = !DILocation(line: 649, column: 3, scope: !1352)
!1356 = !DILocation(line: 653, column: 29, scope: !1162)
!1357 = !DILocation(line: 654, column: 11, scope: !1162)
!1358 = !DILocation(line: 653, column: 3, scope: !1162)
!1359 = !DILocation(line: 652, column: 19, scope: !1162)
!1360 = !DILocation(line: 655, column: 7, scope: !1183)
!1361 = !DILocation(line: 655, column: 6, scope: !1162)
!1362 = !DILocation(line: 656, column: 3, scope: !1181)
!1363 = !DILocation(line: 656, column: 3, scope: !1186)
!1364 = !DILocation(line: 656, column: 3, scope: !1185)
!1365 = !DILocation(line: 656, column: 3, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 656, column: 3)
!1367 = !DILocation(line: 656, column: 3, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 656, column: 3)
!1369 = !{i64 2155442222, i64 2155442251, i64 2155442297, i64 2155442355, i64 2155442409, i64 2155442463, i64 2155442518, i64 2155442549, i64 2155442857, i64 2155442863, i64 2155442910, i64 2155442933, i64 2155442959}
!1370 = !DILocation(line: 656, column: 3, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 656, column: 3)
!1372 = !DILocation(line: 656, column: 3, scope: !1182)
!1373 = !DILocation(line: 657, column: 3, scope: !1182)
!1374 = !DILocation(line: 669, column: 24, scope: !1162)
!1375 = !DILocation(line: 669, column: 42, scope: !1162)
!1376 = !DILocation(line: 669, column: 2, scope: !1162)
!1377 = !DILocation(line: 671, column: 23, scope: !1162)
!1378 = !DILocation(line: 671, column: 2, scope: !1162)
!1379 = !DILocation(line: 678, column: 10, scope: !1190)
!1380 = !DILocation(line: 678, column: 7, scope: !1190)
!1381 = !DILocation(line: 678, column: 15, scope: !1189)
!1382 = !DILocation(line: 678, column: 20, scope: !1189)
!1383 = !DILocation(line: 678, column: 18, scope: !1189)
!1384 = !DILocation(line: 678, column: 2, scope: !1190)
!1385 = !DILocation(line: 679, column: 3, scope: !1188)
!1386 = !DILocation(line: 679, column: 18, scope: !1188)
!1387 = !DILocation(line: 679, column: 44, scope: !1188)
!1388 = !DILocation(line: 679, column: 26, scope: !1188)
!1389 = !DILocation(line: 679, column: 48, scope: !1188)
!1390 = !DILocation(line: 680, column: 3, scope: !1188)
!1391 = !DILocation(line: 680, column: 15, scope: !1188)
!1392 = !DILocation(line: 680, column: 40, scope: !1188)
!1393 = !DILocation(line: 680, column: 22, scope: !1188)
!1394 = !DILocation(line: 680, column: 44, scope: !1188)
!1395 = !DILocation(line: 681, column: 3, scope: !1188)
!1396 = !DILocation(line: 681, column: 15, scope: !1188)
!1397 = !DILocation(line: 681, column: 27, scope: !1188)
!1398 = !DILocation(line: 681, column: 46, scope: !1188)
!1399 = !DILocation(line: 681, column: 44, scope: !1188)
!1400 = !DILocation(line: 682, column: 3, scope: !1188)
!1401 = !DILocation(line: 682, column: 15, scope: !1188)
!1402 = !DILocation(line: 682, column: 21, scope: !1188)
!1403 = !DILocation(line: 683, column: 3, scope: !1188)
!1404 = !DILocation(line: 683, column: 9, scope: !1188)
!1405 = !DILocation(line: 685, column: 19, scope: !1188)
!1406 = !DILocation(line: 685, column: 16, scope: !1188)
!1407 = !DILocation(line: 687, column: 3, scope: !1188)
!1408 = !DILocation(line: 687, column: 10, scope: !1188)
!1409 = !DILocation(line: 688, column: 11, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 687, column: 16)
!1411 = !DILocation(line: 688, column: 21, scope: !1410)
!1412 = !DILocation(line: 688, column: 9, scope: !1410)
!1413 = !DILocation(line: 689, column: 11, scope: !1410)
!1414 = !DILocation(line: 689, column: 9, scope: !1410)
!1415 = !DILocation(line: 690, column: 8, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 690, column: 8)
!1417 = !DILocation(line: 690, column: 32, scope: !1416)
!1418 = !DILocation(line: 690, column: 30, scope: !1416)
!1419 = !DILocation(line: 690, column: 13, scope: !1416)
!1420 = !DILocation(line: 690, column: 8, scope: !1410)
!1421 = !DILocation(line: 691, column: 29, scope: !1416)
!1422 = !DILocation(line: 691, column: 27, scope: !1416)
!1423 = !DILocation(line: 691, column: 10, scope: !1416)
!1424 = !DILocation(line: 691, column: 5, scope: !1416)
!1425 = !DILocation(line: 692, column: 28, scope: !1410)
!1426 = !DILocation(line: 692, column: 38, scope: !1410)
!1427 = !DILocation(line: 693, column: 7, scope: !1410)
!1428 = !DILocation(line: 693, column: 14, scope: !1410)
!1429 = !DILocation(line: 693, column: 12, scope: !1410)
!1430 = !DILocation(line: 692, column: 13, scope: !1410)
!1431 = !DILocation(line: 692, column: 11, scope: !1410)
!1432 = !DILocation(line: 694, column: 11, scope: !1410)
!1433 = !DILocation(line: 694, column: 20, scope: !1410)
!1434 = !DILocation(line: 694, column: 18, scope: !1410)
!1435 = !DILocation(line: 694, column: 26, scope: !1410)
!1436 = !DILocation(line: 694, column: 33, scope: !1410)
!1437 = !DILocation(line: 694, column: 4, scope: !1410)
!1438 = !DILocation(line: 695, column: 19, scope: !1410)
!1439 = !DILocation(line: 695, column: 27, scope: !1410)
!1440 = !DILocation(line: 695, column: 34, scope: !1410)
!1441 = !DILocation(line: 695, column: 32, scope: !1410)
!1442 = !DILocation(line: 695, column: 4, scope: !1410)
!1443 = !DILocation(line: 696, column: 13, scope: !1410)
!1444 = !DILocation(line: 696, column: 10, scope: !1410)
!1445 = !DILocation(line: 697, column: 17, scope: !1410)
!1446 = !DILocation(line: 697, column: 14, scope: !1410)
!1447 = !DILocation(line: 698, column: 12, scope: !1410)
!1448 = !DILocation(line: 698, column: 9, scope: !1410)
!1449 = distinct !{!1449, !1407, !1450, !983, !984}
!1450 = !DILocation(line: 699, column: 3, scope: !1188)
!1451 = !DILocation(line: 700, column: 2, scope: !1189)
!1452 = !DILocation(line: 700, column: 2, scope: !1188)
!1453 = !DILocation(line: 678, column: 32, scope: !1189)
!1454 = !DILocation(line: 678, column: 2, scope: !1189)
!1455 = distinct !{!1455, !1384, !1456, !983, !984}
!1456 = !DILocation(line: 700, column: 2, scope: !1190)
!1457 = !DILocation(line: 701, column: 1, scope: !1162)
!1458 = !DISubprogram(name: "find_cpio_data", scope: !455, file: !455, line: 15, type: !1459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!454, !391, !268, !459, !1461}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1462 = !DISubprogram(name: "memcmp", scope: !858, file: !858, line: 196, type: !1463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!269, !1465, !1465, !460}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1467 = distinct !DISubprogram(name: "acpi_table_checksum", scope: !2, file: !2, line: 546, type: !1468, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1471)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!110, !1470, !119}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!1471 = !{!1472, !1473, !1474, !1475}
!1472 = !DILocalVariable(name: "buffer", arg: 1, scope: !1467, file: !2, line: 546, type: !1470)
!1473 = !DILocalVariable(name: "length", arg: 2, scope: !1467, file: !2, line: 546, type: !119)
!1474 = !DILocalVariable(name: "sum", scope: !1467, file: !2, line: 548, type: !110)
!1475 = !DILocalVariable(name: "end", scope: !1467, file: !2, line: 549, type: !1470)
!1476 = !DILocation(line: 546, column: 42, scope: !1467)
!1477 = !DILocation(line: 546, column: 54, scope: !1467)
!1478 = !DILocation(line: 548, column: 2, scope: !1467)
!1479 = !DILocation(line: 548, column: 5, scope: !1467)
!1480 = !DILocation(line: 549, column: 2, scope: !1467)
!1481 = !DILocation(line: 549, column: 6, scope: !1467)
!1482 = !DILocation(line: 549, column: 12, scope: !1467)
!1483 = !DILocation(line: 549, column: 21, scope: !1467)
!1484 = !DILocation(line: 549, column: 19, scope: !1467)
!1485 = !DILocation(line: 551, column: 2, scope: !1467)
!1486 = !DILocation(line: 551, column: 9, scope: !1467)
!1487 = !DILocation(line: 551, column: 18, scope: !1467)
!1488 = !DILocation(line: 551, column: 16, scope: !1467)
!1489 = !DILocation(line: 552, column: 15, scope: !1467)
!1490 = !DILocation(line: 552, column: 29, scope: !1467)
!1491 = !DILocation(line: 552, column: 21, scope: !1467)
!1492 = !DILocation(line: 552, column: 19, scope: !1467)
!1493 = !DILocation(line: 552, column: 9, scope: !1467)
!1494 = !DILocation(line: 552, column: 7, scope: !1467)
!1495 = distinct !{!1495, !1485, !1496, !983, !984}
!1496 = !DILocation(line: 552, column: 32, scope: !1467)
!1497 = !DILocation(line: 553, column: 9, scope: !1467)
!1498 = !DILocation(line: 554, column: 1, scope: !1467)
!1499 = !DILocation(line: 553, column: 2, scope: !1467)
!1500 = !DISubprogram(name: "security_locked_down", scope: !54, file: !54, line: 488, type: !1501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!269, !53}
!1503 = !DISubprogram(name: "memblock_phys_alloc_range", scope: !1504, file: !1504, line: 402, type: !1505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1504 = !DIFile(filename: "./include/linux/memblock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee488cc8c6522cca1567fc06e1716948")
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!1193, !1193, !1193, !1193, !1193}
!1507 = !DISubprogram(name: "arch_reserve_mem_area", scope: !275, file: !275, line: 1118, type: !1508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !410, !459}
!1510 = distinct !DISubprogram(name: "kmemleak_ignore_phys", scope: !1511, file: !1511, line: 115, type: !1512, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1514)
!1511 = !DIFile(filename: "./include/linux/kmemleak.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f4ed42ee6c6e5d06af9997953e90d37")
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !1193}
!1514 = !{!1515}
!1515 = !DILocalVariable(name: "phys", arg: 1, scope: !1510, file: !1511, line: 115, type: !1193)
!1516 = !DILocation(line: 115, column: 53, scope: !1510)
!1517 = !DILocation(line: 117, column: 1, scope: !1510)
!1518 = !DISubprogram(name: "early_memremap", scope: !1519, file: !1519, line: 13, type: !1520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1519 = !DIFile(filename: "./include/asm-generic/early_ioremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f963a4865cd884f109103123c55bb3b2")
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!268, !1522, !272}
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !297, line: 164, baseType: !1193)
!1523 = !DISubprogram(name: "early_memunmap", scope: !1519, file: !1519, line: 20, type: !1524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{null, !268, !272}
!1526 = distinct !DISubprogram(name: "acpi_os_physical_table_override", scope: !2, file: !2, line: 826, type: !1527, scopeLine: 829, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1530)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!270, !412, !1529, !295}
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1530 = !{!1531, !1532, !1533}
!1531 = !DILocalVariable(name: "existing_table", arg: 1, scope: !1526, file: !2, line: 826, type: !412)
!1532 = !DILocalVariable(name: "address", arg: 2, scope: !1526, file: !2, line: 827, type: !1529)
!1533 = !DILocalVariable(name: "table_length", arg: 3, scope: !1526, file: !2, line: 828, type: !295)
!1534 = !DILocation(line: 826, column: 59, scope: !1526)
!1535 = !DILocation(line: 827, column: 28, scope: !1526)
!1536 = !DILocation(line: 828, column: 10, scope: !1526)
!1537 = !DILocation(line: 830, column: 36, scope: !1526)
!1538 = !DILocation(line: 830, column: 52, scope: !1526)
!1539 = !DILocation(line: 831, column: 8, scope: !1526)
!1540 = !DILocation(line: 830, column: 9, scope: !1526)
!1541 = !DILocation(line: 830, column: 2, scope: !1526)
!1542 = distinct !DISubprogram(name: "acpi_table_initrd_override", scope: !2, file: !2, line: 704, type: !1527, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1543)
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1556, !1559}
!1544 = !DILocalVariable(name: "existing_table", arg: 1, scope: !1542, file: !2, line: 704, type: !412)
!1545 = !DILocalVariable(name: "address", arg: 2, scope: !1542, file: !2, line: 705, type: !1529)
!1546 = !DILocalVariable(name: "length", arg: 3, scope: !1542, file: !2, line: 705, type: !295)
!1547 = !DILocalVariable(name: "table_offset", scope: !1542, file: !2, line: 707, type: !269)
!1548 = !DILocalVariable(name: "table_index", scope: !1542, file: !2, line: 708, type: !269)
!1549 = !DILocalVariable(name: "table", scope: !1542, file: !2, line: 709, type: !412)
!1550 = !DILocalVariable(name: "table_length", scope: !1542, file: !2, line: 710, type: !119)
!1551 = !DILocalVariable(name: "__ret_warn_on", scope: !1552, file: !2, line: 722, type: !269)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 722, column: 4)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 720, column: 55)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 720, column: 7)
!1555 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 717, column: 61)
!1556 = !DILocalVariable(name: "__flags", scope: !1557, file: !2, line: 722, type: !269)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 722, column: 4)
!1558 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 722, column: 4)
!1559 = !DILabel(scope: !1555, name: "next_table", file: !2, line: 755)
!1560 = !DILocation(line: 704, column: 54, scope: !1542)
!1561 = !DILocation(line: 705, column: 30, scope: !1542)
!1562 = !DILocation(line: 705, column: 44, scope: !1542)
!1563 = !DILocation(line: 707, column: 2, scope: !1542)
!1564 = !DILocation(line: 707, column: 6, scope: !1542)
!1565 = !DILocation(line: 708, column: 2, scope: !1542)
!1566 = !DILocation(line: 708, column: 6, scope: !1542)
!1567 = !DILocation(line: 709, column: 2, scope: !1542)
!1568 = !DILocation(line: 709, column: 28, scope: !1542)
!1569 = !DILocation(line: 710, column: 2, scope: !1542)
!1570 = !DILocation(line: 710, column: 6, scope: !1542)
!1571 = !DILocation(line: 712, column: 3, scope: !1542)
!1572 = !DILocation(line: 712, column: 10, scope: !1542)
!1573 = !DILocation(line: 713, column: 3, scope: !1542)
!1574 = !DILocation(line: 713, column: 11, scope: !1542)
!1575 = !DILocation(line: 714, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 714, column: 6)
!1577 = !DILocation(line: 714, column: 6, scope: !1542)
!1578 = !DILocation(line: 715, column: 3, scope: !1576)
!1579 = !DILocation(line: 717, column: 2, scope: !1542)
!1580 = !DILocation(line: 717, column: 9, scope: !1542)
!1581 = !DILocation(line: 717, column: 22, scope: !1542)
!1582 = !DILocation(line: 717, column: 44, scope: !1542)
!1583 = !DILocation(line: 717, column: 41, scope: !1542)
!1584 = !DILocation(line: 718, column: 30, scope: !1555)
!1585 = !DILocation(line: 718, column: 49, scope: !1555)
!1586 = !DILocation(line: 718, column: 47, scope: !1555)
!1587 = !DILocation(line: 718, column: 11, scope: !1555)
!1588 = !DILocation(line: 718, column: 9, scope: !1555)
!1589 = !DILocation(line: 720, column: 7, scope: !1554)
!1590 = !DILocation(line: 720, column: 22, scope: !1554)
!1591 = !DILocation(line: 720, column: 29, scope: !1554)
!1592 = !DILocation(line: 720, column: 20, scope: !1554)
!1593 = !DILocation(line: 720, column: 38, scope: !1554)
!1594 = !DILocation(line: 720, column: 36, scope: !1554)
!1595 = !DILocation(line: 720, column: 7, scope: !1555)
!1596 = !DILocation(line: 721, column: 25, scope: !1553)
!1597 = !DILocation(line: 721, column: 4, scope: !1553)
!1598 = !DILocation(line: 722, column: 4, scope: !1552)
!1599 = !DILocation(line: 722, column: 4, scope: !1558)
!1600 = !DILocation(line: 722, column: 4, scope: !1557)
!1601 = !DILocation(line: 722, column: 4, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 722, column: 4)
!1603 = !DILocation(line: 722, column: 4, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 722, column: 4)
!1605 = !{i64 2155444054, i64 2155444083, i64 2155444129, i64 2155444187, i64 2155444241, i64 2155444295, i64 2155444350, i64 2155444381, i64 2155444689, i64 2155444695, i64 2155444742, i64 2155444765, i64 2155444791}
!1606 = !DILocation(line: 722, column: 4, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 722, column: 4)
!1608 = !DILocation(line: 722, column: 4, scope: !1553)
!1609 = !DILocation(line: 723, column: 4, scope: !1553)
!1610 = !DILocation(line: 726, column: 18, scope: !1555)
!1611 = !DILocation(line: 726, column: 25, scope: !1555)
!1612 = !DILocation(line: 726, column: 16, scope: !1555)
!1613 = !DILocation(line: 729, column: 14, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 729, column: 7)
!1615 = !DILocation(line: 729, column: 30, scope: !1614)
!1616 = !DILocation(line: 729, column: 41, scope: !1614)
!1617 = !DILocation(line: 729, column: 48, scope: !1614)
!1618 = !DILocation(line: 729, column: 7, scope: !1614)
!1619 = !DILocation(line: 729, column: 62, scope: !1614)
!1620 = !DILocation(line: 730, column: 14, scope: !1614)
!1621 = !DILocation(line: 730, column: 21, scope: !1614)
!1622 = !DILocation(line: 730, column: 29, scope: !1614)
!1623 = !DILocation(line: 730, column: 45, scope: !1614)
!1624 = !DILocation(line: 730, column: 7, scope: !1614)
!1625 = !DILocation(line: 731, column: 25, scope: !1614)
!1626 = !DILocation(line: 732, column: 14, scope: !1614)
!1627 = !DILocation(line: 732, column: 21, scope: !1614)
!1628 = !DILocation(line: 732, column: 35, scope: !1614)
!1629 = !DILocation(line: 732, column: 51, scope: !1614)
!1630 = !DILocation(line: 732, column: 7, scope: !1614)
!1631 = !DILocation(line: 729, column: 7, scope: !1555)
!1632 = !DILocation(line: 734, column: 25, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 733, column: 32)
!1634 = !DILocation(line: 734, column: 4, scope: !1633)
!1635 = !DILocation(line: 735, column: 4, scope: !1633)
!1636 = !DILocation(line: 741, column: 24, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 741, column: 7)
!1638 = !DILocation(line: 741, column: 7, scope: !1637)
!1639 = !DILocation(line: 741, column: 60, scope: !1637)
!1640 = !DILocation(line: 742, column: 7, scope: !1637)
!1641 = !DILocation(line: 742, column: 23, scope: !1637)
!1642 = !DILocation(line: 742, column: 39, scope: !1637)
!1643 = !DILocation(line: 742, column: 46, scope: !1637)
!1644 = !DILocation(line: 742, column: 36, scope: !1637)
!1645 = !DILocation(line: 741, column: 7, scope: !1555)
!1646 = !DILocation(line: 743, column: 25, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 742, column: 60)
!1648 = !DILocation(line: 743, column: 4, scope: !1647)
!1649 = !DILocation(line: 744, column: 4, scope: !1647)
!1650 = !DILocation(line: 747, column: 13, scope: !1555)
!1651 = !DILocation(line: 747, column: 4, scope: !1555)
!1652 = !DILocation(line: 747, column: 11, scope: !1555)
!1653 = !DILocation(line: 748, column: 14, scope: !1555)
!1654 = !DILocation(line: 748, column: 33, scope: !1555)
!1655 = !DILocation(line: 748, column: 31, scope: !1555)
!1656 = !DILocation(line: 748, column: 4, scope: !1555)
!1657 = !DILocation(line: 748, column: 12, scope: !1555)
!1658 = !DILocation(line: 749, column: 3, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 749, column: 3)
!1660 = !DILocation(line: 749, column: 3, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 749, column: 3)
!1662 = !DILocation(line: 752, column: 24, scope: !1555)
!1663 = !DILocation(line: 752, column: 3, scope: !1555)
!1664 = !DILocation(line: 753, column: 3, scope: !1555)
!1665 = !DILocation(line: 755, column: 1, scope: !1555)
!1666 = !DILocation(line: 756, column: 19, scope: !1555)
!1667 = !DILocation(line: 756, column: 16, scope: !1555)
!1668 = !DILocation(line: 757, column: 14, scope: !1555)
!1669 = distinct !{!1669, !1579, !1670, !983, !984}
!1670 = !DILocation(line: 758, column: 2, scope: !1542)
!1671 = !DILocation(line: 759, column: 2, scope: !1542)
!1672 = !DILocation(line: 760, column: 1, scope: !1542)
!1673 = distinct !DISubprogram(name: "acpi_os_table_override", scope: !2, file: !2, line: 839, type: !1674, scopeLine: 841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1676)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!270, !412, !866}
!1676 = !{!1677, !1678}
!1677 = !DILocalVariable(name: "existing_table", arg: 1, scope: !1673, file: !2, line: 839, type: !412)
!1678 = !DILocalVariable(name: "new_table", arg: 2, scope: !1673, file: !2, line: 840, type: !866)
!1679 = !DILocation(line: 839, column: 62, scope: !1673)
!1680 = !DILocation(line: 840, column: 37, scope: !1673)
!1681 = !DILocation(line: 842, column: 7, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 842, column: 6)
!1683 = !DILocation(line: 842, column: 22, scope: !1682)
!1684 = !DILocation(line: 842, column: 26, scope: !1682)
!1685 = !DILocation(line: 842, column: 6, scope: !1673)
!1686 = !DILocation(line: 843, column: 3, scope: !1682)
!1687 = !DILocation(line: 845, column: 3, scope: !1673)
!1688 = !DILocation(line: 845, column: 13, scope: !1673)
!1689 = !DILocation(line: 854, column: 7, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 854, column: 6)
!1691 = !DILocation(line: 854, column: 6, scope: !1690)
!1692 = !DILocation(line: 854, column: 17, scope: !1690)
!1693 = !DILocation(line: 854, column: 6, scope: !1673)
!1694 = !DILocation(line: 855, column: 20, scope: !1690)
!1695 = !DILocation(line: 855, column: 3, scope: !1690)
!1696 = !DILocation(line: 856, column: 2, scope: !1673)
!1697 = !DILocation(line: 857, column: 1, scope: !1673)
!1698 = distinct !DISubprogram(name: "acpi_table_taint", scope: !2, file: !2, line: 534, type: !1031, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1699)
!1699 = !{!1700}
!1700 = !DILocalVariable(name: "table", arg: 1, scope: !1698, file: !2, line: 534, type: !412)
!1701 = !DILocation(line: 534, column: 56, scope: !1698)
!1702 = !DILocation(line: 536, column: 2, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 536, column: 2)
!1704 = !DILocation(line: 536, column: 2, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1703, file: !2, line: 536, column: 2)
!1706 = !DILocation(line: 538, column: 2, scope: !1698)
!1707 = !DILocation(line: 539, column: 1, scope: !1698)
!1708 = distinct !DISubprogram(name: "acpi_locate_initial_tables", scope: !2, file: !2, line: 867, type: !1709, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1711)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!269}
!1711 = !{!1712}
!1712 = !DILocalVariable(name: "status", scope: !1708, file: !2, line: 869, type: !270)
!1713 = !DILocation(line: 869, column: 2, scope: !1708)
!1714 = !DILocation(line: 869, column: 14, scope: !1708)
!1715 = !DILocation(line: 871, column: 6, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 871, column: 6)
!1717 = !{i8 0, i8 2}
!1718 = !{}
!1719 = !DILocation(line: 871, column: 6, scope: !1708)
!1720 = !DILocation(line: 872, column: 3, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !2, line: 872, column: 3)
!1722 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 871, column: 34)
!1723 = !DILocation(line: 872, column: 3, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1721, file: !2, line: 872, column: 3)
!1725 = !DILocation(line: 873, column: 36, scope: !1722)
!1726 = !DILocation(line: 874, column: 2, scope: !1722)
!1727 = !DILocation(line: 875, column: 3, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 875, column: 3)
!1729 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 874, column: 9)
!1730 = !DILocation(line: 875, column: 3, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 875, column: 3)
!1732 = !DILocation(line: 876, column: 36, scope: !1729)
!1733 = !DILocation(line: 879, column: 11, scope: !1708)
!1734 = !DILocation(line: 879, column: 9, scope: !1708)
!1735 = !DILocation(line: 880, column: 6, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 880, column: 6)
!1737 = !DILocation(line: 880, column: 6, scope: !1708)
!1738 = !DILocation(line: 881, column: 3, scope: !1736)
!1739 = !DILocation(line: 883, column: 2, scope: !1708)
!1740 = !DILocation(line: 884, column: 1, scope: !1708)
!1741 = !DISubprogram(name: "acpi_initialize_tables", scope: !862, file: !862, line: 404, type: !1742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!270, !1744, !119, !110}
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!1745 = distinct !DISubprogram(name: "acpi_reserve_initial_tables", scope: !2, file: !2, line: 886, type: !1163, scopeLine: 887, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1746)
!1746 = !{!1747, !1748, !1752, !1753}
!1747 = !DILocalVariable(name: "i", scope: !1745, file: !2, line: 888, type: !269)
!1748 = !DILocalVariable(name: "table_desc", scope: !1749, file: !2, line: 891, type: !1744)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 890, column: 40)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 890, column: 2)
!1751 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 890, column: 2)
!1752 = !DILocalVariable(name: "start", scope: !1749, file: !2, line: 892, type: !178)
!1753 = !DILocalVariable(name: "size", scope: !1749, file: !2, line: 893, type: !178)
!1754 = !DILocation(line: 888, column: 2, scope: !1745)
!1755 = !DILocation(line: 888, column: 6, scope: !1745)
!1756 = !DILocation(line: 890, column: 9, scope: !1751)
!1757 = !DILocation(line: 890, column: 7, scope: !1751)
!1758 = !DILocation(line: 890, column: 14, scope: !1750)
!1759 = !DILocation(line: 890, column: 16, scope: !1750)
!1760 = !DILocation(line: 890, column: 2, scope: !1751)
!1761 = !DILocation(line: 891, column: 3, scope: !1749)
!1762 = !DILocation(line: 891, column: 27, scope: !1749)
!1763 = !DILocation(line: 891, column: 56, scope: !1749)
!1764 = !DILocation(line: 891, column: 41, scope: !1749)
!1765 = !DILocation(line: 892, column: 3, scope: !1749)
!1766 = !DILocation(line: 892, column: 7, scope: !1749)
!1767 = !DILocation(line: 892, column: 15, scope: !1749)
!1768 = !DILocation(line: 892, column: 27, scope: !1749)
!1769 = !DILocation(line: 893, column: 3, scope: !1749)
!1770 = !DILocation(line: 893, column: 7, scope: !1749)
!1771 = !DILocation(line: 893, column: 14, scope: !1749)
!1772 = !DILocation(line: 893, column: 26, scope: !1749)
!1773 = !DILocation(line: 895, column: 8, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 895, column: 7)
!1775 = !DILocation(line: 895, column: 14, scope: !1774)
!1776 = !DILocation(line: 895, column: 18, scope: !1774)
!1777 = !DILocation(line: 895, column: 7, scope: !1749)
!1778 = !DILocation(line: 896, column: 4, scope: !1774)
!1779 = !DILocation(line: 898, column: 3, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 898, column: 3)
!1781 = !DILocation(line: 898, column: 3, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1780, file: !2, line: 898, column: 3)
!1783 = !DILocation(line: 901, column: 20, scope: !1749)
!1784 = !DILocation(line: 901, column: 27, scope: !1749)
!1785 = !DILocation(line: 901, column: 3, scope: !1749)
!1786 = !DILocation(line: 902, column: 2, scope: !1750)
!1787 = !DILocation(line: 902, column: 2, scope: !1749)
!1788 = !DILocation(line: 890, column: 36, scope: !1750)
!1789 = !DILocation(line: 890, column: 2, scope: !1750)
!1790 = distinct !{!1790, !1760, !1791, !983, !984}
!1791 = !DILocation(line: 902, column: 2, scope: !1751)
!1792 = !DILocation(line: 903, column: 1, scope: !1745)
!1793 = !DISubprogram(name: "memblock_reserve", scope: !1504, file: !1504, line: 116, type: !1794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!269, !1193, !1193}
!1796 = distinct !DISubprogram(name: "acpi_table_init_complete", scope: !2, file: !2, line: 905, type: !1163, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!1797 = !DILocation(line: 907, column: 2, scope: !1796)
!1798 = !DILocation(line: 908, column: 2, scope: !1796)
!1799 = !DILocation(line: 909, column: 1, scope: !1796)
!1800 = distinct !DISubprogram(name: "acpi_table_initrd_scan", scope: !2, file: !2, line: 762, type: !1163, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1801)
!1801 = !{!1802, !1803, !1804, !1805, !1806, !1811, !1814}
!1802 = !DILocalVariable(name: "table_offset", scope: !1800, file: !2, line: 764, type: !269)
!1803 = !DILocalVariable(name: "table_index", scope: !1800, file: !2, line: 765, type: !269)
!1804 = !DILocalVariable(name: "table_length", scope: !1800, file: !2, line: 766, type: !119)
!1805 = !DILocalVariable(name: "table", scope: !1800, file: !2, line: 767, type: !412)
!1806 = !DILocalVariable(name: "__ret_warn_on", scope: !1807, file: !2, line: 777, type: !269)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !2, line: 777, column: 4)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !2, line: 775, column: 55)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 775, column: 7)
!1810 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 772, column: 61)
!1811 = !DILocalVariable(name: "__flags", scope: !1812, file: !2, line: 777, type: !269)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 777, column: 4)
!1813 = distinct !DILexicalBlock(scope: !1807, file: !2, line: 777, column: 4)
!1814 = !DILabel(scope: !1810, name: "next_table", file: !2, line: 804)
!1815 = !DILocation(line: 764, column: 2, scope: !1800)
!1816 = !DILocation(line: 764, column: 6, scope: !1800)
!1817 = !DILocation(line: 765, column: 2, scope: !1800)
!1818 = !DILocation(line: 765, column: 6, scope: !1800)
!1819 = !DILocation(line: 766, column: 2, scope: !1800)
!1820 = !DILocation(line: 766, column: 6, scope: !1800)
!1821 = !DILocation(line: 767, column: 2, scope: !1800)
!1822 = !DILocation(line: 767, column: 28, scope: !1800)
!1823 = !DILocation(line: 769, column: 7, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 769, column: 6)
!1825 = !DILocation(line: 769, column: 6, scope: !1800)
!1826 = !DILocation(line: 770, column: 3, scope: !1824)
!1827 = !DILocation(line: 772, column: 2, scope: !1800)
!1828 = !DILocation(line: 772, column: 9, scope: !1800)
!1829 = !DILocation(line: 772, column: 22, scope: !1800)
!1830 = !DILocation(line: 772, column: 44, scope: !1800)
!1831 = !DILocation(line: 772, column: 41, scope: !1800)
!1832 = !DILocation(line: 773, column: 30, scope: !1810)
!1833 = !DILocation(line: 773, column: 49, scope: !1810)
!1834 = !DILocation(line: 773, column: 47, scope: !1810)
!1835 = !DILocation(line: 773, column: 11, scope: !1810)
!1836 = !DILocation(line: 773, column: 9, scope: !1810)
!1837 = !DILocation(line: 775, column: 7, scope: !1809)
!1838 = !DILocation(line: 775, column: 22, scope: !1809)
!1839 = !DILocation(line: 775, column: 29, scope: !1809)
!1840 = !DILocation(line: 775, column: 20, scope: !1809)
!1841 = !DILocation(line: 775, column: 38, scope: !1809)
!1842 = !DILocation(line: 775, column: 36, scope: !1809)
!1843 = !DILocation(line: 775, column: 7, scope: !1810)
!1844 = !DILocation(line: 776, column: 25, scope: !1808)
!1845 = !DILocation(line: 776, column: 4, scope: !1808)
!1846 = !DILocation(line: 777, column: 4, scope: !1807)
!1847 = !DILocation(line: 777, column: 4, scope: !1813)
!1848 = !DILocation(line: 777, column: 4, scope: !1812)
!1849 = !DILocation(line: 777, column: 4, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 777, column: 4)
!1851 = !DILocation(line: 777, column: 4, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 777, column: 4)
!1853 = !{i64 2155446643, i64 2155446672, i64 2155446718, i64 2155446776, i64 2155446830, i64 2155446884, i64 2155446939, i64 2155446970, i64 2155447278, i64 2155447284, i64 2155447331, i64 2155447354, i64 2155447380}
!1854 = !DILocation(line: 777, column: 4, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 777, column: 4)
!1856 = !DILocation(line: 777, column: 4, scope: !1808)
!1857 = !DILocation(line: 778, column: 4, scope: !1808)
!1858 = !DILocation(line: 781, column: 18, scope: !1810)
!1859 = !DILocation(line: 781, column: 25, scope: !1810)
!1860 = !DILocation(line: 781, column: 16, scope: !1810)
!1861 = !DILocation(line: 784, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 784, column: 7)
!1863 = !DILocation(line: 784, column: 61, scope: !1862)
!1864 = !DILocation(line: 785, column: 7, scope: !1862)
!1865 = !DILocation(line: 784, column: 7, scope: !1810)
!1866 = !DILocation(line: 786, column: 25, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1862, file: !2, line: 785, column: 62)
!1868 = !DILocation(line: 786, column: 4, scope: !1867)
!1869 = !DILocation(line: 787, column: 4, scope: !1867)
!1870 = !DILocation(line: 794, column: 24, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 794, column: 7)
!1872 = !DILocation(line: 794, column: 7, scope: !1871)
!1873 = !DILocation(line: 794, column: 7, scope: !1810)
!1874 = !DILocation(line: 795, column: 25, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 794, column: 61)
!1876 = !DILocation(line: 795, column: 4, scope: !1875)
!1877 = !DILocation(line: 796, column: 4, scope: !1875)
!1878 = !DILocation(line: 799, column: 3, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 799, column: 3)
!1880 = !DILocation(line: 799, column: 3, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1879, file: !2, line: 799, column: 3)
!1882 = !DILocation(line: 802, column: 24, scope: !1810)
!1883 = !DILocation(line: 802, column: 3, scope: !1810)
!1884 = !DILocation(line: 803, column: 31, scope: !1810)
!1885 = !DILocation(line: 803, column: 50, scope: !1810)
!1886 = !DILocation(line: 803, column: 48, scope: !1810)
!1887 = !DILocation(line: 803, column: 3, scope: !1810)
!1888 = !DILocation(line: 804, column: 1, scope: !1810)
!1889 = !DILocation(line: 805, column: 19, scope: !1810)
!1890 = !DILocation(line: 805, column: 16, scope: !1810)
!1891 = !DILocation(line: 806, column: 14, scope: !1810)
!1892 = distinct !{!1892, !1827, !1893, !983, !984}
!1893 = !DILocation(line: 807, column: 2, scope: !1800)
!1894 = !DILocation(line: 808, column: 1, scope: !1800)
!1895 = distinct !DISubprogram(name: "check_multiple_madt", scope: !2, file: !2, line: 515, type: !1163, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1896)
!1896 = !{!1897}
!1897 = !DILocalVariable(name: "table", scope: !1895, file: !2, line: 517, type: !412)
!1898 = !DILocation(line: 517, column: 2, scope: !1895)
!1899 = !DILocation(line: 517, column: 28, scope: !1895)
!1900 = !DILocation(line: 519, column: 2, scope: !1895)
!1901 = !DILocation(line: 520, column: 6, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1895, file: !2, line: 520, column: 6)
!1903 = !DILocation(line: 520, column: 6, scope: !1895)
!1904 = !DILocation(line: 521, column: 3, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !2, line: 521, column: 3)
!1906 = distinct !DILexicalBlock(scope: !1902, file: !2, line: 520, column: 13)
!1907 = !DILocation(line: 521, column: 3, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1905, file: !2, line: 521, column: 3)
!1909 = !DILocation(line: 523, column: 3, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1906, file: !2, line: 523, column: 3)
!1911 = !DILocation(line: 523, column: 3, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 523, column: 3)
!1913 = !DILocation(line: 526, column: 18, scope: !1906)
!1914 = !DILocation(line: 526, column: 3, scope: !1906)
!1915 = !DILocation(line: 528, column: 2, scope: !1906)
!1916 = !DILocation(line: 529, column: 22, scope: !1902)
!1917 = !DILocation(line: 532, column: 1, scope: !1895)
!1918 = distinct !DISubprogram(name: "acpi_table_init", scope: !2, file: !2, line: 911, type: !1709, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1919)
!1919 = !{!1920}
!1920 = !DILocalVariable(name: "ret", scope: !1918, file: !2, line: 913, type: !269)
!1921 = !DILocation(line: 913, column: 2, scope: !1918)
!1922 = !DILocation(line: 913, column: 6, scope: !1918)
!1923 = !DILocation(line: 915, column: 8, scope: !1918)
!1924 = !DILocation(line: 915, column: 6, scope: !1918)
!1925 = !DILocation(line: 916, column: 6, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1918, file: !2, line: 916, column: 6)
!1927 = !DILocation(line: 916, column: 6, scope: !1918)
!1928 = !DILocation(line: 917, column: 10, scope: !1926)
!1929 = !DILocation(line: 917, column: 3, scope: !1926)
!1930 = !DILocation(line: 919, column: 2, scope: !1918)
!1931 = !DILocation(line: 921, column: 2, scope: !1918)
!1932 = !DILocation(line: 922, column: 1, scope: !1918)
!1933 = distinct !DISubprogram(name: "acpi_parse_apic_instance", scope: !2, file: !2, line: 924, type: !395, scopeLine: 925, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1934)
!1934 = !{!1935}
!1935 = !DILocalVariable(name: "str", arg: 1, scope: !1933, file: !2, line: 924, type: !397)
!1936 = !DILocation(line: 924, column: 50, scope: !1933)
!1937 = !DILocation(line: 926, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1933, file: !2, line: 926, column: 6)
!1939 = !DILocation(line: 926, column: 6, scope: !1933)
!1940 = !DILocation(line: 927, column: 3, scope: !1938)
!1941 = !DILocation(line: 929, column: 16, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1933, file: !2, line: 929, column: 6)
!1943 = !DILocation(line: 929, column: 6, scope: !1942)
!1944 = !DILocation(line: 929, column: 6, scope: !1933)
!1945 = !DILocation(line: 930, column: 3, scope: !1942)
!1946 = !DILocation(line: 932, column: 2, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1933, file: !2, line: 932, column: 2)
!1948 = !DILocation(line: 932, column: 2, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1947, file: !2, line: 932, column: 2)
!1950 = !DILocation(line: 934, column: 2, scope: !1933)
!1951 = !DILocation(line: 935, column: 1, scope: !1933)
!1952 = distinct !DISubprogram(name: "acpi_force_table_verification_setup", scope: !2, file: !2, line: 938, type: !395, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1953)
!1953 = !{!1954}
!1954 = !DILocalVariable(name: "s", arg: 1, scope: !1952, file: !2, line: 938, type: !397)
!1955 = !DILocation(line: 938, column: 61, scope: !1952)
!1956 = !DILocation(line: 940, column: 29, scope: !1952)
!1957 = !DILocation(line: 942, column: 2, scope: !1952)
!1958 = distinct !DISubprogram(name: "acpi_force_32bit_fadt_addr", scope: !2, file: !2, line: 946, type: !395, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1959)
!1959 = !{!1960}
!1960 = !DILocalVariable(name: "s", arg: 1, scope: !1958, file: !2, line: 946, type: !397)
!1961 = !DILocation(line: 946, column: 52, scope: !1958)
!1962 = !DILocation(line: 948, column: 2, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1958, file: !2, line: 948, column: 2)
!1964 = !DILocation(line: 948, column: 2, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1963, file: !2, line: 948, column: 2)
!1966 = !DILocation(line: 949, column: 36, scope: !1958)
!1967 = !DILocation(line: 951, column: 2, scope: !1958)
!1968 = distinct !DISubprogram(name: "acpi_get_subtable_type", scope: !2, file: !2, line: 289, type: !1969, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!86, !397}
!1971 = !{!1972}
!1972 = !DILocalVariable(name: "id", arg: 1, scope: !1968, file: !2, line: 289, type: !397)
!1973 = !DILocation(line: 289, column: 30, scope: !1968)
!1974 = !DILocation(line: 291, column: 14, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 291, column: 6)
!1976 = !DILocation(line: 291, column: 6, scope: !1975)
!1977 = !DILocation(line: 291, column: 36, scope: !1975)
!1978 = !DILocation(line: 291, column: 6, scope: !1968)
!1979 = !DILocation(line: 292, column: 3, scope: !1975)
!1980 = !DILocation(line: 293, column: 14, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 293, column: 6)
!1982 = !DILocation(line: 293, column: 6, scope: !1981)
!1983 = !DILocation(line: 293, column: 36, scope: !1981)
!1984 = !DILocation(line: 293, column: 6, scope: !1968)
!1985 = !DILocation(line: 294, column: 3, scope: !1981)
!1986 = !DILocation(line: 295, column: 14, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 295, column: 6)
!1988 = !DILocation(line: 295, column: 6, scope: !1987)
!1989 = !DILocation(line: 295, column: 36, scope: !1987)
!1990 = !DILocation(line: 295, column: 6, scope: !1968)
!1991 = !DILocation(line: 296, column: 3, scope: !1987)
!1992 = !DILocation(line: 297, column: 2, scope: !1968)
!1993 = !DILocation(line: 298, column: 1, scope: !1968)
!1994 = distinct !DISubprogram(name: "acpi_get_subtable_header_length", scope: !2, file: !2, line: 273, type: !1995, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1998)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!272, !1997}
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!1998 = !{!1999}
!1999 = !DILocalVariable(name: "entry", arg: 1, scope: !1994, file: !2, line: 273, type: !1997)
!2000 = !DILocation(line: 273, column: 61, scope: !1994)
!2001 = !DILocation(line: 275, column: 10, scope: !1994)
!2002 = !DILocation(line: 275, column: 17, scope: !1994)
!2003 = !DILocation(line: 275, column: 2, scope: !1994)
!2004 = !DILocation(line: 277, column: 3, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1994, file: !2, line: 275, column: 23)
!2006 = !DILocation(line: 279, column: 3, scope: !2005)
!2007 = !DILocation(line: 281, column: 3, scope: !2005)
!2008 = !DILocation(line: 283, column: 3, scope: !2005)
!2009 = !DILocation(line: 285, column: 2, scope: !1994)
!2010 = !DILocation(line: 286, column: 1, scope: !1994)
!2011 = distinct !DISubprogram(name: "acpi_get_entry_type", scope: !2, file: !2, line: 241, type: !1995, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2012)
!2012 = !{!2013}
!2013 = !DILocalVariable(name: "entry", arg: 1, scope: !2011, file: !2, line: 241, type: !1997)
!2014 = !DILocation(line: 241, column: 49, scope: !2011)
!2015 = !DILocation(line: 243, column: 10, scope: !2011)
!2016 = !DILocation(line: 243, column: 17, scope: !2011)
!2017 = !DILocation(line: 243, column: 2, scope: !2011)
!2018 = !DILocation(line: 245, column: 10, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 243, column: 23)
!2020 = !DILocation(line: 245, column: 17, scope: !2019)
!2021 = !DILocation(line: 245, column: 29, scope: !2019)
!2022 = !DILocation(line: 245, column: 3, scope: !2019)
!2023 = !DILocation(line: 247, column: 10, scope: !2019)
!2024 = !DILocation(line: 247, column: 17, scope: !2019)
!2025 = !DILocation(line: 247, column: 27, scope: !2019)
!2026 = !DILocation(line: 247, column: 3, scope: !2019)
!2027 = !DILocation(line: 249, column: 3, scope: !2019)
!2028 = !DILocation(line: 251, column: 10, scope: !2019)
!2029 = !DILocation(line: 251, column: 17, scope: !2019)
!2030 = !DILocation(line: 251, column: 27, scope: !2019)
!2031 = !DILocation(line: 251, column: 3, scope: !2019)
!2032 = !DILocation(line: 253, column: 2, scope: !2011)
!2033 = !DILocation(line: 254, column: 1, scope: !2011)
!2034 = distinct !DISubprogram(name: "has_handler", scope: !2, file: !2, line: 300, type: !2035, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!512, !776}
!2037 = !{!2038}
!2038 = !DILocalVariable(name: "proc", arg: 1, scope: !2034, file: !2, line: 300, type: !776)
!2039 = !DILocation(line: 300, column: 70, scope: !2034)
!2040 = !DILocation(line: 302, column: 9, scope: !2034)
!2041 = !DILocation(line: 302, column: 15, scope: !2034)
!2042 = !DILocation(line: 302, column: 23, scope: !2034)
!2043 = !DILocation(line: 302, column: 26, scope: !2034)
!2044 = !DILocation(line: 302, column: 32, scope: !2034)
!2045 = !DILocation(line: 302, column: 2, scope: !2034)
!2046 = distinct !DISubprogram(name: "call_handler", scope: !2, file: !2, line: 305, type: !2047, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!269, !776, !273, !272}
!2049 = !{!2050, !2051, !2052}
!2050 = !DILocalVariable(name: "proc", arg: 1, scope: !2046, file: !2, line: 305, type: !776)
!2051 = !DILocalVariable(name: "hdr", arg: 2, scope: !2046, file: !2, line: 306, type: !273)
!2052 = !DILocalVariable(name: "end", arg: 3, scope: !2046, file: !2, line: 307, type: !272)
!2053 = !DILocation(line: 305, column: 70, scope: !2046)
!2054 = !DILocation(line: 306, column: 37, scope: !2046)
!2055 = !DILocation(line: 307, column: 22, scope: !2046)
!2056 = !DILocation(line: 309, column: 6, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2046, file: !2, line: 309, column: 6)
!2058 = !DILocation(line: 309, column: 12, scope: !2057)
!2059 = !DILocation(line: 309, column: 6, scope: !2046)
!2060 = !DILocation(line: 310, column: 10, scope: !2057)
!2061 = !DILocation(line: 310, column: 16, scope: !2057)
!2062 = !DILocation(line: 310, column: 24, scope: !2057)
!2063 = !DILocation(line: 310, column: 29, scope: !2057)
!2064 = !DILocation(line: 310, column: 3, scope: !2057)
!2065 = !DILocation(line: 311, column: 6, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2046, file: !2, line: 311, column: 6)
!2067 = !DILocation(line: 311, column: 12, scope: !2066)
!2068 = !DILocation(line: 311, column: 6, scope: !2046)
!2069 = !DILocation(line: 312, column: 10, scope: !2066)
!2070 = !DILocation(line: 312, column: 16, scope: !2066)
!2071 = !DILocation(line: 312, column: 28, scope: !2066)
!2072 = !DILocation(line: 312, column: 33, scope: !2066)
!2073 = !DILocation(line: 312, column: 39, scope: !2066)
!2074 = !DILocation(line: 312, column: 44, scope: !2066)
!2075 = !DILocation(line: 312, column: 3, scope: !2066)
!2076 = !DILocation(line: 313, column: 2, scope: !2046)
!2077 = !DILocation(line: 314, column: 1, scope: !2046)
!2078 = distinct !DISubprogram(name: "acpi_get_entry_length", scope: !2, file: !2, line: 257, type: !1995, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2079)
!2079 = !{!2080}
!2080 = !DILocalVariable(name: "entry", arg: 1, scope: !2078, file: !2, line: 257, type: !1997)
!2081 = !DILocation(line: 257, column: 51, scope: !2078)
!2082 = !DILocation(line: 259, column: 10, scope: !2078)
!2083 = !DILocation(line: 259, column: 17, scope: !2078)
!2084 = !DILocation(line: 259, column: 2, scope: !2078)
!2085 = !DILocation(line: 261, column: 10, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2078, file: !2, line: 259, column: 23)
!2087 = !DILocation(line: 261, column: 17, scope: !2086)
!2088 = !DILocation(line: 261, column: 29, scope: !2086)
!2089 = !DILocation(line: 261, column: 3, scope: !2086)
!2090 = !DILocation(line: 263, column: 10, scope: !2086)
!2091 = !DILocation(line: 263, column: 17, scope: !2086)
!2092 = !DILocation(line: 263, column: 27, scope: !2086)
!2093 = !DILocation(line: 263, column: 3, scope: !2086)
!2094 = !DILocation(line: 265, column: 10, scope: !2086)
!2095 = !DILocation(line: 265, column: 17, scope: !2086)
!2096 = !DILocation(line: 265, column: 27, scope: !2086)
!2097 = !DILocation(line: 265, column: 3, scope: !2086)
!2098 = !DILocation(line: 267, column: 10, scope: !2086)
!2099 = !DILocation(line: 267, column: 17, scope: !2086)
!2100 = !DILocation(line: 267, column: 27, scope: !2086)
!2101 = !DILocation(line: 267, column: 3, scope: !2086)
!2102 = !DILocation(line: 269, column: 2, scope: !2078)
!2103 = !DILocation(line: 270, column: 1, scope: !2078)
!2104 = !DISubprogram(name: "acpi_os_map_memory", scope: !2105, file: !2105, line: 183, type: !2106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2105 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!268, !410, !2108}
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !271, line: 127, baseType: !178)
!2109 = !DISubprogram(name: "acpi_os_unmap_memory", scope: !2105, file: !2105, line: 187, type: !2110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !268, !2108}
!2112 = distinct !DISubprogram(name: "test_and_set_bit", scope: !2113, file: !2113, line: 68, type: !2114, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2118)
!2113 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!512, !1173, !2116}
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !272)
!2118 = !{!2119, !2120}
!2119 = !DILocalVariable(name: "nr", arg: 1, scope: !2112, file: !2113, line: 68, type: !1173)
!2120 = !DILocalVariable(name: "addr", arg: 2, scope: !2112, file: !2113, line: 68, type: !2116)
!2121 = !DILocation(line: 68, column: 51, scope: !2112)
!2122 = !DILocation(line: 68, column: 79, scope: !2112)
!2123 = !DILocation(line: 70, column: 2, scope: !2112)
!2124 = !DILocation(line: 70, column: 2, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2112, file: !2113, line: 70, column: 2)
!2126 = !DILocation(line: 71, column: 31, scope: !2112)
!2127 = !DILocation(line: 71, column: 38, scope: !2112)
!2128 = !DILocation(line: 71, column: 36, scope: !2112)
!2129 = !DILocation(line: 71, column: 2, scope: !2112)
!2130 = !DILocation(line: 72, column: 31, scope: !2112)
!2131 = !DILocation(line: 72, column: 35, scope: !2112)
!2132 = !DILocation(line: 72, column: 9, scope: !2112)
!2133 = !DILocation(line: 72, column: 2, scope: !2112)
!2134 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2135, file: !2135, line: 94, type: !2136, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2141)
!2135 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !2138, !459}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2140)
!2140 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2141 = !{!2142, !2143}
!2142 = !DILocalVariable(name: "v", arg: 1, scope: !2134, file: !2135, line: 94, type: !2138)
!2143 = !DILocalVariable(name: "size", arg: 2, scope: !2134, file: !2135, line: 94, type: !459)
!2144 = !DILocation(line: 94, column: 79, scope: !2134)
!2145 = !DILocation(line: 94, column: 89, scope: !2134)
!2146 = !DILocation(line: 96, column: 20, scope: !2134)
!2147 = !DILocation(line: 96, column: 23, scope: !2134)
!2148 = !DILocation(line: 96, column: 2, scope: !2134)
!2149 = !DILocation(line: 97, column: 2, scope: !2134)
!2150 = !DILocation(line: 98, column: 1, scope: !2134)
!2151 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !2152, file: !2152, line: 136, type: !2114, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2153)
!2152 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2153 = !{!2154, !2155, !2156}
!2154 = !DILocalVariable(name: "nr", arg: 1, scope: !2151, file: !2152, line: 136, type: !1173)
!2155 = !DILocalVariable(name: "addr", arg: 2, scope: !2151, file: !2152, line: 136, type: !2116)
!2156 = !DILocalVariable(name: "c", scope: !2157, file: !2152, line: 138, type: !512)
!2157 = distinct !DILexicalBlock(scope: !2151, file: !2152, line: 138, column: 9)
!2158 = !DILocation(line: 136, column: 28, scope: !2151)
!2159 = !DILocation(line: 136, column: 56, scope: !2151)
!2160 = !DILocation(line: 138, column: 9, scope: !2157)
!2161 = !{i64 2147829647, i64 2147829686, i64 2147829707, i64 2147829744, i64 2147829767, i64 2147829776, i64 2147829879}
!2162 = !DILocation(line: 138, column: 9, scope: !2151)
!2163 = !DILocation(line: 138, column: 2, scope: !2151)
!2164 = distinct !DISubprogram(name: "kasan_check_write", scope: !2165, file: !2165, line: 44, type: !2166, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2168)
!2165 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!512, !2138, !13}
!2168 = !{!2169, !2170}
!2169 = !DILocalVariable(name: "p", arg: 1, scope: !2164, file: !2165, line: 44, type: !2138)
!2170 = !DILocalVariable(name: "size", arg: 2, scope: !2164, file: !2165, line: 44, type: !13)
!2171 = !DILocation(line: 44, column: 59, scope: !2164)
!2172 = !DILocation(line: 44, column: 75, scope: !2164)
!2173 = !DILocation(line: 46, column: 2, scope: !2164)
!2174 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2175, file: !2175, line: 229, type: !2176, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2178)
!2175 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null, !2138, !459, !269}
!2178 = !{!2179, !2180, !2181}
!2179 = !DILocalVariable(name: "ptr", arg: 1, scope: !2174, file: !2175, line: 229, type: !2138)
!2180 = !DILocalVariable(name: "size", arg: 2, scope: !2174, file: !2175, line: 229, type: !459)
!2181 = !DILocalVariable(name: "type", arg: 3, scope: !2174, file: !2175, line: 230, type: !269)
!2182 = !DILocation(line: 229, column: 60, scope: !2174)
!2183 = !DILocation(line: 229, column: 72, scope: !2174)
!2184 = !DILocation(line: 230, column: 15, scope: !2174)
!2185 = !DILocation(line: 230, column: 23, scope: !2174)
!2186 = !DISubprogram(name: "add_taint", scope: !98, file: !98, line: 93, type: !2187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !13, !97}
!2189 = !DISubprogram(name: "acpi_install_physical_table", scope: !862, file: !862, line: 459, type: !2190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!270, !410}
!2192 = !DISubprogram(name: "kstrtoint", scope: !2193, file: !2193, line: 72, type: !2194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2193 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!269, !391, !13, !2196}
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
