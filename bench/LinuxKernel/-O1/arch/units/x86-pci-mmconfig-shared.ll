; ModuleID = 'arch/x86/pci/mmconfig-shared.c'
source_filename = "arch/x86/pci/mmconfig-shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init..kmod_mmconfig_shared__296_779_pci_mmcfg_late_insert_resources\22, \22a\22\09\09"
module asm "__initcall__kmod_mmconfig_shared__296_779_pci_mmcfg_late_insert_resources7:\09\09\09"
module asm ".long\09__initstub__kmod_mmconfig_shared__296_779_pci_mmcfg_late_insert_resources7 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.pci_mmcfg_hostbridge_probe = type { i32, i32, i32, i32, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.efi = type { ptr, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i64 }
%struct.efi_memory_map = type { i64, ptr, ptr, i32, i64, i64, i64 }
%struct.pci_mmcfg_region = type { %struct.list_head, %struct.resource, i64, ptr, i16, i8, i8, [30 x i8] }
%struct.pci_raw_ops = type { ptr, ptr }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_table_mcfg = type { %struct.acpi_table_header, [8 x i8] }
%struct.acpi_mcfg_allocation = type { i64, i16, i8, i8, i32 }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.acpi_resource_address64 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, %struct.acpi_address64_attribute, %struct.acpi_resource_source }>
%union.acpi_resource_attribute = type { %struct.acpi_memory_attribute }
%struct.acpi_memory_attribute = type { i8, i8, i8, i8 }
%struct.acpi_address64_attribute = type { i64, i64, i64, i64, i64 }
%struct.acpi_resource_source = type <{ i8, i16, ptr }>
%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor, [58 x i8] }
%struct.acpi_resource_vendor = type { i16, [0 x i8] }
%struct.acpi_resource_fixed_memory32 = type <{ i8, i32, i32 }>

@pci_mmcfg_list = hidden global %struct.list_head { ptr @pci_mmcfg_list, ptr @pci_mmcfg_list }, align 8, !dbg !0
@pci_mmcfg_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pci_mmcfg_lock, i64 16), ptr getelementptr (i8, ptr @pci_mmcfg_lock, i64 16) } }, align 8, !dbg !337
@.str = private unnamed_addr constant [68 x i8] c"\016PCI: MMCONFIG for domain %04x [bus %02x-%02x] at %pR (base %#lx)\0A\00", align 1, !dbg !277
@pci_probe = external dso_local global i32, align 4
@known_bridge = internal global i32 0, section ".init.data", align 4, !dbg !325
@.str.1 = private unnamed_addr constant [5 x i8] c"MCFG\00", align 1, !dbg !282
@__UNIQUE_ID___addressable___initstub__kmod_mmconfig_shared__296_779_pci_mmcfg_late_insert_resources7297 = internal global ptr @__initstub__kmod_mmconfig_shared__296_779_pci_mmcfg_late_insert_resources7, section ".discard.addressable", align 8, !dbg !287
@pci_mmcfg_arch_init_failed = internal global i8 0, align 1, !dbg !323
@.str.2 = private unnamed_addr constant [93 x i8] c"[Firmware Info]: MMCONFIG for domain %04x [bus %02x-%02x] only partially covers this bridge\0A\00", align 1, !dbg !289
@.str.3 = private unnamed_addr constant [38 x i8] c"fail to add MMCONFIG (out of memory)\0A\00", align 1, !dbg !294
@.str.4 = private unnamed_addr constant [45 x i8] c"[Firmware Bug]: MMCONFIG %pR isn't reserved\0A\00", align 1, !dbg !299
@pci_mmcfg_running_state = internal global i8 0, align 1, !dbg !319
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"MMCONFIG %pR conflicts with %s %pR\0A\00", align 1, !dbg !304
@.str.6 = private unnamed_addr constant [27 x i8] c"fail to map MMCONFIG %pR.\0A\00", align 1, !dbg !309
@.str.7 = private unnamed_addr constant [29 x i8] c"MMCONFIG at %pR (base %#lx)\0A\00", align 1, !dbg !314
@.str.8 = private unnamed_addr constant [34 x i8] c"PCI MMCONFIG %04x [bus %02x-%02x]\00", align 1, !dbg !327
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !332
@raw_pci_ops = external dso_local global ptr, align 8
@pci_mmcfg_probes = internal constant [5 x %struct.pci_mmcfg_hostbridge_probe] [%struct.pci_mmcfg_hostbridge_probe { i32 0, i32 0, i32 32902, i32 13712, ptr @pci_mmcfg_e7520 }, %struct.pci_mmcfg_hostbridge_probe { i32 0, i32 0, i32 32902, i32 10096, ptr @pci_mmcfg_intel_945 }, %struct.pci_mmcfg_hostbridge_probe { i32 0, i32 192, i32 4130, i32 4608, ptr @pci_mmcfg_amd_fam10h }, %struct.pci_mmcfg_hostbridge_probe { i32 255, i32 0, i32 4130, i32 4608, ptr @pci_mmcfg_amd_fam10h }, %struct.pci_mmcfg_hostbridge_probe { i32 0, i32 0, i32 4318, i32 873, ptr @pci_mmcfg_nvidia_mcp55 }], section ".init.rodata", align 16, !dbg !391
@.str.10 = private unnamed_addr constant [33 x i8] c"\016PCI: %s with MMCONFIG support\0A\00", align 1, !dbg !386
@.str.11 = private unnamed_addr constant [46 x i8] c"Intel Corporation E7520 Memory Controller Hub\00", align 1, !dbg !405
@.str.12 = private unnamed_addr constant [61 x i8] c"Intel Corporation 945G/GZ/P/PL Express Memory Controller Hub\00", align 1, !dbg !410
@.str.13 = private unnamed_addr constant [18 x i8] c"AMD Family 10h NB\00", align 1, !dbg !415
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@pci_mmcfg_nvidia_mcp55.extcfg_regnum = internal constant i32 144, section ".init.rodata", align 4, !dbg !420
@pci_mmcfg_nvidia_mcp55.extcfg_regsize = internal constant i32 4, section ".init.rodata", align 4, !dbg !438
@pci_mmcfg_nvidia_mcp55.extcfg_enable_mask = internal constant i32 -2147483648, section ".init.rodata", align 4, !dbg !440
@pci_mmcfg_nvidia_mcp55.extcfg_start_mask = internal constant i32 16711680, section ".init.rodata", align 4, !dbg !442
@pci_mmcfg_nvidia_mcp55.extcfg_start_shift = internal constant i32 16, section ".init.rodata", align 4, !dbg !444
@pci_mmcfg_nvidia_mcp55.extcfg_size_mask = internal constant i32 805306368, section ".init.rodata", align 4, !dbg !447
@pci_mmcfg_nvidia_mcp55.extcfg_size_shift = internal constant i32 28, section ".init.rodata", align 4, !dbg !449
@pci_mmcfg_nvidia_mcp55.extcfg_sizebus = internal constant [4 x i32] [i32 256, i32 128, i32 64, i32 32], section ".init.rodata", align 16, !dbg !451
@pci_mmcfg_nvidia_mcp55.extcfg_base_mask = internal constant [4 x i32] [i32 32760, i32 32764, i32 32766, i32 32767], section ".init.rodata", align 16, !dbg !454
@pci_mmcfg_nvidia_mcp55.extcfg_base_lshift = internal constant i32 25, section ".init.rodata", align 4, !dbg !457
@acpi_disabled = external dso_local global i32, align 4
@mcp55_checked = internal global i8 0, section ".init.data", align 1, !dbg !464
@.str.14 = private unnamed_addr constant [13 x i8] c"nVidia MCP55\00", align 1, !dbg !459
@.str.15 = private unnamed_addr constant [32 x i8] c"\013PCI: MMCONFIG has no entries\0A\00", align 1, !dbg !466
@.str.16 = private unnamed_addr constant [35 x i8] c"\014PCI: no memory for MCFG entries\0A\00", align 1, !dbg !471
@.str.17 = private unnamed_addr constant [4 x i8] c"SGI\00", align 1, !dbg !476
@.str.18 = private unnamed_addr constant [76 x i8] c"\013PCI: MCFG region for %04x [bus %02x-%02x] at %#llx is above 4GB, ignored\0A\00", align 1, !dbg !478
@pcibios_last_bus = external dso_local global i32, align 4
@.str.19 = private unnamed_addr constant [27 x i8] c"\016PCI: not using MMCONFIG\0A\00", align 1, !dbg !483
@.str.20 = private unnamed_addr constant [11 x i8] c"E820 entry\00", align 1, !dbg !485
@.str.21 = private unnamed_addr constant [26 x i8] c"ACPI motherboard resource\00", align 1, !dbg !490
@.str.22 = private unnamed_addr constant [77 x i8] c"[Firmware Info]: MMCONFIG at %pR not reserved in ACPI motherboard resources\0A\00", align 1, !dbg !495
@.str.23 = private unnamed_addr constant [84 x i8] c"\016[Firmware Info]: PCI: MMCONFIG at %pR not reserved in ACPI motherboard resources\0A\00", align 1, !dbg !500
@.str.24 = private unnamed_addr constant [18 x i8] c"EfiMemoryMappedIO\00", align 1, !dbg !505
@.str.25 = private unnamed_addr constant [38 x i8] c"\014MMCONFIG %pR conflicts with %s %pR\0A\00", align 1, !dbg !507
@.str.26 = private unnamed_addr constant [70 x i8] c"\016MMCONFIG %pR reserved to work around lack of ACPI motherboard _CRS\0A\00", align 1, !dbg !509
@.str.27 = private unnamed_addr constant [32 x i8] c"MMCONFIG at %pR reserved as %s\0A\00", align 1, !dbg !514
@.str.28 = private unnamed_addr constant [39 x i8] c"\016PCI: MMCONFIG at %pR reserved as %s\0A\00", align 1, !dbg !516
@.str.29 = private unnamed_addr constant [45 x i8] c"MMCONFIG at %pR (base %#lx) (size reduced!)\0A\00", align 1, !dbg !521
@.str.30 = private unnamed_addr constant [76 x i8] c"\016PCI: MMCONFIG for %04x [bus%02x-%02x] at %pR (base %#lx) (size reduced!)\0A\00", align 1, !dbg !523
@.str.31 = private unnamed_addr constant [8 x i8] c"PNP0C01\00", align 1, !dbg !525
@.str.32 = private unnamed_addr constant [8 x i8] c"PNP0C02\00", align 1, !dbg !527
@.str.33 = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1, !dbg !529
@efi = external dso_local global %struct.efi, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_mmconfig_shared__296_779_pci_mmcfg_late_insert_resources7297], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @pci_mmconfig_add(i32 noundef %segment, i32 noundef %start, i32 noundef %end, i64 noundef %addr) #0 section ".init.text" align 16 !dbg !540 {
entry:
  %segment.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %addr.addr = alloca i64, align 8
  %new = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store i32 %segment, ptr %segment.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %segment.addr, metadata !544, metadata !DIExpression()), !dbg !549
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !545, metadata !DIExpression()), !dbg !550
  store i32 %end, ptr %end.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !546, metadata !DIExpression()), !dbg !551
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !547, metadata !DIExpression()), !dbg !552
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #16, !dbg !553
  call void @llvm.dbg.declare(metadata ptr %new, metadata !548, metadata !DIExpression()), !dbg !554
  %0 = load i32, ptr %segment.addr, align 4, !dbg !555
  %1 = load i32, ptr %start.addr, align 4, !dbg !556
  %2 = load i32, ptr %end.addr, align 4, !dbg !557
  %3 = load i64, ptr %addr.addr, align 8, !dbg !558
  %call = call ptr @pci_mmconfig_alloc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) #17, !dbg !559
  store ptr %call, ptr %new, align 8, !dbg !560
  %4 = load ptr, ptr %new, align 8, !dbg !561
  %tobool = icmp ne ptr %4, null, !dbg !561
  br i1 %tobool, label %if.then, label %if.end, !dbg !563

if.then:                                          ; preds = %entry
  call void @mutex_lock(ptr noundef @pci_mmcfg_lock) #17, !dbg !564
  %5 = load ptr, ptr %new, align 8, !dbg !566
  call void @list_add_sorted(ptr noundef %5) #17, !dbg !567
  call void @mutex_unlock(ptr noundef @pci_mmcfg_lock) #17, !dbg !568
  br label %do.body, !dbg !569

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !571

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !571

do.end:                                           ; preds = %do.cond
  %6 = load i32, ptr %segment.addr, align 4, !dbg !569
  %7 = load i32, ptr %start.addr, align 4, !dbg !569
  %8 = load i32, ptr %end.addr, align 4, !dbg !569
  %9 = load ptr, ptr %new, align 8, !dbg !569
  %res = getelementptr inbounds %struct.pci_mmcfg_region, ptr %9, i32 0, i32 1, !dbg !569
  %10 = load i64, ptr %addr.addr, align 8, !dbg !569
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %res, i64 noundef %10) #18, !dbg !569
  store i32 %call1, ptr %tmp, align 4, !dbg !571
  %11 = load i32, ptr %tmp, align 4, !dbg !569
  br label %if.end, !dbg !573

if.end:                                           ; preds = %do.end, %entry
  %12 = load ptr, ptr %new, align 8, !dbg !574
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #16, !dbg !575
  ret ptr %12, !dbg !576
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_mmconfig_alloc(i32 noundef %segment, i32 noundef %start, i32 noundef %end, i64 noundef %addr) #3 align 16 !dbg !577 {
entry:
  %retval = alloca ptr, align 8
  %segment.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %addr.addr = alloca i64, align 8
  %new = alloca ptr, align 8
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %segment, ptr %segment.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %segment.addr, metadata !579, metadata !DIExpression()), !dbg !585
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !580, metadata !DIExpression()), !dbg !586
  store i32 %end, ptr %end.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !581, metadata !DIExpression()), !dbg !587
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !582, metadata !DIExpression()), !dbg !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #16, !dbg !589
  call void @llvm.dbg.declare(metadata ptr %new, metadata !583, metadata !DIExpression()), !dbg !590
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !591
  call void @llvm.dbg.declare(metadata ptr %res, metadata !584, metadata !DIExpression()), !dbg !592
  %0 = load i64, ptr %addr.addr, align 8, !dbg !593
  %cmp = icmp eq i64 %0, 0, !dbg !595
  br i1 %cmp, label %if.then, label %if.end, !dbg !596

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !597

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 136, i32 noundef 3264) #19, !dbg !598
  store ptr %call, ptr %new, align 8, !dbg !599
  %1 = load ptr, ptr %new, align 8, !dbg !600
  %tobool = icmp ne ptr %1, null, !dbg !600
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !602

if.then1:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !603

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %addr.addr, align 8, !dbg !604
  %3 = load ptr, ptr %new, align 8, !dbg !605
  %address = getelementptr inbounds %struct.pci_mmcfg_region, ptr %3, i32 0, i32 2, !dbg !606
  store i64 %2, ptr %address, align 8, !dbg !607
  %4 = load i32, ptr %segment.addr, align 4, !dbg !608
  %conv = trunc i32 %4 to i16, !dbg !608
  %5 = load ptr, ptr %new, align 8, !dbg !609
  %segment3 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %5, i32 0, i32 4, !dbg !610
  store i16 %conv, ptr %segment3, align 8, !dbg !611
  %6 = load i32, ptr %start.addr, align 4, !dbg !612
  %conv4 = trunc i32 %6 to i8, !dbg !612
  %7 = load ptr, ptr %new, align 8, !dbg !613
  %start_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %7, i32 0, i32 5, !dbg !614
  store i8 %conv4, ptr %start_bus, align 2, !dbg !615
  %8 = load i32, ptr %end.addr, align 4, !dbg !616
  %conv5 = trunc i32 %8 to i8, !dbg !616
  %9 = load ptr, ptr %new, align 8, !dbg !617
  %end_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %9, i32 0, i32 6, !dbg !618
  store i8 %conv5, ptr %end_bus, align 1, !dbg !619
  %10 = load ptr, ptr %new, align 8, !dbg !620
  %res6 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %10, i32 0, i32 1, !dbg !621
  store ptr %res6, ptr %res, align 8, !dbg !622
  %11 = load i64, ptr %addr.addr, align 8, !dbg !623
  %12 = load i32, ptr %start.addr, align 4, !dbg !624
  %shl = shl i32 %12, 20, !dbg !624
  %conv7 = sext i32 %shl to i64, !dbg !624
  %add = add i64 %11, %conv7, !dbg !625
  %13 = load ptr, ptr %res, align 8, !dbg !626
  %start8 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 0, !dbg !627
  store i64 %add, ptr %start8, align 8, !dbg !628
  %14 = load i64, ptr %addr.addr, align 8, !dbg !629
  %15 = load i32, ptr %end.addr, align 4, !dbg !630
  %add9 = add i32 %15, 1, !dbg !630
  %shl10 = shl i32 %add9, 20, !dbg !630
  %conv11 = sext i32 %shl10 to i64, !dbg !630
  %add12 = add i64 %14, %conv11, !dbg !631
  %sub = sub i64 %add12, 1, !dbg !632
  %16 = load ptr, ptr %res, align 8, !dbg !633
  %end13 = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 1, !dbg !634
  store i64 %sub, ptr %end13, align 8, !dbg !635
  %17 = load ptr, ptr %res, align 8, !dbg !636
  %flags = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 3, !dbg !637
  store i64 2147484160, ptr %flags, align 8, !dbg !638
  %18 = load ptr, ptr %new, align 8, !dbg !639
  %name = getelementptr inbounds %struct.pci_mmcfg_region, ptr %18, i32 0, i32 7, !dbg !640
  %arraydecay = getelementptr inbounds [30 x i8], ptr %name, i64 0, i64 0, !dbg !639
  %19 = load i32, ptr %segment.addr, align 4, !dbg !641
  %20 = load i32, ptr %start.addr, align 4, !dbg !642
  %21 = load i32, ptr %end.addr, align 4, !dbg !643
  %call14 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 30, ptr noundef @.str.8, i32 noundef %19, i32 noundef %20, i32 noundef %21) #17, !dbg !644
  %22 = load ptr, ptr %new, align 8, !dbg !645
  %name15 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %22, i32 0, i32 7, !dbg !646
  %arraydecay16 = getelementptr inbounds [30 x i8], ptr %name15, i64 0, i64 0, !dbg !645
  %23 = load ptr, ptr %res, align 8, !dbg !647
  %name17 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 2, !dbg !648
  store ptr %arraydecay16, ptr %name17, align 8, !dbg !649
  %24 = load ptr, ptr %new, align 8, !dbg !650
  store ptr %24, ptr %retval, align 8, !dbg !651
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !651

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !652
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #16, !dbg !652
  %25 = load ptr, ptr %retval, align 8, !dbg !652
  ret ptr %25, !dbg !652
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !653 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_sorted(ptr noundef %new) #3 align 16 !dbg !657 {
entry:
  %new.addr = alloca ptr, align 8
  %cfg = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr19 = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !661, metadata !DIExpression()), !dbg !669
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #16, !dbg !670
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !662, metadata !DIExpression()), !dbg !671
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !672
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !663, metadata !DIExpression()), !dbg !672
  br label %do.body, !dbg !673

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !675

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !675

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr @pci_mmcfg_list, align 8, !dbg !673
  store ptr %0, ptr %tmp, align 8, !dbg !675
  %1 = load ptr, ptr %tmp, align 8, !dbg !673
  store ptr %1, ptr %__mptr, align 8, !dbg !672
  %2 = load ptr, ptr %__mptr, align 8, !dbg !672
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !672
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !672
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !677
  %3 = load ptr, ptr %tmp1, align 8, !dbg !672
  store ptr %3, ptr %cfg, align 8, !dbg !677
  br label %for.cond, !dbg !677

for.cond:                                         ; preds = %do.end22, %do.end
  %4 = load ptr, ptr %cfg, align 8, !dbg !678
  %list = getelementptr inbounds %struct.pci_mmcfg_region, ptr %4, i32 0, i32 0, !dbg !678
  %cmp = icmp ne ptr %list, @pci_mmcfg_list, !dbg !678
  br i1 %cmp, label %for.body, label %for.end, !dbg !677

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cfg, align 8, !dbg !679
  %segment = getelementptr inbounds %struct.pci_mmcfg_region, ptr %5, i32 0, i32 4, !dbg !682
  %6 = load i16, ptr %segment, align 8, !dbg !682
  %conv = zext i16 %6 to i32, !dbg !679
  %7 = load ptr, ptr %new.addr, align 8, !dbg !683
  %segment2 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %7, i32 0, i32 4, !dbg !684
  %8 = load i16, ptr %segment2, align 8, !dbg !684
  %conv3 = zext i16 %8 to i32, !dbg !683
  %cmp4 = icmp sgt i32 %conv, %conv3, !dbg !685
  br i1 %cmp4, label %if.then, label %lor.lhs.false, !dbg !686

lor.lhs.false:                                    ; preds = %for.body
  %9 = load ptr, ptr %cfg, align 8, !dbg !687
  %segment6 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %9, i32 0, i32 4, !dbg !688
  %10 = load i16, ptr %segment6, align 8, !dbg !688
  %conv7 = zext i16 %10 to i32, !dbg !687
  %11 = load ptr, ptr %new.addr, align 8, !dbg !689
  %segment8 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %11, i32 0, i32 4, !dbg !690
  %12 = load i16, ptr %segment8, align 8, !dbg !690
  %conv9 = zext i16 %12 to i32, !dbg !689
  %cmp10 = icmp eq i32 %conv7, %conv9, !dbg !691
  br i1 %cmp10, label %land.lhs.true, label %if.end, !dbg !692

land.lhs.true:                                    ; preds = %lor.lhs.false
  %13 = load ptr, ptr %cfg, align 8, !dbg !693
  %start_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %13, i32 0, i32 5, !dbg !694
  %14 = load i8, ptr %start_bus, align 2, !dbg !694
  %conv12 = zext i8 %14 to i32, !dbg !693
  %15 = load ptr, ptr %new.addr, align 8, !dbg !695
  %start_bus13 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %15, i32 0, i32 5, !dbg !696
  %16 = load i8, ptr %start_bus13, align 2, !dbg !696
  %conv14 = zext i8 %16 to i32, !dbg !695
  %cmp15 = icmp sge i32 %conv12, %conv14, !dbg !697
  br i1 %cmp15, label %if.then, label %if.end, !dbg !698

if.then:                                          ; preds = %land.lhs.true, %for.body
  %17 = load ptr, ptr %new.addr, align 8, !dbg !699
  %list17 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %17, i32 0, i32 0, !dbg !701
  %18 = load ptr, ptr %cfg, align 8, !dbg !702
  %list18 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %18, i32 0, i32 0, !dbg !703
  call void @list_add_tail_rcu(ptr noundef %list17, ptr noundef %list18) #17, !dbg !704
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !705

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  br label %for.inc, !dbg !706

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr19) #16, !dbg !707
  call void @llvm.dbg.declare(metadata ptr %__mptr19, metadata !666, metadata !DIExpression()), !dbg !707
  br label %do.body20, !dbg !708

do.body20:                                        ; preds = %for.inc
  br label %do.cond21, !dbg !710

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !710

do.end22:                                         ; preds = %do.cond21
  %19 = load ptr, ptr %cfg, align 8, !dbg !708
  %list24 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %19, i32 0, i32 0, !dbg !708
  %next = getelementptr inbounds %struct.list_head, ptr %list24, i32 0, i32 0, !dbg !708
  %20 = load volatile ptr, ptr %next, align 8, !dbg !708
  store ptr %20, ptr %tmp23, align 8, !dbg !710
  %21 = load ptr, ptr %tmp23, align 8, !dbg !708
  store ptr %21, ptr %__mptr19, align 8, !dbg !707
  %22 = load ptr, ptr %__mptr19, align 8, !dbg !707
  %add.ptr26 = getelementptr i8, ptr %22, i64 0, !dbg !707
  store ptr %add.ptr26, ptr %tmp25, align 8, !dbg !707
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr19) #16, !dbg !678
  %23 = load ptr, ptr %tmp25, align 8, !dbg !707
  store ptr %23, ptr %cfg, align 8, !dbg !678
  br label %for.cond, !dbg !678, !llvm.loop !712

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %new.addr, align 8, !dbg !716
  %list27 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %24, i32 0, i32 0, !dbg !717
  call void @list_add_tail_rcu(ptr noundef %list27, ptr noundef @pci_mmcfg_list) #17, !dbg !718
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !719
  br label %cleanup, !dbg !719

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #16, !dbg !719
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !719

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !720 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !721 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_mmconfig_lookup(i32 noundef %segment, i32 noundef %bus) #3 align 16 !dbg !725 {
entry:
  %retval = alloca ptr, align 8
  %segment.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %cfg = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr12 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  store i32 %segment, ptr %segment.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %segment.addr, metadata !729, metadata !DIExpression()), !dbg !738
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !730, metadata !DIExpression()), !dbg !739
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #16, !dbg !740
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !731, metadata !DIExpression()), !dbg !741
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !742
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !732, metadata !DIExpression()), !dbg !742
  br label %do.body, !dbg !743

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !745

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !745

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr @pci_mmcfg_list, align 8, !dbg !743
  store ptr %0, ptr %tmp, align 8, !dbg !745
  %1 = load ptr, ptr %tmp, align 8, !dbg !743
  store ptr %1, ptr %__mptr, align 8, !dbg !742
  %2 = load ptr, ptr %__mptr, align 8, !dbg !742
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !742
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !742
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !747
  %3 = load ptr, ptr %tmp1, align 8, !dbg !742
  store ptr %3, ptr %cfg, align 8, !dbg !747
  br label %for.cond, !dbg !747

for.cond:                                         ; preds = %do.end15, %do.end
  %4 = load ptr, ptr %cfg, align 8, !dbg !748
  %list = getelementptr inbounds %struct.pci_mmcfg_region, ptr %4, i32 0, i32 0, !dbg !748
  %cmp = icmp ne ptr %list, @pci_mmcfg_list, !dbg !748
  br i1 %cmp, label %for.body, label %for.end, !dbg !747

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cfg, align 8, !dbg !749
  %segment2 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %5, i32 0, i32 4, !dbg !751
  %6 = load i16, ptr %segment2, align 8, !dbg !751
  %conv = zext i16 %6 to i32, !dbg !749
  %7 = load i32, ptr %segment.addr, align 4, !dbg !752
  %cmp3 = icmp eq i32 %conv, %7, !dbg !753
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !754

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %cfg, align 8, !dbg !755
  %start_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %8, i32 0, i32 5, !dbg !756
  %9 = load i8, ptr %start_bus, align 2, !dbg !756
  %conv5 = zext i8 %9 to i32, !dbg !755
  %10 = load i32, ptr %bus.addr, align 4, !dbg !757
  %cmp6 = icmp sle i32 %conv5, %10, !dbg !758
  br i1 %cmp6, label %land.lhs.true8, label %if.end, !dbg !759

land.lhs.true8:                                   ; preds = %land.lhs.true
  %11 = load i32, ptr %bus.addr, align 4, !dbg !760
  %12 = load ptr, ptr %cfg, align 8, !dbg !761
  %end_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %12, i32 0, i32 6, !dbg !762
  %13 = load i8, ptr %end_bus, align 1, !dbg !762
  %conv9 = zext i8 %13 to i32, !dbg !761
  %cmp10 = icmp sle i32 %11, %conv9, !dbg !763
  br i1 %cmp10, label %if.then, label %if.end, !dbg !764

if.then:                                          ; preds = %land.lhs.true8
  %14 = load ptr, ptr %cfg, align 8, !dbg !765
  store ptr %14, ptr %retval, align 8, !dbg !766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !766

if.end:                                           ; preds = %land.lhs.true8, %land.lhs.true, %for.body
  br label %for.inc, !dbg !762

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr12) #16, !dbg !767
  call void @llvm.dbg.declare(metadata ptr %__mptr12, metadata !735, metadata !DIExpression()), !dbg !767
  br label %do.body13, !dbg !768

do.body13:                                        ; preds = %for.inc
  br label %do.cond14, !dbg !770

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !770

do.end15:                                         ; preds = %do.cond14
  %15 = load ptr, ptr %cfg, align 8, !dbg !768
  %list17 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %15, i32 0, i32 0, !dbg !768
  %next = getelementptr inbounds %struct.list_head, ptr %list17, i32 0, i32 0, !dbg !768
  %16 = load volatile ptr, ptr %next, align 8, !dbg !768
  store ptr %16, ptr %tmp16, align 8, !dbg !770
  %17 = load ptr, ptr %tmp16, align 8, !dbg !768
  store ptr %17, ptr %__mptr12, align 8, !dbg !767
  %18 = load ptr, ptr %__mptr12, align 8, !dbg !767
  %add.ptr19 = getelementptr i8, ptr %18, i64 0, !dbg !767
  store ptr %add.ptr19, ptr %tmp18, align 8, !dbg !767
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr12) #16, !dbg !748
  %19 = load ptr, ptr %tmp18, align 8, !dbg !767
  store ptr %19, ptr %cfg, align 8, !dbg !748
  br label %for.cond, !dbg !748, !llvm.loop !772

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !774
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !774

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #16, !dbg !775
  %20 = load ptr, ptr %retval, align 8, !dbg !775
  ret ptr %20, !dbg !775
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @pci_mmcfg_early_init() #0 section ".init.text" align 16 !dbg !776 {
entry:
  %0 = load i32, ptr @pci_probe, align 4, !dbg !779
  %and = and i32 %0, 8, !dbg !781
  %tobool = icmp ne i32 %and, 0, !dbg !781
  br i1 %tobool, label %if.then, label %if.end4, !dbg !782

if.then:                                          ; preds = %entry
  %call = call i32 @pci_mmcfg_check_hostbridge() #18, !dbg !783
  %tobool1 = icmp ne i32 %call, 0, !dbg !783
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !786

if.then2:                                         ; preds = %if.then
  store i32 1, ptr @known_bridge, align 4, !dbg !787
  br label %if.end, !dbg !788

if.else:                                          ; preds = %if.then
  %call3 = call i32 @acpi_table_parse(ptr noundef @.str.1, ptr noundef @pci_parse_mcfg) #17, !dbg !789
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  call void @__pci_mmcfg_init(i32 noundef 1) #18, !dbg !790
  br label %if.end4, !dbg !791

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !792
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pci_mmcfg_check_hostbridge() #0 section ".init.text" align 16 !dbg !793 {
entry:
  %retval = alloca i32, align 4
  %l = alloca i32, align 4
  %bus = alloca i32, align 4
  %devfn = alloca i32, align 4
  %vendor = alloca i16, align 2
  %device = alloca i16, align 2
  %i = alloca i32, align 4
  %name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #16, !dbg !804
  call void @llvm.dbg.declare(metadata ptr %l, metadata !797, metadata !DIExpression()), !dbg !805
  call void @llvm.lifetime.start.p0(i64 4, ptr %bus) #16, !dbg !806
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !798, metadata !DIExpression()), !dbg !807
  call void @llvm.lifetime.start.p0(i64 4, ptr %devfn) #16, !dbg !806
  call void @llvm.dbg.declare(metadata ptr %devfn, metadata !799, metadata !DIExpression()), !dbg !808
  call void @llvm.lifetime.start.p0(i64 2, ptr %vendor) #16, !dbg !809
  call void @llvm.dbg.declare(metadata ptr %vendor, metadata !800, metadata !DIExpression()), !dbg !810
  call void @llvm.lifetime.start.p0(i64 2, ptr %device) #16, !dbg !809
  call void @llvm.dbg.declare(metadata ptr %device, metadata !801, metadata !DIExpression()), !dbg !811
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !812
  call void @llvm.dbg.declare(metadata ptr %i, metadata !802, metadata !DIExpression()), !dbg !813
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #16, !dbg !814
  call void @llvm.dbg.declare(metadata ptr %name, metadata !803, metadata !DIExpression()), !dbg !815
  %0 = load ptr, ptr @raw_pci_ops, align 8, !dbg !816
  %tobool = icmp ne ptr %0, null, !dbg !816
  br i1 %tobool, label %if.end, label %if.then, !dbg !818

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !819
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !819

if.end:                                           ; preds = %entry
  call void @free_all_mmcfg() #18, !dbg !820
  store i32 0, ptr %i, align 4, !dbg !821
  br label %for.cond, !dbg !823

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !824
  %conv = sext i32 %1 to i64, !dbg !824
  %cmp = icmp ult i64 %conv, 5, !dbg !826
  br i1 %cmp, label %for.body, label %for.end, !dbg !827

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !828
  %idxprom = sext i32 %2 to i64, !dbg !830
  %arrayidx = getelementptr [5 x %struct.pci_mmcfg_hostbridge_probe], ptr @pci_mmcfg_probes, i64 0, i64 %idxprom, !dbg !830
  %bus2 = getelementptr inbounds %struct.pci_mmcfg_hostbridge_probe, ptr %arrayidx, i32 0, i32 0, !dbg !831
  %3 = load i32, ptr %bus2, align 8, !dbg !831
  store i32 %3, ptr %bus, align 4, !dbg !832
  %4 = load i32, ptr %i, align 4, !dbg !833
  %idxprom3 = sext i32 %4 to i64, !dbg !834
  %arrayidx4 = getelementptr [5 x %struct.pci_mmcfg_hostbridge_probe], ptr @pci_mmcfg_probes, i64 0, i64 %idxprom3, !dbg !834
  %devfn5 = getelementptr inbounds %struct.pci_mmcfg_hostbridge_probe, ptr %arrayidx4, i32 0, i32 1, !dbg !835
  %5 = load i32, ptr %devfn5, align 4, !dbg !835
  store i32 %5, ptr %devfn, align 4, !dbg !836
  %6 = load ptr, ptr @raw_pci_ops, align 8, !dbg !837
  %read = getelementptr inbounds %struct.pci_raw_ops, ptr %6, i32 0, i32 0, !dbg !838
  %7 = load ptr, ptr %read, align 8, !dbg !838
  %8 = load i32, ptr %bus, align 4, !dbg !839
  %9 = load i32, ptr %devfn, align 4, !dbg !840
  %call = call i32 %7(i32 noundef 0, i32 noundef %8, i32 noundef %9, i32 noundef 0, i32 noundef 4, ptr noundef %l) #17, !dbg !837
  %10 = load i32, ptr %l, align 4, !dbg !841
  %and = and i32 %10, 65535, !dbg !842
  %conv6 = trunc i32 %and to i16, !dbg !841
  store i16 %conv6, ptr %vendor, align 2, !dbg !843
  %11 = load i32, ptr %l, align 4, !dbg !844
  %shr = lshr i32 %11, 16, !dbg !845
  %and7 = and i32 %shr, 65535, !dbg !846
  %conv8 = trunc i32 %and7 to i16, !dbg !847
  store i16 %conv8, ptr %device, align 2, !dbg !848
  store ptr null, ptr %name, align 8, !dbg !849
  %12 = load i32, ptr %i, align 4, !dbg !850
  %idxprom9 = sext i32 %12 to i64, !dbg !852
  %arrayidx10 = getelementptr [5 x %struct.pci_mmcfg_hostbridge_probe], ptr @pci_mmcfg_probes, i64 0, i64 %idxprom9, !dbg !852
  %vendor11 = getelementptr inbounds %struct.pci_mmcfg_hostbridge_probe, ptr %arrayidx10, i32 0, i32 2, !dbg !853
  %13 = load i32, ptr %vendor11, align 8, !dbg !853
  %14 = load i16, ptr %vendor, align 2, !dbg !854
  %conv12 = zext i16 %14 to i32, !dbg !854
  %cmp13 = icmp eq i32 %13, %conv12, !dbg !855
  br i1 %cmp13, label %land.lhs.true, label %if.end25, !dbg !856

land.lhs.true:                                    ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !dbg !857
  %idxprom15 = sext i32 %15 to i64, !dbg !858
  %arrayidx16 = getelementptr [5 x %struct.pci_mmcfg_hostbridge_probe], ptr @pci_mmcfg_probes, i64 0, i64 %idxprom15, !dbg !858
  %device17 = getelementptr inbounds %struct.pci_mmcfg_hostbridge_probe, ptr %arrayidx16, i32 0, i32 3, !dbg !859
  %16 = load i32, ptr %device17, align 4, !dbg !859
  %17 = load i16, ptr %device, align 2, !dbg !860
  %conv18 = zext i16 %17 to i32, !dbg !860
  %cmp19 = icmp eq i32 %16, %conv18, !dbg !861
  br i1 %cmp19, label %if.then21, label %if.end25, !dbg !862

if.then21:                                        ; preds = %land.lhs.true
  %18 = load i32, ptr %i, align 4, !dbg !863
  %idxprom22 = sext i32 %18 to i64, !dbg !864
  %arrayidx23 = getelementptr [5 x %struct.pci_mmcfg_hostbridge_probe], ptr @pci_mmcfg_probes, i64 0, i64 %idxprom22, !dbg !864
  %probe = getelementptr inbounds %struct.pci_mmcfg_hostbridge_probe, ptr %arrayidx23, i32 0, i32 4, !dbg !865
  %19 = load ptr, ptr %probe, align 8, !dbg !865
  %call24 = call ptr %19() #17, !dbg !864
  store ptr %call24, ptr %name, align 8, !dbg !866
  br label %if.end25, !dbg !867

if.end25:                                         ; preds = %if.then21, %land.lhs.true, %for.body
  %20 = load ptr, ptr %name, align 8, !dbg !868
  %tobool26 = icmp ne ptr %20, null, !dbg !868
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !870

if.then27:                                        ; preds = %if.end25
  br label %do.body, !dbg !871

do.body:                                          ; preds = %if.then27
  br label %do.cond, !dbg !873

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !873

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %name, align 8, !dbg !871
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, ptr noundef %21) #18, !dbg !871
  store i32 %call28, ptr %tmp, align 4, !dbg !873
  %22 = load i32, ptr %tmp, align 4, !dbg !871
  br label %if.end29, !dbg !875

if.end29:                                         ; preds = %do.end, %if.end25
  br label %for.inc, !dbg !876

for.inc:                                          ; preds = %if.end29
  %23 = load i32, ptr %i, align 4, !dbg !877
  %inc = add i32 %23, 1, !dbg !877
  store i32 %inc, ptr %i, align 4, !dbg !877
  br label %for.cond, !dbg !878, !llvm.loop !879

for.end:                                          ; preds = %for.cond
  call void @pci_mmcfg_check_end_bus_number() #18, !dbg !881
  %call30 = call i32 @list_empty(ptr noundef @pci_mmcfg_list) #17, !dbg !882
  %tobool31 = icmp ne i32 %call30, 0, !dbg !883
  %lnot = xor i1 %tobool31, true, !dbg !883
  %lnot.ext = zext i1 %lnot to i32, !dbg !883
  store i32 %lnot.ext, ptr %retval, align 4, !dbg !884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !884

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #16, !dbg !885
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !885
  call void @llvm.lifetime.end.p0(i64 2, ptr %device) #16, !dbg !885
  call void @llvm.lifetime.end.p0(i64 2, ptr %vendor) #16, !dbg !885
  call void @llvm.lifetime.end.p0(i64 4, ptr %devfn) #16, !dbg !885
  call void @llvm.lifetime.end.p0(i64 4, ptr %bus) #16, !dbg !885
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #16, !dbg !885
  %24 = load i32, ptr %retval, align 4, !dbg !885
  ret i32 %24, !dbg !885
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !886 dso_local i32 @acpi_table_parse(ptr noundef, ptr noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pci_parse_mcfg(ptr noundef %header) #0 section ".init.text" align 16 !dbg !895 {
entry:
  %retval = alloca i32, align 4
  %header.addr = alloca ptr, align 8
  %mcfg = alloca ptr, align 8
  %cfg_table = alloca ptr, align 8
  %cfg = alloca ptr, align 8
  %i = alloca i64, align 8
  %entries = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !897, metadata !DIExpression()), !dbg !903
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcfg) #16, !dbg !904
  call void @llvm.dbg.declare(metadata ptr %mcfg, metadata !898, metadata !DIExpression()), !dbg !905
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg_table) #16, !dbg !906
  call void @llvm.dbg.declare(metadata ptr %cfg_table, metadata !899, metadata !DIExpression()), !dbg !907
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #16, !dbg !906
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !900, metadata !DIExpression()), !dbg !908
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %i, metadata !901, metadata !DIExpression()), !dbg !910
  call void @llvm.lifetime.start.p0(i64 4, ptr %entries) #16, !dbg !911
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !902, metadata !DIExpression()), !dbg !912
  %0 = load ptr, ptr %header.addr, align 8, !dbg !913
  %tobool = icmp ne ptr %0, null, !dbg !913
  br i1 %tobool, label %if.end, label %if.then, !dbg !915

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !916

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %header.addr, align 8, !dbg !917
  store ptr %1, ptr %mcfg, align 8, !dbg !918
  call void @free_all_mmcfg() #18, !dbg !919
  store i32 0, ptr %entries, align 4, !dbg !920
  %2 = load ptr, ptr %header.addr, align 8, !dbg !921
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %2, i32 0, i32 1, !dbg !922
  %3 = load i32, ptr %length, align 1, !dbg !922
  %conv = zext i32 %3 to i64, !dbg !921
  %sub = sub i64 %conv, 44, !dbg !923
  store i64 %sub, ptr %i, align 8, !dbg !924
  br label %while.cond, !dbg !925

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i64, ptr %i, align 8, !dbg !926
  %cmp = icmp uge i64 %4, 16, !dbg !927
  br i1 %cmp, label %while.body, label %while.end, !dbg !925

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %entries, align 4, !dbg !928
  %inc = add i32 %5, 1, !dbg !928
  store i32 %inc, ptr %entries, align 4, !dbg !928
  %6 = load i64, ptr %i, align 8, !dbg !930
  %sub2 = sub i64 %6, 16, !dbg !930
  store i64 %sub2, ptr %i, align 8, !dbg !930
  br label %while.cond, !dbg !925, !llvm.loop !931

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr %entries, align 4, !dbg !933
  %cmp3 = icmp eq i32 %7, 0, !dbg !935
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !936

if.then5:                                         ; preds = %while.end
  br label %do.body, !dbg !937

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !940

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !940

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.15) #18, !dbg !937
  store i32 %call, ptr %tmp, align 4, !dbg !940
  %8 = load i32, ptr %tmp, align 4, !dbg !937
  store i32 -19, ptr %retval, align 4, !dbg !942
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !942

if.end6:                                          ; preds = %while.end
  %9 = load ptr, ptr %mcfg, align 8, !dbg !943
  %arrayidx = getelementptr %struct.acpi_table_mcfg, ptr %9, i64 1, !dbg !943
  store ptr %arrayidx, ptr %cfg_table, align 8, !dbg !944
  store i64 0, ptr %i, align 8, !dbg !945
  br label %for.cond, !dbg !947

for.cond:                                         ; preds = %for.inc, %if.end6
  %10 = load i64, ptr %i, align 8, !dbg !948
  %11 = load i32, ptr %entries, align 4, !dbg !950
  %conv7 = sext i32 %11 to i64, !dbg !950
  %cmp8 = icmp ult i64 %10, %conv7, !dbg !951
  br i1 %cmp8, label %for.body, label %for.end, !dbg !952

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %cfg_table, align 8, !dbg !953
  %13 = load i64, ptr %i, align 8, !dbg !955
  %arrayidx10 = getelementptr %struct.acpi_mcfg_allocation, ptr %12, i64 %13, !dbg !953
  store ptr %arrayidx10, ptr %cfg, align 8, !dbg !956
  %14 = load ptr, ptr %mcfg, align 8, !dbg !957
  %15 = load ptr, ptr %cfg, align 8, !dbg !959
  %call11 = call i32 @acpi_mcfg_check_entry(ptr noundef %14, ptr noundef %15) #18, !dbg !960
  %tobool12 = icmp ne i32 %call11, 0, !dbg !960
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !961

if.then13:                                        ; preds = %for.body
  call void @free_all_mmcfg() #18, !dbg !962
  store i32 -19, ptr %retval, align 4, !dbg !964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !964

if.end14:                                         ; preds = %for.body
  %16 = load ptr, ptr %cfg, align 8, !dbg !965
  %pci_segment = getelementptr inbounds %struct.acpi_mcfg_allocation, ptr %16, i32 0, i32 1, !dbg !967
  %17 = load i16, ptr %pci_segment, align 1, !dbg !967
  %conv15 = zext i16 %17 to i32, !dbg !965
  %18 = load ptr, ptr %cfg, align 8, !dbg !968
  %start_bus_number = getelementptr inbounds %struct.acpi_mcfg_allocation, ptr %18, i32 0, i32 2, !dbg !969
  %19 = load i8, ptr %start_bus_number, align 1, !dbg !969
  %conv16 = zext i8 %19 to i32, !dbg !968
  %20 = load ptr, ptr %cfg, align 8, !dbg !970
  %end_bus_number = getelementptr inbounds %struct.acpi_mcfg_allocation, ptr %20, i32 0, i32 3, !dbg !971
  %21 = load i8, ptr %end_bus_number, align 1, !dbg !971
  %conv17 = zext i8 %21 to i32, !dbg !970
  %22 = load ptr, ptr %cfg, align 8, !dbg !972
  %address = getelementptr inbounds %struct.acpi_mcfg_allocation, ptr %22, i32 0, i32 0, !dbg !973
  %23 = load i64, ptr %address, align 1, !dbg !973
  %call18 = call ptr @pci_mmconfig_add(i32 noundef %conv15, i32 noundef %conv16, i32 noundef %conv17, i64 noundef %23) #18, !dbg !974
  %cmp19 = icmp eq ptr %call18, null, !dbg !975
  br i1 %cmp19, label %if.then21, label %if.end27, !dbg !976

if.then21:                                        ; preds = %if.end14
  br label %do.body22, !dbg !977

do.body22:                                        ; preds = %if.then21
  br label %do.cond23, !dbg !980

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !980

do.end24:                                         ; preds = %do.cond23
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16) #18, !dbg !977
  store i32 %call26, ptr %tmp25, align 4, !dbg !980
  %24 = load i32, ptr %tmp25, align 4, !dbg !977
  call void @free_all_mmcfg() #18, !dbg !982
  store i32 -12, ptr %retval, align 4, !dbg !983
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !983

if.end27:                                         ; preds = %if.end14
  br label %for.inc, !dbg !984

for.inc:                                          ; preds = %if.end27
  %25 = load i64, ptr %i, align 8, !dbg !985
  %inc28 = add i64 %25, 1, !dbg !985
  store i64 %inc28, ptr %i, align 8, !dbg !985
  br label %for.cond, !dbg !986, !llvm.loop !987

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !989

cleanup:                                          ; preds = %for.end, %do.end24, %if.then13, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %entries) #16, !dbg !990
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16, !dbg !990
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #16, !dbg !990
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg_table) #16, !dbg !990
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcfg) #16, !dbg !990
  %26 = load i32, ptr %retval, align 4, !dbg !990
  ret i32 %26, !dbg !990
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @__pci_mmcfg_init(i32 noundef %early) #0 section ".init.text" align 16 !dbg !991 {
entry:
  %early.addr = alloca i32, align 4
  %cfg = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  store i32 %early, ptr %early.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %early.addr, metadata !995, metadata !DIExpression()), !dbg !1005
  %0 = load i32, ptr %early.addr, align 4, !dbg !1006
  call void @pci_mmcfg_reject_broken(i32 noundef %0) #18, !dbg !1007
  %call = call i32 @list_empty(ptr noundef @pci_mmcfg_list) #17, !dbg !1008
  %tobool = icmp ne i32 %call, 0, !dbg !1008
  br i1 %tobool, label %if.then, label %if.end, !dbg !1010

if.then:                                          ; preds = %entry
  br label %if.end14, !dbg !1011

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @pcibios_last_bus, align 4, !dbg !1012
  %cmp = icmp slt i32 %1, 0, !dbg !1013
  br i1 %cmp, label %if.then1, label %if.end10, !dbg !1014

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #16, !dbg !1015
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !996, metadata !DIExpression()), !dbg !1016
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !999, metadata !DIExpression()), !dbg !1017
  %2 = load ptr, ptr @pci_mmcfg_list, align 8, !dbg !1017
  store ptr %2, ptr %__mptr, align 8, !dbg !1017
  %3 = load ptr, ptr %__mptr, align 8, !dbg !1017
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !1017
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1017
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !1018
  %4 = load ptr, ptr %tmp, align 8, !dbg !1017
  store ptr %4, ptr %cfg, align 8, !dbg !1018
  br label %for.cond, !dbg !1018

for.cond:                                         ; preds = %for.inc, %if.then1
  %5 = load ptr, ptr %cfg, align 8, !dbg !1019
  %list = getelementptr inbounds %struct.pci_mmcfg_region, ptr %5, i32 0, i32 0, !dbg !1019
  %cmp2 = icmp eq ptr %list, @pci_mmcfg_list, !dbg !1019
  %lnot = xor i1 %cmp2, true, !dbg !1019
  br i1 %lnot, label %for.body, label %for.end, !dbg !1018

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %cfg, align 8, !dbg !1020
  %segment = getelementptr inbounds %struct.pci_mmcfg_region, ptr %6, i32 0, i32 4, !dbg !1023
  %7 = load i16, ptr %segment, align 8, !dbg !1023
  %tobool3 = icmp ne i16 %7, 0, !dbg !1020
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1024

if.then4:                                         ; preds = %for.body
  br label %for.end, !dbg !1025

if.end5:                                          ; preds = %for.body
  %8 = load ptr, ptr %cfg, align 8, !dbg !1026
  %end_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %8, i32 0, i32 6, !dbg !1027
  %9 = load i8, ptr %end_bus, align 1, !dbg !1027
  %conv = zext i8 %9 to i32, !dbg !1026
  store i32 %conv, ptr @pcibios_last_bus, align 4, !dbg !1028
  br label %for.inc, !dbg !1029

for.inc:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #16, !dbg !1030
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !1002, metadata !DIExpression()), !dbg !1030
  %10 = load ptr, ptr %cfg, align 8, !dbg !1030
  %list7 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %10, i32 0, i32 0, !dbg !1030
  %next = getelementptr inbounds %struct.list_head, ptr %list7, i32 0, i32 0, !dbg !1030
  %11 = load ptr, ptr %next, align 8, !dbg !1030
  store ptr %11, ptr %__mptr6, align 8, !dbg !1030
  %12 = load ptr, ptr %__mptr6, align 8, !dbg !1030
  %add.ptr9 = getelementptr i8, ptr %12, i64 0, !dbg !1030
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !1030
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #16, !dbg !1019
  %13 = load ptr, ptr %tmp8, align 8, !dbg !1030
  store ptr %13, ptr %cfg, align 8, !dbg !1019
  br label %for.cond, !dbg !1019, !llvm.loop !1031

for.end:                                          ; preds = %if.then4, %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #16, !dbg !1033
  br label %if.end10, !dbg !1034

if.end10:                                         ; preds = %for.end, %if.end
  %call11 = call i32 @pci_mmcfg_arch_init() #18, !dbg !1035
  %tobool12 = icmp ne i32 %call11, 0, !dbg !1035
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !1037

if.then13:                                        ; preds = %if.end10
  %14 = load i32, ptr @pci_probe, align 4, !dbg !1038
  %and = and i32 %14, -16, !dbg !1039
  %or = or i32 %and, 8, !dbg !1040
  store i32 %or, ptr @pci_probe, align 4, !dbg !1041
  br label %if.end14, !dbg !1042

if.else:                                          ; preds = %if.end10
  call void @free_all_mmcfg() #18, !dbg !1043
  store i8 1, ptr @pci_mmcfg_arch_init_failed, align 1, !dbg !1045
  br label %if.end14

if.end14:                                         ; preds = %if.then, %if.else, %if.then13
  ret void, !dbg !1046
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @pci_mmcfg_late_init() #0 section ".init.text" align 16 !dbg !1047 {
entry:
  %0 = load i32, ptr @pci_probe, align 4, !dbg !1048
  %and = and i32 %0, 8, !dbg !1050
  %cmp = icmp eq i32 %and, 0, !dbg !1051
  br i1 %cmp, label %if.then, label %if.end, !dbg !1052

if.then:                                          ; preds = %entry
  br label %if.end7, !dbg !1053

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @known_bridge, align 4, !dbg !1054
  %tobool = icmp ne i32 %1, 0, !dbg !1054
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !1056

if.then1:                                         ; preds = %if.end
  br label %if.end7, !dbg !1057

if.end2:                                          ; preds = %if.end
  %2 = load i32, ptr @pci_probe, align 4, !dbg !1058
  %and3 = and i32 %2, 15, !dbg !1060
  %and4 = and i32 %and3, -9, !dbg !1061
  %tobool5 = icmp ne i32 %and4, 0, !dbg !1061
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1062

if.then6:                                         ; preds = %if.end2
  %call = call i32 @acpi_table_parse(ptr noundef @.str.1, ptr noundef @pci_parse_mcfg) #17, !dbg !1063
  call void @__pci_mmcfg_init(i32 noundef 0) #18, !dbg !1065
  br label %if.end7, !dbg !1066

if.end7:                                          ; preds = %if.then, %if.then1, %if.then6, %if.end2
  ret void, !dbg !1067
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_mmconfig_shared__296_779_pci_mmcfg_late_insert_resources7() #0 section ".init.text" align 16 !dbg !1068 {
entry:
  %call = call i32 @pci_mmcfg_late_insert_resources() #18, !dbg !1069
  ret i32 %call, !dbg !1069
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pci_mmcfg_late_insert_resources() #0 section ".init.text" align 16 !dbg !1070 {
entry:
  %retval = alloca i32, align 4
  %cfg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #16, !dbg !1079
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !1072, metadata !DIExpression()), !dbg !1080
  store i8 1, ptr @pci_mmcfg_running_state, align 1, !dbg !1081
  %0 = load i32, ptr @pci_probe, align 4, !dbg !1082
  %and = and i32 %0, 8, !dbg !1084
  %cmp = icmp eq i32 %and, 0, !dbg !1085
  br i1 %cmp, label %if.then, label %if.end, !dbg !1086

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1087

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !1088
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1073, metadata !DIExpression()), !dbg !1088
  %1 = load ptr, ptr @pci_mmcfg_list, align 8, !dbg !1088
  store ptr %1, ptr %__mptr, align 8, !dbg !1088
  %2 = load ptr, ptr %__mptr, align 8, !dbg !1088
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !1088
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1088
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !1089
  %3 = load ptr, ptr %tmp, align 8, !dbg !1088
  store ptr %3, ptr %cfg, align 8, !dbg !1089
  br label %for.cond, !dbg !1089

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %cfg, align 8, !dbg !1090
  %list = getelementptr inbounds %struct.pci_mmcfg_region, ptr %4, i32 0, i32 0, !dbg !1090
  %cmp1 = icmp eq ptr %list, @pci_mmcfg_list, !dbg !1090
  %lnot = xor i1 %cmp1, true, !dbg !1090
  br i1 %lnot, label %for.body, label %for.end, !dbg !1089

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cfg, align 8, !dbg !1091
  %res = getelementptr inbounds %struct.pci_mmcfg_region, ptr %5, i32 0, i32 1, !dbg !1093
  %parent = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 5, !dbg !1094
  %6 = load ptr, ptr %parent, align 8, !dbg !1094
  %tobool = icmp ne ptr %6, null, !dbg !1091
  br i1 %tobool, label %if.end4, label %if.then2, !dbg !1095

if.then2:                                         ; preds = %for.body
  %7 = load ptr, ptr %cfg, align 8, !dbg !1096
  %res3 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %7, i32 0, i32 1, !dbg !1097
  %call = call i32 @insert_resource(ptr noundef @iomem_resource, ptr noundef %res3) #17, !dbg !1098
  br label %if.end4, !dbg !1098

if.end4:                                          ; preds = %if.then2, %for.body
  br label %for.inc, !dbg !1094

for.inc:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #16, !dbg !1099
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !1076, metadata !DIExpression()), !dbg !1099
  %8 = load ptr, ptr %cfg, align 8, !dbg !1099
  %list6 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %8, i32 0, i32 0, !dbg !1099
  %next = getelementptr inbounds %struct.list_head, ptr %list6, i32 0, i32 0, !dbg !1099
  %9 = load ptr, ptr %next, align 8, !dbg !1099
  store ptr %9, ptr %__mptr5, align 8, !dbg !1099
  %10 = load ptr, ptr %__mptr5, align 8, !dbg !1099
  %add.ptr8 = getelementptr i8, ptr %10, i64 0, !dbg !1099
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !1099
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #16, !dbg !1090
  %11 = load ptr, ptr %tmp7, align 8, !dbg !1099
  store ptr %11, ptr %cfg, align 8, !dbg !1090
  br label %for.cond, !dbg !1090, !llvm.loop !1100

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1102

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #16, !dbg !1103
  %12 = load i32, ptr %retval, align 4, !dbg !1103
  ret i32 %12, !dbg !1103
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_mmconfig_insert(ptr noundef %dev, i16 noundef zeroext %seg, i8 noundef zeroext %start, i8 noundef zeroext %end, i64 noundef %addr) #3 align 16 !dbg !1104 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %seg.addr = alloca i16, align 2
  %start.addr = alloca i8, align 1
  %end.addr = alloca i8, align 1
  %addr.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %cfg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5469, metadata !DIExpression()), !dbg !5477
  store i16 %seg, ptr %seg.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !5470, metadata !DIExpression()), !dbg !5478
  store i8 %start, ptr %start.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5471, metadata !DIExpression()), !dbg !5479
  store i8 %end, ptr %end.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !5472, metadata !DIExpression()), !dbg !5480
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5473, metadata !DIExpression()), !dbg !5481
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !5482
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5474, metadata !DIExpression()), !dbg !5483
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !5484
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5475, metadata !DIExpression()), !dbg !5485
  store ptr null, ptr %tmp, align 8, !dbg !5485
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #16, !dbg !5486
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !5476, metadata !DIExpression()), !dbg !5487
  %0 = load i32, ptr @pci_probe, align 4, !dbg !5488
  %and = and i32 %0, 8, !dbg !5490
  %tobool = icmp ne i32 %and, 0, !dbg !5490
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5491

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr @pci_mmcfg_arch_init_failed, align 1, !dbg !5492, !range !5493, !noundef !1753
  %tobool1 = trunc i8 %1 to i1, !dbg !5492
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5494

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, ptr %retval, align 4, !dbg !5495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5495

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8, ptr %start.addr, align 1, !dbg !5496
  %conv = zext i8 %2 to i32, !dbg !5496
  %3 = load i8, ptr %end.addr, align 1, !dbg !5498
  %conv2 = zext i8 %3 to i32, !dbg !5498
  %cmp = icmp sgt i32 %conv, %conv2, !dbg !5499
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !5500

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5501

if.end5:                                          ; preds = %if.end
  call void @mutex_lock(ptr noundef @pci_mmcfg_lock) #17, !dbg !5502
  %4 = load i16, ptr %seg.addr, align 2, !dbg !5503
  %conv6 = zext i16 %4 to i32, !dbg !5503
  %5 = load i8, ptr %start.addr, align 1, !dbg !5504
  %conv7 = zext i8 %5 to i32, !dbg !5504
  %call = call ptr @pci_mmconfig_lookup(i32 noundef %conv6, i32 noundef %conv7) #17, !dbg !5505
  store ptr %call, ptr %cfg, align 8, !dbg !5506
  %6 = load ptr, ptr %cfg, align 8, !dbg !5507
  %tobool8 = icmp ne ptr %6, null, !dbg !5507
  br i1 %tobool8, label %if.then9, label %if.end20, !dbg !5509

if.then9:                                         ; preds = %if.end5
  %7 = load ptr, ptr %cfg, align 8, !dbg !5510
  %end_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %7, i32 0, i32 6, !dbg !5513
  %8 = load i8, ptr %end_bus, align 1, !dbg !5513
  %conv10 = zext i8 %8 to i32, !dbg !5510
  %9 = load i8, ptr %end.addr, align 1, !dbg !5514
  %conv11 = zext i8 %9 to i32, !dbg !5514
  %cmp12 = icmp slt i32 %conv10, %conv11, !dbg !5515
  br i1 %cmp12, label %if.then14, label %if.end19, !dbg !5516

if.then14:                                        ; preds = %if.then9
  br label %do.body, !dbg !5517

do.body:                                          ; preds = %if.then14
  br label %do.cond, !dbg !5519

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5519

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5517
  %11 = load ptr, ptr %cfg, align 8, !dbg !5517
  %segment = getelementptr inbounds %struct.pci_mmcfg_region, ptr %11, i32 0, i32 4, !dbg !5517
  %12 = load i16, ptr %segment, align 8, !dbg !5517
  %conv15 = zext i16 %12 to i32, !dbg !5517
  %13 = load ptr, ptr %cfg, align 8, !dbg !5517
  %start_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %13, i32 0, i32 5, !dbg !5517
  %14 = load i8, ptr %start_bus, align 2, !dbg !5517
  %conv16 = zext i8 %14 to i32, !dbg !5517
  %15 = load ptr, ptr %cfg, align 8, !dbg !5517
  %end_bus17 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %15, i32 0, i32 6, !dbg !5517
  %16 = load i8, ptr %end_bus17, align 1, !dbg !5517
  %conv18 = zext i8 %16 to i32, !dbg !5517
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef @.str.2, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %conv18) #18, !dbg !5517
  br label %if.end19, !dbg !5521

if.end19:                                         ; preds = %do.end, %if.then9
  call void @mutex_unlock(ptr noundef @pci_mmcfg_lock) #17, !dbg !5522
  store i32 -17, ptr %retval, align 4, !dbg !5523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5523

if.end20:                                         ; preds = %if.end5
  %17 = load i64, ptr %addr.addr, align 8, !dbg !5524
  %tobool21 = icmp ne i64 %17, 0, !dbg !5524
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !5526

if.then22:                                        ; preds = %if.end20
  call void @mutex_unlock(ptr noundef @pci_mmcfg_lock) #17, !dbg !5527
  store i32 -22, ptr %retval, align 4, !dbg !5529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5529

if.end23:                                         ; preds = %if.end20
  store i32 -16, ptr %rc, align 4, !dbg !5530
  %18 = load i16, ptr %seg.addr, align 2, !dbg !5531
  %conv24 = zext i16 %18 to i32, !dbg !5531
  %19 = load i8, ptr %start.addr, align 1, !dbg !5532
  %conv25 = zext i8 %19 to i32, !dbg !5532
  %20 = load i8, ptr %end.addr, align 1, !dbg !5533
  %conv26 = zext i8 %20 to i32, !dbg !5533
  %21 = load i64, ptr %addr.addr, align 8, !dbg !5534
  %call27 = call ptr @pci_mmconfig_alloc(i32 noundef %conv24, i32 noundef %conv25, i32 noundef %conv26, i64 noundef %21) #17, !dbg !5535
  store ptr %call27, ptr %cfg, align 8, !dbg !5536
  %22 = load ptr, ptr %cfg, align 8, !dbg !5537
  %cmp28 = icmp eq ptr %22, null, !dbg !5539
  br i1 %cmp28, label %if.then30, label %if.else, !dbg !5540

if.then30:                                        ; preds = %if.end23
  br label %do.body31, !dbg !5541

do.body31:                                        ; preds = %if.then30
  br label %do.cond32, !dbg !5544

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !5544

do.end33:                                         ; preds = %do.cond32
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !5541
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef @.str.3) #18, !dbg !5541
  store i32 -12, ptr %rc, align 4, !dbg !5546
  br label %if.end67, !dbg !5547

if.else:                                          ; preds = %if.end23
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !5548
  %25 = load ptr, ptr %cfg, align 8, !dbg !5550
  %call34 = call zeroext i1 @pci_mmcfg_check_reserved(ptr noundef %24, ptr noundef %25, i32 noundef 0) #17, !dbg !5551
  br i1 %call34, label %if.else39, label %if.then35, !dbg !5552

if.then35:                                        ; preds = %if.else
  br label %do.body36, !dbg !5553

do.body36:                                        ; preds = %if.then35
  br label %do.cond37, !dbg !5556

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !5556

do.end38:                                         ; preds = %do.cond37
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !5553
  %27 = load ptr, ptr %cfg, align 8, !dbg !5553
  %res = getelementptr inbounds %struct.pci_mmcfg_region, ptr %27, i32 0, i32 1, !dbg !5553
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef @.str.4, ptr noundef %res) #18, !dbg !5553
  br label %if.end66, !dbg !5558

if.else39:                                        ; preds = %if.else
  %28 = load i8, ptr @pci_mmcfg_running_state, align 1, !dbg !5559, !range !5493, !noundef !1753
  %tobool40 = trunc i8 %28 to i1, !dbg !5559
  br i1 %tobool40, label %if.then41, label %if.end44, !dbg !5562

if.then41:                                        ; preds = %if.else39
  %29 = load ptr, ptr %cfg, align 8, !dbg !5563
  %res42 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %29, i32 0, i32 1, !dbg !5564
  %call43 = call ptr @insert_resource_conflict(ptr noundef @iomem_resource, ptr noundef %res42) #17, !dbg !5565
  store ptr %call43, ptr %tmp, align 8, !dbg !5566
  br label %if.end44, !dbg !5567

if.end44:                                         ; preds = %if.then41, %if.else39
  %30 = load ptr, ptr %tmp, align 8, !dbg !5568
  %tobool45 = icmp ne ptr %30, null, !dbg !5568
  br i1 %tobool45, label %if.then46, label %if.else51, !dbg !5570

if.then46:                                        ; preds = %if.end44
  br label %do.body47, !dbg !5571

do.body47:                                        ; preds = %if.then46
  br label %do.cond48, !dbg !5574

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !5574

do.end49:                                         ; preds = %do.cond48
  %31 = load ptr, ptr %dev.addr, align 8, !dbg !5571
  %32 = load ptr, ptr %cfg, align 8, !dbg !5571
  %res50 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %32, i32 0, i32 1, !dbg !5571
  %33 = load ptr, ptr %tmp, align 8, !dbg !5571
  %name = getelementptr inbounds %struct.resource, ptr %33, i32 0, i32 2, !dbg !5571
  %34 = load ptr, ptr %name, align 8, !dbg !5571
  %35 = load ptr, ptr %tmp, align 8, !dbg !5571
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef @.str.5, ptr noundef %res50, ptr noundef %34, ptr noundef %35) #18, !dbg !5571
  br label %if.end65, !dbg !5576

if.else51:                                        ; preds = %if.end44
  %36 = load ptr, ptr %cfg, align 8, !dbg !5577
  %call52 = call i32 @pci_mmcfg_arch_map(ptr noundef %36) #17, !dbg !5579
  %tobool53 = icmp ne i32 %call52, 0, !dbg !5579
  br i1 %tobool53, label %if.then54, label %if.else59, !dbg !5580

if.then54:                                        ; preds = %if.else51
  br label %do.body55, !dbg !5581

do.body55:                                        ; preds = %if.then54
  br label %do.cond56, !dbg !5584

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !5584

do.end57:                                         ; preds = %do.cond56
  %37 = load ptr, ptr %dev.addr, align 8, !dbg !5581
  %38 = load ptr, ptr %cfg, align 8, !dbg !5581
  %res58 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %38, i32 0, i32 1, !dbg !5581
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef @.str.6, ptr noundef %res58) #18, !dbg !5581
  br label %if.end64, !dbg !5586

if.else59:                                        ; preds = %if.else51
  %39 = load ptr, ptr %cfg, align 8, !dbg !5587
  call void @list_add_sorted(ptr noundef %39) #17, !dbg !5589
  br label %do.body60, !dbg !5590

do.body60:                                        ; preds = %if.else59
  br label %do.cond61, !dbg !5592

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5592

do.end62:                                         ; preds = %do.cond61
  %40 = load ptr, ptr %dev.addr, align 8, !dbg !5590
  %41 = load ptr, ptr %cfg, align 8, !dbg !5590
  %res63 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %41, i32 0, i32 1, !dbg !5590
  %42 = load i64, ptr %addr.addr, align 8, !dbg !5590
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef @.str.7, ptr noundef %res63, i64 noundef %42) #18, !dbg !5590
  store ptr null, ptr %cfg, align 8, !dbg !5594
  store i32 0, ptr %rc, align 4, !dbg !5595
  br label %if.end64

if.end64:                                         ; preds = %do.end62, %do.end57
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %do.end49
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %do.end38
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %do.end33
  %43 = load ptr, ptr %cfg, align 8, !dbg !5596
  %tobool68 = icmp ne ptr %43, null, !dbg !5596
  br i1 %tobool68, label %if.then69, label %if.end76, !dbg !5598

if.then69:                                        ; preds = %if.end67
  %44 = load ptr, ptr %cfg, align 8, !dbg !5599
  %res70 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %44, i32 0, i32 1, !dbg !5602
  %parent = getelementptr inbounds %struct.resource, ptr %res70, i32 0, i32 5, !dbg !5603
  %45 = load ptr, ptr %parent, align 8, !dbg !5603
  %tobool71 = icmp ne ptr %45, null, !dbg !5599
  br i1 %tobool71, label %if.then72, label %if.end75, !dbg !5604

if.then72:                                        ; preds = %if.then69
  %46 = load ptr, ptr %cfg, align 8, !dbg !5605
  %res73 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %46, i32 0, i32 1, !dbg !5606
  %call74 = call i32 @release_resource(ptr noundef %res73) #17, !dbg !5607
  br label %if.end75, !dbg !5607

if.end75:                                         ; preds = %if.then72, %if.then69
  %47 = load ptr, ptr %cfg, align 8, !dbg !5608
  call void @kfree(ptr noundef %47) #17, !dbg !5609
  br label %if.end76, !dbg !5610

if.end76:                                         ; preds = %if.end75, %if.end67
  call void @mutex_unlock(ptr noundef @pci_mmcfg_lock) #17, !dbg !5611
  %48 = load i32, ptr %rc, align 4, !dbg !5612
  store i32 %48, ptr %retval, align 4, !dbg !5613
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5613

cleanup:                                          ; preds = %if.end76, %if.then22, %if.end19, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #16, !dbg !5614
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !5614
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !5614
  %49 = load i32, ptr %retval, align 4, !dbg !5614
  ret i32 %49, !dbg !5614
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5615 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5619 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_mmcfg_check_reserved(ptr noundef %dev, ptr noundef %cfg, i32 noundef %early) #6 section ".ref.text" align 16 !dbg !5620 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  %cfg.addr = alloca ptr, align 8
  %early.addr = alloca i32, align 4
  %conflict = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5624, metadata !DIExpression()), !dbg !5628
  store ptr %cfg, ptr %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cfg.addr, metadata !5625, metadata !DIExpression()), !dbg !5629
  store i32 %early, ptr %early.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %early.addr, metadata !5626, metadata !DIExpression()), !dbg !5630
  call void @llvm.lifetime.start.p0(i64 8, ptr %conflict) #16, !dbg !5631
  call void @llvm.dbg.declare(metadata ptr %conflict, metadata !5627, metadata !DIExpression()), !dbg !5632
  %0 = load i32, ptr %early.addr, align 4, !dbg !5633
  %tobool = icmp ne i32 %0, 0, !dbg !5633
  br i1 %tobool, label %if.then, label %if.end4, !dbg !5635

if.then:                                          ; preds = %entry
  %call = call i32 @dmi_get_bios_year() #17, !dbg !5636
  %cmp = icmp slt i32 %call, 2016, !dbg !5639
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5640

land.lhs.true:                                    ; preds = %if.then
  %1 = load ptr, ptr @raw_pci_ops, align 8, !dbg !5641
  %tobool1 = icmp ne ptr %1, null, !dbg !5641
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5642

if.then2:                                         ; preds = %land.lhs.true
  %2 = load ptr, ptr %cfg.addr, align 8, !dbg !5643
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5644
  %call3 = call zeroext i1 @is_mmconf_reserved(ptr noundef @e820__mapped_all, ptr noundef %2, ptr noundef %3, ptr noundef @.str.20) #17, !dbg !5645
  store i1 %call3, ptr %retval, align 1, !dbg !5646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5646

if.end:                                           ; preds = %land.lhs.true, %if.then
  store i1 true, ptr %retval, align 1, !dbg !5647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5647

if.end4:                                          ; preds = %entry
  %4 = load i32, ptr @acpi_disabled, align 4, !dbg !5648
  %tobool5 = icmp ne i32 %4, 0, !dbg !5648
  br i1 %tobool5, label %if.end39, label %if.then6, !dbg !5650

if.then6:                                         ; preds = %if.end4
  %5 = load ptr, ptr %cfg.addr, align 8, !dbg !5651
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5654
  %call7 = call zeroext i1 @is_mmconf_reserved(ptr noundef @is_acpi_reserved, ptr noundef %5, ptr noundef %6, ptr noundef @.str.21) #17, !dbg !5655
  br i1 %call7, label %if.then8, label %if.end9, !dbg !5656

if.then8:                                         ; preds = %if.then6
  store i1 true, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

if.end9:                                          ; preds = %if.then6
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5658
  %tobool10 = icmp ne ptr %7, null, !dbg !5658
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !5660

if.then11:                                        ; preds = %if.end9
  br label %do.body, !dbg !5661

do.body:                                          ; preds = %if.then11
  br label %do.cond, !dbg !5663

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5663

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5661
  %9 = load ptr, ptr %cfg.addr, align 8, !dbg !5661
  %res = getelementptr inbounds %struct.pci_mmcfg_region, ptr %9, i32 0, i32 1, !dbg !5661
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef @.str.22, ptr noundef %res) #18, !dbg !5661
  br label %if.end17, !dbg !5665

if.else:                                          ; preds = %if.end9
  br label %do.body12, !dbg !5666

do.body12:                                        ; preds = %if.else
  br label %do.cond13, !dbg !5668

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5668

do.end14:                                         ; preds = %do.cond13
  %10 = load ptr, ptr %cfg.addr, align 8, !dbg !5666
  %res15 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %10, i32 0, i32 1, !dbg !5666
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str.23, ptr noundef %res15) #18, !dbg !5666
  store i32 %call16, ptr %tmp, align 4, !dbg !5668
  %11 = load i32, ptr %tmp, align 4, !dbg !5666
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %do.end
  %12 = load ptr, ptr %cfg.addr, align 8, !dbg !5670
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5672
  %call18 = call zeroext i1 @is_mmconf_reserved(ptr noundef @is_efi_mmio, ptr noundef %12, ptr noundef %13, ptr noundef @.str.24) #17, !dbg !5673
  br i1 %call18, label %if.then19, label %if.end38, !dbg !5674

if.then19:                                        ; preds = %if.end17
  %14 = load ptr, ptr %cfg.addr, align 8, !dbg !5675
  %res20 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %14, i32 0, i32 1, !dbg !5677
  %call21 = call ptr @insert_resource_conflict(ptr noundef @iomem_resource, ptr noundef %res20) #17, !dbg !5678
  store ptr %call21, ptr %conflict, align 8, !dbg !5679
  %15 = load ptr, ptr %conflict, align 8, !dbg !5680
  %tobool22 = icmp ne ptr %15, null, !dbg !5680
  br i1 %tobool22, label %if.then23, label %if.else30, !dbg !5682

if.then23:                                        ; preds = %if.then19
  br label %do.body24, !dbg !5683

do.body24:                                        ; preds = %if.then23
  br label %do.cond25, !dbg !5685

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !5685

do.end26:                                         ; preds = %do.cond25
  %16 = load ptr, ptr %cfg.addr, align 8, !dbg !5683
  %res28 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %16, i32 0, i32 1, !dbg !5683
  %17 = load ptr, ptr %conflict, align 8, !dbg !5683
  %name = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 2, !dbg !5683
  %18 = load ptr, ptr %name, align 8, !dbg !5683
  %19 = load ptr, ptr %conflict, align 8, !dbg !5683
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef @.str.25, ptr noundef %res28, ptr noundef %18, ptr noundef %19) #18, !dbg !5683
  store i32 %call29, ptr %tmp27, align 4, !dbg !5685
  %20 = load i32, ptr %tmp27, align 4, !dbg !5683
  br label %if.end37, !dbg !5687

if.else30:                                        ; preds = %if.then19
  br label %do.body31, !dbg !5688

do.body31:                                        ; preds = %if.else30
  br label %do.cond32, !dbg !5690

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !5690

do.end33:                                         ; preds = %do.cond32
  %21 = load ptr, ptr %cfg.addr, align 8, !dbg !5688
  %res35 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %21, i32 0, i32 1, !dbg !5688
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef @.str.26, ptr noundef %res35) #18, !dbg !5688
  store i32 %call36, ptr %tmp34, align 4, !dbg !5690
  %22 = load i32, ptr %tmp34, align 4, !dbg !5688
  br label %if.end37

if.end37:                                         ; preds = %do.end33, %do.end26
  store i1 true, ptr %retval, align 1, !dbg !5692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5692

if.end38:                                         ; preds = %if.end17
  br label %if.end39, !dbg !5693

if.end39:                                         ; preds = %if.end38, %if.end4
  %23 = load i8, ptr @pci_mmcfg_running_state, align 1, !dbg !5694, !range !5493, !noundef !1753
  %tobool40 = trunc i8 %23 to i1, !dbg !5694
  store i1 %tobool40, ptr %retval, align 1, !dbg !5695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5695

cleanup:                                          ; preds = %if.end39, %if.end37, %if.then8, %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %conflict) #16, !dbg !5696
  %24 = load i1, ptr %retval, align 1, !dbg !5696
  ret i1 %24, !dbg !5696
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5697 dso_local ptr @insert_resource_conflict(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5700 dso_local i32 @pci_mmcfg_arch_map(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5703 dso_local i32 @release_resource(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5706 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_mmconfig_delete(i16 noundef zeroext %seg, i8 noundef zeroext %start, i8 noundef zeroext %end) #3 align 16 !dbg !5709 {
entry:
  %retval = alloca i32, align 4
  %seg.addr = alloca i16, align 2
  %start.addr = alloca i8, align 1
  %end.addr = alloca i8, align 1
  %cfg = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr18 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  %tmp24 = alloca ptr, align 8
  store i16 %seg, ptr %seg.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !5713, metadata !DIExpression()), !dbg !5723
  store i8 %start, ptr %start.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5714, metadata !DIExpression()), !dbg !5724
  store i8 %end, ptr %end.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !5715, metadata !DIExpression()), !dbg !5725
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #16, !dbg !5726
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !5716, metadata !DIExpression()), !dbg !5727
  call void @mutex_lock(ptr noundef @pci_mmcfg_lock) #17, !dbg !5728
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5729
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5717, metadata !DIExpression()), !dbg !5729
  br label %do.body, !dbg !5730

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5732

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5732

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr @pci_mmcfg_list, align 8, !dbg !5730
  store ptr %0, ptr %tmp, align 8, !dbg !5732
  %1 = load ptr, ptr %tmp, align 8, !dbg !5730
  store ptr %1, ptr %__mptr, align 8, !dbg !5729
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5729
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5729
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !5729
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5734
  %3 = load ptr, ptr %tmp1, align 8, !dbg !5729
  store ptr %3, ptr %cfg, align 8, !dbg !5734
  br label %for.cond, !dbg !5734

for.cond:                                         ; preds = %do.end21, %do.end
  %4 = load ptr, ptr %cfg, align 8, !dbg !5735
  %list = getelementptr inbounds %struct.pci_mmcfg_region, ptr %4, i32 0, i32 0, !dbg !5735
  %cmp = icmp ne ptr %list, @pci_mmcfg_list, !dbg !5735
  br i1 %cmp, label %for.body, label %for.end, !dbg !5734

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cfg, align 8, !dbg !5736
  %segment = getelementptr inbounds %struct.pci_mmcfg_region, ptr %5, i32 0, i32 4, !dbg !5738
  %6 = load i16, ptr %segment, align 8, !dbg !5738
  %conv = zext i16 %6 to i32, !dbg !5736
  %7 = load i16, ptr %seg.addr, align 2, !dbg !5739
  %conv2 = zext i16 %7 to i32, !dbg !5739
  %cmp3 = icmp eq i32 %conv, %conv2, !dbg !5740
  br i1 %cmp3, label %land.lhs.true, label %if.end17, !dbg !5741

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %cfg, align 8, !dbg !5742
  %start_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %8, i32 0, i32 5, !dbg !5743
  %9 = load i8, ptr %start_bus, align 2, !dbg !5743
  %conv5 = zext i8 %9 to i32, !dbg !5742
  %10 = load i8, ptr %start.addr, align 1, !dbg !5744
  %conv6 = zext i8 %10 to i32, !dbg !5744
  %cmp7 = icmp eq i32 %conv5, %conv6, !dbg !5745
  br i1 %cmp7, label %land.lhs.true9, label %if.end17, !dbg !5746

land.lhs.true9:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %cfg, align 8, !dbg !5747
  %end_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %11, i32 0, i32 6, !dbg !5748
  %12 = load i8, ptr %end_bus, align 1, !dbg !5748
  %conv10 = zext i8 %12 to i32, !dbg !5747
  %13 = load i8, ptr %end.addr, align 1, !dbg !5749
  %conv11 = zext i8 %13 to i32, !dbg !5749
  %cmp12 = icmp eq i32 %conv10, %conv11, !dbg !5750
  br i1 %cmp12, label %if.then, label %if.end17, !dbg !5751

if.then:                                          ; preds = %land.lhs.true9
  %14 = load ptr, ptr %cfg, align 8, !dbg !5752
  %list14 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %14, i32 0, i32 0, !dbg !5754
  call void @list_del_rcu(ptr noundef %list14) #17, !dbg !5755
  call void @synchronize_rcu() #17, !dbg !5756
  %15 = load ptr, ptr %cfg, align 8, !dbg !5757
  call void @pci_mmcfg_arch_unmap(ptr noundef %15) #17, !dbg !5758
  %16 = load ptr, ptr %cfg, align 8, !dbg !5759
  %res = getelementptr inbounds %struct.pci_mmcfg_region, ptr %16, i32 0, i32 1, !dbg !5761
  %parent = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 5, !dbg !5762
  %17 = load ptr, ptr %parent, align 8, !dbg !5762
  %tobool = icmp ne ptr %17, null, !dbg !5759
  br i1 %tobool, label %if.then15, label %if.end, !dbg !5763

if.then15:                                        ; preds = %if.then
  %18 = load ptr, ptr %cfg, align 8, !dbg !5764
  %res16 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %18, i32 0, i32 1, !dbg !5765
  %call = call i32 @release_resource(ptr noundef %res16) #17, !dbg !5766
  br label %if.end, !dbg !5766

if.end:                                           ; preds = %if.then15, %if.then
  call void @mutex_unlock(ptr noundef @pci_mmcfg_lock) #17, !dbg !5767
  %19 = load ptr, ptr %cfg, align 8, !dbg !5768
  call void @kfree(ptr noundef %19) #17, !dbg !5769
  store i32 0, ptr %retval, align 4, !dbg !5770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5770

if.end17:                                         ; preds = %land.lhs.true9, %land.lhs.true, %for.body
  br label %for.inc, !dbg !5749

for.inc:                                          ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #16, !dbg !5771
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !5720, metadata !DIExpression()), !dbg !5771
  br label %do.body19, !dbg !5772

do.body19:                                        ; preds = %for.inc
  br label %do.cond20, !dbg !5774

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !5774

do.end21:                                         ; preds = %do.cond20
  %20 = load ptr, ptr %cfg, align 8, !dbg !5772
  %list23 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %20, i32 0, i32 0, !dbg !5772
  %next = getelementptr inbounds %struct.list_head, ptr %list23, i32 0, i32 0, !dbg !5772
  %21 = load volatile ptr, ptr %next, align 8, !dbg !5772
  store ptr %21, ptr %tmp22, align 8, !dbg !5774
  %22 = load ptr, ptr %tmp22, align 8, !dbg !5772
  store ptr %22, ptr %__mptr18, align 8, !dbg !5771
  %23 = load ptr, ptr %__mptr18, align 8, !dbg !5771
  %add.ptr25 = getelementptr i8, ptr %23, i64 0, !dbg !5771
  store ptr %add.ptr25, ptr %tmp24, align 8, !dbg !5771
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #16, !dbg !5735
  %24 = load ptr, ptr %tmp24, align 8, !dbg !5771
  store ptr %24, ptr %cfg, align 8, !dbg !5735
  br label %for.cond, !dbg !5735, !llvm.loop !5776

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @pci_mmcfg_lock) #17, !dbg !5778
  store i32 -2, ptr %retval, align 4, !dbg !5779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5779

cleanup:                                          ; preds = %for.end, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #16, !dbg !5780
  %25 = load i32, ptr %retval, align 4, !dbg !5780
  ret i32 %25, !dbg !5780
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_rcu(ptr noundef %entry1) #7 align 16 !dbg !5781 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5786, metadata !DIExpression()), !dbg !5787
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5788
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !5789
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5790
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5791
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5792
  ret void, !dbg !5793
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5794 dso_local void @synchronize_rcu() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5796 dso_local void @pci_mmcfg_arch_unmap(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5797 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5801, metadata !DIExpression()), !dbg !5803
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5802, metadata !DIExpression()), !dbg !5804
  %0 = load i64, ptr %size.addr, align 8, !dbg !5805
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5806
  %or = or i32 %1, 256, !dbg !5807
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !5808
  ret ptr %call, !dbg !5809
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5810 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5814 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5816, metadata !DIExpression()), !dbg !5821
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5817, metadata !DIExpression()), !dbg !5822
  %0 = load i64, ptr %size.addr, align 8, !dbg !5823
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5824
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5825

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5826
  %tobool = icmp ne i64 %2, 0, !dbg !5826
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5827

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5828
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5818, metadata !DIExpression()), !dbg !5829
  %3 = load i64, ptr %size.addr, align 8, !dbg !5830
  %cmp = icmp ugt i64 %3, 8192, !dbg !5832
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5833

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5834
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5835
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !5836
  store ptr %call, ptr %retval, align 8, !dbg !5837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5837

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5838
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5838
  store i32 %call2, ptr %index, align 4, !dbg !5839
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5840
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5841
  %9 = ptrtoint ptr %8 to i64, !dbg !5841
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5842
  %idxprom = zext i32 %call3 to i64, !dbg !5843
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5843
  %10 = load i32, ptr %index, align 4, !dbg !5844
  %idxprom4 = zext i32 %10 to i64, !dbg !5843
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5843
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5843
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5845
  %13 = load i64, ptr %size.addr, align 8, !dbg !5846
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5847
  store ptr %call6, ptr %retval, align 8, !dbg !5848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5848

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5849
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5850
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5851
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !5852
  store ptr %call8, ptr %retval, align 8, !dbg !5853
  br label %return, !dbg !5853

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5854
  ret ptr %16, !dbg !5854
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5855 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !5856 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5860, metadata !DIExpression()), !dbg !5862
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5861, metadata !DIExpression()), !dbg !5863
  %0 = load i64, ptr %size.addr, align 8, !dbg !5864
  %tobool = icmp ne i64 %0, 0, !dbg !5864
  br i1 %tobool, label %if.end, label %if.then, !dbg !5866

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5867
  br label %return, !dbg !5867

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5868
  %cmp = icmp ule i64 %1, 8, !dbg !5870
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5871

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5872
  br label %return, !dbg !5872

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5873
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5875
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5876

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5877
  %cmp4 = icmp ule i64 %3, 96, !dbg !5878
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5879

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5880
  br label %return, !dbg !5880

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5881
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5883
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5884

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5885
  %cmp9 = icmp ule i64 %5, 192, !dbg !5886
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5887

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5888
  br label %return, !dbg !5888

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5889
  %cmp12 = icmp ule i64 %6, 8, !dbg !5891
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5892

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5893
  br label %return, !dbg !5893

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5894
  %cmp15 = icmp ule i64 %7, 16, !dbg !5896
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5897

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5898
  br label %return, !dbg !5898

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5899
  %cmp18 = icmp ule i64 %8, 32, !dbg !5901
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5902

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5903
  br label %return, !dbg !5903

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5904
  %cmp21 = icmp ule i64 %9, 64, !dbg !5906
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5907

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5908
  br label %return, !dbg !5908

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5909
  %cmp24 = icmp ule i64 %10, 128, !dbg !5911
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5912

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5913
  br label %return, !dbg !5913

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5914
  %cmp27 = icmp ule i64 %11, 256, !dbg !5916
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5917

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5918
  br label %return, !dbg !5918

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5919
  %cmp30 = icmp ule i64 %12, 512, !dbg !5921
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5922

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5923
  br label %return, !dbg !5923

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5924
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5926
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5927

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5928
  br label %return, !dbg !5928

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5929
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5931
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5932

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5933
  br label %return, !dbg !5933

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5934
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5936
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5937

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5938
  br label %return, !dbg !5938

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5939
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5941
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5942

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5943
  br label %return, !dbg !5943

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5944
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5946
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5947

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5948
  br label %return, !dbg !5948

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5949
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5951
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5952

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5953
  br label %return, !dbg !5953

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5954
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5956
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5957

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5958
  br label %return, !dbg !5958

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5959
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5961
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5962

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5963
  br label %return, !dbg !5963

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5964
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5966
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5967

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5968
  br label %return, !dbg !5968

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5969
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5971
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5972

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5973
  br label %return, !dbg !5973

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5974
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5976
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5977

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5978
  br label %return, !dbg !5978

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5979
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5981
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5982

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5983
  br label %return, !dbg !5983

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5984, !range !5493, !noundef !1753
  %tobool69 = trunc i8 %25 to i1, !dbg !5984
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5986

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5987

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_125() #21, !dbg !5988, !srcloc !5991
  unreachable, !dbg !5988

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5992

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5993

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5994

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5996

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5994

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, i32 480, i32 0, i64 12) #16, !dbg !5998, !srcloc !6000
  br label %do.end75, !dbg !5998

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5994

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6001
  br label %return, !dbg !6001

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6002
  ret i32 %26, !dbg !6002
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6003 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !6009 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6013, metadata !DIExpression()), !dbg !6015
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6014, metadata !DIExpression()), !dbg !6016
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6017
  %and = and i32 %0, 17, !dbg !6017
  %cmp = icmp eq i32 %and, 0, !dbg !6017
  %lnot = xor i1 %cmp, true, !dbg !6017
  %lnot1 = xor i1 %lnot, true, !dbg !6017
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6017
  %conv = sext i32 %lnot.ext to i64, !dbg !6017
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6017
  %tobool = icmp ne i64 %expval, 0, !dbg !6017
  br i1 %tobool, label %if.then, label %if.end, !dbg !6019

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6020
  br label %return, !dbg !6020

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6021
  %and2 = and i32 %1, 1, !dbg !6023
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6023
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6024

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6025
  br label %return, !dbg !6025

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6026
  br label %return, !dbg !6026

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6028
  ret i32 %2, !dbg !6028
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6029 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6030 dso_local void @__compiletime_assert_125() #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) #7 align 16 !dbg !6031 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6035, metadata !DIExpression()), !dbg !6037
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6036, metadata !DIExpression()), !dbg !6038
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6039
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6040
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6041
  %2 = load ptr, ptr %prev, align 8, !dbg !6041
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6042
  call void @__list_add_rcu(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !6043
  ret void, !dbg !6044
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add_rcu(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !6045 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6049, metadata !DIExpression()), !dbg !6054
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6050, metadata !DIExpression()), !dbg !6055
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6051, metadata !DIExpression()), !dbg !6056
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6057
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6059
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6060
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !6061
  br i1 %call, label %if.end, label %if.then, !dbg !6062

if.then:                                          ; preds = %entry
  br label %return, !dbg !6063

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %next.addr, align 8, !dbg !6064
  %4 = load ptr, ptr %new.addr, align 8, !dbg !6065
  %next1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !6066
  store ptr %3, ptr %next1, align 8, !dbg !6067
  %5 = load ptr, ptr %prev.addr, align 8, !dbg !6068
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6069
  %prev2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1, !dbg !6070
  store ptr %5, ptr %prev2, align 8, !dbg !6071
  br label %do.body, !dbg !6072

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !6073
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !6052, metadata !DIExpression()), !dbg !6073
  %7 = load ptr, ptr %new.addr, align 8, !dbg !6073
  %8 = ptrtoint ptr %7 to i64, !dbg !6073
  store i64 %8, ptr %_r_a_p__v, align 8, !dbg !6073
  br i1 false, label %land.lhs.true, label %if.else, !dbg !6074

land.lhs.true:                                    ; preds = %do.body
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !6074
  %cmp = icmp eq i64 %9, 0, !dbg !6074
  br i1 %cmp, label %if.then3, label %if.else, !dbg !6073

if.then3:                                         ; preds = %land.lhs.true
  br label %do.body4, !dbg !6074

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !6076

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !6078

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !6078

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !6076

do.body6:                                         ; preds = %do.end
  %10 = load i64, ptr %_r_a_p__v, align 8, !dbg !6080
  %11 = inttoptr i64 %10 to ptr, !dbg !6080
  %12 = load ptr, ptr %prev.addr, align 8, !dbg !6080
  %next7 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !6080
  store volatile ptr %11, ptr %next7, align 8, !dbg !6080
  br label %do.cond8, !dbg !6080

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !6080

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !6076

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !6076

do.end11:                                         ; preds = %do.cond10
  br label %if.end34, !dbg !6076

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body12, !dbg !6074

do.body12:                                        ; preds = %if.else
  br label %do.body13, !dbg !6082

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !6084

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6084

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !6082

do.body16:                                        ; preds = %do.end15
  br label %do.body17, !dbg !6086

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !6088

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6088

do.end19:                                         ; preds = %do.cond18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6086, !srcloc !6090
  br label %do.body20, !dbg !6086

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !6091

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !6093

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !6093

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !6091

do.body24:                                        ; preds = %do.end23
  %13 = load i64, ptr %_r_a_p__v, align 8, !dbg !6095
  %14 = inttoptr i64 %13 to ptr, !dbg !6095
  %15 = load ptr, ptr %prev.addr, align 8, !dbg !6095
  %next25 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !6095
  store volatile ptr %14, ptr %next25, align 8, !dbg !6095
  br label %do.cond26, !dbg !6095

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !6095

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !6091

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !6091

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !6086

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !6086

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !6082

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !6082

do.end33:                                         ; preds = %do.cond32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !6072
  br label %do.end36, !dbg !6073

do.end36:                                         ; preds = %if.end34
  %16 = load ptr, ptr %new.addr, align 8, !dbg !6097
  %17 = load ptr, ptr %next.addr, align 8, !dbg !6098
  %prev37 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1, !dbg !6099
  store ptr %16, ptr %prev37, align 8, !dbg !6100
  br label %return, !dbg !6101

return:                                           ; preds = %do.end36, %if.then
  ret void, !dbg !6101
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !6102 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6107, metadata !DIExpression()), !dbg !6110
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6108, metadata !DIExpression()), !dbg !6111
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6109, metadata !DIExpression()), !dbg !6112
  ret i1 true, !dbg !6113
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @free_all_mmcfg() #0 section ".init.text" align 16 !dbg !6114 {
entry:
  %cfg = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #16, !dbg !6126
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !6116, metadata !DIExpression()), !dbg !6127
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !6126
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6117, metadata !DIExpression()), !dbg !6128
  call void @pci_mmcfg_arch_free() #18, !dbg !6129
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6130
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6118, metadata !DIExpression()), !dbg !6130
  %0 = load ptr, ptr @pci_mmcfg_list, align 8, !dbg !6130
  store ptr %0, ptr %__mptr, align 8, !dbg !6130
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6130
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6130
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !6130
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6131
  %2 = load ptr, ptr %tmp1, align 8, !dbg !6130
  store ptr %2, ptr %cfg, align 8, !dbg !6131
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #16, !dbg !6132
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !6121, metadata !DIExpression()), !dbg !6132
  %3 = load ptr, ptr %cfg, align 8, !dbg !6132
  %list = getelementptr inbounds %struct.pci_mmcfg_region, ptr %3, i32 0, i32 0, !dbg !6132
  %next = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !6132
  %4 = load ptr, ptr %next, align 8, !dbg !6132
  store ptr %4, ptr %__mptr2, align 8, !dbg !6132
  %5 = load ptr, ptr %__mptr2, align 8, !dbg !6132
  %add.ptr4 = getelementptr i8, ptr %5, i64 0, !dbg !6132
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !6132
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #16, !dbg !6131
  %6 = load ptr, ptr %tmp3, align 8, !dbg !6132
  store ptr %6, ptr %tmp, align 8, !dbg !6131
  br label %for.cond, !dbg !6131

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %cfg, align 8, !dbg !6133
  %list5 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %7, i32 0, i32 0, !dbg !6133
  %cmp = icmp eq ptr %list5, @pci_mmcfg_list, !dbg !6133
  %lnot = xor i1 %cmp, true, !dbg !6133
  br i1 %lnot, label %for.body, label %for.end, !dbg !6131

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %cfg, align 8, !dbg !6134
  call void @pci_mmconfig_remove(ptr noundef %8) #18, !dbg !6135
  br label %for.inc, !dbg !6135

for.inc:                                          ; preds = %for.body
  %9 = load ptr, ptr %tmp, align 8, !dbg !6133
  store ptr %9, ptr %cfg, align 8, !dbg !6133
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #16, !dbg !6136
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !6123, metadata !DIExpression()), !dbg !6136
  %10 = load ptr, ptr %tmp, align 8, !dbg !6136
  %list7 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %10, i32 0, i32 0, !dbg !6136
  %next8 = getelementptr inbounds %struct.list_head, ptr %list7, i32 0, i32 0, !dbg !6136
  %11 = load ptr, ptr %next8, align 8, !dbg !6136
  store ptr %11, ptr %__mptr6, align 8, !dbg !6136
  %12 = load ptr, ptr %__mptr6, align 8, !dbg !6136
  %add.ptr10 = getelementptr i8, ptr %12, i64 0, !dbg !6136
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !6136
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #16, !dbg !6133
  %13 = load ptr, ptr %tmp9, align 8, !dbg !6136
  store ptr %13, ptr %tmp, align 8, !dbg !6133
  br label %for.cond, !dbg !6133, !llvm.loop !6137

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !6139
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #16, !dbg !6139
  ret void, !dbg !6139
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @pci_mmcfg_check_end_bus_number() #0 section ".init.text" align 16 !dbg !6140 {
entry:
  %cfg = alloca ptr, align 8
  %cfgx = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr10 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %__mptr27 = alloca ptr, align 8
  %tmp30 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #16, !dbg !6153
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !6142, metadata !DIExpression()), !dbg !6154
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfgx) #16, !dbg !6153
  call void @llvm.dbg.declare(metadata ptr %cfgx, metadata !6143, metadata !DIExpression()), !dbg !6155
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6156
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6144, metadata !DIExpression()), !dbg !6156
  %0 = load ptr, ptr @pci_mmcfg_list, align 8, !dbg !6156
  store ptr %0, ptr %__mptr, align 8, !dbg !6156
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6156
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6156
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6156
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6157
  %2 = load ptr, ptr %tmp, align 8, !dbg !6156
  store ptr %2, ptr %cfg, align 8, !dbg !6157
  br label %for.cond, !dbg !6157

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %cfg, align 8, !dbg !6158
  %list = getelementptr inbounds %struct.pci_mmcfg_region, ptr %3, i32 0, i32 0, !dbg !6158
  %cmp = icmp eq ptr %list, @pci_mmcfg_list, !dbg !6158
  %lnot = xor i1 %cmp, true, !dbg !6158
  br i1 %lnot, label %for.body, label %for.end, !dbg !6157

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cfg, align 8, !dbg !6159
  %end_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %4, i32 0, i32 6, !dbg !6161
  %5 = load i8, ptr %end_bus, align 1, !dbg !6161
  %conv = zext i8 %5 to i32, !dbg !6159
  %6 = load ptr, ptr %cfg, align 8, !dbg !6162
  %start_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %6, i32 0, i32 5, !dbg !6163
  %7 = load i8, ptr %start_bus, align 2, !dbg !6163
  %conv1 = zext i8 %7 to i32, !dbg !6162
  %cmp2 = icmp slt i32 %conv, %conv1, !dbg !6164
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6165

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %cfg, align 8, !dbg !6166
  %end_bus4 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %8, i32 0, i32 6, !dbg !6167
  store i8 -1, ptr %end_bus4, align 1, !dbg !6168
  br label %if.end, !dbg !6166

if.end:                                           ; preds = %if.then, %for.body
  %9 = load ptr, ptr %cfg, align 8, !dbg !6169
  %list5 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %9, i32 0, i32 0, !dbg !6171
  %next = getelementptr inbounds %struct.list_head, ptr %list5, i32 0, i32 0, !dbg !6172
  %10 = load ptr, ptr %next, align 8, !dbg !6172
  %cmp6 = icmp eq ptr %10, @pci_mmcfg_list, !dbg !6173
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !6174

if.then8:                                         ; preds = %if.end
  br label %for.end, !dbg !6175

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr10) #16, !dbg !6176
  call void @llvm.dbg.declare(metadata ptr %__mptr10, metadata !6147, metadata !DIExpression()), !dbg !6176
  %11 = load ptr, ptr %cfg, align 8, !dbg !6176
  %list11 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %11, i32 0, i32 0, !dbg !6176
  %next12 = getelementptr inbounds %struct.list_head, ptr %list11, i32 0, i32 0, !dbg !6176
  %12 = load ptr, ptr %next12, align 8, !dbg !6176
  store ptr %12, ptr %__mptr10, align 8, !dbg !6176
  %13 = load ptr, ptr %__mptr10, align 8, !dbg !6176
  %add.ptr14 = getelementptr i8, ptr %13, i64 0, !dbg !6176
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !6176
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr10) #16, !dbg !6177
  %14 = load ptr, ptr %tmp13, align 8, !dbg !6176
  store ptr %14, ptr %cfgx, align 8, !dbg !6178
  %15 = load ptr, ptr %cfg, align 8, !dbg !6179
  %end_bus15 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %15, i32 0, i32 6, !dbg !6181
  %16 = load i8, ptr %end_bus15, align 1, !dbg !6181
  %conv16 = zext i8 %16 to i32, !dbg !6179
  %17 = load ptr, ptr %cfgx, align 8, !dbg !6182
  %start_bus17 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %17, i32 0, i32 5, !dbg !6183
  %18 = load i8, ptr %start_bus17, align 2, !dbg !6183
  %conv18 = zext i8 %18 to i32, !dbg !6182
  %cmp19 = icmp sge i32 %conv16, %conv18, !dbg !6184
  br i1 %cmp19, label %if.then21, label %if.end26, !dbg !6185

if.then21:                                        ; preds = %if.end9
  %19 = load ptr, ptr %cfgx, align 8, !dbg !6186
  %start_bus22 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %19, i32 0, i32 5, !dbg !6187
  %20 = load i8, ptr %start_bus22, align 2, !dbg !6187
  %conv23 = zext i8 %20 to i32, !dbg !6186
  %sub = sub i32 %conv23, 1, !dbg !6188
  %conv24 = trunc i32 %sub to i8, !dbg !6186
  %21 = load ptr, ptr %cfg, align 8, !dbg !6189
  %end_bus25 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %21, i32 0, i32 6, !dbg !6190
  store i8 %conv24, ptr %end_bus25, align 1, !dbg !6191
  br label %if.end26, !dbg !6189

if.end26:                                         ; preds = %if.then21, %if.end9
  br label %for.inc, !dbg !6192

for.inc:                                          ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr27) #16, !dbg !6193
  call void @llvm.dbg.declare(metadata ptr %__mptr27, metadata !6151, metadata !DIExpression()), !dbg !6193
  %22 = load ptr, ptr %cfg, align 8, !dbg !6193
  %list28 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %22, i32 0, i32 0, !dbg !6193
  %next29 = getelementptr inbounds %struct.list_head, ptr %list28, i32 0, i32 0, !dbg !6193
  %23 = load ptr, ptr %next29, align 8, !dbg !6193
  store ptr %23, ptr %__mptr27, align 8, !dbg !6193
  %24 = load ptr, ptr %__mptr27, align 8, !dbg !6193
  %add.ptr31 = getelementptr i8, ptr %24, i64 0, !dbg !6193
  store ptr %add.ptr31, ptr %tmp30, align 8, !dbg !6193
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr27) #16, !dbg !6158
  %25 = load ptr, ptr %tmp30, align 8, !dbg !6193
  store ptr %25, ptr %cfg, align 8, !dbg !6158
  br label %for.cond, !dbg !6158, !llvm.loop !6194

for.end:                                          ; preds = %if.then8, %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfgx) #16, !dbg !6196
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #16, !dbg !6196
  ret void, !dbg !6196
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #7 align 16 !dbg !6197 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6203, metadata !DIExpression()), !dbg !6204
  br label %do.body, !dbg !6205

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6207

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6205
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6205
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6205
  store ptr %1, ptr %tmp, align 8, !dbg !6207
  %2 = load ptr, ptr %tmp, align 8, !dbg !6205
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6209
  %cmp = icmp eq ptr %2, %3, !dbg !6210
  %conv = zext i1 %cmp to i32, !dbg !6210
  ret i32 %conv, !dbg !6211
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6212 dso_local void @pci_mmcfg_arch_free() #5 section ".init.text"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @pci_mmconfig_remove(ptr noundef %cfg) #0 section ".init.text" align 16 !dbg !6213 {
entry:
  %cfg.addr = alloca ptr, align 8
  store ptr %cfg, ptr %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cfg.addr, metadata !6215, metadata !DIExpression()), !dbg !6216
  %0 = load ptr, ptr %cfg.addr, align 8, !dbg !6217
  %res = getelementptr inbounds %struct.pci_mmcfg_region, ptr %0, i32 0, i32 1, !dbg !6219
  %parent = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 5, !dbg !6220
  %1 = load ptr, ptr %parent, align 8, !dbg !6220
  %tobool = icmp ne ptr %1, null, !dbg !6217
  br i1 %tobool, label %if.then, label %if.end, !dbg !6221

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cfg.addr, align 8, !dbg !6222
  %res1 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %2, i32 0, i32 1, !dbg !6223
  %call = call i32 @release_resource(ptr noundef %res1) #17, !dbg !6224
  br label %if.end, !dbg !6224

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %cfg.addr, align 8, !dbg !6225
  %list = getelementptr inbounds %struct.pci_mmcfg_region, ptr %3, i32 0, i32 0, !dbg !6226
  call void @list_del(ptr noundef %list) #17, !dbg !6227
  %4 = load ptr, ptr %cfg.addr, align 8, !dbg !6228
  call void @kfree(ptr noundef %4) #17, !dbg !6229
  ret void, !dbg !6230
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #7 align 16 !dbg !6231 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6233, metadata !DIExpression()), !dbg !6234
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6235
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !6236
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6237
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6238
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6239
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6240
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6241
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6242
  ret void, !dbg !6243
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #7 align 16 !dbg !6244 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6246, metadata !DIExpression()), !dbg !6247
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6248
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !6250
  br i1 %call, label %if.end, label %if.then, !dbg !6251

if.then:                                          ; preds = %entry
  br label %return, !dbg !6252

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6253
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6254
  %2 = load ptr, ptr %prev, align 8, !dbg !6254
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6255
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6256
  %4 = load ptr, ptr %next, align 8, !dbg !6256
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !6257
  br label %return, !dbg !6258

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6258
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #7 align 16 !dbg !6259 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6263, metadata !DIExpression()), !dbg !6264
  ret i1 true, !dbg !6265
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !6266 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6268, metadata !DIExpression()), !dbg !6270
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6269, metadata !DIExpression()), !dbg !6271
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6272
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6273
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6274
  store ptr %0, ptr %prev1, align 8, !dbg !6275
  br label %do.body, !dbg !6276

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6277

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6279

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6277

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6281
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6281
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6281
  store volatile ptr %2, ptr %next4, align 8, !dbg !6281
  br label %do.end5, !dbg !6281

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6277

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6283
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @pci_mmcfg_e7520() #0 section ".init.text" align 16 !dbg !6284 {
entry:
  %retval = alloca ptr, align 8
  %win = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %win) #16, !dbg !6287
  call void @llvm.dbg.declare(metadata ptr %win, metadata !6286, metadata !DIExpression()), !dbg !6288
  %0 = load ptr, ptr @raw_pci_ops, align 8, !dbg !6289
  %read = getelementptr inbounds %struct.pci_raw_ops, ptr %0, i32 0, i32 0, !dbg !6290
  %1 = load ptr, ptr %read, align 8, !dbg !6290
  %call = call i32 %1(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 206, i32 noundef 2, ptr noundef %win) #17, !dbg !6289
  %2 = load i32, ptr %win, align 4, !dbg !6291
  %and = and i32 %2, 61440, !dbg !6292
  store i32 %and, ptr %win, align 4, !dbg !6293
  %3 = load i32, ptr %win, align 4, !dbg !6294
  %cmp = icmp eq i32 %3, 0, !dbg !6296
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6297

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, ptr %win, align 4, !dbg !6298
  %cmp1 = icmp eq i32 %4, 61440, !dbg !6299
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6300

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !6301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6301

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, ptr %win, align 4, !dbg !6302
  %shl = shl i32 %5, 16, !dbg !6304
  %conv = zext i32 %shl to i64, !dbg !6302
  %call2 = call ptr @pci_mmconfig_add(i32 noundef 0, i32 noundef 0, i32 noundef 255, i64 noundef %conv) #18, !dbg !6305
  %cmp3 = icmp eq ptr %call2, null, !dbg !6306
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !6307

if.then5:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !6308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6308

if.end6:                                          ; preds = %if.end
  store ptr @.str.11, ptr %retval, align 8, !dbg !6309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6309

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %win) #16, !dbg !6310
  %6 = load ptr, ptr %retval, align 8, !dbg !6310
  ret ptr %6, !dbg !6310
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @pci_mmcfg_intel_945() #0 section ".init.text" align 16 !dbg !6311 {
entry:
  %retval = alloca ptr, align 8
  %pciexbar = alloca i32, align 4
  %mask = alloca i32, align 4
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pciexbar) #16, !dbg !6316
  call void @llvm.dbg.declare(metadata ptr %pciexbar, metadata !6313, metadata !DIExpression()), !dbg !6317
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #16, !dbg !6316
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6314, metadata !DIExpression()), !dbg !6318
  store i32 0, ptr %mask, align 4, !dbg !6318
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #16, !dbg !6316
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6315, metadata !DIExpression()), !dbg !6319
  store i32 0, ptr %len, align 4, !dbg !6319
  %0 = load ptr, ptr @raw_pci_ops, align 8, !dbg !6320
  %read = getelementptr inbounds %struct.pci_raw_ops, ptr %0, i32 0, i32 0, !dbg !6321
  %1 = load ptr, ptr %read, align 8, !dbg !6321
  %call = call i32 %1(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 72, i32 noundef 4, ptr noundef %pciexbar) #17, !dbg !6320
  %2 = load i32, ptr %pciexbar, align 4, !dbg !6322
  %and = and i32 %2, 1, !dbg !6324
  %tobool = icmp ne i32 %and, 0, !dbg !6324
  br i1 %tobool, label %if.end, label %if.then, !dbg !6325

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6326

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %pciexbar, align 4, !dbg !6327
  %shr = lshr i32 %3, 1, !dbg !6328
  %and1 = and i32 %shr, 3, !dbg !6329
  switch i32 %and1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ], !dbg !6330

sw.bb:                                            ; preds = %if.end
  store i32 -268435456, ptr %mask, align 4, !dbg !6331
  store i32 268435456, ptr %len, align 4, !dbg !6333
  br label %sw.epilog, !dbg !6334

sw.bb2:                                           ; preds = %if.end
  store i32 -134217728, ptr %mask, align 4, !dbg !6335
  store i32 134217728, ptr %len, align 4, !dbg !6336
  br label %sw.epilog, !dbg !6337

sw.bb3:                                           ; preds = %if.end
  store i32 -67108864, ptr %mask, align 4, !dbg !6338
  store i32 67108864, ptr %len, align 4, !dbg !6339
  br label %sw.epilog, !dbg !6340

sw.default:                                       ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !6341
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6341

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb
  %4 = load i32, ptr %pciexbar, align 4, !dbg !6342
  %5 = load i32, ptr %mask, align 4, !dbg !6344
  %and4 = and i32 %4, %5, !dbg !6345
  %and5 = and i32 %and4, 268435455, !dbg !6346
  %tobool6 = icmp ne i32 %and5, 0, !dbg !6346
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6347

if.then7:                                         ; preds = %sw.epilog
  store ptr null, ptr %retval, align 8, !dbg !6348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6348

if.end8:                                          ; preds = %sw.epilog
  %6 = load i32, ptr %pciexbar, align 4, !dbg !6349
  %7 = load i32, ptr %mask, align 4, !dbg !6351
  %and9 = and i32 %6, %7, !dbg !6352
  %cmp = icmp uge i32 %and9, -268435456, !dbg !6353
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !6354

if.then10:                                        ; preds = %if.end8
  store ptr null, ptr %retval, align 8, !dbg !6355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6355

if.end11:                                         ; preds = %if.end8
  %8 = load i32, ptr %len, align 4, !dbg !6356
  %shr12 = lshr i32 %8, 20, !dbg !6358
  %sub = sub i32 %shr12, 1, !dbg !6359
  %9 = load i32, ptr %pciexbar, align 4, !dbg !6360
  %10 = load i32, ptr %mask, align 4, !dbg !6361
  %and13 = and i32 %9, %10, !dbg !6362
  %conv = zext i32 %and13 to i64, !dbg !6360
  %call14 = call ptr @pci_mmconfig_add(i32 noundef 0, i32 noundef 0, i32 noundef %sub, i64 noundef %conv) #18, !dbg !6363
  %cmp15 = icmp eq ptr %call14, null, !dbg !6364
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !6365

if.then17:                                        ; preds = %if.end11
  store ptr null, ptr %retval, align 8, !dbg !6366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6366

if.end18:                                         ; preds = %if.end11
  store ptr @.str.12, ptr %retval, align 8, !dbg !6367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6367

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then10, %if.then7, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #16, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #16, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 4, ptr %pciexbar) #16, !dbg !6368
  %11 = load ptr, ptr %retval, align 8, !dbg !6368
  ret ptr %11, !dbg !6368
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @pci_mmcfg_amd_fam10h() #0 section ".init.text" align 16 !dbg !6369 {
entry:
  %retval = alloca ptr, align 8
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %address = alloca i32, align 4
  %base = alloca i64, align 8
  %msr = alloca i64, align 8
  %i = alloca i32, align 4
  %segnbits = alloca i32, align 4
  %busnbits = alloca i32, align 4
  %end_bus = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__err = alloca i32, align 4
  %__val = alloca i64, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %low) #16, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %low, metadata !6371, metadata !DIExpression()), !dbg !6385
  call void @llvm.lifetime.start.p0(i64 4, ptr %high) #16, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %high, metadata !6372, metadata !DIExpression()), !dbg !6386
  call void @llvm.lifetime.start.p0(i64 4, ptr %address) #16, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %address, metadata !6373, metadata !DIExpression()), !dbg !6387
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #16, !dbg !6388
  call void @llvm.dbg.declare(metadata ptr %base, metadata !6374, metadata !DIExpression()), !dbg !6389
  call void @llvm.lifetime.start.p0(i64 8, ptr %msr) #16, !dbg !6388
  call void @llvm.dbg.declare(metadata ptr %msr, metadata !6375, metadata !DIExpression()), !dbg !6390
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6391
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6376, metadata !DIExpression()), !dbg !6392
  call void @llvm.lifetime.start.p0(i64 4, ptr %segnbits) #16, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %segnbits, metadata !6377, metadata !DIExpression()), !dbg !6394
  store i32 0, ptr %segnbits, align 4, !dbg !6394
  call void @llvm.lifetime.start.p0(i64 4, ptr %busnbits) #16, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %busnbits, metadata !6378, metadata !DIExpression()), !dbg !6395
  call void @llvm.lifetime.start.p0(i64 4, ptr %end_bus) #16, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %end_bus, metadata !6379, metadata !DIExpression()), !dbg !6396
  %0 = load i32, ptr @pci_probe, align 4, !dbg !6397
  %and = and i32 %0, 131072, !dbg !6399
  %tobool = icmp ne i32 %and, 0, !dbg !6399
  br i1 %tobool, label %if.end, label %if.then, !dbg !6400

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6401

if.end:                                           ; preds = %entry
  store i32 -1073676200, ptr %address, align 4, !dbg !6402
  call void @llvm.lifetime.start.p0(i64 4, ptr %__err) #16, !dbg !6403
  call void @llvm.dbg.declare(metadata ptr %__err, metadata !6380, metadata !DIExpression()), !dbg !6403
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #16, !dbg !6403
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !6383, metadata !DIExpression()), !dbg !6403
  %1 = load i32, ptr %address, align 4, !dbg !6403
  %call = call i64 @native_read_msr_safe(i32 noundef %1, ptr noundef %__err) #17, !dbg !6403
  store i64 %call, ptr %__val, align 8, !dbg !6403
  %2 = load i64, ptr %__val, align 8, !dbg !6403
  %conv = trunc i64 %2 to i32, !dbg !6403
  store i32 %conv, ptr %low, align 4, !dbg !6403
  %3 = load i64, ptr %__val, align 8, !dbg !6403
  %shr = lshr i64 %3, 32, !dbg !6403
  %conv1 = trunc i64 %shr to i32, !dbg !6403
  store i32 %conv1, ptr %high, align 4, !dbg !6403
  %4 = load i32, ptr %__err, align 4, !dbg !6403
  store i32 %4, ptr %tmp, align 4, !dbg !6403
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #16, !dbg !6404
  call void @llvm.lifetime.end.p0(i64 4, ptr %__err) #16, !dbg !6404
  %5 = load i32, ptr %tmp, align 4, !dbg !6403
  %tobool2 = icmp ne i32 %5, 0, !dbg !6404
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6405

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !6406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6406

if.end4:                                          ; preds = %if.end
  %6 = load i32, ptr %high, align 4, !dbg !6407
  %conv5 = zext i32 %6 to i64, !dbg !6407
  store i64 %conv5, ptr %msr, align 8, !dbg !6408
  %7 = load i64, ptr %msr, align 8, !dbg !6409
  %shl = shl i64 %7, 32, !dbg !6409
  store i64 %shl, ptr %msr, align 8, !dbg !6409
  %8 = load i32, ptr %low, align 4, !dbg !6410
  %conv6 = zext i32 %8 to i64, !dbg !6410
  %9 = load i64, ptr %msr, align 8, !dbg !6411
  %or = or i64 %9, %conv6, !dbg !6411
  store i64 %or, ptr %msr, align 8, !dbg !6411
  %10 = load i64, ptr %msr, align 8, !dbg !6412
  %and7 = and i64 %10, 1, !dbg !6414
  %tobool8 = icmp ne i64 %and7, 0, !dbg !6414
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6415

if.then9:                                         ; preds = %if.end4
  store ptr null, ptr %retval, align 8, !dbg !6416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6416

if.end10:                                         ; preds = %if.end4
  %11 = load i64, ptr %msr, align 8, !dbg !6417
  %and11 = and i64 %11, 281474975662080, !dbg !6418
  store i64 %and11, ptr %base, align 8, !dbg !6419
  %12 = load i64, ptr %msr, align 8, !dbg !6420
  %shr12 = lshr i64 %12, 2, !dbg !6421
  %and13 = and i64 %shr12, 15, !dbg !6422
  %conv14 = trunc i64 %and13 to i32, !dbg !6423
  store i32 %conv14, ptr %busnbits, align 4, !dbg !6424
  %13 = load i32, ptr %busnbits, align 4, !dbg !6425
  %tobool15 = icmp ne i32 %13, 0, !dbg !6425
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !6427

if.then16:                                        ; preds = %if.end10
  store ptr null, ptr %retval, align 8, !dbg !6428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6428

if.end17:                                         ; preds = %if.end10
  %14 = load i32, ptr %busnbits, align 4, !dbg !6429
  %cmp = icmp ugt i32 %14, 8, !dbg !6431
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !6432

if.then19:                                        ; preds = %if.end17
  %15 = load i32, ptr %busnbits, align 4, !dbg !6433
  %sub = sub i32 %15, 8, !dbg !6435
  store i32 %sub, ptr %segnbits, align 4, !dbg !6436
  store i32 8, ptr %busnbits, align 4, !dbg !6437
  br label %if.end20, !dbg !6438

if.end20:                                         ; preds = %if.then19, %if.end17
  %16 = load i32, ptr %busnbits, align 4, !dbg !6439
  %shl21 = shl i32 1, %16, !dbg !6440
  %sub22 = sub i32 %shl21, 1, !dbg !6441
  store i32 %sub22, ptr %end_bus, align 4, !dbg !6442
  store i32 0, ptr %i, align 4, !dbg !6443
  br label %for.cond, !dbg !6445

for.cond:                                         ; preds = %for.inc, %if.end20
  %17 = load i32, ptr %i, align 4, !dbg !6446
  %18 = load i32, ptr %segnbits, align 4, !dbg !6448
  %shl23 = shl i32 1, %18, !dbg !6449
  %cmp24 = icmp slt i32 %17, %shl23, !dbg !6450
  br i1 %cmp24, label %for.body, label %for.end, !dbg !6451

for.body:                                         ; preds = %for.cond
  %19 = load i32, ptr %i, align 4, !dbg !6452
  %20 = load i32, ptr %end_bus, align 4, !dbg !6454
  %21 = load i64, ptr %base, align 8, !dbg !6455
  %22 = load i32, ptr %i, align 4, !dbg !6456
  %mul = mul i32 268435456, %22, !dbg !6457
  %conv26 = sext i32 %mul to i64, !dbg !6458
  %add = add i64 %21, %conv26, !dbg !6459
  %call27 = call ptr @pci_mmconfig_add(i32 noundef %19, i32 noundef 0, i32 noundef %20, i64 noundef %add) #18, !dbg !6460
  %cmp28 = icmp eq ptr %call27, null, !dbg !6461
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !6462

if.then30:                                        ; preds = %for.body
  call void @free_all_mmcfg() #18, !dbg !6463
  store ptr null, ptr %retval, align 8, !dbg !6465
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6465

if.end31:                                         ; preds = %for.body
  br label %for.inc, !dbg !6466

for.inc:                                          ; preds = %if.end31
  %23 = load i32, ptr %i, align 4, !dbg !6467
  %inc = add i32 %23, 1, !dbg !6467
  store i32 %inc, ptr %i, align 4, !dbg !6467
  br label %for.cond, !dbg !6468, !llvm.loop !6469

for.end:                                          ; preds = %for.cond
  store ptr @.str.13, ptr %retval, align 8, !dbg !6471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6471

cleanup:                                          ; preds = %for.end, %if.then30, %if.then16, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %end_bus) #16, !dbg !6472
  call void @llvm.lifetime.end.p0(i64 4, ptr %busnbits) #16, !dbg !6472
  call void @llvm.lifetime.end.p0(i64 4, ptr %segnbits) #16, !dbg !6472
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6472
  call void @llvm.lifetime.end.p0(i64 8, ptr %msr) #16, !dbg !6472
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #16, !dbg !6472
  call void @llvm.lifetime.end.p0(i64 4, ptr %address) #16, !dbg !6472
  call void @llvm.lifetime.end.p0(i64 4, ptr %high) #16, !dbg !6472
  call void @llvm.lifetime.end.p0(i64 4, ptr %low) #16, !dbg !6472
  %24 = load ptr, ptr %retval, align 8, !dbg !6472
  ret ptr %24, !dbg !6472
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @pci_mmcfg_nvidia_mcp55() #0 section ".init.text" align 16 !dbg !422 {
entry:
  %retval = alloca ptr, align 8
  %bus = alloca i32, align 4
  %mcp55_mmconf_found = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %base = alloca i64, align 8
  %l = alloca i32, align 4
  %extcfg = alloca i32, align 4
  %vendor = alloca i16, align 2
  %device = alloca i16, align 2
  %start = alloca i32, align 4
  %size_index = alloca i32, align 4
  %end = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bus) #16, !dbg !6473
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !424, metadata !DIExpression()), !dbg !6474
  call void @llvm.lifetime.start.p0(i64 4, ptr %mcp55_mmconf_found) #16, !dbg !6475
  call void @llvm.dbg.declare(metadata ptr %mcp55_mmconf_found, metadata !425, metadata !DIExpression()), !dbg !6476
  store i32 0, ptr %mcp55_mmconf_found, align 4, !dbg !6476
  %0 = load i32, ptr @acpi_disabled, align 4, !dbg !6477
  %tobool = icmp ne i32 %0, 0, !dbg !6477
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6479

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @list_empty(ptr noundef @pci_mmcfg_list) #17, !dbg !6480
  %tobool1 = icmp ne i32 %call, 0, !dbg !6480
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !6481

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %1 = load i8, ptr @mcp55_checked, align 1, !dbg !6482, !range !5493, !noundef !1753
  %tobool3 = trunc i8 %1 to i1, !dbg !6482
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6483

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !6484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !6484

if.end:                                           ; preds = %lor.lhs.false2
  store i8 1, ptr @mcp55_checked, align 1, !dbg !6485
  store i32 0, ptr %bus, align 4, !dbg !6486
  br label %for.cond, !dbg !6487

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %bus, align 4, !dbg !6488
  %cmp = icmp slt i32 %2, 256, !dbg !6489
  br i1 %cmp, label %for.body, label %for.end, !dbg !6490

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #16, !dbg !6491
  call void @llvm.dbg.declare(metadata ptr %base, metadata !426, metadata !DIExpression()), !dbg !6492
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #16, !dbg !6493
  call void @llvm.dbg.declare(metadata ptr %l, metadata !430, metadata !DIExpression()), !dbg !6494
  call void @llvm.lifetime.start.p0(i64 4, ptr %extcfg) #16, !dbg !6493
  call void @llvm.dbg.declare(metadata ptr %extcfg, metadata !431, metadata !DIExpression()), !dbg !6495
  call void @llvm.lifetime.start.p0(i64 2, ptr %vendor) #16, !dbg !6496
  call void @llvm.dbg.declare(metadata ptr %vendor, metadata !432, metadata !DIExpression()), !dbg !6497
  call void @llvm.lifetime.start.p0(i64 2, ptr %device) #16, !dbg !6496
  call void @llvm.dbg.declare(metadata ptr %device, metadata !433, metadata !DIExpression()), !dbg !6498
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #16, !dbg !6499
  call void @llvm.dbg.declare(metadata ptr %start, metadata !434, metadata !DIExpression()), !dbg !6500
  call void @llvm.lifetime.start.p0(i64 4, ptr %size_index) #16, !dbg !6499
  call void @llvm.dbg.declare(metadata ptr %size_index, metadata !435, metadata !DIExpression()), !dbg !6501
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #16, !dbg !6499
  call void @llvm.dbg.declare(metadata ptr %end, metadata !436, metadata !DIExpression()), !dbg !6502
  %3 = load ptr, ptr @raw_pci_ops, align 8, !dbg !6503
  %read = getelementptr inbounds %struct.pci_raw_ops, ptr %3, i32 0, i32 0, !dbg !6504
  %4 = load ptr, ptr %read, align 8, !dbg !6504
  %5 = load i32, ptr %bus, align 4, !dbg !6505
  %call4 = call i32 %4(i32 noundef 0, i32 noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %l) #17, !dbg !6503
  %6 = load i32, ptr %l, align 4, !dbg !6506
  %and = and i32 %6, 65535, !dbg !6507
  %conv = trunc i32 %and to i16, !dbg !6506
  store i16 %conv, ptr %vendor, align 2, !dbg !6508
  %7 = load i32, ptr %l, align 4, !dbg !6509
  %shr = lshr i32 %7, 16, !dbg !6510
  %and5 = and i32 %shr, 65535, !dbg !6511
  %conv6 = trunc i32 %and5 to i16, !dbg !6512
  store i16 %conv6, ptr %device, align 2, !dbg !6513
  %8 = load i16, ptr %vendor, align 2, !dbg !6514
  %conv7 = zext i16 %8 to i32, !dbg !6514
  %cmp8 = icmp ne i32 4318, %conv7, !dbg !6516
  br i1 %cmp8, label %if.then14, label %lor.lhs.false10, !dbg !6517

lor.lhs.false10:                                  ; preds = %for.body
  %9 = load i16, ptr %device, align 2, !dbg !6518
  %conv11 = zext i16 %9 to i32, !dbg !6518
  %cmp12 = icmp ne i32 873, %conv11, !dbg !6519
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !6520

if.then14:                                        ; preds = %lor.lhs.false10, %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6521

if.end15:                                         ; preds = %lor.lhs.false10
  %10 = load ptr, ptr @raw_pci_ops, align 8, !dbg !6522
  %read16 = getelementptr inbounds %struct.pci_raw_ops, ptr %10, i32 0, i32 0, !dbg !6523
  %11 = load ptr, ptr %read16, align 8, !dbg !6523
  %12 = load i32, ptr %bus, align 4, !dbg !6524
  %call17 = call i32 %11(i32 noundef 0, i32 noundef %12, i32 noundef 0, i32 noundef 144, i32 noundef 4, ptr noundef %extcfg) #17, !dbg !6522
  %13 = load i32, ptr %extcfg, align 4, !dbg !6525
  %and18 = and i32 %13, -2147483648, !dbg !6527
  %tobool19 = icmp ne i32 %and18, 0, !dbg !6527
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !6528

if.then20:                                        ; preds = %if.end15
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6529

if.end21:                                         ; preds = %if.end15
  %14 = load i32, ptr %extcfg, align 4, !dbg !6530
  %and22 = and i32 %14, 805306368, !dbg !6531
  %shr23 = lshr i32 %and22, 28, !dbg !6532
  store i32 %shr23, ptr %size_index, align 4, !dbg !6533
  %15 = load i32, ptr %extcfg, align 4, !dbg !6534
  %16 = load i32, ptr %size_index, align 4, !dbg !6535
  %idxprom = sext i32 %16 to i64, !dbg !6536
  %arrayidx = getelementptr [4 x i32], ptr @pci_mmcfg_nvidia_mcp55.extcfg_base_mask, i64 0, i64 %idxprom, !dbg !6536
  %17 = load i32, ptr %arrayidx, align 4, !dbg !6536
  %and24 = and i32 %15, %17, !dbg !6537
  %conv25 = zext i32 %and24 to i64, !dbg !6534
  store i64 %conv25, ptr %base, align 8, !dbg !6538
  %18 = load i64, ptr %base, align 8, !dbg !6539
  %shl = shl i64 %18, 25, !dbg !6539
  store i64 %shl, ptr %base, align 8, !dbg !6539
  %19 = load i32, ptr %extcfg, align 4, !dbg !6540
  %and26 = and i32 %19, 16711680, !dbg !6541
  %shr27 = lshr i32 %and26, 16, !dbg !6542
  store i32 %shr27, ptr %start, align 4, !dbg !6543
  %20 = load i32, ptr %start, align 4, !dbg !6544
  %21 = load i32, ptr %size_index, align 4, !dbg !6545
  %idxprom28 = sext i32 %21 to i64, !dbg !6546
  %arrayidx29 = getelementptr [4 x i32], ptr @pci_mmcfg_nvidia_mcp55.extcfg_sizebus, i64 0, i64 %idxprom28, !dbg !6546
  %22 = load i32, ptr %arrayidx29, align 4, !dbg !6546
  %add = add i32 %20, %22, !dbg !6547
  %sub = sub i32 %add, 1, !dbg !6548
  store i32 %sub, ptr %end, align 4, !dbg !6549
  %23 = load i32, ptr %start, align 4, !dbg !6550
  %24 = load i32, ptr %end, align 4, !dbg !6552
  %25 = load i64, ptr %base, align 8, !dbg !6553
  %call30 = call ptr @pci_mmconfig_add(i32 noundef 0, i32 noundef %23, i32 noundef %24, i64 noundef %25) #18, !dbg !6554
  %cmp31 = icmp eq ptr %call30, null, !dbg !6555
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !6556

if.then33:                                        ; preds = %if.end21
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6557

if.end34:                                         ; preds = %if.end21
  %26 = load i32, ptr %mcp55_mmconf_found, align 4, !dbg !6558
  %inc = add i32 %26, 1, !dbg !6558
  store i32 %inc, ptr %mcp55_mmconf_found, align 4, !dbg !6558
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6559
  br label %cleanup, !dbg !6559

cleanup:                                          ; preds = %if.end34, %if.then33, %if.then20, %if.then14
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #16, !dbg !6559
  call void @llvm.lifetime.end.p0(i64 4, ptr %size_index) #16, !dbg !6559
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #16, !dbg !6559
  call void @llvm.lifetime.end.p0(i64 2, ptr %device) #16, !dbg !6559
  call void @llvm.lifetime.end.p0(i64 2, ptr %vendor) #16, !dbg !6559
  call void @llvm.lifetime.end.p0(i64 4, ptr %extcfg) #16, !dbg !6559
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #16, !dbg !6559
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #16, !dbg !6559
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6560

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %27 = load i32, ptr %bus, align 4, !dbg !6561
  %inc42 = add i32 %27, 1, !dbg !6561
  store i32 %inc42, ptr %bus, align 4, !dbg !6561
  br label %for.cond, !dbg !6562, !llvm.loop !6563

for.end:                                          ; preds = %for.cond
  %28 = load i32, ptr %mcp55_mmconf_found, align 4, !dbg !6565
  %tobool43 = icmp ne i32 %28, 0, !dbg !6565
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !6567

if.then44:                                        ; preds = %for.end
  store ptr null, ptr %retval, align 8, !dbg !6568
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !6568

if.end45:                                         ; preds = %for.end
  store ptr @.str.14, ptr %retval, align 8, !dbg !6569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !6569

cleanup46:                                        ; preds = %if.end45, %if.then44, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %mcp55_mmconf_found) #16, !dbg !6570
  call void @llvm.lifetime.end.p0(i64 4, ptr %bus) #16, !dbg !6570
  %29 = load ptr, ptr %retval, align 8, !dbg !6570
  ret ptr %29, !dbg !6570

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr_safe(i32 noundef %msr, ptr noundef %err) #7 align 16 !dbg !6571 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6576, metadata !DIExpression()), !dbg !6580
  store ptr %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !6577, metadata !DIExpression()), !dbg !6581
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #16, !dbg !6582
  call void @llvm.dbg.declare(metadata ptr %low, metadata !6578, metadata !DIExpression()), !dbg !6582
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #16, !dbg !6582
  call void @llvm.dbg.declare(metadata ptr %high, metadata !6579, metadata !DIExpression()), !dbg !6582
  %0 = load ptr, ptr %err.addr, align 8, !dbg !6583
  %1 = load i32, ptr %msr.addr, align 4, !dbg !6584
  %2 = call { i32, i64, i64 } asm sideeffect "1: rdmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=11 \0A.purgem extable_type_reg\0A .popsection\0A", "=r,={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %1) #16, !dbg !6585, !srcloc !6586
  %asmresult = extractvalue { i32, i64, i64 } %2, 0, !dbg !6585
  %asmresult1 = extractvalue { i32, i64, i64 } %2, 1, !dbg !6585
  %asmresult2 = extractvalue { i32, i64, i64 } %2, 2, !dbg !6585
  store i32 %asmresult, ptr %0, align 4, !dbg !6585
  store i64 %asmresult1, ptr %low, align 8, !dbg !6585
  store i64 %asmresult2, ptr %high, align 8, !dbg !6585
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #17, !dbg !6587
  br i1 %call, label %if.then, label %if.end, !dbg !6589

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !6590
  %4 = load i64, ptr %low, align 8, !dbg !6591
  %5 = load i64, ptr %high, align 8, !dbg !6591
  %shl = shl i64 %5, 32, !dbg !6591
  %or = or i64 %4, %shl, !dbg !6591
  %6 = load ptr, ptr %err.addr, align 8, !dbg !6592
  %7 = load i32, ptr %6, align 4, !dbg !6593
  call void @do_trace_read_msr(i32 noundef %3, i64 noundef %or, i32 noundef %7) #17, !dbg !6594
  br label %if.end, !dbg !6594

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %low, align 8, !dbg !6595
  %9 = load i64, ptr %high, align 8, !dbg !6595
  %shl3 = shl i64 %9, 32, !dbg !6595
  %or4 = or i64 %8, %shl3, !dbg !6595
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #16, !dbg !6596
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #16, !dbg !6596
  ret i64 %or4, !dbg !6597
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #12 align 16 !dbg !6598 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6614, metadata !DIExpression()), !dbg !6615
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6616
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #17, !dbg !6617
  ret i1 %call, !dbg !6618
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6619 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #12 align 16 !dbg !6622 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6627, metadata !DIExpression()), !dbg !6630
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6628, metadata !DIExpression()), !dbg !6631
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6632
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6633, !range !5493, !noundef !1753
  %tobool = trunc i8 %1 to i1, !dbg !6633
  %conv = zext i1 %tobool to i32, !dbg !6633
  %or = or i32 2, %conv, !dbg !6634
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #16
          to label %asm.fallthrough [label %l_yes], !dbg !6635, !srcloc !6636

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6637
  br label %return, !dbg !6637

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6629), !dbg !6638
  store i1 true, ptr %retval, align 1, !dbg !6639
  br label %return, !dbg !6639

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6640
  ret i1 %2, !dbg !6640
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_mcfg_check_entry(ptr noundef %mcfg, ptr noundef %cfg) #0 section ".init.text" align 16 !dbg !6641 {
entry:
  %retval = alloca i32, align 4
  %mcfg.addr = alloca ptr, align 8
  %cfg.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %mcfg, ptr %mcfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mcfg.addr, metadata !6645, metadata !DIExpression()), !dbg !6647
  store ptr %cfg, ptr %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cfg.addr, metadata !6646, metadata !DIExpression()), !dbg !6648
  %0 = load ptr, ptr %cfg.addr, align 8, !dbg !6649
  %address = getelementptr inbounds %struct.acpi_mcfg_allocation, ptr %0, i32 0, i32 0, !dbg !6651
  %1 = load i64, ptr %address, align 1, !dbg !6651
  %cmp = icmp ult i64 %1, 4294967295, !dbg !6652
  br i1 %cmp, label %if.then, label %if.end, !dbg !6653

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6654
  br label %return, !dbg !6654

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %mcfg.addr, align 8, !dbg !6655
  %header = getelementptr inbounds %struct.acpi_table_mcfg, ptr %2, i32 0, i32 0, !dbg !6657
  %oem_id = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 4, !dbg !6658
  %arraydecay = getelementptr inbounds [6 x i8], ptr %oem_id, i64 0, i64 0, !dbg !6655
  %call = call i32 @strncmp(ptr noundef %arraydecay, ptr noundef @.str.17, i64 noundef 3) #17, !dbg !6659
  %tobool = icmp ne i32 %call, 0, !dbg !6659
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !6660

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6661
  br label %return, !dbg !6661

if.end2:                                          ; preds = %if.end
  %3 = load ptr, ptr %mcfg.addr, align 8, !dbg !6662
  %header3 = getelementptr inbounds %struct.acpi_table_mcfg, ptr %3, i32 0, i32 0, !dbg !6664
  %revision = getelementptr inbounds %struct.acpi_table_header, ptr %header3, i32 0, i32 2, !dbg !6665
  %4 = load i8, ptr %revision, align 1, !dbg !6665
  %conv = zext i8 %4 to i32, !dbg !6662
  %cmp4 = icmp sge i32 %conv, 1, !dbg !6666
  br i1 %cmp4, label %land.lhs.true, label %if.end10, !dbg !6667

land.lhs.true:                                    ; preds = %if.end2
  %call6 = call i32 @dmi_get_bios_year() #17, !dbg !6668
  %cmp7 = icmp sge i32 %call6, 2010, !dbg !6669
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !6670

if.then9:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !6671
  br label %return, !dbg !6671

if.end10:                                         ; preds = %land.lhs.true, %if.end2
  br label %do.body, !dbg !6672

do.body:                                          ; preds = %if.end10
  br label %do.end, !dbg !6674

do.end:                                           ; preds = %do.body
  %5 = load ptr, ptr %cfg.addr, align 8, !dbg !6672
  %pci_segment = getelementptr inbounds %struct.acpi_mcfg_allocation, ptr %5, i32 0, i32 1, !dbg !6672
  %6 = load i16, ptr %pci_segment, align 1, !dbg !6672
  %conv11 = zext i16 %6 to i32, !dbg !6672
  %7 = load ptr, ptr %cfg.addr, align 8, !dbg !6672
  %start_bus_number = getelementptr inbounds %struct.acpi_mcfg_allocation, ptr %7, i32 0, i32 2, !dbg !6672
  %8 = load i8, ptr %start_bus_number, align 1, !dbg !6672
  %conv12 = zext i8 %8 to i32, !dbg !6672
  %9 = load ptr, ptr %cfg.addr, align 8, !dbg !6672
  %end_bus_number = getelementptr inbounds %struct.acpi_mcfg_allocation, ptr %9, i32 0, i32 3, !dbg !6672
  %10 = load i8, ptr %end_bus_number, align 1, !dbg !6672
  %conv13 = zext i8 %10 to i32, !dbg !6672
  %11 = load ptr, ptr %cfg.addr, align 8, !dbg !6672
  %address14 = getelementptr inbounds %struct.acpi_mcfg_allocation, ptr %11, i32 0, i32 0, !dbg !6672
  %12 = load i64, ptr %address14, align 1, !dbg !6672
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.18, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i64 noundef %12) #18, !dbg !6672
  store i32 %call15, ptr %tmp, align 4, !dbg !6674
  %13 = load i32, ptr %tmp, align 4, !dbg !6672
  store i32 -22, ptr %retval, align 4, !dbg !6676
  br label %return, !dbg !6676

return:                                           ; preds = %do.end, %if.then9, %if.then1, %if.then
  %14 = load i32, ptr %retval, align 4, !dbg !6677
  ret i32 %14, !dbg !6677
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6678 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6682 dso_local i32 @dmi_get_bios_year() #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @pci_mmcfg_reject_broken(i32 noundef %early) #0 section ".init.text" align 16 !dbg !6684 {
entry:
  %early.addr = alloca i32, align 4
  %cfg = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr5 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store i32 %early, ptr %early.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %early.addr, metadata !6686, metadata !DIExpression()), !dbg !6694
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #16, !dbg !6695
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !6687, metadata !DIExpression()), !dbg !6696
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6697
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6688, metadata !DIExpression()), !dbg !6697
  %0 = load ptr, ptr @pci_mmcfg_list, align 8, !dbg !6697
  store ptr %0, ptr %__mptr, align 8, !dbg !6697
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6697
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6697
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6697
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6698
  %2 = load ptr, ptr %tmp, align 8, !dbg !6697
  store ptr %2, ptr %cfg, align 8, !dbg !6698
  br label %for.cond, !dbg !6698

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %cfg, align 8, !dbg !6699
  %list = getelementptr inbounds %struct.pci_mmcfg_region, ptr %3, i32 0, i32 0, !dbg !6699
  %cmp = icmp eq ptr %list, @pci_mmcfg_list, !dbg !6699
  %lnot = xor i1 %cmp, true, !dbg !6699
  br i1 %lnot, label %for.body, label %for.end, !dbg !6698

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cfg, align 8, !dbg !6700
  %5 = load i32, ptr %early.addr, align 4, !dbg !6703
  %call = call zeroext i1 @pci_mmcfg_check_reserved(ptr noundef null, ptr noundef %4, i32 noundef %5) #17, !dbg !6704
  %conv = zext i1 %call to i32, !dbg !6704
  %cmp1 = icmp eq i32 %conv, 0, !dbg !6705
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6706

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !6707

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6710

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6710

do.end:                                           ; preds = %do.cond
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.19) #18, !dbg !6707
  store i32 %call4, ptr %tmp3, align 4, !dbg !6710
  %6 = load i32, ptr %tmp3, align 4, !dbg !6707
  call void @free_all_mmcfg() #18, !dbg !6712
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6713

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6714

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #16, !dbg !6715
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !6691, metadata !DIExpression()), !dbg !6715
  %7 = load ptr, ptr %cfg, align 8, !dbg !6715
  %list6 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %7, i32 0, i32 0, !dbg !6715
  %next = getelementptr inbounds %struct.list_head, ptr %list6, i32 0, i32 0, !dbg !6715
  %8 = load ptr, ptr %next, align 8, !dbg !6715
  store ptr %8, ptr %__mptr5, align 8, !dbg !6715
  %9 = load ptr, ptr %__mptr5, align 8, !dbg !6715
  %add.ptr8 = getelementptr i8, ptr %9, i64 0, !dbg !6715
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !6715
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #16, !dbg !6699
  %10 = load ptr, ptr %tmp7, align 8, !dbg !6715
  store ptr %10, ptr %cfg, align 8, !dbg !6699
  br label %for.cond, !dbg !6699, !llvm.loop !6716

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6718
  br label %cleanup, !dbg !6718

cleanup:                                          ; preds = %for.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #16, !dbg !6718
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6718

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6719 dso_local i32 @pci_mmcfg_arch_init() #5 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6720 dso_local i32 @insert_resource(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_mmconf_reserved(ptr noundef %is_reserved, ptr noundef %cfg, ptr noundef %dev, ptr noundef %method) #6 section ".ref.text" align 16 !dbg !6723 {
entry:
  %retval = alloca i1, align 1
  %is_reserved.addr = alloca ptr, align 8
  %cfg.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %method.addr = alloca ptr, align 8
  %addr = alloca i64, align 8
  %size = alloca i64, align 8
  %old_size = alloca i64, align 8
  %num_buses = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  store ptr %is_reserved, ptr %is_reserved.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %is_reserved.addr, metadata !6731, metadata !DIExpression()), !dbg !6739
  store ptr %cfg, ptr %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cfg.addr, metadata !6732, metadata !DIExpression()), !dbg !6740
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6733, metadata !DIExpression()), !dbg !6741
  store ptr %method, ptr %method.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %method.addr, metadata !6734, metadata !DIExpression()), !dbg !6742
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #16, !dbg !6743
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !6735, metadata !DIExpression()), !dbg !6744
  %0 = load ptr, ptr %cfg.addr, align 8, !dbg !6745
  %res = getelementptr inbounds %struct.pci_mmcfg_region, ptr %0, i32 0, i32 1, !dbg !6746
  %start = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 0, !dbg !6747
  %1 = load i64, ptr %start, align 8, !dbg !6747
  store i64 %1, ptr %addr, align 8, !dbg !6744
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !6748
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6736, metadata !DIExpression()), !dbg !6749
  %2 = load ptr, ptr %cfg.addr, align 8, !dbg !6750
  %res1 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %2, i32 0, i32 1, !dbg !6751
  %call = call i64 @resource_size(ptr noundef %res1) #17, !dbg !6752
  store i64 %call, ptr %size, align 8, !dbg !6749
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_size) #16, !dbg !6753
  call void @llvm.dbg.declare(metadata ptr %old_size, metadata !6737, metadata !DIExpression()), !dbg !6754
  %3 = load i64, ptr %size, align 8, !dbg !6755
  store i64 %3, ptr %old_size, align 8, !dbg !6754
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_buses) #16, !dbg !6756
  call void @llvm.dbg.declare(metadata ptr %num_buses, metadata !6738, metadata !DIExpression()), !dbg !6757
  br label %while.cond, !dbg !6758

while.cond:                                       ; preds = %if.end, %entry
  %4 = load ptr, ptr %is_reserved.addr, align 8, !dbg !6759
  %5 = load i64, ptr %addr, align 8, !dbg !6760
  %6 = load i64, ptr %addr, align 8, !dbg !6761
  %7 = load i64, ptr %size, align 8, !dbg !6762
  %add = add i64 %6, %7, !dbg !6763
  %call2 = call zeroext i1 %4(i64 noundef %5, i64 noundef %add, i32 noundef 2) #17, !dbg !6759
  %lnot = xor i1 %call2, true, !dbg !6764
  br i1 %lnot, label %while.body, label %while.end, !dbg !6758

while.body:                                       ; preds = %while.cond
  %8 = load i64, ptr %size, align 8, !dbg !6765
  %shr = lshr i64 %8, 1, !dbg !6765
  store i64 %shr, ptr %size, align 8, !dbg !6765
  %9 = load i64, ptr %size, align 8, !dbg !6767
  %cmp = icmp ult i64 %9, 16777216, !dbg !6769
  br i1 %cmp, label %if.then, label %if.end, !dbg !6770

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !6771

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !6758, !llvm.loop !6772

while.end:                                        ; preds = %if.then, %while.cond
  %10 = load i64, ptr %size, align 8, !dbg !6774
  %cmp3 = icmp ult i64 %10, 16777216, !dbg !6776
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6777

land.lhs.true:                                    ; preds = %while.end
  %11 = load i64, ptr %size, align 8, !dbg !6778
  %12 = load i64, ptr %old_size, align 8, !dbg !6779
  %cmp4 = icmp ne i64 %11, %12, !dbg !6780
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6781

if.then5:                                         ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !6782
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6782

if.end6:                                          ; preds = %land.lhs.true, %while.end
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !6783
  %tobool = icmp ne ptr %13, null, !dbg !6783
  br i1 %tobool, label %if.then7, label %if.else, !dbg !6785

if.then7:                                         ; preds = %if.end6
  br label %do.body, !dbg !6786

do.body:                                          ; preds = %if.then7
  br label %do.cond, !dbg !6788

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6788

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !6786
  %15 = load ptr, ptr %cfg.addr, align 8, !dbg !6786
  %res8 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %15, i32 0, i32 1, !dbg !6786
  %16 = load ptr, ptr %method.addr, align 8, !dbg !6786
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef @.str.27, ptr noundef %res8, ptr noundef %16) #18, !dbg !6786
  br label %if.end14, !dbg !6790

if.else:                                          ; preds = %if.end6
  br label %do.body9, !dbg !6791

do.body9:                                         ; preds = %if.else
  br label %do.cond10, !dbg !6793

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6793

do.end11:                                         ; preds = %do.cond10
  %17 = load ptr, ptr %cfg.addr, align 8, !dbg !6791
  %res12 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %17, i32 0, i32 1, !dbg !6791
  %18 = load ptr, ptr %method.addr, align 8, !dbg !6791
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef @.str.28, ptr noundef %res12, ptr noundef %18) #18, !dbg !6791
  store i32 %call13, ptr %tmp, align 4, !dbg !6793
  %19 = load i32, ptr %tmp, align 4, !dbg !6791
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %do.end
  %20 = load i64, ptr %old_size, align 8, !dbg !6795
  %21 = load i64, ptr %size, align 8, !dbg !6797
  %cmp15 = icmp ne i64 %20, %21, !dbg !6798
  br i1 %cmp15, label %if.then16, label %if.end59, !dbg !6799

if.then16:                                        ; preds = %if.end14
  %22 = load ptr, ptr %cfg.addr, align 8, !dbg !6800
  %start_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %22, i32 0, i32 5, !dbg !6802
  %23 = load i8, ptr %start_bus, align 2, !dbg !6802
  %conv = zext i8 %23 to i64, !dbg !6800
  %24 = load i64, ptr %size, align 8, !dbg !6803
  %shr17 = lshr i64 %24, 20, !dbg !6804
  %sub = sub i64 %shr17, 1, !dbg !6805
  %add18 = add i64 %conv, %sub, !dbg !6806
  %conv19 = trunc i64 %add18 to i8, !dbg !6800
  %25 = load ptr, ptr %cfg.addr, align 8, !dbg !6807
  %end_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %25, i32 0, i32 6, !dbg !6808
  store i8 %conv19, ptr %end_bus, align 1, !dbg !6809
  %26 = load ptr, ptr %cfg.addr, align 8, !dbg !6810
  %end_bus20 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %26, i32 0, i32 6, !dbg !6811
  %27 = load i8, ptr %end_bus20, align 1, !dbg !6811
  %conv21 = zext i8 %27 to i32, !dbg !6810
  %28 = load ptr, ptr %cfg.addr, align 8, !dbg !6812
  %start_bus22 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %28, i32 0, i32 5, !dbg !6813
  %29 = load i8, ptr %start_bus22, align 2, !dbg !6813
  %conv23 = zext i8 %29 to i32, !dbg !6812
  %sub24 = sub i32 %conv21, %conv23, !dbg !6814
  %add25 = add i32 %sub24, 1, !dbg !6815
  store i32 %add25, ptr %num_buses, align 4, !dbg !6816
  %30 = load ptr, ptr %cfg.addr, align 8, !dbg !6817
  %res26 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %30, i32 0, i32 1, !dbg !6818
  %start27 = getelementptr inbounds %struct.resource, ptr %res26, i32 0, i32 0, !dbg !6819
  %31 = load i64, ptr %start27, align 8, !dbg !6819
  %32 = load i32, ptr %num_buses, align 4, !dbg !6820
  %shl = shl i32 %32, 20, !dbg !6820
  %conv28 = sext i32 %shl to i64, !dbg !6820
  %add29 = add i64 %31, %conv28, !dbg !6821
  %sub30 = sub i64 %add29, 1, !dbg !6822
  %33 = load ptr, ptr %cfg.addr, align 8, !dbg !6823
  %res31 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %33, i32 0, i32 1, !dbg !6824
  %end = getelementptr inbounds %struct.resource, ptr %res31, i32 0, i32 1, !dbg !6825
  store i64 %sub30, ptr %end, align 8, !dbg !6826
  %34 = load ptr, ptr %cfg.addr, align 8, !dbg !6827
  %name = getelementptr inbounds %struct.pci_mmcfg_region, ptr %34, i32 0, i32 7, !dbg !6828
  %arraydecay = getelementptr inbounds [30 x i8], ptr %name, i64 0, i64 0, !dbg !6827
  %35 = load ptr, ptr %cfg.addr, align 8, !dbg !6829
  %segment = getelementptr inbounds %struct.pci_mmcfg_region, ptr %35, i32 0, i32 4, !dbg !6830
  %36 = load i16, ptr %segment, align 8, !dbg !6830
  %conv32 = zext i16 %36 to i32, !dbg !6829
  %37 = load ptr, ptr %cfg.addr, align 8, !dbg !6831
  %start_bus33 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %37, i32 0, i32 5, !dbg !6832
  %38 = load i8, ptr %start_bus33, align 2, !dbg !6832
  %conv34 = zext i8 %38 to i32, !dbg !6831
  %39 = load ptr, ptr %cfg.addr, align 8, !dbg !6833
  %end_bus35 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %39, i32 0, i32 6, !dbg !6834
  %40 = load i8, ptr %end_bus35, align 1, !dbg !6834
  %conv36 = zext i8 %40 to i32, !dbg !6833
  %call37 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 30, ptr noundef @.str.8, i32 noundef %conv32, i32 noundef %conv34, i32 noundef %conv36) #17, !dbg !6835
  %41 = load ptr, ptr %dev.addr, align 8, !dbg !6836
  %tobool38 = icmp ne ptr %41, null, !dbg !6836
  br i1 %tobool38, label %if.then39, label %if.else44, !dbg !6838

if.then39:                                        ; preds = %if.then16
  br label %do.body40, !dbg !6839

do.body40:                                        ; preds = %if.then39
  br label %do.cond41, !dbg !6841

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !6841

do.end42:                                         ; preds = %do.cond41
  %42 = load ptr, ptr %dev.addr, align 8, !dbg !6839
  %43 = load ptr, ptr %cfg.addr, align 8, !dbg !6839
  %res43 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %43, i32 0, i32 1, !dbg !6839
  %44 = load ptr, ptr %cfg.addr, align 8, !dbg !6839
  %address = getelementptr inbounds %struct.pci_mmcfg_region, ptr %44, i32 0, i32 2, !dbg !6839
  %45 = load i64, ptr %address, align 8, !dbg !6839
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef @.str.29, ptr noundef %res43, i64 noundef %45) #18, !dbg !6839
  br label %if.end58, !dbg !6843

if.else44:                                        ; preds = %if.then16
  br label %do.body45, !dbg !6844

do.body45:                                        ; preds = %if.else44
  br label %do.cond46, !dbg !6846

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !6846

do.end47:                                         ; preds = %do.cond46
  %46 = load ptr, ptr %cfg.addr, align 8, !dbg !6844
  %segment49 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %46, i32 0, i32 4, !dbg !6844
  %47 = load i16, ptr %segment49, align 8, !dbg !6844
  %conv50 = zext i16 %47 to i32, !dbg !6844
  %48 = load ptr, ptr %cfg.addr, align 8, !dbg !6844
  %start_bus51 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %48, i32 0, i32 5, !dbg !6844
  %49 = load i8, ptr %start_bus51, align 2, !dbg !6844
  %conv52 = zext i8 %49 to i32, !dbg !6844
  %50 = load ptr, ptr %cfg.addr, align 8, !dbg !6844
  %end_bus53 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %50, i32 0, i32 6, !dbg !6844
  %51 = load i8, ptr %end_bus53, align 1, !dbg !6844
  %conv54 = zext i8 %51 to i32, !dbg !6844
  %52 = load ptr, ptr %cfg.addr, align 8, !dbg !6844
  %res55 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %52, i32 0, i32 1, !dbg !6844
  %53 = load ptr, ptr %cfg.addr, align 8, !dbg !6844
  %address56 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %53, i32 0, i32 2, !dbg !6844
  %54 = load i64, ptr %address56, align 8, !dbg !6844
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef @.str.30, i32 noundef %conv50, i32 noundef %conv52, i32 noundef %conv54, ptr noundef %res55, i64 noundef %54) #18, !dbg !6844
  store i32 %call57, ptr %tmp48, align 4, !dbg !6846
  %55 = load i32, ptr %tmp48, align 4, !dbg !6844
  br label %if.end58

if.end58:                                         ; preds = %do.end47, %do.end42
  br label %if.end59, !dbg !6848

if.end59:                                         ; preds = %if.end58, %if.end14
  store i1 true, ptr %retval, align 1, !dbg !6849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6849

cleanup:                                          ; preds = %if.end59, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_buses) #16, !dbg !6850
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_size) #16, !dbg !6850
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !6850
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #16, !dbg !6850
  %56 = load i1, ptr %retval, align 1, !dbg !6850
  ret i1 %56, !dbg !6850
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @e820__mapped_all(i64 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_acpi_reserved(i64 noundef %start, i64 noundef %end, i32 noundef %not_used) #3 align 16 !dbg !6851 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %not_used.addr = alloca i32, align 4
  %mcfg_res = alloca %struct.resource, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6853, metadata !DIExpression()), !dbg !6857
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6854, metadata !DIExpression()), !dbg !6858
  store i32 %not_used, ptr %not_used.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %not_used.addr, metadata !6855, metadata !DIExpression()), !dbg !6859
  call void @llvm.lifetime.start.p0(i64 64, ptr %mcfg_res) #16, !dbg !6860
  call void @llvm.dbg.declare(metadata ptr %mcfg_res, metadata !6856, metadata !DIExpression()), !dbg !6861
  %0 = load i64, ptr %start.addr, align 8, !dbg !6862
  %start1 = getelementptr inbounds %struct.resource, ptr %mcfg_res, i32 0, i32 0, !dbg !6863
  store i64 %0, ptr %start1, align 8, !dbg !6864
  %1 = load i64, ptr %end.addr, align 8, !dbg !6865
  %sub = sub i64 %1, 1, !dbg !6866
  %end2 = getelementptr inbounds %struct.resource, ptr %mcfg_res, i32 0, i32 1, !dbg !6867
  store i64 %sub, ptr %end2, align 8, !dbg !6868
  %flags = getelementptr inbounds %struct.resource, ptr %mcfg_res, i32 0, i32 3, !dbg !6869
  store i64 0, ptr %flags, align 8, !dbg !6870
  %call = call i32 @acpi_get_devices(ptr noundef @.str.31, ptr noundef @find_mboard_resource, ptr noundef %mcfg_res, ptr noundef null) #17, !dbg !6871
  %flags3 = getelementptr inbounds %struct.resource, ptr %mcfg_res, i32 0, i32 3, !dbg !6872
  %2 = load i64, ptr %flags3, align 8, !dbg !6872
  %tobool = icmp ne i64 %2, 0, !dbg !6874
  br i1 %tobool, label %if.end, label %if.then, !dbg !6875

if.then:                                          ; preds = %entry
  %call4 = call i32 @acpi_get_devices(ptr noundef @.str.32, ptr noundef @find_mboard_resource, ptr noundef %mcfg_res, ptr noundef null) #17, !dbg !6876
  br label %if.end, !dbg !6876

if.end:                                           ; preds = %if.then, %entry
  %flags5 = getelementptr inbounds %struct.resource, ptr %mcfg_res, i32 0, i32 3, !dbg !6877
  %3 = load i64, ptr %flags5, align 8, !dbg !6877
  %tobool6 = icmp ne i64 %3, 0, !dbg !6878
  call void @llvm.lifetime.end.p0(i64 64, ptr %mcfg_res) #16, !dbg !6879
  ret i1 %tobool6, !dbg !6880
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_efi_mmio(i64 noundef %start, i64 noundef %end, i32 noundef %not_used) #3 align 16 !dbg !6881 {
entry:
  %retval = alloca i1, align 1
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %not_used.addr = alloca i32, align 4
  %md = alloca ptr, align 8
  %size = alloca i64, align 8
  %mmio_start = alloca i64, align 8
  %mmio_end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6883, metadata !DIExpression()), !dbg !6901
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6884, metadata !DIExpression()), !dbg !6902
  store i32 %not_used, ptr %not_used.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %not_used.addr, metadata !6885, metadata !DIExpression()), !dbg !6903
  call void @llvm.lifetime.start.p0(i64 8, ptr %md) #16, !dbg !6904
  call void @llvm.dbg.declare(metadata ptr %md, metadata !6886, metadata !DIExpression()), !dbg !6905
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !6906
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6898, metadata !DIExpression()), !dbg !6907
  call void @llvm.lifetime.start.p0(i64 8, ptr %mmio_start) #16, !dbg !6906
  call void @llvm.dbg.declare(metadata ptr %mmio_start, metadata !6899, metadata !DIExpression()), !dbg !6908
  call void @llvm.lifetime.start.p0(i64 8, ptr %mmio_end) #16, !dbg !6906
  call void @llvm.dbg.declare(metadata ptr %mmio_end, metadata !6900, metadata !DIExpression()), !dbg !6909
  %0 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 1), align 8, !dbg !6910
  store ptr %0, ptr %md, align 8, !dbg !6910
  br label %for.cond, !dbg !6910

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %md, align 8, !dbg !6912
  %tobool = icmp ne ptr %1, null, !dbg !6912
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6912

land.rhs:                                         ; preds = %for.cond
  %2 = load ptr, ptr %md, align 8, !dbg !6912
  %3 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !6912
  %add.ptr = getelementptr i8, ptr %2, i64 %3, !dbg !6912
  %4 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 2), align 8, !dbg !6912
  %cmp = icmp ule ptr %add.ptr, %4, !dbg !6912
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !6914
  br i1 %5, label %for.body, label %for.end, !dbg !6910

for.body:                                         ; preds = %land.end
  %6 = load ptr, ptr %md, align 8, !dbg !6915
  %type = getelementptr inbounds %struct.efi_memory_desc_t, ptr %6, i32 0, i32 0, !dbg !6918
  %7 = load i32, ptr %type, align 8, !dbg !6918
  %cmp1 = icmp eq i32 %7, 11, !dbg !6919
  br i1 %cmp1, label %if.then, label %if.end5, !dbg !6920

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %md, align 8, !dbg !6921
  %num_pages = getelementptr inbounds %struct.efi_memory_desc_t, ptr %8, i32 0, i32 4, !dbg !6923
  %9 = load i64, ptr %num_pages, align 8, !dbg !6923
  %shl = shl i64 %9, 12, !dbg !6924
  store i64 %shl, ptr %size, align 8, !dbg !6925
  %10 = load ptr, ptr %md, align 8, !dbg !6926
  %phys_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %10, i32 0, i32 2, !dbg !6927
  %11 = load i64, ptr %phys_addr, align 8, !dbg !6927
  store i64 %11, ptr %mmio_start, align 8, !dbg !6928
  %12 = load i64, ptr %mmio_start, align 8, !dbg !6929
  %13 = load i64, ptr %size, align 8, !dbg !6930
  %add = add i64 %12, %13, !dbg !6931
  store i64 %add, ptr %mmio_end, align 8, !dbg !6932
  %14 = load i64, ptr %mmio_start, align 8, !dbg !6933
  %15 = load i64, ptr %start.addr, align 8, !dbg !6935
  %cmp2 = icmp ule i64 %14, %15, !dbg !6936
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !6937

land.lhs.true:                                    ; preds = %if.then
  %16 = load i64, ptr %end.addr, align 8, !dbg !6938
  %17 = load i64, ptr %mmio_end, align 8, !dbg !6939
  %cmp3 = icmp ule i64 %16, %17, !dbg !6940
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !6941

if.then4:                                         ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !6942
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6942

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end5, !dbg !6943

if.end5:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !6944

for.inc:                                          ; preds = %if.end5
  %18 = load ptr, ptr %md, align 8, !dbg !6912
  %19 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !6912
  %add.ptr6 = getelementptr i8, ptr %18, i64 %19, !dbg !6912
  store ptr %add.ptr6, ptr %md, align 8, !dbg !6912
  br label %for.cond, !dbg !6912, !llvm.loop !6945

for.end:                                          ; preds = %land.end
  store i1 false, ptr %retval, align 1, !dbg !6947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6947

cleanup:                                          ; preds = %for.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mmio_end) #16, !dbg !6948
  call void @llvm.lifetime.end.p0(i64 8, ptr %mmio_start) #16, !dbg !6948
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !6948
  call void @llvm.lifetime.end.p0(i64 8, ptr %md) #16, !dbg !6948
  %20 = load i1, ptr %retval, align 1, !dbg !6948
  ret i1 %20, !dbg !6948
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_size(ptr noundef %res) #7 align 16 !dbg !6949 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6955, metadata !DIExpression()), !dbg !6956
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6957
  %end = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1, !dbg !6958
  %1 = load i64, ptr %end, align 8, !dbg !6958
  %2 = load ptr, ptr %res.addr, align 8, !dbg !6959
  %start = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !6960
  %3 = load i64, ptr %start, align 8, !dbg !6960
  %sub = sub i64 %1, %3, !dbg !6961
  %add = add i64 %sub, 1, !dbg !6962
  ret i64 %add, !dbg !6963
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6964 dso_local i32 @acpi_get_devices(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @find_mboard_resource(ptr noundef %handle, i32 noundef %lvl, ptr noundef %context, ptr noundef %rv) #3 align 16 !dbg !6973 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %lvl.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %rv.addr = alloca ptr, align 8
  %mcfg_res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !6975, metadata !DIExpression()), !dbg !6980
  store i32 %lvl, ptr %lvl.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lvl.addr, metadata !6976, metadata !DIExpression()), !dbg !6981
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !6977, metadata !DIExpression()), !dbg !6982
  store ptr %rv, ptr %rv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rv.addr, metadata !6978, metadata !DIExpression()), !dbg !6983
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcfg_res) #16, !dbg !6984
  call void @llvm.dbg.declare(metadata ptr %mcfg_res, metadata !6979, metadata !DIExpression()), !dbg !6985
  %0 = load ptr, ptr %context.addr, align 8, !dbg !6986
  store ptr %0, ptr %mcfg_res, align 8, !dbg !6985
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !6987
  %2 = load ptr, ptr %context.addr, align 8, !dbg !6988
  %call = call i32 @acpi_walk_resources(ptr noundef %1, ptr noundef @.str.33, ptr noundef @check_mcfg_resource, ptr noundef %2) #17, !dbg !6989
  %3 = load ptr, ptr %mcfg_res, align 8, !dbg !6990
  %flags = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3, !dbg !6992
  %4 = load i64, ptr %flags, align 8, !dbg !6992
  %tobool = icmp ne i64 %4, 0, !dbg !6990
  br i1 %tobool, label %if.then, label %if.end, !dbg !6993

if.then:                                          ; preds = %entry
  store i32 16387, ptr %retval, align 4, !dbg !6994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6994

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6995

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcfg_res) #16, !dbg !6996
  %5 = load i32, ptr %retval, align 4, !dbg !6996
  ret i32 %5, !dbg !6996
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6997 dso_local i32 @acpi_walk_resources(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_mcfg_resource(ptr noundef %res, ptr noundef %data) #3 align 16 !dbg !7416 {
entry:
  %retval = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %mcfg_res = alloca ptr, align 8
  %address = alloca %struct.acpi_resource_address64, align 1
  %status = alloca i32, align 4
  %fixmem32 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !7418, metadata !DIExpression()), !dbg !7427
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7419, metadata !DIExpression()), !dbg !7428
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcfg_res) #16, !dbg !7429
  call void @llvm.dbg.declare(metadata ptr %mcfg_res, metadata !7420, metadata !DIExpression()), !dbg !7430
  %0 = load ptr, ptr %data.addr, align 8, !dbg !7431
  store ptr %0, ptr %mcfg_res, align 8, !dbg !7430
  call void @llvm.lifetime.start.p0(i64 60, ptr %address) #16, !dbg !7432
  call void @llvm.dbg.declare(metadata ptr %address, metadata !7421, metadata !DIExpression()), !dbg !7433
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !7434
  call void @llvm.dbg.declare(metadata ptr %status, metadata !7422, metadata !DIExpression()), !dbg !7435
  %1 = load ptr, ptr %res.addr, align 8, !dbg !7436
  %type = getelementptr inbounds %struct.acpi_resource, ptr %1, i32 0, i32 0, !dbg !7437
  %2 = load i32, ptr %type, align 1, !dbg !7437
  %cmp = icmp eq i32 %2, 10, !dbg !7438
  br i1 %cmp, label %if.then, label %if.end12, !dbg !7439

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %fixmem32) #16, !dbg !7440
  call void @llvm.dbg.declare(metadata ptr %fixmem32, metadata !7423, metadata !DIExpression()), !dbg !7441
  %3 = load ptr, ptr %res.addr, align 8, !dbg !7442
  %data1 = getelementptr inbounds %struct.acpi_resource, ptr %3, i32 0, i32 2, !dbg !7443
  store ptr %data1, ptr %fixmem32, align 8, !dbg !7441
  %4 = load ptr, ptr %fixmem32, align 8, !dbg !7444
  %tobool = icmp ne ptr %4, null, !dbg !7444
  br i1 %tobool, label %if.end, label %if.then2, !dbg !7446

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !7447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7447

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %mcfg_res, align 8, !dbg !7448
  %start = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 0, !dbg !7450
  %6 = load i64, ptr %start, align 8, !dbg !7450
  %7 = load ptr, ptr %fixmem32, align 8, !dbg !7451
  %address3 = getelementptr inbounds %struct.acpi_resource_fixed_memory32, ptr %7, i32 0, i32 1, !dbg !7452
  %8 = load i32, ptr %address3, align 1, !dbg !7452
  %conv = zext i32 %8 to i64, !dbg !7451
  %cmp4 = icmp uge i64 %6, %conv, !dbg !7453
  br i1 %cmp4, label %land.lhs.true, label %if.end11, !dbg !7454

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %mcfg_res, align 8, !dbg !7455
  %end = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 1, !dbg !7456
  %10 = load i64, ptr %end, align 8, !dbg !7456
  %11 = load ptr, ptr %fixmem32, align 8, !dbg !7457
  %address6 = getelementptr inbounds %struct.acpi_resource_fixed_memory32, ptr %11, i32 0, i32 1, !dbg !7458
  %12 = load i32, ptr %address6, align 1, !dbg !7458
  %13 = load ptr, ptr %fixmem32, align 8, !dbg !7459
  %address_length = getelementptr inbounds %struct.acpi_resource_fixed_memory32, ptr %13, i32 0, i32 2, !dbg !7460
  %14 = load i32, ptr %address_length, align 1, !dbg !7460
  %add = add i32 %12, %14, !dbg !7461
  %conv7 = zext i32 %add to i64, !dbg !7462
  %cmp8 = icmp ult i64 %10, %conv7, !dbg !7463
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !7464

if.then10:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %mcfg_res, align 8, !dbg !7465
  %flags = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 3, !dbg !7467
  store i64 1, ptr %flags, align 8, !dbg !7468
  store i32 16387, ptr %retval, align 4, !dbg !7469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7469

if.end11:                                         ; preds = %land.lhs.true, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7470
  br label %cleanup, !dbg !7470

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %fixmem32) #16, !dbg !7470
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup49 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end12, !dbg !7471

if.end12:                                         ; preds = %cleanup.cont, %entry
  %16 = load ptr, ptr %res.addr, align 8, !dbg !7472
  %type13 = getelementptr inbounds %struct.acpi_resource, ptr %16, i32 0, i32 0, !dbg !7474
  %17 = load i32, ptr %type13, align 1, !dbg !7474
  %cmp14 = icmp ne i32 %17, 12, !dbg !7475
  br i1 %cmp14, label %land.lhs.true16, label %if.end21, !dbg !7476

land.lhs.true16:                                  ; preds = %if.end12
  %18 = load ptr, ptr %res.addr, align 8, !dbg !7477
  %type17 = getelementptr inbounds %struct.acpi_resource, ptr %18, i32 0, i32 0, !dbg !7478
  %19 = load i32, ptr %type17, align 1, !dbg !7478
  %cmp18 = icmp ne i32 %19, 13, !dbg !7479
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !7480

if.then20:                                        ; preds = %land.lhs.true16
  store i32 0, ptr %retval, align 4, !dbg !7481
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !7481

if.end21:                                         ; preds = %land.lhs.true16, %if.end12
  %20 = load ptr, ptr %res.addr, align 8, !dbg !7482
  %call = call i32 @acpi_resource_to_address64(ptr noundef %20, ptr noundef %address) #17, !dbg !7483
  store i32 %call, ptr %status, align 4, !dbg !7484
  %21 = load i32, ptr %status, align 4, !dbg !7485
  %tobool22 = icmp ne i32 %21, 0, !dbg !7485
  br i1 %tobool22, label %if.then31, label %lor.lhs.false, !dbg !7487

lor.lhs.false:                                    ; preds = %if.end21
  %address23 = getelementptr inbounds %struct.acpi_resource_address64, ptr %address, i32 0, i32 6, !dbg !7488
  %address_length24 = getelementptr inbounds %struct.acpi_address64_attribute, ptr %address23, i32 0, i32 4, !dbg !7489
  %22 = load i64, ptr %address_length24, align 1, !dbg !7489
  %cmp25 = icmp ule i64 %22, 0, !dbg !7490
  br i1 %cmp25, label %if.then31, label %lor.lhs.false27, !dbg !7491

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %resource_type = getelementptr inbounds %struct.acpi_resource_address64, ptr %address, i32 0, i32 0, !dbg !7492
  %23 = load i8, ptr %resource_type, align 1, !dbg !7492
  %conv28 = zext i8 %23 to i32, !dbg !7493
  %cmp29 = icmp ne i32 %conv28, 0, !dbg !7494
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !7495

if.then31:                                        ; preds = %lor.lhs.false27, %lor.lhs.false, %if.end21
  store i32 0, ptr %retval, align 4, !dbg !7496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !7496

if.end32:                                         ; preds = %lor.lhs.false27
  %24 = load ptr, ptr %mcfg_res, align 8, !dbg !7497
  %start33 = getelementptr inbounds %struct.resource, ptr %24, i32 0, i32 0, !dbg !7499
  %25 = load i64, ptr %start33, align 8, !dbg !7499
  %address34 = getelementptr inbounds %struct.acpi_resource_address64, ptr %address, i32 0, i32 6, !dbg !7500
  %minimum = getelementptr inbounds %struct.acpi_address64_attribute, ptr %address34, i32 0, i32 1, !dbg !7501
  %26 = load i64, ptr %minimum, align 1, !dbg !7501
  %cmp35 = icmp uge i64 %25, %26, !dbg !7502
  br i1 %cmp35, label %land.lhs.true37, label %if.end48, !dbg !7503

land.lhs.true37:                                  ; preds = %if.end32
  %27 = load ptr, ptr %mcfg_res, align 8, !dbg !7504
  %end38 = getelementptr inbounds %struct.resource, ptr %27, i32 0, i32 1, !dbg !7505
  %28 = load i64, ptr %end38, align 8, !dbg !7505
  %address39 = getelementptr inbounds %struct.acpi_resource_address64, ptr %address, i32 0, i32 6, !dbg !7506
  %minimum40 = getelementptr inbounds %struct.acpi_address64_attribute, ptr %address39, i32 0, i32 1, !dbg !7507
  %29 = load i64, ptr %minimum40, align 1, !dbg !7507
  %address41 = getelementptr inbounds %struct.acpi_resource_address64, ptr %address, i32 0, i32 6, !dbg !7508
  %address_length42 = getelementptr inbounds %struct.acpi_address64_attribute, ptr %address41, i32 0, i32 4, !dbg !7509
  %30 = load i64, ptr %address_length42, align 1, !dbg !7509
  %add43 = add i64 %29, %30, !dbg !7510
  %cmp44 = icmp ult i64 %28, %add43, !dbg !7511
  br i1 %cmp44, label %if.then46, label %if.end48, !dbg !7512

if.then46:                                        ; preds = %land.lhs.true37
  %31 = load ptr, ptr %mcfg_res, align 8, !dbg !7513
  %flags47 = getelementptr inbounds %struct.resource, ptr %31, i32 0, i32 3, !dbg !7515
  store i64 1, ptr %flags47, align 8, !dbg !7516
  store i32 16387, ptr %retval, align 4, !dbg !7517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !7517

if.end48:                                         ; preds = %land.lhs.true37, %if.end32
  store i32 0, ptr %retval, align 4, !dbg !7518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !7518

cleanup49:                                        ; preds = %if.end48, %if.then46, %if.then31, %if.then20, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !7519
  call void @llvm.lifetime.end.p0(i64 60, ptr %address) #16, !dbg !7519
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcfg_res) #16, !dbg !7519
  %32 = load i32, ptr %retval, align 4, !dbg !7519
  ret i32 %32, !dbg !7519
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7520 dso_local i32 @acpi_resource_to_address64(ptr noundef, ptr noundef) #4

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!531, !532, !533, !534, !535, !536, !537, !538}
!llvm.ident = !{!539}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pci_mmcfg_list", scope: !2, file: !3, line: 35, type: !181, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/pci/.mmconfig-shared.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/pci/mmconfig-shared\22 -D KBUILD_BASENAME=\22mmconfig_shared\22 -D KBUILD_MODNAME=\22mmconfig_shared\22 -D __KBUILD_MODNAME=kmod_mmconfig_shared -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/pci/mmconfig-shared.ll arch/x86/pci/mmconfig-shared.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !174, globals: !276, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/pci/mmconfig-shared.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdbbb556fcddee63447a07eecf9efe2a")
!4 = !{!5, !13, !18, !26, !42, !50, !56, !61, !67, !74, !81, !87, !93, !100, !108, !116, !122, !131, !136, !141, !147, !152, !162}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !27, line: 1325, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!29 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!30 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!31 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!32 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!33 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!34 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!35 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!36 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!37 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!38 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!39 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!40 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!41 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 68, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !51, line: 54, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USRQUOTA", value: 0)
!54 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!55 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !57, line: 65, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!60 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!104 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!105 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!106 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!107 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !101, line: 597, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!112 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!113 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!114 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!115 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !117, line: 30, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!120 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!121 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130}
!124 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!125 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!126 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!127 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!128 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!129 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!130 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!134 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!135 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!139 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!144 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!145 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!146 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 10, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!149 = !{!150, !151}
!150 = !DIEnumerator(name: "false", value: 0)
!151 = !DIEnumerator(name: "true", value: 1)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !153, line: 364, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!154 = !{!155, !156, !157, !158, !159, !160, !161}
!155 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!156 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!157 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!158 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!159 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!160 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!161 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "e820_type", file: !163, line: 10, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./arch/x86/include/asm/e820/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3d4b2499539a4fc8ec760e67f9268a5")
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173}
!165 = !DIEnumerator(name: "E820_TYPE_RAM", value: 1)
!166 = !DIEnumerator(name: "E820_TYPE_RESERVED", value: 2)
!167 = !DIEnumerator(name: "E820_TYPE_ACPI", value: 3)
!168 = !DIEnumerator(name: "E820_TYPE_NVS", value: 4)
!169 = !DIEnumerator(name: "E820_TYPE_UNUSABLE", value: 5)
!170 = !DIEnumerator(name: "E820_TYPE_PMEM", value: 7)
!171 = !DIEnumerator(name: "E820_TYPE_PRAM", value: 12)
!172 = !DIEnumerator(name: "E820_TYPE_SOFT_RESERVED", value: 4026531839, isUnsigned: true)
!173 = !DIEnumerator(name: "E820_TYPE_RESERVED_KERN", value: 128)
!174 = !{!175, !176, !177, !186, !230, !231, !180, !232, !233, !109, !234, !236, !264, !272, !274, !222}
!175 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !182, line: 190, size: 128, elements: !183)
!182 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !182, line: 191, baseType: !180, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !181, file: !182, line: 191, baseType: !180, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_mmcfg_region", file: !188, line: 169, size: 1088, elements: !189)
!188 = !DIFile(filename: "./arch/x86/include/asm/pci_x86.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c32a69340c2514dde4670e44e5a823b3")
!189 = !{!190, !191, !214, !215, !217, !221, !225, !226}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !187, file: !188, line: 170, baseType: !181, size: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !187, file: !188, line: 171, baseType: !192, size: 512, offset: 128)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !193, line: 21, size: 512, elements: !194)
!193 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!194 = !{!195, !203, !204, !208, !209, !210, !212, !213}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !192, file: !193, line: 22, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !182, line: 164, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !182, line: 159, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !199, line: 23, baseType: !200)
!199 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !201, line: 31, baseType: !202)
!201 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!202 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !192, file: !193, line: 23, baseType: !196, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !192, file: !193, line: 24, baseType: !205, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !193, line: 25, baseType: !175, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !192, file: !193, line: 26, baseType: !175, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !192, file: !193, line: 27, baseType: !211, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !192, file: !193, line: 27, baseType: !211, size: 64, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !192, file: !193, line: 27, baseType: !211, size: 64, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !187, file: !188, line: 172, baseType: !198, size: 64, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "virt", scope: !187, file: !188, line: 173, baseType: !216, size: 64, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !187, file: !188, line: 174, baseType: !218, size: 16, offset: 768)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !199, line: 19, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !201, line: 24, baseType: !220)
!220 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "start_bus", scope: !187, file: !188, line: 175, baseType: !222, size: 8, offset: 784)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !199, line: 17, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !201, line: 21, baseType: !224)
!224 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "end_bus", scope: !187, file: !188, line: 176, baseType: !222, size: 8, offset: 792)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !188, line: 177, baseType: !227, size: 240, offset: 800)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 240, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 30)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !182, line: 154, baseType: !7)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !182, line: 42, baseType: !175)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !199, line: 21, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !201, line: 27, baseType: !7)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_mcfg", file: !238, line: 1363, size: 352, elements: !239)
!238 = !DIFile(filename: "./include/acpi/actbl2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7839eaf4648a429aeaa0ab12e30ee4db")
!239 = !{!240, !262}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !237, file: !238, line: 1364, baseType: !241, size: 288)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !242, line: 68, size: 288, elements: !243)
!242 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!243 = !{!244, !248, !249, !250, !251, !255, !259, !260, !261}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !241, file: !242, line: 69, baseType: !245, size: 32)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 32, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 4)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !241, file: !242, line: 70, baseType: !234, size: 32, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !241, file: !242, line: 71, baseType: !222, size: 8, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !241, file: !242, line: 72, baseType: !222, size: 8, offset: 72)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !241, file: !242, line: 73, baseType: !252, size: 48, offset: 80)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 48, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 6)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !241, file: !242, line: 74, baseType: !256, size: 64, offset: 128)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 8)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !241, file: !242, line: 75, baseType: !234, size: 32, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !241, file: !242, line: 76, baseType: !245, size: 32, offset: 224)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !241, file: !242, line: 77, baseType: !234, size: 32, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !237, file: !238, line: 1365, baseType: !263, size: 64, offset: 288)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 64, elements: !257)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_mcfg_allocation", file: !238, line: 1370, size: 128, elements: !266)
!266 = !{!267, !268, !269, !270, !271}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !265, file: !238, line: 1371, baseType: !198, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pci_segment", scope: !265, file: !238, line: 1372, baseType: !218, size: 16, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "start_bus_number", scope: !265, file: !238, line: 1373, baseType: !222, size: 8, offset: 80)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "end_bus_number", scope: !265, file: !238, line: 1374, baseType: !222, size: 8, offset: 88)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !265, file: !238, line: 1375, baseType: !234, size: 32, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !275, line: 421, baseType: !234)
!275 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!276 = !{!0, !277, !282, !287, !289, !294, !299, !304, !309, !314, !319, !323, !325, !327, !332, !337, !386, !391, !405, !410, !415, !420, !438, !440, !442, !444, !447, !449, !451, !454, !457, !459, !464, !466, !471, !476, !478, !483, !485, !490, !495, !500, !505, !507, !509, !514, !516, !521, !523, !525, !527, !529}
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 544, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 68)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !3, line: 729, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 40, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 5)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_mmconfig_shared__296_779_pci_mmcfg_late_insert_resources7297", scope: !2, file: !3, line: 779, type: !176, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !3, line: 799, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 744, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 93)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !3, line: 816, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 304, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 38)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !3, line: 819, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 360, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 45)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !3, line: 828, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 288, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 36)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !3, line: 833, type: !311, isLocal: true, isDefinition: true)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 216, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 27)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !3, line: 837, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 232, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 29)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "pci_mmcfg_running_state", scope: !2, file: !3, line: 30, type: !321, isLocal: true, isDefinition: true)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !182, line: 35, baseType: !322)
!322 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "pci_mmcfg_arch_init_failed", scope: !2, file: !3, line: 31, type: !321, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "known_bridge", scope: !2, file: !3, line: 721, type: !109, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 272, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 34)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !153, line: 480, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 168, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 21)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "pci_mmcfg_lock", scope: !2, file: !3, line: 32, type: !339, isLocal: true, isDefinition: true)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !340, line: 66, size: 256, elements: !341)
!340 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!341 = !{!342, !352, !380, !385}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !339, file: !340, line: 67, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !344, line: 13, baseType: !345)
!344 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !182, line: 181, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 179, size: 64, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !346, file: !182, line: 180, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !199, line: 22, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !201, line: 30, baseType: !351)
!351 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !339, file: !340, line: 68, baseType: !353, size: 32, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !354, line: 23, baseType: !355)
!354 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !354, line: 14, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !355, file: !354, line: 15, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !359, line: 44, baseType: !360)
!359 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !359, line: 14, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !359, line: 15, baseType: !363, size: 32)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !359, line: 15, size: 32, elements: !364)
!364 = !{!365, !370, !375}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !363, file: !359, line: 16, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !182, line: 174, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 172, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !367, file: !182, line: 173, baseType: !109, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !359, line: 24, baseType: !371, size: 16)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !359, line: 24, size: 16, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !371, file: !359, line: 25, baseType: !222, size: 8)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !371, file: !359, line: 26, baseType: !222, size: 8, offset: 8)
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !359, line: 28, baseType: !376, size: 32)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !359, line: 28, size: 32, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !376, file: !359, line: 29, baseType: !218, size: 16)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !376, file: !359, line: 30, baseType: !218, size: 16, offset: 16)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !339, file: !340, line: 70, baseType: !381, size: 32, offset: 96)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !382, line: 15, size: 32, elements: !383)
!382 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !381, file: !382, line: 20, baseType: !366, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !339, file: !340, line: 72, baseType: !181, size: 128, offset: 128)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !3, line: 370, type: !388, isLocal: true, isDefinition: true)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 264, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 33)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "pci_mmcfg_probes", scope: !2, file: !3, line: 312, type: !393, isLocal: true, isDefinition: true)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 960, elements: !285)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_mmcfg_hostbridge_probe", file: !3, line: 304, size: 192, elements: !396)
!396 = !{!397, !398, !399, !400, !401}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !395, file: !3, line: 305, baseType: !234, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !395, file: !3, line: 306, baseType: !234, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !395, file: !3, line: 307, baseType: !234, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !395, file: !3, line: 308, baseType: !234, size: 32, offset: 96)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !395, file: !3, line: 309, baseType: !402, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!205}
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 368, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 46)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !3, line: 187, type: !412, isLocal: true, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 488, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 61)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !417, isLocal: true, isDefinition: true)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 144, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 18)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "extcfg_regnum", scope: !422, file: !3, line: 246, type: !437, isLocal: true, isDefinition: true)
!422 = distinct !DISubprogram(name: "pci_mmcfg_nvidia_mcp55", scope: !3, file: !3, line: 241, type: !403, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !423)
!423 = !{!424, !425, !426, !430, !431, !432, !433, !434, !435, !436}
!424 = !DILocalVariable(name: "bus", scope: !422, file: !3, line: 243, type: !109)
!425 = !DILocalVariable(name: "mcp55_mmconf_found", scope: !422, file: !3, line: 244, type: !109)
!426 = !DILocalVariable(name: "base", scope: !427, file: !3, line: 269, type: !198)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 268, column: 34)
!428 = distinct !DILexicalBlock(scope: !429, file: !3, line: 268, column: 2)
!429 = distinct !DILexicalBlock(scope: !422, file: !3, line: 268, column: 2)
!430 = !DILocalVariable(name: "l", scope: !427, file: !3, line: 270, type: !234)
!431 = !DILocalVariable(name: "extcfg", scope: !427, file: !3, line: 270, type: !234)
!432 = !DILocalVariable(name: "vendor", scope: !427, file: !3, line: 271, type: !218)
!433 = !DILocalVariable(name: "device", scope: !427, file: !3, line: 271, type: !218)
!434 = !DILocalVariable(name: "start", scope: !427, file: !3, line: 272, type: !109)
!435 = !DILocalVariable(name: "size_index", scope: !427, file: !3, line: 272, type: !109)
!436 = !DILocalVariable(name: "end", scope: !427, file: !3, line: 272, type: !109)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(name: "extcfg_regsize", scope: !422, file: !3, line: 247, type: !437, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "extcfg_enable_mask", scope: !422, file: !3, line: 248, type: !437, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(name: "extcfg_start_mask", scope: !422, file: !3, line: 249, type: !437, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(name: "extcfg_start_shift", scope: !422, file: !3, line: 250, type: !446, isLocal: true, isDefinition: true)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(name: "extcfg_size_mask", scope: !422, file: !3, line: 251, type: !437, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "extcfg_size_shift", scope: !422, file: !3, line: 252, type: !446, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(name: "extcfg_sizebus", scope: !422, file: !3, line: 253, type: !453, isLocal: true, isDefinition: true)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 128, elements: !246)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "extcfg_base_mask", scope: !422, file: !3, line: 256, type: !456, isLocal: true, isDefinition: true)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 128, elements: !246)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(name: "extcfg_base_lshift", scope: !422, file: !3, line: 259, type: !446, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !3, line: 301, type: !461, isLocal: true, isDefinition: true)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 104, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 13)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "mcp55_checked", scope: !2, file: !3, line: 240, type: !321, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !3, line: 648, type: !468, isLocal: true, isDefinition: true)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 256, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 32)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !3, line: 662, type: !473, isLocal: true, isDefinition: true)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 280, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 35)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !3, line: 615, type: !245, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !3, line: 621, type: !480, isLocal: true, isDefinition: true)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 608, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 76)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !3, line: 602, type: !311, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !3, line: 552, type: !487, isLocal: true, isDefinition: true)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 88, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 11)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !3, line: 559, type: !492, isLocal: true, isDefinition: true)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 208, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 26)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !3, line: 563, type: !497, isLocal: true, isDefinition: true)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 616, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 77)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !3, line: 568, type: !502, isLocal: true, isDefinition: true)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 672, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 84)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !3, line: 574, type: !417, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !3, line: 578, type: !296, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !3, line: 581, type: !511, isLocal: true, isDefinition: true)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 560, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 70)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !3, line: 493, type: !468, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !3, line: 496, type: !518, isLocal: true, isDefinition: true)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 312, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 39)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !3, line: 510, type: !301, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !3, line: 515, type: !480, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !3, line: 437, type: !256, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !3, line: 440, type: !256, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !3, line: 420, type: !284, isLocal: true, isDefinition: true)
!531 = !{i32 7, !"Dwarf Version", i32 5}
!532 = !{i32 2, !"Debug Info Version", i32 3}
!533 = !{i32 1, !"wchar_size", i32 2}
!534 = !{i32 8, !"cf-protection-branch", i32 1}
!535 = !{i32 4, !"function_return_thunk_extern", i32 1}
!536 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!537 = !{i32 1, !"Code Model", i32 2}
!538 = !{i32 1, !"override-stack-alignment", i32 8}
!539 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!540 = distinct !DISubprogram(name: "pci_mmconfig_add", scope: !3, file: !3, line: 99, type: !541, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !543)
!541 = !DISubroutineType(types: !542)
!542 = !{!186, !109, !109, !109, !198}
!543 = !{!544, !545, !546, !547, !548}
!544 = !DILocalVariable(name: "segment", arg: 1, scope: !540, file: !3, line: 99, type: !109)
!545 = !DILocalVariable(name: "start", arg: 2, scope: !540, file: !3, line: 99, type: !109)
!546 = !DILocalVariable(name: "end", arg: 3, scope: !540, file: !3, line: 100, type: !109)
!547 = !DILocalVariable(name: "addr", arg: 4, scope: !540, file: !3, line: 100, type: !198)
!548 = !DILocalVariable(name: "new", scope: !540, file: !3, line: 102, type: !186)
!549 = !DILocation(line: 99, column: 54, scope: !540)
!550 = !DILocation(line: 99, column: 67, scope: !540)
!551 = !DILocation(line: 100, column: 12, scope: !540)
!552 = !DILocation(line: 100, column: 21, scope: !540)
!553 = !DILocation(line: 102, column: 2, scope: !540)
!554 = !DILocation(line: 102, column: 27, scope: !540)
!555 = !DILocation(line: 104, column: 27, scope: !540)
!556 = !DILocation(line: 104, column: 36, scope: !540)
!557 = !DILocation(line: 104, column: 43, scope: !540)
!558 = !DILocation(line: 104, column: 48, scope: !540)
!559 = !DILocation(line: 104, column: 8, scope: !540)
!560 = !DILocation(line: 104, column: 6, scope: !540)
!561 = !DILocation(line: 105, column: 6, scope: !562)
!562 = distinct !DILexicalBlock(scope: !540, file: !3, line: 105, column: 6)
!563 = !DILocation(line: 105, column: 6, scope: !540)
!564 = !DILocation(line: 106, column: 3, scope: !565)
!565 = distinct !DILexicalBlock(scope: !562, file: !3, line: 105, column: 11)
!566 = !DILocation(line: 107, column: 19, scope: !565)
!567 = !DILocation(line: 107, column: 3, scope: !565)
!568 = !DILocation(line: 108, column: 3, scope: !565)
!569 = !DILocation(line: 110, column: 3, scope: !570)
!570 = distinct !DILexicalBlock(scope: !565, file: !3, line: 110, column: 3)
!571 = !DILocation(line: 110, column: 3, scope: !572)
!572 = distinct !DILexicalBlock(scope: !570, file: !3, line: 110, column: 3)
!573 = !DILocation(line: 114, column: 2, scope: !565)
!574 = !DILocation(line: 116, column: 9, scope: !540)
!575 = !DILocation(line: 117, column: 1, scope: !540)
!576 = !DILocation(line: 116, column: 2, scope: !540)
!577 = distinct !DISubprogram(name: "pci_mmconfig_alloc", scope: !3, file: !3, line: 70, type: !541, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !578)
!578 = !{!579, !580, !581, !582, !583, !584}
!579 = !DILocalVariable(name: "segment", arg: 1, scope: !577, file: !3, line: 70, type: !109)
!580 = !DILocalVariable(name: "start", arg: 2, scope: !577, file: !3, line: 70, type: !109)
!581 = !DILocalVariable(name: "end", arg: 3, scope: !577, file: !3, line: 71, type: !109)
!582 = !DILocalVariable(name: "addr", arg: 4, scope: !577, file: !3, line: 71, type: !198)
!583 = !DILocalVariable(name: "new", scope: !577, file: !3, line: 73, type: !186)
!584 = !DILocalVariable(name: "res", scope: !577, file: !3, line: 74, type: !211)
!585 = !DILocation(line: 70, column: 56, scope: !577)
!586 = !DILocation(line: 70, column: 69, scope: !577)
!587 = !DILocation(line: 71, column: 14, scope: !577)
!588 = !DILocation(line: 71, column: 23, scope: !577)
!589 = !DILocation(line: 73, column: 2, scope: !577)
!590 = !DILocation(line: 73, column: 27, scope: !577)
!591 = !DILocation(line: 74, column: 2, scope: !577)
!592 = !DILocation(line: 74, column: 19, scope: !577)
!593 = !DILocation(line: 76, column: 6, scope: !594)
!594 = distinct !DILexicalBlock(scope: !577, file: !3, line: 76, column: 6)
!595 = !DILocation(line: 76, column: 11, scope: !594)
!596 = !DILocation(line: 76, column: 6, scope: !577)
!597 = !DILocation(line: 77, column: 3, scope: !594)
!598 = !DILocation(line: 79, column: 8, scope: !577)
!599 = !DILocation(line: 79, column: 6, scope: !577)
!600 = !DILocation(line: 80, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !577, file: !3, line: 80, column: 6)
!602 = !DILocation(line: 80, column: 6, scope: !577)
!603 = !DILocation(line: 81, column: 3, scope: !601)
!604 = !DILocation(line: 83, column: 17, scope: !577)
!605 = !DILocation(line: 83, column: 2, scope: !577)
!606 = !DILocation(line: 83, column: 7, scope: !577)
!607 = !DILocation(line: 83, column: 15, scope: !577)
!608 = !DILocation(line: 84, column: 17, scope: !577)
!609 = !DILocation(line: 84, column: 2, scope: !577)
!610 = !DILocation(line: 84, column: 7, scope: !577)
!611 = !DILocation(line: 84, column: 15, scope: !577)
!612 = !DILocation(line: 85, column: 19, scope: !577)
!613 = !DILocation(line: 85, column: 2, scope: !577)
!614 = !DILocation(line: 85, column: 7, scope: !577)
!615 = !DILocation(line: 85, column: 17, scope: !577)
!616 = !DILocation(line: 86, column: 17, scope: !577)
!617 = !DILocation(line: 86, column: 2, scope: !577)
!618 = !DILocation(line: 86, column: 7, scope: !577)
!619 = !DILocation(line: 86, column: 15, scope: !577)
!620 = !DILocation(line: 88, column: 9, scope: !577)
!621 = !DILocation(line: 88, column: 14, scope: !577)
!622 = !DILocation(line: 88, column: 6, scope: !577)
!623 = !DILocation(line: 89, column: 15, scope: !577)
!624 = !DILocation(line: 89, column: 22, scope: !577)
!625 = !DILocation(line: 89, column: 20, scope: !577)
!626 = !DILocation(line: 89, column: 2, scope: !577)
!627 = !DILocation(line: 89, column: 7, scope: !577)
!628 = !DILocation(line: 89, column: 13, scope: !577)
!629 = !DILocation(line: 90, column: 13, scope: !577)
!630 = !DILocation(line: 90, column: 20, scope: !577)
!631 = !DILocation(line: 90, column: 18, scope: !577)
!632 = !DILocation(line: 90, column: 50, scope: !577)
!633 = !DILocation(line: 90, column: 2, scope: !577)
!634 = !DILocation(line: 90, column: 7, scope: !577)
!635 = !DILocation(line: 90, column: 11, scope: !577)
!636 = !DILocation(line: 91, column: 2, scope: !577)
!637 = !DILocation(line: 91, column: 7, scope: !577)
!638 = !DILocation(line: 91, column: 13, scope: !577)
!639 = !DILocation(line: 92, column: 11, scope: !577)
!640 = !DILocation(line: 92, column: 16, scope: !577)
!641 = !DILocation(line: 93, column: 41, scope: !577)
!642 = !DILocation(line: 93, column: 50, scope: !577)
!643 = !DILocation(line: 93, column: 57, scope: !577)
!644 = !DILocation(line: 92, column: 2, scope: !577)
!645 = !DILocation(line: 94, column: 14, scope: !577)
!646 = !DILocation(line: 94, column: 19, scope: !577)
!647 = !DILocation(line: 94, column: 2, scope: !577)
!648 = !DILocation(line: 94, column: 7, scope: !577)
!649 = !DILocation(line: 94, column: 12, scope: !577)
!650 = !DILocation(line: 96, column: 9, scope: !577)
!651 = !DILocation(line: 96, column: 2, scope: !577)
!652 = !DILocation(line: 97, column: 1, scope: !577)
!653 = !DISubprogram(name: "mutex_lock", scope: !340, file: !340, line: 227, type: !654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!657 = distinct !DISubprogram(name: "list_add_sorted", scope: !3, file: !3, line: 54, type: !658, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !660)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !186}
!660 = !{!661, !662, !663, !666}
!661 = !DILocalVariable(name: "new", arg: 1, scope: !657, file: !3, line: 54, type: !186)
!662 = !DILocalVariable(name: "cfg", scope: !657, file: !3, line: 56, type: !186)
!663 = !DILocalVariable(name: "__mptr", scope: !664, file: !3, line: 59, type: !176)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 59, column: 2)
!665 = distinct !DILexicalBlock(scope: !657, file: !3, line: 59, column: 2)
!666 = !DILocalVariable(name: "__mptr", scope: !667, file: !3, line: 59, type: !176)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 59, column: 2)
!668 = distinct !DILexicalBlock(scope: !665, file: !3, line: 59, column: 2)
!669 = !DILocation(line: 54, column: 54, scope: !657)
!670 = !DILocation(line: 56, column: 2, scope: !657)
!671 = !DILocation(line: 56, column: 27, scope: !657)
!672 = !DILocation(line: 59, column: 2, scope: !664)
!673 = !DILocation(line: 59, column: 2, scope: !674)
!674 = distinct !DILexicalBlock(scope: !664, file: !3, line: 59, column: 2)
!675 = !DILocation(line: 59, column: 2, scope: !676)
!676 = distinct !DILexicalBlock(scope: !674, file: !3, line: 59, column: 2)
!677 = !DILocation(line: 59, column: 2, scope: !665)
!678 = !DILocation(line: 59, column: 2, scope: !668)
!679 = !DILocation(line: 60, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !3, line: 60, column: 7)
!681 = distinct !DILexicalBlock(scope: !668, file: !3, line: 59, column: 77)
!682 = !DILocation(line: 60, column: 12, scope: !680)
!683 = !DILocation(line: 60, column: 22, scope: !680)
!684 = !DILocation(line: 60, column: 27, scope: !680)
!685 = !DILocation(line: 60, column: 20, scope: !680)
!686 = !DILocation(line: 60, column: 35, scope: !680)
!687 = !DILocation(line: 61, column: 8, scope: !680)
!688 = !DILocation(line: 61, column: 13, scope: !680)
!689 = !DILocation(line: 61, column: 24, scope: !680)
!690 = !DILocation(line: 61, column: 29, scope: !680)
!691 = !DILocation(line: 61, column: 21, scope: !680)
!692 = !DILocation(line: 61, column: 37, scope: !680)
!693 = !DILocation(line: 62, column: 8, scope: !680)
!694 = !DILocation(line: 62, column: 13, scope: !680)
!695 = !DILocation(line: 62, column: 26, scope: !680)
!696 = !DILocation(line: 62, column: 31, scope: !680)
!697 = !DILocation(line: 62, column: 23, scope: !680)
!698 = !DILocation(line: 60, column: 7, scope: !681)
!699 = !DILocation(line: 63, column: 23, scope: !700)
!700 = distinct !DILexicalBlock(scope: !680, file: !3, line: 62, column: 43)
!701 = !DILocation(line: 63, column: 28, scope: !700)
!702 = !DILocation(line: 63, column: 35, scope: !700)
!703 = !DILocation(line: 63, column: 40, scope: !700)
!704 = !DILocation(line: 63, column: 4, scope: !700)
!705 = !DILocation(line: 64, column: 4, scope: !700)
!706 = !DILocation(line: 66, column: 2, scope: !681)
!707 = !DILocation(line: 59, column: 2, scope: !667)
!708 = !DILocation(line: 59, column: 2, scope: !709)
!709 = distinct !DILexicalBlock(scope: !667, file: !3, line: 59, column: 2)
!710 = !DILocation(line: 59, column: 2, scope: !711)
!711 = distinct !DILexicalBlock(scope: !709, file: !3, line: 59, column: 2)
!712 = distinct !{!712, !677, !713, !714, !715}
!713 = !DILocation(line: 66, column: 2, scope: !665)
!714 = !{!"llvm.loop.mustprogress"}
!715 = !{!"llvm.loop.unroll.disable"}
!716 = !DILocation(line: 67, column: 21, scope: !657)
!717 = !DILocation(line: 67, column: 26, scope: !657)
!718 = !DILocation(line: 67, column: 2, scope: !657)
!719 = !DILocation(line: 68, column: 1, scope: !657)
!720 = !DISubprogram(name: "mutex_unlock", scope: !340, file: !340, line: 246, type: !654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!721 = !DISubprogram(name: "_printk", scope: !722, file: !722, line: 153, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!722 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!723 = !DISubroutineType(types: !724)
!724 = !{!109, !205, null}
!725 = distinct !DISubprogram(name: "pci_mmconfig_lookup", scope: !3, file: !3, line: 119, type: !726, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !728)
!726 = !DISubroutineType(types: !727)
!727 = !{!186, !109, !109}
!728 = !{!729, !730, !731, !732, !735}
!729 = !DILocalVariable(name: "segment", arg: 1, scope: !725, file: !3, line: 119, type: !109)
!730 = !DILocalVariable(name: "bus", arg: 2, scope: !725, file: !3, line: 119, type: !109)
!731 = !DILocalVariable(name: "cfg", scope: !725, file: !3, line: 121, type: !186)
!732 = !DILocalVariable(name: "__mptr", scope: !733, file: !3, line: 123, type: !176)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 123, column: 2)
!734 = distinct !DILexicalBlock(scope: !725, file: !3, line: 123, column: 2)
!735 = !DILocalVariable(name: "__mptr", scope: !736, file: !3, line: 123, type: !176)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 123, column: 2)
!737 = distinct !DILexicalBlock(scope: !734, file: !3, line: 123, column: 2)
!738 = !DILocation(line: 119, column: 50, scope: !725)
!739 = !DILocation(line: 119, column: 63, scope: !725)
!740 = !DILocation(line: 121, column: 2, scope: !725)
!741 = !DILocation(line: 121, column: 27, scope: !725)
!742 = !DILocation(line: 123, column: 2, scope: !733)
!743 = !DILocation(line: 123, column: 2, scope: !744)
!744 = distinct !DILexicalBlock(scope: !733, file: !3, line: 123, column: 2)
!745 = !DILocation(line: 123, column: 2, scope: !746)
!746 = distinct !DILexicalBlock(scope: !744, file: !3, line: 123, column: 2)
!747 = !DILocation(line: 123, column: 2, scope: !734)
!748 = !DILocation(line: 123, column: 2, scope: !737)
!749 = !DILocation(line: 124, column: 7, scope: !750)
!750 = distinct !DILexicalBlock(scope: !737, file: !3, line: 124, column: 7)
!751 = !DILocation(line: 124, column: 12, scope: !750)
!752 = !DILocation(line: 124, column: 23, scope: !750)
!753 = !DILocation(line: 124, column: 20, scope: !750)
!754 = !DILocation(line: 124, column: 31, scope: !750)
!755 = !DILocation(line: 125, column: 7, scope: !750)
!756 = !DILocation(line: 125, column: 12, scope: !750)
!757 = !DILocation(line: 125, column: 25, scope: !750)
!758 = !DILocation(line: 125, column: 22, scope: !750)
!759 = !DILocation(line: 125, column: 29, scope: !750)
!760 = !DILocation(line: 125, column: 32, scope: !750)
!761 = !DILocation(line: 125, column: 39, scope: !750)
!762 = !DILocation(line: 125, column: 44, scope: !750)
!763 = !DILocation(line: 125, column: 36, scope: !750)
!764 = !DILocation(line: 124, column: 7, scope: !737)
!765 = !DILocation(line: 126, column: 11, scope: !750)
!766 = !DILocation(line: 126, column: 4, scope: !750)
!767 = !DILocation(line: 123, column: 2, scope: !736)
!768 = !DILocation(line: 123, column: 2, scope: !769)
!769 = distinct !DILexicalBlock(scope: !736, file: !3, line: 123, column: 2)
!770 = !DILocation(line: 123, column: 2, scope: !771)
!771 = distinct !DILexicalBlock(scope: !769, file: !3, line: 123, column: 2)
!772 = distinct !{!772, !747, !773, !714, !715}
!773 = !DILocation(line: 126, column: 11, scope: !734)
!774 = !DILocation(line: 128, column: 2, scope: !725)
!775 = !DILocation(line: 129, column: 1, scope: !725)
!776 = distinct !DISubprogram(name: "pci_mmcfg_early_init", scope: !3, file: !3, line: 723, type: !777, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!777 = !DISubroutineType(types: !778)
!778 = !{null}
!779 = !DILocation(line: 725, column: 6, scope: !780)
!780 = distinct !DILexicalBlock(scope: !776, file: !3, line: 725, column: 6)
!781 = !DILocation(line: 725, column: 16, scope: !780)
!782 = !DILocation(line: 725, column: 6, scope: !776)
!783 = !DILocation(line: 726, column: 7, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 726, column: 7)
!785 = distinct !DILexicalBlock(scope: !780, file: !3, line: 725, column: 36)
!786 = !DILocation(line: 726, column: 7, scope: !785)
!787 = !DILocation(line: 727, column: 17, scope: !784)
!788 = !DILocation(line: 727, column: 4, scope: !784)
!789 = !DILocation(line: 729, column: 4, scope: !784)
!790 = !DILocation(line: 730, column: 3, scope: !785)
!791 = !DILocation(line: 733, column: 2, scope: !785)
!792 = !DILocation(line: 734, column: 1, scope: !776)
!793 = distinct !DISubprogram(name: "pci_mmcfg_check_hostbridge", scope: !3, file: !3, line: 344, type: !794, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !796)
!794 = !DISubroutineType(types: !795)
!795 = !{!109}
!796 = !{!797, !798, !799, !800, !801, !802, !803}
!797 = !DILocalVariable(name: "l", scope: !793, file: !3, line: 346, type: !234)
!798 = !DILocalVariable(name: "bus", scope: !793, file: !3, line: 347, type: !234)
!799 = !DILocalVariable(name: "devfn", scope: !793, file: !3, line: 347, type: !234)
!800 = !DILocalVariable(name: "vendor", scope: !793, file: !3, line: 348, type: !218)
!801 = !DILocalVariable(name: "device", scope: !793, file: !3, line: 348, type: !218)
!802 = !DILocalVariable(name: "i", scope: !793, file: !3, line: 349, type: !109)
!803 = !DILocalVariable(name: "name", scope: !793, file: !3, line: 350, type: !205)
!804 = !DILocation(line: 346, column: 2, scope: !793)
!805 = !DILocation(line: 346, column: 6, scope: !793)
!806 = !DILocation(line: 347, column: 2, scope: !793)
!807 = !DILocation(line: 347, column: 6, scope: !793)
!808 = !DILocation(line: 347, column: 11, scope: !793)
!809 = !DILocation(line: 348, column: 2, scope: !793)
!810 = !DILocation(line: 348, column: 6, scope: !793)
!811 = !DILocation(line: 348, column: 14, scope: !793)
!812 = !DILocation(line: 349, column: 2, scope: !793)
!813 = !DILocation(line: 349, column: 6, scope: !793)
!814 = !DILocation(line: 350, column: 2, scope: !793)
!815 = !DILocation(line: 350, column: 14, scope: !793)
!816 = !DILocation(line: 352, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !793, file: !3, line: 352, column: 6)
!818 = !DILocation(line: 352, column: 6, scope: !793)
!819 = !DILocation(line: 353, column: 3, scope: !817)
!820 = !DILocation(line: 355, column: 2, scope: !793)
!821 = !DILocation(line: 357, column: 9, scope: !822)
!822 = distinct !DILexicalBlock(scope: !793, file: !3, line: 357, column: 2)
!823 = !DILocation(line: 357, column: 7, scope: !822)
!824 = !DILocation(line: 357, column: 14, scope: !825)
!825 = distinct !DILexicalBlock(scope: !822, file: !3, line: 357, column: 2)
!826 = !DILocation(line: 357, column: 16, scope: !825)
!827 = !DILocation(line: 357, column: 2, scope: !822)
!828 = !DILocation(line: 358, column: 27, scope: !829)
!829 = distinct !DILexicalBlock(scope: !825, file: !3, line: 357, column: 53)
!830 = !DILocation(line: 358, column: 10, scope: !829)
!831 = !DILocation(line: 358, column: 30, scope: !829)
!832 = !DILocation(line: 358, column: 7, scope: !829)
!833 = !DILocation(line: 359, column: 28, scope: !829)
!834 = !DILocation(line: 359, column: 11, scope: !829)
!835 = !DILocation(line: 359, column: 31, scope: !829)
!836 = !DILocation(line: 359, column: 9, scope: !829)
!837 = !DILocation(line: 360, column: 3, scope: !829)
!838 = !DILocation(line: 360, column: 16, scope: !829)
!839 = !DILocation(line: 360, column: 24, scope: !829)
!840 = !DILocation(line: 360, column: 29, scope: !829)
!841 = !DILocation(line: 361, column: 12, scope: !829)
!842 = !DILocation(line: 361, column: 14, scope: !829)
!843 = !DILocation(line: 361, column: 10, scope: !829)
!844 = !DILocation(line: 362, column: 13, scope: !829)
!845 = !DILocation(line: 362, column: 15, scope: !829)
!846 = !DILocation(line: 362, column: 22, scope: !829)
!847 = !DILocation(line: 362, column: 12, scope: !829)
!848 = !DILocation(line: 362, column: 10, scope: !829)
!849 = !DILocation(line: 364, column: 8, scope: !829)
!850 = !DILocation(line: 365, column: 24, scope: !851)
!851 = distinct !DILexicalBlock(scope: !829, file: !3, line: 365, column: 7)
!852 = !DILocation(line: 365, column: 7, scope: !851)
!853 = !DILocation(line: 365, column: 27, scope: !851)
!854 = !DILocation(line: 365, column: 37, scope: !851)
!855 = !DILocation(line: 365, column: 34, scope: !851)
!856 = !DILocation(line: 365, column: 44, scope: !851)
!857 = !DILocation(line: 366, column: 24, scope: !851)
!858 = !DILocation(line: 366, column: 7, scope: !851)
!859 = !DILocation(line: 366, column: 27, scope: !851)
!860 = !DILocation(line: 366, column: 37, scope: !851)
!861 = !DILocation(line: 366, column: 34, scope: !851)
!862 = !DILocation(line: 365, column: 7, scope: !829)
!863 = !DILocation(line: 367, column: 28, scope: !851)
!864 = !DILocation(line: 367, column: 11, scope: !851)
!865 = !DILocation(line: 367, column: 31, scope: !851)
!866 = !DILocation(line: 367, column: 9, scope: !851)
!867 = !DILocation(line: 367, column: 4, scope: !851)
!868 = !DILocation(line: 369, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !829, file: !3, line: 369, column: 7)
!870 = !DILocation(line: 369, column: 7, scope: !829)
!871 = !DILocation(line: 370, column: 4, scope: !872)
!872 = distinct !DILexicalBlock(scope: !869, file: !3, line: 370, column: 4)
!873 = !DILocation(line: 370, column: 4, scope: !874)
!874 = distinct !DILexicalBlock(scope: !872, file: !3, line: 370, column: 4)
!875 = !DILocation(line: 370, column: 4, scope: !869)
!876 = !DILocation(line: 371, column: 2, scope: !829)
!877 = !DILocation(line: 357, column: 49, scope: !825)
!878 = !DILocation(line: 357, column: 2, scope: !825)
!879 = distinct !{!879, !827, !880, !714, !715}
!880 = !DILocation(line: 371, column: 2, scope: !822)
!881 = !DILocation(line: 374, column: 2, scope: !793)
!882 = !DILocation(line: 376, column: 10, scope: !793)
!883 = !DILocation(line: 376, column: 9, scope: !793)
!884 = !DILocation(line: 376, column: 2, scope: !793)
!885 = !DILocation(line: 377, column: 1, scope: !793)
!886 = !DISubprogram(name: "acpi_table_parse", scope: !887, file: !887, line: 242, type: !888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!887 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!888 = !DISubroutineType(types: !889)
!889 = !{!109, !216, !890}
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_tbl_table_handler", file: !887, line: 129, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!109, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!895 = distinct !DISubprogram(name: "pci_parse_mcfg", scope: !3, file: !3, line: 627, type: !892, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !896)
!896 = !{!897, !898, !899, !900, !901, !902}
!897 = !DILocalVariable(name: "header", arg: 1, scope: !895, file: !3, line: 627, type: !894)
!898 = !DILocalVariable(name: "mcfg", scope: !895, file: !3, line: 629, type: !236)
!899 = !DILocalVariable(name: "cfg_table", scope: !895, file: !3, line: 630, type: !264)
!900 = !DILocalVariable(name: "cfg", scope: !895, file: !3, line: 630, type: !264)
!901 = !DILocalVariable(name: "i", scope: !895, file: !3, line: 631, type: !175)
!902 = !DILocalVariable(name: "entries", scope: !895, file: !3, line: 632, type: !109)
!903 = !DILocation(line: 627, column: 60, scope: !895)
!904 = !DILocation(line: 629, column: 2, scope: !895)
!905 = !DILocation(line: 629, column: 26, scope: !895)
!906 = !DILocation(line: 630, column: 2, scope: !895)
!907 = !DILocation(line: 630, column: 31, scope: !895)
!908 = !DILocation(line: 630, column: 43, scope: !895)
!909 = !DILocation(line: 631, column: 2, scope: !895)
!910 = !DILocation(line: 631, column: 16, scope: !895)
!911 = !DILocation(line: 632, column: 2, scope: !895)
!912 = !DILocation(line: 632, column: 6, scope: !895)
!913 = !DILocation(line: 634, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !895, file: !3, line: 634, column: 6)
!915 = !DILocation(line: 634, column: 6, scope: !895)
!916 = !DILocation(line: 635, column: 3, scope: !914)
!917 = !DILocation(line: 637, column: 35, scope: !895)
!918 = !DILocation(line: 637, column: 7, scope: !895)
!919 = !DILocation(line: 640, column: 2, scope: !895)
!920 = !DILocation(line: 641, column: 10, scope: !895)
!921 = !DILocation(line: 642, column: 6, scope: !895)
!922 = !DILocation(line: 642, column: 14, scope: !895)
!923 = !DILocation(line: 642, column: 21, scope: !895)
!924 = !DILocation(line: 642, column: 4, scope: !895)
!925 = !DILocation(line: 643, column: 2, scope: !895)
!926 = !DILocation(line: 643, column: 9, scope: !895)
!927 = !DILocation(line: 643, column: 11, scope: !895)
!928 = !DILocation(line: 644, column: 10, scope: !929)
!929 = distinct !DILexicalBlock(scope: !895, file: !3, line: 643, column: 51)
!930 = !DILocation(line: 645, column: 5, scope: !929)
!931 = distinct !{!931, !925, !932, !714, !715}
!932 = !DILocation(line: 646, column: 2, scope: !895)
!933 = !DILocation(line: 647, column: 6, scope: !934)
!934 = distinct !DILexicalBlock(scope: !895, file: !3, line: 647, column: 6)
!935 = !DILocation(line: 647, column: 14, scope: !934)
!936 = !DILocation(line: 647, column: 6, scope: !895)
!937 = !DILocation(line: 648, column: 3, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !3, line: 648, column: 3)
!939 = distinct !DILexicalBlock(scope: !934, file: !3, line: 647, column: 20)
!940 = !DILocation(line: 648, column: 3, scope: !941)
!941 = distinct !DILexicalBlock(scope: !938, file: !3, line: 648, column: 3)
!942 = !DILocation(line: 649, column: 3, scope: !939)
!943 = !DILocation(line: 652, column: 47, scope: !895)
!944 = !DILocation(line: 652, column: 12, scope: !895)
!945 = !DILocation(line: 653, column: 9, scope: !946)
!946 = distinct !DILexicalBlock(scope: !895, file: !3, line: 653, column: 2)
!947 = !DILocation(line: 653, column: 7, scope: !946)
!948 = !DILocation(line: 653, column: 14, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !3, line: 653, column: 2)
!950 = !DILocation(line: 653, column: 18, scope: !949)
!951 = !DILocation(line: 653, column: 16, scope: !949)
!952 = !DILocation(line: 653, column: 2, scope: !946)
!953 = !DILocation(line: 654, column: 10, scope: !954)
!954 = distinct !DILexicalBlock(scope: !949, file: !3, line: 653, column: 32)
!955 = !DILocation(line: 654, column: 20, scope: !954)
!956 = !DILocation(line: 654, column: 7, scope: !954)
!957 = !DILocation(line: 655, column: 29, scope: !958)
!958 = distinct !DILexicalBlock(scope: !954, file: !3, line: 655, column: 7)
!959 = !DILocation(line: 655, column: 35, scope: !958)
!960 = !DILocation(line: 655, column: 7, scope: !958)
!961 = !DILocation(line: 655, column: 7, scope: !954)
!962 = !DILocation(line: 656, column: 4, scope: !963)
!963 = distinct !DILexicalBlock(scope: !958, file: !3, line: 655, column: 41)
!964 = !DILocation(line: 657, column: 4, scope: !963)
!965 = !DILocation(line: 660, column: 24, scope: !966)
!966 = distinct !DILexicalBlock(scope: !954, file: !3, line: 660, column: 7)
!967 = !DILocation(line: 660, column: 29, scope: !966)
!968 = !DILocation(line: 660, column: 42, scope: !966)
!969 = !DILocation(line: 660, column: 47, scope: !966)
!970 = !DILocation(line: 661, column: 8, scope: !966)
!971 = !DILocation(line: 661, column: 13, scope: !966)
!972 = !DILocation(line: 661, column: 29, scope: !966)
!973 = !DILocation(line: 661, column: 34, scope: !966)
!974 = !DILocation(line: 660, column: 7, scope: !966)
!975 = !DILocation(line: 661, column: 43, scope: !966)
!976 = !DILocation(line: 660, column: 7, scope: !954)
!977 = !DILocation(line: 662, column: 4, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !3, line: 662, column: 4)
!979 = distinct !DILexicalBlock(scope: !966, file: !3, line: 661, column: 52)
!980 = !DILocation(line: 662, column: 4, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !3, line: 662, column: 4)
!982 = !DILocation(line: 663, column: 4, scope: !979)
!983 = !DILocation(line: 664, column: 4, scope: !979)
!984 = !DILocation(line: 666, column: 2, scope: !954)
!985 = !DILocation(line: 653, column: 28, scope: !949)
!986 = !DILocation(line: 653, column: 2, scope: !949)
!987 = distinct !{!987, !952, !988, !714, !715}
!988 = !DILocation(line: 666, column: 2, scope: !946)
!989 = !DILocation(line: 668, column: 2, scope: !895)
!990 = !DILocation(line: 669, column: 1, scope: !895)
!991 = distinct !DISubprogram(name: "__pci_mmcfg_init", scope: !3, file: !3, line: 697, type: !992, scopeLine: 698, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !994)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !109}
!994 = !{!995, !996, !999, !1002}
!995 = !DILocalVariable(name: "early", arg: 1, scope: !991, file: !3, line: 697, type: !109)
!996 = !DILocalVariable(name: "cfg", scope: !997, file: !3, line: 704, type: !272)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 703, column: 28)
!998 = distinct !DILexicalBlock(scope: !991, file: !3, line: 703, column: 6)
!999 = !DILocalVariable(name: "__mptr", scope: !1000, file: !3, line: 706, type: !176)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 706, column: 3)
!1001 = distinct !DILexicalBlock(scope: !997, file: !3, line: 706, column: 3)
!1002 = !DILocalVariable(name: "__mptr", scope: !1003, file: !3, line: 706, type: !176)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 706, column: 3)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 706, column: 3)
!1005 = !DILocation(line: 697, column: 41, scope: !991)
!1006 = !DILocation(line: 699, column: 26, scope: !991)
!1007 = !DILocation(line: 699, column: 2, scope: !991)
!1008 = !DILocation(line: 700, column: 6, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !991, file: !3, line: 700, column: 6)
!1010 = !DILocation(line: 700, column: 6, scope: !991)
!1011 = !DILocation(line: 701, column: 3, scope: !1009)
!1012 = !DILocation(line: 703, column: 6, scope: !998)
!1013 = !DILocation(line: 703, column: 23, scope: !998)
!1014 = !DILocation(line: 703, column: 6, scope: !991)
!1015 = !DILocation(line: 704, column: 3, scope: !997)
!1016 = !DILocation(line: 704, column: 34, scope: !997)
!1017 = !DILocation(line: 706, column: 3, scope: !1000)
!1018 = !DILocation(line: 706, column: 3, scope: !1001)
!1019 = !DILocation(line: 706, column: 3, scope: !1004)
!1020 = !DILocation(line: 707, column: 8, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 707, column: 8)
!1022 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 706, column: 51)
!1023 = !DILocation(line: 707, column: 13, scope: !1021)
!1024 = !DILocation(line: 707, column: 8, scope: !1022)
!1025 = !DILocation(line: 708, column: 5, scope: !1021)
!1026 = !DILocation(line: 709, column: 23, scope: !1022)
!1027 = !DILocation(line: 709, column: 28, scope: !1022)
!1028 = !DILocation(line: 709, column: 21, scope: !1022)
!1029 = !DILocation(line: 710, column: 3, scope: !1022)
!1030 = !DILocation(line: 706, column: 3, scope: !1003)
!1031 = distinct !{!1031, !1018, !1032, !714, !715}
!1032 = !DILocation(line: 710, column: 3, scope: !1001)
!1033 = !DILocation(line: 711, column: 2, scope: !998)
!1034 = !DILocation(line: 711, column: 2, scope: !997)
!1035 = !DILocation(line: 713, column: 6, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !991, file: !3, line: 713, column: 6)
!1037 = !DILocation(line: 713, column: 6, scope: !991)
!1038 = !DILocation(line: 714, column: 16, scope: !1036)
!1039 = !DILocation(line: 714, column: 26, scope: !1036)
!1040 = !DILocation(line: 714, column: 45, scope: !1036)
!1041 = !DILocation(line: 714, column: 13, scope: !1036)
!1042 = !DILocation(line: 714, column: 3, scope: !1036)
!1043 = !DILocation(line: 716, column: 3, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 715, column: 7)
!1045 = !DILocation(line: 717, column: 30, scope: !1044)
!1046 = !DILocation(line: 719, column: 1, scope: !991)
!1047 = distinct !DISubprogram(name: "pci_mmcfg_late_init", scope: !3, file: !3, line: 736, type: !777, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1048 = !DILocation(line: 739, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 739, column: 6)
!1050 = !DILocation(line: 739, column: 17, scope: !1049)
!1051 = !DILocation(line: 739, column: 37, scope: !1049)
!1052 = !DILocation(line: 739, column: 6, scope: !1047)
!1053 = !DILocation(line: 740, column: 3, scope: !1049)
!1054 = !DILocation(line: 742, column: 6, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 742, column: 6)
!1056 = !DILocation(line: 742, column: 6, scope: !1047)
!1057 = !DILocation(line: 743, column: 3, scope: !1055)
!1058 = !DILocation(line: 746, column: 6, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 746, column: 6)
!1060 = !DILocation(line: 746, column: 16, scope: !1059)
!1061 = !DILocation(line: 746, column: 33, scope: !1059)
!1062 = !DILocation(line: 746, column: 6, scope: !1047)
!1063 = !DILocation(line: 747, column: 3, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 746, column: 54)
!1065 = !DILocation(line: 748, column: 3, scope: !1064)
!1066 = !DILocation(line: 749, column: 2, scope: !1064)
!1067 = !DILocation(line: 750, column: 1, scope: !1047)
!1068 = distinct !DISubprogram(name: "__initstub__kmod_mmconfig_shared__296_779_pci_mmcfg_late_insert_resources7", scope: !3, file: !3, line: 779, type: !794, scopeLine: 779, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1069 = !DILocation(line: 779, column: 1, scope: !1068)
!1070 = distinct !DISubprogram(name: "pci_mmcfg_late_insert_resources", scope: !3, file: !3, line: 752, type: !794, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1071)
!1071 = !{!1072, !1073, !1076}
!1072 = !DILocalVariable(name: "cfg", scope: !1070, file: !3, line: 754, type: !186)
!1073 = !DILocalVariable(name: "__mptr", scope: !1074, file: !3, line: 767, type: !176)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 767, column: 2)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 767, column: 2)
!1076 = !DILocalVariable(name: "__mptr", scope: !1077, file: !3, line: 767, type: !176)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 767, column: 2)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 767, column: 2)
!1079 = !DILocation(line: 754, column: 2, scope: !1070)
!1080 = !DILocation(line: 754, column: 27, scope: !1070)
!1081 = !DILocation(line: 756, column: 26, scope: !1070)
!1082 = !DILocation(line: 759, column: 7, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 759, column: 6)
!1084 = !DILocation(line: 759, column: 17, scope: !1083)
!1085 = !DILocation(line: 759, column: 37, scope: !1083)
!1086 = !DILocation(line: 759, column: 6, scope: !1070)
!1087 = !DILocation(line: 760, column: 3, scope: !1083)
!1088 = !DILocation(line: 767, column: 2, scope: !1074)
!1089 = !DILocation(line: 767, column: 2, scope: !1075)
!1090 = !DILocation(line: 767, column: 2, scope: !1078)
!1091 = !DILocation(line: 768, column: 8, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 768, column: 7)
!1093 = !DILocation(line: 768, column: 13, scope: !1092)
!1094 = !DILocation(line: 768, column: 17, scope: !1092)
!1095 = !DILocation(line: 768, column: 7, scope: !1078)
!1096 = !DILocation(line: 769, column: 38, scope: !1092)
!1097 = !DILocation(line: 769, column: 43, scope: !1092)
!1098 = !DILocation(line: 769, column: 4, scope: !1092)
!1099 = !DILocation(line: 767, column: 2, scope: !1077)
!1100 = distinct !{!1100, !1089, !1101, !714, !715}
!1101 = !DILocation(line: 769, column: 46, scope: !1075)
!1102 = !DILocation(line: 771, column: 2, scope: !1070)
!1103 = !DILocation(line: 772, column: 1, scope: !1070)
!1104 = distinct !DISubprogram(name: "pci_mmconfig_insert", scope: !3, file: !3, line: 782, type: !1105, scopeLine: 784, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5468)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!109, !1107, !218, !222, !222, !197}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !1109)
!1109 = !{!1110, !5008, !5009, !5012, !5013, !5066, !5151, !5152, !5153, !5154, !5155, !5162, !5254, !5267, !5277, !5281, !5283, !5284, !5285, !5289, !5296, !5297, !5300, !5303, !5307, !5410, !5411, !5412, !5413, !5414, !5415, !5445, !5446, !5447, !5450, !5453, !5462, !5463, !5464, !5465, !5466, !5467}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1108, file: !94, line: 706, baseType: !1111, size: 512)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1112, line: 64, size: 512, elements: !1113)
!1112 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1113 = !{!1114, !1115, !1116, !1118, !1172, !4907, !4998, !5003, !5004, !5005, !5006, !5007}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1111, file: !1112, line: 65, baseType: !205, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1111, file: !1112, line: 66, baseType: !181, size: 128, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1111, file: !1112, line: 67, baseType: !1117, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1111, file: !1112, line: 68, baseType: !1119, size: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1112, line: 168, size: 768, elements: !1121)
!1121 = !{!1122, !1123, !1132, !1133}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1120, file: !1112, line: 169, baseType: !181, size: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1120, file: !1112, line: 170, baseType: !1124, size: 32, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1125, line: 29, baseType: !1126)
!1125 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1125, line: 17, size: 32, elements: !1127)
!1127 = !{!1128}
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !1125, line: 18, baseType: !1129, size: 32)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1126, file: !1125, line: 18, size: 32, elements: !1130)
!1130 = !{!1131}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1129, file: !1125, line: 19, baseType: !355, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1120, file: !1112, line: 171, baseType: !1111, size: 512, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1120, file: !1112, line: 172, baseType: !1134, size: 64, offset: 704)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1136)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1112, line: 133, size: 192, elements: !1137)
!1137 = !{!1138, !1145, !1150}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1136, file: !1112, line: 134, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!109, !1143}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1111)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1136, file: !1112, line: 135, baseType: !1146, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!205, !1143}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1136, file: !1112, line: 136, baseType: !1151, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1152)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!109, !1143, !1155}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1112, line: 125, size: 20736, elements: !1157)
!1157 = !{!1158, !1162, !1166, !1167, !1171}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1156, file: !1112, line: 126, baseType: !1159, size: 192)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 192, elements: !1160)
!1160 = !{!1161}
!1161 = !DISubrange(count: 3)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1156, file: !1112, line: 127, baseType: !1163, size: 4096, offset: 192)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 4096, elements: !1164)
!1164 = !{!1165}
!1165 = !DISubrange(count: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1156, file: !1112, line: 128, baseType: !109, size: 32, offset: 4288)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1156, file: !1112, line: 129, baseType: !1168, size: 16384, offset: 4320)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 16384, elements: !1169)
!1169 = !{!1170}
!1170 = !DISubrange(count: 2048)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1156, file: !1112, line: 130, baseType: !109, size: 32, offset: 20704)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1111, file: !1112, line: 69, baseType: !1173, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1175)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1112, line: 116, size: 384, elements: !1176)
!1176 = !{!1177, !1181, !1209, !4869, !4897, !4901}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1175, file: !1112, line: 117, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{null, !1117}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1175, file: !1112, line: 118, baseType: !1182, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1185, line: 254, size: 128, elements: !1186)
!1185 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1186 = !{!1187, !1202}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1184, file: !1185, line: 255, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!1191, !1117, !1196, !216}
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !182, line: 66, baseType: !1192)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !1193, line: 73, baseType: !1194)
!1193 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !1193, line: 15, baseType: !1195)
!1195 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1185, line: 30, size: 128, elements: !1198)
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1197, file: !1185, line: 31, baseType: !205, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1197, file: !1185, line: 32, baseType: !1201, size: 16, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !182, line: 24, baseType: !220)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1184, file: !1185, line: 256, baseType: !1203, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!1191, !1117, !1196, !205, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !182, line: 61, baseType: !1207)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1193, line: 72, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1193, line: 16, baseType: !175)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1175, file: !1112, line: 119, baseType: !1210, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1185, line: 84, size: 320, elements: !1214)
!1214 = !{!1215, !1216, !1220, !4865, !4867}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1213, file: !1185, line: 85, baseType: !205, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1213, file: !1185, line: 86, baseType: !1217, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!1201, !1117, !1196, !109}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1213, file: !1185, line: 88, baseType: !1221, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!1201, !1117, !1224, !109}
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1185, line: 175, size: 512, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !4856, !4860, !4861}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1225, file: !1185, line: 176, baseType: !1197, size: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1225, file: !1185, line: 177, baseType: !1206, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1225, file: !1185, line: 178, baseType: !176, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1225, file: !1185, line: 179, baseType: !1231, size: 64, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!1234}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !1236)
!1236 = !{!1237, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4850, !4851, !4852, !4853, !4854, !4855}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1235, file: !14, line: 473, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1251, !1252, !1259, !1260, !1263, !1264, !4621, !4622, !4623, !4624, !4625, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4665, !4668, !4669, !4670, !4687, !4688, !4689, !4690}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1239, file: !14, line: 642, baseType: !1201, size: 16)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1239, file: !14, line: 643, baseType: !220, size: 16, offset: 16)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1239, file: !14, line: 644, baseType: !1244, size: 32, offset: 32)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1245, line: 23, baseType: !1246)
!1245 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1245, line: 21, size: 32, elements: !1247)
!1247 = !{!1248}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1246, file: !1245, line: 22, baseType: !1249, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !182, line: 37, baseType: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !1193, line: 49, baseType: !7)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1239, file: !14, line: 645, baseType: !181, size: 128, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1239, file: !14, line: 646, baseType: !1253, size: 32, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1245, line: 28, baseType: !1254)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1245, line: 26, size: 32, elements: !1255)
!1255 = !{!1256}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1254, file: !1245, line: 27, baseType: !1257, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !182, line: 38, baseType: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !1193, line: 50, baseType: !7)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1239, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1239, file: !14, line: 650, baseType: !1261, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1239, file: !14, line: 651, baseType: !1261, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1239, file: !14, line: 654, baseType: !1265, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !1268)
!1268 = !{!1269, !4449, !4459, !4463, !4467, !4471, !4475, !4479, !4483, !4487, !4491, !4492, !4496, !4500, !4537, !4566, !4570, !4576, !4580, !4584, !4588, !4592, !4596, !4602, !4606}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1267, file: !14, line: 1967, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!1273, !1238, !1273, !7}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1275, line: 82, size: 1536, elements: !1276)
!1275 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1276 = !{!1277, !1278, !1288, !1296, !1297, !1312, !1313, !1315, !1328, !4433, !4434, !4435, !4436, !4441, !4442, !4443}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1274, file: !1275, line: 84, baseType: !7, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1274, file: !1275, line: 85, baseType: !1279, size: 32, offset: 32)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !1280, line: 275, baseType: !1281)
!1280 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !1280, line: 275, size: 32, elements: !1282)
!1282 = !{!1283}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1281, file: !1280, line: 275, baseType: !1284, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !1280, line: 69, baseType: !1285)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !1280, line: 64, size: 32, elements: !1286)
!1286 = !{!1287}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1285, file: !1280, line: 65, baseType: !7, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1274, file: !1275, line: 86, baseType: !1289, size: 128, offset: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1290, line: 38, size: 128, elements: !1291)
!1290 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1291 = !{!1292, !1294}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1289, file: !1290, line: 39, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1289, file: !1290, line: 39, baseType: !1295, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1274, file: !1275, line: 87, baseType: !1273, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1274, file: !1275, line: 88, baseType: !1298, size: 128, offset: 256)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1275, line: 49, size: 128, elements: !1299)
!1299 = !{!1300, !1309}
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !1275, line: 50, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !1275, line: 50, size: 64, elements: !1302)
!1302 = !{!1303, !1308}
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !1275, line: 51, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1275, line: 51, size: 64, elements: !1305)
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1304, file: !1275, line: 52, baseType: !234, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1304, file: !1275, line: 52, baseType: !234, size: 32, offset: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1301, file: !1275, line: 54, baseType: !198, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1298, file: !1275, line: 56, baseType: !1310, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1274, file: !1275, line: 89, baseType: !1238, size: 64, offset: 384)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1274, file: !1275, line: 91, baseType: !1314, size: 256, offset: 448)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 256, elements: !469)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1274, file: !1275, line: 94, baseType: !1316, size: 64, offset: 704)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1317, line: 25, size: 64, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1318 = !{!1319}
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !1317, line: 26, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1316, file: !1317, line: 26, size: 64, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1320, file: !1317, line: 28, baseType: !200, size: 64, align: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1320, file: !1317, line: 30, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1320, file: !1317, line: 30, size: 64, elements: !1325)
!1325 = !{!1326, !1327}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1324, file: !1317, line: 31, baseType: !1124, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1324, file: !1317, line: 32, baseType: !109, size: 32, offset: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1274, file: !1275, line: 95, baseType: !1329, size: 64, offset: 768)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1275, line: 128, size: 1024, align: 512, elements: !1332)
!1332 = !{!1333, !1337, !1338, !1345, !1351, !1355, !1359, !1363, !1364, !1368, !1372, !4423, !4427}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1331, file: !1275, line: 129, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!109, !1273, !7}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1331, file: !1275, line: 130, baseType: !1334, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1331, file: !1275, line: 131, baseType: !1339, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!109, !1342, !1344}
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1274)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1331, file: !1275, line: 132, baseType: !1346, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!109, !1342, !7, !205, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1298)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1331, file: !1275, line: 134, baseType: !1352, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!109, !1342}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1331, file: !1275, line: 135, baseType: !1356, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!109, !1273}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1331, file: !1275, line: 136, baseType: !1360, size: 64, offset: 384)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !1273}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1331, file: !1275, line: 137, baseType: !1360, size: 64, offset: 448)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1331, file: !1275, line: 138, baseType: !1365, size: 64, offset: 512)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !1273, !1238}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1331, file: !1275, line: 139, baseType: !1369, size: 64, offset: 576)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!216, !1273, !216, !109}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1331, file: !1275, line: 140, baseType: !1373, size: 64, offset: 640)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!1376, !4422}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1378, line: 70, size: 256, elements: !1379)
!1378 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1379 = !{!1380, !1381, !4418, !4419}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1377, file: !1378, line: 71, baseType: !1273, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1377, file: !1378, line: 72, baseType: !1382, size: 64, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !1384)
!1384 = !{!1385, !1386, !1389, !1390, !1391, !1394, !1845, !2934, !2974, !3059, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3076, !3080, !3081, !3084, !3087, !3090, !3093, !3094, !3095, !3136, !4352, !4353, !4354, !4355, !4356, !4357, !4360, !4361, !4368, !4369, !4370, !4371, !4372, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1383, file: !14, line: 1191, baseType: !181, size: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1383, file: !14, line: 1192, baseType: !1387, size: 32, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !182, line: 21, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !182, line: 18, baseType: !234)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1383, file: !14, line: 1193, baseType: !224, size: 8, offset: 160)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1383, file: !14, line: 1194, baseType: !175, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1383, file: !14, line: 1195, baseType: !1392, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !182, line: 52, baseType: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !1193, line: 88, baseType: !351)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1383, file: !14, line: 1196, baseType: !1395, size: 64, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !1397)
!1397 = !{!1398, !1399, !1400, !1407, !1411, !1415, !1419, !1830, !1831, !1835, !1837, !1838, !1839, !1841, !1842, !1843, !1844}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1396, file: !14, line: 2367, baseType: !205, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1396, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1396, file: !14, line: 2376, baseType: !1401, size: 64, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!109, !1404}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1406, line: 32, flags: DIFlagFwdDecl)
!1406 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1396, file: !14, line: 2377, baseType: !1408, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1410)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1396, file: !14, line: 2378, baseType: !1412, size: 64, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!1273, !1395, !109, !205, !176}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1396, file: !14, line: 2380, baseType: !1416, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !1382}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1396, file: !14, line: 2381, baseType: !1420, size: 64, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1429, !1450, !1476, !1477, !1478, !1479, !1483, !1488, !1489, !1490, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1561, !1563, !1590, !1611, !1612, !1613, !1614, !1623, !1646, !1647, !1650, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1663, !1664, !1790, !1798, !1799, !1800, !1802, !1806, !1807, !1811, !1812, !1813, !1814, !1816, !1817, !1818, !1825, !1826, !1827, !1829}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1421, file: !6, line: 403, baseType: !5, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1421, file: !6, line: 406, baseType: !181, size: 128, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1421, file: !6, line: 409, baseType: !1426, size: 448, offset: 192)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 448, elements: !1427)
!1427 = !{!1428}
!1428 = !DISubrange(count: 56)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1421, file: !6, line: 417, baseType: !1430, size: 768, offset: 640)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1438}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1430, file: !6, line: 46, baseType: !1111, size: 512)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1430, file: !6, line: 47, baseType: !1420, size: 64, offset: 512)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1430, file: !6, line: 48, baseType: !1117, size: 64, offset: 576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1430, file: !6, line: 49, baseType: !1436, size: 64, offset: 640)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1430, file: !6, line: 50, baseType: !1439, size: 64, offset: 704)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1441, line: 26, size: 256, elements: !1442)
!1441 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1440, file: !1441, line: 27, baseType: !7, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1440, file: !1441, line: 28, baseType: !1445, size: 192, offset: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1446, line: 43, size: 192, elements: !1447)
!1446 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1447 = !{!1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1445, file: !1446, line: 44, baseType: !353, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1445, file: !1446, line: 45, baseType: !181, size: 128, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1421, file: !6, line: 418, baseType: !1451, size: 64, offset: 1408)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1453)
!1453 = !{!1454, !1455, !1460, !1464, !1468, !1472}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1452, file: !6, line: 54, baseType: !1197, size: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1452, file: !6, line: 55, baseType: !1456, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!1191, !1451, !1459, !216}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1452, file: !6, line: 57, baseType: !1461, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1191, !1451, !1459, !205, !1206}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1452, file: !6, line: 59, baseType: !1465, size: 64, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !1420, !205}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1452, file: !6, line: 60, baseType: !1469, size: 64, offset: 320)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!109, !1420}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1452, file: !6, line: 61, baseType: !1473, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{null, !1420}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1421, file: !6, line: 419, baseType: !205, size: 64, offset: 1472)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1421, file: !6, line: 420, baseType: !205, size: 64, offset: 1536)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1421, file: !6, line: 421, baseType: !1117, size: 64, offset: 1600)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1421, file: !6, line: 424, baseType: !1480, size: 64, offset: 1664)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1482)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1421, file: !6, line: 425, baseType: !1484, size: 64, offset: 1728)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !199, line: 20, baseType: !1487)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !201, line: 26, baseType: !109)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1421, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1421, file: !6, line: 435, baseType: !339, size: 256, offset: 1856)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1421, file: !6, line: 437, baseType: !1491, size: 64, offset: 2112)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1493, line: 69, size: 320, elements: !1494)
!1493 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1494 = !{!1495, !1496, !1497, !1517, !1519, !1523, !1524}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1492, file: !1493, line: 70, baseType: !205, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1492, file: !1493, line: 71, baseType: !1420, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1492, file: !1493, line: 72, baseType: !1498, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1500)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1493, line: 47, size: 256, elements: !1501)
!1501 = !{!1502, !1503, !1509, !1513}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1500, file: !1493, line: 49, baseType: !7, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1500, file: !1493, line: 51, baseType: !1504, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!109, !205, !1507}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1492)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1500, file: !1493, line: 53, baseType: !1510, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!109, !216, !1507}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1500, file: !1493, line: 55, baseType: !1514, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{null, !176}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1492, file: !1493, line: 73, baseType: !1518, size: 16, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1492, file: !1493, line: 74, baseType: !1520, size: 8, offset: 208)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !199, line: 16, baseType: !1521)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !201, line: 20, baseType: !1522)
!1522 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1492, file: !1493, line: 75, baseType: !222, size: 8, offset: 216)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1492, file: !1493, line: 76, baseType: !1525, size: 64, offset: 256)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1492, file: !1493, line: 76, size: 64, elements: !1526)
!1526 = !{!1527, !1528, !1535}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1525, file: !1493, line: 77, baseType: !176, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1525, file: !1493, line: 78, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1531)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1493, line: 86, size: 128, elements: !1532)
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1531, file: !1493, line: 87, baseType: !7, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1531, file: !1493, line: 88, baseType: !216, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1525, file: !1493, line: 79, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1538)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1493, line: 92, size: 256, elements: !1539)
!1539 = !{!1540, !1541, !1542, !1544, !1545}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1538, file: !1493, line: 94, baseType: !7, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1538, file: !1493, line: 95, baseType: !7, size: 32, offset: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1538, file: !1493, line: 96, baseType: !1543, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1538, file: !1493, line: 97, baseType: !1498, size: 64, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1538, file: !1493, line: 98, baseType: !176, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1421, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1421, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1421, file: !6, line: 442, baseType: !1480, size: 64, offset: 2240)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1421, file: !6, line: 443, baseType: !1484, size: 64, offset: 2304)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1421, file: !6, line: 444, baseType: !321, size: 8, offset: 2368)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1421, file: !6, line: 451, baseType: !321, size: 8, offset: 2376)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1421, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1421, file: !6, line: 455, baseType: !1554, size: 64, offset: 2432)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1556, line: 23, size: 96, elements: !1557)
!1556 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1557 = !{!1558, !1559, !1560}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1555, file: !1556, line: 24, baseType: !109, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1555, file: !1556, line: 24, baseType: !109, size: 32, offset: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1555, file: !1556, line: 24, baseType: !109, size: 32, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1421, file: !6, line: 458, baseType: !1562, size: 64, offset: 2496)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1421, file: !6, line: 460, baseType: !1564, size: 4032, align: 512, offset: 2560)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1565, size: 4032, elements: !1588)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1566)
!1566 = !{!1567, !1568, !1569}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1565, file: !6, line: 363, baseType: !176, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1565, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1565, file: !6, line: 367, baseType: !1570, size: 448, offset: 128)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1571)
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1570, file: !6, line: 320, baseType: !1420, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1570, file: !6, line: 321, baseType: !1574, size: 384, offset: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1575, line: 40, size: 384, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1576 = !{!1577}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1574, file: !1575, line: 41, baseType: !1578, size: 384, align: 64)
!1578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1579, size: 384, align: 64, elements: !1586)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1580, line: 5, size: 192, align: 64, elements: !1581)
!1580 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1581 = !{!1582, !1583, !1585}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1579, file: !1580, line: 6, baseType: !175, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1579, file: !1580, line: 7, baseType: !1584, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1579, file: !1580, line: 8, baseType: !1584, size: 64, offset: 128)
!1586 = !{!1587}
!1587 = !DISubrange(count: 2)
!1588 = !{!1589}
!1589 = !DISubrange(count: 7)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1421, file: !6, line: 463, baseType: !1591, size: 192, offset: 6592)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1592, line: 8, size: 192, elements: !1593)
!1592 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1593 = !{!1594, !1595, !1597}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1591, file: !1592, line: 10, baseType: !7, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1591, file: !1592, line: 11, baseType: !1596, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1591, file: !1592, line: 12, baseType: !1598, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1600, line: 59, size: 48, elements: !1601)
!1600 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1601 = !{!1602, !1606, !1607, !1608, !1609, !1610}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1599, file: !1600, line: 60, baseType: !1603, size: 16)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !199, line: 18, baseType: !1604)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !201, line: 23, baseType: !1605)
!1605 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1599, file: !1600, line: 61, baseType: !1603, size: 16, offset: 16)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1599, file: !1600, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1599, file: !1600, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1599, file: !1600, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1599, file: !1600, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1421, file: !6, line: 465, baseType: !175, size: 64, offset: 6784)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1421, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1421, file: !6, line: 470, baseType: !181, size: 128, offset: 6912)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1421, file: !6, line: 471, baseType: !1615, size: 64, offset: 7040)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1617, line: 33, size: 96, elements: !1618)
!1617 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1618 = !{!1619, !1620, !1621, !1622}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1616, file: !1617, line: 37, baseType: !109, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1616, file: !1617, line: 43, baseType: !109, size: 32, offset: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1616, file: !1617, line: 45, baseType: !220, size: 16, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1616, file: !1617, line: 47, baseType: !220, size: 16, offset: 80)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1421, file: !6, line: 476, baseType: !1624, size: 64, offset: 7104)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1626)
!1626 = !{!1627, !1643, !1644, !1645}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1625, file: !6, line: 379, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1630, line: 204, baseType: !1631)
!1630 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1630, line: 197, size: 192, elements: !1632)
!1632 = !{!1633, !1635, !1636, !1637, !1639, !1641}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1631, file: !1630, line: 198, baseType: !1634, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1630, line: 21, baseType: !235)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1631, file: !1630, line: 199, baseType: !224, size: 8, offset: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1631, file: !1630, line: 200, baseType: !224, size: 8, offset: 40)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1631, file: !1630, line: 201, baseType: !1638, size: 16, offset: 48)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1630, line: 17, baseType: !219)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1631, file: !1630, line: 202, baseType: !1640, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1630, line: 16, baseType: !200)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1631, file: !1630, line: 203, baseType: !1642, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1630, line: 22, baseType: !200)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1625, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1625, file: !6, line: 381, baseType: !216, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1625, file: !6, line: 382, baseType: !216, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1421, file: !6, line: 477, baseType: !1625, size: 256, offset: 7168)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1421, file: !6, line: 480, baseType: !1648, size: 64, offset: 7424)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1421, file: !6, line: 483, baseType: !1651, size: 64, offset: 7488)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1421, file: !6, line: 488, baseType: !216, size: 64, offset: 7552)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1421, file: !6, line: 492, baseType: !176, size: 64, offset: 7616)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1421, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1421, file: !6, line: 495, baseType: !176, size: 64, offset: 7744)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1421, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1421, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1421, file: !6, line: 500, baseType: !1660, size: 64, offset: 7872)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1662, line: 45, baseType: !446)
!1662 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1421, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1421, file: !6, line: 504, baseType: !1665, size: 64, offset: 8000)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1668, line: 96, size: 192, elements: !1669)
!1668 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1669 = !{!1670, !1671, !1750, !1754}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1667, file: !1668, line: 97, baseType: !7, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1667, file: !1668, line: 98, baseType: !1672, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1668, line: 24, size: 3072, elements: !1674)
!1674 = !{!1675, !1677, !1678, !1679, !1680, !1702, !1703, !1704, !1705, !1723, !1735, !1736, !1747, !1748, !1749}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1673, file: !1668, line: 26, baseType: !1676, size: 128)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 128, elements: !1586)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1673, file: !1668, line: 27, baseType: !1676, size: 128, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1673, file: !1668, line: 28, baseType: !109, size: 32, offset: 256)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1673, file: !1668, line: 31, baseType: !1124, size: 32, align: 512, offset: 512)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1673, file: !1668, line: 32, baseType: !1681, size: 960, offset: 576)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1682, line: 206, size: 960, elements: !1683)
!1682 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1683 = !{!1684, !1693, !1696, !1698, !1699, !1701}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1681, file: !1682, line: 207, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !182, line: 232, size: 128, align: 64, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1686, file: !182, line: 233, baseType: !1685, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1686, file: !182, line: 234, baseType: !1690, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !1685}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1681, file: !1682, line: 208, baseType: !1694, size: 256, offset: 64)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1695, size: 256, elements: !246)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1681, file: !1682, line: 209, baseType: !1697, size: 256, offset: 320)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 256, elements: !246)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1681, file: !1682, line: 213, baseType: !1195, size: 64, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1681, file: !1682, line: 215, baseType: !1700, size: 256, offset: 640)
!1700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1195, size: 256, elements: !246)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1681, file: !1682, line: 216, baseType: !222, size: 8, offset: 896)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1673, file: !1668, line: 33, baseType: !175, size: 64, offset: 1536)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1673, file: !1668, line: 34, baseType: !175, size: 64, offset: 1600)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1673, file: !1668, line: 35, baseType: !321, size: 8, offset: 1664)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1673, file: !1668, line: 36, baseType: !1706, size: 320, offset: 1728)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1707, line: 11, size: 320, elements: !1708)
!1707 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1708 = !{!1709, !1716, !1717, !1722}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1706, file: !1707, line: 16, baseType: !1710, size: 128)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !182, line: 198, size: 128, elements: !1711)
!1711 = !{!1712, !1714}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1710, file: !182, line: 199, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1710, file: !182, line: 199, baseType: !1715, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1706, file: !1707, line: 17, baseType: !175, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1706, file: !1707, line: 18, baseType: !1718, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{null, !1721}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1706, file: !1707, line: 19, baseType: !234, size: 32, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1673, file: !1668, line: 37, baseType: !1724, size: 256, offset: 2048)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1725, line: 98, size: 256, elements: !1726)
!1725 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1726 = !{!1727, !1728, !1729}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1724, file: !1725, line: 99, baseType: !343, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1724, file: !1725, line: 100, baseType: !181, size: 128, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1724, file: !1725, line: 101, baseType: !1730, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1725, line: 21, baseType: !1731)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1673, file: !1668, line: 38, baseType: !1686, size: 128, align: 64, offset: 2304)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1673, file: !1668, line: 39, baseType: !1737, size: 64, offset: 2432)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1668, line: 49, size: 768, elements: !1739)
!1739 = !{!1740, !1741, !1742, !1743, !1744, !1745, !1746}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1738, file: !1668, line: 50, baseType: !1124, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1738, file: !1668, line: 51, baseType: !1697, size: 256, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1738, file: !1668, line: 53, baseType: !1697, size: 256, offset: 320)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1738, file: !1668, line: 54, baseType: !175, size: 64, offset: 576)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1738, file: !1668, line: 55, baseType: !1737, size: 64, offset: 640)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1738, file: !1668, line: 56, baseType: !109, size: 32, offset: 704)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1738, file: !1668, line: 57, baseType: !109, size: 32, offset: 736)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1673, file: !1668, line: 40, baseType: !175, size: 64, offset: 2496)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1673, file: !1668, line: 42, baseType: !109, size: 32, offset: 2560)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1673, file: !1668, line: 43, baseType: !1666, size: 64, offset: 2624)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1667, file: !1668, line: 99, baseType: !1751, offset: 128)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1752, line: 211, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1753 = !{}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1667, file: !1668, line: 100, baseType: !1755, size: 64, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1668, line: 63, size: 3008, elements: !1757)
!1757 = !{!1758, !1759, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1789}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1756, file: !1668, line: 64, baseType: !1737, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1756, file: !1668, line: 65, baseType: !1760, size: 192, offset: 64)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1737, size: 192, elements: !1160)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1756, file: !1668, line: 67, baseType: !109, size: 32, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1756, file: !1668, line: 68, baseType: !339, size: 256, offset: 320)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1756, file: !1668, line: 69, baseType: !1124, size: 32, offset: 576)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1756, file: !1668, line: 70, baseType: !339, size: 256, offset: 640)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1756, file: !1668, line: 71, baseType: !175, size: 64, offset: 896)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1756, file: !1668, line: 72, baseType: !175, size: 64, offset: 960)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1756, file: !1668, line: 73, baseType: !175, size: 64, offset: 1024)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1756, file: !1668, line: 74, baseType: !175, size: 64, offset: 1088)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1756, file: !1668, line: 75, baseType: !175, size: 64, offset: 1152)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1756, file: !1668, line: 76, baseType: !175, size: 64, offset: 1216)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1756, file: !1668, line: 77, baseType: !175, size: 64, offset: 1280)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1756, file: !1668, line: 78, baseType: !175, size: 64, offset: 1344)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1756, file: !1668, line: 79, baseType: !321, size: 8, offset: 1408)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1756, file: !1668, line: 80, baseType: !175, size: 64, offset: 1472)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1756, file: !1668, line: 81, baseType: !339, size: 256, offset: 1536)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1756, file: !1668, line: 82, baseType: !1440, size: 256, offset: 1792)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1756, file: !1668, line: 84, baseType: !366, size: 32, offset: 2048)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1756, file: !1668, line: 87, baseType: !175, size: 64, offset: 2112)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1756, file: !1668, line: 88, baseType: !175, size: 64, offset: 2176)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1756, file: !1668, line: 89, baseType: !1781, size: 704, offset: 2240)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1725, line: 111, size: 704, elements: !1782)
!1782 = !{!1783, !1784, !1785, !1788}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1781, file: !1725, line: 112, baseType: !1724, size: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1781, file: !1725, line: 113, baseType: !1706, size: 320, offset: 256)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1781, file: !1725, line: 116, baseType: !1786, size: 64, offset: 576)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1725, line: 18, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1781, file: !1725, line: 117, baseType: !109, size: 32, offset: 640)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1756, file: !1668, line: 90, baseType: !1666, size: 64, offset: 2944)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1421, file: !6, line: 515, baseType: !1791, size: 64, offset: 8064)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1793, line: 117, size: 128, elements: !1794)
!1793 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1794 = !{!1795, !1796, !1797}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1792, file: !1793, line: 118, baseType: !1486, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1792, file: !1793, line: 119, baseType: !1486, size: 32, offset: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1792, file: !1793, line: 120, baseType: !1195, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1421, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1421, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1421, file: !6, line: 520, baseType: !1801, size: 64, offset: 8192)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1421, file: !6, line: 523, baseType: !1803, size: 64, offset: 8256)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1421, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1421, file: !6, line: 525, baseType: !1808, size: 64, offset: 8384)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1421, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1421, file: !6, line: 533, baseType: !176, size: 64, offset: 8512)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1421, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1421, file: !6, line: 535, baseType: !1815, size: 64, offset: 8640)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1421, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1421, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1421, file: !6, line: 540, baseType: !1819, size: 64, offset: 8768)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1821, line: 32, size: 64, elements: !1822)
!1821 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1820, file: !1821, line: 33, baseType: !1486, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1820, file: !1821, line: 34, baseType: !1486, size: 32, offset: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1421, file: !6, line: 563, baseType: !181, size: 128, offset: 8832)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1421, file: !6, line: 565, baseType: !181, size: 128, offset: 8960)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1421, file: !6, line: 568, baseType: !1828, size: 64, offset: 9088)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1421, file: !6, line: 570, baseType: !366, size: 32, offset: 9152)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1396, file: !14, line: 2382, baseType: !1395, size: 64, offset: 448)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1396, file: !14, line: 2383, baseType: !1832, size: 64, offset: 512)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !182, line: 194, size: 64, elements: !1833)
!1833 = !{!1834}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1832, file: !182, line: 195, baseType: !1713, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1396, file: !14, line: 2385, baseType: !1836, offset: 576)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1752, line: 206, elements: !1753)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1396, file: !14, line: 2386, baseType: !1836, offset: 576)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1396, file: !14, line: 2387, baseType: !1836, offset: 576)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1396, file: !14, line: 2388, baseType: !1840, offset: 576)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1836, elements: !1160)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1396, file: !14, line: 2390, baseType: !1836, offset: 576)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1396, file: !14, line: 2391, baseType: !1836, offset: 576)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1396, file: !14, line: 2392, baseType: !1836, offset: 576)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1396, file: !14, line: 2393, baseType: !1836, offset: 576)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1383, file: !14, line: 1197, baseType: !1846, size: 64, offset: 384)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1848)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1849)
!1849 = !{!1850, !1854, !1858, !1859, !1863, !1869, !1873, !1874, !1875, !1879, !1883, !1887, !1888, !1889, !1895, !1899, !1900, !2859, !2860, !2861, !2862, !2866, !2870, !2917, !2932, !2933}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1848, file: !14, line: 2058, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!1238, !1382}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1848, file: !14, line: 2059, baseType: !1855, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1238}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1848, file: !14, line: 2060, baseType: !1855, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1848, file: !14, line: 2062, baseType: !1860, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null, !1238, !109}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1848, file: !14, line: 2063, baseType: !1864, size: 64, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!109, !1238, !1867}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1848, file: !14, line: 2064, baseType: !1870, size: 64, offset: 320)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!109, !1238}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1848, file: !14, line: 2065, baseType: !1855, size: 64, offset: 384)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1848, file: !14, line: 2066, baseType: !1416, size: 64, offset: 448)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1848, file: !14, line: 2067, baseType: !1876, size: 64, offset: 512)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!109, !1382, !109}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1848, file: !14, line: 2068, baseType: !1880, size: 64, offset: 576)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!109, !1382, !13}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1848, file: !14, line: 2069, baseType: !1884, size: 64, offset: 640)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!109, !1382}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1848, file: !14, line: 2070, baseType: !1880, size: 64, offset: 704)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1848, file: !14, line: 2071, baseType: !1884, size: 64, offset: 768)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1848, file: !14, line: 2072, baseType: !1890, size: 64, offset: 832)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!109, !1273, !1893}
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1848, file: !14, line: 2073, baseType: !1896, size: 64, offset: 896)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!109, !1382, !1596, !216}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1848, file: !14, line: 2074, baseType: !1416, size: 64, offset: 960)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1848, file: !14, line: 2076, baseType: !1901, size: 64, offset: 1024)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!109, !1904, !1273}
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1906, line: 17, size: 960, elements: !1907)
!1906 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1907 = !{!1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1938, !1939, !2858}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1905, file: !1906, line: 18, baseType: !216, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1905, file: !1906, line: 19, baseType: !1206, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1905, file: !1906, line: 20, baseType: !1206, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1905, file: !1906, line: 21, baseType: !1206, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1905, file: !1906, line: 22, baseType: !1206, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1905, file: !1906, line: 23, baseType: !1392, size: 64, offset: 320)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1905, file: !1906, line: 24, baseType: !1392, size: 64, offset: 384)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1905, file: !1906, line: 25, baseType: !339, size: 256, offset: 448)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1905, file: !1906, line: 26, baseType: !1917, size: 64, offset: 704)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1919)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1906, line: 32, size: 256, elements: !1920)
!1920 = !{!1921, !1926, !1930, !1934}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1919, file: !1906, line: 33, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!176, !1904, !1925}
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1919, file: !1906, line: 34, baseType: !1927, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{null, !1904, !176}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1919, file: !1906, line: 35, baseType: !1931, size: 64, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!176, !1904, !176, !1925}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1919, file: !1906, line: 36, baseType: !1935, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!109, !1904, !176}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1905, file: !1906, line: 27, baseType: !109, size: 32, offset: 768)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1905, file: !1906, line: 28, baseType: !1940, size: 64, offset: 832)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1942)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1943)
!1943 = !{!1944, !1955, !1956, !1958, !1959, !1960, !1961, !1962, !2023, !2220, !2229, !2235, !2236, !2848, !2849, !2850, !2851, !2853, !2854, !2857}
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !14, line: 995, baseType: !1945, size: 128)
!1945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1942, file: !14, line: 995, size: 128, elements: !1946)
!1946 = !{!1947, !1953, !1954}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1945, file: !14, line: 996, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1949, line: 60, size: 64, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1950 = !{!1951}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1948, file: !1949, line: 61, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1945, file: !14, line: 997, baseType: !1686, size: 128, align: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1945, file: !14, line: 998, baseType: !7, size: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1942, file: !14, line: 1005, baseType: !1124, size: 32, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1942, file: !14, line: 1006, baseType: !1957, size: 32, offset: 160)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !182, line: 156, baseType: !7)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1942, file: !14, line: 1007, baseType: !343, size: 64, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1942, file: !14, line: 1008, baseType: !339, size: 256, offset: 256)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1942, file: !14, line: 1009, baseType: !1392, size: 64, offset: 512)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1942, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1942, file: !14, line: 1011, baseType: !1963, size: 256, offset: 640)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1964)
!1964 = !{!1965, !1986, !2019, !2020, !2021, !2022}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1963, file: !14, line: 949, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1967, line: 34, baseType: !1968)
!1967 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1967, line: 25, size: 64, elements: !1969)
!1969 = !{!1970}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1968, file: !1967, line: 26, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1972, line: 27, baseType: !1973)
!1972 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1972, line: 13, size: 64, elements: !1974)
!1974 = !{!1975, !1985}
!1975 = !DIDerivedType(tag: DW_TAG_member, scope: !1973, file: !1972, line: 14, baseType: !1976, size: 32)
!1976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1973, file: !1972, line: 14, size: 32, elements: !1977)
!1977 = !{!1978, !1979}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1976, file: !1972, line: 15, baseType: !366, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, scope: !1976, file: !1972, line: 16, baseType: !1980, size: 32)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1976, file: !1972, line: 16, size: 32, elements: !1981)
!1981 = !{!1982, !1983}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1980, file: !1972, line: 18, baseType: !222, size: 8)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1980, file: !1972, line: 19, baseType: !1984, size: 24, offset: 8)
!1984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 24, elements: !1160)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1973, file: !1972, line: 26, baseType: !358, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1963, file: !14, line: 950, baseType: !1987, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !1989)
!1989 = !{!1990, !1996, !1997, !1998, !2000, !2001, !2008, !2009}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1988, file: !19, line: 61, baseType: !1991, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1992, line: 113, baseType: !1993)
!1992 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1992, line: 111, size: 32, elements: !1994)
!1994 = !{!1995}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1993, file: !1992, line: 112, baseType: !366, size: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1988, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1988, file: !19, line: 63, baseType: !1124, size: 32, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1988, file: !19, line: 65, baseType: !1999, size: 256, offset: 128)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1832, size: 256, elements: !246)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1988, file: !19, line: 66, baseType: !1832, size: 64, offset: 384)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1988, file: !19, line: 68, baseType: !2002, size: 192, offset: 448)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !2003, line: 41, baseType: !2004)
!2003 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !2003, line: 37, size: 192, elements: !2005)
!2005 = !{!2006, !2007}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2004, file: !2003, line: 38, baseType: !1124, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2004, file: !2003, line: 39, baseType: !181, size: 128, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1988, file: !19, line: 69, baseType: !1686, size: 128, align: 64, offset: 640)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1988, file: !19, line: 70, baseType: !2010, offset: 768)
!2010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2011, elements: !2017)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2011, file: !19, line: 55, baseType: !109, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2011, file: !19, line: 56, baseType: !2015, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!2017 = !{!2018}
!2018 = !DISubrange(count: -1)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1963, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1963, file: !14, line: 952, baseType: !1244, size: 32, offset: 160)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1963, file: !14, line: 952, baseType: !1244, size: 32, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1963, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1942, file: !14, line: 1012, baseType: !2024, size: 64, offset: 896)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2027, line: 110, size: 1472, elements: !2028)
!2027 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!2028 = !{!2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2045, !2046, !2047, !2048, !2049, !2050, !2165, !2166, !2167, !2168, !2169, !2200, !2203, !2207, !2215}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2026, file: !2027, line: 111, baseType: !343, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2026, file: !2027, line: 112, baseType: !1244, size: 32, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2026, file: !2027, line: 113, baseType: !1253, size: 32, offset: 96)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2026, file: !2027, line: 114, baseType: !1244, size: 32, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2026, file: !2027, line: 115, baseType: !1253, size: 32, offset: 160)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2026, file: !2027, line: 116, baseType: !1244, size: 32, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2026, file: !2027, line: 117, baseType: !1253, size: 32, offset: 224)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2026, file: !2027, line: 118, baseType: !1244, size: 32, offset: 256)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2026, file: !2027, line: 119, baseType: !1253, size: 32, offset: 288)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2026, file: !2027, line: 120, baseType: !7, size: 32, offset: 320)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2026, file: !2027, line: 121, baseType: !2040, size: 64, offset: 384)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2041, line: 24, baseType: !2042)
!2041 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2041, line: 24, size: 64, elements: !2043)
!2043 = !{!2044}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2042, file: !2041, line: 24, baseType: !198, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2026, file: !2027, line: 122, baseType: !2040, size: 64, offset: 448)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2026, file: !2027, line: 123, baseType: !2040, size: 64, offset: 512)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2026, file: !2027, line: 124, baseType: !2040, size: 64, offset: 576)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2026, file: !2027, line: 125, baseType: !2040, size: 64, offset: 640)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2026, file: !2027, line: 127, baseType: !224, size: 8, offset: 704)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2026, file: !2027, line: 129, baseType: !2051, size: 64, offset: 768)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2053, line: 195, size: 1728, elements: !2054)
!2053 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!2054 = !{!2055, !2056, !2059, !2064, !2073, !2076, !2077, !2084, !2085, !2086, !2087, !2090, !2091, !2092, !2093, !2094, !2129, !2150}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2052, file: !2053, line: 196, baseType: !1991, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2052, file: !2053, line: 197, baseType: !2057, size: 32, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2053, line: 28, baseType: !2058)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !182, line: 104, baseType: !1486)
!2059 = !DIDerivedType(tag: DW_TAG_member, scope: !2052, file: !2053, line: 198, baseType: !2060, size: 192, offset: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2052, file: !2053, line: 198, size: 192, elements: !2061)
!2061 = !{!2062, !2063}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2060, file: !2053, line: 199, baseType: !181, size: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2060, file: !2053, line: 200, baseType: !1579, size: 192, align: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2052, file: !2053, line: 205, baseType: !2065, size: 320, offset: 256)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !2066, line: 48, size: 320, elements: !2067)
!2066 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!2067 = !{!2068, !2069, !2070, !2071, !2072}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2065, file: !2066, line: 49, baseType: !343, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2065, file: !2066, line: 55, baseType: !343, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !2065, file: !2066, line: 57, baseType: !381, size: 32, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2065, file: !2066, line: 59, baseType: !353, size: 32, offset: 160)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !2065, file: !2066, line: 60, baseType: !181, size: 128, offset: 192)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2052, file: !2053, line: 206, baseType: !2074, size: 64, offset: 576)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2053, line: 206, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2052, file: !2053, line: 207, baseType: !176, size: 64, offset: 640)
!2077 = !DIDerivedType(tag: DW_TAG_member, scope: !2052, file: !2053, line: 208, baseType: !2078, size: 64, offset: 704)
!2078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2052, file: !2053, line: 208, size: 64, elements: !2079)
!2079 = !{!2080, !2083}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2078, file: !2053, line: 209, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !2082, line: 8, baseType: !350)
!2082 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2078, file: !2053, line: 210, baseType: !2081, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2052, file: !2053, line: 212, baseType: !2081, size: 64, offset: 768)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2052, file: !2053, line: 213, baseType: !1244, size: 32, offset: 832)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2052, file: !2053, line: 214, baseType: !1253, size: 32, offset: 864)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2052, file: !2053, line: 215, baseType: !2088, size: 32, offset: 896)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2053, line: 31, baseType: !2089)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !182, line: 110, baseType: !234)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2052, file: !2053, line: 216, baseType: !220, size: 16, offset: 928)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2052, file: !2053, line: 217, baseType: !220, size: 16, offset: 944)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2052, file: !2053, line: 221, baseType: !1605, size: 16, offset: 960)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2052, file: !2053, line: 228, baseType: !175, size: 64, offset: 1024)
!2094 = !DIDerivedType(tag: DW_TAG_member, scope: !2052, file: !2053, line: 245, baseType: !2095, size: 320, offset: 1088)
!2095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2052, file: !2053, line: 245, size: 320, elements: !2096)
!2096 = !{!2097, !2121}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2095, file: !2053, line: 246, baseType: !2098, size: 320)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2053, line: 114, size: 320, elements: !2099)
!2099 = !{!2100, !2101, !2110, !2113, !2120}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2098, file: !2053, line: 116, baseType: !175, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, scope: !2098, file: !2053, line: 117, baseType: !2102, size: 64, offset: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2098, file: !2053, line: 117, size: 64, elements: !2103)
!2103 = !{!2104, !2109}
!2104 = !DIDerivedType(tag: DW_TAG_member, scope: !2102, file: !2053, line: 118, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2102, file: !2053, line: 118, size: 64, elements: !2106)
!2106 = !{!2107, !2108}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2105, file: !2053, line: 120, baseType: !218, size: 16)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2105, file: !2053, line: 121, baseType: !252, size: 48, offset: 16)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2102, file: !2053, line: 127, baseType: !175, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2098, file: !2053, line: 129, baseType: !2111, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2053, line: 102, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2098, file: !2053, line: 130, baseType: !2114, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2053, line: 108, size: 192, elements: !2116)
!2116 = !{!2117, !2118, !2119}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2115, file: !2053, line: 109, baseType: !1686, size: 128, align: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2115, file: !2053, line: 110, baseType: !1991, size: 32, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2115, file: !2053, line: 111, baseType: !321, size: 8, offset: 160)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2098, file: !2053, line: 131, baseType: !205, size: 64, offset: 256)
!2121 = !DIDerivedType(tag: DW_TAG_member, scope: !2095, file: !2053, line: 247, baseType: !2122, size: 320)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2095, file: !2053, line: 247, size: 320, elements: !2123)
!2123 = !{!2124, !2125, !2126, !2127, !2128}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2122, file: !2053, line: 248, baseType: !175, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2122, file: !2053, line: 249, baseType: !175, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2122, file: !2053, line: 250, baseType: !2111, size: 64, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2122, file: !2053, line: 251, baseType: !2114, size: 64, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2122, file: !2053, line: 252, baseType: !216, size: 64, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !2052, file: !2053, line: 260, baseType: !2130, size: 256, offset: 1408)
!2130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2052, file: !2053, line: 260, size: 256, elements: !2131)
!2131 = !{!2132, !2138}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2130, file: !2053, line: 261, baseType: !2133, size: 256)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2053, line: 134, size: 256, elements: !2134)
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2133, file: !2053, line: 135, baseType: !176, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2133, file: !2053, line: 136, baseType: !2137, size: 256)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 256, elements: !246)
!2138 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !2053, line: 262, baseType: !2139, size: 256)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2130, file: !2053, line: 262, size: 256, elements: !2140)
!2140 = !{!2141, !2142}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2139, file: !2053, line: 264, baseType: !181, size: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2139, file: !2053, line: 265, baseType: !2143, size: 128, offset: 128)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2144, line: 22, size: 128, elements: !2145)
!2144 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2145 = !{!2146, !2149}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2143, file: !2144, line: 23, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2144, line: 23, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2143, file: !2144, line: 24, baseType: !175, size: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2052, file: !2053, line: 280, baseType: !2151, size: 64, offset: 1664)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2053, line: 176, size: 192, elements: !2153)
!2153 = !{!2154, !2163, !2164}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2152, file: !2053, line: 177, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2053, line: 171, baseType: !2156)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!109, !2051, !2159, !2161, !2051}
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2112)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2133)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2152, file: !2053, line: 178, baseType: !2051, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2152, file: !2053, line: 179, baseType: !2111, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2026, file: !2027, line: 130, baseType: !2051, size: 64, offset: 832)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2026, file: !2027, line: 131, baseType: !2051, size: 64, offset: 896)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2026, file: !2027, line: 132, baseType: !2051, size: 64, offset: 960)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2026, file: !2027, line: 135, baseType: !176, size: 64, offset: 1024)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2026, file: !2027, line: 137, baseType: !2170, size: 64, offset: 1088)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2172, line: 14, size: 1088, elements: !2173)
!2172 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2173 = !{!2174, !2175, !2184, !2185, !2186, !2187, !2188, !2189}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2171, file: !2172, line: 15, baseType: !1991, size: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2171, file: !2172, line: 17, baseType: !2176, size: 320, offset: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2177, line: 22, size: 320, elements: !2178)
!2177 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2178 = !{!2179, !2180, !2181, !2182}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2176, file: !2177, line: 23, baseType: !353, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2176, file: !2177, line: 24, baseType: !349, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2176, file: !2177, line: 26, baseType: !181, size: 128, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2176, file: !2177, line: 28, baseType: !2183, size: 64, offset: 256)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2171, file: !2172, line: 19, baseType: !175, size: 64, offset: 384)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2171, file: !2172, line: 20, baseType: !343, size: 64, offset: 448)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2171, file: !2172, line: 23, baseType: !1710, size: 128, offset: 512)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2171, file: !2172, line: 24, baseType: !1244, size: 32, offset: 640)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2171, file: !2172, line: 29, baseType: !343, size: 64, offset: 704)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2171, file: !2172, line: 36, baseType: !2190, size: 320, offset: 768)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2191, line: 15, size: 320, elements: !2192)
!2191 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2192 = !{!2193, !2194, !2195, !2196, !2197, !2198, !2199}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2190, file: !2191, line: 16, baseType: !353, size: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2190, file: !2191, line: 18, baseType: !109, size: 32, offset: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2190, file: !2191, line: 19, baseType: !109, size: 32, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2190, file: !2191, line: 20, baseType: !109, size: 32, offset: 96)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2190, file: !2191, line: 21, baseType: !109, size: 32, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2190, file: !2191, line: 22, baseType: !175, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2190, file: !2191, line: 23, baseType: !175, size: 64, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2026, file: !2027, line: 138, baseType: !2201, size: 64, offset: 1152)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !27, line: 901, flags: DIFlagFwdDecl)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2026, file: !2027, line: 139, baseType: !2204, size: 64, offset: 1216)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2206, line: 16, flags: DIFlagFwdDecl)
!2206 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2026, file: !2027, line: 140, baseType: !2208, size: 64, offset: 1280)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2027, line: 25, size: 64, elements: !2210)
!2210 = !{!2211, !2212, !2213}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2209, file: !2027, line: 26, baseType: !366, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2209, file: !2027, line: 27, baseType: !109, size: 32, offset: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2209, file: !2027, line: 28, baseType: !2214, offset: 64)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1253, elements: !2017)
!2215 = !DIDerivedType(tag: DW_TAG_member, scope: !2026, file: !2027, line: 142, baseType: !2216, size: 128, offset: 1344)
!2216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2026, file: !2027, line: 142, size: 128, elements: !2217)
!2217 = !{!2218, !2219}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2216, file: !2027, line: 143, baseType: !109, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2216, file: !2027, line: 144, baseType: !1686, size: 128, align: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1942, file: !14, line: 1013, baseType: !2221, size: 256, offset: 960)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2222)
!2222 = !{!2223, !2224, !2225, !2226, !2227, !2228}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2221, file: !14, line: 971, baseType: !175, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2221, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2221, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2221, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2221, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2221, file: !14, line: 976, baseType: !1392, size: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1942, file: !14, line: 1014, baseType: !2230, size: 128, offset: 1216)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2231, line: 8, size: 128, elements: !2232)
!2231 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!2232 = !{!2233, !2234}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2230, file: !2231, line: 9, baseType: !1376, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2230, file: !2231, line: 10, baseType: !1273, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1942, file: !14, line: 1015, baseType: !1238, size: 64, offset: 1344)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1942, file: !14, line: 1016, baseType: !2237, size: 64, offset: 1408)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2239)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2240)
!2240 = !{!2241, !2242, !2247, !2251, !2255, !2284, !2285, !2291, !2304, !2321, !2325, !2326, !2769, !2770, !2774, !2779, !2780, !2784, !2788, !2794, !2795, !2799, !2800, !2807, !2811, !2815, !2821, !2825, !2829, !2833, !2837, !2838, !2844}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2239, file: !14, line: 1915, baseType: !1420, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2239, file: !14, line: 1916, baseType: !2243, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!1392, !2246, !1392, !109}
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2239, file: !14, line: 1917, baseType: !2248, size: 64, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!1191, !2246, !216, !1206, !1925}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2239, file: !14, line: 1918, baseType: !2252, size: 64, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!1191, !2246, !205, !1206, !1925}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2239, file: !14, line: 1919, baseType: !2256, size: 64, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!1191, !2259, !2281}
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2261)
!2261 = !{!2262, !2263, !2264, !2268, !2269, !2270, !2271}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2260, file: !14, line: 374, baseType: !2246, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2260, file: !14, line: 375, baseType: !1392, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2260, file: !14, line: 376, baseType: !2265, size: 64, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{null, !2259, !1195}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2260, file: !14, line: 377, baseType: !176, size: 64, offset: 192)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2260, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2260, file: !14, line: 379, baseType: !218, size: 16, offset: 288)
!2271 = !DIDerivedType(tag: DW_TAG_member, scope: !2260, file: !14, line: 380, baseType: !2272, size: 64, offset: 320)
!2272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2260, file: !14, line: 380, size: 64, elements: !2273)
!2273 = !{!2274, !2277}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2272, file: !14, line: 386, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2272, file: !14, line: 395, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!1191, !176}
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2283, line: 17, flags: DIFlagFwdDecl)
!2283 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2239, file: !14, line: 1920, baseType: !2256, size: 64, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2239, file: !14, line: 1921, baseType: !2286, size: 64, offset: 384)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!109, !2259, !2289, !7}
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2239, file: !14, line: 1923, baseType: !2292, size: 64, offset: 448)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!109, !2246, !2295}
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2297)
!2297 = !{!2298, !2303}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2296, file: !14, line: 1859, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2300)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!321, !2295, !205, !109, !1392, !198, !7}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2296, file: !14, line: 1860, baseType: !1392, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2239, file: !14, line: 1924, baseType: !2305, size: 64, offset: 512)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!2308, !2246, !2310}
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2309, line: 59, baseType: !7)
!2309 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2312, line: 37, size: 128, elements: !2313)
!2312 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2313 = !{!2314, !2320}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2311, file: !2312, line: 38, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2312, line: 31, baseType: !2316)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !2246, !2319, !2310}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2311, file: !2312, line: 39, baseType: !2308, size: 32, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2239, file: !14, line: 1925, baseType: !2322, size: 64, offset: 576)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!1195, !2246, !7, !175}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2239, file: !14, line: 1926, baseType: !2322, size: 64, offset: 640)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2239, file: !14, line: 1927, baseType: !2327, size: 64, offset: 704)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!109, !2246, !2330}
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !27, line: 625, size: 1344, elements: !2332)
!2332 = !{!2333, !2342, !2497, !2503, !2510, !2511, !2516, !2517, !2522, !2523, !2526, !2762, !2763, !2764, !2765, !2766, !2767}
!2333 = !DIDerivedType(tag: DW_TAG_member, scope: !2331, file: !27, line: 628, baseType: !2334, size: 128)
!2334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2331, file: !27, line: 628, size: 128, elements: !2335)
!2335 = !{!2336, !2341}
!2336 = !DIDerivedType(tag: DW_TAG_member, scope: !2334, file: !27, line: 629, baseType: !2337, size: 128)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2334, file: !27, line: 629, size: 128, elements: !2338)
!2338 = !{!2339, !2340}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2337, file: !27, line: 631, baseType: !175, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2337, file: !27, line: 632, baseType: !175, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2334, file: !27, line: 635, baseType: !1686, size: 128, align: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2331, file: !27, line: 639, baseType: !2343, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !27, line: 733, size: 10240, elements: !2345)
!2345 = !{!2346, !2495}
!2346 = !DIDerivedType(tag: DW_TAG_member, scope: !2344, file: !27, line: 734, baseType: !2347, size: 10240)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !27, line: 734, size: 10240, elements: !2348)
!2348 = !{!2349, !2353, !2366, !2370, !2371, !2372, !2373, !2374, !2375, !2384, !2385, !2386, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2425, !2427, !2430, !2475, !2476, !2477, !2480, !2481, !2482, !2485, !2486, !2487, !2493, !2494}
!2349 = !DIDerivedType(tag: DW_TAG_member, scope: !2347, file: !27, line: 739, baseType: !2350, size: 512, align: 512)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2347, file: !27, line: 739, size: 512, align: 512, elements: !2351)
!2351 = !{!2352}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2350, file: !27, line: 747, baseType: !366, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !2347, file: !27, line: 750, baseType: !2354, size: 128, offset: 512)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !2355, line: 218, size: 128, elements: !2356)
!2355 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!2356 = !{!2357, !2364, !2365}
!2357 = !DIDerivedType(tag: DW_TAG_member, scope: !2354, file: !2355, line: 219, baseType: !2358, size: 32)
!2358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2354, file: !2355, line: 219, size: 32, elements: !2359)
!2359 = !{!2360, !2361}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !2358, file: !2355, line: 220, baseType: !1124, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !2358, file: !2355, line: 221, baseType: !2362)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !2355, line: 197, baseType: !2363)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2355, line: 197, elements: !1753)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !2354, file: !2355, line: 223, baseType: !7, size: 32, offset: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !2354, file: !2355, line: 224, baseType: !176, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2347, file: !27, line: 752, baseType: !2367, size: 64, offset: 640)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!175, !2246, !175, !175, !175, !175}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2347, file: !27, line: 756, baseType: !175, size: 64, offset: 704)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2347, file: !27, line: 757, baseType: !175, size: 64, offset: 768)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !2347, file: !27, line: 760, baseType: !175, size: 64, offset: 832)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !2347, file: !27, line: 761, baseType: !175, size: 64, offset: 896)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2347, file: !27, line: 763, baseType: !175, size: 64, offset: 960)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2347, file: !27, line: 764, baseType: !2376, size: 64, offset: 1024)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2378, line: 299, baseType: !2379)
!2378 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2378, line: 299, size: 64, elements: !2380)
!2380 = !{!2381}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2379, file: !2378, line: 299, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2383, line: 18, baseType: !175)
!2383 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2347, file: !27, line: 773, baseType: !366, size: 32, offset: 1088)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2347, file: !27, line: 785, baseType: !366, size: 32, offset: 1120)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !2347, file: !27, line: 795, baseType: !2387, size: 64, offset: 1152)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !27, line: 726, size: 128, elements: !2389)
!2389 = !{!2390, !2391}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2388, file: !27, line: 727, baseType: !198, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2388, file: !27, line: 728, baseType: !109, size: 32, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !2347, file: !27, line: 801, baseType: !175, size: 64, offset: 1216)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2347, file: !27, line: 804, baseType: !343, size: 64, offset: 1280)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2347, file: !27, line: 806, baseType: !109, size: 32, offset: 1344)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2347, file: !27, line: 808, baseType: !1124, size: 32, offset: 1376)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2347, file: !27, line: 823, baseType: !2065, size: 320, offset: 1408)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2347, file: !27, line: 825, baseType: !181, size: 128, offset: 1728)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !2347, file: !27, line: 845, baseType: !109, size: 32, offset: 1856)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2347, file: !27, line: 849, baseType: !175, size: 64, offset: 1920)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2347, file: !27, line: 850, baseType: !175, size: 64, offset: 1984)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2347, file: !27, line: 852, baseType: !175, size: 64, offset: 2048)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2347, file: !27, line: 853, baseType: !175, size: 64, offset: 2112)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2347, file: !27, line: 854, baseType: !345, size: 64, offset: 2176)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2347, file: !27, line: 855, baseType: !175, size: 64, offset: 2240)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2347, file: !27, line: 856, baseType: !175, size: 64, offset: 2304)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2347, file: !27, line: 857, baseType: !175, size: 64, offset: 2368)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2347, file: !27, line: 858, baseType: !175, size: 64, offset: 2432)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !2347, file: !27, line: 865, baseType: !1284, size: 32, offset: 2496)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2347, file: !27, line: 867, baseType: !1124, size: 32, offset: 2528)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2347, file: !27, line: 869, baseType: !175, size: 64, offset: 2560)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2347, file: !27, line: 869, baseType: !175, size: 64, offset: 2624)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2347, file: !27, line: 869, baseType: !175, size: 64, offset: 2688)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2347, file: !27, line: 869, baseType: !175, size: 64, offset: 2752)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2347, file: !27, line: 870, baseType: !175, size: 64, offset: 2816)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2347, file: !27, line: 870, baseType: !175, size: 64, offset: 2880)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2347, file: !27, line: 870, baseType: !175, size: 64, offset: 2944)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2347, file: !27, line: 871, baseType: !175, size: 64, offset: 3008)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2347, file: !27, line: 871, baseType: !175, size: 64, offset: 3072)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2347, file: !27, line: 871, baseType: !175, size: 64, offset: 3136)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2347, file: !27, line: 871, baseType: !175, size: 64, offset: 3200)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2347, file: !27, line: 873, baseType: !2422, size: 3328, offset: 3264)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 3328, elements: !2423)
!2423 = !{!2424}
!2424 = !DISubrange(count: 52)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2347, file: !27, line: 875, baseType: !2426, size: 1280, offset: 6592)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2176, size: 1280, elements: !246)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2347, file: !27, line: 877, baseType: !2428, size: 64, offset: 7872)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !27, line: 877, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2347, file: !27, line: 880, baseType: !2431, size: 1088, offset: 7936)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2432, line: 72, baseType: !2433)
!2432 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2432, line: 23, size: 1088, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2442, !2443, !2444, !2445, !2472, !2473, !2474}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2433, file: !2432, line: 28, baseType: !198, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2433, file: !2432, line: 38, baseType: !345, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2433, file: !2432, line: 40, baseType: !175, size: 64, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2433, file: !2432, line: 43, baseType: !2065, size: 320, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2433, file: !2432, line: 44, baseType: !2440, size: 64, offset: 512)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2432, line: 44, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2433, file: !2432, line: 48, baseType: !175, size: 64, offset: 576)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2433, file: !2432, line: 59, baseType: !339, size: 256, offset: 640)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2433, file: !2432, line: 60, baseType: !176, size: 64, offset: 896)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2433, file: !2432, line: 61, baseType: !2446, size: 64, offset: 960)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2448)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2449, line: 13, size: 1216, elements: !2450)
!2449 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2450 = !{!2451, !2452, !2453, !2454, !2455, !2456, !2457, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2448, file: !2449, line: 14, baseType: !176, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2448, file: !2449, line: 15, baseType: !175, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2448, file: !2449, line: 17, baseType: !175, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2448, file: !2449, line: 17, baseType: !175, size: 64, offset: 192)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2448, file: !2449, line: 18, baseType: !175, size: 64, offset: 256)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2448, file: !2449, line: 18, baseType: !175, size: 64, offset: 320)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2448, file: !2449, line: 19, baseType: !2458, size: 64, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2448, file: !2449, line: 21, baseType: !1195, size: 64, offset: 448)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2448, file: !2449, line: 23, baseType: !1195, size: 64, offset: 512)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2448, file: !2449, line: 24, baseType: !1195, size: 64, offset: 576)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2448, file: !2449, line: 25, baseType: !1195, size: 64, offset: 640)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2448, file: !2449, line: 26, baseType: !1195, size: 64, offset: 704)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2448, file: !2449, line: 27, baseType: !1195, size: 64, offset: 768)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2448, file: !2449, line: 28, baseType: !1195, size: 64, offset: 832)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2448, file: !2449, line: 29, baseType: !1195, size: 64, offset: 896)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2448, file: !2449, line: 30, baseType: !1195, size: 64, offset: 960)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2448, file: !2449, line: 31, baseType: !1195, size: 64, offset: 1024)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2448, file: !2449, line: 32, baseType: !1195, size: 64, offset: 1088)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2448, file: !2449, line: 33, baseType: !1195, size: 64, offset: 1152)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2433, file: !2432, line: 63, baseType: !366, size: 32, offset: 1024)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2433, file: !2432, line: 69, baseType: !218, size: 16, offset: 1056)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2433, file: !2432, line: 70, baseType: !1603, size: 16, offset: 1072)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2347, file: !27, line: 882, baseType: !175, size: 64, offset: 9024)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2347, file: !27, line: 885, baseType: !1124, size: 32, offset: 9088)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2347, file: !27, line: 886, baseType: !2478, size: 64, offset: 9152)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !27, line: 732, flags: DIFlagFwdDecl)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2347, file: !27, line: 901, baseType: !2201, size: 64, offset: 9216)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2347, file: !27, line: 904, baseType: !2246, size: 64, offset: 9280)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2347, file: !27, line: 906, baseType: !2483, size: 64, offset: 9344)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !27, line: 906, flags: DIFlagFwdDecl)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2347, file: !27, line: 930, baseType: !366, size: 32, offset: 9408)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2347, file: !27, line: 933, baseType: !366, size: 32, offset: 9440)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2347, file: !27, line: 935, baseType: !2488, size: 64, offset: 9472)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2489)
!2489 = !{!2490}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2488, file: !68, line: 104, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !2347, file: !27, line: 940, baseType: !343, size: 64, offset: 9536)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2347, file: !27, line: 942, baseType: !1724, size: 256, offset: 9600)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2344, file: !27, line: 986, baseType: !2496, offset: 10240)
!2496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, elements: !2017)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2331, file: !27, line: 640, baseType: !2498, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2378, line: 297, baseType: !2499)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2378, line: 297, size: 64, elements: !2500)
!2500 = !{!2501}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2499, file: !2378, line: 297, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2383, line: 19, baseType: !175)
!2503 = !DIDerivedType(tag: DW_TAG_member, scope: !2331, file: !27, line: 646, baseType: !2504, size: 64, offset: 256)
!2504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2331, file: !27, line: 646, size: 64, elements: !2505)
!2505 = !{!2506, !2509}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2504, file: !27, line: 647, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2508)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !27, line: 542, baseType: !175)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2504, file: !27, line: 648, baseType: !2508, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2331, file: !27, line: 666, baseType: !109, size: 32, offset: 320)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2331, file: !27, line: 667, baseType: !2512, size: 64, offset: 384)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !27, line: 579, size: 320, elements: !2514)
!2514 = !{!2515}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2513, file: !27, line: 580, baseType: !2065, size: 320)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2331, file: !27, line: 670, baseType: !321, size: 8, offset: 448)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2331, file: !27, line: 681, baseType: !2518, size: 256, offset: 512)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2331, file: !27, line: 678, size: 256, elements: !2519)
!2519 = !{!2520, !2521}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2518, file: !27, line: 679, baseType: !1579, size: 192, align: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2518, file: !27, line: 680, baseType: !175, size: 64, offset: 192)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2331, file: !27, line: 689, baseType: !181, size: 128, offset: 768)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2331, file: !27, line: 691, baseType: !2524, size: 64, offset: 896)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !27, line: 691, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2331, file: !27, line: 694, baseType: !2527, size: 64, offset: 960)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2529)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2530, line: 563, size: 1024, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2531 = !{!2532, !2536, !2537, !2541, !2545, !2549, !2726, !2730, !2734, !2738, !2739, !2740, !2744, !2748, !2754, !2758}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2529, file: !2530, line: 564, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{null, !2330}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2529, file: !2530, line: 569, baseType: !2533, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2529, file: !2530, line: 571, baseType: !2538, size: 64, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!109, !2330, !175}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2529, file: !2530, line: 572, baseType: !2542, size: 64, offset: 192)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!109, !2330}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2529, file: !2530, line: 578, baseType: !2546, size: 64, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!109, !2330, !175, !175, !175}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2529, file: !2530, line: 580, baseType: !2550, size: 64, offset: 320)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!2553, !2554}
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !27, line: 1184, baseType: !7)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2530, line: 512, size: 896, elements: !2556)
!2556 = !{!2557, !2565, !2566, !2573, !2580, !2590, !2719, !2720, !2722, !2724}
!2557 = !DIDerivedType(tag: DW_TAG_member, scope: !2555, file: !2530, line: 513, baseType: !2558, size: 320)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !2530, line: 513, size: 320, elements: !2559)
!2559 = !{!2560, !2561, !2562, !2563, !2564}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2558, file: !2530, line: 514, baseType: !2330, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2558, file: !2530, line: 515, baseType: !230, size: 32, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2558, file: !2530, line: 516, baseType: !175, size: 64, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2558, file: !2530, line: 517, baseType: !175, size: 64, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2558, file: !2530, line: 518, baseType: !175, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2555, file: !2530, line: 520, baseType: !26, size: 32, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2555, file: !2530, line: 522, baseType: !2567, size: 64, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2383, line: 22, baseType: !2569)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2383, line: 22, size: 64, elements: !2570)
!2570 = !{!2571}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2569, file: !2383, line: 22, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2383, line: 15, baseType: !175)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2555, file: !2530, line: 524, baseType: !2574, size: 64, offset: 448)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2378, line: 372, baseType: !2576)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2378, line: 372, size: 64, elements: !2577)
!2577 = !{!2578}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2576, file: !2378, line: 372, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2383, line: 16, baseType: !175)
!2580 = !DIDerivedType(tag: DW_TAG_member, scope: !2555, file: !2530, line: 527, baseType: !2581, size: 64, offset: 512)
!2581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2555, file: !2530, line: 527, size: 64, elements: !2582)
!2582 = !{!2583, !2589}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2581, file: !2530, line: 528, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2383, line: 21, baseType: !2585)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2383, line: 21, size: 64, elements: !2586)
!2586 = !{!2587}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2585, file: !2383, line: 21, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2383, line: 14, baseType: !175)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2581, file: !2530, line: 529, baseType: !2568, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2555, file: !2530, line: 534, baseType: !2591, size: 64, offset: 576)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !27, line: 74, size: 512, align: 128, elements: !2593)
!2593 = !{!2594, !2595, !2713, !2718}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2592, file: !27, line: 75, baseType: !175, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !27, line: 83, baseType: !2596, size: 320, offset: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2592, file: !27, line: 83, size: 320, elements: !2597)
!2597 = !{!2598, !2619, !2633, !2637, !2712}
!2598 = !DIDerivedType(tag: DW_TAG_member, scope: !2596, file: !27, line: 84, baseType: !2599, size: 320)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2596, file: !27, line: 84, size: 320, elements: !2600)
!2600 = !{!2601, !2612, !2613, !2618}
!2601 = !DIDerivedType(tag: DW_TAG_member, scope: !2599, file: !27, line: 90, baseType: !2602, size: 128)
!2602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2599, file: !27, line: 90, size: 128, elements: !2603)
!2603 = !{!2604, !2605, !2610, !2611}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2602, file: !27, line: 91, baseType: !181, size: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, scope: !2602, file: !27, line: 94, baseType: !2606, size: 128)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2602, file: !27, line: 94, size: 128, elements: !2607)
!2607 = !{!2608, !2609}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2606, file: !27, line: 96, baseType: !176, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2606, file: !27, line: 98, baseType: !7, size: 32, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2602, file: !27, line: 102, baseType: !181, size: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2602, file: !27, line: 103, baseType: !181, size: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2599, file: !27, line: 106, baseType: !1234, size: 64, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, scope: !2599, file: !27, line: 107, baseType: !2614, size: 64, offset: 192)
!2614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2599, file: !27, line: 107, size: 64, elements: !2615)
!2615 = !{!2616, !2617}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2614, file: !27, line: 108, baseType: !175, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2614, file: !27, line: 109, baseType: !175, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2599, file: !27, line: 117, baseType: !175, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, scope: !2596, file: !27, line: 119, baseType: !2620, size: 320)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2596, file: !27, line: 119, size: 320, elements: !2621)
!2621 = !{!2622, !2623, !2626, !2627, !2628}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2620, file: !27, line: 124, baseType: !175, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2620, file: !27, line: 125, baseType: !2624, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !27, line: 125, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2620, file: !27, line: 126, baseType: !175, size: 64, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2620, file: !27, line: 127, baseType: !175, size: 64, offset: 192)
!2628 = !DIDerivedType(tag: DW_TAG_member, scope: !2620, file: !27, line: 128, baseType: !2629, size: 64, offset: 256)
!2629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2620, file: !27, line: 128, size: 64, elements: !2630)
!2630 = !{!2631, !2632}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2629, file: !27, line: 133, baseType: !175, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2629, file: !27, line: 138, baseType: !343, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, scope: !2596, file: !27, line: 141, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2596, file: !27, line: 141, size: 64, elements: !2635)
!2635 = !{!2636}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2634, file: !27, line: 142, baseType: !175, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, scope: !2596, file: !27, line: 144, baseType: !2638, size: 128)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2596, file: !27, line: 144, size: 128, elements: !2639)
!2639 = !{!2640, !2711}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2638, file: !27, line: 146, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 126, size: 1216, elements: !2643)
!2643 = !{!2644, !2654, !2675, !2676, !2677, !2678, !2679, !2693, !2694, !2695}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2642, file: !43, line: 127, baseType: !2645, size: 384)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 21, size: 384, elements: !2646)
!2646 = !{!2647, !2648, !2650, !2651, !2652, !2653}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2645, file: !43, line: 22, baseType: !175, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2645, file: !43, line: 23, baseType: !2649, size: 64, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2645, file: !43, line: 24, baseType: !2649, size: 64, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2645, file: !43, line: 25, baseType: !175, size: 64, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2645, file: !43, line: 26, baseType: !175, size: 64, offset: 256)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2645, file: !43, line: 27, baseType: !175, size: 64, offset: 320)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2642, file: !43, line: 128, baseType: !2655, size: 128, offset: 384)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2656, line: 105, size: 128, elements: !2657)
!2656 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2657 = !{!2658, !2659}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2655, file: !2656, line: 110, baseType: !175, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2655, file: !2656, line: 118, baseType: !2660, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2656, line: 95, size: 448, elements: !2662)
!2662 = !{!2663, !2664, !2670, !2671, !2672, !2673, !2674}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2661, file: !2656, line: 96, baseType: !343, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2661, file: !2656, line: 97, baseType: !2665, size: 64, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2656, line: 60, baseType: !2667)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{null, !2669}
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2661, file: !2656, line: 98, baseType: !2665, size: 64, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2661, file: !2656, line: 99, baseType: !321, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2661, file: !2656, line: 100, baseType: !321, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2661, file: !2656, line: 101, baseType: !1686, size: 128, align: 64, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2661, file: !2656, line: 102, baseType: !2669, size: 64, offset: 384)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2642, file: !43, line: 129, baseType: !1440, size: 256, offset: 512)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2642, file: !43, line: 130, baseType: !42, size: 32, offset: 768)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2642, file: !43, line: 131, baseType: !7, size: 32, offset: 800)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2642, file: !43, line: 132, baseType: !175, size: 64, offset: 832)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2642, file: !43, line: 133, baseType: !2680, size: 64, offset: 896)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2682)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 77, size: 192, elements: !2683)
!2683 = !{!2684, !2688, !2689}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2682, file: !43, line: 83, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{null, !2591}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2682, file: !43, line: 89, baseType: !2550, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2682, file: !43, line: 100, baseType: !2690, size: 64, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!109, !2641, !175, !175, !109}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2642, file: !43, line: 134, baseType: !176, size: 64, offset: 960)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2642, file: !43, line: 135, baseType: !109, size: 32, offset: 1024)
!2695 = !DIDerivedType(tag: DW_TAG_member, scope: !2642, file: !43, line: 136, baseType: !2696, size: 128, offset: 1088)
!2696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2642, file: !43, line: 136, size: 128, elements: !2697)
!2697 = !{!2698, !2704}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2696, file: !43, line: 137, baseType: !2699, size: 128)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2700, line: 6, size: 128, elements: !2701)
!2700 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2701 = !{!2702, !2703}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2699, file: !2700, line: 7, baseType: !198, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2699, file: !2700, line: 8, baseType: !198, size: 64, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, scope: !2696, file: !43, line: 138, baseType: !2705)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2696, file: !43, line: 138, elements: !2706)
!2706 = !{!2707, !2709}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2705, file: !43, line: 138, baseType: !2708)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2705, file: !43, line: 138, elements: !1753)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2705, file: !43, line: 138, baseType: !2710)
!2710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2699, elements: !2017)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2638, file: !27, line: 147, baseType: !176, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2596, file: !27, line: 161, baseType: !1686, size: 128, align: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !27, line: 164, baseType: !2714, size: 32, offset: 384)
!2714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2592, file: !27, line: 164, size: 32, elements: !2715)
!2715 = !{!2716, !2717}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2714, file: !27, line: 169, baseType: !366, size: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2714, file: !27, line: 177, baseType: !7, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2592, file: !27, line: 181, baseType: !366, size: 32, offset: 416)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2555, file: !2530, line: 535, baseType: !2591, size: 64, offset: 640)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2555, file: !2530, line: 541, baseType: !2721, size: 64, offset: 704)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2555, file: !2530, line: 545, baseType: !2723, size: 64, offset: 768)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2555, file: !2530, line: 549, baseType: !2725, size: 64, offset: 832)
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2378, line: 520, baseType: !2591)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2529, file: !2530, line: 581, baseType: !2727, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!2553, !2554, !7}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2529, file: !2530, line: 582, baseType: !2731, size: 64, offset: 448)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!2553, !2554, !175, !175}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2529, file: !2530, line: 584, baseType: !2735, size: 64, offset: 512)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!175, !2330}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2529, file: !2530, line: 588, baseType: !2550, size: 64, offset: 576)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2529, file: !2530, line: 591, baseType: !2550, size: 64, offset: 640)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2529, file: !2530, line: 597, baseType: !2741, size: 64, offset: 704)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!109, !2330, !175, !176, !109, !109}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2529, file: !2530, line: 603, baseType: !2745, size: 64, offset: 768)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!205, !2330}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2529, file: !2530, line: 613, baseType: !2749, size: 64, offset: 832)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!109, !2330, !2752}
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !27, line: 717, flags: DIFlagFwdDecl)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2529, file: !2530, line: 625, baseType: !2755, size: 64, offset: 896)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!2752, !2330, !175}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2529, file: !2530, line: 633, baseType: !2759, size: 64, offset: 960)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!2591, !2330, !175}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2331, file: !27, line: 697, baseType: !175, size: 64, offset: 1024)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2331, file: !27, line: 699, baseType: !2246, size: 64, offset: 1088)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2331, file: !27, line: 700, baseType: !176, size: 64, offset: 1152)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2331, file: !27, line: 711, baseType: !343, size: 64, offset: 1216)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2331, file: !27, line: 717, baseType: !2752, size: 64, offset: 1280)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2331, file: !27, line: 722, baseType: !2768, offset: 1344)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !27, line: 570, elements: !1753)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2239, file: !14, line: 1928, baseType: !175, size: 64, offset: 768)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2239, file: !14, line: 1929, baseType: !2771, size: 64, offset: 832)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!109, !1238, !2246}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2239, file: !14, line: 1930, baseType: !2775, size: 64, offset: 896)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!109, !2246, !2778}
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !176)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2239, file: !14, line: 1931, baseType: !2771, size: 64, offset: 960)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2239, file: !14, line: 1932, baseType: !2781, size: 64, offset: 1024)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!109, !2246, !1392, !1392, !109}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2239, file: !14, line: 1933, baseType: !2785, size: 64, offset: 1088)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!109, !109, !2246, !109}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2239, file: !14, line: 1934, baseType: !2789, size: 64, offset: 1152)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!109, !2246, !109, !2792}
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2239, file: !14, line: 1935, baseType: !2367, size: 64, offset: 1216)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2239, file: !14, line: 1936, baseType: !2796, size: 64, offset: 1280)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!109, !109}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2239, file: !14, line: 1937, baseType: !2789, size: 64, offset: 1344)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2239, file: !14, line: 1938, baseType: !2801, size: 64, offset: 1408)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!1191, !2804, !2246, !1925, !1206, !7}
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2806, line: 59, flags: DIFlagFwdDecl)
!2806 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2239, file: !14, line: 1939, baseType: !2808, size: 64, offset: 1472)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!1191, !2246, !1925, !2804, !1206, !7}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2239, file: !14, line: 1940, baseType: !2812, size: 64, offset: 1536)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{null, !2246}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2239, file: !14, line: 1941, baseType: !2816, size: 64, offset: 1600)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!109, !2246, !109, !2819, !2820}
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2239, file: !14, line: 1942, baseType: !2822, size: 64, offset: 1664)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!1195, !2246, !109, !1392, !1392}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2239, file: !14, line: 1944, baseType: !2826, size: 64, offset: 1728)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !1904, !2246}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2239, file: !14, line: 1948, baseType: !2830, size: 64, offset: 1792)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!1191, !2246, !1392, !2246, !1392, !1206, !7}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2239, file: !14, line: 1950, baseType: !2834, size: 64, offset: 1856)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!1392, !2246, !1392, !2246, !1392, !1392, !7}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2239, file: !14, line: 1953, baseType: !2781, size: 64, offset: 1920)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2239, file: !14, line: 1954, baseType: !2839, size: 64, offset: 1984)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!109, !2842, !7}
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2239, file: !14, line: 1955, baseType: !2845, size: 64, offset: 2048)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!109, !2842, !2289, !7}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1942, file: !14, line: 1018, baseType: !198, size: 64, offset: 1472)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1942, file: !14, line: 1020, baseType: !176, size: 64, offset: 1536)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1942, file: !14, line: 1023, baseType: !176, size: 64, offset: 1600)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1942, file: !14, line: 1027, baseType: !2852, size: 64, offset: 1664)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1942, file: !14, line: 1029, baseType: !1234, size: 64, offset: 1728)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1942, file: !14, line: 1030, baseType: !2855, size: 32, offset: 1792)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2856, line: 8, baseType: !234)
!2856 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1942, file: !14, line: 1031, baseType: !2855, size: 32, offset: 1824)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1905, file: !1906, line: 29, baseType: !176, size: 64, offset: 896)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1848, file: !14, line: 2077, baseType: !1901, size: 64, offset: 1088)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1848, file: !14, line: 2078, baseType: !1901, size: 64, offset: 1152)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1848, file: !14, line: 2079, baseType: !1901, size: 64, offset: 1216)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1848, file: !14, line: 2081, baseType: !2863, size: 64, offset: 1280)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!1191, !1382, !109, !216, !1206, !1392}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1848, file: !14, line: 2082, baseType: !2867, size: 64, offset: 1344)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!1191, !1382, !109, !205, !1206, !1392}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1848, file: !14, line: 2083, baseType: !2871, size: 64, offset: 1408)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!2874, !1238}
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !2877)
!2877 = !{!2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2902, !2903, !2904}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2876, file: !51, line: 297, baseType: !1710, size: 128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2876, file: !51, line: 298, baseType: !181, size: 128, offset: 128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2876, file: !51, line: 299, baseType: !181, size: 128, offset: 256)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2876, file: !51, line: 300, baseType: !181, size: 128, offset: 384)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2876, file: !51, line: 301, baseType: !339, size: 256, offset: 512)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2876, file: !51, line: 302, baseType: !1124, size: 32, offset: 768)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2876, file: !51, line: 303, baseType: !366, size: 32, offset: 800)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2876, file: !51, line: 304, baseType: !1382, size: 64, offset: 832)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2876, file: !51, line: 305, baseType: !2887, size: 64, offset: 896)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !2888)
!2888 = !{!2889, !2901}
!2889 = !DIDerivedType(tag: DW_TAG_member, scope: !2887, file: !51, line: 69, baseType: !2890, size: 32)
!2890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2887, file: !51, line: 69, size: 32, elements: !2891)
!2891 = !{!2892, !2893, !2894}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2890, file: !51, line: 70, baseType: !1244, size: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2890, file: !51, line: 71, baseType: !1253, size: 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2890, file: !51, line: 72, baseType: !2895, size: 32)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2896, line: 24, baseType: !2897)
!2896 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2896, line: 22, size: 32, elements: !2898)
!2898 = !{!2899}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2897, file: !2896, line: 23, baseType: !2900, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2896, line: 20, baseType: !1250)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2887, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2876, file: !51, line: 306, baseType: !1392, size: 64, offset: 960)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2876, file: !51, line: 307, baseType: !175, size: 64, offset: 1024)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2876, file: !51, line: 308, baseType: !2905, size: 576, offset: 1088)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !2906)
!2906 = !{!2907, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2905, file: !51, line: 206, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !351)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2905, file: !51, line: 207, baseType: !2908, size: 64, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2905, file: !51, line: 208, baseType: !2908, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2905, file: !51, line: 209, baseType: !2908, size: 64, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2905, file: !51, line: 210, baseType: !2908, size: 64, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2905, file: !51, line: 211, baseType: !2908, size: 64, offset: 320)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2905, file: !51, line: 212, baseType: !2908, size: 64, offset: 384)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2905, file: !51, line: 213, baseType: !2081, size: 64, offset: 448)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2905, file: !51, line: 214, baseType: !2081, size: 64, offset: 512)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1848, file: !14, line: 2085, baseType: !2918, size: 64, offset: 1472)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!1195, !1382, !2921}
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2923, line: 15, size: 256, elements: !2924)
!2923 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2924 = !{!2925, !2926, !2927, !2928, !2929}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2922, file: !2923, line: 16, baseType: !230, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2922, file: !2923, line: 19, baseType: !109, size: 32, offset: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2922, file: !2923, line: 26, baseType: !175, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2922, file: !2923, line: 33, baseType: !175, size: 64, offset: 128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2922, file: !2923, line: 36, baseType: !2930, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !27, line: 33, flags: DIFlagFwdDecl)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1848, file: !14, line: 2087, baseType: !2918, size: 64, offset: 1536)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1848, file: !14, line: 2089, baseType: !1416, size: 64, offset: 1600)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1383, file: !14, line: 1198, baseType: !2935, size: 64, offset: 448)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2937)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !2938)
!2938 = !{!2939, !2943, !2947, !2951, !2952, !2953, !2954, !2955, !2960, !2965, !2969}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2937, file: !51, line: 325, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!109, !2875}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2937, file: !51, line: 326, baseType: !2944, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!2875, !1382, !109}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2937, file: !51, line: 327, baseType: !2948, size: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{null, !2875}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2937, file: !51, line: 328, baseType: !2940, size: 64, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2937, file: !51, line: 329, baseType: !2940, size: 64, offset: 256)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2937, file: !51, line: 330, baseType: !2940, size: 64, offset: 320)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2937, file: !51, line: 331, baseType: !1876, size: 64, offset: 384)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2937, file: !51, line: 334, baseType: !2956, size: 64, offset: 448)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!2959, !1238}
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2937, file: !51, line: 335, baseType: !2961, size: 64, offset: 512)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!109, !1238, !2964}
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2937, file: !51, line: 337, baseType: !2966, size: 64, offset: 576)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!109, !1238, !2959}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2937, file: !51, line: 339, baseType: !2970, size: 64, offset: 640)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!109, !1382, !2973}
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1383, file: !14, line: 1199, baseType: !2975, size: 64, offset: 512)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2977)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !2978)
!2978 = !{!2979, !2985, !2986, !2990, !2991, !2992, !3007, !3030, !3034, !3035, !3058}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2977, file: !51, line: 431, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!109, !1382, !109, !109, !2983}
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2230)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2977, file: !51, line: 432, baseType: !1876, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2977, file: !51, line: 433, baseType: !2987, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!109, !1382, !7}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2977, file: !51, line: 434, baseType: !2987, size: 64, offset: 192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2977, file: !51, line: 435, baseType: !1876, size: 64, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2977, file: !51, line: 436, baseType: !2993, size: 64, offset: 320)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!109, !1382, !109, !2996}
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !2998)
!2998 = !{!2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2997, file: !51, line: 418, baseType: !109, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2997, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2997, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2997, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2997, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2997, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2997, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2997, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2977, file: !51, line: 437, baseType: !3008, size: 64, offset: 384)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!109, !1382, !2887, !3011}
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !3013)
!3013 = !{!3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3012, file: !51, line: 346, baseType: !109, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3012, file: !51, line: 347, baseType: !198, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3012, file: !51, line: 348, baseType: !198, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3012, file: !51, line: 349, baseType: !198, size: 64, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3012, file: !51, line: 350, baseType: !198, size: 64, offset: 256)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3012, file: !51, line: 351, baseType: !198, size: 64, offset: 320)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3012, file: !51, line: 352, baseType: !198, size: 64, offset: 384)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3012, file: !51, line: 353, baseType: !349, size: 64, offset: 448)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3012, file: !51, line: 355, baseType: !349, size: 64, offset: 512)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3012, file: !51, line: 356, baseType: !109, size: 32, offset: 576)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3012, file: !51, line: 357, baseType: !109, size: 32, offset: 608)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3012, file: !51, line: 358, baseType: !198, size: 64, offset: 640)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3012, file: !51, line: 359, baseType: !198, size: 64, offset: 704)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3012, file: !51, line: 360, baseType: !198, size: 64, offset: 768)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3012, file: !51, line: 361, baseType: !349, size: 64, offset: 832)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3012, file: !51, line: 362, baseType: !109, size: 32, offset: 896)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2977, file: !51, line: 438, baseType: !3031, size: 64, offset: 448)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!109, !1382, !2973, !3011}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2977, file: !51, line: 440, baseType: !3008, size: 64, offset: 512)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2977, file: !51, line: 441, baseType: !3036, size: 64, offset: 576)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!109, !1382, !3039}
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !3041)
!3041 = !{!3042, !3043}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3040, file: !51, line: 412, baseType: !7, size: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3040, file: !51, line: 413, baseType: !3044, size: 1344, offset: 64)
!3044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3045, size: 1344, elements: !1160)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !3046)
!3046 = !{!3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3057}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3045, file: !51, line: 398, baseType: !7, size: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3045, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3045, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3045, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3045, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3045, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3045, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3045, file: !51, line: 406, baseType: !202, size: 64, offset: 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3045, file: !51, line: 407, baseType: !3056, size: 64, offset: 320)
!3056 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !182, line: 132, baseType: !198)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3045, file: !51, line: 408, baseType: !3056, size: 64, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2977, file: !51, line: 442, baseType: !2987, size: 64, offset: 640)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1383, file: !14, line: 1200, baseType: !3060, size: 64, offset: 576)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3062)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1383, file: !14, line: 1201, baseType: !175, size: 64, offset: 640)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1383, file: !14, line: 1202, baseType: !175, size: 64, offset: 704)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1383, file: !14, line: 1203, baseType: !175, size: 64, offset: 768)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1383, file: !14, line: 1204, baseType: !1273, size: 64, offset: 832)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1383, file: !14, line: 1205, baseType: !2065, size: 320, offset: 896)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1383, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1383, file: !14, line: 1207, baseType: !366, size: 32, offset: 1248)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1383, file: !14, line: 1209, baseType: !176, size: 64, offset: 1280)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1383, file: !14, line: 1211, baseType: !3072, size: 64, offset: 1344)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3075)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1383, file: !14, line: 1223, baseType: !3077, size: 64, offset: 1408)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1290, line: 34, size: 64, elements: !3078)
!3078 = !{!3079}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3077, file: !1290, line: 35, baseType: !1293, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1383, file: !14, line: 1224, baseType: !181, size: 128, offset: 1472)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1383, file: !14, line: 1225, baseType: !3082, size: 64, offset: 1600)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1383, file: !14, line: 1226, baseType: !3085, size: 64, offset: 1664)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1383, file: !14, line: 1227, baseType: !3088, size: 64, offset: 1728)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1383, file: !14, line: 1228, baseType: !3091, size: 64, offset: 1792)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1383, file: !14, line: 1229, baseType: !1710, size: 128, offset: 1856)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1383, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1383, file: !14, line: 1231, baseType: !3096, size: 2496, offset: 2048)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !3097)
!3097 = !{!3098, !3099, !3100, !3102, !3134}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3096, file: !51, line: 522, baseType: !7, size: 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3096, file: !51, line: 523, baseType: !2065, size: 320, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3096, file: !51, line: 524, baseType: !3101, size: 192, offset: 384)
!3101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1238, size: 192, elements: !1160)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3096, file: !51, line: 525, baseType: !3103, size: 1728, offset: 576)
!3103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3104, size: 1728, elements: !1160)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !3105)
!3105 = !{!3106, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3104, file: !51, line: 223, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !3109)
!3109 = !{!3110, !3111, !3124, !3125}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3108, file: !51, line: 446, baseType: !109, size: 32)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3108, file: !51, line: 447, baseType: !3112, size: 64, offset: 64)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3114)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !3115)
!3115 = !{!3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3114, file: !51, line: 313, baseType: !1876, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3114, file: !51, line: 314, baseType: !1876, size: 64, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3114, file: !51, line: 315, baseType: !1876, size: 64, offset: 128)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3114, file: !51, line: 316, baseType: !1876, size: 64, offset: 192)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3114, file: !51, line: 317, baseType: !2940, size: 64, offset: 256)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3114, file: !51, line: 318, baseType: !2940, size: 64, offset: 320)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3114, file: !51, line: 319, baseType: !2940, size: 64, offset: 384)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3114, file: !51, line: 320, baseType: !2970, size: 64, offset: 448)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3108, file: !51, line: 448, baseType: !1420, size: 64, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3108, file: !51, line: 449, baseType: !3107, size: 64, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3104, file: !51, line: 224, baseType: !109, size: 32, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3104, file: !51, line: 226, baseType: !181, size: 128, offset: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3104, file: !51, line: 227, baseType: !175, size: 64, offset: 256)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3104, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3104, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3104, file: !51, line: 230, baseType: !2908, size: 64, offset: 384)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3104, file: !51, line: 231, baseType: !2908, size: 64, offset: 448)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3104, file: !51, line: 232, baseType: !176, size: 64, offset: 512)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3096, file: !51, line: 526, baseType: !3135, size: 192, offset: 2304)
!3135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3112, size: 192, elements: !1160)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1383, file: !14, line: 1233, baseType: !3137, size: 2368, offset: 4544)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !3138)
!3138 = !{!3139, !3140, !3141}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3137, file: !14, line: 1185, baseType: !220, size: 16)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3137, file: !14, line: 1186, baseType: !220, size: 16, offset: 16)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3137, file: !14, line: 1187, baseType: !3142, size: 2304, offset: 64)
!3142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3143, size: 2304, elements: !1160)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3144, line: 12, size: 768, elements: !3145)
!3144 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3145 = !{!3146, !3154, !3155, !4350, !4351}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3143, file: !3144, line: 13, baseType: !3147, size: 384)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3148, line: 17, size: 384, elements: !3149)
!3148 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3149 = !{!3150, !3151, !3152, !3153}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3147, file: !3148, line: 18, baseType: !109, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3147, file: !3148, line: 19, baseType: !109, size: 32, offset: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3147, file: !3148, line: 20, baseType: !2002, size: 192, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3147, file: !3148, line: 22, baseType: !1686, size: 128, align: 64, offset: 256)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3143, file: !3144, line: 14, baseType: !1543, size: 64, offset: 384)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3143, file: !3144, line: 15, baseType: !3156, size: 64, offset: 448)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3157, line: 16, size: 64, elements: !3158)
!3157 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3158 = !{!3159}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3156, file: !3157, line: 17, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2806, line: 746, size: 58368, elements: !3162)
!3162 = !{!3163, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3243, !3254, !3347, !3351, !3354, !3385, !3386, !3387, !3388, !3399, !3401, !3402, !3403, !3404, !3405, !3406, !3417, !3418, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3435, !3436, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3529, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3577, !3583, !3584, !3585, !3586, !3587, !3591, !3594, !3601, !3606, !3609, !3612, !3615, !3618, !3756, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3792, !3793, !3794, !3803, !3811, !3812, !3813, !3814, !3815, !3820, !3821, !3822, !3825, !3826, !3829, !3832, !3835, !3843, !3846, !3847, !3932, !3933, !3934, !3935, !3936, !3942, !3943, !3944, !3945, !3948, !3949, !3952, !3955, !3956, !3959, !3960, !3961, !3964, !3965, !3966, !3967, !3968, !3969, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !4001, !4002, !4008, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4020, !4092, !4094, !4095, !4096, !4097, !4098, !4099, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4127, !4128, !4129}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3161, file: !2806, line: 752, baseType: !3164, size: 192)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3165, line: 56, size: 192, elements: !3166)
!3165 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3166 = !{!3167, !3168, !3169, !3170}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3164, file: !3165, line: 57, baseType: !175, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3164, file: !3165, line: 58, baseType: !175, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3164, file: !3165, line: 59, baseType: !234, size: 32, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3164, file: !3165, line: 61, baseType: !234, size: 32, offset: 160)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3161, file: !2806, line: 754, baseType: !7, size: 32, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3161, file: !2806, line: 767, baseType: !176, size: 64, offset: 256)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3161, file: !2806, line: 768, baseType: !1991, size: 32, offset: 320)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3161, file: !2806, line: 770, baseType: !7, size: 32, offset: 352)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3161, file: !2806, line: 771, baseType: !7, size: 32, offset: 384)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3161, file: !2806, line: 774, baseType: !109, size: 32, offset: 416)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3161, file: !2806, line: 775, baseType: !3178, size: 128, offset: 448)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3179, line: 58, size: 128, elements: !3180)
!3179 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3180 = !{!3181, !3182, !3187, !3188}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3178, file: !3179, line: 59, baseType: !1948, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, scope: !3178, file: !3179, line: 60, baseType: !3183, size: 32, offset: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3178, file: !3179, line: 60, size: 32, elements: !3184)
!3184 = !{!3185, !3186}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3183, file: !3179, line: 61, baseType: !7, size: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3183, file: !3179, line: 62, baseType: !366, size: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3178, file: !3179, line: 65, baseType: !218, size: 16, offset: 96)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3178, file: !3179, line: 65, baseType: !218, size: 16, offset: 112)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3161, file: !2806, line: 776, baseType: !7, size: 32, offset: 576)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3161, file: !2806, line: 777, baseType: !175, size: 64, offset: 640)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3161, file: !2806, line: 778, baseType: !3160, size: 64, offset: 704)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3161, file: !2806, line: 787, baseType: !109, size: 32, offset: 768)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3161, file: !2806, line: 788, baseType: !109, size: 32, offset: 800)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3161, file: !2806, line: 790, baseType: !109, size: 32, offset: 832)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3161, file: !2806, line: 792, baseType: !109, size: 32, offset: 864)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3161, file: !2806, line: 793, baseType: !109, size: 32, offset: 896)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3161, file: !2806, line: 794, baseType: !109, size: 32, offset: 928)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3161, file: !2806, line: 795, baseType: !7, size: 32, offset: 960)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3161, file: !2806, line: 797, baseType: !3200, size: 2048, offset: 1024)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2806, line: 551, size: 2048, elements: !3201)
!3201 = !{!3202, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3222, !3225, !3226, !3227}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3200, file: !2806, line: 553, baseType: !3203, size: 128)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2806, line: 411, size: 128, elements: !3204)
!3204 = !{!3205, !3206}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3203, file: !2806, line: 412, baseType: !175, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3203, file: !2806, line: 413, baseType: !234, size: 32, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3200, file: !2806, line: 554, baseType: !1579, size: 192, align: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3200, file: !2806, line: 555, baseType: !198, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3200, file: !2806, line: 556, baseType: !198, size: 64, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3200, file: !2806, line: 558, baseType: !181, size: 128, offset: 448)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3200, file: !2806, line: 559, baseType: !7, size: 32, offset: 576)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3200, file: !2806, line: 561, baseType: !198, size: 64, offset: 640)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3200, file: !2806, line: 562, baseType: !198, size: 64, offset: 704)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3200, file: !2806, line: 563, baseType: !198, size: 64, offset: 768)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3200, file: !2806, line: 564, baseType: !198, size: 64, offset: 832)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3200, file: !2806, line: 565, baseType: !349, size: 64, offset: 896)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3200, file: !2806, line: 566, baseType: !198, size: 64, offset: 960)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3200, file: !2806, line: 568, baseType: !198, size: 64, offset: 1024)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3200, file: !2806, line: 571, baseType: !109, size: 32, offset: 1088)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3200, file: !2806, line: 572, baseType: !3221, size: 64, offset: 1152)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3200, file: !2806, line: 574, baseType: !3223, size: 64, offset: 1216)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2806, line: 49, flags: DIFlagFwdDecl)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3200, file: !2806, line: 576, baseType: !3223, size: 64, offset: 1280)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3200, file: !2806, line: 578, baseType: !175, size: 64, offset: 1344)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3200, file: !2806, line: 588, baseType: !3228, size: 512, align: 512, offset: 1536)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2806, line: 497, size: 512, align: 512, elements: !3229)
!3229 = !{!3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3228, file: !2806, line: 498, baseType: !198, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3228, file: !2806, line: 499, baseType: !198, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3228, file: !2806, line: 500, baseType: !198, size: 64, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3228, file: !2806, line: 501, baseType: !234, size: 32, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3228, file: !2806, line: 502, baseType: !234, size: 32, offset: 224)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3228, file: !2806, line: 503, baseType: !175, size: 64, offset: 256)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3228, file: !2806, line: 504, baseType: !175, size: 64, offset: 320)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3228, file: !2806, line: 505, baseType: !175, size: 64, offset: 384)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3228, file: !2806, line: 506, baseType: !3239, size: 64, align: 64, offset: 448)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2806, line: 445, size: 64, align: 64, elements: !3240)
!3240 = !{!3241, !3242}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3239, file: !2806, line: 446, baseType: !7, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3239, file: !2806, line: 447, baseType: !7, size: 32, offset: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3161, file: !2806, line: 798, baseType: !3244, size: 384, offset: 3072)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2806, line: 592, size: 384, elements: !3245)
!3245 = !{!3246, !3247, !3248, !3249, !3250, !3251, !3252}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3244, file: !2806, line: 593, baseType: !181, size: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3244, file: !2806, line: 594, baseType: !175, size: 64, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3244, file: !2806, line: 595, baseType: !175, size: 64, offset: 192)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3244, file: !2806, line: 596, baseType: !7, size: 32, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3244, file: !2806, line: 597, baseType: !220, size: 16, offset: 288)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3244, file: !2806, line: 598, baseType: !220, size: 16, offset: 304)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3244, file: !2806, line: 600, baseType: !3253, size: 64, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3161, file: !2806, line: 799, baseType: !3255, size: 1792, offset: 3456)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2806, line: 610, size: 1792, elements: !3256)
!3256 = !{!3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3344, !3345}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3255, file: !2806, line: 611, baseType: !1579, size: 192, align: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3255, file: !2806, line: 618, baseType: !198, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3255, file: !2806, line: 619, baseType: !198, size: 64, offset: 256)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3255, file: !2806, line: 620, baseType: !198, size: 64, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3255, file: !2806, line: 621, baseType: !198, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3255, file: !2806, line: 622, baseType: !198, size: 64, offset: 448)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3255, file: !2806, line: 629, baseType: !349, size: 64, offset: 512)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3255, file: !2806, line: 630, baseType: !198, size: 64, offset: 576)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3255, file: !2806, line: 631, baseType: !7, size: 32, offset: 640)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3255, file: !2806, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3255, file: !2806, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3255, file: !2806, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3255, file: !2806, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3255, file: !2806, line: 662, baseType: !3271, size: 512, offset: 704)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !3272)
!3272 = !{!3273, !3281, !3282, !3287, !3340, !3341, !3342, !3343}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3271, file: !57, line: 119, baseType: !3274, size: 256)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3275, line: 9, size: 256, elements: !3276)
!3275 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3276 = !{!3277, !3278}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3274, file: !3275, line: 10, baseType: !1579, size: 192, align: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3274, file: !3275, line: 11, baseType: !3279, size: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3280, line: 29, baseType: !349)
!3280 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3271, file: !57, line: 120, baseType: !3279, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3271, file: !57, line: 121, baseType: !3283, size: 64, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!56, !3286}
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3271, file: !57, line: 122, baseType: !3288, size: 64, offset: 384)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !3290)
!3290 = !{!3291, !3314, !3315, !3318, !3323, !3324, !3335, !3339}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3289, file: !57, line: 160, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !3294)
!3294 = !{!3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3293, file: !57, line: 216, baseType: !353, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3293, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3293, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3293, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3293, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3293, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3293, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3293, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3293, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3293, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3293, file: !57, line: 227, baseType: !220, size: 16, offset: 192)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3293, file: !57, line: 228, baseType: !220, size: 16, offset: 208)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3293, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3293, file: !57, line: 235, baseType: !3279, size: 64, offset: 256)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3293, file: !57, line: 236, baseType: !3286, size: 64, offset: 320)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3293, file: !57, line: 237, baseType: !3279, size: 64, offset: 384)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3293, file: !57, line: 238, baseType: !3286, size: 64, offset: 448)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3293, file: !57, line: 239, baseType: !3313, size: 4096, align: 512, offset: 512)
!3313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3289, size: 4096, align: 512, elements: !257)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3289, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3289, file: !57, line: 162, baseType: !3316, size: 32, offset: 96)
!3316 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !182, line: 32, baseType: !3317)
!3317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !1193, line: 96, baseType: !109)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3289, file: !57, line: 163, baseType: !3319, size: 32, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !1280, line: 274, baseType: !3320)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !1280, line: 274, size: 32, elements: !3321)
!3321 = !{!3322}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3320, file: !1280, line: 274, baseType: !1284, size: 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3289, file: !57, line: 164, baseType: !3286, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3289, file: !57, line: 165, baseType: !3325, size: 128, offset: 256)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3275, line: 14, size: 128, elements: !3326)
!3326 = !{!3327}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3325, file: !3275, line: 15, baseType: !3328, size: 128)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1580, line: 26, size: 128, elements: !3329)
!3329 = !{!3330, !3334}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3328, file: !1580, line: 27, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1580, line: 12, size: 64, elements: !3332)
!3332 = !{!3333}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3331, file: !1580, line: 13, baseType: !1584, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !3328, file: !1580, line: 28, baseType: !1584, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3289, file: !57, line: 166, baseType: !3336, size: 64, offset: 384)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!3279}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3289, file: !57, line: 167, baseType: !3279, size: 64, offset: 448)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3271, file: !57, line: 123, baseType: !222, size: 8, offset: 448)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3271, file: !57, line: 124, baseType: !222, size: 8, offset: 456)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3271, file: !57, line: 125, baseType: !222, size: 8, offset: 464)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3271, file: !57, line: 126, baseType: !222, size: 8, offset: 472)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3255, file: !2806, line: 671, baseType: !3271, size: 512, offset: 1216)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3255, file: !2806, line: 679, baseType: !3346, size: 64, offset: 1728)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3161, file: !2806, line: 800, baseType: !3348, size: 64, offset: 5248)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3350)
!3350 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2806, line: 800, flags: DIFlagFwdDecl)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3161, file: !2806, line: 809, baseType: !3352, size: 64, offset: 5312)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2806, line: 70, flags: DIFlagFwdDecl)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3161, file: !2806, line: 825, baseType: !3355, size: 2048, align: 512, offset: 5632)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2806, line: 509, size: 2048, align: 512, elements: !3356)
!3356 = !{!3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3355, file: !2806, line: 511, baseType: !198, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3355, file: !2806, line: 512, baseType: !198, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3355, file: !2806, line: 513, baseType: !198, size: 64, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3355, file: !2806, line: 514, baseType: !198, size: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3355, file: !2806, line: 515, baseType: !198, size: 64, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3355, file: !2806, line: 516, baseType: !198, size: 64, offset: 320)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3355, file: !2806, line: 518, baseType: !198, size: 64, offset: 384)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3355, file: !2806, line: 519, baseType: !198, size: 64, offset: 448)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3355, file: !2806, line: 520, baseType: !349, size: 64, offset: 512)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3355, file: !2806, line: 522, baseType: !198, size: 64, offset: 576)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3355, file: !2806, line: 523, baseType: !198, size: 64, offset: 640)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3355, file: !2806, line: 524, baseType: !349, size: 64, offset: 704)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3355, file: !2806, line: 526, baseType: !349, size: 64, offset: 768)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3355, file: !2806, line: 527, baseType: !198, size: 64, offset: 832)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3355, file: !2806, line: 529, baseType: !198, size: 64, offset: 896)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3355, file: !2806, line: 530, baseType: !198, size: 64, offset: 960)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3355, file: !2806, line: 531, baseType: !198, size: 64, offset: 1024)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3355, file: !2806, line: 532, baseType: !198, size: 64, offset: 1088)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3355, file: !2806, line: 533, baseType: !198, size: 64, offset: 1152)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3355, file: !2806, line: 535, baseType: !198, size: 64, offset: 1216)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3355, file: !2806, line: 536, baseType: !198, size: 64, offset: 1280)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3355, file: !2806, line: 537, baseType: !198, size: 64, offset: 1344)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3355, file: !2806, line: 538, baseType: !198, size: 64, offset: 1408)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3355, file: !2806, line: 539, baseType: !198, size: 64, offset: 1472)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3355, file: !2806, line: 540, baseType: !198, size: 64, offset: 1536)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3355, file: !2806, line: 541, baseType: !198, size: 64, offset: 1600)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3355, file: !2806, line: 542, baseType: !198, size: 64, offset: 1664)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3355, file: !2806, line: 543, baseType: !198, size: 64, offset: 1728)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3161, file: !2806, line: 833, baseType: !7, size: 32, offset: 7680)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3161, file: !2806, line: 836, baseType: !7, size: 32, offset: 7712)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3161, file: !2806, line: 837, baseType: !109, size: 32, offset: 7744)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3161, file: !2806, line: 838, baseType: !3389, size: 64, offset: 7808)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3391)
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3392, line: 19, baseType: !3393)
!3392 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3392, line: 19, size: 64, elements: !3394)
!3394 = !{!3395}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3393, file: !3392, line: 19, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 64, elements: !3397)
!3397 = !{!3398}
!3398 = !DISubrange(count: 1)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3161, file: !2806, line: 839, baseType: !3400, size: 64, offset: 7872)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3161, file: !2806, line: 840, baseType: !3391, size: 64, offset: 7936)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3161, file: !2806, line: 841, baseType: !176, size: 64, offset: 8000)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3161, file: !2806, line: 843, baseType: !220, size: 16, offset: 8064)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3161, file: !2806, line: 845, baseType: !220, size: 16, offset: 8080)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3161, file: !2806, line: 848, baseType: !109, size: 32, offset: 8096)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3161, file: !2806, line: 849, baseType: !3407, size: 32, offset: 8128)
!3407 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2806, line: 718, size: 32, elements: !3408)
!3408 = !{!3409, !3416}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3407, file: !2806, line: 724, baseType: !3410, size: 32)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3407, file: !2806, line: 719, size: 32, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3410, file: !2806, line: 720, baseType: !222, size: 8)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3410, file: !2806, line: 721, baseType: !222, size: 8, offset: 8)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3410, file: !2806, line: 722, baseType: !222, size: 8, offset: 16)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3410, file: !2806, line: 723, baseType: !222, size: 8, offset: 24)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3407, file: !2806, line: 725, baseType: !234, size: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3161, file: !2806, line: 850, baseType: !181, size: 128, offset: 8192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3161, file: !2806, line: 851, baseType: !3419, size: 64, offset: 8320)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2806, line: 60, flags: DIFlagFwdDecl)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3161, file: !2806, line: 855, baseType: !175, size: 64, offset: 8384)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3161, file: !2806, line: 856, baseType: !222, size: 8, offset: 8448)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3161, file: !2806, line: 857, baseType: !222, size: 8, offset: 8456)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3161, file: !2806, line: 858, baseType: !109, size: 32, offset: 8480)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3161, file: !2806, line: 859, baseType: !181, size: 128, offset: 8512)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3161, file: !2806, line: 860, baseType: !109, size: 32, offset: 8640)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3161, file: !2806, line: 861, baseType: !181, size: 128, offset: 8704)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3161, file: !2806, line: 873, baseType: !3429, size: 256, offset: 8832)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2806, line: 376, size: 256, elements: !3430)
!3430 = !{!3431, !3432, !3433, !3434}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3429, file: !2806, line: 381, baseType: !175, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3429, file: !2806, line: 384, baseType: !202, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3429, file: !2806, line: 389, baseType: !202, size: 64, offset: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3429, file: !2806, line: 392, baseType: !202, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3161, file: !2806, line: 875, baseType: !181, size: 128, offset: 9088)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3161, file: !2806, line: 877, baseType: !3437, size: 320, offset: 9216)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3438, line: 86, size: 320, elements: !3439)
!3438 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3439 = !{!3440, !3441, !3442}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3437, file: !3438, line: 87, baseType: !109, size: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3437, file: !3438, line: 88, baseType: !181, size: 128, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3437, file: !3438, line: 89, baseType: !181, size: 128, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3161, file: !2806, line: 878, baseType: !1579, size: 192, align: 64, offset: 9536)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3161, file: !2806, line: 881, baseType: !2343, size: 64, offset: 9728)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3161, file: !2806, line: 882, baseType: !2343, size: 64, offset: 9792)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3161, file: !2806, line: 884, baseType: !109, size: 32, offset: 9856)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3161, file: !2806, line: 885, baseType: !109, size: 32, offset: 9888)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3161, file: !2806, line: 886, baseType: !109, size: 32, offset: 9920)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3161, file: !2806, line: 888, baseType: !109, size: 32, offset: 9952)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3161, file: !2806, line: 890, baseType: !175, size: 64, offset: 9984)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3161, file: !2806, line: 893, baseType: !7, size: 32, offset: 10048)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3161, file: !2806, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3161, file: !2806, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3161, file: !2806, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3161, file: !2806, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3161, file: !2806, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3161, file: !2806, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3161, file: !2806, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3161, file: !2806, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3161, file: !2806, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3161, file: !2806, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3161, file: !2806, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3161, file: !2806, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3161, file: !2806, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3161, file: !2806, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3161, file: !2806, line: 969, baseType: !175, size: 64, offset: 10176)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3161, file: !2806, line: 971, baseType: !3468, size: 448, offset: 10240)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !3469)
!3469 = !{!3470, !3471, !3476}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3468, file: !62, line: 26, baseType: !175, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3468, file: !62, line: 27, baseType: !3472, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!1195, !3475}
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, scope: !3468, file: !62, line: 28, baseType: !3477, size: 320, offset: 128)
!3477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3468, file: !62, line: 28, size: 320, elements: !3478)
!3478 = !{!3479, !3489, !3514}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3477, file: !62, line: 37, baseType: !3480, size: 320)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3477, file: !62, line: 30, size: 320, elements: !3481)
!3481 = !{!3482, !3484, !3485, !3486, !3487, !3488}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3480, file: !62, line: 31, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3480, file: !62, line: 32, baseType: !234, size: 32, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3480, file: !62, line: 33, baseType: !234, size: 32, offset: 96)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3480, file: !62, line: 34, baseType: !234, size: 32, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3480, file: !62, line: 35, baseType: !198, size: 64, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3480, file: !62, line: 36, baseType: !3483, size: 64, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3477, file: !62, line: 47, baseType: !3490, size: 192)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3477, file: !62, line: 39, size: 192, elements: !3491)
!3491 = !{!3492, !3493, !3494, !3513}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3490, file: !62, line: 40, baseType: !3316, size: 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3490, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, scope: !3490, file: !62, line: 42, baseType: !3495, size: 64, offset: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3490, file: !62, line: 42, size: 64, elements: !3496)
!3496 = !{!3497, !3505}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3495, file: !62, line: 43, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3500, line: 7, size: 128, elements: !3501)
!3500 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3501 = !{!3502, !3504}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3499, file: !3500, line: 8, baseType: !3503, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !1193, line: 93, baseType: !351)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3499, file: !3500, line: 9, baseType: !351, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3495, file: !62, line: 44, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3508, line: 7, size: 64, elements: !3509)
!3508 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3509 = !{!3510, !3512}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3507, file: !3508, line: 8, baseType: !3511, size: 32)
!3511 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3508, line: 5, baseType: !1486)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3507, file: !3508, line: 9, baseType: !1486, size: 32, offset: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3490, file: !62, line: 46, baseType: !198, size: 64, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3477, file: !62, line: 55, baseType: !3515, size: 256)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3477, file: !62, line: 49, size: 256, elements: !3516)
!3516 = !{!3517, !3525, !3526, !3527, !3528}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3515, file: !62, line: 50, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3520, line: 36, size: 64, elements: !3521)
!3520 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!3521 = !{!3522, !3523, !3524}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3519, file: !3520, line: 37, baseType: !109, size: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3519, file: !3520, line: 38, baseType: !1605, size: 16, offset: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !3519, file: !3520, line: 39, baseType: !1605, size: 16, offset: 48)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3515, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3515, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3515, file: !62, line: 53, baseType: !175, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3515, file: !62, line: 54, baseType: !175, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3161, file: !2806, line: 973, baseType: !3530, size: 32, offset: 10688)
!3530 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !182, line: 27, baseType: !3531)
!3531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !1193, line: 28, baseType: !109)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3161, file: !2806, line: 974, baseType: !3530, size: 32, offset: 10720)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3161, file: !2806, line: 978, baseType: !175, size: 64, offset: 10752)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3161, file: !2806, line: 987, baseType: !3160, size: 64, offset: 10816)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3161, file: !2806, line: 990, baseType: !3160, size: 64, offset: 10880)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3161, file: !2806, line: 995, baseType: !181, size: 128, offset: 10944)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3161, file: !2806, line: 996, baseType: !181, size: 128, offset: 11072)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3161, file: !2806, line: 997, baseType: !3160, size: 64, offset: 11200)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3161, file: !2806, line: 1005, baseType: !181, size: 128, offset: 11264)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3161, file: !2806, line: 1006, baseType: !181, size: 128, offset: 11392)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3161, file: !2806, line: 1009, baseType: !1987, size: 64, offset: 11520)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3161, file: !2806, line: 1010, baseType: !3543, size: 512, offset: 11584)
!3543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1710, size: 512, elements: !246)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3161, file: !2806, line: 1011, baseType: !181, size: 128, offset: 12096)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3161, file: !2806, line: 1012, baseType: !181, size: 128, offset: 12224)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3161, file: !2806, line: 1014, baseType: !1439, size: 64, offset: 12352)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3161, file: !2806, line: 1017, baseType: !1596, size: 64, offset: 12416)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3161, file: !2806, line: 1020, baseType: !1596, size: 64, offset: 12480)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3161, file: !2806, line: 1023, baseType: !176, size: 64, offset: 12544)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3161, file: !2806, line: 1025, baseType: !198, size: 64, offset: 12608)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3161, file: !2806, line: 1026, baseType: !198, size: 64, offset: 12672)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3161, file: !2806, line: 1031, baseType: !198, size: 64, offset: 12736)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3161, file: !2806, line: 1032, baseType: !3554, size: 192, offset: 12800)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2806, line: 324, size: 192, elements: !3555)
!3555 = !{!3556, !3557, !3558}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3554, file: !2806, line: 326, baseType: !198, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3554, file: !2806, line: 327, baseType: !198, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3554, file: !2806, line: 328, baseType: !353, size: 32, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3161, file: !2806, line: 1041, baseType: !175, size: 64, offset: 12992)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3161, file: !2806, line: 1042, baseType: !175, size: 64, offset: 13056)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3161, file: !2806, line: 1045, baseType: !198, size: 64, offset: 13120)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3161, file: !2806, line: 1048, baseType: !198, size: 64, offset: 13184)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3161, file: !2806, line: 1051, baseType: !175, size: 64, offset: 13248)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3161, file: !2806, line: 1052, baseType: !175, size: 64, offset: 13312)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3161, file: !2806, line: 1055, baseType: !3566, size: 640, offset: 13376)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3567, line: 132, size: 640, elements: !3568)
!3567 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3568 = !{!3569, !3575, !3576}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3566, file: !3567, line: 133, baseType: !3570, size: 576)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3571, size: 576, elements: !1160)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3567, line: 117, size: 192, elements: !3572)
!3572 = !{!3573, !3574}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3571, file: !3567, line: 118, baseType: !198, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3571, file: !3567, line: 119, baseType: !3325, size: 128, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3566, file: !3567, line: 134, baseType: !7, size: 32, offset: 576)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3566, file: !3567, line: 135, baseType: !7, size: 32, offset: 608)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3161, file: !2806, line: 1058, baseType: !3578, size: 448, offset: 14016)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3567, line: 144, size: 448, elements: !3579)
!3579 = !{!3580, !3581, !3582}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3578, file: !3567, line: 145, baseType: !1686, size: 128, align: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3578, file: !3567, line: 146, baseType: !339, size: 256, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3578, file: !3567, line: 147, baseType: !7, size: 32, offset: 384)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3161, file: !2806, line: 1064, baseType: !2024, size: 64, offset: 14464)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3161, file: !2806, line: 1067, baseType: !2024, size: 64, offset: 14528)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3161, file: !2806, line: 1070, baseType: !2024, size: 64, offset: 14592)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3161, file: !2806, line: 1074, baseType: !2051, size: 64, offset: 14656)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3161, file: !2806, line: 1084, baseType: !3588, size: 128, offset: 14720)
!3588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 128, elements: !3589)
!3589 = !{!3590}
!3590 = !DISubrange(count: 16)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3161, file: !2806, line: 1086, baseType: !3592, size: 64, offset: 14848)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2806, line: 55, flags: DIFlagFwdDecl)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3161, file: !2806, line: 1089, baseType: !3595, size: 64, offset: 14912)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3596, line: 12, size: 64, elements: !3597)
!3596 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3597 = !{!3598}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3595, file: !3596, line: 13, baseType: !3599, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3596, line: 8, flags: DIFlagFwdDecl)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3161, file: !2806, line: 1090, baseType: !3602, size: 128, offset: 14976)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3603, line: 13, size: 128, elements: !3604)
!3603 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3604 = !{!3605}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3602, file: !3603, line: 14, baseType: !181, size: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3161, file: !2806, line: 1097, baseType: !3607, size: 64, offset: 15104)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2806, line: 50, flags: DIFlagFwdDecl)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3161, file: !2806, line: 1100, baseType: !3610, size: 64, offset: 15168)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2806, line: 1100, flags: DIFlagFwdDecl)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3161, file: !2806, line: 1103, baseType: !3613, size: 64, offset: 15232)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2806, line: 53, flags: DIFlagFwdDecl)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3161, file: !2806, line: 1107, baseType: !3616, size: 64, offset: 15296)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2806, line: 56, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3161, file: !2806, line: 1110, baseType: !3619, size: 64, offset: 15360)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3621, line: 93, size: 8768, elements: !3622)
!3621 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3622 = !{!3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3670, !3679, !3680, !3682, !3683, !3684, !3687, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3725, !3726, !3733, !3743, !3746, !3747, !3750, !3751, !3752, !3753, !3754, !3755}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3620, file: !3621, line: 94, baseType: !1991, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3620, file: !3621, line: 95, baseType: !366, size: 32, offset: 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3620, file: !3621, line: 96, baseType: !109, size: 32, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3620, file: !3621, line: 97, baseType: !109, size: 32, offset: 96)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3620, file: !3621, line: 98, baseType: !181, size: 128, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3620, file: !3621, line: 100, baseType: !2002, size: 192, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3620, file: !3621, line: 103, baseType: !3160, size: 64, offset: 448)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3620, file: !3621, line: 106, baseType: !3631, size: 192, offset: 512)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2206, line: 32, size: 192, elements: !3632)
!3632 = !{!3633, !3634}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3631, file: !2206, line: 33, baseType: !181, size: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3631, file: !2206, line: 34, baseType: !3635, size: 64, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3636, line: 25, baseType: !3637)
!3636 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3636, line: 23, size: 64, elements: !3638)
!3638 = !{!3639}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3637, file: !3636, line: 24, baseType: !3396, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3620, file: !3621, line: 109, baseType: !1832, size: 64, offset: 704)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3620, file: !3621, line: 112, baseType: !109, size: 32, offset: 768)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3620, file: !3621, line: 114, baseType: !109, size: 32, offset: 800)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3620, file: !3621, line: 115, baseType: !3160, size: 64, offset: 832)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3620, file: !3621, line: 118, baseType: !109, size: 32, offset: 896)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3620, file: !3621, line: 119, baseType: !7, size: 32, offset: 928)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3620, file: !3621, line: 121, baseType: !3647, size: 64, offset: 960)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3621, line: 80, size: 448, elements: !3649)
!3649 = !{!3650, !3651, !3657}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3648, file: !3621, line: 81, baseType: !366, size: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3648, file: !3621, line: 82, baseType: !3652, size: 128, offset: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3621, line: 75, size: 128, elements: !3653)
!3653 = !{!3654, !3655}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3652, file: !3621, line: 76, baseType: !3160, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3652, file: !3621, line: 77, baseType: !3656, size: 64, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3648, file: !3621, line: 83, baseType: !1440, size: 256, offset: 192)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3620, file: !3621, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3620, file: !3621, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3620, file: !3621, line: 138, baseType: !7, size: 32, offset: 1056)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3620, file: !3621, line: 139, baseType: !181, size: 128, offset: 1088)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3620, file: !3621, line: 142, baseType: !3271, size: 512, offset: 1216)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3620, file: !3621, line: 143, baseType: !3279, size: 64, offset: 1728)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3620, file: !3621, line: 150, baseType: !3665, size: 256, offset: 1792)
!3665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3666, size: 256, elements: !1586)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3621, line: 38, size: 128, elements: !3667)
!3667 = !{!3668, !3669}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3666, file: !3621, line: 39, baseType: !198, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3666, file: !3621, line: 40, baseType: !198, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3620, file: !3621, line: 156, baseType: !3671, size: 192, offset: 2048)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3621, line: 66, size: 192, elements: !3672)
!3672 = !{!3673}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3671, file: !3621, line: 67, baseType: !3674, size: 192)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3621, line: 47, size: 192, elements: !3675)
!3675 = !{!3676, !3677, !3678}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3674, file: !3621, line: 48, baseType: !345, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3674, file: !3621, line: 49, baseType: !345, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3674, file: !3621, line: 50, baseType: !345, size: 64, offset: 128)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3620, file: !3621, line: 160, baseType: !3566, size: 640, offset: 2240)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3620, file: !3621, line: 163, baseType: !3681, size: 256, offset: 2880)
!3681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1987, size: 256, elements: !246)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3620, file: !3621, line: 169, baseType: !1987, size: 64, offset: 3136)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3620, file: !3621, line: 172, baseType: !109, size: 32, offset: 3200)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3620, file: !3621, line: 174, baseType: !3685, size: 64, offset: 3264)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3621, line: 174, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3620, file: !3621, line: 185, baseType: !3688, size: 64, offset: 3328)
!3688 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !1280, line: 860, baseType: !3689)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1280, line: 853, size: 64, elements: !3690)
!3690 = !{!3691, !3692}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3689, file: !1280, line: 858, baseType: !1279, size: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3689, file: !1280, line: 859, baseType: !1124, size: 32, offset: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3620, file: !3621, line: 186, baseType: !198, size: 64, offset: 3392)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3620, file: !3621, line: 186, baseType: !198, size: 64, offset: 3456)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3620, file: !3621, line: 186, baseType: !198, size: 64, offset: 3520)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3620, file: !3621, line: 186, baseType: !198, size: 64, offset: 3584)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3620, file: !3621, line: 187, baseType: !198, size: 64, offset: 3648)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3620, file: !3621, line: 188, baseType: !198, size: 64, offset: 3712)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3620, file: !3621, line: 189, baseType: !3554, size: 192, offset: 3776)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3620, file: !3621, line: 190, baseType: !175, size: 64, offset: 3968)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3620, file: !3621, line: 190, baseType: !175, size: 64, offset: 4032)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3620, file: !3621, line: 190, baseType: !175, size: 64, offset: 4096)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3620, file: !3621, line: 190, baseType: !175, size: 64, offset: 4160)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3620, file: !3621, line: 191, baseType: !175, size: 64, offset: 4224)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3620, file: !3621, line: 191, baseType: !175, size: 64, offset: 4288)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3620, file: !3621, line: 191, baseType: !175, size: 64, offset: 4352)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3620, file: !3621, line: 191, baseType: !175, size: 64, offset: 4416)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3620, file: !3621, line: 192, baseType: !175, size: 64, offset: 4480)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3620, file: !3621, line: 192, baseType: !175, size: 64, offset: 4544)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3620, file: !3621, line: 192, baseType: !175, size: 64, offset: 4608)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3620, file: !3621, line: 192, baseType: !175, size: 64, offset: 4672)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3620, file: !3621, line: 193, baseType: !175, size: 64, offset: 4736)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3620, file: !3621, line: 193, baseType: !175, size: 64, offset: 4800)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3620, file: !3621, line: 194, baseType: !3715, size: 448, offset: 4864)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3716, line: 12, size: 448, elements: !3717)
!3716 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3717 = !{!3718, !3719, !3720, !3721, !3722, !3723, !3724}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3715, file: !3716, line: 15, baseType: !198, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3715, file: !3716, line: 17, baseType: !198, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3715, file: !3716, line: 19, baseType: !198, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3715, file: !3716, line: 21, baseType: !198, size: 64, offset: 192)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3715, file: !3716, line: 29, baseType: !198, size: 64, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3715, file: !3716, line: 35, baseType: !198, size: 64, offset: 320)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3715, file: !3716, line: 44, baseType: !198, size: 64, offset: 384)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3620, file: !3621, line: 202, baseType: !202, size: 64, offset: 5312)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3620, file: !3621, line: 213, baseType: !3727, size: 2048, offset: 5376)
!3727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3728, size: 2048, elements: !3589)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3729, line: 43, size: 128, elements: !3730)
!3729 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3730 = !{!3731, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3728, file: !3729, line: 44, baseType: !1208, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3728, file: !3729, line: 45, baseType: !1208, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3620, file: !3621, line: 216, baseType: !3734, size: 448, offset: 7424)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3621, line: 30, size: 448, elements: !3735)
!3735 = !{!3736, !3737, !3738, !3739, !3740, !3741, !3742}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3734, file: !3621, line: 31, baseType: !109, size: 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3734, file: !3621, line: 32, baseType: !1195, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3734, file: !3621, line: 33, baseType: !175, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3734, file: !3621, line: 34, baseType: !198, size: 64, offset: 192)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3734, file: !3621, line: 34, baseType: !198, size: 64, offset: 256)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3734, file: !3621, line: 35, baseType: !175, size: 64, offset: 320)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3734, file: !3621, line: 35, baseType: !175, size: 64, offset: 384)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3620, file: !3621, line: 219, baseType: !3744, size: 64, offset: 7872)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3621, line: 219, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3620, file: !3621, line: 222, baseType: !7, size: 32, offset: 7936)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3620, file: !3621, line: 223, baseType: !3748, size: 64, offset: 8000)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3621, line: 223, flags: DIFlagFwdDecl)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3620, file: !3621, line: 230, baseType: !321, size: 8, offset: 8064)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3620, file: !3621, line: 231, baseType: !1605, size: 16, offset: 8080)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3620, file: !3621, line: 232, baseType: !1605, size: 16, offset: 8096)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3620, file: !3621, line: 234, baseType: !2343, size: 64, offset: 8128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3620, file: !3621, line: 237, baseType: !339, size: 256, offset: 8192)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3620, file: !3621, line: 243, baseType: !2065, size: 320, offset: 8448)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3161, file: !2806, line: 1111, baseType: !3757, size: 64, offset: 15424)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3621, line: 20, size: 16640, elements: !3759)
!3759 = !{!3760, !3761, !3762, !3763}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3758, file: !3621, line: 21, baseType: !1124, size: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3758, file: !3621, line: 22, baseType: !1991, size: 32, offset: 32)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3758, file: !3621, line: 23, baseType: !2002, size: 192, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3758, file: !3621, line: 24, baseType: !3764, size: 16384, offset: 256)
!3764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3765, size: 16384, elements: !1164)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2206, line: 51, size: 256, elements: !3766)
!3766 = !{!3767}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3765, file: !2206, line: 52, baseType: !3768, size: 256)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2206, line: 37, size: 256, elements: !3769)
!3769 = !{!3770, !3775, !3776, !3780}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3768, file: !2206, line: 39, baseType: !3771, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3772, line: 83, baseType: !3773)
!3772 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3772, line: 82, baseType: !992)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3768, file: !2206, line: 40, baseType: !175, size: 64, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3768, file: !2206, line: 46, baseType: !3777, size: 64, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3772, line: 86, baseType: !3778)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3772, line: 85, baseType: !777)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3768, file: !2206, line: 48, baseType: !3635, size: 64, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3161, file: !2806, line: 1112, baseType: !3635, size: 64, offset: 15488)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3161, file: !2806, line: 1113, baseType: !3635, size: 64, offset: 15552)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3161, file: !2806, line: 1115, baseType: !3635, size: 64, offset: 15616)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3161, file: !2806, line: 1116, baseType: !3631, size: 192, offset: 15680)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3161, file: !2806, line: 1117, baseType: !175, size: 64, offset: 15872)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3161, file: !2806, line: 1118, baseType: !1206, size: 64, offset: 15936)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3161, file: !2806, line: 1119, baseType: !7, size: 32, offset: 16000)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3161, file: !2806, line: 1121, baseType: !1685, size: 64, offset: 16064)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3161, file: !2806, line: 1125, baseType: !3790, size: 64, offset: 16128)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2806, line: 43, flags: DIFlagFwdDecl)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3161, file: !2806, line: 1127, baseType: !1244, size: 32, offset: 16192)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3161, file: !2806, line: 1128, baseType: !7, size: 32, offset: 16224)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3161, file: !2806, line: 1130, baseType: !3795, size: 128, offset: 16256)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3796, line: 37, size: 128, elements: !3797)
!3796 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3797 = !{!3798, !3799, !3800}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3795, file: !3796, line: 38, baseType: !109, size: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3795, file: !3796, line: 39, baseType: !366, size: 32, offset: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3795, file: !3796, line: 40, baseType: !3801, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3796, line: 24, flags: DIFlagFwdDecl)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3161, file: !2806, line: 1131, baseType: !3804, size: 256, offset: 16384)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3805, line: 12, size: 256, elements: !3806)
!3805 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3806 = !{!3807, !3808, !3809, !3810}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3804, file: !3805, line: 13, baseType: !216, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3804, file: !3805, line: 14, baseType: !175, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3804, file: !3805, line: 15, baseType: !175, size: 64, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3804, file: !3805, line: 16, baseType: !321, size: 8, offset: 192)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3161, file: !2806, line: 1134, baseType: !198, size: 64, offset: 16640)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3161, file: !2806, line: 1135, baseType: !198, size: 64, offset: 16704)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3161, file: !2806, line: 1138, baseType: !1124, size: 32, offset: 16768)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3161, file: !2806, line: 1141, baseType: !353, size: 32, offset: 16800)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3161, file: !2806, line: 1143, baseType: !3816, size: 64, offset: 16832)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2806, line: 735, size: 64, elements: !3817)
!3817 = !{!3818}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3816, file: !2806, line: 736, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3161, file: !2806, line: 1147, baseType: !3328, size: 128, offset: 16896)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3161, file: !2806, line: 1149, baseType: !3160, size: 64, offset: 17024)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3161, file: !2806, line: 1151, baseType: !3823, size: 64, offset: 17088)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2806, line: 1151, flags: DIFlagFwdDecl)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3161, file: !2806, line: 1188, baseType: !176, size: 64, offset: 17152)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3161, file: !2806, line: 1191, baseType: !3827, size: 64, offset: 17216)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2806, line: 44, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3161, file: !2806, line: 1194, baseType: !3830, size: 64, offset: 17280)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2806, line: 45, flags: DIFlagFwdDecl)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3161, file: !2806, line: 1197, baseType: !3833, size: 64, offset: 17344)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2806, line: 61, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3161, file: !2806, line: 1199, baseType: !3836, size: 64, offset: 17408)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3838, line: 99, size: 128, elements: !3839)
!3838 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3839 = !{!3840, !3841, !3842}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3837, file: !3838, line: 100, baseType: !343, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3837, file: !3838, line: 101, baseType: !366, size: 32, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3837, file: !3838, line: 103, baseType: !220, size: 16, offset: 96)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3161, file: !2806, line: 1202, baseType: !3844, size: 64, offset: 17472)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2806, line: 48, flags: DIFlagFwdDecl)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3161, file: !2806, line: 1205, baseType: !175, size: 64, offset: 17536)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3161, file: !2806, line: 1206, baseType: !3848, size: 64, offset: 17600)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2206, line: 14, baseType: !3850)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2206, line: 12, size: 384, elements: !3851)
!3851 = !{!3852}
!3852 = !DIDerivedType(tag: DW_TAG_member, scope: !3850, file: !2206, line: 13, baseType: !3853, size: 384)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !2206, line: 13, size: 384, elements: !3854)
!3854 = !{!3855, !3856, !3857, !3858}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3853, file: !2206, line: 13, baseType: !109, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3853, file: !2206, line: 13, baseType: !109, size: 32, offset: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3853, file: !2206, line: 13, baseType: !109, size: 32, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3853, file: !2206, line: 13, baseType: !3859, size: 256, offset: 128)
!3859 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3860, line: 37, size: 256, elements: !3861)
!3860 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3861 = !{!3862, !3867, !3880, !3886, !3895, !3921, !3926}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3859, file: !3860, line: 42, baseType: !3863, size: 64)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3859, file: !3860, line: 39, size: 64, elements: !3864)
!3864 = !{!3865, !3866}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3863, file: !3860, line: 40, baseType: !3531, size: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3863, file: !3860, line: 41, baseType: !1250, size: 32, offset: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3859, file: !3860, line: 50, baseType: !3868, size: 192)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3859, file: !3860, line: 45, size: 192, elements: !3869)
!3869 = !{!3870, !3872, !3873, !3879}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3868, file: !3860, line: 46, baseType: !3871, size: 32)
!3871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !1193, line: 95, baseType: !109)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3868, file: !3860, line: 47, baseType: !109, size: 32, offset: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3868, file: !3860, line: 48, baseType: !3874, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3860, line: 11, baseType: !3875)
!3875 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3860, line: 8, size: 64, elements: !3876)
!3876 = !{!3877, !3878}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3875, file: !3860, line: 9, baseType: !109, size: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3875, file: !3860, line: 10, baseType: !176, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3868, file: !3860, line: 49, baseType: !109, size: 32, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3859, file: !3860, line: 57, baseType: !3881, size: 128)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3859, file: !3860, line: 53, size: 128, elements: !3882)
!3882 = !{!3883, !3884, !3885}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3881, file: !3860, line: 54, baseType: !3531, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3881, file: !3860, line: 55, baseType: !1250, size: 32, offset: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3881, file: !3860, line: 56, baseType: !3874, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3859, file: !3860, line: 66, baseType: !3887, size: 256)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3859, file: !3860, line: 60, size: 256, elements: !3888)
!3888 = !{!3889, !3890, !3891, !3892, !3894}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3887, file: !3860, line: 61, baseType: !3531, size: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3887, file: !3860, line: 62, baseType: !1250, size: 32, offset: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3887, file: !3860, line: 63, baseType: !109, size: 32, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3887, file: !3860, line: 64, baseType: !3893, size: 64, offset: 128)
!3893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !1193, line: 94, baseType: !1194)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3887, file: !3860, line: 65, baseType: !3893, size: 64, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3859, file: !3860, line: 105, baseType: !3896, size: 256)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3859, file: !3860, line: 69, size: 256, elements: !3897)
!3897 = !{!3898, !3899}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3896, file: !3860, line: 70, baseType: !176, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, scope: !3896, file: !3860, line: 79, baseType: !3900, size: 192, offset: 64)
!3900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3896, file: !3860, line: 79, size: 192, elements: !3901)
!3901 = !{!3902, !3903, !3904, !3910, !3915}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3900, file: !3860, line: 81, baseType: !109, size: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3900, file: !3860, line: 86, baseType: !1605, size: 16)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3900, file: !3860, line: 92, baseType: !3905, size: 192)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3900, file: !3860, line: 88, size: 192, elements: !3906)
!3906 = !{!3907, !3908, !3909}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3905, file: !3860, line: 89, baseType: !256, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3905, file: !3860, line: 90, baseType: !176, size: 64, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3905, file: !3860, line: 91, baseType: !176, size: 64, offset: 128)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3900, file: !3860, line: 97, baseType: !3911, size: 96)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3900, file: !3860, line: 94, size: 96, elements: !3912)
!3912 = !{!3913, !3914}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3911, file: !3860, line: 95, baseType: !256, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3911, file: !3860, line: 96, baseType: !235, size: 32, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3900, file: !3860, line: 103, baseType: !3916, size: 128)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3900, file: !3860, line: 99, size: 128, elements: !3917)
!3917 = !{!3918, !3919, !3920}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3916, file: !3860, line: 100, baseType: !175, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3916, file: !3860, line: 101, baseType: !235, size: 32, offset: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3916, file: !3860, line: 102, baseType: !235, size: 32, offset: 96)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3859, file: !3860, line: 111, baseType: !3922, size: 128)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3859, file: !3860, line: 108, size: 128, elements: !3923)
!3923 = !{!3924, !3925}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3922, file: !3860, line: 109, baseType: !1195, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3922, file: !3860, line: 110, baseType: !109, size: 32, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3859, file: !3860, line: 118, baseType: !3927, size: 128)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3859, file: !3860, line: 114, size: 128, elements: !3928)
!3928 = !{!3929, !3930, !3931}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3927, file: !3860, line: 115, baseType: !176, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3927, file: !3860, line: 116, baseType: !109, size: 32, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3927, file: !3860, line: 117, baseType: !7, size: 32, offset: 96)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3161, file: !2806, line: 1208, baseType: !3715, size: 448, offset: 17664)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3161, file: !2806, line: 1215, baseType: !198, size: 64, offset: 18112)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3161, file: !2806, line: 1217, baseType: !198, size: 64, offset: 18176)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3161, file: !2806, line: 1219, baseType: !198, size: 64, offset: 18240)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3161, file: !2806, line: 1223, baseType: !3937, size: 64, offset: 18304)
!3937 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3938, line: 99, baseType: !3939)
!3938 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3938, line: 99, size: 64, elements: !3940)
!3940 = !{!3941}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3939, file: !3938, line: 99, baseType: !3396, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3161, file: !2806, line: 1225, baseType: !1279, size: 32, offset: 18368)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3161, file: !2806, line: 1226, baseType: !109, size: 32, offset: 18400)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3161, file: !2806, line: 1227, baseType: !109, size: 32, offset: 18432)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3161, file: !2806, line: 1231, baseType: !3946, size: 64, offset: 18496)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2806, line: 1231, flags: DIFlagFwdDecl)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3161, file: !2806, line: 1233, baseType: !181, size: 128, offset: 18560)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3161, file: !2806, line: 1240, baseType: !3950, size: 64, offset: 18688)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2806, line: 62, flags: DIFlagFwdDecl)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3161, file: !2806, line: 1242, baseType: !3953, size: 64, offset: 18752)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2806, line: 1242, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3161, file: !2806, line: 1244, baseType: !181, size: 128, offset: 18816)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3161, file: !2806, line: 1245, baseType: !3957, size: 64, offset: 18944)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2806, line: 51, flags: DIFlagFwdDecl)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3161, file: !2806, line: 1246, baseType: !339, size: 256, offset: 19008)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3161, file: !2806, line: 1247, baseType: !7, size: 32, offset: 19264)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3161, file: !2806, line: 1250, baseType: !3962, size: 64, offset: 19328)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2806, line: 57, flags: DIFlagFwdDecl)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3161, file: !2806, line: 1251, baseType: !339, size: 256, offset: 19392)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3161, file: !2806, line: 1252, baseType: !181, size: 128, offset: 19648)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3161, file: !2806, line: 1259, baseType: !2752, size: 64, offset: 19776)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3161, file: !2806, line: 1260, baseType: !1605, size: 16, offset: 19840)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3161, file: !2806, line: 1261, baseType: !1605, size: 16, offset: 19856)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3161, file: !2806, line: 1314, baseType: !3970, size: 64, offset: 19904)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3972, line: 62, size: 256, align: 256, elements: !3973)
!3972 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3973 = !{!3974, !3975, !3976, !3977, !3978, !3979, !3980}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3971, file: !3972, line: 75, baseType: !235, size: 32)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3971, file: !3972, line: 90, baseType: !235, size: 32, offset: 32)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3971, file: !3972, line: 112, baseType: !200, size: 64, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3971, file: !3972, line: 132, baseType: !235, size: 32, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3971, file: !3972, line: 140, baseType: !235, size: 32, offset: 160)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3971, file: !3972, line: 149, baseType: !235, size: 32, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3971, file: !3972, line: 154, baseType: !3981, offset: 224)
!3981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, elements: !2017)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3161, file: !2806, line: 1315, baseType: !234, size: 32, offset: 19968)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3161, file: !2806, line: 1316, baseType: !234, size: 32, offset: 20000)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3161, file: !2806, line: 1321, baseType: !175, size: 64, offset: 20032)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3161, file: !2806, line: 1325, baseType: !109, size: 32, offset: 20096)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3161, file: !2806, line: 1326, baseType: !109, size: 32, offset: 20128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3161, file: !2806, line: 1327, baseType: !109, size: 32, offset: 20160)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3161, file: !2806, line: 1328, baseType: !109, size: 32, offset: 20192)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3161, file: !2806, line: 1329, baseType: !1686, size: 128, align: 64, offset: 20224)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3161, file: !2806, line: 1332, baseType: !3991, size: 128, offset: 20352)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3992, line: 51, size: 128, elements: !3993)
!3992 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3993 = !{!3994, !3999, !4000}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3991, file: !3992, line: 60, baseType: !3995, size: 64)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3996, line: 7, size: 64, elements: !3997)
!3996 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3997 = !{!3998}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3995, file: !3996, line: 12, baseType: !3393, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3991, file: !3992, line: 63, baseType: !321, size: 8, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3991, file: !3992, line: 70, baseType: !321, size: 8, offset: 72)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3161, file: !2806, line: 1335, baseType: !2804, size: 64, offset: 20480)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3161, file: !2806, line: 1337, baseType: !4003, size: 128, offset: 20544)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3992, line: 39, size: 128, elements: !4004)
!4004 = !{!4005, !4006, !4007}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4003, file: !3992, line: 40, baseType: !2591, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4003, file: !3992, line: 42, baseType: !235, size: 32, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4003, file: !3992, line: 43, baseType: !235, size: 32, offset: 96)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3161, file: !2806, line: 1340, baseType: !4009, size: 64, offset: 20672)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2806, line: 69, flags: DIFlagFwdDecl)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3161, file: !2806, line: 1351, baseType: !109, size: 32, offset: 20736)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3161, file: !2806, line: 1352, baseType: !109, size: 32, offset: 20768)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3161, file: !2806, line: 1354, baseType: !175, size: 64, offset: 20800)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3161, file: !2806, line: 1364, baseType: !198, size: 64, offset: 20864)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3161, file: !2806, line: 1365, baseType: !198, size: 64, offset: 20928)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3161, file: !2806, line: 1412, baseType: !175, size: 64, offset: 20992)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3161, file: !2806, line: 1453, baseType: !4018, size: 64, offset: 21056)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2806, line: 1453, flags: DIFlagFwdDecl)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3161, file: !2806, line: 1457, baseType: !4021, size: 64, offset: 21120)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !4023)
!4023 = !{!4024, !4025, !4044, !4047, !4048, !4081, !4091}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4022, file: !68, line: 62, baseType: !67, size: 32)
!4025 = !DIDerivedType(tag: DW_TAG_member, scope: !4022, file: !68, line: 64, baseType: !4026, size: 192, offset: 64)
!4026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4022, file: !68, line: 64, size: 192, elements: !4027)
!4027 = !{!4028, !4039}
!4028 = !DIDerivedType(tag: DW_TAG_member, scope: !4026, file: !68, line: 65, baseType: !4029, size: 192)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4026, file: !68, line: 65, size: 192, elements: !4030)
!4030 = !{!4031, !4038}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4029, file: !68, line: 66, baseType: !4032, size: 128)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4033, line: 50, size: 128, elements: !4034)
!4033 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4034 = !{!4035, !4036, !4037}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4032, file: !4033, line: 52, baseType: !175, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4032, file: !4033, line: 54, baseType: !7, size: 32, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4032, file: !4033, line: 55, baseType: !7, size: 32, offset: 96)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4029, file: !68, line: 67, baseType: !175, size: 64, offset: 128)
!4039 = !DIDerivedType(tag: DW_TAG_member, scope: !4026, file: !68, line: 70, baseType: !4040, size: 192)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4026, file: !68, line: 70, size: 192, elements: !4041)
!4041 = !{!4042, !4043}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4040, file: !68, line: 71, baseType: !1686, size: 128, align: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4040, file: !68, line: 72, baseType: !175, size: 64, offset: 128)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4022, file: !68, line: 76, baseType: !4045, size: 64, offset: 256)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4022, file: !68, line: 77, baseType: !175, size: 64, offset: 320)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4022, file: !68, line: 79, baseType: !4049, size: 64, offset: 384)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4033, line: 25, size: 256, elements: !4051)
!4051 = !{!4052, !4058, !4062}
!4052 = !DIDerivedType(tag: DW_TAG_member, scope: !4050, file: !4033, line: 26, baseType: !4053, size: 128)
!4053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4050, file: !4033, line: 26, size: 128, elements: !4054)
!4054 = !{!4055, !4057}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4053, file: !4033, line: 27, baseType: !4056, size: 128)
!4056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 128, elements: !3589)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4053, file: !4033, line: 28, baseType: !4056, size: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4050, file: !4033, line: 31, baseType: !4059, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4061)
!4061 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4033, line: 23, flags: DIFlagFwdDecl)
!4062 = !DIDerivedType(tag: DW_TAG_member, scope: !4050, file: !4033, line: 33, baseType: !4063, size: 64, offset: 192)
!4063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4050, file: !4033, line: 33, size: 64, elements: !4064)
!4064 = !{!4065, !4071, !4076}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4063, file: !4033, line: 38, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4063, file: !4033, line: 34, size: 64, elements: !4067)
!4067 = !{!4068, !4069, !4070}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4066, file: !4033, line: 35, baseType: !1486, size: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4066, file: !4033, line: 36, baseType: !222, size: 8, offset: 32)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4066, file: !4033, line: 37, baseType: !222, size: 8, offset: 40)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4063, file: !4033, line: 42, baseType: !4072, size: 16)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4063, file: !4033, line: 39, size: 16, elements: !4073)
!4073 = !{!4074, !4075}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4072, file: !4033, line: 40, baseType: !222, size: 8)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4072, file: !4033, line: 41, baseType: !222, size: 8, offset: 8)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4063, file: !4033, line: 46, baseType: !4077, size: 16)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4063, file: !4033, line: 43, size: 16, elements: !4078)
!4078 = !{!4079, !4080}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4077, file: !4033, line: 44, baseType: !222, size: 8)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4077, file: !4033, line: 45, baseType: !222, size: 8, offset: 8)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4022, file: !68, line: 81, baseType: !4082, size: 64, offset: 448)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !4084)
!4084 = !{!4085, !4086, !4087, !4088, !4089, !4090}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4083, file: !68, line: 86, baseType: !4045, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4083, file: !68, line: 87, baseType: !175, size: 64, offset: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4083, file: !68, line: 88, baseType: !175, size: 64, offset: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4083, file: !68, line: 89, baseType: !175, size: 64, offset: 192)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4083, file: !68, line: 90, baseType: !321, size: 8, offset: 256)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4083, file: !68, line: 92, baseType: !4082, size: 64, offset: 320)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4022, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3161, file: !2806, line: 1463, baseType: !4093, offset: 21184)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2806, line: 739, elements: !1753)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3161, file: !2806, line: 1470, baseType: !1686, size: 128, align: 64, offset: 21184)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3161, file: !2806, line: 1471, baseType: !1991, size: 32, offset: 21312)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3161, file: !2806, line: 1472, baseType: !109, size: 32, offset: 21344)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3161, file: !2806, line: 1474, baseType: !3160, size: 64, offset: 21376)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3161, file: !2806, line: 1475, baseType: !1706, size: 320, offset: 21440)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3161, file: !2806, line: 1478, baseType: !4100, size: 64, offset: 21760)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2283, line: 49, size: 512, elements: !4102)
!4102 = !{!4103, !4104, !4105, !4106, !4107, !4109, !4110, !4111, !4112}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4101, file: !2283, line: 50, baseType: !4100, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4101, file: !2283, line: 51, baseType: !176, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4101, file: !2283, line: 52, baseType: !175, size: 64, offset: 128)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4101, file: !2283, line: 53, baseType: !175, size: 64, offset: 192)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4101, file: !2283, line: 54, baseType: !4108, size: 64, offset: 256)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4101, file: !2283, line: 56, baseType: !7, size: 32, offset: 320)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4101, file: !2283, line: 58, baseType: !7, size: 32, offset: 352)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4101, file: !2283, line: 59, baseType: !197, size: 64, offset: 384)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4101, file: !2283, line: 60, baseType: !2458, size: 64, offset: 448)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3161, file: !2806, line: 1482, baseType: !1991, size: 32, offset: 21824)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3161, file: !2806, line: 1489, baseType: !176, size: 64, offset: 21888)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3161, file: !2806, line: 1504, baseType: !176, size: 64, offset: 21952)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3161, file: !2806, line: 1505, baseType: !200, size: 64, offset: 22016)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3161, file: !2806, line: 1506, baseType: !198, size: 64, offset: 22080)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3161, file: !2806, line: 1507, baseType: !200, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3161, file: !2806, line: 1508, baseType: !200, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3161, file: !2806, line: 1509, baseType: !200, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3161, file: !2806, line: 1510, baseType: !1686, size: 128, align: 64, offset: 22208)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3161, file: !2806, line: 1511, baseType: !109, size: 32, offset: 22336)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3161, file: !2806, line: 1515, baseType: !4124, size: 64, offset: 22400)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1949, line: 56, size: 64, elements: !4125)
!4125 = !{!4126}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4124, file: !1949, line: 57, baseType: !1952, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3161, file: !2806, line: 1518, baseType: !4124, size: 64, offset: 22464)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3161, file: !2806, line: 1528, baseType: !1686, size: 128, align: 64, offset: 22528)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3161, file: !2806, line: 1552, baseType: !4130, size: 35328, offset: 23040)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4131, line: 430, size: 35328, elements: !4132)
!4131 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4132 = !{!4133, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4162, !4163, !4164, !4165, !4166, !4167, !4170, !4171, !4172, !4173}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4130, file: !4131, line: 432, baseType: !4134, size: 192)
!4134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4135, size: 192, elements: !1160)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4136, line: 16, size: 64, elements: !4137)
!4136 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4137 = !{!4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4135, file: !4136, line: 17, baseType: !218, size: 16)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4135, file: !4136, line: 18, baseType: !218, size: 16, offset: 16)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4135, file: !4136, line: 19, baseType: !218, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4135, file: !4136, line: 19, baseType: !218, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4135, file: !4136, line: 19, baseType: !218, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4135, file: !4136, line: 19, baseType: !218, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4135, file: !4136, line: 19, baseType: !218, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4135, file: !4136, line: 20, baseType: !218, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4135, file: !4136, line: 20, baseType: !218, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4135, file: !4136, line: 20, baseType: !218, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4135, file: !4136, line: 20, baseType: !218, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4135, file: !4136, line: 20, baseType: !218, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4135, file: !4136, line: 20, baseType: !218, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4130, file: !4131, line: 436, baseType: !175, size: 64, offset: 192)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4130, file: !4131, line: 440, baseType: !220, size: 16, offset: 256)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4130, file: !4131, line: 441, baseType: !220, size: 16, offset: 272)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4130, file: !4131, line: 442, baseType: !220, size: 16, offset: 288)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4130, file: !4131, line: 443, baseType: !220, size: 16, offset: 304)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4130, file: !4131, line: 447, baseType: !175, size: 64, offset: 320)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4130, file: !4131, line: 448, baseType: !175, size: 64, offset: 384)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4130, file: !4131, line: 459, baseType: !4159, size: 256, offset: 448)
!4159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4160, size: 256, elements: !246)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4131, line: 428, flags: DIFlagFwdDecl)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4130, file: !4131, line: 461, baseType: !175, size: 64, offset: 704)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4130, file: !4131, line: 463, baseType: !175, size: 64, offset: 768)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4130, file: !4131, line: 465, baseType: !175, size: 64, offset: 832)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4130, file: !4131, line: 466, baseType: !175, size: 64, offset: 896)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4130, file: !4131, line: 467, baseType: !175, size: 64, offset: 960)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4130, file: !4131, line: 473, baseType: !4168, size: 64, offset: 1024)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4131, line: 10, flags: DIFlagFwdDecl)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4130, file: !4131, line: 480, baseType: !175, size: 64, offset: 1088)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4130, file: !4131, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4130, file: !4131, line: 491, baseType: !234, size: 32, offset: 1184)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4130, file: !4131, line: 501, baseType: !4174, size: 33792, offset: 1536)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4175, line: 448, size: 33792, elements: !4176)
!4175 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4176 = !{!4177, !4178, !4179, !4341, !4342, !4348, !4349}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4174, file: !4175, line: 461, baseType: !7, size: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4174, file: !4175, line: 468, baseType: !175, size: 64, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4174, file: !4175, line: 476, baseType: !4180, size: 64, offset: 128)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4175, line: 356, size: 33280, align: 512, elements: !4182)
!4182 = !{!4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4181, file: !4175, line: 358, baseType: !7, size: 32)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4181, file: !4175, line: 361, baseType: !7, size: 32, offset: 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4181, file: !4175, line: 364, baseType: !198, size: 64, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4181, file: !4175, line: 367, baseType: !198, size: 64, offset: 128)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4181, file: !4175, line: 370, baseType: !198, size: 64, offset: 192)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4181, file: !4175, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4181, file: !4175, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4181, file: !4175, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4181, file: !4175, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4181, file: !4175, line: 397, baseType: !4193, size: 32768, offset: 512)
!4193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4175, line: 348, size: 32768, elements: !4194)
!4194 = !{!4195, !4210, !4247, !4324, !4337}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4193, file: !4175, line: 349, baseType: !4196, size: 896)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4175, line: 12, size: 896, elements: !4197)
!4197 = !{!4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4209}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4196, file: !4175, line: 13, baseType: !234, size: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4196, file: !4175, line: 14, baseType: !234, size: 32, offset: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4196, file: !4175, line: 15, baseType: !234, size: 32, offset: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4196, file: !4175, line: 16, baseType: !234, size: 32, offset: 96)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4196, file: !4175, line: 17, baseType: !234, size: 32, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4196, file: !4175, line: 18, baseType: !234, size: 32, offset: 160)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4196, file: !4175, line: 19, baseType: !234, size: 32, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4196, file: !4175, line: 22, baseType: !4206, size: 640, offset: 224)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 640, elements: !4207)
!4207 = !{!4208}
!4208 = !DISubrange(count: 20)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4196, file: !4175, line: 25, baseType: !234, size: 32, offset: 864)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4193, file: !4175, line: 350, baseType: !4211, size: 4096, align: 128)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4175, line: 34, size: 4096, align: 128, elements: !4212)
!4212 = !{!4213, !4214, !4215, !4216, !4217, !4232, !4233, !4234, !4236, !4238, !4242}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4211, file: !4175, line: 35, baseType: !218, size: 16)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4211, file: !4175, line: 36, baseType: !218, size: 16, offset: 16)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4211, file: !4175, line: 37, baseType: !218, size: 16, offset: 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4211, file: !4175, line: 38, baseType: !218, size: 16, offset: 48)
!4217 = !DIDerivedType(tag: DW_TAG_member, scope: !4211, file: !4175, line: 39, baseType: !4218, size: 128, offset: 64)
!4218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4211, file: !4175, line: 39, size: 128, elements: !4219)
!4219 = !{!4220, !4225}
!4220 = !DIDerivedType(tag: DW_TAG_member, scope: !4218, file: !4175, line: 40, baseType: !4221, size: 128)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4218, file: !4175, line: 40, size: 128, elements: !4222)
!4222 = !{!4223, !4224}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4221, file: !4175, line: 41, baseType: !198, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4221, file: !4175, line: 42, baseType: !198, size: 64, offset: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, scope: !4218, file: !4175, line: 44, baseType: !4226, size: 128)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4218, file: !4175, line: 44, size: 128, elements: !4227)
!4227 = !{!4228, !4229, !4230, !4231}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4226, file: !4175, line: 45, baseType: !234, size: 32)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4226, file: !4175, line: 46, baseType: !234, size: 32, offset: 32)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4226, file: !4175, line: 47, baseType: !234, size: 32, offset: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4226, file: !4175, line: 48, baseType: !234, size: 32, offset: 96)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4211, file: !4175, line: 51, baseType: !234, size: 32, offset: 192)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4211, file: !4175, line: 52, baseType: !234, size: 32, offset: 224)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4211, file: !4175, line: 55, baseType: !4235, size: 1024, offset: 256)
!4235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 1024, elements: !469)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4211, file: !4175, line: 58, baseType: !4237, size: 2048, offset: 1280)
!4237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 2048, elements: !1164)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4211, file: !4175, line: 60, baseType: !4239, size: 384, offset: 3328)
!4239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 384, elements: !4240)
!4240 = !{!4241}
!4241 = !DISubrange(count: 12)
!4242 = !DIDerivedType(tag: DW_TAG_member, scope: !4211, file: !4175, line: 62, baseType: !4243, size: 384, offset: 3712)
!4243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4211, file: !4175, line: 62, size: 384, elements: !4244)
!4244 = !{!4245, !4246}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4243, file: !4175, line: 63, baseType: !4239, size: 384)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4243, file: !4175, line: 64, baseType: !4239, size: 384)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4193, file: !4175, line: 351, baseType: !4248, size: 1088)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4175, line: 79, size: 1088, elements: !4249)
!4249 = !{!4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4323}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4248, file: !4175, line: 80, baseType: !234, size: 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4248, file: !4175, line: 81, baseType: !234, size: 32, offset: 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4248, file: !4175, line: 82, baseType: !234, size: 32, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4248, file: !4175, line: 83, baseType: !234, size: 32, offset: 96)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4248, file: !4175, line: 84, baseType: !234, size: 32, offset: 128)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4248, file: !4175, line: 85, baseType: !234, size: 32, offset: 160)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4248, file: !4175, line: 86, baseType: !234, size: 32, offset: 192)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4248, file: !4175, line: 88, baseType: !4206, size: 640, offset: 224)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4248, file: !4175, line: 89, baseType: !222, size: 8, offset: 864)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4248, file: !4175, line: 90, baseType: !222, size: 8, offset: 872)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4248, file: !4175, line: 91, baseType: !222, size: 8, offset: 880)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4248, file: !4175, line: 92, baseType: !222, size: 8, offset: 888)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4248, file: !4175, line: 93, baseType: !222, size: 8, offset: 896)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4248, file: !4175, line: 94, baseType: !222, size: 8, offset: 904)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4248, file: !4175, line: 95, baseType: !4265, size: 64, offset: 960)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4267, line: 11, size: 128, elements: !4268)
!4267 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4268 = !{!4269, !4270}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4266, file: !4267, line: 12, baseType: !1195, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4266, file: !4267, line: 13, baseType: !4271, size: 64, offset: 64)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4273, line: 103, size: 1344, elements: !4274)
!4273 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4274 = !{!4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4303, !4304, !4305}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4272, file: !4273, line: 109, baseType: !175, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4272, file: !4273, line: 110, baseType: !175, size: 64, offset: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4272, file: !4273, line: 111, baseType: !175, size: 64, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4272, file: !4273, line: 112, baseType: !175, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4272, file: !4273, line: 113, baseType: !175, size: 64, offset: 256)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4272, file: !4273, line: 114, baseType: !175, size: 64, offset: 320)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4272, file: !4273, line: 117, baseType: !175, size: 64, offset: 384)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4272, file: !4273, line: 118, baseType: !175, size: 64, offset: 448)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4272, file: !4273, line: 119, baseType: !175, size: 64, offset: 512)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4272, file: !4273, line: 120, baseType: !175, size: 64, offset: 576)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4272, file: !4273, line: 121, baseType: !175, size: 64, offset: 640)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4272, file: !4273, line: 122, baseType: !175, size: 64, offset: 704)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4272, file: !4273, line: 123, baseType: !175, size: 64, offset: 768)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4272, file: !4273, line: 124, baseType: !175, size: 64, offset: 832)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4272, file: !4273, line: 125, baseType: !175, size: 64, offset: 896)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4272, file: !4273, line: 139, baseType: !175, size: 64, offset: 960)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4272, file: !4273, line: 142, baseType: !175, size: 64, offset: 1024)
!4292 = !DIDerivedType(tag: DW_TAG_member, scope: !4272, file: !4273, line: 144, baseType: !4293, size: 64, offset: 1088)
!4293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4272, file: !4273, line: 144, size: 64, elements: !4294)
!4294 = !{!4295, !4296, !4297}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4293, file: !4273, line: 146, baseType: !218, size: 16)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4293, file: !4273, line: 148, baseType: !198, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4293, file: !4273, line: 150, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4273, line: 59, size: 64, elements: !4299)
!4299 = !{!4300, !4301, !4302}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4298, file: !4273, line: 61, baseType: !198, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4298, file: !4273, line: 63, baseType: !198, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4298, file: !4273, line: 65, baseType: !198, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4272, file: !4273, line: 153, baseType: !175, size: 64, offset: 1152)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4272, file: !4273, line: 154, baseType: !175, size: 64, offset: 1216)
!4305 = !DIDerivedType(tag: DW_TAG_member, scope: !4272, file: !4273, line: 156, baseType: !4306, size: 64, offset: 1280)
!4306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4272, file: !4273, line: 156, size: 64, elements: !4307)
!4307 = !{!4308, !4309, !4310}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4306, file: !4273, line: 158, baseType: !218, size: 16)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4306, file: !4273, line: 160, baseType: !198, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4306, file: !4273, line: 162, baseType: !4311, size: 64)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4273, line: 69, size: 64, elements: !4312)
!4312 = !{!4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4311, file: !4273, line: 71, baseType: !198, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4311, file: !4273, line: 73, baseType: !198, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4311, file: !4273, line: 75, baseType: !198, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4311, file: !4273, line: 77, baseType: !198, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4311, file: !4273, line: 80, baseType: !198, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4311, file: !4273, line: 83, baseType: !198, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4311, file: !4273, line: 86, baseType: !198, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4311, file: !4273, line: 88, baseType: !198, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4311, file: !4273, line: 93, baseType: !198, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4311, file: !4273, line: 100, baseType: !198, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4248, file: !4175, line: 96, baseType: !234, size: 32, offset: 1024)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4193, file: !4175, line: 352, baseType: !4325, size: 4608, align: 512)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4175, line: 333, size: 4608, align: 512, elements: !4326)
!4326 = !{!4327, !4328, !4335}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4325, file: !4175, line: 334, baseType: !4211, size: 4096, align: 128)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4325, file: !4175, line: 335, baseType: !4329, size: 512, offset: 4096)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4175, line: 312, size: 512, elements: !4330)
!4330 = !{!4331, !4332, !4333}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4329, file: !4175, line: 313, baseType: !198, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4329, file: !4175, line: 314, baseType: !198, size: 64, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4329, file: !4175, line: 315, baseType: !4334, size: 384, offset: 128)
!4334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 384, elements: !253)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4325, file: !4175, line: 336, baseType: !4336, offset: 4608)
!4336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, elements: !2017)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4193, file: !4175, line: 353, baseType: !4338, size: 32768)
!4338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 32768, elements: !4339)
!4339 = !{!4340}
!4340 = !DISubrange(count: 4096)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4174, file: !4175, line: 484, baseType: !4180, size: 64, offset: 192)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4174, file: !4175, line: 491, baseType: !4343, size: 128, offset: 256)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4175, line: 404, size: 128, elements: !4344)
!4344 = !{!4345, !4346, !4347}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4343, file: !4175, line: 424, baseType: !198, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4343, file: !4175, line: 432, baseType: !7, size: 32, offset: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4343, file: !4175, line: 440, baseType: !7, size: 32, offset: 96)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4174, file: !4175, line: 498, baseType: !4343, size: 128, offset: 384)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4174, file: !4175, line: 508, baseType: !4181, size: 33280, align: 512, offset: 512)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3143, file: !3144, line: 16, baseType: !2002, size: 192, offset: 512)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3143, file: !3144, line: 17, baseType: !366, size: 32, offset: 704)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1383, file: !14, line: 1240, baseType: !176, size: 64, offset: 6912)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1383, file: !14, line: 1243, baseType: !234, size: 32, offset: 6976)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1383, file: !14, line: 1245, baseType: !2081, size: 64, offset: 7040)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1383, file: !14, line: 1246, baseType: !2081, size: 64, offset: 7104)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1383, file: !14, line: 1248, baseType: !235, size: 32, offset: 7168)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1383, file: !14, line: 1249, baseType: !4358, size: 64, offset: 7232)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1383, file: !14, line: 1252, baseType: !468, size: 256, offset: 7296)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1383, file: !14, line: 1253, baseType: !4362, size: 128, offset: 7552)
!4362 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4363, line: 21, baseType: !4364)
!4363 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4363, line: 19, size: 128, elements: !4365)
!4365 = !{!4366}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4364, file: !4363, line: 20, baseType: !4367, size: 128)
!4367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 128, elements: !3589)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1383, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1383, file: !14, line: 1261, baseType: !339, size: 256, offset: 7744)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1383, file: !14, line: 1267, baseType: !205, size: 64, offset: 8000)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1383, file: !14, line: 1269, baseType: !1329, size: 64, offset: 8064)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1383, file: !14, line: 1271, baseType: !4373, size: 448, offset: 8128)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2923, line: 63, size: 448, elements: !4374)
!4374 = !{!4375, !4380, !4381, !4382, !4383, !4384, !4385}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4373, file: !2923, line: 64, baseType: !4376, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!175, !4379, !2921}
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4373, file: !2923, line: 66, baseType: !4376, size: 64, offset: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4373, file: !2923, line: 69, baseType: !1195, size: 64, offset: 128)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4373, file: !2923, line: 70, baseType: !109, size: 32, offset: 192)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4373, file: !2923, line: 71, baseType: !7, size: 32, offset: 224)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4373, file: !2923, line: 74, baseType: !181, size: 128, offset: 256)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4373, file: !2923, line: 85, baseType: !4386, size: 64, offset: 384)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1383, file: !14, line: 1274, baseType: !343, size: 64, offset: 8576)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1383, file: !14, line: 1280, baseType: !343, size: 64, offset: 8640)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1383, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1383, file: !14, line: 1286, baseType: !2855, size: 32, offset: 8736)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1383, file: !14, line: 1289, baseType: !1786, size: 64, offset: 8768)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1383, file: !14, line: 1290, baseType: !1832, size: 64, offset: 8832)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1383, file: !14, line: 1297, baseType: !2201, size: 64, offset: 8896)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1383, file: !14, line: 1304, baseType: !4395, size: 64, offset: 8960)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4396, line: 49, size: 64, elements: !4397)
!4396 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4397 = !{!4398}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4395, file: !4396, line: 50, baseType: !4399, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4396, line: 41, size: 512, align: 512, elements: !4401)
!4401 = !{!4402, !4403, !4408}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4400, file: !4396, line: 43, baseType: !1124, size: 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4400, file: !4396, line: 45, baseType: !4404, size: 192, offset: 64)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4396, line: 29, size: 192, elements: !4405)
!4405 = !{!4406, !4407}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4404, file: !4396, line: 30, baseType: !181, size: 128)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4404, file: !4396, line: 32, baseType: !1195, size: 64, offset: 128)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4400, file: !4396, line: 46, baseType: !1195, size: 64, offset: 256)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1383, file: !14, line: 1305, baseType: !4395, size: 64, offset: 9024)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1383, file: !14, line: 1306, baseType: !1686, size: 128, align: 64, offset: 9088)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1383, file: !14, line: 1307, baseType: !1724, size: 256, offset: 9216)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1383, file: !14, line: 1309, baseType: !339, size: 256, offset: 9472)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1383, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1383, file: !14, line: 1317, baseType: !1124, size: 32, align: 512, offset: 10240)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1383, file: !14, line: 1318, baseType: !181, size: 128, offset: 10304)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1383, file: !14, line: 1320, baseType: !1124, size: 32, offset: 10432)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1383, file: !14, line: 1321, baseType: !181, size: 128, offset: 10496)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1377, file: !1378, line: 73, baseType: !109, size: 32, offset: 128)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1377, file: !1378, line: 74, baseType: !4420, size: 64, offset: 192)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !2041, line: 42, flags: DIFlagFwdDecl)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1331, file: !1275, line: 141, baseType: !4424, size: 64, offset: 704)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!109, !2983, !321}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1331, file: !1275, line: 142, baseType: !4428, size: 64, offset: 768)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!1273, !1273, !4431}
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1239)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1274, file: !1275, line: 96, baseType: !1382, size: 64, offset: 832)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1274, file: !1275, line: 97, baseType: !175, size: 64, offset: 896)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1274, file: !1275, line: 98, baseType: !176, size: 64, offset: 960)
!4436 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !1275, line: 100, baseType: !4437, size: 128, offset: 1024)
!4437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1274, file: !1275, line: 100, size: 128, elements: !4438)
!4438 = !{!4439, !4440}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4437, file: !1275, line: 101, baseType: !181, size: 128)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4437, file: !1275, line: 102, baseType: !2319, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1274, file: !1275, line: 104, baseType: !181, size: 128, offset: 1152)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1274, file: !1275, line: 105, baseType: !181, size: 128, offset: 1280)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1274, file: !1275, line: 113, baseType: !4444, size: 128, offset: 1408)
!4444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1274, file: !1275, line: 109, size: 128, elements: !4445)
!4445 = !{!4446, !4447, !4448}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4444, file: !1275, line: 110, baseType: !1710, size: 128)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4444, file: !1275, line: 111, baseType: !1289, size: 128)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4444, file: !1275, line: 112, baseType: !1686, size: 128, align: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1267, file: !14, line: 1968, baseType: !4450, size: 64, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!205, !1273, !1238, !4453}
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4455, line: 10, size: 128, elements: !4456)
!4455 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4456 = !{!4457, !4458}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4454, file: !4455, line: 11, baseType: !1514, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4454, file: !4455, line: 12, baseType: !176, size: 64, offset: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1267, file: !14, line: 1969, baseType: !4460, size: 64, offset: 128)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!109, !4420, !1238, !109}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1267, file: !14, line: 1970, baseType: !4464, size: 64, offset: 192)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!1261, !1238, !109, !321}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1267, file: !14, line: 1972, baseType: !4468, size: 64, offset: 256)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!109, !1273, !216, !109}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1267, file: !14, line: 1974, baseType: !4472, size: 64, offset: 320)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!109, !4420, !1238, !1273, !1201, !321}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1267, file: !14, line: 1976, baseType: !4476, size: 64, offset: 384)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!109, !1273, !1238, !1273}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1267, file: !14, line: 1977, baseType: !4480, size: 64, offset: 448)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!109, !1238, !1273}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1267, file: !14, line: 1978, baseType: !4484, size: 64, offset: 512)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!109, !4420, !1238, !1273, !205}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1267, file: !14, line: 1980, baseType: !4488, size: 64, offset: 576)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!109, !4420, !1238, !1273, !1201}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1267, file: !14, line: 1982, baseType: !4480, size: 64, offset: 640)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1267, file: !14, line: 1983, baseType: !4493, size: 64, offset: 704)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!109, !4420, !1238, !1273, !1201, !1387}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1267, file: !14, line: 1985, baseType: !4497, size: 64, offset: 768)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!109, !4420, !1238, !1273, !1238, !1273, !7}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1267, file: !14, line: 1987, baseType: !4501, size: 64, offset: 832)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!109, !4420, !1273, !4504}
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !4506)
!4506 = !{!4507, !4508, !4509, !4519, !4528, !4529, !4534, !4535, !4536}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4505, file: !14, line: 227, baseType: !7, size: 32)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4505, file: !14, line: 228, baseType: !1201, size: 16, offset: 32)
!4509 = !DIDerivedType(tag: DW_TAG_member, scope: !4505, file: !14, line: 241, baseType: !4510, size: 32, offset: 64)
!4510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4505, file: !14, line: 241, size: 32, elements: !4511)
!4511 = !{!4512, !4513}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4510, file: !14, line: 242, baseType: !1244, size: 32)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4510, file: !14, line: 243, baseType: !4514, size: 32)
!4514 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4515, line: 16, baseType: !4516)
!4515 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4515, line: 14, size: 32, elements: !4517)
!4517 = !{!4518}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4516, file: !4515, line: 15, baseType: !1249, size: 32)
!4519 = !DIDerivedType(tag: DW_TAG_member, scope: !4505, file: !14, line: 245, baseType: !4520, size: 32, offset: 96)
!4520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4505, file: !14, line: 245, size: 32, elements: !4521)
!4521 = !{!4522, !4523}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4520, file: !14, line: 246, baseType: !1253, size: 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4520, file: !14, line: 247, baseType: !4524, size: 32)
!4524 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4515, line: 20, baseType: !4525)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4515, line: 18, size: 32, elements: !4526)
!4526 = !{!4527}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4525, file: !4515, line: 19, baseType: !1257, size: 32)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4505, file: !14, line: 249, baseType: !1392, size: 64, offset: 128)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4505, file: !14, line: 250, baseType: !4530, size: 128, offset: 192)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !2082, line: 13, size: 128, elements: !4531)
!4531 = !{!4532, !4533}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4530, file: !2082, line: 14, baseType: !2081, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4530, file: !2082, line: 15, baseType: !1195, size: 64, offset: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4505, file: !14, line: 251, baseType: !4530, size: 128, offset: 320)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4505, file: !14, line: 252, baseType: !4530, size: 128, offset: 448)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4505, file: !14, line: 259, baseType: !2246, size: 64, offset: 576)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1267, file: !14, line: 1988, baseType: !4538, size: 64, offset: 896)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!109, !4420, !2983, !4541, !234, !7}
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4543, line: 22, size: 1280, elements: !4544)
!4543 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4544 = !{!4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4542, file: !4543, line: 23, baseType: !234, size: 32)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4542, file: !4543, line: 24, baseType: !1201, size: 16, offset: 32)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4542, file: !4543, line: 25, baseType: !7, size: 32, offset: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4542, file: !4543, line: 26, baseType: !2089, size: 32, offset: 96)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4542, file: !4543, line: 27, baseType: !198, size: 64, offset: 128)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4542, file: !4543, line: 28, baseType: !198, size: 64, offset: 192)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4542, file: !4543, line: 41, baseType: !198, size: 64, offset: 256)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4542, file: !4543, line: 42, baseType: !1387, size: 32, offset: 320)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4542, file: !4543, line: 43, baseType: !1387, size: 32, offset: 352)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4542, file: !4543, line: 44, baseType: !1244, size: 32, offset: 384)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4542, file: !4543, line: 45, baseType: !1253, size: 32, offset: 416)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4542, file: !4543, line: 46, baseType: !1392, size: 64, offset: 448)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4542, file: !4543, line: 47, baseType: !4530, size: 128, offset: 512)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4542, file: !4543, line: 48, baseType: !4530, size: 128, offset: 640)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4542, file: !4543, line: 49, baseType: !4530, size: 128, offset: 768)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4542, file: !4543, line: 50, baseType: !4530, size: 128, offset: 896)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4542, file: !4543, line: 51, baseType: !198, size: 64, offset: 1024)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4542, file: !4543, line: 52, baseType: !198, size: 64, offset: 1088)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4542, file: !4543, line: 53, baseType: !234, size: 32, offset: 1152)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4542, file: !4543, line: 54, baseType: !234, size: 32, offset: 1184)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4542, file: !4543, line: 55, baseType: !198, size: 64, offset: 1216)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1267, file: !14, line: 1990, baseType: !4567, size: 64, offset: 960)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!1191, !1273, !216, !1206}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1267, file: !14, line: 1991, baseType: !4571, size: 64, offset: 1024)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!109, !1238, !4574, !198, !198}
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1267, file: !14, line: 1993, baseType: !4577, size: 64, offset: 1088)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!109, !1238, !109}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1267, file: !14, line: 1994, baseType: !4581, size: 64, offset: 1152)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!109, !1238, !1273, !2246, !7, !1201}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1267, file: !14, line: 1997, baseType: !4585, size: 64, offset: 1216)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!109, !4420, !1238, !2246, !1201}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1267, file: !14, line: 1999, baseType: !4589, size: 64, offset: 1280)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!1261, !4420, !1273, !109}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1267, file: !14, line: 2001, baseType: !4593, size: 64, offset: 1344)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!109, !4420, !1273, !1261, !109}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1267, file: !14, line: 2003, baseType: !4597, size: 64, offset: 1408)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!109, !4420, !1273, !4600}
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1267, file: !14, line: 2005, baseType: !4603, size: 64, offset: 1472)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!109, !1273, !4600}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1267, file: !14, line: 2006, baseType: !4607, size: 64, offset: 1536)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!4610, !1238}
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4612)
!4612 = !{!4613, !4620}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4611, file: !14, line: 3193, baseType: !4614, size: 128)
!4614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !4615, line: 296, size: 128, elements: !4616)
!4615 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!4616 = !{!4617, !4618, !4619}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !4614, file: !4615, line: 297, baseType: !1124, size: 32)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !4614, file: !4615, line: 299, baseType: !230, size: 32, offset: 32)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !4614, file: !4615, line: 300, baseType: !176, size: 64, offset: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4611, file: !14, line: 3194, baseType: !234, size: 32, offset: 128)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1239, file: !14, line: 655, baseType: !1382, size: 64, offset: 448)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1239, file: !14, line: 656, baseType: !1234, size: 64, offset: 512)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1239, file: !14, line: 659, baseType: !176, size: 64, offset: 576)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1239, file: !14, line: 663, baseType: !175, size: 64, offset: 640)
!4625 = !DIDerivedType(tag: DW_TAG_member, scope: !1239, file: !14, line: 671, baseType: !4626, size: 32, offset: 704)
!4626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1239, file: !14, line: 671, size: 32, elements: !4627)
!4627 = !{!4628, !4630}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4626, file: !14, line: 672, baseType: !4629, size: 32)
!4629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4626, file: !14, line: 673, baseType: !7, size: 32)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1239, file: !14, line: 675, baseType: !1387, size: 32, offset: 736)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1239, file: !14, line: 676, baseType: !1392, size: 64, offset: 768)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1239, file: !14, line: 677, baseType: !4530, size: 128, offset: 832)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1239, file: !14, line: 678, baseType: !4530, size: 128, offset: 960)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1239, file: !14, line: 679, baseType: !4530, size: 128, offset: 1088)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1239, file: !14, line: 680, baseType: !1124, size: 32, offset: 1216)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1239, file: !14, line: 681, baseType: !220, size: 16, offset: 1248)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1239, file: !14, line: 682, baseType: !222, size: 8, offset: 1264)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1239, file: !14, line: 683, baseType: !222, size: 8, offset: 1272)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1239, file: !14, line: 684, baseType: !3056, size: 64, offset: 1280)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1239, file: !14, line: 691, baseType: !175, size: 64, offset: 1344)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1239, file: !14, line: 692, baseType: !2065, size: 320, offset: 1408)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1239, file: !14, line: 694, baseType: !175, size: 64, offset: 1728)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1239, file: !14, line: 695, baseType: !175, size: 64, offset: 1792)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1239, file: !14, line: 697, baseType: !1710, size: 128, offset: 1856)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1239, file: !14, line: 698, baseType: !181, size: 128, offset: 1984)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1239, file: !14, line: 707, baseType: !181, size: 128, offset: 2112)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1239, file: !14, line: 708, baseType: !181, size: 128, offset: 2240)
!4649 = !DIDerivedType(tag: DW_TAG_member, scope: !1239, file: !14, line: 709, baseType: !4650, size: 128, offset: 2368)
!4650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1239, file: !14, line: 709, size: 128, elements: !4651)
!4651 = !{!4652, !4653}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4650, file: !14, line: 710, baseType: !1832, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4650, file: !14, line: 711, baseType: !1686, size: 128, align: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1239, file: !14, line: 713, baseType: !345, size: 64, offset: 2496)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1239, file: !14, line: 714, baseType: !345, size: 64, offset: 2560)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1239, file: !14, line: 715, baseType: !366, size: 32, offset: 2624)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1239, file: !14, line: 716, baseType: !366, size: 32, offset: 2656)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1239, file: !14, line: 717, baseType: !366, size: 32, offset: 2688)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1239, file: !14, line: 719, baseType: !366, size: 32, offset: 2720)
!4660 = !DIDerivedType(tag: DW_TAG_member, scope: !1239, file: !14, line: 721, baseType: !4661, size: 64, offset: 2752)
!4661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1239, file: !14, line: 721, size: 64, elements: !4662)
!4662 = !{!4663, !4664}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4661, file: !14, line: 722, baseType: !2237, size: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4661, file: !14, line: 723, baseType: !1855, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1239, file: !14, line: 725, baseType: !4666, size: 64, offset: 2816)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1239, file: !14, line: 726, baseType: !1235, size: 1536, align: 64, offset: 2880)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1239, file: !14, line: 727, baseType: !181, size: 128, offset: 4416)
!4670 = !DIDerivedType(tag: DW_TAG_member, scope: !1239, file: !14, line: 728, baseType: !4671, size: 64, offset: 4544)
!4671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1239, file: !14, line: 728, size: 64, elements: !4672)
!4672 = !{!4673, !4674, !4685, !4686}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4671, file: !14, line: 729, baseType: !2804, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4671, file: !14, line: 730, baseType: !4675, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !4677, line: 14, size: 832, elements: !4678)
!4677 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!4678 = !{!4679, !4680, !4681, !4682, !4683, !4684}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4676, file: !4677, line: 15, baseType: !1111, size: 512)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4676, file: !4677, line: 16, baseType: !1420, size: 64, offset: 512)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4676, file: !4677, line: 17, baseType: !2237, size: 64, offset: 576)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4676, file: !4677, line: 18, baseType: !181, size: 128, offset: 640)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4676, file: !4677, line: 19, baseType: !1387, size: 32, offset: 768)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4676, file: !4677, line: 20, baseType: !7, size: 32, offset: 800)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4671, file: !14, line: 731, baseType: !216, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4671, file: !14, line: 732, baseType: !7, size: 32)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1239, file: !14, line: 735, baseType: !235, size: 32, offset: 4608)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1239, file: !14, line: 738, baseType: !235, size: 32, offset: 4640)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1239, file: !14, line: 739, baseType: !4358, size: 64, offset: 4672)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1239, file: !14, line: 750, baseType: !176, size: 64, offset: 4736)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1235, file: !14, line: 474, baseType: !4614, size: 128, offset: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1235, file: !14, line: 475, baseType: !2065, size: 320, offset: 192)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1235, file: !14, line: 476, baseType: !230, size: 32, offset: 512)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1235, file: !14, line: 477, baseType: !366, size: 32, offset: 544)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1235, file: !14, line: 482, baseType: !3328, size: 128, offset: 576)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1235, file: !14, line: 483, baseType: !175, size: 64, offset: 704)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1235, file: !14, line: 484, baseType: !175, size: 64, offset: 768)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1235, file: !14, line: 485, baseType: !4699, size: 64, offset: 832)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4701)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4702)
!4702 = !{!4703, !4707, !4777, !4781, !4785, !4791, !4795, !4799, !4804, !4808, !4812, !4816, !4817, !4821, !4825, !4829, !4834, !4838, !4845, !4846}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4701, file: !14, line: 405, baseType: !4704, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!109, !2591, !1867}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4701, file: !14, line: 406, baseType: !4708, size: 64, offset: 64)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!109, !2246, !4711}
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !27, line: 293, size: 1536, elements: !4713)
!4713 = !{!4714, !4744, !4758}
!4714 = !DIDerivedType(tag: DW_TAG_member, scope: !4712, file: !27, line: 295, baseType: !4715, size: 512)
!4715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4712, file: !27, line: 295, size: 512, elements: !4716)
!4716 = !{!4717, !4743}
!4717 = !DIDerivedType(tag: DW_TAG_member, scope: !4715, file: !27, line: 296, baseType: !4718, size: 448)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4715, file: !27, line: 296, size: 448, elements: !4719)
!4719 = !{!4720, !4721, !4730, !4731, !4732, !4741, !4742}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4718, file: !27, line: 298, baseType: !175, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, scope: !4718, file: !27, line: 299, baseType: !4722, size: 128, offset: 64)
!4722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4718, file: !27, line: 299, size: 128, elements: !4723)
!4723 = !{!4724, !4725}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4722, file: !27, line: 300, baseType: !181, size: 128)
!4725 = !DIDerivedType(tag: DW_TAG_member, scope: !4722, file: !27, line: 302, baseType: !4726, size: 128)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4722, file: !27, line: 302, size: 128, elements: !4727)
!4727 = !{!4728, !4729}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4726, file: !27, line: 303, baseType: !176, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4726, file: !27, line: 305, baseType: !7, size: 32, offset: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4718, file: !27, line: 310, baseType: !1234, size: 64, offset: 192)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4718, file: !27, line: 311, baseType: !175, size: 64, offset: 256)
!4732 = !DIDerivedType(tag: DW_TAG_member, scope: !4718, file: !27, line: 312, baseType: !4733, size: 64, offset: 320)
!4733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4718, file: !27, line: 312, size: 64, elements: !4734)
!4734 = !{!4735, !4736}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4733, file: !27, line: 313, baseType: !176, size: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4733, file: !27, line: 314, baseType: !4737, size: 64)
!4737 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !27, line: 257, baseType: !4738)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 255, size: 64, elements: !4739)
!4739 = !{!4740}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4738, file: !27, line: 256, baseType: !175, size: 64)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4718, file: !27, line: 316, baseType: !366, size: 32, offset: 384)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4718, file: !27, line: 317, baseType: !366, size: 32, offset: 416)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4715, file: !27, line: 323, baseType: !2592, size: 512, align: 128)
!4744 = !DIDerivedType(tag: DW_TAG_member, scope: !4712, file: !27, line: 325, baseType: !4745, size: 512, offset: 512)
!4745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4712, file: !27, line: 325, size: 512, elements: !4746)
!4746 = !{!4747, !4757}
!4747 = !DIDerivedType(tag: DW_TAG_member, scope: !4745, file: !27, line: 326, baseType: !4748, size: 320)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4745, file: !27, line: 326, size: 320, elements: !4749)
!4749 = !{!4750, !4751, !4752, !4753, !4754, !4755, !4756}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4748, file: !27, line: 327, baseType: !175, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4748, file: !27, line: 328, baseType: !175, size: 64, offset: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4748, file: !27, line: 329, baseType: !175, size: 64, offset: 128)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4748, file: !27, line: 331, baseType: !366, size: 32, offset: 192)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4748, file: !27, line: 332, baseType: !366, size: 32, offset: 224)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4748, file: !27, line: 333, baseType: !366, size: 32, offset: 256)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4748, file: !27, line: 335, baseType: !7, size: 32, offset: 288)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4745, file: !27, line: 339, baseType: !2592, size: 512, align: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, scope: !4712, file: !27, line: 341, baseType: !4759, size: 512, offset: 1024)
!4759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4712, file: !27, line: 341, size: 512, elements: !4760)
!4760 = !{!4761, !4770, !4776}
!4761 = !DIDerivedType(tag: DW_TAG_member, scope: !4759, file: !27, line: 342, baseType: !4762, size: 384)
!4762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4759, file: !27, line: 342, size: 384, elements: !4763)
!4763 = !{!4764, !4765, !4766, !4767, !4768, !4769}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4762, file: !27, line: 343, baseType: !175, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4762, file: !27, line: 344, baseType: !175, size: 64, offset: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4762, file: !27, line: 346, baseType: !176, size: 64, offset: 128)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4762, file: !27, line: 347, baseType: !176, size: 64, offset: 192)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4762, file: !27, line: 348, baseType: !176, size: 64, offset: 256)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4762, file: !27, line: 349, baseType: !176, size: 64, offset: 320)
!4770 = !DIDerivedType(tag: DW_TAG_member, scope: !4759, file: !27, line: 352, baseType: !4771, size: 256)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4759, file: !27, line: 352, size: 256, elements: !4772)
!4772 = !{!4773, !4774, !4775}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4771, file: !27, line: 353, baseType: !175, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4771, file: !27, line: 354, baseType: !175, size: 64, offset: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4771, file: !27, line: 356, baseType: !181, size: 128, offset: 128)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4759, file: !27, line: 359, baseType: !2592, size: 512, align: 128)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4701, file: !14, line: 409, baseType: !4778, size: 64, offset: 128)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!109, !1234, !1867}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4701, file: !14, line: 412, baseType: !4782, size: 64, offset: 192)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!321, !1234, !4711}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4701, file: !14, line: 414, baseType: !4786, size: 64, offset: 256)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{null, !4789}
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4701, file: !14, line: 416, baseType: !4792, size: 64, offset: 320)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!109, !2246, !1234, !1392, !7, !4108, !2820}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4701, file: !14, line: 419, baseType: !4796, size: 64, offset: 384)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!109, !2246, !1234, !1392, !7, !7, !2591, !176}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4701, file: !14, line: 424, baseType: !4800, size: 64, offset: 448)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!4803, !1234, !4803}
!4803 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !182, line: 131, baseType: !198)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4701, file: !14, line: 425, baseType: !4805, size: 64, offset: 512)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{null, !4711, !1206, !1206}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4701, file: !14, line: 426, baseType: !4809, size: 64, offset: 576)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!321, !4711, !230}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4701, file: !14, line: 427, baseType: !4813, size: 64, offset: 640)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{null, !4711}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4701, file: !14, line: 428, baseType: !2256, size: 64, offset: 704)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4701, file: !14, line: 433, baseType: !4818, size: 64, offset: 768)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!109, !1234, !4711, !4711, !74}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4701, file: !14, line: 435, baseType: !4822, size: 64, offset: 832)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!109, !4711}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4701, file: !14, line: 436, baseType: !4826, size: 64, offset: 896)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!321, !4711, !1206, !1206}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4701, file: !14, line: 438, baseType: !4830, size: 64, offset: 960)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{null, !4711, !4833, !4833}
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4701, file: !14, line: 439, baseType: !4835, size: 64, offset: 1024)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!109, !1234, !2591}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4701, file: !14, line: 442, baseType: !4839, size: 64, offset: 1088)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!109, !4842, !2246, !4844}
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4701, file: !14, line: 444, baseType: !2812, size: 64, offset: 1152)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4701, file: !14, line: 445, baseType: !4847, size: 64, offset: 1216)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!109, !2259, !2281}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1235, file: !14, line: 486, baseType: !175, size: 64, offset: 896)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1235, file: !14, line: 487, baseType: !2065, size: 320, offset: 960)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1235, file: !14, line: 488, baseType: !2855, size: 32, offset: 1280)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1235, file: !14, line: 489, baseType: !1124, size: 32, offset: 1312)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1235, file: !14, line: 490, baseType: !181, size: 128, offset: 1344)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1235, file: !14, line: 491, baseType: !176, size: 64, offset: 1472)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1225, file: !1185, line: 180, baseType: !4857, size: 64, offset: 320)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!1191, !2246, !1117, !1224, !216, !1392, !1206}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1225, file: !1185, line: 182, baseType: !4857, size: 64, offset: 384)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1225, file: !1185, line: 184, baseType: !4862, size: 64, offset: 448)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!109, !2246, !1117, !1224, !2330}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1213, file: !1185, line: 90, baseType: !4866, size: 64, offset: 192)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1213, file: !1185, line: 91, baseType: !4868, size: 64, offset: 256)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1175, file: !1112, line: 120, baseType: !4870, size: 64, offset: 192)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!4873, !1143}
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4875)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4876)
!4876 = !{!4877, !4878, !4882, !4886, !4892, !4896}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4875, file: !82, line: 40, baseType: !81, size: 32)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4875, file: !82, line: 41, baseType: !4879, size: 64, offset: 64)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!321}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4875, file: !82, line: 42, baseType: !4883, size: 64, offset: 128)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!176}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4875, file: !82, line: 43, baseType: !4887, size: 64, offset: 192)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!2458, !4890}
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4875, file: !82, line: 44, baseType: !4893, size: 64, offset: 256)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!2458}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4875, file: !82, line: 45, baseType: !1514, size: 64, offset: 320)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1175, file: !1112, line: 121, baseType: !4898, size: 64, offset: 256)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = !DISubroutineType(types: !4900)
!4900 = !{!2458, !1143}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1175, file: !1112, line: 122, baseType: !4902, size: 64, offset: 320)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{null, !1143, !4905, !4906}
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1111, file: !1112, line: 70, baseType: !4908, size: 64, offset: 384)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1406, line: 190, size: 1152, elements: !4910)
!4910 = !{!4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4990, !4991, !4992, !4993, !4994, !4997}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4909, file: !1406, line: 191, baseType: !366, size: 32)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4909, file: !1406, line: 192, baseType: !366, size: 32, offset: 32)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4909, file: !1406, line: 202, baseType: !4908, size: 64, offset: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4909, file: !1406, line: 203, baseType: !205, size: 64, offset: 128)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4909, file: !1406, line: 205, baseType: !1579, size: 192, align: 64, offset: 192)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4909, file: !1406, line: 207, baseType: !2458, size: 64, offset: 384)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4909, file: !1406, line: 208, baseType: !7, size: 32, offset: 448)
!4918 = !DIDerivedType(tag: DW_TAG_member, scope: !4909, file: !1406, line: 209, baseType: !4919, size: 256, offset: 512)
!4919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4909, file: !1406, line: 209, size: 256, elements: !4920)
!4920 = !{!4921, !4930, !4934}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4919, file: !1406, line: 210, baseType: !4922, size: 256)
!4922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1406, line: 153, size: 256, elements: !4923)
!4923 = !{!4924, !4925, !4926, !4929}
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4922, file: !1406, line: 154, baseType: !175, size: 64)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4922, file: !1406, line: 156, baseType: !3331, size: 64, offset: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4922, file: !1406, line: 162, baseType: !4927, size: 64, offset: 128)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1406, line: 162, flags: DIFlagFwdDecl)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4922, file: !1406, line: 167, baseType: !175, size: 64, offset: 192)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4919, file: !1406, line: 211, baseType: !4931, size: 64)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1406, line: 170, size: 64, elements: !4932)
!4932 = !{!4933}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4931, file: !1406, line: 171, baseType: !4908, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4919, file: !1406, line: 212, baseType: !4935, size: 256)
!4935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1406, line: 174, size: 256, elements: !4936)
!4936 = !{!4937, !4985, !4988, !4989}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4935, file: !1406, line: 175, baseType: !4938, size: 64)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4940)
!4940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1406, line: 271, size: 768, elements: !4941)
!4941 = !{!4942, !4962, !4966, !4967, !4968, !4969, !4970, !4974, !4975, !4976, !4977, !4981}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4940, file: !1406, line: 276, baseType: !4943, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!109, !4946}
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1406, line: 251, size: 1216, elements: !4948)
!4948 = !{!4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4947, file: !1406, line: 253, baseType: !4908, size: 64)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4947, file: !1406, line: 254, baseType: !2246, size: 64, offset: 64)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4947, file: !1406, line: 255, baseType: !1904, size: 64, offset: 128)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4947, file: !1406, line: 256, baseType: !176, size: 64, offset: 192)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4947, file: !1406, line: 259, baseType: !339, size: 256, offset: 256)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4947, file: !1406, line: 260, baseType: !339, size: 256, offset: 512)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4947, file: !1406, line: 261, baseType: !109, size: 32, offset: 768)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4947, file: !1406, line: 262, baseType: !181, size: 128, offset: 832)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4947, file: !1406, line: 263, baseType: !216, size: 64, offset: 960)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4947, file: !1406, line: 265, baseType: !1206, size: 64, offset: 1024)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4947, file: !1406, line: 266, baseType: !321, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4947, file: !1406, line: 267, baseType: !321, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4947, file: !1406, line: 268, baseType: !2527, size: 64, offset: 1152)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4940, file: !1406, line: 277, baseType: !4963, size: 64, offset: 64)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{null, !4946}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4940, file: !1406, line: 290, baseType: !1935, size: 64, offset: 128)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4940, file: !1406, line: 292, baseType: !1922, size: 64, offset: 192)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4940, file: !1406, line: 293, baseType: !1931, size: 64, offset: 256)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4940, file: !1406, line: 294, baseType: !1927, size: 64, offset: 320)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4940, file: !1406, line: 296, baseType: !4971, size: 64, offset: 384)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!1191, !4946, !216, !1206, !1392}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4940, file: !1406, line: 306, baseType: !1206, size: 64, offset: 448)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4940, file: !1406, line: 313, baseType: !321, size: 8, offset: 512)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4940, file: !1406, line: 314, baseType: !4971, size: 64, offset: 576)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4940, file: !1406, line: 317, baseType: !4978, size: 64, offset: 640)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!2308, !4946, !2310}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4940, file: !1406, line: 320, baseType: !4982, size: 64, offset: 704)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!109, !4946, !2330}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4935, file: !1406, line: 176, baseType: !4986, size: 64, offset: 64)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1406, line: 35, flags: DIFlagFwdDecl)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4935, file: !1406, line: 177, baseType: !1392, size: 64, offset: 128)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4935, file: !1406, line: 178, baseType: !4908, size: 64, offset: 192)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4909, file: !1406, line: 215, baseType: !176, size: 64, offset: 768)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4909, file: !1406, line: 221, baseType: !198, size: 64, offset: 832)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4909, file: !1406, line: 223, baseType: !220, size: 16, offset: 896)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4909, file: !1406, line: 224, baseType: !1201, size: 16, offset: 912)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4909, file: !1406, line: 225, baseType: !4995, size: 64, offset: 960)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1406, line: 36, flags: DIFlagFwdDecl)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4909, file: !1406, line: 227, baseType: !1686, size: 128, align: 64, offset: 1024)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1111, file: !1112, line: 71, baseType: !4999, size: 32, offset: 448)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5000, line: 19, size: 32, elements: !5001)
!5000 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5001 = !{!5002}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4999, file: !5000, line: 20, baseType: !1991, size: 32)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1111, file: !1112, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1111, file: !1112, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1111, file: !1112, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1111, file: !1112, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1111, file: !1112, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1108, file: !94, line: 707, baseType: !1107, size: 64, offset: 512)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1108, file: !94, line: 709, baseType: !5010, size: 64, offset: 576)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1108, file: !94, line: 711, baseType: !205, size: 64, offset: 640)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1108, file: !94, line: 712, baseType: !5014, size: 64, offset: 704)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5016)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !5017)
!5017 = !{!5018, !5019, !5020, !5026, !5031, !5035}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5016, file: !94, line: 90, baseType: !205, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5016, file: !94, line: 91, baseType: !1210, size: 64, offset: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5016, file: !94, line: 92, baseType: !5021, size: 64, offset: 128)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{!109, !5024, !1155}
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1108)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5016, file: !94, line: 93, baseType: !5027, size: 64, offset: 192)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!216, !5024, !5030, !4905, !4906}
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5016, file: !94, line: 95, baseType: !5032, size: 64, offset: 256)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{null, !1107}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5016, file: !94, line: 97, baseType: !5036, size: 64, offset: 320)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5038)
!5038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !5039)
!5039 = !{!5040, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5038, file: !101, line: 287, baseType: !5041, size: 64)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!109, !1107}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5038, file: !101, line: 288, baseType: !5032, size: 64, offset: 64)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5038, file: !101, line: 289, baseType: !5041, size: 64, offset: 128)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5038, file: !101, line: 290, baseType: !5041, size: 64, offset: 192)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !5038, file: !101, line: 291, baseType: !5041, size: 64, offset: 256)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !5038, file: !101, line: 292, baseType: !5041, size: 64, offset: 320)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !5038, file: !101, line: 293, baseType: !5041, size: 64, offset: 384)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !5038, file: !101, line: 294, baseType: !5041, size: 64, offset: 448)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !5038, file: !101, line: 295, baseType: !5041, size: 64, offset: 512)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !5038, file: !101, line: 296, baseType: !5041, size: 64, offset: 576)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !5038, file: !101, line: 297, baseType: !5041, size: 64, offset: 640)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !5038, file: !101, line: 298, baseType: !5041, size: 64, offset: 704)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !5038, file: !101, line: 299, baseType: !5041, size: 64, offset: 768)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !5038, file: !101, line: 300, baseType: !5041, size: 64, offset: 832)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !5038, file: !101, line: 301, baseType: !5041, size: 64, offset: 896)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !5038, file: !101, line: 302, baseType: !5041, size: 64, offset: 960)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !5038, file: !101, line: 303, baseType: !5041, size: 64, offset: 1024)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !5038, file: !101, line: 304, baseType: !5041, size: 64, offset: 1088)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !5038, file: !101, line: 305, baseType: !5041, size: 64, offset: 1152)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !5038, file: !101, line: 306, baseType: !5041, size: 64, offset: 1216)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !5038, file: !101, line: 307, baseType: !5041, size: 64, offset: 1280)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !5038, file: !101, line: 308, baseType: !5041, size: 64, offset: 1344)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !5038, file: !101, line: 309, baseType: !5041, size: 64, offset: 1408)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1108, file: !94, line: 714, baseType: !5067, size: 64, offset: 768)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5069)
!5069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !5070, line: 80, size: 1344, elements: !5071)
!5070 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!5071 = !{!5072, !5073, !5074, !5075, !5076, !5077, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5150}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5069, file: !5070, line: 81, baseType: !205, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !5069, file: !5070, line: 82, baseType: !205, size: 64, offset: 64)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !5069, file: !5070, line: 83, baseType: !1210, size: 64, offset: 128)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5069, file: !5070, line: 84, baseType: !1210, size: 64, offset: 192)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !5069, file: !5070, line: 85, baseType: !1210, size: 64, offset: 256)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5069, file: !5070, line: 87, baseType: !5078, size: 64, offset: 320)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!109, !1107, !5081}
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !5083)
!5083 = !{!5084, !5085, !5086, !5087, !5088, !5089, !5090, !5103, !5113, !5114, !5115, !5116, !5117, !5125, !5126, !5127, !5128, !5129, !5130}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5082, file: !88, line: 97, baseType: !205, size: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5082, file: !88, line: 98, baseType: !5067, size: 64, offset: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5082, file: !88, line: 100, baseType: !1420, size: 64, offset: 128)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !5082, file: !88, line: 101, baseType: !205, size: 64, offset: 192)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !5082, file: !88, line: 103, baseType: !321, size: 8, offset: 256)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !5082, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !5082, file: !88, line: 106, baseType: !5091, size: 64, offset: 320)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5093)
!5093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !5094, line: 282, size: 1600, elements: !5095)
!5094 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!5095 = !{!5096, !5097, !5098, !5102}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5093, file: !5094, line: 283, baseType: !468, size: 256)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5093, file: !5094, line: 284, baseType: !468, size: 256, offset: 256)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !5093, file: !5094, line: 285, baseType: !5099, size: 1024, offset: 512)
!5099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 1024, elements: !5100)
!5100 = !{!5101}
!5101 = !DISubrange(count: 128)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5093, file: !5094, line: 286, baseType: !2458, size: 64, offset: 1536)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !5082, file: !88, line: 107, baseType: !5104, size: 64, offset: 384)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5106)
!5106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !5094, line: 217, size: 256, elements: !5107)
!5107 = !{!5108, !5109, !5111, !5112}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5106, file: !5094, line: 218, baseType: !4367, size: 128)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5106, file: !5094, line: 219, baseType: !5110, size: 64, offset: 128)
!5110 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !5094, line: 15, baseType: !175)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !5106, file: !5094, line: 220, baseType: !235, size: 32, offset: 192)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !5106, file: !5094, line: 221, baseType: !235, size: 32, offset: 224)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5082, file: !88, line: 109, baseType: !5041, size: 64, offset: 448)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5082, file: !88, line: 110, baseType: !5032, size: 64, offset: 512)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5082, file: !88, line: 111, baseType: !5041, size: 64, offset: 576)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5082, file: !88, line: 112, baseType: !5032, size: 64, offset: 640)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5082, file: !88, line: 113, baseType: !5118, size: 64, offset: 704)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{!109, !1107, !5121}
!5121 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !5122)
!5122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !5123)
!5123 = !{!5124}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5122, file: !101, line: 59, baseType: !109, size: 32)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5082, file: !88, line: 114, baseType: !5041, size: 64, offset: 768)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5082, file: !88, line: 115, baseType: !1210, size: 64, offset: 832)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5082, file: !88, line: 116, baseType: !1210, size: 64, offset: 896)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5082, file: !88, line: 118, baseType: !5036, size: 64, offset: 960)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !5082, file: !88, line: 119, baseType: !5032, size: 64, offset: 1024)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5082, file: !88, line: 121, baseType: !5131, size: 64, offset: 1088)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5069, file: !5070, line: 88, baseType: !5021, size: 64, offset: 384)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5069, file: !5070, line: 89, baseType: !5041, size: 64, offset: 448)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5069, file: !5070, line: 90, baseType: !5032, size: 64, offset: 512)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5069, file: !5070, line: 91, baseType: !5032, size: 64, offset: 576)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5069, file: !5070, line: 92, baseType: !5032, size: 64, offset: 640)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !5069, file: !5070, line: 94, baseType: !5041, size: 64, offset: 704)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !5069, file: !5070, line: 95, baseType: !5041, size: 64, offset: 768)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5069, file: !5070, line: 97, baseType: !5118, size: 64, offset: 832)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5069, file: !5070, line: 98, baseType: !5041, size: 64, offset: 896)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !5069, file: !5070, line: 100, baseType: !5041, size: 64, offset: 960)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !5069, file: !5070, line: 102, baseType: !5041, size: 64, offset: 1024)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !5069, file: !5070, line: 103, baseType: !5032, size: 64, offset: 1088)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5069, file: !5070, line: 105, baseType: !5036, size: 64, offset: 1152)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !5069, file: !5070, line: 107, baseType: !5147, size: 64, offset: 1216)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5149)
!5149 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !5070, line: 107, flags: DIFlagFwdDecl)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !5069, file: !5070, line: 109, baseType: !321, size: 8, offset: 1280)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1108, file: !94, line: 715, baseType: !5081, size: 64, offset: 832)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1108, file: !94, line: 717, baseType: !176, size: 64, offset: 896)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1108, file: !94, line: 719, baseType: !176, size: 64, offset: 960)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1108, file: !94, line: 721, baseType: !339, size: 256, offset: 1024)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1108, file: !94, line: 725, baseType: !5156, size: 448, offset: 1280)
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !5157)
!5157 = !{!5158, !5159, !5160, !5161}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5156, file: !94, line: 518, baseType: !181, size: 128)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5156, file: !94, line: 519, baseType: !181, size: 128, offset: 128)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !5156, file: !94, line: 520, baseType: !181, size: 128, offset: 256)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5156, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1108, file: !94, line: 726, baseType: !5163, size: 2496, offset: 1728)
!5163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !5164)
!5164 = !{!5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5247, !5251}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !5163, file: !101, line: 664, baseType: !5121, size: 32)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !5163, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !5163, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !5163, file: !101, line: 667, baseType: !321, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !5163, file: !101, line: 668, baseType: !321, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !5163, file: !101, line: 669, baseType: !321, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !5163, file: !101, line: 670, baseType: !321, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !5163, file: !101, line: 671, baseType: !321, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !5163, file: !101, line: 672, baseType: !321, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !5163, file: !101, line: 673, baseType: !321, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !5163, file: !101, line: 674, baseType: !321, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !5163, file: !101, line: 675, baseType: !234, size: 32, offset: 64)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5163, file: !101, line: 676, baseType: !1124, size: 32, offset: 96)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5163, file: !101, line: 678, baseType: !181, size: 128, offset: 128)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !5163, file: !101, line: 679, baseType: !1440, size: 256, offset: 256)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5163, file: !101, line: 680, baseType: !5181, size: 64, offset: 512)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !5183, line: 43, size: 1536, elements: !5184)
!5183 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!5184 = !{!5185, !5186, !5187, !5188, !5189, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5182, file: !5183, line: 44, baseType: !205, size: 64)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5182, file: !5183, line: 45, baseType: !109, size: 32, offset: 64)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5182, file: !5183, line: 46, baseType: !181, size: 128, offset: 128)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5182, file: !5183, line: 47, baseType: !1124, size: 32, offset: 256)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5182, file: !5183, line: 48, baseType: !5190, size: 64, offset: 320)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5182, file: !5183, line: 49, baseType: !1706, size: 320, offset: 384)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5182, file: !5183, line: 50, baseType: !175, size: 64, offset: 704)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !5182, file: !5183, line: 51, baseType: !3279, size: 64, offset: 768)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !5182, file: !5183, line: 52, baseType: !3279, size: 64, offset: 832)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !5182, file: !5183, line: 53, baseType: !3279, size: 64, offset: 896)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !5182, file: !5183, line: 54, baseType: !3279, size: 64, offset: 960)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !5182, file: !5183, line: 55, baseType: !3279, size: 64, offset: 1024)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !5182, file: !5183, line: 56, baseType: !175, size: 64, offset: 1088)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !5182, file: !5183, line: 57, baseType: !175, size: 64, offset: 1152)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !5182, file: !5183, line: 58, baseType: !175, size: 64, offset: 1216)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !5182, file: !5183, line: 59, baseType: !175, size: 64, offset: 1280)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !5182, file: !5183, line: 60, baseType: !175, size: 64, offset: 1344)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5182, file: !5183, line: 61, baseType: !1107, size: 64, offset: 1408)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5182, file: !5183, line: 62, baseType: !321, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !5182, file: !5183, line: 63, baseType: !321, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !5163, file: !101, line: 681, baseType: !321, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !5163, file: !101, line: 682, baseType: !321, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !5163, file: !101, line: 683, baseType: !321, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !5163, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !5163, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !5163, file: !101, line: 690, baseType: !3271, size: 512, offset: 640)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5163, file: !101, line: 691, baseType: !198, size: 64, offset: 1152)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5163, file: !101, line: 692, baseType: !1724, size: 256, offset: 1216)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !5163, file: !101, line: 693, baseType: !2002, size: 192, offset: 1472)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5163, file: !101, line: 694, baseType: !5190, size: 64, offset: 1664)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !5163, file: !101, line: 695, baseType: !366, size: 32, offset: 1728)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !5163, file: !101, line: 696, baseType: !366, size: 32, offset: 1760)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !5163, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !5163, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !5163, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !5163, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !5163, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !5163, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !5163, file: !101, line: 703, baseType: !321, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !5163, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !5163, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !5163, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !5163, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !5163, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !5163, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5163, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !5163, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !5163, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !5163, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !5163, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !5163, file: !101, line: 715, baseType: !198, size: 64, offset: 2048)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !5163, file: !101, line: 716, baseType: !198, size: 64, offset: 2112)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !5163, file: !101, line: 717, baseType: !198, size: 64, offset: 2176)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !5163, file: !101, line: 718, baseType: !198, size: 64, offset: 2240)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !5163, file: !101, line: 720, baseType: !5242, size: 64, offset: 2304)
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5243, size: 64)
!5243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !5244)
!5244 = !{!5245, !5246}
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5243, file: !101, line: 633, baseType: !1124, size: 32)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5243, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !5163, file: !101, line: 721, baseType: !5248, size: 64, offset: 2368)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{null, !1107, !1486}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !5163, file: !101, line: 722, baseType: !5252, size: 64, offset: 2432)
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5253, size: 64)
!5253 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1108, file: !94, line: 727, baseType: !5255, size: 64, offset: 4224)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !5257)
!5257 = !{!5258, !5259, !5260, !5264, !5265, !5266}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5256, file: !101, line: 743, baseType: !5038, size: 1472)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5256, file: !101, line: 744, baseType: !5041, size: 64, offset: 1472)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5256, file: !101, line: 745, baseType: !5261, size: 64, offset: 1536)
!5261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5262, size: 64)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{null, !1107, !321}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5256, file: !101, line: 746, baseType: !5041, size: 64, offset: 1600)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5256, file: !101, line: 747, baseType: !5032, size: 64, offset: 1664)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !5256, file: !101, line: 748, baseType: !5032, size: 64, offset: 1728)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1108, file: !94, line: 736, baseType: !5268, size: 128, offset: 4288)
!5268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !5269)
!5269 = !{!5270, !5274}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5268, file: !94, line: 531, baseType: !5271, size: 64)
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !5273, line: 13, flags: DIFlagFwdDecl)
!5273 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5268, file: !94, line: 532, baseType: !5275, size: 64, offset: 64)
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1108, file: !94, line: 738, baseType: !5278, size: 64, offset: 4416)
!5278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5279, size: 64)
!5279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5280)
!5280 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1108, file: !94, line: 740, baseType: !5282, size: 64, offset: 4480)
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1108, file: !94, line: 741, baseType: !198, size: 64, offset: 4544)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1108, file: !94, line: 746, baseType: !198, size: 64, offset: 4608)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1108, file: !94, line: 747, baseType: !5286, size: 64, offset: 4672)
!5286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5287, size: 64)
!5287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5288)
!5288 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1108, file: !94, line: 749, baseType: !5290, size: 64, offset: 4736)
!5290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5291, size: 64)
!5291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !5292)
!5292 = !{!5293, !5294, !5295}
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5291, file: !94, line: 433, baseType: !7, size: 32)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !5291, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5291, file: !94, line: 435, baseType: !175, size: 64, offset: 64)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1108, file: !94, line: 751, baseType: !181, size: 128, offset: 4800)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1108, file: !94, line: 762, baseType: !5298, size: 64, offset: 4928)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5299 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1108, file: !94, line: 770, baseType: !5301, offset: 4992)
!5301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5302, line: 5, elements: !1753)
!5302 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1108, file: !94, line: 772, baseType: !5304, size: 64, offset: 4992)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !5306, line: 18, flags: DIFlagFwdDecl)
!5306 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1108, file: !94, line: 773, baseType: !5308, size: 64, offset: 5056)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !5310, line: 41, size: 512, elements: !5311)
!5310 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!5311 = !{!5312, !5313, !5406, !5407, !5408, !5409}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !5309, file: !5310, line: 42, baseType: !5308, size: 64)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5309, file: !5310, line: 43, baseType: !5314, size: 64, offset: 64)
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5315, size: 64)
!5315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5316)
!5316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !5310, line: 125, size: 1408, elements: !5317)
!5317 = !{!5318, !5322, !5326, !5332, !5336, !5337, !5341, !5345, !5349, !5353, !5357, !5358, !5362, !5366, !5370, !5381, !5382, !5383, !5384, !5394, !5398, !5402}
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5316, file: !5310, line: 126, baseType: !5319, size: 64)
!5319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5320, size: 64)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{!5308, !5308}
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !5316, file: !5310, line: 127, baseType: !5323, size: 64, offset: 64)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{null, !5308}
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !5316, file: !5310, line: 128, baseType: !5327, size: 64, offset: 128)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{!321, !5330}
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5309)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !5316, file: !5310, line: 129, baseType: !5333, size: 64, offset: 192)
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5334 = !DISubroutineType(types: !5335)
!5335 = !{!2458, !5330, !5024}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !5316, file: !5310, line: 131, baseType: !5327, size: 64, offset: 256)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !5316, file: !5310, line: 133, baseType: !5338, size: 64, offset: 320)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!116, !5330}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !5316, file: !5310, line: 134, baseType: !5342, size: 64, offset: 384)
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{!321, !5330, !205}
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !5316, file: !5310, line: 136, baseType: !5346, size: 64, offset: 448)
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5347, size: 64)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!109, !5330, !205, !7, !176, !1206}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !5316, file: !5310, line: 141, baseType: !5350, size: 64, offset: 512)
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{!109, !5330, !205, !1801, !1206}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !5316, file: !5310, line: 144, baseType: !5354, size: 64, offset: 576)
!5354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!205, !5330}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !5316, file: !5310, line: 145, baseType: !5354, size: 64, offset: 640)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !5316, file: !5310, line: 146, baseType: !5359, size: 64, offset: 704)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!5308, !5330}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !5316, file: !5310, line: 148, baseType: !5363, size: 64, offset: 768)
!5363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5364, size: 64)
!5364 = !DISubroutineType(types: !5365)
!5365 = !{!5308, !5330, !5308}
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !5316, file: !5310, line: 151, baseType: !5367, size: 64, offset: 832)
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5368, size: 64)
!5368 = !DISubroutineType(types: !5369)
!5369 = !{!5308, !5330, !205}
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !5316, file: !5310, line: 153, baseType: !5371, size: 64, offset: 896)
!5371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5372, size: 64)
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!109, !5330, !205, !205, !7, !7, !5374}
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5375, size: 64)
!5375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !5310, line: 94, size: 640, elements: !5376)
!5376 = !{!5377, !5378, !5379}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5375, file: !5310, line: 95, baseType: !5308, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !5375, file: !5310, line: 96, baseType: !7, size: 32, offset: 64)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !5375, file: !5310, line: 97, baseType: !5380, size: 512, offset: 128)
!5380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 512, elements: !257)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !5316, file: !5310, line: 158, baseType: !5363, size: 64, offset: 960)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !5316, file: !5310, line: 161, baseType: !5359, size: 64, offset: 1024)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !5316, file: !5310, line: 163, baseType: !5319, size: 64, offset: 1088)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !5316, file: !5310, line: 164, baseType: !5385, size: 64, offset: 1152)
!5385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5386, size: 64)
!5386 = !DISubroutineType(types: !5387)
!5387 = !{!109, !5330, !5388}
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !5310, line: 73, size: 128, elements: !5390)
!5390 = !{!5391, !5392, !5393}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5389, file: !5310, line: 74, baseType: !7, size: 32)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5389, file: !5310, line: 75, baseType: !7, size: 32, offset: 32)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !5389, file: !5310, line: 76, baseType: !5330, size: 64, offset: 64)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !5316, file: !5310, line: 166, baseType: !5395, size: 64, offset: 1216)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{!176, !5308, !109}
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !5316, file: !5310, line: 167, baseType: !5399, size: 64, offset: 1280)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = !DISubroutineType(types: !5401)
!5401 = !{!109, !5330, !7}
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !5316, file: !5310, line: 168, baseType: !5403, size: 64, offset: 1344)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!109, !5308}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5309, file: !5310, line: 44, baseType: !1107, size: 64, offset: 128)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5309, file: !5310, line: 45, baseType: !181, size: 128, offset: 192)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5309, file: !5310, line: 46, baseType: !181, size: 128, offset: 320)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5309, file: !5310, line: 47, baseType: !222, size: 8, offset: 448)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1108, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1108, file: !94, line: 778, baseType: !1387, size: 32, offset: 5152)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1108, file: !94, line: 779, baseType: !234, size: 32, offset: 5184)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1108, file: !94, line: 781, baseType: !1124, size: 32, offset: 5216)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1108, file: !94, line: 782, baseType: !181, size: 128, offset: 5248)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1108, file: !94, line: 784, baseType: !5416, size: 64, offset: 5376)
!5416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5417, size: 64)
!5417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5418)
!5418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5419, line: 52, size: 768, elements: !5420)
!5419 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5420 = !{!5421, !5422, !5423, !5424, !5425, !5429, !5433, !5434, !5435, !5436, !5440, !5444}
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5418, file: !5419, line: 53, baseType: !205, size: 64)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5418, file: !5419, line: 55, baseType: !1210, size: 64, offset: 64)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5418, file: !5419, line: 56, baseType: !1210, size: 64, offset: 128)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5418, file: !5419, line: 58, baseType: !5021, size: 64, offset: 192)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5418, file: !5419, line: 59, baseType: !5426, size: 64, offset: 256)
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{!216, !5024, !5030}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5418, file: !5419, line: 61, baseType: !5430, size: 64, offset: 320)
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5431, size: 64)
!5431 = !DISubroutineType(types: !5432)
!5432 = !{null, !5416}
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5418, file: !5419, line: 62, baseType: !5032, size: 64, offset: 384)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5418, file: !5419, line: 64, baseType: !5041, size: 64, offset: 448)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5418, file: !5419, line: 66, baseType: !4873, size: 64, offset: 512)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5418, file: !5419, line: 67, baseType: !5437, size: 64, offset: 576)
!5437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5438, size: 64)
!5438 = !DISubroutineType(types: !5439)
!5439 = !{!2458, !5024}
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5418, file: !5419, line: 69, baseType: !5441, size: 64, offset: 640)
!5441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5442, size: 64)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{null, !5024, !4905, !4906}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5418, file: !5419, line: 71, baseType: !5036, size: 64, offset: 704)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1108, file: !94, line: 785, baseType: !1210, size: 64, offset: 5440)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1108, file: !94, line: 787, baseType: !5032, size: 64, offset: 5504)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1108, file: !94, line: 788, baseType: !5448, size: 64, offset: 5568)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1108, file: !94, line: 789, baseType: !5451, size: 64, offset: 5632)
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5452, size: 64)
!5452 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1108, file: !94, line: 791, baseType: !5454, size: 64, offset: 5696)
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5455, size: 64)
!5455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !5456)
!5456 = !{!5457, !5458, !5459, !5460, !5461}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5455, file: !94, line: 598, baseType: !122, size: 32)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5455, file: !94, line: 599, baseType: !131, size: 32, offset: 32)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5455, file: !94, line: 600, baseType: !136, size: 32, offset: 64)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5455, file: !94, line: 601, baseType: !321, size: 8, offset: 96)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5455, file: !94, line: 602, baseType: !321, size: 8, offset: 104)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1108, file: !94, line: 793, baseType: !141, size: 32, offset: 5760)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1108, file: !94, line: 795, baseType: !321, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1108, file: !94, line: 796, baseType: !321, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1108, file: !94, line: 797, baseType: !321, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1108, file: !94, line: 798, baseType: !321, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1108, file: !94, line: 799, baseType: !321, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5468 = !{!5469, !5470, !5471, !5472, !5473, !5474, !5475, !5476}
!5469 = !DILocalVariable(name: "dev", arg: 1, scope: !1104, file: !3, line: 782, type: !1107)
!5470 = !DILocalVariable(name: "seg", arg: 2, scope: !1104, file: !3, line: 782, type: !218)
!5471 = !DILocalVariable(name: "start", arg: 3, scope: !1104, file: !3, line: 782, type: !222)
!5472 = !DILocalVariable(name: "end", arg: 4, scope: !1104, file: !3, line: 782, type: !222)
!5473 = !DILocalVariable(name: "addr", arg: 5, scope: !1104, file: !3, line: 783, type: !197)
!5474 = !DILocalVariable(name: "rc", scope: !1104, file: !3, line: 785, type: !109)
!5475 = !DILocalVariable(name: "tmp", scope: !1104, file: !3, line: 786, type: !211)
!5476 = !DILocalVariable(name: "cfg", scope: !1104, file: !3, line: 787, type: !186)
!5477 = !DILocation(line: 782, column: 40, scope: !1104)
!5478 = !DILocation(line: 782, column: 49, scope: !1104)
!5479 = !DILocation(line: 782, column: 57, scope: !1104)
!5480 = !DILocation(line: 782, column: 67, scope: !1104)
!5481 = !DILocation(line: 783, column: 16, scope: !1104)
!5482 = !DILocation(line: 785, column: 2, scope: !1104)
!5483 = !DILocation(line: 785, column: 6, scope: !1104)
!5484 = !DILocation(line: 786, column: 2, scope: !1104)
!5485 = !DILocation(line: 786, column: 19, scope: !1104)
!5486 = !DILocation(line: 787, column: 2, scope: !1104)
!5487 = !DILocation(line: 787, column: 27, scope: !1104)
!5488 = !DILocation(line: 789, column: 8, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 789, column: 6)
!5490 = !DILocation(line: 789, column: 18, scope: !5489)
!5491 = !DILocation(line: 789, column: 38, scope: !5489)
!5492 = !DILocation(line: 789, column: 41, scope: !5489)
!5493 = !{i8 0, i8 2}
!5494 = !DILocation(line: 789, column: 6, scope: !1104)
!5495 = !DILocation(line: 790, column: 3, scope: !5489)
!5496 = !DILocation(line: 792, column: 6, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 792, column: 6)
!5498 = !DILocation(line: 792, column: 14, scope: !5497)
!5499 = !DILocation(line: 792, column: 12, scope: !5497)
!5500 = !DILocation(line: 792, column: 6, scope: !1104)
!5501 = !DILocation(line: 793, column: 3, scope: !5497)
!5502 = !DILocation(line: 795, column: 2, scope: !1104)
!5503 = !DILocation(line: 796, column: 28, scope: !1104)
!5504 = !DILocation(line: 796, column: 33, scope: !1104)
!5505 = !DILocation(line: 796, column: 8, scope: !1104)
!5506 = !DILocation(line: 796, column: 6, scope: !1104)
!5507 = !DILocation(line: 797, column: 6, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 797, column: 6)
!5509 = !DILocation(line: 797, column: 6, scope: !1104)
!5510 = !DILocation(line: 798, column: 7, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 798, column: 7)
!5512 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 797, column: 11)
!5513 = !DILocation(line: 798, column: 12, scope: !5511)
!5514 = !DILocation(line: 798, column: 22, scope: !5511)
!5515 = !DILocation(line: 798, column: 20, scope: !5511)
!5516 = !DILocation(line: 798, column: 7, scope: !5512)
!5517 = !DILocation(line: 799, column: 4, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 799, column: 4)
!5519 = !DILocation(line: 799, column: 4, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 799, column: 4)
!5521 = !DILocation(line: 799, column: 4, scope: !5511)
!5522 = !DILocation(line: 804, column: 3, scope: !5512)
!5523 = !DILocation(line: 805, column: 3, scope: !5512)
!5524 = !DILocation(line: 808, column: 7, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 808, column: 6)
!5526 = !DILocation(line: 808, column: 6, scope: !1104)
!5527 = !DILocation(line: 809, column: 3, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 808, column: 13)
!5529 = !DILocation(line: 810, column: 3, scope: !5528)
!5530 = !DILocation(line: 813, column: 5, scope: !1104)
!5531 = !DILocation(line: 814, column: 27, scope: !1104)
!5532 = !DILocation(line: 814, column: 32, scope: !1104)
!5533 = !DILocation(line: 814, column: 39, scope: !1104)
!5534 = !DILocation(line: 814, column: 44, scope: !1104)
!5535 = !DILocation(line: 814, column: 8, scope: !1104)
!5536 = !DILocation(line: 814, column: 6, scope: !1104)
!5537 = !DILocation(line: 815, column: 6, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 815, column: 6)
!5539 = !DILocation(line: 815, column: 10, scope: !5538)
!5540 = !DILocation(line: 815, column: 6, scope: !1104)
!5541 = !DILocation(line: 816, column: 3, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 816, column: 3)
!5543 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 815, column: 19)
!5544 = !DILocation(line: 816, column: 3, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 816, column: 3)
!5546 = !DILocation(line: 817, column: 6, scope: !5543)
!5547 = !DILocation(line: 818, column: 2, scope: !5543)
!5548 = !DILocation(line: 818, column: 39, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 818, column: 13)
!5550 = !DILocation(line: 818, column: 44, scope: !5549)
!5551 = !DILocation(line: 818, column: 14, scope: !5549)
!5552 = !DILocation(line: 818, column: 13, scope: !5538)
!5553 = !DILocation(line: 819, column: 3, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 819, column: 3)
!5555 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 818, column: 53)
!5556 = !DILocation(line: 819, column: 3, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 819, column: 3)
!5558 = !DILocation(line: 821, column: 2, scope: !5555)
!5559 = !DILocation(line: 823, column: 7, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 823, column: 7)
!5561 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 821, column: 9)
!5562 = !DILocation(line: 823, column: 7, scope: !5561)
!5563 = !DILocation(line: 825, column: 15, scope: !5560)
!5564 = !DILocation(line: 825, column: 20, scope: !5560)
!5565 = !DILocation(line: 824, column: 10, scope: !5560)
!5566 = !DILocation(line: 824, column: 8, scope: !5560)
!5567 = !DILocation(line: 824, column: 4, scope: !5560)
!5568 = !DILocation(line: 827, column: 7, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 827, column: 7)
!5570 = !DILocation(line: 827, column: 7, scope: !5561)
!5571 = !DILocation(line: 828, column: 4, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 828, column: 4)
!5573 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 827, column: 12)
!5574 = !DILocation(line: 828, column: 4, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 828, column: 4)
!5576 = !DILocation(line: 832, column: 3, scope: !5573)
!5577 = !DILocation(line: 832, column: 33, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 832, column: 14)
!5579 = !DILocation(line: 832, column: 14, scope: !5578)
!5580 = !DILocation(line: 832, column: 14, scope: !5569)
!5581 = !DILocation(line: 833, column: 4, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 833, column: 4)
!5583 = distinct !DILexicalBlock(scope: !5578, file: !3, line: 832, column: 39)
!5584 = !DILocation(line: 833, column: 4, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 833, column: 4)
!5586 = !DILocation(line: 835, column: 3, scope: !5583)
!5587 = !DILocation(line: 836, column: 20, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5578, file: !3, line: 835, column: 10)
!5589 = !DILocation(line: 836, column: 4, scope: !5588)
!5590 = !DILocation(line: 837, column: 4, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 837, column: 4)
!5592 = !DILocation(line: 837, column: 4, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5591, file: !3, line: 837, column: 4)
!5594 = !DILocation(line: 839, column: 8, scope: !5588)
!5595 = !DILocation(line: 840, column: 7, scope: !5588)
!5596 = !DILocation(line: 844, column: 6, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 844, column: 6)
!5598 = !DILocation(line: 844, column: 6, scope: !1104)
!5599 = !DILocation(line: 845, column: 7, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 845, column: 7)
!5601 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 844, column: 11)
!5602 = !DILocation(line: 845, column: 12, scope: !5600)
!5603 = !DILocation(line: 845, column: 16, scope: !5600)
!5604 = !DILocation(line: 845, column: 7, scope: !5601)
!5605 = !DILocation(line: 846, column: 22, scope: !5600)
!5606 = !DILocation(line: 846, column: 27, scope: !5600)
!5607 = !DILocation(line: 846, column: 4, scope: !5600)
!5608 = !DILocation(line: 847, column: 9, scope: !5601)
!5609 = !DILocation(line: 847, column: 3, scope: !5601)
!5610 = !DILocation(line: 848, column: 2, scope: !5601)
!5611 = !DILocation(line: 850, column: 2, scope: !1104)
!5612 = !DILocation(line: 852, column: 9, scope: !1104)
!5613 = !DILocation(line: 852, column: 2, scope: !1104)
!5614 = !DILocation(line: 853, column: 1, scope: !1104)
!5615 = !DISubprogram(name: "_dev_info", scope: !5616, file: !5616, line: 56, type: !5617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5616 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5617 = !DISubroutineType(types: !5618)
!5618 = !{null, !5024, !205, null}
!5619 = !DISubprogram(name: "_dev_warn", scope: !5616, file: !5616, line: 52, type: !5617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5620 = distinct !DISubprogram(name: "pci_mmcfg_check_reserved", scope: !3, file: !3, line: 526, type: !5621, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5623)
!5621 = !DISubroutineType(types: !5622)
!5622 = !{!321, !1107, !186, !109}
!5623 = !{!5624, !5625, !5626, !5627}
!5624 = !DILocalVariable(name: "dev", arg: 1, scope: !5620, file: !3, line: 526, type: !1107)
!5625 = !DILocalVariable(name: "cfg", arg: 2, scope: !5620, file: !3, line: 526, type: !186)
!5626 = !DILocalVariable(name: "early", arg: 3, scope: !5620, file: !3, line: 526, type: !109)
!5627 = !DILocalVariable(name: "conflict", scope: !5620, file: !3, line: 528, type: !211)
!5628 = !DILocation(line: 526, column: 41, scope: !5620)
!5629 = !DILocation(line: 526, column: 71, scope: !5620)
!5630 = !DILocation(line: 526, column: 80, scope: !5620)
!5631 = !DILocation(line: 528, column: 2, scope: !5620)
!5632 = !DILocation(line: 528, column: 19, scope: !5620)
!5633 = !DILocation(line: 530, column: 6, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 530, column: 6)
!5635 = !DILocation(line: 530, column: 6, scope: !5620)
!5636 = !DILocation(line: 550, column: 7, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 550, column: 7)
!5638 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 530, column: 13)
!5639 = !DILocation(line: 550, column: 27, scope: !5637)
!5640 = !DILocation(line: 550, column: 34, scope: !5637)
!5641 = !DILocation(line: 550, column: 37, scope: !5637)
!5642 = !DILocation(line: 550, column: 7, scope: !5638)
!5643 = !DILocation(line: 551, column: 48, scope: !5637)
!5644 = !DILocation(line: 551, column: 53, scope: !5637)
!5645 = !DILocation(line: 551, column: 11, scope: !5637)
!5646 = !DILocation(line: 551, column: 4, scope: !5637)
!5647 = !DILocation(line: 554, column: 3, scope: !5638)
!5648 = !DILocation(line: 557, column: 7, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 557, column: 6)
!5650 = !DILocation(line: 557, column: 6, scope: !5620)
!5651 = !DILocation(line: 558, column: 44, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 558, column: 7)
!5653 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 557, column: 22)
!5654 = !DILocation(line: 558, column: 49, scope: !5652)
!5655 = !DILocation(line: 558, column: 7, scope: !5652)
!5656 = !DILocation(line: 558, column: 7, scope: !5653)
!5657 = !DILocation(line: 560, column: 4, scope: !5652)
!5658 = !DILocation(line: 562, column: 7, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 562, column: 7)
!5660 = !DILocation(line: 562, column: 7, scope: !5653)
!5661 = !DILocation(line: 563, column: 4, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 563, column: 4)
!5663 = !DILocation(line: 563, column: 4, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 563, column: 4)
!5665 = !DILocation(line: 563, column: 4, scope: !5659)
!5666 = !DILocation(line: 568, column: 4, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 568, column: 4)
!5668 = !DILocation(line: 568, column: 4, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 568, column: 4)
!5670 = !DILocation(line: 573, column: 39, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 573, column: 7)
!5672 = !DILocation(line: 573, column: 44, scope: !5671)
!5673 = !DILocation(line: 573, column: 7, scope: !5671)
!5674 = !DILocation(line: 573, column: 7, scope: !5653)
!5675 = !DILocation(line: 576, column: 13, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 574, column: 34)
!5677 = !DILocation(line: 576, column: 18, scope: !5676)
!5678 = !DILocation(line: 575, column: 15, scope: !5676)
!5679 = !DILocation(line: 575, column: 13, scope: !5676)
!5680 = !DILocation(line: 577, column: 8, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 577, column: 8)
!5682 = !DILocation(line: 577, column: 8, scope: !5676)
!5683 = !DILocation(line: 578, column: 5, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 578, column: 5)
!5685 = !DILocation(line: 578, column: 5, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 578, column: 5)
!5687 = !DILocation(line: 578, column: 5, scope: !5681)
!5688 = !DILocation(line: 581, column: 5, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 581, column: 5)
!5690 = !DILocation(line: 581, column: 5, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5689, file: !3, line: 581, column: 5)
!5692 = !DILocation(line: 583, column: 4, scope: !5676)
!5693 = !DILocation(line: 585, column: 2, scope: !5653)
!5694 = !DILocation(line: 593, column: 9, scope: !5620)
!5695 = !DILocation(line: 593, column: 2, scope: !5620)
!5696 = !DILocation(line: 594, column: 1, scope: !5620)
!5697 = !DISubprogram(name: "insert_resource_conflict", scope: !193, file: !193, line: 202, type: !5698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5698 = !DISubroutineType(types: !5699)
!5699 = !{!211, !211, !211}
!5700 = !DISubprogram(name: "pci_mmcfg_arch_map", scope: !188, file: !188, line: 182, type: !5701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5701 = !DISubroutineType(types: !5702)
!5702 = !{!109, !186}
!5703 = !DISubprogram(name: "release_resource", scope: !193, file: !193, line: 197, type: !5704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5704 = !DISubroutineType(types: !5705)
!5705 = !{!109, !211}
!5706 = !DISubprogram(name: "kfree", scope: !153, file: !153, line: 227, type: !5707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5707 = !DISubroutineType(types: !5708)
!5708 = !{null, !2458}
!5709 = distinct !DISubprogram(name: "pci_mmconfig_delete", scope: !3, file: !3, line: 856, type: !5710, scopeLine: 857, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5712)
!5710 = !DISubroutineType(types: !5711)
!5711 = !{!109, !218, !222, !222}
!5712 = !{!5713, !5714, !5715, !5716, !5717, !5720}
!5713 = !DILocalVariable(name: "seg", arg: 1, scope: !5709, file: !3, line: 856, type: !218)
!5714 = !DILocalVariable(name: "start", arg: 2, scope: !5709, file: !3, line: 856, type: !222)
!5715 = !DILocalVariable(name: "end", arg: 3, scope: !5709, file: !3, line: 856, type: !222)
!5716 = !DILocalVariable(name: "cfg", scope: !5709, file: !3, line: 858, type: !186)
!5717 = !DILocalVariable(name: "__mptr", scope: !5718, file: !3, line: 861, type: !176)
!5718 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 861, column: 2)
!5719 = distinct !DILexicalBlock(scope: !5709, file: !3, line: 861, column: 2)
!5720 = !DILocalVariable(name: "__mptr", scope: !5721, file: !3, line: 861, type: !176)
!5721 = distinct !DILexicalBlock(scope: !5722, file: !3, line: 861, column: 2)
!5722 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 861, column: 2)
!5723 = !DILocation(line: 856, column: 29, scope: !5709)
!5724 = !DILocation(line: 856, column: 37, scope: !5709)
!5725 = !DILocation(line: 856, column: 47, scope: !5709)
!5726 = !DILocation(line: 858, column: 2, scope: !5709)
!5727 = !DILocation(line: 858, column: 27, scope: !5709)
!5728 = !DILocation(line: 860, column: 2, scope: !5709)
!5729 = !DILocation(line: 861, column: 2, scope: !5718)
!5730 = !DILocation(line: 861, column: 2, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5718, file: !3, line: 861, column: 2)
!5732 = !DILocation(line: 861, column: 2, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 861, column: 2)
!5734 = !DILocation(line: 861, column: 2, scope: !5719)
!5735 = !DILocation(line: 861, column: 2, scope: !5722)
!5736 = !DILocation(line: 862, column: 7, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5722, file: !3, line: 862, column: 7)
!5738 = !DILocation(line: 862, column: 12, scope: !5737)
!5739 = !DILocation(line: 862, column: 23, scope: !5737)
!5740 = !DILocation(line: 862, column: 20, scope: !5737)
!5741 = !DILocation(line: 862, column: 27, scope: !5737)
!5742 = !DILocation(line: 862, column: 30, scope: !5737)
!5743 = !DILocation(line: 862, column: 35, scope: !5737)
!5744 = !DILocation(line: 862, column: 48, scope: !5737)
!5745 = !DILocation(line: 862, column: 45, scope: !5737)
!5746 = !DILocation(line: 862, column: 54, scope: !5737)
!5747 = !DILocation(line: 863, column: 7, scope: !5737)
!5748 = !DILocation(line: 863, column: 12, scope: !5737)
!5749 = !DILocation(line: 863, column: 23, scope: !5737)
!5750 = !DILocation(line: 863, column: 20, scope: !5737)
!5751 = !DILocation(line: 862, column: 7, scope: !5722)
!5752 = !DILocation(line: 864, column: 18, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 863, column: 28)
!5754 = !DILocation(line: 864, column: 23, scope: !5753)
!5755 = !DILocation(line: 864, column: 4, scope: !5753)
!5756 = !DILocation(line: 865, column: 4, scope: !5753)
!5757 = !DILocation(line: 866, column: 25, scope: !5753)
!5758 = !DILocation(line: 866, column: 4, scope: !5753)
!5759 = !DILocation(line: 867, column: 8, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5753, file: !3, line: 867, column: 8)
!5761 = !DILocation(line: 867, column: 13, scope: !5760)
!5762 = !DILocation(line: 867, column: 17, scope: !5760)
!5763 = !DILocation(line: 867, column: 8, scope: !5753)
!5764 = !DILocation(line: 868, column: 23, scope: !5760)
!5765 = !DILocation(line: 868, column: 28, scope: !5760)
!5766 = !DILocation(line: 868, column: 5, scope: !5760)
!5767 = !DILocation(line: 869, column: 4, scope: !5753)
!5768 = !DILocation(line: 870, column: 10, scope: !5753)
!5769 = !DILocation(line: 870, column: 4, scope: !5753)
!5770 = !DILocation(line: 871, column: 4, scope: !5753)
!5771 = !DILocation(line: 861, column: 2, scope: !5721)
!5772 = !DILocation(line: 861, column: 2, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 861, column: 2)
!5774 = !DILocation(line: 861, column: 2, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 861, column: 2)
!5776 = distinct !{!5776, !5734, !5777, !714, !715}
!5777 = !DILocation(line: 872, column: 3, scope: !5719)
!5778 = !DILocation(line: 873, column: 2, scope: !5709)
!5779 = !DILocation(line: 875, column: 2, scope: !5709)
!5780 = !DILocation(line: 876, column: 1, scope: !5709)
!5781 = distinct !DISubprogram(name: "list_del_rcu", scope: !5782, file: !5782, line: 155, type: !5783, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5785)
!5782 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!5783 = !DISubroutineType(types: !5784)
!5784 = !{null, !180}
!5785 = !{!5786}
!5786 = !DILocalVariable(name: "entry", arg: 1, scope: !5781, file: !5782, line: 155, type: !180)
!5787 = !DILocation(line: 155, column: 51, scope: !5781)
!5788 = !DILocation(line: 157, column: 19, scope: !5781)
!5789 = !DILocation(line: 157, column: 2, scope: !5781)
!5790 = !DILocation(line: 158, column: 2, scope: !5781)
!5791 = !DILocation(line: 158, column: 9, scope: !5781)
!5792 = !DILocation(line: 158, column: 14, scope: !5781)
!5793 = !DILocation(line: 159, column: 1, scope: !5781)
!5794 = !DISubprogram(name: "synchronize_rcu", scope: !5795, file: !5795, line: 45, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5795 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!5796 = !DISubprogram(name: "pci_mmcfg_arch_unmap", scope: !188, file: !188, line: 183, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5797 = distinct !DISubprogram(name: "kzalloc", scope: !153, file: !153, line: 719, type: !5798, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5800)
!5798 = !DISubroutineType(types: !5799)
!5799 = !{!176, !1206, !230}
!5800 = !{!5801, !5802}
!5801 = !DILocalVariable(name: "size", arg: 1, scope: !5797, file: !153, line: 719, type: !1206)
!5802 = !DILocalVariable(name: "flags", arg: 2, scope: !5797, file: !153, line: 719, type: !230)
!5803 = !DILocation(line: 719, column: 52, scope: !5797)
!5804 = !DILocation(line: 719, column: 64, scope: !5797)
!5805 = !DILocation(line: 721, column: 17, scope: !5797)
!5806 = !DILocation(line: 721, column: 23, scope: !5797)
!5807 = !DILocation(line: 721, column: 29, scope: !5797)
!5808 = !DILocation(line: 721, column: 9, scope: !5797)
!5809 = !DILocation(line: 721, column: 2, scope: !5797)
!5810 = !DISubprogram(name: "snprintf", scope: !5811, file: !5811, line: 12, type: !5812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5811 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5812 = !DISubroutineType(types: !5813)
!5813 = !{!109, !216, !1206, !205, null}
!5814 = distinct !DISubprogram(name: "kmalloc", scope: !153, file: !153, line: 591, type: !5798, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5815)
!5815 = !{!5816, !5817, !5818}
!5816 = !DILocalVariable(name: "size", arg: 1, scope: !5814, file: !153, line: 591, type: !1206)
!5817 = !DILocalVariable(name: "flags", arg: 2, scope: !5814, file: !153, line: 591, type: !230)
!5818 = !DILocalVariable(name: "index", scope: !5819, file: !153, line: 594, type: !7)
!5819 = distinct !DILexicalBlock(scope: !5820, file: !153, line: 593, column: 42)
!5820 = distinct !DILexicalBlock(scope: !5814, file: !153, line: 593, column: 6)
!5821 = !DILocation(line: 591, column: 61, scope: !5814)
!5822 = !DILocation(line: 591, column: 73, scope: !5814)
!5823 = !DILocation(line: 593, column: 27, scope: !5820)
!5824 = !DILocation(line: 593, column: 6, scope: !5820)
!5825 = !DILocation(line: 593, column: 33, scope: !5820)
!5826 = !DILocation(line: 593, column: 36, scope: !5820)
!5827 = !DILocation(line: 593, column: 6, scope: !5814)
!5828 = !DILocation(line: 594, column: 3, scope: !5819)
!5829 = !DILocation(line: 594, column: 16, scope: !5819)
!5830 = !DILocation(line: 596, column: 7, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5819, file: !153, line: 596, column: 7)
!5832 = !DILocation(line: 596, column: 12, scope: !5831)
!5833 = !DILocation(line: 596, column: 7, scope: !5819)
!5834 = !DILocation(line: 597, column: 25, scope: !5831)
!5835 = !DILocation(line: 597, column: 31, scope: !5831)
!5836 = !DILocation(line: 597, column: 11, scope: !5831)
!5837 = !DILocation(line: 597, column: 4, scope: !5831)
!5838 = !DILocation(line: 599, column: 11, scope: !5819)
!5839 = !DILocation(line: 599, column: 9, scope: !5819)
!5840 = !DILocation(line: 601, column: 33, scope: !5819)
!5841 = !DILocation(line: 601, column: 40, scope: !5819)
!5842 = !DILocation(line: 601, column: 20, scope: !5819)
!5843 = !DILocation(line: 601, column: 5, scope: !5819)
!5844 = !DILocation(line: 601, column: 51, scope: !5819)
!5845 = !DILocation(line: 602, column: 5, scope: !5819)
!5846 = !DILocation(line: 602, column: 12, scope: !5819)
!5847 = !DILocation(line: 600, column: 10, scope: !5819)
!5848 = !DILocation(line: 600, column: 3, scope: !5819)
!5849 = !DILocation(line: 603, column: 2, scope: !5820)
!5850 = !DILocation(line: 604, column: 19, scope: !5814)
!5851 = !DILocation(line: 604, column: 25, scope: !5814)
!5852 = !DILocation(line: 604, column: 9, scope: !5814)
!5853 = !DILocation(line: 604, column: 2, scope: !5814)
!5854 = !DILocation(line: 605, column: 1, scope: !5814)
!5855 = !DISubprogram(name: "kmalloc_large", scope: !153, file: !153, line: 531, type: !5798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5856 = distinct !DISubprogram(name: "__kmalloc_index", scope: !153, file: !153, line: 444, type: !5857, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5859)
!5857 = !DISubroutineType(types: !5858)
!5858 = !{!7, !1206, !321}
!5859 = !{!5860, !5861}
!5860 = !DILocalVariable(name: "size", arg: 1, scope: !5856, file: !153, line: 444, type: !1206)
!5861 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5856, file: !153, line: 445, type: !321)
!5862 = !DILocation(line: 444, column: 60, scope: !5856)
!5863 = !DILocation(line: 445, column: 16, scope: !5856)
!5864 = !DILocation(line: 447, column: 7, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 447, column: 6)
!5866 = !DILocation(line: 447, column: 6, scope: !5856)
!5867 = !DILocation(line: 448, column: 3, scope: !5865)
!5868 = !DILocation(line: 450, column: 6, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 450, column: 6)
!5870 = !DILocation(line: 450, column: 11, scope: !5869)
!5871 = !DILocation(line: 450, column: 6, scope: !5856)
!5872 = !DILocation(line: 451, column: 3, scope: !5869)
!5873 = !DILocation(line: 453, column: 32, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 453, column: 6)
!5875 = !DILocation(line: 453, column: 37, scope: !5874)
!5876 = !DILocation(line: 453, column: 42, scope: !5874)
!5877 = !DILocation(line: 453, column: 45, scope: !5874)
!5878 = !DILocation(line: 453, column: 50, scope: !5874)
!5879 = !DILocation(line: 453, column: 6, scope: !5856)
!5880 = !DILocation(line: 454, column: 3, scope: !5874)
!5881 = !DILocation(line: 455, column: 32, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 455, column: 6)
!5883 = !DILocation(line: 455, column: 37, scope: !5882)
!5884 = !DILocation(line: 455, column: 43, scope: !5882)
!5885 = !DILocation(line: 455, column: 46, scope: !5882)
!5886 = !DILocation(line: 455, column: 51, scope: !5882)
!5887 = !DILocation(line: 455, column: 6, scope: !5856)
!5888 = !DILocation(line: 456, column: 3, scope: !5882)
!5889 = !DILocation(line: 457, column: 6, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 457, column: 6)
!5891 = !DILocation(line: 457, column: 11, scope: !5890)
!5892 = !DILocation(line: 457, column: 6, scope: !5856)
!5893 = !DILocation(line: 457, column: 26, scope: !5890)
!5894 = !DILocation(line: 458, column: 6, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 458, column: 6)
!5896 = !DILocation(line: 458, column: 11, scope: !5895)
!5897 = !DILocation(line: 458, column: 6, scope: !5856)
!5898 = !DILocation(line: 458, column: 26, scope: !5895)
!5899 = !DILocation(line: 459, column: 6, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 459, column: 6)
!5901 = !DILocation(line: 459, column: 11, scope: !5900)
!5902 = !DILocation(line: 459, column: 6, scope: !5856)
!5903 = !DILocation(line: 459, column: 26, scope: !5900)
!5904 = !DILocation(line: 460, column: 6, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 460, column: 6)
!5906 = !DILocation(line: 460, column: 11, scope: !5905)
!5907 = !DILocation(line: 460, column: 6, scope: !5856)
!5908 = !DILocation(line: 460, column: 26, scope: !5905)
!5909 = !DILocation(line: 461, column: 6, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 461, column: 6)
!5911 = !DILocation(line: 461, column: 11, scope: !5910)
!5912 = !DILocation(line: 461, column: 6, scope: !5856)
!5913 = !DILocation(line: 461, column: 26, scope: !5910)
!5914 = !DILocation(line: 462, column: 6, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 462, column: 6)
!5916 = !DILocation(line: 462, column: 11, scope: !5915)
!5917 = !DILocation(line: 462, column: 6, scope: !5856)
!5918 = !DILocation(line: 462, column: 26, scope: !5915)
!5919 = !DILocation(line: 463, column: 6, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 463, column: 6)
!5921 = !DILocation(line: 463, column: 11, scope: !5920)
!5922 = !DILocation(line: 463, column: 6, scope: !5856)
!5923 = !DILocation(line: 463, column: 26, scope: !5920)
!5924 = !DILocation(line: 464, column: 6, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 464, column: 6)
!5926 = !DILocation(line: 464, column: 11, scope: !5925)
!5927 = !DILocation(line: 464, column: 6, scope: !5856)
!5928 = !DILocation(line: 464, column: 26, scope: !5925)
!5929 = !DILocation(line: 465, column: 6, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 465, column: 6)
!5931 = !DILocation(line: 465, column: 11, scope: !5930)
!5932 = !DILocation(line: 465, column: 6, scope: !5856)
!5933 = !DILocation(line: 465, column: 26, scope: !5930)
!5934 = !DILocation(line: 466, column: 6, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 466, column: 6)
!5936 = !DILocation(line: 466, column: 11, scope: !5935)
!5937 = !DILocation(line: 466, column: 6, scope: !5856)
!5938 = !DILocation(line: 466, column: 26, scope: !5935)
!5939 = !DILocation(line: 467, column: 6, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 467, column: 6)
!5941 = !DILocation(line: 467, column: 11, scope: !5940)
!5942 = !DILocation(line: 467, column: 6, scope: !5856)
!5943 = !DILocation(line: 467, column: 26, scope: !5940)
!5944 = !DILocation(line: 468, column: 6, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 468, column: 6)
!5946 = !DILocation(line: 468, column: 11, scope: !5945)
!5947 = !DILocation(line: 468, column: 6, scope: !5856)
!5948 = !DILocation(line: 468, column: 26, scope: !5945)
!5949 = !DILocation(line: 469, column: 6, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 469, column: 6)
!5951 = !DILocation(line: 469, column: 11, scope: !5950)
!5952 = !DILocation(line: 469, column: 6, scope: !5856)
!5953 = !DILocation(line: 469, column: 26, scope: !5950)
!5954 = !DILocation(line: 470, column: 6, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 470, column: 6)
!5956 = !DILocation(line: 470, column: 11, scope: !5955)
!5957 = !DILocation(line: 470, column: 6, scope: !5856)
!5958 = !DILocation(line: 470, column: 26, scope: !5955)
!5959 = !DILocation(line: 471, column: 6, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 471, column: 6)
!5961 = !DILocation(line: 471, column: 11, scope: !5960)
!5962 = !DILocation(line: 471, column: 6, scope: !5856)
!5963 = !DILocation(line: 471, column: 26, scope: !5960)
!5964 = !DILocation(line: 472, column: 6, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 472, column: 6)
!5966 = !DILocation(line: 472, column: 11, scope: !5965)
!5967 = !DILocation(line: 472, column: 6, scope: !5856)
!5968 = !DILocation(line: 472, column: 26, scope: !5965)
!5969 = !DILocation(line: 473, column: 6, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 473, column: 6)
!5971 = !DILocation(line: 473, column: 11, scope: !5970)
!5972 = !DILocation(line: 473, column: 6, scope: !5856)
!5973 = !DILocation(line: 473, column: 26, scope: !5970)
!5974 = !DILocation(line: 474, column: 6, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 474, column: 6)
!5976 = !DILocation(line: 474, column: 11, scope: !5975)
!5977 = !DILocation(line: 474, column: 6, scope: !5856)
!5978 = !DILocation(line: 474, column: 27, scope: !5975)
!5979 = !DILocation(line: 475, column: 6, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 475, column: 6)
!5981 = !DILocation(line: 475, column: 11, scope: !5980)
!5982 = !DILocation(line: 475, column: 6, scope: !5856)
!5983 = !DILocation(line: 475, column: 32, scope: !5980)
!5984 = !DILocation(line: 477, column: 50, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5856, file: !153, line: 477, column: 6)
!5986 = !DILocation(line: 477, column: 6, scope: !5856)
!5987 = !DILocation(line: 478, column: 3, scope: !5985)
!5988 = !DILocation(line: 478, column: 3, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5990, file: !153, line: 478, column: 3)
!5990 = distinct !DILexicalBlock(scope: !5985, file: !153, line: 478, column: 3)
!5991 = !{i32 -2143448491}
!5992 = !DILocation(line: 478, column: 3, scope: !5990)
!5993 = !DILocation(line: 480, column: 3, scope: !5985)
!5994 = !DILocation(line: 480, column: 3, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5985, file: !153, line: 480, column: 3)
!5996 = !DILocation(line: 480, column: 3, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5995, file: !153, line: 480, column: 3)
!5998 = !DILocation(line: 480, column: 3, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5995, file: !153, line: 480, column: 3)
!6000 = !{i64 2151519008, i64 2151519037, i64 2151519083, i64 2151519141, i64 2151519195, i64 2151519249, i64 2151519304, i64 2151519335}
!6001 = !DILocation(line: 483, column: 2, scope: !5856)
!6002 = !DILocation(line: 484, column: 1, scope: !5856)
!6003 = !DISubprogram(name: "kmalloc_trace", scope: !153, file: !153, line: 525, type: !6004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6004 = !DISubroutineType(types: !6005)
!6005 = !{!176, !6006, !230, !1206}
!6006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6007, size: 64)
!6007 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6008, line: 11, flags: DIFlagFwdDecl)
!6008 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6009 = distinct !DISubprogram(name: "kmalloc_type", scope: !153, file: !153, line: 401, type: !6010, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6012)
!6010 = !DISubroutineType(types: !6011)
!6011 = !{!152, !230, !175}
!6012 = !{!6013, !6014}
!6013 = !DILocalVariable(name: "flags", arg: 1, scope: !6009, file: !153, line: 401, type: !230)
!6014 = !DILocalVariable(name: "caller", arg: 2, scope: !6009, file: !153, line: 401, type: !175)
!6015 = !DILocation(line: 401, column: 67, scope: !6009)
!6016 = !DILocation(line: 401, column: 88, scope: !6009)
!6017 = !DILocation(line: 407, column: 6, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !6009, file: !153, line: 407, column: 6)
!6019 = !DILocation(line: 407, column: 6, scope: !6009)
!6020 = !DILocation(line: 413, column: 3, scope: !6018)
!6021 = !DILocation(line: 423, column: 38, scope: !6022)
!6022 = distinct !DILexicalBlock(scope: !6009, file: !153, line: 423, column: 6)
!6023 = !DILocation(line: 423, column: 44, scope: !6022)
!6024 = !DILocation(line: 423, column: 6, scope: !6009)
!6025 = !DILocation(line: 424, column: 3, scope: !6022)
!6026 = !DILocation(line: 426, column: 3, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6009, file: !153, line: 425, column: 6)
!6028 = !DILocation(line: 429, column: 1, scope: !6009)
!6029 = !DISubprogram(name: "__kmalloc", scope: !153, file: !153, line: 488, type: !5798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6030 = !DISubprogram(name: "__compiletime_assert_125", scope: !153, file: !153, line: 478, type: !777, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6031 = distinct !DISubprogram(name: "list_add_tail_rcu", scope: !5782, file: !5782, line: 125, type: !6032, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6034)
!6032 = !DISubroutineType(types: !6033)
!6033 = !{null, !180, !180}
!6034 = !{!6035, !6036}
!6035 = !DILocalVariable(name: "new", arg: 1, scope: !6031, file: !5782, line: 125, type: !180)
!6036 = !DILocalVariable(name: "head", arg: 2, scope: !6031, file: !5782, line: 126, type: !180)
!6037 = !DILocation(line: 125, column: 56, scope: !6031)
!6038 = !DILocation(line: 126, column: 24, scope: !6031)
!6039 = !DILocation(line: 128, column: 17, scope: !6031)
!6040 = !DILocation(line: 128, column: 22, scope: !6031)
!6041 = !DILocation(line: 128, column: 28, scope: !6031)
!6042 = !DILocation(line: 128, column: 34, scope: !6031)
!6043 = !DILocation(line: 128, column: 2, scope: !6031)
!6044 = !DILocation(line: 129, column: 1, scope: !6031)
!6045 = distinct !DISubprogram(name: "__list_add_rcu", scope: !5782, file: !5782, line: 76, type: !6046, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6048)
!6046 = !DISubroutineType(types: !6047)
!6047 = !{null, !180, !180, !180}
!6048 = !{!6049, !6050, !6051, !6052}
!6049 = !DILocalVariable(name: "new", arg: 1, scope: !6045, file: !5782, line: 76, type: !180)
!6050 = !DILocalVariable(name: "prev", arg: 2, scope: !6045, file: !5782, line: 77, type: !180)
!6051 = !DILocalVariable(name: "next", arg: 3, scope: !6045, file: !5782, line: 77, type: !180)
!6052 = !DILocalVariable(name: "_r_a_p__v", scope: !6053, file: !5782, line: 84, type: !231)
!6053 = distinct !DILexicalBlock(scope: !6045, file: !5782, line: 84, column: 2)
!6054 = !DILocation(line: 76, column: 53, scope: !6045)
!6055 = !DILocation(line: 77, column: 21, scope: !6045)
!6056 = !DILocation(line: 77, column: 45, scope: !6045)
!6057 = !DILocation(line: 79, column: 24, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6045, file: !5782, line: 79, column: 6)
!6059 = !DILocation(line: 79, column: 29, scope: !6058)
!6060 = !DILocation(line: 79, column: 35, scope: !6058)
!6061 = !DILocation(line: 79, column: 7, scope: !6058)
!6062 = !DILocation(line: 79, column: 6, scope: !6045)
!6063 = !DILocation(line: 80, column: 3, scope: !6058)
!6064 = !DILocation(line: 82, column: 14, scope: !6045)
!6065 = !DILocation(line: 82, column: 2, scope: !6045)
!6066 = !DILocation(line: 82, column: 7, scope: !6045)
!6067 = !DILocation(line: 82, column: 12, scope: !6045)
!6068 = !DILocation(line: 83, column: 14, scope: !6045)
!6069 = !DILocation(line: 83, column: 2, scope: !6045)
!6070 = !DILocation(line: 83, column: 7, scope: !6045)
!6071 = !DILocation(line: 83, column: 12, scope: !6045)
!6072 = !DILocation(line: 84, column: 2, scope: !6045)
!6073 = !DILocation(line: 84, column: 2, scope: !6053)
!6074 = !DILocation(line: 84, column: 2, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6053, file: !5782, line: 84, column: 2)
!6076 = !DILocation(line: 84, column: 2, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6075, file: !5782, line: 84, column: 2)
!6078 = !DILocation(line: 84, column: 2, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6077, file: !5782, line: 84, column: 2)
!6080 = !DILocation(line: 84, column: 2, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6077, file: !5782, line: 84, column: 2)
!6082 = !DILocation(line: 84, column: 2, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6075, file: !5782, line: 84, column: 2)
!6084 = !DILocation(line: 84, column: 2, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6083, file: !5782, line: 84, column: 2)
!6086 = !DILocation(line: 84, column: 2, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6083, file: !5782, line: 84, column: 2)
!6088 = !DILocation(line: 84, column: 2, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6087, file: !5782, line: 84, column: 2)
!6090 = !{i64 2151710862}
!6091 = !DILocation(line: 84, column: 2, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6087, file: !5782, line: 84, column: 2)
!6093 = !DILocation(line: 84, column: 2, scope: !6094)
!6094 = distinct !DILexicalBlock(scope: !6092, file: !5782, line: 84, column: 2)
!6095 = !DILocation(line: 84, column: 2, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6092, file: !5782, line: 84, column: 2)
!6097 = !DILocation(line: 85, column: 15, scope: !6045)
!6098 = !DILocation(line: 85, column: 2, scope: !6045)
!6099 = !DILocation(line: 85, column: 8, scope: !6045)
!6100 = !DILocation(line: 85, column: 13, scope: !6045)
!6101 = !DILocation(line: 86, column: 1, scope: !6045)
!6102 = distinct !DISubprogram(name: "__list_add_valid", scope: !6103, file: !6103, line: 128, type: !6104, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6106)
!6103 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6104 = !DISubroutineType(types: !6105)
!6105 = !{!321, !180, !180, !180}
!6106 = !{!6107, !6108, !6109}
!6107 = !DILocalVariable(name: "new", arg: 1, scope: !6102, file: !6103, line: 128, type: !180)
!6108 = !DILocalVariable(name: "prev", arg: 2, scope: !6102, file: !6103, line: 129, type: !180)
!6109 = !DILocalVariable(name: "next", arg: 3, scope: !6102, file: !6103, line: 130, type: !180)
!6110 = !DILocation(line: 128, column: 55, scope: !6102)
!6111 = !DILocation(line: 129, column: 23, scope: !6102)
!6112 = !DILocation(line: 130, column: 23, scope: !6102)
!6113 = !DILocation(line: 132, column: 2, scope: !6102)
!6114 = distinct !DISubprogram(name: "free_all_mmcfg", scope: !3, file: !3, line: 45, type: !777, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6115)
!6115 = !{!6116, !6117, !6118, !6121, !6123}
!6116 = !DILocalVariable(name: "cfg", scope: !6114, file: !3, line: 47, type: !186)
!6117 = !DILocalVariable(name: "tmp", scope: !6114, file: !3, line: 47, type: !186)
!6118 = !DILocalVariable(name: "__mptr", scope: !6119, file: !3, line: 50, type: !176)
!6119 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 50, column: 2)
!6120 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 50, column: 2)
!6121 = !DILocalVariable(name: "__mptr", scope: !6122, file: !3, line: 50, type: !176)
!6122 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 50, column: 2)
!6123 = !DILocalVariable(name: "__mptr", scope: !6124, file: !3, line: 50, type: !176)
!6124 = distinct !DILexicalBlock(scope: !6125, file: !3, line: 50, column: 2)
!6125 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 50, column: 2)
!6126 = !DILocation(line: 47, column: 2, scope: !6114)
!6127 = !DILocation(line: 47, column: 27, scope: !6114)
!6128 = !DILocation(line: 47, column: 33, scope: !6114)
!6129 = !DILocation(line: 49, column: 2, scope: !6114)
!6130 = !DILocation(line: 50, column: 2, scope: !6119)
!6131 = !DILocation(line: 50, column: 2, scope: !6120)
!6132 = !DILocation(line: 50, column: 2, scope: !6122)
!6133 = !DILocation(line: 50, column: 2, scope: !6125)
!6134 = !DILocation(line: 51, column: 23, scope: !6125)
!6135 = !DILocation(line: 51, column: 3, scope: !6125)
!6136 = !DILocation(line: 50, column: 2, scope: !6124)
!6137 = distinct !{!6137, !6131, !6138, !714, !715}
!6138 = !DILocation(line: 51, column: 26, scope: !6120)
!6139 = !DILocation(line: 52, column: 1, scope: !6114)
!6140 = distinct !DISubprogram(name: "pci_mmcfg_check_end_bus_number", scope: !3, file: !3, line: 325, type: !777, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6141)
!6141 = !{!6142, !6143, !6144, !6147, !6151}
!6142 = !DILocalVariable(name: "cfg", scope: !6140, file: !3, line: 327, type: !186)
!6143 = !DILocalVariable(name: "cfgx", scope: !6140, file: !3, line: 327, type: !186)
!6144 = !DILocalVariable(name: "__mptr", scope: !6145, file: !3, line: 330, type: !176)
!6145 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 330, column: 2)
!6146 = distinct !DILexicalBlock(scope: !6140, file: !3, line: 330, column: 2)
!6147 = !DILocalVariable(name: "__mptr", scope: !6148, file: !3, line: 338, type: !176)
!6148 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 338, column: 10)
!6149 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 330, column: 50)
!6150 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 330, column: 2)
!6151 = !DILocalVariable(name: "__mptr", scope: !6152, file: !3, line: 330, type: !176)
!6152 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 330, column: 2)
!6153 = !DILocation(line: 327, column: 2, scope: !6140)
!6154 = !DILocation(line: 327, column: 27, scope: !6140)
!6155 = !DILocation(line: 327, column: 33, scope: !6140)
!6156 = !DILocation(line: 330, column: 2, scope: !6145)
!6157 = !DILocation(line: 330, column: 2, scope: !6146)
!6158 = !DILocation(line: 330, column: 2, scope: !6150)
!6159 = !DILocation(line: 331, column: 7, scope: !6160)
!6160 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 331, column: 7)
!6161 = !DILocation(line: 331, column: 12, scope: !6160)
!6162 = !DILocation(line: 331, column: 22, scope: !6160)
!6163 = !DILocation(line: 331, column: 27, scope: !6160)
!6164 = !DILocation(line: 331, column: 20, scope: !6160)
!6165 = !DILocation(line: 331, column: 7, scope: !6149)
!6166 = !DILocation(line: 332, column: 4, scope: !6160)
!6167 = !DILocation(line: 332, column: 9, scope: !6160)
!6168 = !DILocation(line: 332, column: 17, scope: !6160)
!6169 = !DILocation(line: 335, column: 7, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 335, column: 7)
!6171 = !DILocation(line: 335, column: 12, scope: !6170)
!6172 = !DILocation(line: 335, column: 17, scope: !6170)
!6173 = !DILocation(line: 335, column: 22, scope: !6170)
!6174 = !DILocation(line: 335, column: 7, scope: !6149)
!6175 = !DILocation(line: 336, column: 4, scope: !6170)
!6176 = !DILocation(line: 338, column: 10, scope: !6148)
!6177 = !DILocation(line: 338, column: 10, scope: !6149)
!6178 = !DILocation(line: 338, column: 8, scope: !6149)
!6179 = !DILocation(line: 339, column: 7, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 339, column: 7)
!6181 = !DILocation(line: 339, column: 12, scope: !6180)
!6182 = !DILocation(line: 339, column: 23, scope: !6180)
!6183 = !DILocation(line: 339, column: 29, scope: !6180)
!6184 = !DILocation(line: 339, column: 20, scope: !6180)
!6185 = !DILocation(line: 339, column: 7, scope: !6149)
!6186 = !DILocation(line: 340, column: 19, scope: !6180)
!6187 = !DILocation(line: 340, column: 25, scope: !6180)
!6188 = !DILocation(line: 340, column: 35, scope: !6180)
!6189 = !DILocation(line: 340, column: 4, scope: !6180)
!6190 = !DILocation(line: 340, column: 9, scope: !6180)
!6191 = !DILocation(line: 340, column: 17, scope: !6180)
!6192 = !DILocation(line: 341, column: 2, scope: !6149)
!6193 = !DILocation(line: 330, column: 2, scope: !6152)
!6194 = distinct !{!6194, !6157, !6195, !714, !715}
!6195 = !DILocation(line: 341, column: 2, scope: !6146)
!6196 = !DILocation(line: 342, column: 1, scope: !6140)
!6197 = distinct !DISubprogram(name: "list_empty", scope: !6103, file: !6103, line: 371, type: !6198, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6202)
!6198 = !DISubroutineType(types: !6199)
!6199 = !{!109, !6200}
!6200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6201, size: 64)
!6201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!6202 = !{!6203}
!6203 = !DILocalVariable(name: "head", arg: 1, scope: !6197, file: !6103, line: 371, type: !6200)
!6204 = !DILocation(line: 371, column: 54, scope: !6197)
!6205 = !DILocation(line: 373, column: 9, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6197, file: !6103, line: 373, column: 9)
!6207 = !DILocation(line: 373, column: 9, scope: !6208)
!6208 = distinct !DILexicalBlock(scope: !6206, file: !6103, line: 373, column: 9)
!6209 = !DILocation(line: 373, column: 34, scope: !6197)
!6210 = !DILocation(line: 373, column: 31, scope: !6197)
!6211 = !DILocation(line: 373, column: 2, scope: !6197)
!6212 = !DISubprogram(name: "pci_mmcfg_arch_free", scope: !188, file: !188, line: 181, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6213 = distinct !DISubprogram(name: "pci_mmconfig_remove", scope: !3, file: !3, line: 37, type: !658, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6214)
!6214 = !{!6215}
!6215 = !DILocalVariable(name: "cfg", arg: 1, scope: !6213, file: !3, line: 37, type: !186)
!6216 = !DILocation(line: 37, column: 65, scope: !6213)
!6217 = !DILocation(line: 39, column: 6, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6213, file: !3, line: 39, column: 6)
!6219 = !DILocation(line: 39, column: 11, scope: !6218)
!6220 = !DILocation(line: 39, column: 15, scope: !6218)
!6221 = !DILocation(line: 39, column: 6, scope: !6213)
!6222 = !DILocation(line: 40, column: 21, scope: !6218)
!6223 = !DILocation(line: 40, column: 26, scope: !6218)
!6224 = !DILocation(line: 40, column: 3, scope: !6218)
!6225 = !DILocation(line: 41, column: 12, scope: !6213)
!6226 = !DILocation(line: 41, column: 17, scope: !6213)
!6227 = !DILocation(line: 41, column: 2, scope: !6213)
!6228 = !DILocation(line: 42, column: 8, scope: !6213)
!6229 = !DILocation(line: 42, column: 2, scope: !6213)
!6230 = !DILocation(line: 43, column: 1, scope: !6213)
!6231 = distinct !DISubprogram(name: "list_del", scope: !6103, file: !6103, line: 227, type: !5783, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6232)
!6232 = !{!6233}
!6233 = !DILocalVariable(name: "entry", arg: 1, scope: !6231, file: !6103, line: 227, type: !180)
!6234 = !DILocation(line: 227, column: 47, scope: !6231)
!6235 = !DILocation(line: 229, column: 19, scope: !6231)
!6236 = !DILocation(line: 229, column: 2, scope: !6231)
!6237 = !DILocation(line: 230, column: 2, scope: !6231)
!6238 = !DILocation(line: 230, column: 9, scope: !6231)
!6239 = !DILocation(line: 230, column: 14, scope: !6231)
!6240 = !DILocation(line: 231, column: 2, scope: !6231)
!6241 = !DILocation(line: 231, column: 9, scope: !6231)
!6242 = !DILocation(line: 231, column: 14, scope: !6231)
!6243 = !DILocation(line: 232, column: 1, scope: !6231)
!6244 = distinct !DISubprogram(name: "__list_del_entry", scope: !6103, file: !6103, line: 213, type: !5783, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6245)
!6245 = !{!6246}
!6246 = !DILocalVariable(name: "entry", arg: 1, scope: !6244, file: !6103, line: 213, type: !180)
!6247 = !DILocation(line: 213, column: 55, scope: !6244)
!6248 = !DILocation(line: 215, column: 30, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6244, file: !6103, line: 215, column: 6)
!6250 = !DILocation(line: 215, column: 7, scope: !6249)
!6251 = !DILocation(line: 215, column: 6, scope: !6244)
!6252 = !DILocation(line: 216, column: 3, scope: !6249)
!6253 = !DILocation(line: 218, column: 13, scope: !6244)
!6254 = !DILocation(line: 218, column: 20, scope: !6244)
!6255 = !DILocation(line: 218, column: 26, scope: !6244)
!6256 = !DILocation(line: 218, column: 33, scope: !6244)
!6257 = !DILocation(line: 218, column: 2, scope: !6244)
!6258 = !DILocation(line: 219, column: 1, scope: !6244)
!6259 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6103, file: !6103, line: 134, type: !6260, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6262)
!6260 = !DISubroutineType(types: !6261)
!6261 = !{!321, !180}
!6262 = !{!6263}
!6263 = !DILocalVariable(name: "entry", arg: 1, scope: !6259, file: !6103, line: 134, type: !180)
!6264 = !DILocation(line: 134, column: 61, scope: !6259)
!6265 = !DILocation(line: 136, column: 2, scope: !6259)
!6266 = distinct !DISubprogram(name: "__list_del", scope: !6103, file: !6103, line: 193, type: !6032, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6267)
!6267 = !{!6268, !6269}
!6268 = !DILocalVariable(name: "prev", arg: 1, scope: !6266, file: !6103, line: 193, type: !180)
!6269 = !DILocalVariable(name: "next", arg: 2, scope: !6266, file: !6103, line: 193, type: !180)
!6270 = !DILocation(line: 193, column: 50, scope: !6266)
!6271 = !DILocation(line: 193, column: 75, scope: !6266)
!6272 = !DILocation(line: 195, column: 15, scope: !6266)
!6273 = !DILocation(line: 195, column: 2, scope: !6266)
!6274 = !DILocation(line: 195, column: 8, scope: !6266)
!6275 = !DILocation(line: 195, column: 13, scope: !6266)
!6276 = !DILocation(line: 196, column: 2, scope: !6266)
!6277 = !DILocation(line: 196, column: 2, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6266, file: !6103, line: 196, column: 2)
!6279 = !DILocation(line: 196, column: 2, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6278, file: !6103, line: 196, column: 2)
!6281 = !DILocation(line: 196, column: 2, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6278, file: !6103, line: 196, column: 2)
!6283 = !DILocation(line: 197, column: 1, scope: !6266)
!6284 = distinct !DISubprogram(name: "pci_mmcfg_e7520", scope: !3, file: !3, line: 131, type: !403, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6285)
!6285 = !{!6286}
!6286 = !DILocalVariable(name: "win", scope: !6284, file: !3, line: 133, type: !234)
!6287 = !DILocation(line: 133, column: 2, scope: !6284)
!6288 = !DILocation(line: 133, column: 6, scope: !6284)
!6289 = !DILocation(line: 134, column: 2, scope: !6284)
!6290 = !DILocation(line: 134, column: 15, scope: !6284)
!6291 = !DILocation(line: 136, column: 8, scope: !6284)
!6292 = !DILocation(line: 136, column: 12, scope: !6284)
!6293 = !DILocation(line: 136, column: 6, scope: !6284)
!6294 = !DILocation(line: 137, column: 6, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6284, file: !3, line: 137, column: 6)
!6296 = !DILocation(line: 137, column: 10, scope: !6295)
!6297 = !DILocation(line: 137, column: 20, scope: !6295)
!6298 = !DILocation(line: 137, column: 23, scope: !6295)
!6299 = !DILocation(line: 137, column: 27, scope: !6295)
!6300 = !DILocation(line: 137, column: 6, scope: !6284)
!6301 = !DILocation(line: 138, column: 3, scope: !6295)
!6302 = !DILocation(line: 140, column: 34, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6284, file: !3, line: 140, column: 6)
!6304 = !DILocation(line: 140, column: 38, scope: !6303)
!6305 = !DILocation(line: 140, column: 6, scope: !6303)
!6306 = !DILocation(line: 140, column: 45, scope: !6303)
!6307 = !DILocation(line: 140, column: 6, scope: !6284)
!6308 = !DILocation(line: 141, column: 3, scope: !6303)
!6309 = !DILocation(line: 143, column: 2, scope: !6284)
!6310 = !DILocation(line: 144, column: 1, scope: !6284)
!6311 = distinct !DISubprogram(name: "pci_mmcfg_intel_945", scope: !3, file: !3, line: 146, type: !403, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6312)
!6312 = !{!6313, !6314, !6315}
!6313 = !DILocalVariable(name: "pciexbar", scope: !6311, file: !3, line: 148, type: !234)
!6314 = !DILocalVariable(name: "mask", scope: !6311, file: !3, line: 148, type: !234)
!6315 = !DILocalVariable(name: "len", scope: !6311, file: !3, line: 148, type: !234)
!6316 = !DILocation(line: 148, column: 2, scope: !6311)
!6317 = !DILocation(line: 148, column: 6, scope: !6311)
!6318 = !DILocation(line: 148, column: 16, scope: !6311)
!6319 = !DILocation(line: 148, column: 26, scope: !6311)
!6320 = !DILocation(line: 150, column: 2, scope: !6311)
!6321 = !DILocation(line: 150, column: 15, scope: !6311)
!6322 = !DILocation(line: 153, column: 8, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 153, column: 6)
!6324 = !DILocation(line: 153, column: 17, scope: !6323)
!6325 = !DILocation(line: 153, column: 6, scope: !6311)
!6326 = !DILocation(line: 154, column: 3, scope: !6323)
!6327 = !DILocation(line: 157, column: 11, scope: !6311)
!6328 = !DILocation(line: 157, column: 20, scope: !6311)
!6329 = !DILocation(line: 157, column: 26, scope: !6311)
!6330 = !DILocation(line: 157, column: 2, scope: !6311)
!6331 = !DILocation(line: 159, column: 8, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 157, column: 31)
!6333 = !DILocation(line: 160, column: 8, scope: !6332)
!6334 = !DILocation(line: 161, column: 3, scope: !6332)
!6335 = !DILocation(line: 163, column: 8, scope: !6332)
!6336 = !DILocation(line: 164, column: 8, scope: !6332)
!6337 = !DILocation(line: 165, column: 3, scope: !6332)
!6338 = !DILocation(line: 167, column: 8, scope: !6332)
!6339 = !DILocation(line: 168, column: 8, scope: !6332)
!6340 = !DILocation(line: 169, column: 3, scope: !6332)
!6341 = !DILocation(line: 171, column: 3, scope: !6332)
!6342 = !DILocation(line: 177, column: 7, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 177, column: 6)
!6344 = !DILocation(line: 177, column: 18, scope: !6343)
!6345 = !DILocation(line: 177, column: 16, scope: !6343)
!6346 = !DILocation(line: 177, column: 24, scope: !6343)
!6347 = !DILocation(line: 177, column: 6, scope: !6311)
!6348 = !DILocation(line: 178, column: 3, scope: !6343)
!6349 = !DILocation(line: 181, column: 7, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 181, column: 6)
!6351 = !DILocation(line: 181, column: 18, scope: !6350)
!6352 = !DILocation(line: 181, column: 16, scope: !6350)
!6353 = !DILocation(line: 181, column: 24, scope: !6350)
!6354 = !DILocation(line: 181, column: 6, scope: !6311)
!6355 = !DILocation(line: 182, column: 3, scope: !6350)
!6356 = !DILocation(line: 184, column: 30, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 184, column: 6)
!6358 = !DILocation(line: 184, column: 34, scope: !6357)
!6359 = !DILocation(line: 184, column: 41, scope: !6357)
!6360 = !DILocation(line: 184, column: 46, scope: !6357)
!6361 = !DILocation(line: 184, column: 57, scope: !6357)
!6362 = !DILocation(line: 184, column: 55, scope: !6357)
!6363 = !DILocation(line: 184, column: 6, scope: !6357)
!6364 = !DILocation(line: 184, column: 63, scope: !6357)
!6365 = !DILocation(line: 184, column: 6, scope: !6311)
!6366 = !DILocation(line: 185, column: 3, scope: !6357)
!6367 = !DILocation(line: 187, column: 2, scope: !6311)
!6368 = !DILocation(line: 188, column: 1, scope: !6311)
!6369 = distinct !DISubprogram(name: "pci_mmcfg_amd_fam10h", scope: !3, file: !3, line: 190, type: !403, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6370)
!6370 = !{!6371, !6372, !6373, !6374, !6375, !6376, !6377, !6378, !6379, !6380, !6383}
!6371 = !DILocalVariable(name: "low", scope: !6369, file: !3, line: 192, type: !234)
!6372 = !DILocalVariable(name: "high", scope: !6369, file: !3, line: 192, type: !234)
!6373 = !DILocalVariable(name: "address", scope: !6369, file: !3, line: 192, type: !234)
!6374 = !DILocalVariable(name: "base", scope: !6369, file: !3, line: 193, type: !198)
!6375 = !DILocalVariable(name: "msr", scope: !6369, file: !3, line: 193, type: !198)
!6376 = !DILocalVariable(name: "i", scope: !6369, file: !3, line: 194, type: !109)
!6377 = !DILocalVariable(name: "segnbits", scope: !6369, file: !3, line: 195, type: !7)
!6378 = !DILocalVariable(name: "busnbits", scope: !6369, file: !3, line: 195, type: !7)
!6379 = !DILocalVariable(name: "end_bus", scope: !6369, file: !3, line: 195, type: !7)
!6380 = !DILocalVariable(name: "__err", scope: !6381, file: !3, line: 201, type: !109)
!6381 = distinct !DILexicalBlock(scope: !6382, file: !3, line: 201, column: 6)
!6382 = distinct !DILexicalBlock(scope: !6369, file: !3, line: 201, column: 6)
!6383 = !DILocalVariable(name: "__val", scope: !6381, file: !3, line: 201, type: !198)
!6384 = !DILocation(line: 192, column: 2, scope: !6369)
!6385 = !DILocation(line: 192, column: 6, scope: !6369)
!6386 = !DILocation(line: 192, column: 11, scope: !6369)
!6387 = !DILocation(line: 192, column: 17, scope: !6369)
!6388 = !DILocation(line: 193, column: 2, scope: !6369)
!6389 = !DILocation(line: 193, column: 6, scope: !6369)
!6390 = !DILocation(line: 193, column: 12, scope: !6369)
!6391 = !DILocation(line: 194, column: 2, scope: !6369)
!6392 = !DILocation(line: 194, column: 6, scope: !6369)
!6393 = !DILocation(line: 195, column: 2, scope: !6369)
!6394 = !DILocation(line: 195, column: 11, scope: !6369)
!6395 = !DILocation(line: 195, column: 25, scope: !6369)
!6396 = !DILocation(line: 195, column: 35, scope: !6369)
!6397 = !DILocation(line: 197, column: 8, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6369, file: !3, line: 197, column: 6)
!6399 = !DILocation(line: 197, column: 18, scope: !6398)
!6400 = !DILocation(line: 197, column: 6, scope: !6369)
!6401 = !DILocation(line: 198, column: 3, scope: !6398)
!6402 = !DILocation(line: 200, column: 10, scope: !6369)
!6403 = !DILocation(line: 201, column: 6, scope: !6381)
!6404 = !DILocation(line: 201, column: 6, scope: !6382)
!6405 = !DILocation(line: 201, column: 6, scope: !6369)
!6406 = !DILocation(line: 202, column: 3, scope: !6382)
!6407 = !DILocation(line: 204, column: 8, scope: !6369)
!6408 = !DILocation(line: 204, column: 6, scope: !6369)
!6409 = !DILocation(line: 205, column: 6, scope: !6369)
!6410 = !DILocation(line: 206, column: 9, scope: !6369)
!6411 = !DILocation(line: 206, column: 6, scope: !6369)
!6412 = !DILocation(line: 209, column: 8, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6369, file: !3, line: 209, column: 6)
!6414 = !DILocation(line: 209, column: 12, scope: !6413)
!6415 = !DILocation(line: 209, column: 6, scope: !6369)
!6416 = !DILocation(line: 210, column: 3, scope: !6413)
!6417 = !DILocation(line: 212, column: 9, scope: !6369)
!6418 = !DILocation(line: 212, column: 13, scope: !6369)
!6419 = !DILocation(line: 212, column: 7, scope: !6369)
!6420 = !DILocation(line: 214, column: 14, scope: !6369)
!6421 = !DILocation(line: 214, column: 18, scope: !6369)
!6422 = !DILocation(line: 214, column: 54, scope: !6369)
!6423 = !DILocation(line: 214, column: 13, scope: !6369)
!6424 = !DILocation(line: 214, column: 11, scope: !6369)
!6425 = !DILocation(line: 221, column: 7, scope: !6426)
!6426 = distinct !DILexicalBlock(scope: !6369, file: !3, line: 221, column: 6)
!6427 = !DILocation(line: 221, column: 6, scope: !6369)
!6428 = !DILocation(line: 222, column: 3, scope: !6426)
!6429 = !DILocation(line: 224, column: 6, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6369, file: !3, line: 224, column: 6)
!6431 = !DILocation(line: 224, column: 15, scope: !6430)
!6432 = !DILocation(line: 224, column: 6, scope: !6369)
!6433 = !DILocation(line: 225, column: 14, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6430, file: !3, line: 224, column: 20)
!6435 = !DILocation(line: 225, column: 23, scope: !6434)
!6436 = !DILocation(line: 225, column: 12, scope: !6434)
!6437 = !DILocation(line: 226, column: 12, scope: !6434)
!6438 = !DILocation(line: 227, column: 2, scope: !6434)
!6439 = !DILocation(line: 229, column: 18, scope: !6369)
!6440 = !DILocation(line: 229, column: 15, scope: !6369)
!6441 = !DILocation(line: 229, column: 28, scope: !6369)
!6442 = !DILocation(line: 229, column: 10, scope: !6369)
!6443 = !DILocation(line: 230, column: 9, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6369, file: !3, line: 230, column: 2)
!6445 = !DILocation(line: 230, column: 7, scope: !6444)
!6446 = !DILocation(line: 230, column: 14, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 230, column: 2)
!6448 = !DILocation(line: 230, column: 24, scope: !6447)
!6449 = !DILocation(line: 230, column: 21, scope: !6447)
!6450 = !DILocation(line: 230, column: 16, scope: !6447)
!6451 = !DILocation(line: 230, column: 2, scope: !6444)
!6452 = !DILocation(line: 231, column: 24, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6447, file: !3, line: 231, column: 7)
!6454 = !DILocation(line: 231, column: 30, scope: !6453)
!6455 = !DILocation(line: 232, column: 10, scope: !6453)
!6456 = !DILocation(line: 232, column: 27, scope: !6453)
!6457 = !DILocation(line: 232, column: 25, scope: !6453)
!6458 = !DILocation(line: 232, column: 17, scope: !6453)
!6459 = !DILocation(line: 232, column: 15, scope: !6453)
!6460 = !DILocation(line: 231, column: 7, scope: !6453)
!6461 = !DILocation(line: 232, column: 30, scope: !6453)
!6462 = !DILocation(line: 231, column: 7, scope: !6447)
!6463 = !DILocation(line: 233, column: 4, scope: !6464)
!6464 = distinct !DILexicalBlock(scope: !6453, file: !3, line: 232, column: 39)
!6465 = !DILocation(line: 234, column: 4, scope: !6464)
!6466 = !DILocation(line: 232, column: 33, scope: !6453)
!6467 = !DILocation(line: 230, column: 36, scope: !6447)
!6468 = !DILocation(line: 230, column: 2, scope: !6447)
!6469 = distinct !{!6469, !6451, !6470, !714, !715}
!6470 = !DILocation(line: 235, column: 3, scope: !6444)
!6471 = !DILocation(line: 237, column: 2, scope: !6369)
!6472 = !DILocation(line: 238, column: 1, scope: !6369)
!6473 = !DILocation(line: 243, column: 2, scope: !422)
!6474 = !DILocation(line: 243, column: 6, scope: !422)
!6475 = !DILocation(line: 244, column: 2, scope: !422)
!6476 = !DILocation(line: 244, column: 6, scope: !422)
!6477 = !DILocation(line: 264, column: 7, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !422, file: !3, line: 264, column: 6)
!6479 = !DILocation(line: 264, column: 21, scope: !6478)
!6480 = !DILocation(line: 264, column: 25, scope: !6478)
!6481 = !DILocation(line: 264, column: 53, scope: !6478)
!6482 = !DILocation(line: 264, column: 56, scope: !6478)
!6483 = !DILocation(line: 264, column: 6, scope: !422)
!6484 = !DILocation(line: 265, column: 3, scope: !6478)
!6485 = !DILocation(line: 267, column: 16, scope: !422)
!6486 = !DILocation(line: 268, column: 11, scope: !429)
!6487 = !DILocation(line: 268, column: 7, scope: !429)
!6488 = !DILocation(line: 268, column: 16, scope: !428)
!6489 = !DILocation(line: 268, column: 20, scope: !428)
!6490 = !DILocation(line: 268, column: 2, scope: !429)
!6491 = !DILocation(line: 269, column: 3, scope: !427)
!6492 = !DILocation(line: 269, column: 7, scope: !427)
!6493 = !DILocation(line: 270, column: 3, scope: !427)
!6494 = !DILocation(line: 270, column: 7, scope: !427)
!6495 = !DILocation(line: 270, column: 10, scope: !427)
!6496 = !DILocation(line: 271, column: 3, scope: !427)
!6497 = !DILocation(line: 271, column: 7, scope: !427)
!6498 = !DILocation(line: 271, column: 15, scope: !427)
!6499 = !DILocation(line: 272, column: 3, scope: !427)
!6500 = !DILocation(line: 272, column: 7, scope: !427)
!6501 = !DILocation(line: 272, column: 14, scope: !427)
!6502 = !DILocation(line: 272, column: 26, scope: !427)
!6503 = !DILocation(line: 274, column: 3, scope: !427)
!6504 = !DILocation(line: 274, column: 16, scope: !427)
!6505 = !DILocation(line: 274, column: 24, scope: !427)
!6506 = !DILocation(line: 275, column: 12, scope: !427)
!6507 = !DILocation(line: 275, column: 14, scope: !427)
!6508 = !DILocation(line: 275, column: 10, scope: !427)
!6509 = !DILocation(line: 276, column: 13, scope: !427)
!6510 = !DILocation(line: 276, column: 15, scope: !427)
!6511 = !DILocation(line: 276, column: 22, scope: !427)
!6512 = !DILocation(line: 276, column: 12, scope: !427)
!6513 = !DILocation(line: 276, column: 10, scope: !427)
!6514 = !DILocation(line: 278, column: 31, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !427, file: !3, line: 278, column: 7)
!6516 = !DILocation(line: 278, column: 28, scope: !6515)
!6517 = !DILocation(line: 278, column: 38, scope: !6515)
!6518 = !DILocation(line: 278, column: 51, scope: !6515)
!6519 = !DILocation(line: 278, column: 48, scope: !6515)
!6520 = !DILocation(line: 278, column: 7, scope: !427)
!6521 = !DILocation(line: 279, column: 4, scope: !6515)
!6522 = !DILocation(line: 281, column: 3, scope: !427)
!6523 = !DILocation(line: 281, column: 16, scope: !427)
!6524 = !DILocation(line: 281, column: 24, scope: !427)
!6525 = !DILocation(line: 284, column: 9, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !427, file: !3, line: 284, column: 7)
!6527 = !DILocation(line: 284, column: 16, scope: !6526)
!6528 = !DILocation(line: 284, column: 7, scope: !427)
!6529 = !DILocation(line: 285, column: 4, scope: !6526)
!6530 = !DILocation(line: 287, column: 17, scope: !427)
!6531 = !DILocation(line: 287, column: 24, scope: !427)
!6532 = !DILocation(line: 287, column: 44, scope: !427)
!6533 = !DILocation(line: 287, column: 14, scope: !427)
!6534 = !DILocation(line: 288, column: 10, scope: !427)
!6535 = !DILocation(line: 288, column: 36, scope: !427)
!6536 = !DILocation(line: 288, column: 19, scope: !427)
!6537 = !DILocation(line: 288, column: 17, scope: !427)
!6538 = !DILocation(line: 288, column: 8, scope: !427)
!6539 = !DILocation(line: 290, column: 8, scope: !427)
!6540 = !DILocation(line: 291, column: 12, scope: !427)
!6541 = !DILocation(line: 291, column: 19, scope: !427)
!6542 = !DILocation(line: 291, column: 40, scope: !427)
!6543 = !DILocation(line: 291, column: 9, scope: !427)
!6544 = !DILocation(line: 292, column: 9, scope: !427)
!6545 = !DILocation(line: 292, column: 32, scope: !427)
!6546 = !DILocation(line: 292, column: 17, scope: !427)
!6547 = !DILocation(line: 292, column: 15, scope: !427)
!6548 = !DILocation(line: 292, column: 44, scope: !427)
!6549 = !DILocation(line: 292, column: 7, scope: !427)
!6550 = !DILocation(line: 293, column: 27, scope: !6551)
!6551 = distinct !DILexicalBlock(scope: !427, file: !3, line: 293, column: 7)
!6552 = !DILocation(line: 293, column: 34, scope: !6551)
!6553 = !DILocation(line: 293, column: 39, scope: !6551)
!6554 = !DILocation(line: 293, column: 7, scope: !6551)
!6555 = !DILocation(line: 293, column: 45, scope: !6551)
!6556 = !DILocation(line: 293, column: 7, scope: !427)
!6557 = !DILocation(line: 294, column: 4, scope: !6551)
!6558 = !DILocation(line: 295, column: 21, scope: !427)
!6559 = !DILocation(line: 296, column: 2, scope: !428)
!6560 = !DILocation(line: 296, column: 2, scope: !427)
!6561 = !DILocation(line: 268, column: 30, scope: !428)
!6562 = !DILocation(line: 268, column: 2, scope: !428)
!6563 = distinct !{!6563, !6490, !6564, !714, !715}
!6564 = !DILocation(line: 296, column: 2, scope: !429)
!6565 = !DILocation(line: 298, column: 7, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !422, file: !3, line: 298, column: 6)
!6567 = !DILocation(line: 298, column: 6, scope: !422)
!6568 = !DILocation(line: 299, column: 3, scope: !6566)
!6569 = !DILocation(line: 301, column: 2, scope: !422)
!6570 = !DILocation(line: 302, column: 1, scope: !422)
!6571 = distinct !DISubprogram(name: "native_read_msr_safe", scope: !6572, file: !6572, line: 126, type: !6573, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6575)
!6572 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!6573 = !DISubroutineType(types: !6574)
!6574 = !{!202, !7, !1596}
!6575 = !{!6576, !6577, !6578, !6579}
!6576 = !DILocalVariable(name: "msr", arg: 1, scope: !6571, file: !6572, line: 126, type: !7)
!6577 = !DILocalVariable(name: "err", arg: 2, scope: !6571, file: !6572, line: 127, type: !1596)
!6578 = !DILocalVariable(name: "low", scope: !6571, file: !6572, line: 129, type: !175)
!6579 = !DILocalVariable(name: "high", scope: !6571, file: !6572, line: 129, type: !175)
!6580 = !DILocation(line: 126, column: 68, scope: !6571)
!6581 = !DILocation(line: 127, column: 18, scope: !6571)
!6582 = !DILocation(line: 129, column: 2, scope: !6571)
!6583 = !DILocation(line: 134, column: 23, scope: !6571)
!6584 = !DILocation(line: 135, column: 15, scope: !6571)
!6585 = !DILocation(line: 131, column: 2, scope: !6571)
!6586 = !{i64 1374497, i64 1374538, i64 1374542, i64 2149553089, i64 2149553114, i64 2149553149, i64 2149553366, i64 2149553419, i64 2149553450, i64 2149553481, i64 2149553559, i64 2149553593, i64 2149553631, i64 2149553674, i64 2149553697, i64 2149553735, i64 2149553757, i64 2149553788, i64 2149553873, i64 2149553907, i64 2149553945, i64 2149553988, i64 2149554011, i64 2149554049, i64 2149554071, i64 2149554105, i64 2149554167, i64 2149554190, i64 2149553215, i64 2149554264, i64 2149553326}
!6587 = !DILocation(line: 136, column: 6, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6571, file: !6572, line: 136, column: 6)
!6589 = !DILocation(line: 136, column: 6, scope: !6571)
!6590 = !DILocation(line: 137, column: 21, scope: !6588)
!6591 = !DILocation(line: 137, column: 26, scope: !6588)
!6592 = !DILocation(line: 137, column: 56, scope: !6588)
!6593 = !DILocation(line: 137, column: 55, scope: !6588)
!6594 = !DILocation(line: 137, column: 3, scope: !6588)
!6595 = !DILocation(line: 138, column: 9, scope: !6571)
!6596 = !DILocation(line: 139, column: 1, scope: !6571)
!6597 = !DILocation(line: 138, column: 2, scope: !6571)
!6598 = distinct !DISubprogram(name: "static_key_false", scope: !1793, file: !1793, line: 205, type: !6599, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6613)
!6599 = !DISubroutineType(types: !6600)
!6600 = !{!321, !6601}
!6601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6602, size: 64)
!6602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1793, line: 85, size: 128, elements: !6603)
!6603 = !{!6604, !6605}
!6604 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6602, file: !1793, line: 86, baseType: !366, size: 32)
!6605 = !DIDerivedType(tag: DW_TAG_member, scope: !6602, file: !1793, line: 101, baseType: !6606, size: 64, offset: 64)
!6606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6602, file: !1793, line: 101, size: 64, elements: !6607)
!6607 = !{!6608, !6609, !6610}
!6608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6606, file: !1793, line: 102, baseType: !175, size: 64)
!6609 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6606, file: !1793, line: 103, baseType: !1791, size: 64)
!6610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6606, file: !1793, line: 104, baseType: !6611, size: 64)
!6611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6612, size: 64)
!6612 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1793, line: 104, flags: DIFlagFwdDecl)
!6613 = !{!6614}
!6614 = !DILocalVariable(name: "key", arg: 1, scope: !6598, file: !1793, line: 205, type: !6601)
!6615 = !DILocation(line: 205, column: 65, scope: !6598)
!6616 = !DILocation(line: 207, column: 28, scope: !6598)
!6617 = !DILocation(line: 207, column: 9, scope: !6598)
!6618 = !DILocation(line: 207, column: 2, scope: !6598)
!6619 = !DISubprogram(name: "do_trace_read_msr", scope: !6572, file: !6572, line: 65, type: !6620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6620 = !DISubroutineType(types: !6621)
!6621 = !{null, !7, !198, !109}
!6622 = distinct !DISubprogram(name: "arch_static_branch", scope: !6623, file: !6623, line: 25, type: !6624, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6626)
!6623 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6624 = !DISubroutineType(types: !6625)
!6625 = !{!321, !6601, !321}
!6626 = !{!6627, !6628, !6629}
!6627 = !DILocalVariable(name: "key", arg: 1, scope: !6622, file: !6623, line: 25, type: !6601)
!6628 = !DILocalVariable(name: "branch", arg: 2, scope: !6622, file: !6623, line: 25, type: !321)
!6629 = !DILabel(scope: !6622, name: "l_yes", file: !6623, line: 33)
!6630 = !DILocation(line: 25, column: 67, scope: !6622)
!6631 = !DILocation(line: 25, column: 77, scope: !6622)
!6632 = !DILocation(line: 30, column: 13, scope: !6622)
!6633 = !DILocation(line: 30, column: 28, scope: !6622)
!6634 = !DILocation(line: 30, column: 26, scope: !6622)
!6635 = !DILocation(line: 27, column: 2, scope: !6622)
!6636 = !{i64 1273712, i64 1273756, i64 2148758439, i64 2148758460, i64 2148758486, i64 2148758519, i64 2148758553, i64 2148758577}
!6637 = !DILocation(line: 32, column: 2, scope: !6622)
!6638 = !DILocation(line: 33, column: 1, scope: !6622)
!6639 = !DILocation(line: 34, column: 2, scope: !6622)
!6640 = !DILocation(line: 35, column: 1, scope: !6622)
!6641 = distinct !DISubprogram(name: "acpi_mcfg_check_entry", scope: !3, file: !3, line: 609, type: !6642, scopeLine: 611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6644)
!6642 = !DISubroutineType(types: !6643)
!6643 = !{!109, !236, !264}
!6644 = !{!6645, !6646}
!6645 = !DILocalVariable(name: "mcfg", arg: 1, scope: !6641, file: !3, line: 609, type: !236)
!6646 = !DILocalVariable(name: "cfg", arg: 2, scope: !6641, file: !3, line: 610, type: !264)
!6647 = !DILocation(line: 609, column: 65, scope: !6641)
!6648 = !DILocation(line: 610, column: 35, scope: !6641)
!6649 = !DILocation(line: 612, column: 6, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6641, file: !3, line: 612, column: 6)
!6651 = !DILocation(line: 612, column: 11, scope: !6650)
!6652 = !DILocation(line: 612, column: 19, scope: !6650)
!6653 = !DILocation(line: 612, column: 6, scope: !6641)
!6654 = !DILocation(line: 613, column: 3, scope: !6650)
!6655 = !DILocation(line: 615, column: 15, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6641, file: !3, line: 615, column: 6)
!6657 = !DILocation(line: 615, column: 21, scope: !6656)
!6658 = !DILocation(line: 615, column: 28, scope: !6656)
!6659 = !DILocation(line: 615, column: 7, scope: !6656)
!6660 = !DILocation(line: 615, column: 6, scope: !6641)
!6661 = !DILocation(line: 616, column: 3, scope: !6656)
!6662 = !DILocation(line: 618, column: 7, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6641, file: !3, line: 618, column: 6)
!6664 = !DILocation(line: 618, column: 13, scope: !6663)
!6665 = !DILocation(line: 618, column: 20, scope: !6663)
!6666 = !DILocation(line: 618, column: 29, scope: !6663)
!6667 = !DILocation(line: 618, column: 35, scope: !6663)
!6668 = !DILocation(line: 618, column: 39, scope: !6663)
!6669 = !DILocation(line: 618, column: 59, scope: !6663)
!6670 = !DILocation(line: 618, column: 6, scope: !6641)
!6671 = !DILocation(line: 619, column: 3, scope: !6663)
!6672 = !DILocation(line: 621, column: 2, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6641, file: !3, line: 621, column: 2)
!6674 = !DILocation(line: 621, column: 2, scope: !6675)
!6675 = distinct !DILexicalBlock(scope: !6673, file: !3, line: 621, column: 2)
!6676 = !DILocation(line: 624, column: 2, scope: !6641)
!6677 = !DILocation(line: 625, column: 1, scope: !6641)
!6678 = !DISubprogram(name: "strncmp", scope: !6679, file: !6679, line: 91, type: !6680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6679 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6680 = !DISubroutineType(types: !6681)
!6681 = !{!109, !205, !205, !1207}
!6682 = !DISubprogram(name: "dmi_get_bios_year", scope: !6683, file: !6683, line: 107, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6683 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!6684 = distinct !DISubprogram(name: "pci_mmcfg_reject_broken", scope: !3, file: !3, line: 596, type: !992, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6685)
!6685 = !{!6686, !6687, !6688, !6691}
!6686 = !DILocalVariable(name: "early", arg: 1, scope: !6684, file: !3, line: 596, type: !109)
!6687 = !DILocalVariable(name: "cfg", scope: !6684, file: !3, line: 598, type: !186)
!6688 = !DILocalVariable(name: "__mptr", scope: !6689, file: !3, line: 600, type: !176)
!6689 = distinct !DILexicalBlock(scope: !6690, file: !3, line: 600, column: 2)
!6690 = distinct !DILexicalBlock(scope: !6684, file: !3, line: 600, column: 2)
!6691 = !DILocalVariable(name: "__mptr", scope: !6692, file: !3, line: 600, type: !176)
!6692 = distinct !DILexicalBlock(scope: !6693, file: !3, line: 600, column: 2)
!6693 = distinct !DILexicalBlock(scope: !6690, file: !3, line: 600, column: 2)
!6694 = !DILocation(line: 596, column: 48, scope: !6684)
!6695 = !DILocation(line: 598, column: 2, scope: !6684)
!6696 = !DILocation(line: 598, column: 27, scope: !6684)
!6697 = !DILocation(line: 600, column: 2, scope: !6689)
!6698 = !DILocation(line: 600, column: 2, scope: !6690)
!6699 = !DILocation(line: 600, column: 2, scope: !6693)
!6700 = !DILocation(line: 601, column: 38, scope: !6701)
!6701 = distinct !DILexicalBlock(scope: !6702, file: !3, line: 601, column: 7)
!6702 = distinct !DILexicalBlock(scope: !6693, file: !3, line: 600, column: 50)
!6703 = !DILocation(line: 601, column: 43, scope: !6701)
!6704 = !DILocation(line: 601, column: 7, scope: !6701)
!6705 = !DILocation(line: 601, column: 50, scope: !6701)
!6706 = !DILocation(line: 601, column: 7, scope: !6702)
!6707 = !DILocation(line: 602, column: 4, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !6709, file: !3, line: 602, column: 4)
!6709 = distinct !DILexicalBlock(scope: !6701, file: !3, line: 601, column: 56)
!6710 = !DILocation(line: 602, column: 4, scope: !6711)
!6711 = distinct !DILexicalBlock(scope: !6708, file: !3, line: 602, column: 4)
!6712 = !DILocation(line: 603, column: 4, scope: !6709)
!6713 = !DILocation(line: 604, column: 4, scope: !6709)
!6714 = !DILocation(line: 606, column: 2, scope: !6702)
!6715 = !DILocation(line: 600, column: 2, scope: !6692)
!6716 = distinct !{!6716, !6698, !6717, !714, !715}
!6717 = !DILocation(line: 606, column: 2, scope: !6690)
!6718 = !DILocation(line: 607, column: 1, scope: !6684)
!6719 = !DISubprogram(name: "pci_mmcfg_arch_init", scope: !188, file: !188, line: 180, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6720 = !DISubprogram(name: "insert_resource", scope: !193, file: !193, line: 203, type: !6721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6721 = !DISubroutineType(types: !6722)
!6722 = !{!109, !211, !211}
!6723 = distinct !DISubprogram(name: "is_mmconf_reserved", scope: !3, file: !3, line: 474, type: !6724, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6730)
!6724 = !DISubroutineType(types: !6725)
!6725 = !{!321, !6726, !186, !1107, !205}
!6726 = !DIDerivedType(tag: DW_TAG_typedef, name: "check_reserved_t", file: !3, line: 472, baseType: !6727)
!6727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6728, size: 64)
!6728 = !DISubroutineType(types: !6729)
!6729 = !{!321, !198, !198, !162}
!6730 = !{!6731, !6732, !6733, !6734, !6735, !6736, !6737, !6738}
!6731 = !DILocalVariable(name: "is_reserved", arg: 1, scope: !6723, file: !3, line: 474, type: !6726)
!6732 = !DILocalVariable(name: "cfg", arg: 2, scope: !6723, file: !3, line: 475, type: !186)
!6733 = !DILocalVariable(name: "dev", arg: 3, scope: !6723, file: !3, line: 476, type: !1107)
!6734 = !DILocalVariable(name: "method", arg: 4, scope: !6723, file: !3, line: 476, type: !205)
!6735 = !DILocalVariable(name: "addr", scope: !6723, file: !3, line: 478, type: !198)
!6736 = !DILocalVariable(name: "size", scope: !6723, file: !3, line: 479, type: !198)
!6737 = !DILocalVariable(name: "old_size", scope: !6723, file: !3, line: 480, type: !198)
!6738 = !DILocalVariable(name: "num_buses", scope: !6723, file: !3, line: 481, type: !109)
!6739 = !DILocation(line: 474, column: 55, scope: !6723)
!6740 = !DILocation(line: 475, column: 35, scope: !6723)
!6741 = !DILocation(line: 476, column: 25, scope: !6723)
!6742 = !DILocation(line: 476, column: 42, scope: !6723)
!6743 = !DILocation(line: 478, column: 2, scope: !6723)
!6744 = !DILocation(line: 478, column: 6, scope: !6723)
!6745 = !DILocation(line: 478, column: 13, scope: !6723)
!6746 = !DILocation(line: 478, column: 18, scope: !6723)
!6747 = !DILocation(line: 478, column: 22, scope: !6723)
!6748 = !DILocation(line: 479, column: 2, scope: !6723)
!6749 = !DILocation(line: 479, column: 6, scope: !6723)
!6750 = !DILocation(line: 479, column: 28, scope: !6723)
!6751 = !DILocation(line: 479, column: 33, scope: !6723)
!6752 = !DILocation(line: 479, column: 13, scope: !6723)
!6753 = !DILocation(line: 480, column: 2, scope: !6723)
!6754 = !DILocation(line: 480, column: 6, scope: !6723)
!6755 = !DILocation(line: 480, column: 17, scope: !6723)
!6756 = !DILocation(line: 481, column: 2, scope: !6723)
!6757 = !DILocation(line: 481, column: 6, scope: !6723)
!6758 = !DILocation(line: 483, column: 2, scope: !6723)
!6759 = !DILocation(line: 483, column: 10, scope: !6723)
!6760 = !DILocation(line: 483, column: 22, scope: !6723)
!6761 = !DILocation(line: 483, column: 28, scope: !6723)
!6762 = !DILocation(line: 483, column: 35, scope: !6723)
!6763 = !DILocation(line: 483, column: 33, scope: !6723)
!6764 = !DILocation(line: 483, column: 9, scope: !6723)
!6765 = !DILocation(line: 484, column: 8, scope: !6766)
!6766 = distinct !DILexicalBlock(scope: !6723, file: !3, line: 483, column: 62)
!6767 = !DILocation(line: 485, column: 7, scope: !6768)
!6768 = distinct !DILexicalBlock(scope: !6766, file: !3, line: 485, column: 7)
!6769 = !DILocation(line: 485, column: 12, scope: !6768)
!6770 = !DILocation(line: 485, column: 7, scope: !6766)
!6771 = !DILocation(line: 486, column: 4, scope: !6768)
!6772 = distinct !{!6772, !6758, !6773, !714, !715}
!6773 = !DILocation(line: 487, column: 2, scope: !6723)
!6774 = !DILocation(line: 489, column: 6, scope: !6775)
!6775 = distinct !DILexicalBlock(scope: !6723, file: !3, line: 489, column: 6)
!6776 = !DILocation(line: 489, column: 11, scope: !6775)
!6777 = !DILocation(line: 489, column: 24, scope: !6775)
!6778 = !DILocation(line: 489, column: 27, scope: !6775)
!6779 = !DILocation(line: 489, column: 35, scope: !6775)
!6780 = !DILocation(line: 489, column: 32, scope: !6775)
!6781 = !DILocation(line: 489, column: 6, scope: !6723)
!6782 = !DILocation(line: 490, column: 3, scope: !6775)
!6783 = !DILocation(line: 492, column: 6, scope: !6784)
!6784 = distinct !DILexicalBlock(scope: !6723, file: !3, line: 492, column: 6)
!6785 = !DILocation(line: 492, column: 6, scope: !6723)
!6786 = !DILocation(line: 493, column: 3, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6784, file: !3, line: 493, column: 3)
!6788 = !DILocation(line: 493, column: 3, scope: !6789)
!6789 = distinct !DILexicalBlock(scope: !6787, file: !3, line: 493, column: 3)
!6790 = !DILocation(line: 493, column: 3, scope: !6784)
!6791 = !DILocation(line: 496, column: 3, scope: !6792)
!6792 = distinct !DILexicalBlock(scope: !6784, file: !3, line: 496, column: 3)
!6793 = !DILocation(line: 496, column: 3, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6792, file: !3, line: 496, column: 3)
!6795 = !DILocation(line: 499, column: 6, scope: !6796)
!6796 = distinct !DILexicalBlock(scope: !6723, file: !3, line: 499, column: 6)
!6797 = !DILocation(line: 499, column: 18, scope: !6796)
!6798 = !DILocation(line: 499, column: 15, scope: !6796)
!6799 = !DILocation(line: 499, column: 6, scope: !6723)
!6800 = !DILocation(line: 501, column: 18, scope: !6801)
!6801 = distinct !DILexicalBlock(scope: !6796, file: !3, line: 499, column: 24)
!6802 = !DILocation(line: 501, column: 23, scope: !6801)
!6803 = !DILocation(line: 501, column: 37, scope: !6801)
!6804 = !DILocation(line: 501, column: 41, scope: !6801)
!6805 = !DILocation(line: 501, column: 47, scope: !6801)
!6806 = !DILocation(line: 501, column: 33, scope: !6801)
!6807 = !DILocation(line: 501, column: 3, scope: !6801)
!6808 = !DILocation(line: 501, column: 8, scope: !6801)
!6809 = !DILocation(line: 501, column: 16, scope: !6801)
!6810 = !DILocation(line: 502, column: 15, scope: !6801)
!6811 = !DILocation(line: 502, column: 20, scope: !6801)
!6812 = !DILocation(line: 502, column: 30, scope: !6801)
!6813 = !DILocation(line: 502, column: 35, scope: !6801)
!6814 = !DILocation(line: 502, column: 28, scope: !6801)
!6815 = !DILocation(line: 502, column: 45, scope: !6801)
!6816 = !DILocation(line: 502, column: 13, scope: !6801)
!6817 = !DILocation(line: 503, column: 18, scope: !6801)
!6818 = !DILocation(line: 503, column: 23, scope: !6801)
!6819 = !DILocation(line: 503, column: 27, scope: !6801)
!6820 = !DILocation(line: 504, column: 7, scope: !6801)
!6821 = !DILocation(line: 503, column: 33, scope: !6801)
!6822 = !DILocation(line: 504, column: 39, scope: !6801)
!6823 = !DILocation(line: 503, column: 3, scope: !6801)
!6824 = !DILocation(line: 503, column: 8, scope: !6801)
!6825 = !DILocation(line: 503, column: 12, scope: !6801)
!6826 = !DILocation(line: 503, column: 16, scope: !6801)
!6827 = !DILocation(line: 505, column: 12, scope: !6801)
!6828 = !DILocation(line: 505, column: 17, scope: !6801)
!6829 = !DILocation(line: 507, column: 5, scope: !6801)
!6830 = !DILocation(line: 507, column: 10, scope: !6801)
!6831 = !DILocation(line: 507, column: 19, scope: !6801)
!6832 = !DILocation(line: 507, column: 24, scope: !6801)
!6833 = !DILocation(line: 507, column: 35, scope: !6801)
!6834 = !DILocation(line: 507, column: 40, scope: !6801)
!6835 = !DILocation(line: 505, column: 3, scope: !6801)
!6836 = !DILocation(line: 509, column: 7, scope: !6837)
!6837 = distinct !DILexicalBlock(scope: !6801, file: !3, line: 509, column: 7)
!6838 = !DILocation(line: 509, column: 7, scope: !6801)
!6839 = !DILocation(line: 510, column: 4, scope: !6840)
!6840 = distinct !DILexicalBlock(scope: !6837, file: !3, line: 510, column: 4)
!6841 = !DILocation(line: 510, column: 4, scope: !6842)
!6842 = distinct !DILexicalBlock(scope: !6840, file: !3, line: 510, column: 4)
!6843 = !DILocation(line: 510, column: 4, scope: !6837)
!6844 = !DILocation(line: 515, column: 4, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6837, file: !3, line: 515, column: 4)
!6846 = !DILocation(line: 515, column: 4, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6845, file: !3, line: 515, column: 4)
!6848 = !DILocation(line: 520, column: 2, scope: !6801)
!6849 = !DILocation(line: 522, column: 2, scope: !6723)
!6850 = !DILocation(line: 523, column: 1, scope: !6723)
!6851 = distinct !DISubprogram(name: "is_acpi_reserved", scope: !3, file: !3, line: 429, type: !6728, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6852)
!6852 = !{!6853, !6854, !6855, !6856}
!6853 = !DILocalVariable(name: "start", arg: 1, scope: !6851, file: !3, line: 429, type: !198)
!6854 = !DILocalVariable(name: "end", arg: 2, scope: !6851, file: !3, line: 429, type: !198)
!6855 = !DILocalVariable(name: "not_used", arg: 3, scope: !6851, file: !3, line: 429, type: !162)
!6856 = !DILocalVariable(name: "mcfg_res", scope: !6851, file: !3, line: 431, type: !192)
!6857 = !DILocation(line: 429, column: 34, scope: !6851)
!6858 = !DILocation(line: 429, column: 45, scope: !6851)
!6859 = !DILocation(line: 429, column: 65, scope: !6851)
!6860 = !DILocation(line: 431, column: 2, scope: !6851)
!6861 = !DILocation(line: 431, column: 18, scope: !6851)
!6862 = !DILocation(line: 433, column: 19, scope: !6851)
!6863 = !DILocation(line: 433, column: 11, scope: !6851)
!6864 = !DILocation(line: 433, column: 17, scope: !6851)
!6865 = !DILocation(line: 434, column: 17, scope: !6851)
!6866 = !DILocation(line: 434, column: 21, scope: !6851)
!6867 = !DILocation(line: 434, column: 11, scope: !6851)
!6868 = !DILocation(line: 434, column: 15, scope: !6851)
!6869 = !DILocation(line: 435, column: 11, scope: !6851)
!6870 = !DILocation(line: 435, column: 17, scope: !6851)
!6871 = !DILocation(line: 437, column: 2, scope: !6851)
!6872 = !DILocation(line: 439, column: 16, scope: !6873)
!6873 = distinct !DILexicalBlock(scope: !6851, file: !3, line: 439, column: 6)
!6874 = !DILocation(line: 439, column: 7, scope: !6873)
!6875 = !DILocation(line: 439, column: 6, scope: !6851)
!6876 = !DILocation(line: 440, column: 3, scope: !6873)
!6877 = !DILocation(line: 443, column: 18, scope: !6851)
!6878 = !DILocation(line: 443, column: 9, scope: !6851)
!6879 = !DILocation(line: 444, column: 1, scope: !6851)
!6880 = !DILocation(line: 443, column: 2, scope: !6851)
!6881 = distinct !DISubprogram(name: "is_efi_mmio", scope: !3, file: !3, line: 446, type: !6728, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6882)
!6882 = !{!6883, !6884, !6885, !6886, !6898, !6899, !6900}
!6883 = !DILocalVariable(name: "start", arg: 1, scope: !6881, file: !3, line: 446, type: !198)
!6884 = !DILocalVariable(name: "end", arg: 2, scope: !6881, file: !3, line: 446, type: !198)
!6885 = !DILocalVariable(name: "not_used", arg: 3, scope: !6881, file: !3, line: 446, type: !162)
!6886 = !DILocalVariable(name: "md", scope: !6881, file: !3, line: 449, type: !6887)
!6887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6888, size: 64)
!6888 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_desc_t", file: !6889, line: 145, baseType: !6890)
!6889 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!6890 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6889, line: 138, size: 320, elements: !6891)
!6891 = !{!6892, !6893, !6894, !6895, !6896, !6897}
!6892 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6890, file: !6889, line: 139, baseType: !234, size: 32)
!6893 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !6890, file: !6889, line: 140, baseType: !234, size: 32, offset: 32)
!6894 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !6890, file: !6889, line: 141, baseType: !198, size: 64, offset: 64)
!6895 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !6890, file: !6889, line: 142, baseType: !198, size: 64, offset: 128)
!6896 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !6890, file: !6889, line: 143, baseType: !198, size: 64, offset: 192)
!6897 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !6890, file: !6889, line: 144, baseType: !198, size: 64, offset: 256)
!6898 = !DILocalVariable(name: "size", scope: !6881, file: !3, line: 450, type: !198)
!6899 = !DILocalVariable(name: "mmio_start", scope: !6881, file: !3, line: 450, type: !198)
!6900 = !DILocalVariable(name: "mmio_end", scope: !6881, file: !3, line: 450, type: !198)
!6901 = !DILocation(line: 446, column: 29, scope: !6881)
!6902 = !DILocation(line: 446, column: 40, scope: !6881)
!6903 = !DILocation(line: 446, column: 60, scope: !6881)
!6904 = !DILocation(line: 449, column: 2, scope: !6881)
!6905 = !DILocation(line: 449, column: 21, scope: !6881)
!6906 = !DILocation(line: 450, column: 2, scope: !6881)
!6907 = !DILocation(line: 450, column: 6, scope: !6881)
!6908 = !DILocation(line: 450, column: 12, scope: !6881)
!6909 = !DILocation(line: 450, column: 24, scope: !6881)
!6910 = !DILocation(line: 452, column: 2, scope: !6911)
!6911 = distinct !DILexicalBlock(scope: !6881, file: !3, line: 452, column: 2)
!6912 = !DILocation(line: 452, column: 2, scope: !6913)
!6913 = distinct !DILexicalBlock(scope: !6911, file: !3, line: 452, column: 2)
!6914 = !DILocation(line: 0, scope: !6913)
!6915 = !DILocation(line: 453, column: 7, scope: !6916)
!6916 = distinct !DILexicalBlock(scope: !6917, file: !3, line: 453, column: 7)
!6917 = distinct !DILexicalBlock(scope: !6913, file: !3, line: 452, column: 31)
!6918 = !DILocation(line: 453, column: 11, scope: !6916)
!6919 = !DILocation(line: 453, column: 16, scope: !6916)
!6920 = !DILocation(line: 453, column: 7, scope: !6917)
!6921 = !DILocation(line: 454, column: 11, scope: !6922)
!6922 = distinct !DILexicalBlock(scope: !6916, file: !3, line: 453, column: 41)
!6923 = !DILocation(line: 454, column: 15, scope: !6922)
!6924 = !DILocation(line: 454, column: 25, scope: !6922)
!6925 = !DILocation(line: 454, column: 9, scope: !6922)
!6926 = !DILocation(line: 455, column: 17, scope: !6922)
!6927 = !DILocation(line: 455, column: 21, scope: !6922)
!6928 = !DILocation(line: 455, column: 15, scope: !6922)
!6929 = !DILocation(line: 456, column: 15, scope: !6922)
!6930 = !DILocation(line: 456, column: 28, scope: !6922)
!6931 = !DILocation(line: 456, column: 26, scope: !6922)
!6932 = !DILocation(line: 456, column: 13, scope: !6922)
!6933 = !DILocation(line: 463, column: 8, scope: !6934)
!6934 = distinct !DILexicalBlock(scope: !6922, file: !3, line: 463, column: 8)
!6935 = !DILocation(line: 463, column: 22, scope: !6934)
!6936 = !DILocation(line: 463, column: 19, scope: !6934)
!6937 = !DILocation(line: 463, column: 28, scope: !6934)
!6938 = !DILocation(line: 463, column: 31, scope: !6934)
!6939 = !DILocation(line: 463, column: 38, scope: !6934)
!6940 = !DILocation(line: 463, column: 35, scope: !6934)
!6941 = !DILocation(line: 463, column: 8, scope: !6922)
!6942 = !DILocation(line: 464, column: 5, scope: !6934)
!6943 = !DILocation(line: 465, column: 3, scope: !6922)
!6944 = !DILocation(line: 466, column: 2, scope: !6917)
!6945 = distinct !{!6945, !6910, !6946, !714, !715}
!6946 = !DILocation(line: 466, column: 2, scope: !6911)
!6947 = !DILocation(line: 469, column: 2, scope: !6881)
!6948 = !DILocation(line: 470, column: 1, scope: !6881)
!6949 = distinct !DISubprogram(name: "resource_size", scope: !193, file: !193, line: 219, type: !6950, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6954)
!6950 = !DISubroutineType(types: !6951)
!6951 = !{!196, !6952}
!6952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6953, size: 64)
!6953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!6954 = !{!6955}
!6955 = !DILocalVariable(name: "res", arg: 1, scope: !6949, file: !193, line: 219, type: !6952)
!6956 = !DILocation(line: 219, column: 68, scope: !6949)
!6957 = !DILocation(line: 221, column: 9, scope: !6949)
!6958 = !DILocation(line: 221, column: 14, scope: !6949)
!6959 = !DILocation(line: 221, column: 20, scope: !6949)
!6960 = !DILocation(line: 221, column: 25, scope: !6949)
!6961 = !DILocation(line: 221, column: 18, scope: !6949)
!6962 = !DILocation(line: 221, column: 31, scope: !6949)
!6963 = !DILocation(line: 221, column: 2, scope: !6949)
!6964 = !DISubprogram(name: "acpi_get_devices", scope: !6965, file: !6965, line: 519, type: !6966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6965 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!6966 = !DISubroutineType(types: !6967)
!6967 = !{!274, !205, !6968, !176, !2820}
!6968 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_callback", file: !275, line: 1135, baseType: !6969)
!6969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6970, size: 64)
!6970 = !DISubroutineType(types: !6971)
!6971 = !{!274, !6972, !234, !176, !2820}
!6972 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !275, line: 424, baseType: !176)
!6973 = distinct !DISubprogram(name: "find_mboard_resource", scope: !3, file: !3, line: 415, type: !6970, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6974)
!6974 = !{!6975, !6976, !6977, !6978, !6979}
!6975 = !DILocalVariable(name: "handle", arg: 1, scope: !6973, file: !3, line: 415, type: !6972)
!6976 = !DILocalVariable(name: "lvl", arg: 2, scope: !6973, file: !3, line: 415, type: !234)
!6977 = !DILocalVariable(name: "context", arg: 3, scope: !6973, file: !3, line: 416, type: !176)
!6978 = !DILocalVariable(name: "rv", arg: 4, scope: !6973, file: !3, line: 416, type: !2820)
!6979 = !DILocalVariable(name: "mcfg_res", scope: !6973, file: !3, line: 418, type: !211)
!6980 = !DILocation(line: 415, column: 53, scope: !6973)
!6981 = !DILocation(line: 415, column: 65, scope: !6973)
!6982 = !DILocation(line: 416, column: 12, scope: !6973)
!6983 = !DILocation(line: 416, column: 28, scope: !6973)
!6984 = !DILocation(line: 418, column: 2, scope: !6973)
!6985 = !DILocation(line: 418, column: 19, scope: !6973)
!6986 = !DILocation(line: 418, column: 30, scope: !6973)
!6987 = !DILocation(line: 420, column: 22, scope: !6973)
!6988 = !DILocation(line: 421, column: 29, scope: !6973)
!6989 = !DILocation(line: 420, column: 2, scope: !6973)
!6990 = !DILocation(line: 423, column: 6, scope: !6991)
!6991 = distinct !DILexicalBlock(scope: !6973, file: !3, line: 423, column: 6)
!6992 = !DILocation(line: 423, column: 16, scope: !6991)
!6993 = !DILocation(line: 423, column: 6, scope: !6973)
!6994 = !DILocation(line: 424, column: 3, scope: !6991)
!6995 = !DILocation(line: 426, column: 2, scope: !6973)
!6996 = !DILocation(line: 427, column: 1, scope: !6973)
!6997 = !DISubprogram(name: "acpi_walk_resources", scope: !6965, file: !6965, line: 819, type: !6998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6998 = !DISubroutineType(types: !6999)
!6999 = !{!274, !6972, !216, !7000, !176}
!7000 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_resource_callback", file: !6965, line: 791, baseType: !7001)
!7001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7002, size: 64)
!7002 = !DISubroutineType(types: !7003)
!7003 = !{!274, !7004, !176}
!7004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7005, size: 64)
!7005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !7006, line: 678, size: 544, elements: !7007)
!7006 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e234732d1e15cdbb059f7f7ffd573c0")
!7007 = !{!7008, !7009, !7010}
!7008 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7005, file: !7006, line: 679, baseType: !234, size: 32)
!7009 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !7005, file: !7006, line: 680, baseType: !234, size: 32, offset: 32)
!7010 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7005, file: !7006, line: 681, baseType: !7011, size: 480, offset: 64)
!7011 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !7006, line: 639, size: 480, elements: !7012)
!7012 = !{!7013, !7032, !7049, !7055, !7063, !7068, !7074, !7079, !7086, !7090, !7098, !7106, !7112, !7152, !7170, !7188, !7200, !7221, !7229, !7250, !7266, !7286, !7308, !7323, !7336, !7348, !7361, !7375, !7386, !7398, !7407}
!7013 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !7011, file: !7006, line: 640, baseType: !7014, size: 56)
!7014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !7006, line: 138, size: 56, elements: !7015)
!7015 = !{!7016, !7017, !7018, !7019, !7020, !7021, !7022}
!7016 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !7014, file: !7006, line: 139, baseType: !222, size: 8)
!7017 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !7014, file: !7006, line: 140, baseType: !222, size: 8, offset: 8)
!7018 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !7014, file: !7006, line: 141, baseType: !222, size: 8, offset: 16)
!7019 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !7014, file: !7006, line: 142, baseType: !222, size: 8, offset: 24)
!7020 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !7014, file: !7006, line: 143, baseType: !222, size: 8, offset: 32)
!7021 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !7014, file: !7006, line: 144, baseType: !222, size: 8, offset: 40)
!7022 = !DIDerivedType(tag: DW_TAG_member, scope: !7014, file: !7006, line: 145, baseType: !7023, size: 8, offset: 48)
!7023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7014, file: !7006, line: 145, size: 8, elements: !7024)
!7024 = !{!7025, !7026}
!7025 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !7023, file: !7006, line: 146, baseType: !222, size: 8)
!7026 = !DIDerivedType(tag: DW_TAG_member, scope: !7023, file: !7006, line: 147, baseType: !7027)
!7027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7023, file: !7006, line: 147, elements: !7028)
!7028 = !{!7029, !7031}
!7029 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !7027, file: !7006, line: 147, baseType: !7030)
!7030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7027, file: !7006, line: 147, elements: !1753)
!7031 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !7027, file: !7006, line: 147, baseType: !4336)
!7032 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !7011, file: !7006, line: 641, baseType: !7033, size: 40)
!7033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !7006, line: 151, size: 40, elements: !7034)
!7034 = !{!7035, !7036, !7037, !7038, !7039}
!7035 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7033, file: !7006, line: 152, baseType: !222, size: 8)
!7036 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !7033, file: !7006, line: 153, baseType: !222, size: 8, offset: 8)
!7037 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !7033, file: !7006, line: 154, baseType: !222, size: 8, offset: 16)
!7038 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !7033, file: !7006, line: 155, baseType: !222, size: 8, offset: 24)
!7039 = !DIDerivedType(tag: DW_TAG_member, scope: !7033, file: !7006, line: 156, baseType: !7040, size: 8, offset: 32)
!7040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7033, file: !7006, line: 156, size: 8, elements: !7041)
!7041 = !{!7042, !7043}
!7042 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !7040, file: !7006, line: 157, baseType: !222, size: 8)
!7043 = !DIDerivedType(tag: DW_TAG_member, scope: !7040, file: !7006, line: 158, baseType: !7044)
!7044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7040, file: !7006, line: 158, elements: !7045)
!7045 = !{!7046, !7048}
!7046 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_channels", scope: !7044, file: !7006, line: 158, baseType: !7047)
!7047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7044, file: !7006, line: 158, elements: !1753)
!7048 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !7044, file: !7006, line: 158, baseType: !4336)
!7049 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !7011, file: !7006, line: 642, baseType: !7050, size: 24)
!7050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !7006, line: 162, size: 24, elements: !7051)
!7051 = !{!7052, !7053, !7054}
!7052 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !7050, file: !7006, line: 163, baseType: !222, size: 8)
!7053 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !7050, file: !7006, line: 164, baseType: !222, size: 8, offset: 8)
!7054 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !7050, file: !7006, line: 165, baseType: !222, size: 8, offset: 16)
!7055 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !7011, file: !7006, line: 643, baseType: !7056, size: 56)
!7056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !7006, line: 173, size: 56, elements: !7057)
!7057 = !{!7058, !7059, !7060, !7061, !7062}
!7058 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !7056, file: !7006, line: 174, baseType: !222, size: 8)
!7059 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !7056, file: !7006, line: 175, baseType: !222, size: 8, offset: 8)
!7060 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !7056, file: !7006, line: 176, baseType: !222, size: 8, offset: 16)
!7061 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !7056, file: !7006, line: 177, baseType: !218, size: 16, offset: 24)
!7062 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !7056, file: !7006, line: 178, baseType: !218, size: 16, offset: 40)
!7063 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !7011, file: !7006, line: 644, baseType: !7064, size: 24)
!7064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !7006, line: 181, size: 24, elements: !7065)
!7065 = !{!7066, !7067}
!7066 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !7064, file: !7006, line: 182, baseType: !218, size: 16)
!7067 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !7064, file: !7006, line: 183, baseType: !222, size: 8, offset: 16)
!7068 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !7011, file: !7006, line: 645, baseType: !7069, size: 40)
!7069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !7006, line: 186, size: 40, elements: !7070)
!7070 = !{!7071, !7072, !7073}
!7071 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !7069, file: !7006, line: 187, baseType: !218, size: 16)
!7072 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !7069, file: !7006, line: 188, baseType: !218, size: 16, offset: 16)
!7073 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !7069, file: !7006, line: 189, baseType: !222, size: 8, offset: 32)
!7074 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !7011, file: !7006, line: 646, baseType: !7075, size: 16)
!7075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !7006, line: 201, size: 16, elements: !7076)
!7076 = !{!7077, !7078}
!7077 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !7075, file: !7006, line: 202, baseType: !218, size: 16)
!7078 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !7075, file: !7006, line: 203, baseType: !4336, offset: 16)
!7079 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !7011, file: !7006, line: 647, baseType: !7080, size: 152)
!7080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !7006, line: 208, size: 152, elements: !7081)
!7081 = !{!7082, !7083, !7084, !7085}
!7082 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !7080, file: !7006, line: 209, baseType: !218, size: 16)
!7083 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !7080, file: !7006, line: 210, baseType: !222, size: 8, offset: 16)
!7084 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !7080, file: !7006, line: 211, baseType: !4056, size: 128, offset: 24)
!7085 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !7080, file: !7006, line: 212, baseType: !4336, offset: 152)
!7086 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !7011, file: !7006, line: 648, baseType: !7087, size: 8)
!7087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !7006, line: 215, size: 8, elements: !7088)
!7088 = !{!7089}
!7089 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !7087, file: !7006, line: 216, baseType: !222, size: 8)
!7090 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !7011, file: !7006, line: 649, baseType: !7091, size: 72)
!7091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !7006, line: 219, size: 72, elements: !7092)
!7092 = !{!7093, !7094, !7095, !7096, !7097}
!7093 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !7091, file: !7006, line: 220, baseType: !222, size: 8)
!7094 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !7091, file: !7006, line: 221, baseType: !218, size: 16, offset: 8)
!7095 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !7091, file: !7006, line: 222, baseType: !218, size: 16, offset: 24)
!7096 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !7091, file: !7006, line: 223, baseType: !218, size: 16, offset: 40)
!7097 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !7091, file: !7006, line: 224, baseType: !218, size: 16, offset: 56)
!7098 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !7011, file: !7006, line: 650, baseType: !7099, size: 136)
!7099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !7006, line: 227, size: 136, elements: !7100)
!7100 = !{!7101, !7102, !7103, !7104, !7105}
!7101 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !7099, file: !7006, line: 228, baseType: !222, size: 8)
!7102 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !7099, file: !7006, line: 229, baseType: !234, size: 32, offset: 8)
!7103 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !7099, file: !7006, line: 230, baseType: !234, size: 32, offset: 40)
!7104 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !7099, file: !7006, line: 231, baseType: !234, size: 32, offset: 72)
!7105 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !7099, file: !7006, line: 232, baseType: !234, size: 32, offset: 104)
!7106 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !7011, file: !7006, line: 651, baseType: !7107, size: 72)
!7107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !7006, line: 235, size: 72, elements: !7108)
!7108 = !{!7109, !7110, !7111}
!7109 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !7107, file: !7006, line: 236, baseType: !222, size: 8)
!7110 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !7107, file: !7006, line: 237, baseType: !234, size: 32, offset: 8)
!7111 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !7107, file: !7006, line: 238, baseType: !234, size: 32, offset: 40)
!7112 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !7011, file: !7006, line: 652, baseType: !7113, size: 240)
!7113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !7006, line: 312, size: 240, elements: !7114)
!7114 = !{!7115, !7116, !7117, !7118, !7119, !7120, !7138, !7146}
!7115 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !7113, file: !7006, line: 313, baseType: !222, size: 8)
!7116 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7113, file: !7006, line: 313, baseType: !222, size: 8, offset: 8)
!7117 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !7113, file: !7006, line: 313, baseType: !222, size: 8, offset: 16)
!7118 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !7113, file: !7006, line: 313, baseType: !222, size: 8, offset: 24)
!7119 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !7113, file: !7006, line: 313, baseType: !222, size: 8, offset: 32)
!7120 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !7113, file: !7006, line: 313, baseType: !7121, size: 32, offset: 40)
!7121 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !7006, line: 255, size: 32, elements: !7122)
!7122 = !{!7123, !7130, !7137}
!7123 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !7121, file: !7006, line: 256, baseType: !7124, size: 32)
!7124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !7006, line: 241, size: 32, elements: !7125)
!7125 = !{!7126, !7127, !7128, !7129}
!7126 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !7124, file: !7006, line: 242, baseType: !222, size: 8)
!7127 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !7124, file: !7006, line: 243, baseType: !222, size: 8, offset: 8)
!7128 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !7124, file: !7006, line: 244, baseType: !222, size: 8, offset: 16)
!7129 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !7124, file: !7006, line: 245, baseType: !222, size: 8, offset: 24)
!7130 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !7121, file: !7006, line: 257, baseType: !7131, size: 32)
!7131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !7006, line: 248, size: 32, elements: !7132)
!7132 = !{!7133, !7134, !7135, !7136}
!7133 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !7131, file: !7006, line: 249, baseType: !222, size: 8)
!7134 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !7131, file: !7006, line: 250, baseType: !222, size: 8, offset: 8)
!7135 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !7131, file: !7006, line: 251, baseType: !222, size: 8, offset: 16)
!7136 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !7131, file: !7006, line: 252, baseType: !222, size: 8, offset: 24)
!7137 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !7121, file: !7006, line: 261, baseType: !222, size: 8)
!7138 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !7113, file: !7006, line: 313, baseType: !7139, size: 80, offset: 72)
!7139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !7006, line: 285, size: 80, elements: !7140)
!7140 = !{!7141, !7142, !7143, !7144, !7145}
!7141 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !7139, file: !7006, line: 286, baseType: !218, size: 16)
!7142 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !7139, file: !7006, line: 287, baseType: !218, size: 16, offset: 16)
!7143 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !7139, file: !7006, line: 288, baseType: !218, size: 16, offset: 32)
!7144 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !7139, file: !7006, line: 289, baseType: !218, size: 16, offset: 48)
!7145 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !7139, file: !7006, line: 290, baseType: !218, size: 16, offset: 64)
!7146 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !7113, file: !7006, line: 314, baseType: !7147, size: 88, offset: 152)
!7147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !7006, line: 269, size: 88, elements: !7148)
!7148 = !{!7149, !7150, !7151}
!7149 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !7147, file: !7006, line: 270, baseType: !222, size: 8)
!7150 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !7147, file: !7006, line: 271, baseType: !218, size: 16, offset: 8)
!7151 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !7147, file: !7006, line: 272, baseType: !216, size: 64, offset: 24)
!7152 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !7011, file: !7006, line: 653, baseType: !7153, size: 320)
!7153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !7006, line: 317, size: 320, elements: !7154)
!7154 = !{!7155, !7156, !7157, !7158, !7159, !7160, !7161, !7169}
!7155 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !7153, file: !7006, line: 318, baseType: !222, size: 8)
!7156 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7153, file: !7006, line: 318, baseType: !222, size: 8, offset: 8)
!7157 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !7153, file: !7006, line: 318, baseType: !222, size: 8, offset: 16)
!7158 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !7153, file: !7006, line: 318, baseType: !222, size: 8, offset: 24)
!7159 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !7153, file: !7006, line: 318, baseType: !222, size: 8, offset: 32)
!7160 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !7153, file: !7006, line: 318, baseType: !7121, size: 32, offset: 40)
!7161 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !7153, file: !7006, line: 318, baseType: !7162, size: 160, offset: 72)
!7162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !7006, line: 293, size: 160, elements: !7163)
!7163 = !{!7164, !7165, !7166, !7167, !7168}
!7164 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !7162, file: !7006, line: 294, baseType: !234, size: 32)
!7165 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !7162, file: !7006, line: 295, baseType: !234, size: 32, offset: 32)
!7166 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !7162, file: !7006, line: 296, baseType: !234, size: 32, offset: 64)
!7167 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !7162, file: !7006, line: 297, baseType: !234, size: 32, offset: 96)
!7168 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !7162, file: !7006, line: 298, baseType: !234, size: 32, offset: 128)
!7169 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !7153, file: !7006, line: 319, baseType: !7147, size: 88, offset: 232)
!7170 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !7011, file: !7006, line: 654, baseType: !7171, size: 480)
!7171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !7006, line: 322, size: 480, elements: !7172)
!7172 = !{!7173, !7174, !7175, !7176, !7177, !7178, !7179, !7187}
!7173 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !7171, file: !7006, line: 323, baseType: !222, size: 8)
!7174 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7171, file: !7006, line: 323, baseType: !222, size: 8, offset: 8)
!7175 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !7171, file: !7006, line: 323, baseType: !222, size: 8, offset: 16)
!7176 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !7171, file: !7006, line: 323, baseType: !222, size: 8, offset: 24)
!7177 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !7171, file: !7006, line: 323, baseType: !222, size: 8, offset: 32)
!7178 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !7171, file: !7006, line: 323, baseType: !7121, size: 32, offset: 40)
!7179 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !7171, file: !7006, line: 323, baseType: !7180, size: 320, offset: 72)
!7180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !7006, line: 301, size: 320, elements: !7181)
!7181 = !{!7182, !7183, !7184, !7185, !7186}
!7182 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !7180, file: !7006, line: 302, baseType: !198, size: 64)
!7183 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !7180, file: !7006, line: 303, baseType: !198, size: 64, offset: 64)
!7184 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !7180, file: !7006, line: 304, baseType: !198, size: 64, offset: 128)
!7185 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !7180, file: !7006, line: 305, baseType: !198, size: 64, offset: 192)
!7186 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !7180, file: !7006, line: 306, baseType: !198, size: 64, offset: 256)
!7187 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !7171, file: !7006, line: 324, baseType: !7147, size: 88, offset: 392)
!7188 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !7011, file: !7006, line: 655, baseType: !7189, size: 464)
!7189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !7006, line: 327, size: 464, elements: !7190)
!7190 = !{!7191, !7192, !7193, !7194, !7195, !7196, !7197, !7198, !7199}
!7191 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !7189, file: !7006, line: 328, baseType: !222, size: 8)
!7192 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7189, file: !7006, line: 328, baseType: !222, size: 8, offset: 8)
!7193 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !7189, file: !7006, line: 328, baseType: !222, size: 8, offset: 16)
!7194 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !7189, file: !7006, line: 328, baseType: !222, size: 8, offset: 24)
!7195 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !7189, file: !7006, line: 328, baseType: !222, size: 8, offset: 32)
!7196 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !7189, file: !7006, line: 328, baseType: !7121, size: 32, offset: 40)
!7197 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !7189, file: !7006, line: 328, baseType: !222, size: 8, offset: 72)
!7198 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !7189, file: !7006, line: 329, baseType: !7180, size: 320, offset: 80)
!7199 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !7189, file: !7006, line: 330, baseType: !198, size: 64, offset: 400)
!7200 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !7011, file: !7006, line: 656, baseType: !7201, size: 168)
!7201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !7006, line: 333, size: 168, elements: !7202)
!7202 = !{!7203, !7204, !7205, !7206, !7207, !7208, !7209, !7210}
!7203 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7201, file: !7006, line: 334, baseType: !222, size: 8)
!7204 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !7201, file: !7006, line: 335, baseType: !222, size: 8, offset: 8)
!7205 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !7201, file: !7006, line: 336, baseType: !222, size: 8, offset: 16)
!7206 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !7201, file: !7006, line: 337, baseType: !222, size: 8, offset: 24)
!7207 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !7201, file: !7006, line: 338, baseType: !222, size: 8, offset: 32)
!7208 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !7201, file: !7006, line: 339, baseType: !222, size: 8, offset: 40)
!7209 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !7201, file: !7006, line: 340, baseType: !7147, size: 88, offset: 48)
!7210 = !DIDerivedType(tag: DW_TAG_member, scope: !7201, file: !7006, line: 341, baseType: !7211, size: 32, offset: 136)
!7211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7201, file: !7006, line: 341, size: 32, elements: !7212)
!7212 = !{!7213, !7214}
!7213 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !7211, file: !7006, line: 342, baseType: !234, size: 32)
!7214 = !DIDerivedType(tag: DW_TAG_member, scope: !7211, file: !7006, line: 343, baseType: !7215)
!7215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7211, file: !7006, line: 343, elements: !7216)
!7216 = !{!7217, !7219}
!7217 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !7215, file: !7006, line: 343, baseType: !7218)
!7218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7215, file: !7006, line: 343, elements: !1753)
!7219 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !7215, file: !7006, line: 343, baseType: !7220)
!7220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, elements: !2017)
!7221 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !7011, file: !7006, line: 657, baseType: !7222, size: 96)
!7222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !7006, line: 347, size: 96, elements: !7223)
!7223 = !{!7224, !7225, !7226, !7227, !7228}
!7224 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !7222, file: !7006, line: 348, baseType: !222, size: 8)
!7225 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !7222, file: !7006, line: 349, baseType: !222, size: 8, offset: 8)
!7226 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !7222, file: !7006, line: 350, baseType: !222, size: 8, offset: 16)
!7227 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !7222, file: !7006, line: 351, baseType: !222, size: 8, offset: 24)
!7228 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !7222, file: !7006, line: 352, baseType: !198, size: 64, offset: 32)
!7229 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !7011, file: !7006, line: 658, baseType: !7230, size: 352)
!7230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !7006, line: 355, size: 352, elements: !7231)
!7231 = !{!7232, !7233, !7234, !7235, !7236, !7237, !7238, !7239, !7240, !7241, !7242, !7243, !7244, !7245, !7246, !7248}
!7232 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !7230, file: !7006, line: 356, baseType: !222, size: 8)
!7233 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !7230, file: !7006, line: 357, baseType: !222, size: 8, offset: 8)
!7234 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7230, file: !7006, line: 358, baseType: !222, size: 8, offset: 16)
!7235 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !7230, file: !7006, line: 359, baseType: !222, size: 8, offset: 24)
!7236 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !7230, file: !7006, line: 360, baseType: !222, size: 8, offset: 32)
!7237 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !7230, file: !7006, line: 361, baseType: !222, size: 8, offset: 40)
!7238 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !7230, file: !7006, line: 362, baseType: !222, size: 8, offset: 48)
!7239 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !7230, file: !7006, line: 363, baseType: !222, size: 8, offset: 56)
!7240 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !7230, file: !7006, line: 364, baseType: !222, size: 8, offset: 64)
!7241 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !7230, file: !7006, line: 365, baseType: !218, size: 16, offset: 72)
!7242 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !7230, file: !7006, line: 366, baseType: !218, size: 16, offset: 88)
!7243 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !7230, file: !7006, line: 367, baseType: !218, size: 16, offset: 104)
!7244 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !7230, file: !7006, line: 368, baseType: !218, size: 16, offset: 120)
!7245 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !7230, file: !7006, line: 369, baseType: !7147, size: 88, offset: 136)
!7246 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !7230, file: !7006, line: 370, baseType: !7247, size: 64, offset: 224)
!7247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!7248 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !7230, file: !7006, line: 371, baseType: !7249, size: 64, offset: 288)
!7249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!7250 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !7011, file: !7006, line: 659, baseType: !7251, size: 288)
!7251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !7006, line: 422, size: 288, elements: !7252)
!7252 = !{!7253, !7254, !7255, !7256, !7257, !7258, !7259, !7260, !7261, !7262, !7263, !7264, !7265}
!7253 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !7251, file: !7006, line: 423, baseType: !222, size: 8)
!7254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7251, file: !7006, line: 423, baseType: !222, size: 8, offset: 8)
!7255 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7251, file: !7006, line: 423, baseType: !222, size: 8, offset: 16)
!7256 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !7251, file: !7006, line: 423, baseType: !222, size: 8, offset: 24)
!7257 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !7251, file: !7006, line: 423, baseType: !222, size: 8, offset: 32)
!7258 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !7251, file: !7006, line: 423, baseType: !222, size: 8, offset: 40)
!7259 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !7251, file: !7006, line: 423, baseType: !218, size: 16, offset: 48)
!7260 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !7251, file: !7006, line: 423, baseType: !218, size: 16, offset: 64)
!7261 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !7251, file: !7006, line: 423, baseType: !7147, size: 88, offset: 80)
!7262 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !7251, file: !7006, line: 423, baseType: !7249, size: 64, offset: 168)
!7263 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !7251, file: !7006, line: 423, baseType: !222, size: 8, offset: 232)
!7264 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !7251, file: !7006, line: 424, baseType: !218, size: 16, offset: 240)
!7265 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !7251, file: !7006, line: 425, baseType: !234, size: 32, offset: 256)
!7266 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !7011, file: !7006, line: 660, baseType: !7267, size: 320)
!7267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !7006, line: 433, size: 320, elements: !7268)
!7268 = !{!7269, !7270, !7271, !7272, !7273, !7274, !7275, !7276, !7277, !7278, !7279, !7280, !7281, !7282, !7283, !7284, !7285}
!7269 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !7267, file: !7006, line: 434, baseType: !222, size: 8)
!7270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7267, file: !7006, line: 434, baseType: !222, size: 8, offset: 8)
!7271 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7267, file: !7006, line: 434, baseType: !222, size: 8, offset: 16)
!7272 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !7267, file: !7006, line: 434, baseType: !222, size: 8, offset: 24)
!7273 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !7267, file: !7006, line: 434, baseType: !222, size: 8, offset: 32)
!7274 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !7267, file: !7006, line: 434, baseType: !222, size: 8, offset: 40)
!7275 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !7267, file: !7006, line: 434, baseType: !218, size: 16, offset: 48)
!7276 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !7267, file: !7006, line: 434, baseType: !218, size: 16, offset: 64)
!7277 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !7267, file: !7006, line: 434, baseType: !7147, size: 88, offset: 80)
!7278 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !7267, file: !7006, line: 434, baseType: !7249, size: 64, offset: 168)
!7279 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !7267, file: !7006, line: 434, baseType: !222, size: 8, offset: 232)
!7280 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !7267, file: !7006, line: 435, baseType: !222, size: 8, offset: 240)
!7281 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !7267, file: !7006, line: 436, baseType: !222, size: 8, offset: 248)
!7282 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !7267, file: !7006, line: 437, baseType: !222, size: 8, offset: 256)
!7283 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !7267, file: !7006, line: 438, baseType: !222, size: 8, offset: 264)
!7284 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !7267, file: !7006, line: 439, baseType: !218, size: 16, offset: 272)
!7285 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !7267, file: !7006, line: 440, baseType: !234, size: 32, offset: 288)
!7286 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !7011, file: !7006, line: 661, baseType: !7287, size: 344)
!7287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !7006, line: 463, size: 344, elements: !7288)
!7288 = !{!7289, !7290, !7291, !7292, !7293, !7294, !7295, !7296, !7297, !7298, !7299, !7300, !7301, !7302, !7303, !7304, !7305, !7306, !7307}
!7289 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !7287, file: !7006, line: 464, baseType: !222, size: 8)
!7290 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7287, file: !7006, line: 464, baseType: !222, size: 8, offset: 8)
!7291 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7287, file: !7006, line: 464, baseType: !222, size: 8, offset: 16)
!7292 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !7287, file: !7006, line: 464, baseType: !222, size: 8, offset: 24)
!7293 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !7287, file: !7006, line: 464, baseType: !222, size: 8, offset: 32)
!7294 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !7287, file: !7006, line: 464, baseType: !222, size: 8, offset: 40)
!7295 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !7287, file: !7006, line: 464, baseType: !218, size: 16, offset: 48)
!7296 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !7287, file: !7006, line: 464, baseType: !218, size: 16, offset: 64)
!7297 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !7287, file: !7006, line: 464, baseType: !7147, size: 88, offset: 80)
!7298 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !7287, file: !7006, line: 464, baseType: !7249, size: 64, offset: 168)
!7299 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !7287, file: !7006, line: 464, baseType: !222, size: 8, offset: 232)
!7300 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !7287, file: !7006, line: 465, baseType: !222, size: 8, offset: 240)
!7301 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !7287, file: !7006, line: 466, baseType: !222, size: 8, offset: 248)
!7302 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !7287, file: !7006, line: 467, baseType: !222, size: 8, offset: 256)
!7303 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !7287, file: !7006, line: 468, baseType: !222, size: 8, offset: 264)
!7304 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !7287, file: !7006, line: 469, baseType: !222, size: 8, offset: 272)
!7305 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !7287, file: !7006, line: 470, baseType: !218, size: 16, offset: 280)
!7306 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !7287, file: !7006, line: 471, baseType: !218, size: 16, offset: 296)
!7307 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !7287, file: !7006, line: 472, baseType: !234, size: 32, offset: 312)
!7308 = !DIDerivedType(tag: DW_TAG_member, name: "csi2_serial_bus", scope: !7011, file: !7006, line: 662, baseType: !7309, size: 248)
!7309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_csi2_serialbus", file: !7006, line: 518, size: 248, elements: !7310)
!7310 = !{!7311, !7312, !7313, !7314, !7315, !7316, !7317, !7318, !7319, !7320, !7321, !7322}
!7311 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !7309, file: !7006, line: 519, baseType: !222, size: 8)
!7312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7309, file: !7006, line: 519, baseType: !222, size: 8, offset: 8)
!7313 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7309, file: !7006, line: 519, baseType: !222, size: 8, offset: 16)
!7314 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !7309, file: !7006, line: 519, baseType: !222, size: 8, offset: 24)
!7315 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !7309, file: !7006, line: 519, baseType: !222, size: 8, offset: 32)
!7316 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !7309, file: !7006, line: 519, baseType: !222, size: 8, offset: 40)
!7317 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !7309, file: !7006, line: 519, baseType: !218, size: 16, offset: 48)
!7318 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !7309, file: !7006, line: 519, baseType: !218, size: 16, offset: 64)
!7319 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !7309, file: !7006, line: 519, baseType: !7147, size: 88, offset: 80)
!7320 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !7309, file: !7006, line: 519, baseType: !7249, size: 64, offset: 168)
!7321 = !DIDerivedType(tag: DW_TAG_member, name: "local_port_instance", scope: !7309, file: !7006, line: 519, baseType: !222, size: 8, offset: 232)
!7322 = !DIDerivedType(tag: DW_TAG_member, name: "phy_type", scope: !7309, file: !7006, line: 520, baseType: !222, size: 8, offset: 240)
!7323 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !7011, file: !7006, line: 663, baseType: !7324, size: 232)
!7324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !7006, line: 407, size: 232, elements: !7325)
!7325 = !{!7326, !7327, !7328, !7329, !7330, !7331, !7332, !7333, !7334, !7335}
!7326 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !7324, file: !7006, line: 408, baseType: !222, size: 8)
!7327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7324, file: !7006, line: 408, baseType: !222, size: 8, offset: 8)
!7328 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7324, file: !7006, line: 408, baseType: !222, size: 8, offset: 16)
!7329 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !7324, file: !7006, line: 408, baseType: !222, size: 8, offset: 24)
!7330 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !7324, file: !7006, line: 408, baseType: !222, size: 8, offset: 32)
!7331 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !7324, file: !7006, line: 408, baseType: !222, size: 8, offset: 40)
!7332 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !7324, file: !7006, line: 408, baseType: !218, size: 16, offset: 48)
!7333 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !7324, file: !7006, line: 408, baseType: !218, size: 16, offset: 64)
!7334 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !7324, file: !7006, line: 408, baseType: !7147, size: 88, offset: 80)
!7335 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !7324, file: !7006, line: 408, baseType: !7249, size: 64, offset: 168)
!7336 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !7011, file: !7006, line: 664, baseType: !7337, size: 288)
!7337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !7006, line: 523, size: 288, elements: !7338)
!7338 = !{!7339, !7340, !7341, !7342, !7343, !7344, !7345, !7346, !7347}
!7339 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !7337, file: !7006, line: 524, baseType: !222, size: 8)
!7340 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !7337, file: !7006, line: 525, baseType: !222, size: 8, offset: 8)
!7341 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !7337, file: !7006, line: 526, baseType: !222, size: 8, offset: 16)
!7342 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !7337, file: !7006, line: 527, baseType: !218, size: 16, offset: 24)
!7343 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !7337, file: !7006, line: 528, baseType: !218, size: 16, offset: 40)
!7344 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !7337, file: !7006, line: 529, baseType: !218, size: 16, offset: 56)
!7345 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !7337, file: !7006, line: 530, baseType: !7147, size: 88, offset: 72)
!7346 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !7337, file: !7006, line: 531, baseType: !7247, size: 64, offset: 160)
!7347 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !7337, file: !7006, line: 532, baseType: !7249, size: 64, offset: 224)
!7348 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !7011, file: !7006, line: 665, baseType: !7349, size: 312)
!7349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !7006, line: 535, size: 312, elements: !7350)
!7350 = !{!7351, !7352, !7353, !7354, !7355, !7356, !7357, !7358, !7359, !7360}
!7351 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !7349, file: !7006, line: 536, baseType: !222, size: 8)
!7352 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7349, file: !7006, line: 537, baseType: !222, size: 8, offset: 8)
!7353 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !7349, file: !7006, line: 538, baseType: !222, size: 8, offset: 16)
!7354 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !7349, file: !7006, line: 539, baseType: !222, size: 8, offset: 24)
!7355 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !7349, file: !7006, line: 540, baseType: !234, size: 32, offset: 32)
!7356 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !7349, file: !7006, line: 541, baseType: !218, size: 16, offset: 64)
!7357 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !7349, file: !7006, line: 542, baseType: !218, size: 16, offset: 80)
!7358 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !7349, file: !7006, line: 543, baseType: !7147, size: 88, offset: 96)
!7359 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !7349, file: !7006, line: 544, baseType: !7247, size: 64, offset: 184)
!7360 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !7349, file: !7006, line: 545, baseType: !7249, size: 64, offset: 248)
!7361 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !7011, file: !7006, line: 666, baseType: !7362, size: 256)
!7362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !7006, line: 574, size: 256, elements: !7363)
!7363 = !{!7364, !7365, !7366, !7367, !7368, !7369, !7374}
!7364 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !7362, file: !7006, line: 575, baseType: !222, size: 8)
!7365 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7362, file: !7006, line: 576, baseType: !222, size: 8, offset: 8)
!7366 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !7362, file: !7006, line: 577, baseType: !218, size: 16, offset: 16)
!7367 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !7362, file: !7006, line: 578, baseType: !218, size: 16, offset: 32)
!7368 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !7362, file: !7006, line: 579, baseType: !7247, size: 64, offset: 48)
!7369 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !7362, file: !7006, line: 580, baseType: !7370, size: 80, offset: 112)
!7370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !7006, line: 264, size: 80, elements: !7371)
!7371 = !{!7372, !7373}
!7372 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !7370, file: !7006, line: 265, baseType: !218, size: 16)
!7373 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !7370, file: !7006, line: 266, baseType: !216, size: 64, offset: 16)
!7374 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !7362, file: !7006, line: 581, baseType: !7249, size: 64, offset: 192)
!7375 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !7011, file: !7006, line: 667, baseType: !7376, size: 288)
!7376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !7006, line: 584, size: 288, elements: !7377)
!7377 = !{!7378, !7379, !7380, !7381, !7382, !7383, !7384, !7385}
!7378 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !7376, file: !7006, line: 585, baseType: !222, size: 8)
!7379 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7376, file: !7006, line: 586, baseType: !222, size: 8, offset: 8)
!7380 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !7376, file: !7006, line: 587, baseType: !222, size: 8, offset: 16)
!7381 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !7376, file: !7006, line: 588, baseType: !218, size: 16, offset: 24)
!7382 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !7376, file: !7006, line: 589, baseType: !218, size: 16, offset: 40)
!7383 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !7376, file: !7006, line: 590, baseType: !7147, size: 88, offset: 56)
!7384 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !7376, file: !7006, line: 591, baseType: !7370, size: 80, offset: 144)
!7385 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !7376, file: !7006, line: 592, baseType: !7249, size: 64, offset: 224)
!7386 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !7011, file: !7006, line: 668, baseType: !7387, size: 312)
!7387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !7006, line: 595, size: 312, elements: !7388)
!7388 = !{!7389, !7390, !7391, !7392, !7393, !7394, !7395, !7396, !7397}
!7389 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !7387, file: !7006, line: 596, baseType: !222, size: 8)
!7390 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7387, file: !7006, line: 597, baseType: !222, size: 8, offset: 8)
!7391 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !7387, file: !7006, line: 598, baseType: !222, size: 8, offset: 16)
!7392 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !7387, file: !7006, line: 599, baseType: !222, size: 8, offset: 24)
!7393 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !7387, file: !7006, line: 600, baseType: !234, size: 32, offset: 32)
!7394 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !7387, file: !7006, line: 601, baseType: !218, size: 16, offset: 64)
!7395 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !7387, file: !7006, line: 602, baseType: !7147, size: 88, offset: 80)
!7396 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !7387, file: !7006, line: 603, baseType: !7370, size: 80, offset: 168)
!7397 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !7387, file: !7006, line: 604, baseType: !7249, size: 64, offset: 248)
!7398 = !DIDerivedType(tag: DW_TAG_member, name: "clock_input", scope: !7011, file: !7006, line: 669, baseType: !7399, size: 160)
!7399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_clock_input", file: !7006, line: 548, size: 160, elements: !7400)
!7400 = !{!7401, !7402, !7403, !7404, !7405, !7406}
!7401 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !7399, file: !7006, line: 549, baseType: !222, size: 8)
!7402 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !7399, file: !7006, line: 550, baseType: !222, size: 8, offset: 8)
!7403 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !7399, file: !7006, line: 551, baseType: !222, size: 8, offset: 16)
!7404 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_divisor", scope: !7399, file: !7006, line: 552, baseType: !218, size: 16, offset: 24)
!7405 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_numerator", scope: !7399, file: !7006, line: 553, baseType: !234, size: 32, offset: 40)
!7406 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !7399, file: !7006, line: 554, baseType: !7147, size: 88, offset: 72)
!7407 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !7011, file: !7006, line: 673, baseType: !7408, size: 72)
!7408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !7006, line: 309, size: 72, elements: !7409)
!7409 = !{!7410, !7411, !7412, !7413, !7414, !7415}
!7410 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !7408, file: !7006, line: 310, baseType: !222, size: 8)
!7411 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !7408, file: !7006, line: 310, baseType: !222, size: 8, offset: 8)
!7412 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !7408, file: !7006, line: 310, baseType: !222, size: 8, offset: 16)
!7413 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !7408, file: !7006, line: 310, baseType: !222, size: 8, offset: 24)
!7414 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !7408, file: !7006, line: 310, baseType: !222, size: 8, offset: 32)
!7415 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !7408, file: !7006, line: 310, baseType: !7121, size: 32, offset: 40)
!7416 = distinct !DISubprogram(name: "check_mcfg_resource", scope: !3, file: !3, line: 379, type: !7002, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7417)
!7417 = !{!7418, !7419, !7420, !7421, !7422, !7423}
!7418 = !DILocalVariable(name: "res", arg: 1, scope: !7416, file: !3, line: 379, type: !7004)
!7419 = !DILocalVariable(name: "data", arg: 2, scope: !7416, file: !3, line: 379, type: !176)
!7420 = !DILocalVariable(name: "mcfg_res", scope: !7416, file: !3, line: 381, type: !211)
!7421 = !DILocalVariable(name: "address", scope: !7416, file: !3, line: 382, type: !7171)
!7422 = !DILocalVariable(name: "status", scope: !7416, file: !3, line: 383, type: !274)
!7423 = !DILocalVariable(name: "fixmem32", scope: !7424, file: !3, line: 386, type: !7426)
!7424 = distinct !DILexicalBlock(scope: !7425, file: !3, line: 385, column: 54)
!7425 = distinct !DILexicalBlock(scope: !7416, file: !3, line: 385, column: 6)
!7426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7107, size: 64)
!7427 = !DILocation(line: 379, column: 62, scope: !7416)
!7428 = !DILocation(line: 379, column: 73, scope: !7416)
!7429 = !DILocation(line: 381, column: 2, scope: !7416)
!7430 = !DILocation(line: 381, column: 19, scope: !7416)
!7431 = !DILocation(line: 381, column: 30, scope: !7416)
!7432 = !DILocation(line: 382, column: 2, scope: !7416)
!7433 = !DILocation(line: 382, column: 33, scope: !7416)
!7434 = !DILocation(line: 383, column: 2, scope: !7416)
!7435 = !DILocation(line: 383, column: 14, scope: !7416)
!7436 = !DILocation(line: 385, column: 6, scope: !7425)
!7437 = !DILocation(line: 385, column: 11, scope: !7425)
!7438 = !DILocation(line: 385, column: 16, scope: !7425)
!7439 = !DILocation(line: 385, column: 6, scope: !7416)
!7440 = !DILocation(line: 386, column: 3, scope: !7424)
!7441 = !DILocation(line: 386, column: 40, scope: !7424)
!7442 = !DILocation(line: 387, column: 5, scope: !7424)
!7443 = !DILocation(line: 387, column: 10, scope: !7424)
!7444 = !DILocation(line: 388, column: 8, scope: !7445)
!7445 = distinct !DILexicalBlock(scope: !7424, file: !3, line: 388, column: 7)
!7446 = !DILocation(line: 388, column: 7, scope: !7424)
!7447 = !DILocation(line: 389, column: 4, scope: !7445)
!7448 = !DILocation(line: 390, column: 8, scope: !7449)
!7449 = distinct !DILexicalBlock(scope: !7424, file: !3, line: 390, column: 7)
!7450 = !DILocation(line: 390, column: 18, scope: !7449)
!7451 = !DILocation(line: 390, column: 27, scope: !7449)
!7452 = !DILocation(line: 390, column: 37, scope: !7449)
!7453 = !DILocation(line: 390, column: 24, scope: !7449)
!7454 = !DILocation(line: 390, column: 46, scope: !7449)
!7455 = !DILocation(line: 391, column: 8, scope: !7449)
!7456 = !DILocation(line: 391, column: 18, scope: !7449)
!7457 = !DILocation(line: 391, column: 25, scope: !7449)
!7458 = !DILocation(line: 391, column: 35, scope: !7449)
!7459 = !DILocation(line: 392, column: 11, scope: !7449)
!7460 = !DILocation(line: 392, column: 21, scope: !7449)
!7461 = !DILocation(line: 391, column: 43, scope: !7449)
!7462 = !DILocation(line: 391, column: 24, scope: !7449)
!7463 = !DILocation(line: 391, column: 22, scope: !7449)
!7464 = !DILocation(line: 390, column: 7, scope: !7424)
!7465 = !DILocation(line: 393, column: 4, scope: !7466)
!7466 = distinct !DILexicalBlock(scope: !7449, file: !3, line: 392, column: 39)
!7467 = !DILocation(line: 393, column: 14, scope: !7466)
!7468 = !DILocation(line: 393, column: 20, scope: !7466)
!7469 = !DILocation(line: 394, column: 4, scope: !7466)
!7470 = !DILocation(line: 396, column: 2, scope: !7425)
!7471 = !DILocation(line: 396, column: 2, scope: !7424)
!7472 = !DILocation(line: 397, column: 7, scope: !7473)
!7473 = distinct !DILexicalBlock(scope: !7416, file: !3, line: 397, column: 6)
!7474 = !DILocation(line: 397, column: 12, scope: !7473)
!7475 = !DILocation(line: 397, column: 17, scope: !7473)
!7476 = !DILocation(line: 397, column: 50, scope: !7473)
!7477 = !DILocation(line: 398, column: 7, scope: !7473)
!7478 = !DILocation(line: 398, column: 12, scope: !7473)
!7479 = !DILocation(line: 398, column: 17, scope: !7473)
!7480 = !DILocation(line: 397, column: 6, scope: !7416)
!7481 = !DILocation(line: 399, column: 3, scope: !7473)
!7482 = !DILocation(line: 401, column: 38, scope: !7416)
!7483 = !DILocation(line: 401, column: 11, scope: !7416)
!7484 = !DILocation(line: 401, column: 9, scope: !7416)
!7485 = !DILocation(line: 402, column: 6, scope: !7486)
!7486 = distinct !DILexicalBlock(scope: !7416, file: !3, line: 402, column: 6)
!7487 = !DILocation(line: 402, column: 27, scope: !7486)
!7488 = !DILocation(line: 403, column: 14, scope: !7486)
!7489 = !DILocation(line: 403, column: 22, scope: !7486)
!7490 = !DILocation(line: 403, column: 37, scope: !7486)
!7491 = !DILocation(line: 403, column: 43, scope: !7486)
!7492 = !DILocation(line: 404, column: 14, scope: !7486)
!7493 = !DILocation(line: 404, column: 6, scope: !7486)
!7494 = !DILocation(line: 404, column: 28, scope: !7486)
!7495 = !DILocation(line: 402, column: 6, scope: !7416)
!7496 = !DILocation(line: 405, column: 3, scope: !7486)
!7497 = !DILocation(line: 407, column: 7, scope: !7498)
!7498 = distinct !DILexicalBlock(scope: !7416, file: !3, line: 407, column: 6)
!7499 = !DILocation(line: 407, column: 17, scope: !7498)
!7500 = !DILocation(line: 407, column: 34, scope: !7498)
!7501 = !DILocation(line: 407, column: 42, scope: !7498)
!7502 = !DILocation(line: 407, column: 23, scope: !7498)
!7503 = !DILocation(line: 407, column: 51, scope: !7498)
!7504 = !DILocation(line: 408, column: 7, scope: !7498)
!7505 = !DILocation(line: 408, column: 17, scope: !7498)
!7506 = !DILocation(line: 408, column: 32, scope: !7498)
!7507 = !DILocation(line: 408, column: 40, scope: !7498)
!7508 = !DILocation(line: 408, column: 58, scope: !7498)
!7509 = !DILocation(line: 408, column: 66, scope: !7498)
!7510 = !DILocation(line: 408, column: 48, scope: !7498)
!7511 = !DILocation(line: 408, column: 21, scope: !7498)
!7512 = !DILocation(line: 407, column: 6, scope: !7416)
!7513 = !DILocation(line: 409, column: 3, scope: !7514)
!7514 = distinct !DILexicalBlock(scope: !7498, file: !3, line: 408, column: 84)
!7515 = !DILocation(line: 409, column: 13, scope: !7514)
!7516 = !DILocation(line: 409, column: 19, scope: !7514)
!7517 = !DILocation(line: 410, column: 3, scope: !7514)
!7518 = !DILocation(line: 412, column: 2, scope: !7416)
!7519 = !DILocation(line: 413, column: 1, scope: !7416)
!7520 = !DISubprogram(name: "acpi_resource_to_address64", scope: !6965, file: !6965, line: 831, type: !7521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7521 = !DISubroutineType(types: !7522)
!7522 = !{!274, !7004, !7523}
!7523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7171, size: 64)
