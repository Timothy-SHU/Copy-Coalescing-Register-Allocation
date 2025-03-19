; ModuleID = 'arch/x86/kernel/mpparse.c'
source_filename = "arch/x86/kernel/mpparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init..kmod_mpparse__306_933_update_mp_table\22, \22a\22\09\09"
module asm "__initcall__kmod_mpparse__306_933_update_mp_table7:\09\09\09"
module asm ".long\09__initstub__kmod_mpparse__306_933_update_mp_table7 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ioapic_domain_cfg = type { i32, ptr, ptr }
%struct.mpc_intsrc = type { i8, i8, i16, i8, i8, i8, i8 }
%struct.mpf_intel = type { [4 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mpc_cpu = type { i8, i8, i8, i8, i32, i32, [2 x i32] }
%struct.mpc_lintsrc = type { i8, i8, i16, i8, i8, i8, i8 }
%struct.anon = type { i8, i8, i8, i8 }
%struct.mpc_bus = type { i8, i8, [6 x i8] }
%struct.mpc_table = type { [4 x i8], i16, i8, i8, [8 x i8], [12 x i8], i32, i16, i16, i32, i32 }
%struct.mpc_ioapic = type { i8, i8, i8, i8, i32 }

@smp_found_config = external dso_local global i32, align 4
@mpf_found = internal global i8 0, align 1, !dbg !0
@acpi_lapic = external dso_local global i32, align 4
@acpi_ioapic = external dso_local global i32, align 4
@mpf_base = internal global i64 0, align 8, !dbg !345
@.str = private unnamed_addr constant [35 x i8] c"\013MPTABLE: error mapping MP table\0A\00", align 1, !dbg !302
@.str.1 = private unnamed_addr constant [44 x i8] c"\016Intel MultiProcessor Specification v1.%d\0A\00", align 1, !dbg !307
@.str.2 = private unnamed_addr constant [32 x i8] c"\016Default MP configuration #%d\0A\00", align 1, !dbg !312
@.str.3 = private unnamed_addr constant [26 x i8] c"arch/x86/kernel/mpparse.c\00", align 1, !dbg !317
@.str.4 = private unnamed_addr constant [18 x i8] c"\016Processors: %d\0A\00", align 1, !dbg !322
@num_processors = external dso_local global i32, align 4
@__setup_str_update_mptable_setup = internal constant [15 x i8] c"update_mptable\00", section ".init.rodata", align 1, !dbg !496
@__setup_update_mptable_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_update_mptable_setup, ptr @update_mptable_setup, i32 1 }, section ".init.setup", align 8, !dbg !327
@__setup_str_parse_alloc_mptable_opt = internal constant [14 x i8] c"alloc_mptable\00", section ".init.rodata", align 1, !dbg !499
@__setup_parse_alloc_mptable_opt = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_alloc_mptable_opt, ptr @parse_alloc_mptable_opt, i32 1 }, section ".init.setup", align 8, !dbg !341
@enable_update_mptable = hidden global i32 0, align 4, !dbg !347
@alloc_mptable = internal global i32 0, section ".init.data", align 4, !dbg !351
@mpc_new_length = internal global i64 4096, section ".init.data", align 8, !dbg !502
@mpc_new_phys = internal global i64 0, section ".init.data", align 8, !dbg !349
@__UNIQUE_ID___addressable___initstub__kmod_mpparse__306_933_update_mp_table7307 = internal global ptr @__initstub__kmod_mpparse__306_933_update_mp_table7, section ".discard.addressable", align 8, !dbg !343
@__const.construct_default_ISA_mptable.linttypes = private unnamed_addr constant [2 x i32] [i32 3, i32 1], align 4
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !353
@disabled_cpus = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c" (Bootup-CPU)\00", align 1, !dbg !358
@.str.7 = private unnamed_addr constant [19 x i8] c"\016Processor #%d%s\0A\00", align 1, !dbg !363
@.str.8 = private unnamed_addr constant [41 x i8] c"\013???\0AUnknown standard configuration %d\0A\00", align 1, !dbg !368
@.str.9 = private unnamed_addr constant [7 x i8] c"ISA   \00", align 1, !dbg !373
@.str.10 = private unnamed_addr constant [7 x i8] c"EISA  \00", align 1, !dbg !378
@.str.11 = private unnamed_addr constant [7 x i8] c"PCI   \00", align 1, !dbg !380
@mp_bus_not_pci = external dso_local global [4 x i64], align 16
@.str.12 = private unnamed_addr constant [4 x i8] c"ISA\00", align 1, !dbg !382
@.str.13 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1, !dbg !384
@.str.14 = private unnamed_addr constant [33 x i8] c"\014Unknown bustype %s - ignoring\0A\00", align 1, !dbg !386
@apic_verbosity = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"Bus #%d is %s\0A\00", align 1, !dbg !391
@mp_ioapic_irqdomain_ops = external dso_local constant %struct.irq_domain_ops, align 8
@__const.MP_ioapic_info.cfg = private unnamed_addr constant %struct.ioapic_domain_cfg { i32 1, ptr @mp_ioapic_irqdomain_ops, ptr null }, align 8
@gsi_top = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [68 x i8] c"\016ISA/PCI bus type with no IRQ information... falling back to ELCR\0A\00", align 1, !dbg !396
@.str.17 = private unnamed_addr constant [48 x i8] c"\013ELCR contains invalid data... not using ELCR\0A\00", align 1, !dbg !401
@.str.18 = private unnamed_addr constant [41 x i8] c"\016Using ELCR to identify PCI interrupts\0A\00", align 1, !dbg !406
@.str.19 = private unnamed_addr constant [80 x i8] c"Lint: type %d, pol %d, trig %d, bus %02x, IRQ %02x, APIC ID %x, APIC LINT %02x\0A\00", align 1, !dbg !408
@.str.20 = private unnamed_addr constant [42 x i8] c"\013BIOS bug, MP table errors detected!...\0A\00", align 1, !dbg !413
@.str.21 = private unnamed_addr constant [52 x i8] c"\01c... disabling SMP support. (tell your hw vendor)\0A\00", align 1, !dbg !418
@mp_irq_entries = external dso_local global i32, align 4
@.str.22 = private unnamed_addr constant [83 x i8] c"\013BIOS bug, no explicit IRQ entries, using default mptable. (tell your hw vendor)\0A\00", align 1, !dbg !423
@.str.23 = private unnamed_addr constant [16 x i8] c"  mpc: %lx-%lx\0A\00", align 1, !dbg !428
@.str.24 = private unnamed_addr constant [38 x i8] c"\013MPTABLE: no processors registered!\0A\00", align 1, !dbg !433
@.str.25 = private unnamed_addr constant [5 x i8] c"PCMP\00", align 1, !dbg !438
@.str.26 = private unnamed_addr constant [38 x i8] c"\013MPTABLE: bad signature [%c%c%c%c]!\0A\00", align 1, !dbg !443
@.str.27 = private unnamed_addr constant [28 x i8] c"\013MPTABLE: checksum error!\0A\00", align 1, !dbg !445
@.str.28 = private unnamed_addr constant [37 x i8] c"\013MPTABLE: bad table version (%d)!!\0A\00", align 1, !dbg !450
@.str.29 = private unnamed_addr constant [37 x i8] c"\013MPTABLE: null local APIC address!\0A\00", align 1, !dbg !455
@.str.30 = private unnamed_addr constant [23 x i8] c"\016MPTABLE: OEM ID: %s\0A\00", align 1, !dbg !457
@.str.31 = private unnamed_addr constant [27 x i8] c"\016MPTABLE: Product ID: %s\0A\00", align 1, !dbg !462
@.str.32 = private unnamed_addr constant [26 x i8] c"\016MPTABLE: APIC at: 0x%X\0A\00", align 1, !dbg !467
@.str.33 = private unnamed_addr constant [50 x i8] c"\013Your mptable is wrong, contact your HW vendor!\0A\00", align 1, !dbg !469
@.str.34 = private unnamed_addr constant [11 x i8] c"\01ctype %x\0A\00", align 1, !dbg !474
@.str.35 = private unnamed_addr constant [3 x i8] c"\013\00", align 1, !dbg !479
@.str.36 = private unnamed_addr constant [3 x i8] c"  \00", align 1, !dbg !484
@.str.37 = private unnamed_addr constant [39 x i8] c"Scan for SMP in [mem %#010lx-%#010lx]\0A\00", align 1, !dbg !486
@.str.38 = private unnamed_addr constant [47 x i8] c"\016found SMP MP-table at [mem %#010lx-%#010lx]\0A\00", align 1, !dbg !491
@page_offset_base = external dso_local global i64, align 8
@pci_routeirq = external dso_local global i32, align 4
@.str.39 = private unnamed_addr constant [40 x i8] c"\013MPTABLE: mpf early_memremap() failed\0A\00", align 1, !dbg !504
@.str.40 = private unnamed_addr constant [40 x i8] c"\013MPTABLE: mpc early_memremap() failed\0A\00", align 1, !dbg !509
@.str.41 = private unnamed_addr constant [13 x i8] c"\016mpf: %llx\0A\00", align 1, !dbg !511
@.str.42 = private unnamed_addr constant [15 x i8] c"\016physptr: %x\0A\00", align 1, !dbg !516
@.str.43 = private unnamed_addr constant [54 x i8] c"\016mpc_new_length is %ld, please use alloc_mptable=8k\0A\00", align 1, !dbg !518
@.str.44 = private unnamed_addr constant [53 x i8] c"\016mpc is readonly, please try alloc_mptable instead\0A\00", align 1, !dbg !523
@.str.45 = private unnamed_addr constant [29 x i8] c"\016use in-position replacing\0A\00", align 1, !dbg !528
@.str.46 = private unnamed_addr constant [44 x i8] c"\013MPTABLE: new mpc early_memremap() failed\0A\00", align 1, !dbg !533
@.str.47 = private unnamed_addr constant [44 x i8] c"\013MPTABLE: new mpf early_memremap() failed\0A\00", align 1, !dbg !535
@.str.48 = private unnamed_addr constant [15 x i8] c"\016mpf new: %x\0A\00", align 1, !dbg !537
@.str.49 = private unnamed_addr constant [19 x i8] c"\016physptr new: %x\0A\00", align 1, !dbg !539
@.str.50 = private unnamed_addr constant [17 x i8] c"\016mpc_length %x\0A\00", align 1, !dbg !541
@irq_used = internal global [1024 x i8] zeroinitializer, section ".init.data", align 16, !dbg !552
@mp_irqs = external dso_local global [1024 x %struct.mpc_intsrc], align 16
@.str.51 = private unnamed_addr constant [13 x i8] c"*NEW* found\0A\00", align 1, !dbg !546
@m_spare = internal global [20 x ptr] zeroinitializer, section ".init.data", align 16, !dbg !559
@.str.52 = private unnamed_addr constant [5 x i8] c"OLD \00", align 1, !dbg !548
@.str.53 = private unnamed_addr constant [5 x i8] c"NEW \00", align 1, !dbg !550
@.str.54 = private unnamed_addr constant [45 x i8] c"update_mptable: No spare slots (length: %x)\0A\00", align 1, !dbg !564
@.str.55 = private unnamed_addr constant [78 x i8] c"Int: type %d, pol %d, trig %d, bus %02x, IRQ %02x, APIC ID %x, APIC INT %02x\0A\00", align 1, !dbg !569
@llvm.compiler.used = appending global [3 x ptr] [ptr @__setup_update_mptable_setup, ptr @__setup_parse_alloc_mptable_opt, ptr @__UNIQUE_ID___addressable___initstub__kmod_mpparse__306_933_update_mp_table7307], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @default_get_smp_config(i32 noundef %early) #0 section ".init.text" align 16 !dbg !586 {
entry:
  %early.addr = alloca i32, align 4
  %mpf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %tmp59 = alloca i32, align 4
  store i32 %early, ptr %early.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %early.addr, metadata !590, metadata !DIExpression()), !dbg !593
  call void @llvm.lifetime.start.p0(i64 8, ptr %mpf) #12, !dbg !594
  call void @llvm.dbg.declare(metadata ptr %mpf, metadata !591, metadata !DIExpression()), !dbg !595
  %0 = load i32, ptr @smp_found_config, align 4, !dbg !596
  %tobool = icmp ne i32 %0, 0, !dbg !596
  br i1 %tobool, label %if.end, label %if.then, !dbg !598

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !599

if.end:                                           ; preds = %entry
  %1 = load i8, ptr @mpf_found, align 1, !dbg !600, !range !602, !noundef !603
  %tobool1 = trunc i8 %1 to i1, !dbg !600
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !604

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !605

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr @acpi_lapic, align 4, !dbg !606
  %tobool4 = icmp ne i32 %2, 0, !dbg !606
  br i1 %tobool4, label %land.lhs.true, label %if.end7, !dbg !608

land.lhs.true:                                    ; preds = %if.end3
  %3 = load i32, ptr %early.addr, align 4, !dbg !609
  %tobool5 = icmp ne i32 %3, 0, !dbg !609
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !610

if.then6:                                         ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !611

if.end7:                                          ; preds = %land.lhs.true, %if.end3
  %4 = load i32, ptr @acpi_lapic, align 4, !dbg !612
  %tobool8 = icmp ne i32 %4, 0, !dbg !612
  br i1 %tobool8, label %land.lhs.true9, label %if.end12, !dbg !614

land.lhs.true9:                                   ; preds = %if.end7
  %5 = load i32, ptr @acpi_ioapic, align 4, !dbg !615
  %tobool10 = icmp ne i32 %5, 0, !dbg !615
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !616

if.then11:                                        ; preds = %land.lhs.true9
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !617

if.end12:                                         ; preds = %land.lhs.true9, %if.end7
  %6 = load i64, ptr @mpf_base, align 8, !dbg !618
  %call = call ptr @early_memremap(i64 noundef %6, i64 noundef 16) #13, !dbg !619
  store ptr %call, ptr %mpf, align 8, !dbg !620
  %7 = load ptr, ptr %mpf, align 8, !dbg !621
  %tobool13 = icmp ne ptr %7, null, !dbg !621
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !623

if.then14:                                        ; preds = %if.end12
  br label %do.body, !dbg !624

do.body:                                          ; preds = %if.then14
  br label %do.cond, !dbg !627

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !627

do.end:                                           ; preds = %do.cond
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #14, !dbg !624
  store i32 %call15, ptr %tmp, align 4, !dbg !627
  %8 = load i32, ptr %tmp, align 4, !dbg !624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !629

if.end16:                                         ; preds = %if.end12
  br label %do.body17, !dbg !630

do.body17:                                        ; preds = %if.end16
  br label %do.cond18, !dbg !632

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !632

do.end19:                                         ; preds = %do.cond18
  %9 = load ptr, ptr %mpf, align 8, !dbg !630
  %specification = getelementptr inbounds %struct.mpf_intel, ptr %9, i32 0, i32 3, !dbg !630
  %10 = load i8, ptr %specification, align 1, !dbg !630
  %conv = zext i8 %10 to i32, !dbg !630
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %conv) #14, !dbg !630
  store i32 %call21, ptr %tmp20, align 4, !dbg !632
  %11 = load i32, ptr %tmp20, align 4, !dbg !630
  %12 = load ptr, ptr %mpf, align 8, !dbg !634
  %feature1 = getelementptr inbounds %struct.mpf_intel, ptr %12, i32 0, i32 5, !dbg !636
  %13 = load i8, ptr %feature1, align 1, !dbg !636
  %tobool22 = icmp ne i8 %13, 0, !dbg !634
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !637

if.then23:                                        ; preds = %do.end19
  %14 = load i32, ptr %early.addr, align 4, !dbg !638
  %tobool24 = icmp ne i32 %14, 0, !dbg !638
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !641

if.then25:                                        ; preds = %if.then23
  call void @register_lapic_address(i64 noundef 4276092928) #13, !dbg !642
  br label %out, !dbg !644

if.end26:                                         ; preds = %if.then23
  br label %do.body27, !dbg !645

do.body27:                                        ; preds = %if.end26
  br label %do.cond28, !dbg !647

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !647

do.end29:                                         ; preds = %do.cond28
  %15 = load ptr, ptr %mpf, align 8, !dbg !645
  %feature131 = getelementptr inbounds %struct.mpf_intel, ptr %15, i32 0, i32 5, !dbg !645
  %16 = load i8, ptr %feature131, align 1, !dbg !645
  %conv32 = zext i8 %16 to i32, !dbg !645
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %conv32) #14, !dbg !645
  store i32 %call33, ptr %tmp30, align 4, !dbg !647
  %17 = load i32, ptr %tmp30, align 4, !dbg !645
  %18 = load ptr, ptr %mpf, align 8, !dbg !649
  %feature134 = getelementptr inbounds %struct.mpf_intel, ptr %18, i32 0, i32 5, !dbg !650
  %19 = load i8, ptr %feature134, align 1, !dbg !650
  %conv35 = zext i8 %19 to i32, !dbg !649
  call void @construct_default_ISA_mptable(i32 noundef %conv35) #14, !dbg !651
  br label %if.end53, !dbg !652

if.else:                                          ; preds = %do.end19
  %20 = load ptr, ptr %mpf, align 8, !dbg !653
  %physptr = getelementptr inbounds %struct.mpf_intel, ptr %20, i32 0, i32 1, !dbg !655
  %21 = load i32, ptr %physptr, align 4, !dbg !655
  %tobool36 = icmp ne i32 %21, 0, !dbg !653
  br i1 %tobool36, label %if.then37, label %if.else42, !dbg !656

if.then37:                                        ; preds = %if.else
  %22 = load ptr, ptr %mpf, align 8, !dbg !657
  %23 = load i32, ptr %early.addr, align 4, !dbg !660
  %call38 = call i32 @check_physptr(ptr noundef %22, i32 noundef %23) #14, !dbg !661
  %tobool39 = icmp ne i32 %call38, 0, !dbg !661
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !662

if.then40:                                        ; preds = %if.then37
  br label %out, !dbg !663

if.end41:                                         ; preds = %if.then37
  br label %if.end52, !dbg !664

if.else42:                                        ; preds = %if.else
  br label %do.body43, !dbg !665

do.body43:                                        ; preds = %if.else42
  br label %do.body44, !dbg !666

do.body44:                                        ; preds = %do.body43
  br label %do.cond45, !dbg !668

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !668

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !666

do.body47:                                        ; preds = %do.end46
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 530, i32 0, i64 12) #12, !dbg !670, !srcloc !672
  br label %do.cond48, !dbg !670

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !670

do.end49:                                         ; preds = %do.cond48
  unreachable, !dbg !666

do.cond50:                                        ; No predecessors!
  br label %do.end51, !dbg !666

do.end51:                                         ; preds = %do.cond50
  br label %if.end52

if.end52:                                         ; preds = %do.end51, %if.end41
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %do.end29
  %24 = load i32, ptr %early.addr, align 4, !dbg !673
  %tobool54 = icmp ne i32 %24, 0, !dbg !673
  br i1 %tobool54, label %if.end61, label %if.then55, !dbg !675

if.then55:                                        ; preds = %if.end53
  br label %do.body56, !dbg !676

do.body56:                                        ; preds = %if.then55
  br label %do.cond57, !dbg !678

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !678

do.end58:                                         ; preds = %do.cond57
  %25 = load i32, ptr @num_processors, align 4, !dbg !676
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %25) #14, !dbg !676
  store i32 %call60, ptr %tmp59, align 4, !dbg !678
  %26 = load i32, ptr %tmp59, align 4, !dbg !676
  br label %if.end61, !dbg !680

if.end61:                                         ; preds = %do.end58, %if.end53
  br label %out, !dbg !673

out:                                              ; preds = %if.end61, %if.then40, %if.then25
  call void @llvm.dbg.label(metadata !592), !dbg !681
  %27 = load ptr, ptr %mpf, align 8, !dbg !682
  call void @early_memunmap(ptr noundef %27, i64 noundef 16) #13, !dbg !683
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !684
  br label %cleanup, !dbg !684

cleanup:                                          ; preds = %out, %do.end, %if.then11, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mpf) #12, !dbg !684
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !684

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !685 dso_local ptr @early_memremap(i64 noundef, i64 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !691 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !694 dso_local void @register_lapic_address(i64 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @construct_default_ISA_mptable(i32 noundef %mpc_default_type) #5 section ".init.text" align 16 !dbg !698 {
entry:
  %mpc_default_type.addr = alloca i32, align 4
  %processor = alloca %struct.mpc_cpu, align 4
  %lintsrc = alloca %struct.mpc_lintsrc, align 2
  %linttypes = alloca [2 x i32], align 4
  %i = alloca i32, align 4
  store i32 %mpc_default_type, ptr %mpc_default_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mpc_default_type.addr, metadata !702, metadata !DIExpression()), !dbg !708
  call void @llvm.lifetime.start.p0(i64 20, ptr %processor) #12, !dbg !709
  call void @llvm.dbg.declare(metadata ptr %processor, metadata !703, metadata !DIExpression()), !dbg !710
  call void @llvm.lifetime.start.p0(i64 8, ptr %lintsrc) #12, !dbg !711
  call void @llvm.dbg.declare(metadata ptr %lintsrc, metadata !704, metadata !DIExpression()), !dbg !712
  call void @llvm.lifetime.start.p0(i64 8, ptr %linttypes) #12, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %linttypes, metadata !705, metadata !DIExpression()), !dbg !714
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %linttypes, ptr align 4 @__const.construct_default_ISA_mptable.linttypes, i64 8, i1 false), !dbg !714
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !715
  call void @llvm.dbg.declare(metadata ptr %i, metadata !707, metadata !DIExpression()), !dbg !716
  %type = getelementptr inbounds %struct.mpc_cpu, ptr %processor, i32 0, i32 0, !dbg !717
  store i8 0, ptr %type, align 4, !dbg !718
  %0 = load i32, ptr %mpc_default_type.addr, align 4, !dbg !719
  %cmp = icmp sgt i32 %0, 4, !dbg !720
  %1 = zext i1 %cmp to i64, !dbg !719
  %cond = select i1 %cmp, i32 16, i32 1, !dbg !719
  %conv = trunc i32 %cond to i8, !dbg !719
  %apicver = getelementptr inbounds %struct.mpc_cpu, ptr %processor, i32 0, i32 2, !dbg !721
  store i8 %conv, ptr %apicver, align 2, !dbg !722
  %cpuflag = getelementptr inbounds %struct.mpc_cpu, ptr %processor, i32 0, i32 3, !dbg !723
  store i8 1, ptr %cpuflag, align 1, !dbg !724
  %2 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !725
  %conv1 = zext i8 %2 to i32, !dbg !726
  %shl = shl i32 %conv1, 8, !dbg !727
  %3 = load i8, ptr @boot_cpu_data, align 8, !dbg !728
  %conv2 = zext i8 %3 to i32, !dbg !729
  %shl3 = shl i32 %conv2, 4, !dbg !730
  %or = or i32 %shl, %shl3, !dbg !731
  %4 = load i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 1), align 4, !dbg !732
  %conv4 = zext i8 %4 to i32, !dbg !733
  %or5 = or i32 %or, %conv4, !dbg !734
  %cpufeature = getelementptr inbounds %struct.mpc_cpu, ptr %processor, i32 0, i32 4, !dbg !735
  store i32 %or5, ptr %cpufeature, align 4, !dbg !736
  %5 = load i32, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), align 8, !dbg !737
  %featureflag = getelementptr inbounds %struct.mpc_cpu, ptr %processor, i32 0, i32 5, !dbg !738
  store i32 %5, ptr %featureflag, align 4, !dbg !739
  %reserved = getelementptr inbounds %struct.mpc_cpu, ptr %processor, i32 0, i32 6, !dbg !740
  %arrayidx = getelementptr [2 x i32], ptr %reserved, i64 0, i64 0, !dbg !741
  store i32 0, ptr %arrayidx, align 4, !dbg !742
  %reserved6 = getelementptr inbounds %struct.mpc_cpu, ptr %processor, i32 0, i32 6, !dbg !743
  %arrayidx7 = getelementptr [2 x i32], ptr %reserved6, i64 0, i64 1, !dbg !744
  store i32 0, ptr %arrayidx7, align 4, !dbg !745
  store i32 0, ptr %i, align 4, !dbg !746
  br label %for.cond, !dbg !748

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4, !dbg !749
  %cmp8 = icmp slt i32 %6, 2, !dbg !751
  br i1 %cmp8, label %for.body, label %for.end, !dbg !752

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4, !dbg !753
  %conv10 = trunc i32 %7 to i8, !dbg !753
  %apicid = getelementptr inbounds %struct.mpc_cpu, ptr %processor, i32 0, i32 1, !dbg !755
  store i8 %conv10, ptr %apicid, align 1, !dbg !756
  call void @MP_processor_info(ptr noundef %processor) #14, !dbg !757
  br label %for.inc, !dbg !758

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !759
  %inc = add i32 %8, 1, !dbg !759
  store i32 %inc, ptr %i, align 4, !dbg !759
  br label %for.cond, !dbg !760, !llvm.loop !761

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %mpc_default_type.addr, align 4, !dbg !765
  call void @construct_ioapic_table(i32 noundef %9) #14, !dbg !766
  %type11 = getelementptr inbounds %struct.mpc_lintsrc, ptr %lintsrc, i32 0, i32 0, !dbg !767
  store i8 4, ptr %type11, align 2, !dbg !768
  %irqflag = getelementptr inbounds %struct.mpc_lintsrc, ptr %lintsrc, i32 0, i32 2, !dbg !769
  store i16 0, ptr %irqflag, align 2, !dbg !770
  %srcbusid = getelementptr inbounds %struct.mpc_lintsrc, ptr %lintsrc, i32 0, i32 3, !dbg !771
  store i8 0, ptr %srcbusid, align 2, !dbg !772
  %srcbusirq = getelementptr inbounds %struct.mpc_lintsrc, ptr %lintsrc, i32 0, i32 4, !dbg !773
  store i8 0, ptr %srcbusirq, align 1, !dbg !774
  %destapic = getelementptr inbounds %struct.mpc_lintsrc, ptr %lintsrc, i32 0, i32 5, !dbg !775
  store i8 -1, ptr %destapic, align 2, !dbg !776
  store i32 0, ptr %i, align 4, !dbg !777
  br label %for.cond12, !dbg !779

for.cond12:                                       ; preds = %for.inc19, %for.end
  %10 = load i32, ptr %i, align 4, !dbg !780
  %cmp13 = icmp slt i32 %10, 2, !dbg !782
  br i1 %cmp13, label %for.body15, label %for.end21, !dbg !783

for.body15:                                       ; preds = %for.cond12
  %11 = load i32, ptr %i, align 4, !dbg !784
  %idxprom = sext i32 %11 to i64, !dbg !786
  %arrayidx16 = getelementptr [2 x i32], ptr %linttypes, i64 0, i64 %idxprom, !dbg !786
  %12 = load i32, ptr %arrayidx16, align 4, !dbg !786
  %conv17 = trunc i32 %12 to i8, !dbg !786
  %irqtype = getelementptr inbounds %struct.mpc_lintsrc, ptr %lintsrc, i32 0, i32 1, !dbg !787
  store i8 %conv17, ptr %irqtype, align 1, !dbg !788
  %13 = load i32, ptr %i, align 4, !dbg !789
  %conv18 = trunc i32 %13 to i8, !dbg !789
  %destapiclint = getelementptr inbounds %struct.mpc_lintsrc, ptr %lintsrc, i32 0, i32 6, !dbg !790
  store i8 %conv18, ptr %destapiclint, align 1, !dbg !791
  call void @MP_lintsrc_info(ptr noundef %lintsrc) #14, !dbg !792
  br label %for.inc19, !dbg !793

for.inc19:                                        ; preds = %for.body15
  %14 = load i32, ptr %i, align 4, !dbg !794
  %inc20 = add i32 %14, 1, !dbg !794
  store i32 %inc20, ptr %i, align 4, !dbg !794
  br label %for.cond12, !dbg !795, !llvm.loop !796

for.end21:                                        ; preds = %for.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !798
  call void @llvm.lifetime.end.p0(i64 8, ptr %linttypes) #12, !dbg !798
  call void @llvm.lifetime.end.p0(i64 8, ptr %lintsrc) #12, !dbg !798
  call void @llvm.lifetime.end.p0(i64 20, ptr %processor) #12, !dbg !798
  ret void, !dbg !798
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @check_physptr(ptr noundef %mpf, i32 noundef %early) #0 section ".init.text" align 16 !dbg !799 {
entry:
  %retval = alloca i32, align 4
  %mpf.addr = alloca ptr, align 8
  %early.addr = alloca i32, align 4
  %mpc = alloca ptr, align 8
  %size = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %bus = alloca %struct.mpc_bus, align 1
  %tmp19 = alloca i32, align 4
  store ptr %mpf, ptr %mpf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mpf.addr, metadata !803, metadata !DIExpression()), !dbg !830
  store i32 %early, ptr %early.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %early.addr, metadata !804, metadata !DIExpression()), !dbg !831
  call void @llvm.lifetime.start.p0(i64 8, ptr %mpc) #12, !dbg !832
  call void @llvm.dbg.declare(metadata ptr %mpc, metadata !805, metadata !DIExpression()), !dbg !833
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #12, !dbg !834
  call void @llvm.dbg.declare(metadata ptr %size, metadata !826, metadata !DIExpression()), !dbg !835
  %0 = load ptr, ptr %mpf.addr, align 8, !dbg !836
  %physptr = getelementptr inbounds %struct.mpf_intel, ptr %0, i32 0, i32 1, !dbg !837
  %1 = load i32, ptr %physptr, align 4, !dbg !837
  %conv = zext i32 %1 to i64, !dbg !836
  %call = call i64 @get_mpc_size(i64 noundef %conv) #14, !dbg !838
  store i64 %call, ptr %size, align 8, !dbg !839
  %2 = load ptr, ptr %mpf.addr, align 8, !dbg !840
  %physptr1 = getelementptr inbounds %struct.mpf_intel, ptr %2, i32 0, i32 1, !dbg !841
  %3 = load i32, ptr %physptr1, align 4, !dbg !841
  %conv2 = zext i32 %3 to i64, !dbg !840
  %4 = load i64, ptr %size, align 8, !dbg !842
  %call3 = call ptr @early_memremap(i64 noundef %conv2, i64 noundef %4) #13, !dbg !843
  store ptr %call3, ptr %mpc, align 8, !dbg !844
  %5 = load ptr, ptr %mpc, align 8, !dbg !845
  %6 = load i32, ptr %early.addr, align 4, !dbg !847
  %call4 = call i32 @smp_read_mpc(ptr noundef %5, i32 noundef %6) #14, !dbg !848
  %tobool = icmp ne i32 %call4, 0, !dbg !848
  br i1 %tobool, label %if.end, label %if.then, !dbg !849

if.then:                                          ; preds = %entry
  store i32 0, ptr @smp_found_config, align 4, !dbg !850
  br label %do.body, !dbg !852

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !854

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !854

do.end:                                           ; preds = %do.cond
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.20) #14, !dbg !852
  store i32 %call5, ptr %tmp, align 4, !dbg !854
  %7 = load i32, ptr %tmp, align 4, !dbg !852
  br label %do.body6, !dbg !856

do.body6:                                         ; preds = %do.end
  br label %do.cond7, !dbg !858

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !858

do.end8:                                          ; preds = %do.cond7
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.21) #14, !dbg !856
  store i32 %call10, ptr %tmp9, align 4, !dbg !858
  %8 = load i32, ptr %tmp9, align 4, !dbg !856
  %9 = load ptr, ptr %mpc, align 8, !dbg !860
  %10 = load i64, ptr %size, align 8, !dbg !861
  call void @early_memunmap(ptr noundef %9, i64 noundef %10) #13, !dbg !862
  store i32 -1, ptr %retval, align 4, !dbg !863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !863

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %mpc, align 8, !dbg !864
  %12 = load i64, ptr %size, align 8, !dbg !865
  call void @early_memunmap(ptr noundef %11, i64 noundef %12) #13, !dbg !866
  %13 = load i32, ptr %early.addr, align 4, !dbg !867
  %tobool11 = icmp ne i32 %13, 0, !dbg !867
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !869

if.then12:                                        ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !870

if.end13:                                         ; preds = %if.end
  %14 = load i32, ptr @mp_irq_entries, align 4, !dbg !871
  %tobool14 = icmp ne i32 %14, 0, !dbg !871
  br i1 %tobool14, label %if.end21, label %if.then15, !dbg !872

if.then15:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #12, !dbg !873
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !827, metadata !DIExpression()), !dbg !874
  br label %do.body16, !dbg !875

do.body16:                                        ; preds = %if.then15
  br label %do.cond17, !dbg !877

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !877

do.end18:                                         ; preds = %do.cond17
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str.22) #14, !dbg !875
  store i32 %call20, ptr %tmp19, align 4, !dbg !877
  %15 = load i32, ptr %tmp19, align 4, !dbg !875
  %type = getelementptr inbounds %struct.mpc_bus, ptr %bus, i32 0, i32 0, !dbg !879
  store i8 1, ptr %type, align 1, !dbg !880
  %busid = getelementptr inbounds %struct.mpc_bus, ptr %bus, i32 0, i32 1, !dbg !881
  store i8 0, ptr %busid, align 1, !dbg !882
  %bustype = getelementptr inbounds %struct.mpc_bus, ptr %bus, i32 0, i32 2, !dbg !883
  %arraydecay = getelementptr inbounds [6 x i8], ptr %bustype, i64 0, i64 0, !dbg !884
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 @.str.9, i64 6, i1 false), !dbg !884
  call void @MP_bus_info(ptr noundef %bus) #14, !dbg !885
  call void @construct_default_ioirq_mptable(i32 noundef 0) #14, !dbg !886
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #12, !dbg !887
  br label %if.end21, !dbg !888

if.end21:                                         ; preds = %do.end18, %if.end13
  store i32 0, ptr %retval, align 4, !dbg !889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !889

cleanup:                                          ; preds = %if.end21, %if.then12, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #12, !dbg !890
  call void @llvm.lifetime.end.p0(i64 8, ptr %mpc) #12, !dbg !890
  %16 = load i32, ptr %retval, align 4, !dbg !890
  ret i32 %16, !dbg !890
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !891 dso_local void @early_memunmap(ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @default_find_smp_config() #0 section ".init.text" align 16 !dbg !894 {
entry:
  %address = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %address) #12, !dbg !899
  call void @llvm.dbg.declare(metadata ptr %address, metadata !898, metadata !DIExpression()), !dbg !900
  %call = call i32 @smp_scan_config(i64 noundef 0, i64 noundef 1024) #14, !dbg !901
  %tobool = icmp ne i32 %call, 0, !dbg !901
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !903

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @smp_scan_config(i64 noundef 654336, i64 noundef 1024) #14, !dbg !904
  %tobool2 = icmp ne i32 %call1, 0, !dbg !904
  br i1 %tobool2, label %if.then, label %lor.lhs.false3, !dbg !905

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call i32 @smp_scan_config(i64 noundef 983040, i64 noundef 65536) #14, !dbg !906
  %tobool5 = icmp ne i32 %call4, 0, !dbg !906
  br i1 %tobool5, label %if.then, label %if.end, !dbg !907

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !908

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = call i32 @get_bios_ebda() #13, !dbg !909
  store i32 %call6, ptr %address, align 4, !dbg !910
  %0 = load i32, ptr %address, align 4, !dbg !911
  %tobool7 = icmp ne i32 %0, 0, !dbg !911
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !913

if.then8:                                         ; preds = %if.end
  %1 = load i32, ptr %address, align 4, !dbg !914
  %conv = zext i32 %1 to i64, !dbg !914
  %call9 = call i32 @smp_scan_config(i64 noundef %conv, i64 noundef 1024) #14, !dbg !915
  br label %if.end10, !dbg !915

if.end10:                                         ; preds = %if.then8, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !916
  br label %cleanup, !dbg !916

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %address) #12, !dbg !916
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !916

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @smp_scan_config(i64 noundef %base, i64 noundef %length) #0 section ".init.text" align 16 !dbg !917 {
entry:
  %base.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %bp = alloca ptr, align 8
  %mpf = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !921, metadata !DIExpression()), !dbg !927
  store i64 %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !922, metadata !DIExpression()), !dbg !928
  call void @llvm.lifetime.start.p0(i64 8, ptr %bp) #12, !dbg !929
  call void @llvm.dbg.declare(metadata ptr %bp, metadata !923, metadata !DIExpression()), !dbg !930
  call void @llvm.lifetime.start.p0(i64 8, ptr %mpf) #12, !dbg !931
  call void @llvm.dbg.declare(metadata ptr %mpf, metadata !925, metadata !DIExpression()), !dbg !932
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !933
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !926, metadata !DIExpression()), !dbg !934
  store i32 0, ptr %ret, align 4, !dbg !934
  br label %do.body, !dbg !935

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @apic_verbosity, align 4, !dbg !936
  %cmp = icmp sle i32 1, %0, !dbg !936
  br i1 %cmp, label %if.then, label %if.end, !dbg !939

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !940

do.body1:                                         ; preds = %if.then
  br label %do.cond, !dbg !942

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !942

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %base.addr, align 8, !dbg !940
  %2 = load i64, ptr %base.addr, align 8, !dbg !940
  %3 = load i64, ptr %length.addr, align 8, !dbg !940
  %add = add i64 %2, %3, !dbg !940
  %sub = sub i64 %add, 1, !dbg !940
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.37, i64 noundef %1, i64 noundef %sub) #14, !dbg !940
  store i32 %call, ptr %tmp, align 4, !dbg !942
  %4 = load i32, ptr %tmp, align 4, !dbg !940
  br label %if.end, !dbg !936

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond2, !dbg !939

do.cond2:                                         ; preds = %if.end
  br label %do.end3, !dbg !939

do.end3:                                          ; preds = %do.cond2
  br label %do.body4, !dbg !944

do.body4:                                         ; preds = %do.end3
  br label %do.cond5, !dbg !945

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !945

do.end6:                                          ; preds = %do.cond5
  br label %while.cond, !dbg !947

while.cond:                                       ; preds = %if.end38, %do.end6
  %5 = load i64, ptr %length.addr, align 8, !dbg !948
  %cmp7 = icmp ugt i64 %5, 0, !dbg !949
  br i1 %cmp7, label %while.body, label %while.end, !dbg !947

while.body:                                       ; preds = %while.cond
  %6 = load i64, ptr %base.addr, align 8, !dbg !950
  %7 = load i64, ptr %length.addr, align 8, !dbg !952
  %call8 = call ptr @early_memremap(i64 noundef %6, i64 noundef %7) #13, !dbg !953
  store ptr %call8, ptr %bp, align 8, !dbg !954
  %8 = load ptr, ptr %bp, align 8, !dbg !955
  store ptr %8, ptr %mpf, align 8, !dbg !956
  %9 = load ptr, ptr %bp, align 8, !dbg !957
  %10 = load i32, ptr %9, align 4, !dbg !959
  %cmp9 = icmp eq i32 %10, 1599098207, !dbg !960
  br i1 %cmp9, label %land.lhs.true, label %if.end35, !dbg !961

land.lhs.true:                                    ; preds = %while.body
  %11 = load ptr, ptr %mpf, align 8, !dbg !962
  %length10 = getelementptr inbounds %struct.mpf_intel, ptr %11, i32 0, i32 2, !dbg !963
  %12 = load i8, ptr %length10, align 4, !dbg !963
  %conv = zext i8 %12 to i32, !dbg !962
  %cmp11 = icmp eq i32 %conv, 1, !dbg !964
  br i1 %cmp11, label %land.lhs.true13, label %if.end35, !dbg !965

land.lhs.true13:                                  ; preds = %land.lhs.true
  %13 = load ptr, ptr %bp, align 8, !dbg !966
  %call14 = call i32 @mpf_checksum(ptr noundef %13, i32 noundef 16) #14, !dbg !967
  %tobool = icmp ne i32 %call14, 0, !dbg !967
  br i1 %tobool, label %if.end35, label %land.lhs.true15, !dbg !968

land.lhs.true15:                                  ; preds = %land.lhs.true13
  %14 = load ptr, ptr %mpf, align 8, !dbg !969
  %specification = getelementptr inbounds %struct.mpf_intel, ptr %14, i32 0, i32 3, !dbg !970
  %15 = load i8, ptr %specification, align 1, !dbg !970
  %conv16 = zext i8 %15 to i32, !dbg !969
  %cmp17 = icmp eq i32 %conv16, 1, !dbg !971
  br i1 %cmp17, label %if.then23, label %lor.lhs.false, !dbg !972

lor.lhs.false:                                    ; preds = %land.lhs.true15
  %16 = load ptr, ptr %mpf, align 8, !dbg !973
  %specification19 = getelementptr inbounds %struct.mpf_intel, ptr %16, i32 0, i32 3, !dbg !974
  %17 = load i8, ptr %specification19, align 1, !dbg !974
  %conv20 = zext i8 %17 to i32, !dbg !973
  %cmp21 = icmp eq i32 %conv20, 4, !dbg !975
  br i1 %cmp21, label %if.then23, label %if.end35, !dbg !976

if.then23:                                        ; preds = %lor.lhs.false, %land.lhs.true15
  store i32 1, ptr @smp_found_config, align 4, !dbg !977
  %18 = load i64, ptr %base.addr, align 8, !dbg !979
  store i64 %18, ptr @mpf_base, align 8, !dbg !980
  store i8 1, ptr @mpf_found, align 1, !dbg !981
  br label %do.body24, !dbg !982

do.body24:                                        ; preds = %if.then23
  br label %do.cond25, !dbg !984

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !984

do.end26:                                         ; preds = %do.cond25
  %19 = load i64, ptr %base.addr, align 8, !dbg !982
  %20 = load i64, ptr %base.addr, align 8, !dbg !982
  %add28 = add i64 %20, 16, !dbg !982
  %sub29 = sub i64 %add28, 1, !dbg !982
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef @.str.38, i64 noundef %19, i64 noundef %sub29) #14, !dbg !982
  store i32 %call30, ptr %tmp27, align 4, !dbg !984
  %21 = load i32, ptr %tmp27, align 4, !dbg !982
  %22 = load i64, ptr %base.addr, align 8, !dbg !986
  %call31 = call i32 @memblock_reserve(i64 noundef %22, i64 noundef 16) #13, !dbg !987
  %23 = load ptr, ptr %mpf, align 8, !dbg !988
  %physptr = getelementptr inbounds %struct.mpf_intel, ptr %23, i32 0, i32 1, !dbg !990
  %24 = load i32, ptr %physptr, align 4, !dbg !990
  %tobool32 = icmp ne i32 %24, 0, !dbg !988
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !991

if.then33:                                        ; preds = %do.end26
  %25 = load ptr, ptr %mpf, align 8, !dbg !992
  call void @smp_reserve_memory(ptr noundef %25) #14, !dbg !993
  br label %if.end34, !dbg !993

if.end34:                                         ; preds = %if.then33, %do.end26
  store i32 1, ptr %ret, align 4, !dbg !994
  br label %if.end35, !dbg !995

if.end35:                                         ; preds = %if.end34, %lor.lhs.false, %land.lhs.true13, %land.lhs.true, %while.body
  %26 = load ptr, ptr %bp, align 8, !dbg !996
  %27 = load i64, ptr %length.addr, align 8, !dbg !997
  call void @early_memunmap(ptr noundef %26, i64 noundef %27) #13, !dbg !998
  %28 = load i32, ptr %ret, align 4, !dbg !999
  %tobool36 = icmp ne i32 %28, 0, !dbg !999
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !1001

if.then37:                                        ; preds = %if.end35
  br label %while.end, !dbg !1002

if.end38:                                         ; preds = %if.end35
  %29 = load i64, ptr %base.addr, align 8, !dbg !1003
  %add39 = add i64 %29, 16, !dbg !1003
  store i64 %add39, ptr %base.addr, align 8, !dbg !1003
  %30 = load i64, ptr %length.addr, align 8, !dbg !1004
  %sub40 = sub i64 %30, 16, !dbg !1004
  store i64 %sub40, ptr %length.addr, align 8, !dbg !1004
  br label %while.cond, !dbg !947, !llvm.loop !1005

while.end:                                        ; preds = %if.then37, %while.cond
  %31 = load i32, ptr %ret, align 4, !dbg !1007
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !1008
  call void @llvm.lifetime.end.p0(i64 8, ptr %mpf) #12, !dbg !1008
  call void @llvm.lifetime.end.p0(i64 8, ptr %bp) #12, !dbg !1008
  ret i32 %31, !dbg !1009
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_bios_ebda() #6 align 16 !dbg !1010 {
entry:
  %address = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %address) #12, !dbg !1016
  call void @llvm.dbg.declare(metadata ptr %address, metadata !1015, metadata !DIExpression()), !dbg !1017
  %call = call ptr @phys_to_virt(i64 noundef 1038) #13, !dbg !1018
  %0 = load i16, ptr %call, align 2, !dbg !1019
  %conv = zext i16 %0 to i32, !dbg !1019
  store i32 %conv, ptr %address, align 4, !dbg !1017
  %1 = load i32, ptr %address, align 4, !dbg !1020
  %shl = shl i32 %1, 4, !dbg !1020
  store i32 %shl, ptr %address, align 4, !dbg !1020
  %2 = load i32, ptr %address, align 4, !dbg !1021
  call void @llvm.lifetime.end.p0(i64 4, ptr %address) #12, !dbg !1022
  ret i32 %2, !dbg !1023
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @update_mptable_setup(ptr noundef %str) #0 section ".init.text" align 16 !dbg !1024 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !1026, metadata !DIExpression()), !dbg !1027
  store i32 1, ptr @enable_update_mptable, align 4, !dbg !1028
  store i32 1, ptr @pci_routeirq, align 4, !dbg !1029
  ret i32 0, !dbg !1030
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @parse_alloc_mptable_opt(ptr noundef %p) #0 section ".init.text" align 16 !dbg !1031 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1033, metadata !DIExpression()), !dbg !1034
  store i32 1, ptr @enable_update_mptable, align 4, !dbg !1035
  store i32 1, ptr @pci_routeirq, align 4, !dbg !1036
  store i32 1, ptr @alloc_mptable, align 4, !dbg !1037
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1038
  %tobool = icmp ne ptr %0, null, !dbg !1038
  br i1 %tobool, label %if.end, label %if.then, !dbg !1040

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1041
  br label %return, !dbg !1041

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1042
  %call = call i64 @memparse(ptr noundef %1, ptr noundef %p.addr) #13, !dbg !1043
  store i64 %call, ptr @mpc_new_length, align 8, !dbg !1044
  store i32 0, ptr %retval, align 4, !dbg !1045
  br label %return, !dbg !1045

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1046
  ret i32 %2, !dbg !1046
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @e820__memblock_alloc_reserved_mpc_new() #0 section ".init.text" align 16 !dbg !1047 {
entry:
  %0 = load i32, ptr @enable_update_mptable, align 4, !dbg !1048
  %tobool = icmp ne i32 %0, 0, !dbg !1048
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1050

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @alloc_mptable, align 4, !dbg !1051
  %tobool1 = icmp ne i32 %1, 0, !dbg !1051
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1052

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, ptr @mpc_new_length, align 8, !dbg !1053
  %call = call i64 @e820__memblock_alloc_reserved(i64 noundef %2, i64 noundef 4) #13, !dbg !1054
  store i64 %call, ptr @mpc_new_phys, align 8, !dbg !1055
  br label %if.end, !dbg !1056

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !1057
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1058 dso_local i64 @e820__memblock_alloc_reserved(i64 noundef, i64 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_mpparse__306_933_update_mp_table7() #0 section ".init.text" align 16 !dbg !1062 {
entry:
  %call = call i32 @update_mp_table() #14, !dbg !1065
  ret i32 %call, !dbg !1065
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @update_mp_table() #0 section ".init.text" align 16 !dbg !1066 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [16 x i8], align 16
  %oem = alloca [10 x i8], align 1
  %mpf = alloca ptr, align 8
  %mpc = alloca ptr, align 8
  %mpc_new = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  %old = alloca i8, align 1
  %new = alloca i8, align 1
  %tmp72 = alloca i32, align 4
  %tmp78 = alloca i32, align 4
  %tmp87 = alloca i32, align 4
  %mpf_new = alloca ptr, align 8
  %tmp104 = alloca i32, align 4
  %tmp110 = alloca i32, align 4
  %tmp127 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %str) #12, !dbg !1087
  call void @llvm.dbg.declare(metadata ptr %str, metadata !1068, metadata !DIExpression()), !dbg !1088
  call void @llvm.lifetime.start.p0(i64 10, ptr %oem) #12, !dbg !1089
  call void @llvm.dbg.declare(metadata ptr %oem, metadata !1069, metadata !DIExpression()), !dbg !1090
  call void @llvm.lifetime.start.p0(i64 8, ptr %mpf) #12, !dbg !1091
  call void @llvm.dbg.declare(metadata ptr %mpf, metadata !1073, metadata !DIExpression()), !dbg !1092
  call void @llvm.lifetime.start.p0(i64 8, ptr %mpc) #12, !dbg !1093
  call void @llvm.dbg.declare(metadata ptr %mpc, metadata !1074, metadata !DIExpression()), !dbg !1094
  call void @llvm.lifetime.start.p0(i64 8, ptr %mpc_new) #12, !dbg !1093
  call void @llvm.dbg.declare(metadata ptr %mpc_new, metadata !1075, metadata !DIExpression()), !dbg !1095
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #12, !dbg !1096
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1076, metadata !DIExpression()), !dbg !1097
  %0 = load i32, ptr @enable_update_mptable, align 4, !dbg !1098
  %tobool = icmp ne i32 %0, 0, !dbg !1098
  br i1 %tobool, label %if.end, label %if.then, !dbg !1100

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup132, !dbg !1101

if.end:                                           ; preds = %entry
  %1 = load i8, ptr @mpf_found, align 1, !dbg !1102, !range !602, !noundef !603
  %tobool1 = trunc i8 %1 to i1, !dbg !1102
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1104

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup132, !dbg !1105

if.end3:                                          ; preds = %if.end
  %2 = load i64, ptr @mpf_base, align 8, !dbg !1106
  %call = call ptr @early_memremap(i64 noundef %2, i64 noundef 16) #13, !dbg !1107
  store ptr %call, ptr %mpf, align 8, !dbg !1108
  %3 = load ptr, ptr %mpf, align 8, !dbg !1109
  %tobool4 = icmp ne ptr %3, null, !dbg !1109
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !1111

if.then5:                                         ; preds = %if.end3
  br label %do.body, !dbg !1112

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !1115

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1115

do.end:                                           ; preds = %do.cond
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.39) #14, !dbg !1112
  store i32 %call6, ptr %tmp, align 4, !dbg !1115
  %4 = load i32, ptr %tmp, align 4, !dbg !1112
  store i32 0, ptr %retval, align 4, !dbg !1117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup132, !dbg !1117

if.end7:                                          ; preds = %if.end3
  %5 = load ptr, ptr %mpf, align 8, !dbg !1118
  %feature1 = getelementptr inbounds %struct.mpf_intel, ptr %5, i32 0, i32 5, !dbg !1120
  %6 = load i8, ptr %feature1, align 1, !dbg !1120
  %tobool8 = icmp ne i8 %6, 0, !dbg !1118
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1121

if.then9:                                         ; preds = %if.end7
  br label %do_unmap_mpf, !dbg !1122

if.end10:                                         ; preds = %if.end7
  %7 = load ptr, ptr %mpf, align 8, !dbg !1123
  %physptr = getelementptr inbounds %struct.mpf_intel, ptr %7, i32 0, i32 1, !dbg !1125
  %8 = load i32, ptr %physptr, align 4, !dbg !1125
  %tobool11 = icmp ne i32 %8, 0, !dbg !1123
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !1126

if.then12:                                        ; preds = %if.end10
  br label %do_unmap_mpf, !dbg !1127

if.end13:                                         ; preds = %if.end10
  %9 = load ptr, ptr %mpf, align 8, !dbg !1128
  %physptr14 = getelementptr inbounds %struct.mpf_intel, ptr %9, i32 0, i32 1, !dbg !1129
  %10 = load i32, ptr %physptr14, align 4, !dbg !1129
  %conv = zext i32 %10 to i64, !dbg !1128
  %call15 = call i64 @get_mpc_size(i64 noundef %conv) #14, !dbg !1130
  store i64 %call15, ptr %size, align 8, !dbg !1131
  %11 = load ptr, ptr %mpf, align 8, !dbg !1132
  %physptr16 = getelementptr inbounds %struct.mpf_intel, ptr %11, i32 0, i32 1, !dbg !1133
  %12 = load i32, ptr %physptr16, align 4, !dbg !1133
  %conv17 = zext i32 %12 to i64, !dbg !1132
  %13 = load i64, ptr %size, align 8, !dbg !1134
  %call18 = call ptr @early_memremap(i64 noundef %conv17, i64 noundef %13) #13, !dbg !1135
  store ptr %call18, ptr %mpc, align 8, !dbg !1136
  %14 = load ptr, ptr %mpc, align 8, !dbg !1137
  %tobool19 = icmp ne ptr %14, null, !dbg !1137
  br i1 %tobool19, label %if.end26, label %if.then20, !dbg !1139

if.then20:                                        ; preds = %if.end13
  br label %do.body21, !dbg !1140

do.body21:                                        ; preds = %if.then20
  br label %do.cond22, !dbg !1143

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !1143

do.end23:                                         ; preds = %do.cond22
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef @.str.40) #14, !dbg !1140
  store i32 %call25, ptr %tmp24, align 4, !dbg !1143
  %15 = load i32, ptr %tmp24, align 4, !dbg !1140
  br label %do_unmap_mpf, !dbg !1145

if.end26:                                         ; preds = %if.end13
  %16 = load ptr, ptr %mpc, align 8, !dbg !1146
  %arraydecay = getelementptr inbounds [10 x i8], ptr %oem, i64 0, i64 0, !dbg !1148
  %arraydecay27 = getelementptr inbounds [16 x i8], ptr %str, i64 0, i64 0, !dbg !1149
  %call28 = call i32 @smp_check_mpc(ptr noundef %16, ptr noundef %arraydecay, ptr noundef %arraydecay27) #14, !dbg !1150
  %tobool29 = icmp ne i32 %call28, 0, !dbg !1150
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !1151

if.then30:                                        ; preds = %if.end26
  br label %do_unmap_mpc, !dbg !1152

if.end31:                                         ; preds = %if.end26
  br label %do.body32, !dbg !1153

do.body32:                                        ; preds = %if.end31
  br label %do.cond33, !dbg !1155

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !1155

do.end34:                                         ; preds = %do.cond33
  %17 = load i64, ptr @mpf_base, align 8, !dbg !1153
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef @.str.41, i64 noundef %17) #14, !dbg !1153
  store i32 %call36, ptr %tmp35, align 4, !dbg !1155
  %18 = load i32, ptr %tmp35, align 4, !dbg !1153
  br label %do.body37, !dbg !1157

do.body37:                                        ; preds = %do.end34
  br label %do.cond38, !dbg !1159

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !1159

do.end39:                                         ; preds = %do.cond38
  %19 = load ptr, ptr %mpf, align 8, !dbg !1157
  %physptr41 = getelementptr inbounds %struct.mpf_intel, ptr %19, i32 0, i32 1, !dbg !1157
  %20 = load i32, ptr %physptr41, align 4, !dbg !1157
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef @.str.42, i32 noundef %20) #14, !dbg !1157
  store i32 %call42, ptr %tmp40, align 4, !dbg !1159
  %21 = load i32, ptr %tmp40, align 4, !dbg !1157
  %22 = load i64, ptr @mpc_new_phys, align 8, !dbg !1161
  %tobool43 = icmp ne i64 %22, 0, !dbg !1161
  br i1 %tobool43, label %land.lhs.true, label %if.end52, !dbg !1163

land.lhs.true:                                    ; preds = %do.end39
  %23 = load ptr, ptr %mpc, align 8, !dbg !1164
  %length = getelementptr inbounds %struct.mpc_table, ptr %23, i32 0, i32 1, !dbg !1165
  %24 = load i16, ptr %length, align 4, !dbg !1165
  %conv44 = zext i16 %24 to i64, !dbg !1164
  %25 = load i64, ptr @mpc_new_length, align 8, !dbg !1166
  %cmp = icmp ugt i64 %conv44, %25, !dbg !1167
  br i1 %cmp, label %if.then46, label %if.end52, !dbg !1168

if.then46:                                        ; preds = %land.lhs.true
  store i64 0, ptr @mpc_new_phys, align 8, !dbg !1169
  br label %do.body47, !dbg !1171

do.body47:                                        ; preds = %if.then46
  br label %do.cond48, !dbg !1173

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !1173

do.end49:                                         ; preds = %do.cond48
  %26 = load i64, ptr @mpc_new_length, align 8, !dbg !1171
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef @.str.43, i64 noundef %26) #14, !dbg !1171
  store i32 %call51, ptr %tmp50, align 4, !dbg !1173
  %27 = load i32, ptr %tmp50, align 4, !dbg !1171
  br label %if.end52, !dbg !1175

if.end52:                                         ; preds = %do.end49, %land.lhs.true, %do.end39
  %28 = load i64, ptr @mpc_new_phys, align 8, !dbg !1176
  %tobool53 = icmp ne i64 %28, 0, !dbg !1176
  br i1 %tobool53, label %if.else, label %if.then54, !dbg !1177

if.then54:                                        ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 1, ptr %old) #12, !dbg !1178
  call void @llvm.dbg.declare(metadata ptr %old, metadata !1077, metadata !DIExpression()), !dbg !1179
  call void @llvm.lifetime.start.p0(i64 1, ptr %new) #12, !dbg !1178
  call void @llvm.dbg.declare(metadata ptr %new, metadata !1080, metadata !DIExpression()), !dbg !1180
  %29 = load ptr, ptr %mpc, align 8, !dbg !1181
  %checksum = getelementptr inbounds %struct.mpc_table, ptr %29, i32 0, i32 3, !dbg !1182
  store i8 0, ptr %checksum, align 1, !dbg !1183
  %30 = load ptr, ptr %mpc, align 8, !dbg !1184
  %31 = load ptr, ptr %mpc, align 8, !dbg !1185
  %length55 = getelementptr inbounds %struct.mpc_table, ptr %31, i32 0, i32 1, !dbg !1186
  %32 = load i16, ptr %length55, align 4, !dbg !1186
  %conv56 = zext i16 %32 to i32, !dbg !1185
  %call57 = call i32 @mpf_checksum(ptr noundef %30, i32 noundef %conv56) #14, !dbg !1187
  %conv58 = trunc i32 %call57 to i8, !dbg !1187
  store i8 %conv58, ptr %old, align 1, !dbg !1188
  %33 = load ptr, ptr %mpc, align 8, !dbg !1189
  %checksum59 = getelementptr inbounds %struct.mpc_table, ptr %33, i32 0, i32 3, !dbg !1190
  store i8 -1, ptr %checksum59, align 1, !dbg !1191
  %34 = load ptr, ptr %mpc, align 8, !dbg !1192
  %35 = load ptr, ptr %mpc, align 8, !dbg !1193
  %length60 = getelementptr inbounds %struct.mpc_table, ptr %35, i32 0, i32 1, !dbg !1194
  %36 = load i16, ptr %length60, align 4, !dbg !1194
  %conv61 = zext i16 %36 to i32, !dbg !1193
  %call62 = call i32 @mpf_checksum(ptr noundef %34, i32 noundef %conv61) #14, !dbg !1195
  %conv63 = trunc i32 %call62 to i8, !dbg !1195
  store i8 %conv63, ptr %new, align 1, !dbg !1196
  %37 = load i8, ptr %old, align 1, !dbg !1197
  %conv64 = zext i8 %37 to i32, !dbg !1197
  %38 = load i8, ptr %new, align 1, !dbg !1199
  %conv65 = zext i8 %38 to i32, !dbg !1199
  %cmp66 = icmp eq i32 %conv64, %conv65, !dbg !1200
  br i1 %cmp66, label %if.then68, label %if.end74, !dbg !1201

if.then68:                                        ; preds = %if.then54
  br label %do.body69, !dbg !1202

do.body69:                                        ; preds = %if.then68
  br label %do.cond70, !dbg !1205

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !1205

do.end71:                                         ; preds = %do.cond70
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef @.str.44) #14, !dbg !1202
  store i32 %call73, ptr %tmp72, align 4, !dbg !1205
  %39 = load i32, ptr %tmp72, align 4, !dbg !1202
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1207

if.end74:                                         ; preds = %if.then54
  br label %do.body75, !dbg !1208

do.body75:                                        ; preds = %if.end74
  br label %do.cond76, !dbg !1210

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !1210

do.end77:                                         ; preds = %do.cond76
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef @.str.45) #14, !dbg !1208
  store i32 %call79, ptr %tmp78, align 4, !dbg !1210
  %40 = load i32, ptr %tmp78, align 4, !dbg !1208
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1212
  br label %cleanup, !dbg !1212

cleanup:                                          ; preds = %do.end71, %do.end77
  call void @llvm.lifetime.end.p0(i64 1, ptr %new) #12, !dbg !1212
  call void @llvm.lifetime.end.p0(i64 1, ptr %old) #12, !dbg !1212
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup132 [
    i32 0, label %cleanup.cont
    i32 7, label %do_unmap_mpc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end130, !dbg !1213

if.else:                                          ; preds = %if.end52
  %41 = load i64, ptr @mpc_new_phys, align 8, !dbg !1214
  %42 = load i64, ptr @mpc_new_length, align 8, !dbg !1215
  %call81 = call ptr @early_memremap(i64 noundef %41, i64 noundef %42) #13, !dbg !1216
  store ptr %call81, ptr %mpc_new, align 8, !dbg !1217
  %43 = load ptr, ptr %mpc_new, align 8, !dbg !1218
  %tobool82 = icmp ne ptr %43, null, !dbg !1218
  br i1 %tobool82, label %if.end89, label %if.then83, !dbg !1220

if.then83:                                        ; preds = %if.else
  br label %do.body84, !dbg !1221

do.body84:                                        ; preds = %if.then83
  br label %do.cond85, !dbg !1224

do.cond85:                                        ; preds = %do.body84
  br label %do.end86, !dbg !1224

do.end86:                                         ; preds = %do.cond85
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef @.str.46) #14, !dbg !1221
  store i32 %call88, ptr %tmp87, align 4, !dbg !1224
  %44 = load i32, ptr %tmp87, align 4, !dbg !1221
  br label %do_unmap_mpc, !dbg !1226

if.end89:                                         ; preds = %if.else
  %45 = load i64, ptr @mpc_new_phys, align 8, !dbg !1227
  %conv90 = trunc i64 %45 to i32, !dbg !1227
  %46 = load ptr, ptr %mpf, align 8, !dbg !1228
  %physptr91 = getelementptr inbounds %struct.mpf_intel, ptr %46, i32 0, i32 1, !dbg !1229
  store i32 %conv90, ptr %physptr91, align 4, !dbg !1230
  %47 = load ptr, ptr %mpc_new, align 8, !dbg !1231
  %48 = load ptr, ptr %mpc, align 8, !dbg !1232
  %49 = load ptr, ptr %mpc, align 8, !dbg !1233
  %length92 = getelementptr inbounds %struct.mpc_table, ptr %49, i32 0, i32 1, !dbg !1234
  %50 = load i16, ptr %length92, align 4, !dbg !1234
  %conv93 = zext i16 %50 to i64, !dbg !1233
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %47, ptr align 4 %48, i64 %conv93, i1 false), !dbg !1235
  %51 = load ptr, ptr %mpc, align 8, !dbg !1236
  %52 = load i64, ptr %size, align 8, !dbg !1237
  call void @early_memunmap(ptr noundef %51, i64 noundef %52) #13, !dbg !1238
  %53 = load ptr, ptr %mpc_new, align 8, !dbg !1239
  store ptr %53, ptr %mpc, align 8, !dbg !1240
  %54 = load i64, ptr @mpc_new_length, align 8, !dbg !1241
  store i64 %54, ptr %size, align 8, !dbg !1242
  %55 = load i64, ptr @mpc_new_phys, align 8, !dbg !1243
  %56 = load ptr, ptr %mpf, align 8, !dbg !1244
  %physptr94 = getelementptr inbounds %struct.mpf_intel, ptr %56, i32 0, i32 1, !dbg !1245
  %57 = load i32, ptr %physptr94, align 4, !dbg !1245
  %conv95 = zext i32 %57 to i64, !dbg !1244
  %sub = sub i64 %55, %conv95, !dbg !1246
  %tobool96 = icmp ne i64 %sub, 0, !dbg !1246
  br i1 %tobool96, label %if.then97, label %if.end117, !dbg !1247

if.then97:                                        ; preds = %if.end89
  call void @llvm.lifetime.start.p0(i64 8, ptr %mpf_new) #12, !dbg !1248
  call void @llvm.dbg.declare(metadata ptr %mpf_new, metadata !1081, metadata !DIExpression()), !dbg !1249
  %call98 = call ptr @early_memremap(i64 noundef 1008, i64 noundef 16) #13, !dbg !1250
  store ptr %call98, ptr %mpf_new, align 8, !dbg !1251
  %58 = load ptr, ptr %mpf_new, align 8, !dbg !1252
  %tobool99 = icmp ne ptr %58, null, !dbg !1252
  br i1 %tobool99, label %if.end106, label %if.then100, !dbg !1254

if.then100:                                       ; preds = %if.then97
  br label %do.body101, !dbg !1255

do.body101:                                       ; preds = %if.then100
  br label %do.cond102, !dbg !1258

do.cond102:                                       ; preds = %do.body101
  br label %do.end103, !dbg !1258

do.end103:                                        ; preds = %do.cond102
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef @.str.47) #14, !dbg !1255
  store i32 %call105, ptr %tmp104, align 4, !dbg !1258
  %59 = load i32, ptr %tmp104, align 4, !dbg !1255
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup114, !dbg !1260

if.end106:                                        ; preds = %if.then97
  br label %do.body107, !dbg !1261

do.body107:                                       ; preds = %if.end106
  br label %do.cond108, !dbg !1263

do.cond108:                                       ; preds = %do.body107
  br label %do.end109, !dbg !1263

do.end109:                                        ; preds = %do.cond108
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef @.str.48, i32 noundef 1008) #14, !dbg !1261
  store i32 %call111, ptr %tmp110, align 4, !dbg !1263
  %60 = load i32, ptr %tmp110, align 4, !dbg !1261
  %61 = load ptr, ptr %mpf_new, align 8, !dbg !1265
  %62 = load ptr, ptr %mpf, align 8, !dbg !1266
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %61, ptr align 4 %62, i64 16, i1 false), !dbg !1267
  %63 = load ptr, ptr %mpf, align 8, !dbg !1268
  call void @early_memunmap(ptr noundef %63, i64 noundef 16) #13, !dbg !1269
  %64 = load ptr, ptr %mpf_new, align 8, !dbg !1270
  store ptr %64, ptr %mpf, align 8, !dbg !1271
  %65 = load i64, ptr @mpc_new_phys, align 8, !dbg !1272
  %conv112 = trunc i64 %65 to i32, !dbg !1272
  %66 = load ptr, ptr %mpf, align 8, !dbg !1273
  %physptr113 = getelementptr inbounds %struct.mpf_intel, ptr %66, i32 0, i32 1, !dbg !1274
  store i32 %conv112, ptr %physptr113, align 4, !dbg !1275
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1276
  br label %cleanup114, !dbg !1276

cleanup114:                                       ; preds = %do.end103, %do.end109
  call void @llvm.lifetime.end.p0(i64 8, ptr %mpf_new) #12, !dbg !1276
  %cleanup.dest115 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest115, label %cleanup132 [
    i32 0, label %cleanup.cont116
    i32 7, label %do_unmap_mpc
  ]

cleanup.cont116:                                  ; preds = %cleanup114
  br label %if.end117, !dbg !1277

if.end117:                                        ; preds = %cleanup.cont116, %if.end89
  %67 = load ptr, ptr %mpf, align 8, !dbg !1278
  %checksum118 = getelementptr inbounds %struct.mpf_intel, ptr %67, i32 0, i32 4, !dbg !1279
  store i8 0, ptr %checksum118, align 2, !dbg !1280
  %68 = load ptr, ptr %mpf, align 8, !dbg !1281
  %call119 = call i32 @mpf_checksum(ptr noundef %68, i32 noundef 16) #14, !dbg !1282
  %69 = load ptr, ptr %mpf, align 8, !dbg !1283
  %checksum120 = getelementptr inbounds %struct.mpf_intel, ptr %69, i32 0, i32 4, !dbg !1284
  %70 = load i8, ptr %checksum120, align 2, !dbg !1285
  %conv121 = zext i8 %70 to i32, !dbg !1285
  %sub122 = sub i32 %conv121, %call119, !dbg !1285
  %conv123 = trunc i32 %sub122 to i8, !dbg !1285
  store i8 %conv123, ptr %checksum120, align 2, !dbg !1285
  br label %do.body124, !dbg !1286

do.body124:                                       ; preds = %if.end117
  br label %do.cond125, !dbg !1288

do.cond125:                                       ; preds = %do.body124
  br label %do.end126, !dbg !1288

do.end126:                                        ; preds = %do.cond125
  %71 = load ptr, ptr %mpf, align 8, !dbg !1286
  %physptr128 = getelementptr inbounds %struct.mpf_intel, ptr %71, i32 0, i32 1, !dbg !1286
  %72 = load i32, ptr %physptr128, align 4, !dbg !1286
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef @.str.49, i32 noundef %72) #14, !dbg !1286
  store i32 %call129, ptr %tmp127, align 4, !dbg !1288
  %73 = load i32, ptr %tmp127, align 4, !dbg !1286
  br label %if.end130

if.end130:                                        ; preds = %do.end126, %cleanup.cont
  %74 = load ptr, ptr %mpc, align 8, !dbg !1290
  %75 = load i64, ptr @mpc_new_phys, align 8, !dbg !1291
  %76 = load i64, ptr @mpc_new_length, align 8, !dbg !1292
  %call131 = call i32 @replace_intsrc_all(ptr noundef %74, i64 noundef %75, i64 noundef %76) #14, !dbg !1293
  br label %do_unmap_mpc, !dbg !1293

do_unmap_mpc:                                     ; preds = %if.end130, %cleanup114, %cleanup, %do.end86, %if.then30
  call void @llvm.dbg.label(metadata !1085), !dbg !1294
  %77 = load ptr, ptr %mpc, align 8, !dbg !1295
  %78 = load i64, ptr %size, align 8, !dbg !1296
  call void @early_memunmap(ptr noundef %77, i64 noundef %78) #13, !dbg !1297
  br label %do_unmap_mpf, !dbg !1297

do_unmap_mpf:                                     ; preds = %do_unmap_mpc, %do.end23, %if.then12, %if.then9
  call void @llvm.dbg.label(metadata !1086), !dbg !1298
  %79 = load ptr, ptr %mpf, align 8, !dbg !1299
  call void @early_memunmap(ptr noundef %79, i64 noundef 16) #13, !dbg !1300
  store i32 0, ptr %retval, align 4, !dbg !1301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup132, !dbg !1301

cleanup132:                                       ; preds = %do_unmap_mpf, %cleanup114, %cleanup, %do.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #12, !dbg !1302
  call void @llvm.lifetime.end.p0(i64 8, ptr %mpc_new) #12, !dbg !1302
  call void @llvm.lifetime.end.p0(i64 8, ptr %mpc) #12, !dbg !1302
  call void @llvm.lifetime.end.p0(i64 8, ptr %mpf) #12, !dbg !1302
  call void @llvm.lifetime.end.p0(i64 10, ptr %oem) #12, !dbg !1302
  call void @llvm.lifetime.end.p0(i64 16, ptr %str) #12, !dbg !1302
  %80 = load i32, ptr %retval, align 4, !dbg !1302
  ret i32 %80, !dbg !1302
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @MP_processor_info(ptr noundef %m) #0 section ".init.text" align 16 !dbg !1303 {
entry:
  %m.addr = alloca ptr, align 8
  %bootup_cpu = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !1307, metadata !DIExpression()), !dbg !1309
  call void @llvm.lifetime.start.p0(i64 8, ptr %bootup_cpu) #12, !dbg !1310
  call void @llvm.dbg.declare(metadata ptr %bootup_cpu, metadata !1308, metadata !DIExpression()), !dbg !1311
  store ptr @.str.5, ptr %bootup_cpu, align 8, !dbg !1311
  %0 = load ptr, ptr %m.addr, align 8, !dbg !1312
  %cpuflag = getelementptr inbounds %struct.mpc_cpu, ptr %0, i32 0, i32 3, !dbg !1314
  %1 = load i8, ptr %cpuflag, align 1, !dbg !1314
  %conv = zext i8 %1 to i32, !dbg !1312
  %and = and i32 %conv, 1, !dbg !1315
  %tobool = icmp ne i32 %and, 0, !dbg !1315
  br i1 %tobool, label %if.end, label %if.then, !dbg !1316

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @disabled_cpus, align 4, !dbg !1317
  %inc = add i32 %2, 1, !dbg !1317
  store i32 %inc, ptr @disabled_cpus, align 4, !dbg !1317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1319

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %m.addr, align 8, !dbg !1320
  %cpuflag1 = getelementptr inbounds %struct.mpc_cpu, ptr %3, i32 0, i32 3, !dbg !1322
  %4 = load i8, ptr %cpuflag1, align 1, !dbg !1322
  %conv2 = zext i8 %4 to i32, !dbg !1320
  %and3 = and i32 %conv2, 2, !dbg !1323
  %tobool4 = icmp ne i32 %and3, 0, !dbg !1323
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1324

if.then5:                                         ; preds = %if.end
  store ptr @.str.6, ptr %bootup_cpu, align 8, !dbg !1325
  br label %if.end6, !dbg !1326

if.end6:                                          ; preds = %if.then5, %if.end
  br label %do.body, !dbg !1327

do.body:                                          ; preds = %if.end6
  br label %do.cond, !dbg !1329

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1329

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %m.addr, align 8, !dbg !1327
  %apicid = getelementptr inbounds %struct.mpc_cpu, ptr %5, i32 0, i32 1, !dbg !1327
  %6 = load i8, ptr %apicid, align 1, !dbg !1327
  %conv7 = zext i8 %6 to i32, !dbg !1327
  %7 = load ptr, ptr %bootup_cpu, align 8, !dbg !1327
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %conv7, ptr noundef %7) #14, !dbg !1327
  store i32 %call, ptr %tmp, align 4, !dbg !1329
  %8 = load i32, ptr %tmp, align 4, !dbg !1327
  %9 = load ptr, ptr %m.addr, align 8, !dbg !1331
  %apicid8 = getelementptr inbounds %struct.mpc_cpu, ptr %9, i32 0, i32 1, !dbg !1332
  %10 = load i8, ptr %apicid8, align 1, !dbg !1332
  %conv9 = zext i8 %10 to i32, !dbg !1331
  %call10 = call i32 @generic_processor_info(i32 noundef %conv9) #13, !dbg !1333
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1334
  br label %cleanup, !dbg !1334

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bootup_cpu) #12, !dbg !1334
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1334

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @construct_ioapic_table(i32 noundef %mpc_default_type) #0 section ".init.text" align 16 !dbg !1335 {
entry:
  %mpc_default_type.addr = alloca i32, align 4
  %ioapic = alloca %struct.mpc_ioapic, align 4
  %bus = alloca %struct.mpc_bus, align 1
  %tmp = alloca i32, align 4
  store i32 %mpc_default_type, ptr %mpc_default_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mpc_default_type.addr, metadata !1337, metadata !DIExpression()), !dbg !1340
  call void @llvm.lifetime.start.p0(i64 8, ptr %ioapic) #12, !dbg !1341
  call void @llvm.dbg.declare(metadata ptr %ioapic, metadata !1338, metadata !DIExpression()), !dbg !1342
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #12, !dbg !1343
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !1339, metadata !DIExpression()), !dbg !1344
  %type = getelementptr inbounds %struct.mpc_bus, ptr %bus, i32 0, i32 0, !dbg !1345
  store i8 1, ptr %type, align 1, !dbg !1346
  %busid = getelementptr inbounds %struct.mpc_bus, ptr %bus, i32 0, i32 1, !dbg !1347
  store i8 0, ptr %busid, align 1, !dbg !1348
  %0 = load i32, ptr %mpc_default_type.addr, align 4, !dbg !1349
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb
    i32 2, label %sw.bb1
    i32 6, label %sw.bb1
    i32 3, label %sw.bb1
  ], !dbg !1350

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !1351

do.body:                                          ; preds = %sw.default
  br label %do.cond, !dbg !1354

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1354

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr %mpc_default_type.addr, align 4, !dbg !1351
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i32 noundef %1) #14, !dbg !1351
  store i32 %call, ptr %tmp, align 4, !dbg !1354
  %2 = load i32, ptr %tmp, align 4, !dbg !1351
  br label %sw.bb, !dbg !1356

sw.bb:                                            ; preds = %entry, %entry, %do.end
  %bustype = getelementptr inbounds %struct.mpc_bus, ptr %bus, i32 0, i32 2, !dbg !1357
  %arraydecay = getelementptr inbounds [6 x i8], ptr %bustype, i64 0, i64 0, !dbg !1358
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 @.str.9, i64 6, i1 false), !dbg !1358
  br label %sw.epilog, !dbg !1359

sw.bb1:                                           ; preds = %entry, %entry, %entry
  %bustype2 = getelementptr inbounds %struct.mpc_bus, ptr %bus, i32 0, i32 2, !dbg !1360
  %arraydecay3 = getelementptr inbounds [6 x i8], ptr %bustype2, i64 0, i64 0, !dbg !1361
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay3, ptr align 1 @.str.10, i64 6, i1 false), !dbg !1361
  br label %sw.epilog, !dbg !1362

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  call void @MP_bus_info(ptr noundef %bus) #14, !dbg !1363
  %3 = load i32, ptr %mpc_default_type.addr, align 4, !dbg !1364
  %cmp = icmp sgt i32 %3, 4, !dbg !1366
  br i1 %cmp, label %if.then, label %if.end, !dbg !1367

if.then:                                          ; preds = %sw.epilog
  %busid4 = getelementptr inbounds %struct.mpc_bus, ptr %bus, i32 0, i32 1, !dbg !1368
  store i8 1, ptr %busid4, align 1, !dbg !1370
  %bustype5 = getelementptr inbounds %struct.mpc_bus, ptr %bus, i32 0, i32 2, !dbg !1371
  %arraydecay6 = getelementptr inbounds [6 x i8], ptr %bustype5, i64 0, i64 0, !dbg !1372
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay6, ptr align 1 @.str.11, i64 6, i1 false), !dbg !1372
  call void @MP_bus_info(ptr noundef %bus) #14, !dbg !1373
  br label %if.end, !dbg !1374

if.end:                                           ; preds = %if.then, %sw.epilog
  %type7 = getelementptr inbounds %struct.mpc_ioapic, ptr %ioapic, i32 0, i32 0, !dbg !1375
  store i8 2, ptr %type7, align 4, !dbg !1376
  %apicid = getelementptr inbounds %struct.mpc_ioapic, ptr %ioapic, i32 0, i32 1, !dbg !1377
  store i8 2, ptr %apicid, align 1, !dbg !1378
  %4 = load i32, ptr %mpc_default_type.addr, align 4, !dbg !1379
  %cmp8 = icmp sgt i32 %4, 4, !dbg !1380
  %5 = zext i1 %cmp8 to i64, !dbg !1379
  %cond = select i1 %cmp8, i32 16, i32 1, !dbg !1379
  %conv = trunc i32 %cond to i8, !dbg !1379
  %apicver = getelementptr inbounds %struct.mpc_ioapic, ptr %ioapic, i32 0, i32 2, !dbg !1381
  store i8 %conv, ptr %apicver, align 2, !dbg !1382
  %flags = getelementptr inbounds %struct.mpc_ioapic, ptr %ioapic, i32 0, i32 3, !dbg !1383
  store i8 1, ptr %flags, align 1, !dbg !1384
  %apicaddr = getelementptr inbounds %struct.mpc_ioapic, ptr %ioapic, i32 0, i32 4, !dbg !1385
  store i32 -20971520, ptr %apicaddr, align 4, !dbg !1386
  call void @MP_ioapic_info(ptr noundef %ioapic) #14, !dbg !1387
  %6 = load i32, ptr %mpc_default_type.addr, align 4, !dbg !1388
  call void @construct_default_ioirq_mptable(i32 noundef %6) #14, !dbg !1389
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #12, !dbg !1390
  call void @llvm.lifetime.end.p0(i64 8, ptr %ioapic) #12, !dbg !1390
  ret void, !dbg !1390
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @MP_lintsrc_info(ptr noundef %m) #0 section ".init.text" align 16 !dbg !1391 {
entry:
  %m.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !1395, metadata !DIExpression()), !dbg !1396
  br label %do.body, !dbg !1397

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @apic_verbosity, align 4, !dbg !1398
  %cmp = icmp sle i32 1, %0, !dbg !1398
  br i1 %cmp, label %if.then, label %if.end, !dbg !1401

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !1402

do.body1:                                         ; preds = %if.then
  br label %do.end, !dbg !1404

do.end:                                           ; preds = %do.body1
  %1 = load ptr, ptr %m.addr, align 8, !dbg !1402
  %irqtype = getelementptr inbounds %struct.mpc_lintsrc, ptr %1, i32 0, i32 1, !dbg !1402
  %2 = load i8, ptr %irqtype, align 1, !dbg !1402
  %conv = zext i8 %2 to i32, !dbg !1402
  %3 = load ptr, ptr %m.addr, align 8, !dbg !1402
  %irqflag = getelementptr inbounds %struct.mpc_lintsrc, ptr %3, i32 0, i32 2, !dbg !1402
  %4 = load i16, ptr %irqflag, align 2, !dbg !1402
  %conv2 = zext i16 %4 to i32, !dbg !1402
  %and = and i32 %conv2, 3, !dbg !1402
  %5 = load ptr, ptr %m.addr, align 8, !dbg !1402
  %irqflag3 = getelementptr inbounds %struct.mpc_lintsrc, ptr %5, i32 0, i32 2, !dbg !1402
  %6 = load i16, ptr %irqflag3, align 2, !dbg !1402
  %conv4 = zext i16 %6 to i32, !dbg !1402
  %shr = ashr i32 %conv4, 2, !dbg !1402
  %and5 = and i32 %shr, 3, !dbg !1402
  %7 = load ptr, ptr %m.addr, align 8, !dbg !1402
  %srcbusid = getelementptr inbounds %struct.mpc_lintsrc, ptr %7, i32 0, i32 3, !dbg !1402
  %8 = load i8, ptr %srcbusid, align 2, !dbg !1402
  %conv6 = zext i8 %8 to i32, !dbg !1402
  %9 = load ptr, ptr %m.addr, align 8, !dbg !1402
  %srcbusirq = getelementptr inbounds %struct.mpc_lintsrc, ptr %9, i32 0, i32 4, !dbg !1402
  %10 = load i8, ptr %srcbusirq, align 1, !dbg !1402
  %conv7 = zext i8 %10 to i32, !dbg !1402
  %11 = load ptr, ptr %m.addr, align 8, !dbg !1402
  %destapic = getelementptr inbounds %struct.mpc_lintsrc, ptr %11, i32 0, i32 5, !dbg !1402
  %12 = load i8, ptr %destapic, align 2, !dbg !1402
  %conv8 = zext i8 %12 to i32, !dbg !1402
  %13 = load ptr, ptr %m.addr, align 8, !dbg !1402
  %destapiclint = getelementptr inbounds %struct.mpc_lintsrc, ptr %13, i32 0, i32 6, !dbg !1402
  %14 = load i8, ptr %destapiclint, align 1, !dbg !1402
  %conv9 = zext i8 %14 to i32, !dbg !1402
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.19, i32 noundef %conv, i32 noundef %and, i32 noundef %and5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9) #14, !dbg !1402
  store i32 %call, ptr %tmp, align 4, !dbg !1404
  %15 = load i32, ptr %tmp, align 4, !dbg !1402
  br label %if.end, !dbg !1398

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end10, !dbg !1401

do.end10:                                         ; preds = %if.end
  ret void, !dbg !1406
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1407 dso_local i32 @generic_processor_info(i32 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @MP_bus_info(ptr noundef %m) #0 section ".init.text" align 16 !dbg !1411 {
entry:
  %m.addr = alloca ptr, align 8
  %str = alloca [7 x i8], align 1
  %tmp = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !1415, metadata !DIExpression()), !dbg !1417
  call void @llvm.lifetime.start.p0(i64 7, ptr %str) #12, !dbg !1418
  call void @llvm.dbg.declare(metadata ptr %str, metadata !1416, metadata !DIExpression()), !dbg !1419
  %0 = load ptr, ptr %m.addr, align 8, !dbg !1420
  %arraydecay = getelementptr inbounds [7 x i8], ptr %str, i64 0, i64 0, !dbg !1421
  call void @mpc_oem_bus_info(ptr noundef %0, ptr noundef %arraydecay) #14, !dbg !1422
  %1 = load ptr, ptr %m.addr, align 8, !dbg !1423
  %busid = getelementptr inbounds %struct.mpc_bus, ptr %1, i32 0, i32 1, !dbg !1424
  %2 = load i8, ptr %busid, align 1, !dbg !1424
  %conv = zext i8 %2 to i64, !dbg !1423
  call void @set_bit(i64 noundef %conv, ptr noundef @mp_bus_not_pci) #13, !dbg !1425
  %arraydecay1 = getelementptr inbounds [7 x i8], ptr %str, i64 0, i64 0, !dbg !1426
  %call = call i32 @strncmp(ptr noundef %arraydecay1, ptr noundef @.str.12, i64 noundef 3) #13, !dbg !1428
  %cmp = icmp eq i32 %call, 0, !dbg !1429
  br i1 %cmp, label %if.then, label %if.else, !dbg !1430

if.then:                                          ; preds = %entry
  br label %if.end13, !dbg !1431

if.else:                                          ; preds = %entry
  %arraydecay3 = getelementptr inbounds [7 x i8], ptr %str, i64 0, i64 0, !dbg !1433
  %call4 = call i32 @strncmp(ptr noundef %arraydecay3, ptr noundef @.str.13, i64 noundef 3) #13, !dbg !1435
  %cmp5 = icmp eq i32 %call4, 0, !dbg !1436
  br i1 %cmp5, label %if.then7, label %if.else10, !dbg !1437

if.then7:                                         ; preds = %if.else
  %3 = load ptr, ptr %m.addr, align 8, !dbg !1438
  %busid8 = getelementptr inbounds %struct.mpc_bus, ptr %3, i32 0, i32 1, !dbg !1440
  %4 = load i8, ptr %busid8, align 1, !dbg !1440
  %conv9 = zext i8 %4 to i64, !dbg !1438
  call void @clear_bit(i64 noundef %conv9, ptr noundef @mp_bus_not_pci) #13, !dbg !1441
  br label %if.end, !dbg !1442

if.else10:                                        ; preds = %if.else
  br label %do.body, !dbg !1443

do.body:                                          ; preds = %if.else10
  br label %do.cond, !dbg !1445

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1445

do.end:                                           ; preds = %do.cond
  %arraydecay11 = getelementptr inbounds [7 x i8], ptr %str, i64 0, i64 0, !dbg !1443
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14, ptr noundef %arraydecay11) #14, !dbg !1443
  store i32 %call12, ptr %tmp, align 4, !dbg !1445
  %5 = load i32, ptr %tmp, align 4, !dbg !1443
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then7
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 7, ptr %str) #12, !dbg !1447
  ret void, !dbg !1447
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @MP_ioapic_info(ptr noundef %m) #0 section ".init.text" align 16 !dbg !1448 {
entry:
  %m.addr = alloca ptr, align 8
  %cfg = alloca %struct.ioapic_domain_cfg, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !1452, metadata !DIExpression()), !dbg !6022
  call void @llvm.lifetime.start.p0(i64 24, ptr %cfg) #12, !dbg !6023
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !1453, metadata !DIExpression()), !dbg !6024
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cfg, ptr align 8 @__const.MP_ioapic_info.cfg, i64 24, i1 false), !dbg !6024
  %0 = load ptr, ptr %m.addr, align 8, !dbg !6025
  %flags = getelementptr inbounds %struct.mpc_ioapic, ptr %0, i32 0, i32 3, !dbg !6027
  %1 = load i8, ptr %flags, align 1, !dbg !6027
  %conv = zext i8 %1 to i32, !dbg !6025
  %and = and i32 %conv, 1, !dbg !6028
  %tobool = icmp ne i32 %and, 0, !dbg !6028
  br i1 %tobool, label %if.then, label %if.end, !dbg !6029

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %m.addr, align 8, !dbg !6030
  %apicid = getelementptr inbounds %struct.mpc_ioapic, ptr %2, i32 0, i32 1, !dbg !6031
  %3 = load i8, ptr %apicid, align 1, !dbg !6031
  %conv1 = zext i8 %3 to i32, !dbg !6030
  %4 = load ptr, ptr %m.addr, align 8, !dbg !6032
  %apicaddr = getelementptr inbounds %struct.mpc_ioapic, ptr %4, i32 0, i32 4, !dbg !6033
  %5 = load i32, ptr %apicaddr, align 4, !dbg !6033
  %6 = load i32, ptr @gsi_top, align 4, !dbg !6034
  %call = call i32 @mp_register_ioapic(i32 noundef %conv1, i32 noundef %5, i32 noundef %6, ptr noundef %cfg) #13, !dbg !6035
  br label %if.end, !dbg !6035

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr %cfg) #12, !dbg !6036
  ret void, !dbg !6036
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @construct_default_ioirq_mptable(i32 noundef %mpc_default_type) #0 section ".init.text" align 16 !dbg !6037 {
entry:
  %mpc_default_type.addr = alloca i32, align 4
  %intsrc = alloca %struct.mpc_intsrc, align 2
  %i = alloca i32, align 4
  %ELCR_fallback = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  store i32 %mpc_default_type, ptr %mpc_default_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mpc_default_type.addr, metadata !6039, metadata !DIExpression()), !dbg !6043
  call void @llvm.lifetime.start.p0(i64 8, ptr %intsrc) #12, !dbg !6044
  call void @llvm.dbg.declare(metadata ptr %intsrc, metadata !6040, metadata !DIExpression()), !dbg !6045
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !6046
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6041, metadata !DIExpression()), !dbg !6047
  call void @llvm.lifetime.start.p0(i64 4, ptr %ELCR_fallback) #12, !dbg !6048
  call void @llvm.dbg.declare(metadata ptr %ELCR_fallback, metadata !6042, metadata !DIExpression()), !dbg !6049
  store i32 0, ptr %ELCR_fallback, align 4, !dbg !6049
  %type = getelementptr inbounds %struct.mpc_intsrc, ptr %intsrc, i32 0, i32 0, !dbg !6050
  store i8 3, ptr %type, align 2, !dbg !6051
  %irqflag = getelementptr inbounds %struct.mpc_intsrc, ptr %intsrc, i32 0, i32 2, !dbg !6052
  store i16 0, ptr %irqflag, align 2, !dbg !6053
  %srcbus = getelementptr inbounds %struct.mpc_intsrc, ptr %intsrc, i32 0, i32 3, !dbg !6054
  store i8 0, ptr %srcbus, align 2, !dbg !6055
  %call = call i32 @mpc_ioapic_id(i32 noundef 0) #13, !dbg !6056
  %conv = trunc i32 %call to i8, !dbg !6056
  %dstapic = getelementptr inbounds %struct.mpc_intsrc, ptr %intsrc, i32 0, i32 5, !dbg !6057
  store i8 %conv, ptr %dstapic, align 2, !dbg !6058
  %irqtype = getelementptr inbounds %struct.mpc_intsrc, ptr %intsrc, i32 0, i32 1, !dbg !6059
  store i8 0, ptr %irqtype, align 1, !dbg !6060
  %0 = load i32, ptr %mpc_default_type.addr, align 4, !dbg !6061
  %cmp = icmp eq i32 %0, 5, !dbg !6063
  br i1 %cmp, label %if.then, label %if.end23, !dbg !6064

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6065

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6068

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6068

do.end:                                           ; preds = %do.cond
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16) #14, !dbg !6065
  store i32 %call2, ptr %tmp, align 4, !dbg !6068
  %1 = load i32, ptr %tmp, align 4, !dbg !6065
  %call3 = call i32 @ELCR_trigger(i32 noundef 0) #14, !dbg !6070
  %tobool = icmp ne i32 %call3, 0, !dbg !6070
  br i1 %tobool, label %if.then12, label %lor.lhs.false, !dbg !6072

lor.lhs.false:                                    ; preds = %do.end
  %call4 = call i32 @ELCR_trigger(i32 noundef 1) #14, !dbg !6073
  %tobool5 = icmp ne i32 %call4, 0, !dbg !6073
  br i1 %tobool5, label %if.then12, label %lor.lhs.false6, !dbg !6074

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = call i32 @ELCR_trigger(i32 noundef 2) #14, !dbg !6075
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6075
  br i1 %tobool8, label %if.then12, label %lor.lhs.false9, !dbg !6076

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = call i32 @ELCR_trigger(i32 noundef 13) #14, !dbg !6077
  %tobool11 = icmp ne i32 %call10, 0, !dbg !6077
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !6078

if.then12:                                        ; preds = %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false, %do.end
  br label %do.body13, !dbg !6079

do.body13:                                        ; preds = %if.then12
  br label %do.cond14, !dbg !6081

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6081

do.end15:                                         ; preds = %do.cond14
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str.17) #14, !dbg !6079
  store i32 %call17, ptr %tmp16, align 4, !dbg !6081
  %2 = load i32, ptr %tmp16, align 4, !dbg !6079
  br label %if.end, !dbg !6083

if.else:                                          ; preds = %lor.lhs.false9
  br label %do.body18, !dbg !6084

do.body18:                                        ; preds = %if.else
  br label %do.cond19, !dbg !6087

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !6087

do.end20:                                         ; preds = %do.cond19
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef @.str.18) #14, !dbg !6084
  store i32 %call22, ptr %tmp21, align 4, !dbg !6087
  %3 = load i32, ptr %tmp21, align 4, !dbg !6084
  store i32 1, ptr %ELCR_fallback, align 4, !dbg !6089
  br label %if.end

if.end:                                           ; preds = %do.end20, %do.end15
  br label %if.end23, !dbg !6090

if.end23:                                         ; preds = %if.end, %entry
  store i32 0, ptr %i, align 4, !dbg !6091
  br label %for.cond, !dbg !6093

for.cond:                                         ; preds = %for.inc, %if.end23
  %4 = load i32, ptr %i, align 4, !dbg !6094
  %cmp24 = icmp slt i32 %4, 16, !dbg !6096
  br i1 %cmp24, label %for.body, label %for.end, !dbg !6097

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %mpc_default_type.addr, align 4, !dbg !6098
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
  ], !dbg !6100

sw.bb:                                            ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !6101
  %cmp26 = icmp eq i32 %6, 0, !dbg !6104
  br i1 %cmp26, label %if.then31, label %lor.lhs.false28, !dbg !6105

lor.lhs.false28:                                  ; preds = %sw.bb
  %7 = load i32, ptr %i, align 4, !dbg !6106
  %cmp29 = icmp eq i32 %7, 13, !dbg !6107
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !6108

if.then31:                                        ; preds = %lor.lhs.false28, %sw.bb
  br label %for.inc, !dbg !6109

if.end32:                                         ; preds = %lor.lhs.false28
  br label %sw.default, !dbg !6110

sw.default:                                       ; preds = %for.body, %if.end32
  %8 = load i32, ptr %i, align 4, !dbg !6111
  %cmp33 = icmp eq i32 %8, 2, !dbg !6113
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !6114

if.then35:                                        ; preds = %sw.default
  br label %for.inc, !dbg !6115

if.end36:                                         ; preds = %sw.default
  br label %sw.epilog, !dbg !6116

sw.epilog:                                        ; preds = %if.end36
  %9 = load i32, ptr %ELCR_fallback, align 4, !dbg !6117
  %tobool37 = icmp ne i32 %9, 0, !dbg !6117
  br i1 %tobool37, label %if.then38, label %if.end46, !dbg !6119

if.then38:                                        ; preds = %sw.epilog
  %10 = load i32, ptr %i, align 4, !dbg !6120
  %call39 = call i32 @ELCR_trigger(i32 noundef %10) #14, !dbg !6123
  %tobool40 = icmp ne i32 %call39, 0, !dbg !6123
  br i1 %tobool40, label %if.then41, label %if.else43, !dbg !6124

if.then41:                                        ; preds = %if.then38
  %irqflag42 = getelementptr inbounds %struct.mpc_intsrc, ptr %intsrc, i32 0, i32 2, !dbg !6125
  store i16 13, ptr %irqflag42, align 2, !dbg !6127
  br label %if.end45, !dbg !6128

if.else43:                                        ; preds = %if.then38
  %irqflag44 = getelementptr inbounds %struct.mpc_intsrc, ptr %intsrc, i32 0, i32 2, !dbg !6129
  store i16 0, ptr %irqflag44, align 2, !dbg !6131
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then41
  br label %if.end46, !dbg !6132

if.end46:                                         ; preds = %if.end45, %sw.epilog
  %11 = load i32, ptr %i, align 4, !dbg !6133
  %conv47 = trunc i32 %11 to i8, !dbg !6133
  %srcbusirq = getelementptr inbounds %struct.mpc_intsrc, ptr %intsrc, i32 0, i32 4, !dbg !6134
  store i8 %conv47, ptr %srcbusirq, align 1, !dbg !6135
  %12 = load i32, ptr %i, align 4, !dbg !6136
  %tobool48 = icmp ne i32 %12, 0, !dbg !6136
  br i1 %tobool48, label %cond.true, label %cond.false, !dbg !6136

cond.true:                                        ; preds = %if.end46
  %13 = load i32, ptr %i, align 4, !dbg !6137
  br label %cond.end, !dbg !6136

cond.false:                                       ; preds = %if.end46
  br label %cond.end, !dbg !6136

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ 2, %cond.false ], !dbg !6136
  %conv49 = trunc i32 %cond to i8, !dbg !6136
  %dstirq = getelementptr inbounds %struct.mpc_intsrc, ptr %intsrc, i32 0, i32 6, !dbg !6138
  store i8 %conv49, ptr %dstirq, align 1, !dbg !6139
  call void @mp_save_irq(ptr noundef %intsrc) #13, !dbg !6140
  br label %for.inc, !dbg !6141

for.inc:                                          ; preds = %cond.end, %if.then35, %if.then31
  %14 = load i32, ptr %i, align 4, !dbg !6142
  %inc = add i32 %14, 1, !dbg !6142
  store i32 %inc, ptr %i, align 4, !dbg !6142
  br label %for.cond, !dbg !6143, !llvm.loop !6144

for.end:                                          ; preds = %for.cond
  %irqtype50 = getelementptr inbounds %struct.mpc_intsrc, ptr %intsrc, i32 0, i32 1, !dbg !6146
  store i8 3, ptr %irqtype50, align 1, !dbg !6147
  %srcbusirq51 = getelementptr inbounds %struct.mpc_intsrc, ptr %intsrc, i32 0, i32 4, !dbg !6148
  store i8 0, ptr %srcbusirq51, align 1, !dbg !6149
  %dstirq52 = getelementptr inbounds %struct.mpc_intsrc, ptr %intsrc, i32 0, i32 6, !dbg !6150
  store i8 0, ptr %dstirq52, align 1, !dbg !6151
  call void @mp_save_irq(ptr noundef %intsrc) #13, !dbg !6152
  call void @llvm.lifetime.end.p0(i64 4, ptr %ELCR_fallback) #12, !dbg !6153
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !6153
  call void @llvm.lifetime.end.p0(i64 8, ptr %intsrc) #12, !dbg !6153
  ret void, !dbg !6153
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @mpc_oem_bus_info(ptr noundef %m, ptr noundef %str) #0 section ".init.text" align 16 !dbg !6154 {
entry:
  %m.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6158, metadata !DIExpression()), !dbg !6160
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !6159, metadata !DIExpression()), !dbg !6161
  %0 = load ptr, ptr %str.addr, align 8, !dbg !6162
  %1 = load ptr, ptr %m.addr, align 8, !dbg !6163
  %bustype = getelementptr inbounds %struct.mpc_bus, ptr %1, i32 0, i32 2, !dbg !6164
  %arraydecay = getelementptr inbounds [6 x i8], ptr %bustype, i64 0, i64 0, !dbg !6165
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %arraydecay, i64 6, i1 false), !dbg !6165
  %2 = load ptr, ptr %str.addr, align 8, !dbg !6166
  %arrayidx = getelementptr i8, ptr %2, i64 6, !dbg !6166
  store i8 0, ptr %arrayidx, align 1, !dbg !6167
  br label %do.body, !dbg !6168

do.body:                                          ; preds = %entry
  %3 = load i32, ptr @apic_verbosity, align 4, !dbg !6169
  %cmp = icmp sle i32 1, %3, !dbg !6169
  br i1 %cmp, label %if.then, label %if.end, !dbg !6172

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !6173

do.body1:                                         ; preds = %if.then
  br label %do.end, !dbg !6175

do.end:                                           ; preds = %do.body1
  %4 = load ptr, ptr %m.addr, align 8, !dbg !6173
  %busid = getelementptr inbounds %struct.mpc_bus, ptr %4, i32 0, i32 1, !dbg !6173
  %5 = load i8, ptr %busid, align 1, !dbg !6173
  %conv = zext i8 %5 to i32, !dbg !6173
  %6 = load ptr, ptr %str.addr, align 8, !dbg !6173
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.15, i32 noundef %conv, ptr noundef %6) #14, !dbg !6173
  store i32 %call, ptr %tmp, align 4, !dbg !6175
  %7 = load i32, ptr %tmp, align 4, !dbg !6173
  br label %if.end, !dbg !6169

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end2, !dbg !6172

do.end2:                                          ; preds = %if.end
  ret void, !dbg !6177
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6178 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6185, metadata !DIExpression()), !dbg !6187
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6186, metadata !DIExpression()), !dbg !6188
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6189
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6190
  %div = sdiv i64 %1, 64, !dbg !6190
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6191
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !6192
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6193
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6194
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !6195
  ret void, !dbg !6196
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6197 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6201 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6203, metadata !DIExpression()), !dbg !6205
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6204, metadata !DIExpression()), !dbg !6206
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6207
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6208
  %div = sdiv i64 %1, 64, !dbg !6208
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6209
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !6210
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6211
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6212
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !6213
  ret void, !dbg !6214
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !6215 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6223, metadata !DIExpression()), !dbg !6225
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6224, metadata !DIExpression()), !dbg !6226
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6227
  %1 = load i64, ptr %size.addr, align 8, !dbg !6228
  %conv = trunc i64 %1 to i32, !dbg !6228
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !6229
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6230
  %3 = load i64, ptr %size.addr, align 8, !dbg !6230
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #13, !dbg !6230
  ret void, !dbg !6231
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6232 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6235, metadata !DIExpression()), !dbg !6237
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6236, metadata !DIExpression()), !dbg !6238
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6239
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6241
  br i1 %1, label %if.then, label %if.else, !dbg !6242

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6243
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6243
  %shr = ashr i64 %3, 3, !dbg !6243
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6243
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6245
  %and = and i64 %4, 7, !dbg !6245
  %sh_prom = trunc i64 %and to i32, !dbg !6245
  %shl = shl i32 1, %sh_prom, !dbg !6245
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #12, !dbg !6246, !srcloc !6247
  br label %if.end, !dbg !6248

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6249
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6251
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #12, !dbg !6252, !srcloc !6253
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6254
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !6255 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6260, metadata !DIExpression()), !dbg !6262
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6261, metadata !DIExpression()), !dbg !6263
  ret i1 true, !dbg !6264
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !6265 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6270, metadata !DIExpression()), !dbg !6273
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6271, metadata !DIExpression()), !dbg !6274
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6272, metadata !DIExpression()), !dbg !6275
  ret void, !dbg !6276
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6277 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6279, metadata !DIExpression()), !dbg !6281
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6280, metadata !DIExpression()), !dbg !6282
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6283
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6285
  br i1 %1, label %if.then, label %if.else, !dbg !6286

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6287
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6287
  %shr = ashr i64 %3, 3, !dbg !6287
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6287
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6289
  %and = and i64 %4, 7, !dbg !6289
  %sh_prom = trunc i64 %and to i32, !dbg !6289
  %shl = shl i32 1, %sh_prom, !dbg !6289
  %not = xor i32 %shl, -1, !dbg !6290
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #12, !dbg !6291, !srcloc !6292
  br label %if.end, !dbg !6293

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6294
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6296
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #12, !dbg !6297, !srcloc !6298
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6299
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6300 dso_local i32 @mp_register_ioapic(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6305 dso_local i32 @mpc_ioapic_id(i32 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @ELCR_trigger(i32 noundef %irq) #0 section ".init.text" align 16 !dbg !6306 {
entry:
  %irq.addr = alloca i32, align 4
  %port = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !6310, metadata !DIExpression()), !dbg !6312
  call void @llvm.lifetime.start.p0(i64 4, ptr %port) #12, !dbg !6313
  call void @llvm.dbg.declare(metadata ptr %port, metadata !6311, metadata !DIExpression()), !dbg !6314
  %0 = load i32, ptr %irq.addr, align 4, !dbg !6315
  %shr = lshr i32 %0, 3, !dbg !6316
  %add = add i32 1232, %shr, !dbg !6317
  store i32 %add, ptr %port, align 4, !dbg !6318
  %1 = load i32, ptr %port, align 4, !dbg !6319
  %conv = trunc i32 %1 to i16, !dbg !6319
  %call = call zeroext i8 @__inb(i16 noundef zeroext %conv) #13, !dbg !6320
  %conv1 = zext i8 %call to i32, !dbg !6320
  %2 = load i32, ptr %irq.addr, align 4, !dbg !6321
  %and = and i32 %2, 7, !dbg !6322
  %shr2 = ashr i32 %conv1, %and, !dbg !6323
  %and3 = and i32 %shr2, 1, !dbg !6324
  call void @llvm.lifetime.end.p0(i64 4, ptr %port) #12, !dbg !6325
  ret i32 %and3, !dbg !6326
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6327 dso_local void @mp_save_irq(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__inb(i16 noundef zeroext %port) #8 align 16 !dbg !6330 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6335, metadata !DIExpression()), !dbg !6337
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #12, !dbg !6337
  call void @llvm.dbg.declare(metadata ptr %value, metadata !6336, metadata !DIExpression()), !dbg !6337
  %0 = load i16, ptr %port.addr, align 2, !dbg !6337
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #12, !dbg !6337, !srcloc !6338
  store i8 %1, ptr %value, align 1, !dbg !6337
  %2 = load i8, ptr %value, align 1, !dbg !6337
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #12, !dbg !6337
  ret i8 %2, !dbg !6337
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @get_mpc_size(i64 noundef %physptr) #0 section ".init.text" align 16 !dbg !6339 {
entry:
  %physptr.addr = alloca i64, align 8
  %mpc = alloca ptr, align 8
  %size = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i64 %physptr, ptr %physptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %physptr.addr, metadata !6343, metadata !DIExpression()), !dbg !6346
  call void @llvm.lifetime.start.p0(i64 8, ptr %mpc) #12, !dbg !6347
  call void @llvm.dbg.declare(metadata ptr %mpc, metadata !6344, metadata !DIExpression()), !dbg !6348
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #12, !dbg !6349
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6345, metadata !DIExpression()), !dbg !6350
  %0 = load i64, ptr %physptr.addr, align 8, !dbg !6351
  %call = call ptr @early_memremap(i64 noundef %0, i64 noundef 4096) #13, !dbg !6352
  store ptr %call, ptr %mpc, align 8, !dbg !6353
  %1 = load ptr, ptr %mpc, align 8, !dbg !6354
  %length = getelementptr inbounds %struct.mpc_table, ptr %1, i32 0, i32 1, !dbg !6355
  %2 = load i16, ptr %length, align 4, !dbg !6355
  %conv = zext i16 %2 to i64, !dbg !6354
  store i64 %conv, ptr %size, align 8, !dbg !6356
  %3 = load ptr, ptr %mpc, align 8, !dbg !6357
  call void @early_memunmap(ptr noundef %3, i64 noundef 4096) #13, !dbg !6358
  br label %do.body, !dbg !6359

do.body:                                          ; preds = %entry
  %4 = load i32, ptr @apic_verbosity, align 4, !dbg !6360
  %cmp = icmp sle i32 1, %4, !dbg !6360
  br i1 %cmp, label %if.then, label %if.end, !dbg !6363

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !6364

do.body2:                                         ; preds = %if.then
  br label %do.cond, !dbg !6366

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6366

do.end:                                           ; preds = %do.cond
  %5 = load i64, ptr %physptr.addr, align 8, !dbg !6364
  %6 = load i64, ptr %physptr.addr, align 8, !dbg !6364
  %7 = load i64, ptr %size, align 8, !dbg !6364
  %add = add i64 %6, %7, !dbg !6364
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.23, i64 noundef %5, i64 noundef %add) #14, !dbg !6364
  store i32 %call3, ptr %tmp, align 4, !dbg !6366
  %8 = load i32, ptr %tmp, align 4, !dbg !6364
  br label %if.end, !dbg !6360

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond4, !dbg !6363

do.cond4:                                         ; preds = %if.end
  br label %do.end5, !dbg !6363

do.end5:                                          ; preds = %do.cond4
  %9 = load i64, ptr %size, align 8, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #12, !dbg !6369
  call void @llvm.lifetime.end.p0(i64 8, ptr %mpc) #12, !dbg !6369
  ret i64 %9, !dbg !6370
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @smp_read_mpc(ptr noundef %mpc, i32 noundef %early) #0 section ".init.text" align 16 !dbg !6371 {
entry:
  %retval = alloca i32, align 4
  %mpc.addr = alloca ptr, align 8
  %early.addr = alloca i32, align 4
  %str = alloca [16 x i8], align 16
  %oem = alloca [10 x i8], align 1
  %count = alloca i32, align 4
  %mpt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %mpc, ptr %mpc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mpc.addr, metadata !6375, metadata !DIExpression()), !dbg !6381
  store i32 %early, ptr %early.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %early.addr, metadata !6376, metadata !DIExpression()), !dbg !6382
  call void @llvm.lifetime.start.p0(i64 16, ptr %str) #12, !dbg !6383
  call void @llvm.dbg.declare(metadata ptr %str, metadata !6377, metadata !DIExpression()), !dbg !6384
  call void @llvm.lifetime.start.p0(i64 10, ptr %oem) #12, !dbg !6385
  call void @llvm.dbg.declare(metadata ptr %oem, metadata !6378, metadata !DIExpression()), !dbg !6386
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #12, !dbg !6387
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6379, metadata !DIExpression()), !dbg !6388
  store i32 44, ptr %count, align 4, !dbg !6388
  call void @llvm.lifetime.start.p0(i64 8, ptr %mpt) #12, !dbg !6389
  call void @llvm.dbg.declare(metadata ptr %mpt, metadata !6380, metadata !DIExpression()), !dbg !6390
  %0 = load ptr, ptr %mpc.addr, align 8, !dbg !6391
  %1 = load i32, ptr %count, align 4, !dbg !6392
  %idx.ext = sext i32 %1 to i64, !dbg !6393
  %add.ptr = getelementptr i8, ptr %0, i64 %idx.ext, !dbg !6393
  store ptr %add.ptr, ptr %mpt, align 8, !dbg !6390
  %2 = load ptr, ptr %mpc.addr, align 8, !dbg !6394
  %arraydecay = getelementptr inbounds [10 x i8], ptr %oem, i64 0, i64 0, !dbg !6396
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %str, i64 0, i64 0, !dbg !6397
  %call = call i32 @smp_check_mpc(ptr noundef %2, ptr noundef %arraydecay, ptr noundef %arraydecay1) #14, !dbg !6398
  %tobool = icmp ne i32 %call, 0, !dbg !6398
  br i1 %tobool, label %if.end, label %if.then, !dbg !6399

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6400

if.end:                                           ; preds = %entry
  %3 = load i32, ptr @acpi_lapic, align 4, !dbg !6401
  %tobool2 = icmp ne i32 %3, 0, !dbg !6401
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6403

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %mpc.addr, align 8, !dbg !6404
  %lapic = getelementptr inbounds %struct.mpc_table, ptr %4, i32 0, i32 9, !dbg !6405
  %5 = load i32, ptr %lapic, align 4, !dbg !6405
  %conv = zext i32 %5 to i64, !dbg !6404
  call void @register_lapic_address(i64 noundef %conv) #13, !dbg !6406
  br label %if.end4, !dbg !6406

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, ptr %early.addr, align 4, !dbg !6407
  %tobool5 = icmp ne i32 %6, 0, !dbg !6407
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6409

if.then6:                                         ; preds = %if.end4
  store i32 1, ptr %retval, align 4, !dbg !6410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6410

if.end7:                                          ; preds = %if.end4
  br label %while.cond, !dbg !6411

while.cond:                                       ; preds = %sw.epilog, %if.end7
  %7 = load i32, ptr %count, align 4, !dbg !6412
  %8 = load ptr, ptr %mpc.addr, align 8, !dbg !6413
  %length = getelementptr inbounds %struct.mpc_table, ptr %8, i32 0, i32 1, !dbg !6414
  %9 = load i16, ptr %length, align 4, !dbg !6414
  %conv8 = zext i16 %9 to i32, !dbg !6413
  %cmp = icmp slt i32 %7, %conv8, !dbg !6415
  br i1 %cmp, label %while.body, label %while.end, !dbg !6411

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %mpt, align 8, !dbg !6416
  %11 = load i8, ptr %10, align 1, !dbg !6418
  %conv10 = zext i8 %11 to i32, !dbg !6418
  switch i32 %conv10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb15
    i32 3, label %sw.bb16
    i32 4, label %sw.bb17
  ], !dbg !6419

sw.bb:                                            ; preds = %while.body
  %12 = load i32, ptr @acpi_lapic, align 4, !dbg !6420
  %tobool11 = icmp ne i32 %12, 0, !dbg !6420
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !6423

if.then12:                                        ; preds = %sw.bb
  %13 = load ptr, ptr %mpt, align 8, !dbg !6424
  call void @MP_processor_info(ptr noundef %13) #14, !dbg !6425
  br label %if.end13, !dbg !6425

if.end13:                                         ; preds = %if.then12, %sw.bb
  call void @skip_entry(ptr noundef %mpt, ptr noundef %count, i32 noundef 20) #13, !dbg !6426
  br label %sw.epilog, !dbg !6427

sw.bb14:                                          ; preds = %while.body
  %14 = load ptr, ptr %mpt, align 8, !dbg !6428
  call void @MP_bus_info(ptr noundef %14) #14, !dbg !6429
  call void @skip_entry(ptr noundef %mpt, ptr noundef %count, i32 noundef 8) #13, !dbg !6430
  br label %sw.epilog, !dbg !6431

sw.bb15:                                          ; preds = %while.body
  %15 = load ptr, ptr %mpt, align 8, !dbg !6432
  call void @MP_ioapic_info(ptr noundef %15) #14, !dbg !6433
  call void @skip_entry(ptr noundef %mpt, ptr noundef %count, i32 noundef 8) #13, !dbg !6434
  br label %sw.epilog, !dbg !6435

sw.bb16:                                          ; preds = %while.body
  %16 = load ptr, ptr %mpt, align 8, !dbg !6436
  call void @mp_save_irq(ptr noundef %16) #13, !dbg !6437
  call void @skip_entry(ptr noundef %mpt, ptr noundef %count, i32 noundef 8) #13, !dbg !6438
  br label %sw.epilog, !dbg !6439

sw.bb17:                                          ; preds = %while.body
  %17 = load ptr, ptr %mpt, align 8, !dbg !6440
  call void @MP_lintsrc_info(ptr noundef %17) #14, !dbg !6441
  call void @skip_entry(ptr noundef %mpt, ptr noundef %count, i32 noundef 8) #13, !dbg !6442
  br label %sw.epilog, !dbg !6443

sw.default:                                       ; preds = %while.body
  %18 = load ptr, ptr %mpc.addr, align 8, !dbg !6444
  %19 = load ptr, ptr %mpt, align 8, !dbg !6445
  call void @smp_dump_mptable(ptr noundef %18, ptr noundef %19) #14, !dbg !6446
  %20 = load ptr, ptr %mpc.addr, align 8, !dbg !6447
  %length18 = getelementptr inbounds %struct.mpc_table, ptr %20, i32 0, i32 1, !dbg !6448
  %21 = load i16, ptr %length18, align 4, !dbg !6448
  %conv19 = zext i16 %21 to i32, !dbg !6447
  store i32 %conv19, ptr %count, align 4, !dbg !6449
  br label %sw.epilog, !dbg !6450

sw.epilog:                                        ; preds = %sw.default, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %if.end13
  br label %while.cond, !dbg !6411, !llvm.loop !6451

while.end:                                        ; preds = %while.cond
  %22 = load i32, ptr @num_processors, align 4, !dbg !6453
  %tobool20 = icmp ne i32 %22, 0, !dbg !6453
  br i1 %tobool20, label %if.end23, label %if.then21, !dbg !6455

if.then21:                                        ; preds = %while.end
  br label %do.body, !dbg !6456

do.body:                                          ; preds = %if.then21
  br label %do.cond, !dbg !6458

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6458

do.end:                                           ; preds = %do.cond
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef @.str.24) #14, !dbg !6456
  store i32 %call22, ptr %tmp, align 4, !dbg !6458
  %23 = load i32, ptr %tmp, align 4, !dbg !6456
  br label %if.end23, !dbg !6460

if.end23:                                         ; preds = %do.end, %while.end
  %24 = load i32, ptr @num_processors, align 4, !dbg !6461
  store i32 %24, ptr %retval, align 4, !dbg !6462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6462

cleanup:                                          ; preds = %if.end23, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mpt) #12, !dbg !6463
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #12, !dbg !6463
  call void @llvm.lifetime.end.p0(i64 10, ptr %oem) #12, !dbg !6463
  call void @llvm.lifetime.end.p0(i64 16, ptr %str) #12, !dbg !6463
  %25 = load i32, ptr %retval, align 4, !dbg !6463
  ret i32 %25, !dbg !6463
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @smp_check_mpc(ptr noundef %mpc, ptr noundef %oem, ptr noundef %str) #0 section ".init.text" align 16 !dbg !6464 {
entry:
  %retval = alloca i32, align 4
  %mpc.addr = alloca ptr, align 8
  %oem.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  %tmp57 = alloca i32, align 4
  store ptr %mpc, ptr %mpc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mpc.addr, metadata !6468, metadata !DIExpression()), !dbg !6471
  store ptr %oem, ptr %oem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oem.addr, metadata !6469, metadata !DIExpression()), !dbg !6472
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !6470, metadata !DIExpression()), !dbg !6473
  %0 = load ptr, ptr %mpc.addr, align 8, !dbg !6474
  %signature = getelementptr inbounds %struct.mpc_table, ptr %0, i32 0, i32 0, !dbg !6476
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !6474
  %call = call i32 @memcmp(ptr noundef %arraydecay, ptr noundef @.str.25, i64 noundef 4) #13, !dbg !6477
  %tobool = icmp ne i32 %call, 0, !dbg !6477
  br i1 %tobool, label %if.then, label %if.end, !dbg !6478

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6479

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !6482

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %mpc.addr, align 8, !dbg !6479
  %signature1 = getelementptr inbounds %struct.mpc_table, ptr %1, i32 0, i32 0, !dbg !6479
  %arrayidx = getelementptr [4 x i8], ptr %signature1, i64 0, i64 0, !dbg !6479
  %2 = load i8, ptr %arrayidx, align 4, !dbg !6479
  %conv = zext i8 %2 to i32, !dbg !6479
  %3 = load ptr, ptr %mpc.addr, align 8, !dbg !6479
  %signature2 = getelementptr inbounds %struct.mpc_table, ptr %3, i32 0, i32 0, !dbg !6479
  %arrayidx3 = getelementptr [4 x i8], ptr %signature2, i64 0, i64 1, !dbg !6479
  %4 = load i8, ptr %arrayidx3, align 1, !dbg !6479
  %conv4 = zext i8 %4 to i32, !dbg !6479
  %5 = load ptr, ptr %mpc.addr, align 8, !dbg !6479
  %signature5 = getelementptr inbounds %struct.mpc_table, ptr %5, i32 0, i32 0, !dbg !6479
  %arrayidx6 = getelementptr [4 x i8], ptr %signature5, i64 0, i64 2, !dbg !6479
  %6 = load i8, ptr %arrayidx6, align 2, !dbg !6479
  %conv7 = zext i8 %6 to i32, !dbg !6479
  %7 = load ptr, ptr %mpc.addr, align 8, !dbg !6479
  %signature8 = getelementptr inbounds %struct.mpc_table, ptr %7, i32 0, i32 0, !dbg !6479
  %arrayidx9 = getelementptr [4 x i8], ptr %signature8, i64 0, i64 3, !dbg !6479
  %8 = load i8, ptr %arrayidx9, align 1, !dbg !6479
  %conv10 = zext i8 %8 to i32, !dbg !6479
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.26, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv7, i32 noundef %conv10) #14, !dbg !6479
  store i32 %call11, ptr %tmp, align 4, !dbg !6482
  %9 = load i32, ptr %tmp, align 4, !dbg !6479
  store i32 0, ptr %retval, align 4, !dbg !6484
  br label %return, !dbg !6484

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %mpc.addr, align 8, !dbg !6485
  %11 = load ptr, ptr %mpc.addr, align 8, !dbg !6487
  %length = getelementptr inbounds %struct.mpc_table, ptr %11, i32 0, i32 1, !dbg !6488
  %12 = load i16, ptr %length, align 4, !dbg !6488
  %conv12 = zext i16 %12 to i32, !dbg !6487
  %call13 = call i32 @mpf_checksum(ptr noundef %10, i32 noundef %conv12) #14, !dbg !6489
  %tobool14 = icmp ne i32 %call13, 0, !dbg !6489
  br i1 %tobool14, label %if.then15, label %if.end20, !dbg !6490

if.then15:                                        ; preds = %if.end
  br label %do.body16, !dbg !6491

do.body16:                                        ; preds = %if.then15
  br label %do.end17, !dbg !6494

do.end17:                                         ; preds = %do.body16
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef @.str.27) #14, !dbg !6491
  store i32 %call19, ptr %tmp18, align 4, !dbg !6494
  %13 = load i32, ptr %tmp18, align 4, !dbg !6491
  store i32 0, ptr %retval, align 4, !dbg !6496
  br label %return, !dbg !6496

if.end20:                                         ; preds = %if.end
  %14 = load ptr, ptr %mpc.addr, align 8, !dbg !6497
  %spec = getelementptr inbounds %struct.mpc_table, ptr %14, i32 0, i32 2, !dbg !6499
  %15 = load i8, ptr %spec, align 2, !dbg !6499
  %conv21 = zext i8 %15 to i32, !dbg !6497
  %cmp = icmp ne i32 %conv21, 1, !dbg !6500
  br i1 %cmp, label %land.lhs.true, label %if.end34, !dbg !6501

land.lhs.true:                                    ; preds = %if.end20
  %16 = load ptr, ptr %mpc.addr, align 8, !dbg !6502
  %spec23 = getelementptr inbounds %struct.mpc_table, ptr %16, i32 0, i32 2, !dbg !6503
  %17 = load i8, ptr %spec23, align 2, !dbg !6503
  %conv24 = zext i8 %17 to i32, !dbg !6502
  %cmp25 = icmp ne i32 %conv24, 4, !dbg !6504
  br i1 %cmp25, label %if.then27, label %if.end34, !dbg !6505

if.then27:                                        ; preds = %land.lhs.true
  br label %do.body28, !dbg !6506

do.body28:                                        ; preds = %if.then27
  br label %do.end29, !dbg !6509

do.end29:                                         ; preds = %do.body28
  %18 = load ptr, ptr %mpc.addr, align 8, !dbg !6506
  %spec31 = getelementptr inbounds %struct.mpc_table, ptr %18, i32 0, i32 2, !dbg !6506
  %19 = load i8, ptr %spec31, align 2, !dbg !6506
  %conv32 = zext i8 %19 to i32, !dbg !6506
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef @.str.28, i32 noundef %conv32) #14, !dbg !6506
  store i32 %call33, ptr %tmp30, align 4, !dbg !6509
  %20 = load i32, ptr %tmp30, align 4, !dbg !6506
  store i32 0, ptr %retval, align 4, !dbg !6511
  br label %return, !dbg !6511

if.end34:                                         ; preds = %land.lhs.true, %if.end20
  %21 = load ptr, ptr %mpc.addr, align 8, !dbg !6512
  %lapic = getelementptr inbounds %struct.mpc_table, ptr %21, i32 0, i32 9, !dbg !6514
  %22 = load i32, ptr %lapic, align 4, !dbg !6514
  %tobool35 = icmp ne i32 %22, 0, !dbg !6512
  br i1 %tobool35, label %if.end41, label %if.then36, !dbg !6515

if.then36:                                        ; preds = %if.end34
  br label %do.body37, !dbg !6516

do.body37:                                        ; preds = %if.then36
  br label %do.end38, !dbg !6519

do.end38:                                         ; preds = %do.body37
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef @.str.29) #14, !dbg !6516
  store i32 %call40, ptr %tmp39, align 4, !dbg !6519
  %23 = load i32, ptr %tmp39, align 4, !dbg !6516
  store i32 0, ptr %retval, align 4, !dbg !6521
  br label %return, !dbg !6521

if.end41:                                         ; preds = %if.end34
  %24 = load ptr, ptr %oem.addr, align 8, !dbg !6522
  %25 = load ptr, ptr %mpc.addr, align 8, !dbg !6523
  %oem42 = getelementptr inbounds %struct.mpc_table, ptr %25, i32 0, i32 4, !dbg !6524
  %arraydecay43 = getelementptr inbounds [8 x i8], ptr %oem42, i64 0, i64 0, !dbg !6525
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 4 %arraydecay43, i64 8, i1 false), !dbg !6525
  %26 = load ptr, ptr %oem.addr, align 8, !dbg !6526
  %arrayidx44 = getelementptr i8, ptr %26, i64 8, !dbg !6526
  store i8 0, ptr %arrayidx44, align 1, !dbg !6527
  br label %do.body45, !dbg !6528

do.body45:                                        ; preds = %if.end41
  br label %do.end46, !dbg !6530

do.end46:                                         ; preds = %do.body45
  %27 = load ptr, ptr %oem.addr, align 8, !dbg !6528
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef @.str.30, ptr noundef %27) #14, !dbg !6528
  store i32 %call48, ptr %tmp47, align 4, !dbg !6530
  %28 = load i32, ptr %tmp47, align 4, !dbg !6528
  %29 = load ptr, ptr %str.addr, align 8, !dbg !6532
  %30 = load ptr, ptr %mpc.addr, align 8, !dbg !6533
  %productid = getelementptr inbounds %struct.mpc_table, ptr %30, i32 0, i32 5, !dbg !6534
  %arraydecay49 = getelementptr inbounds [12 x i8], ptr %productid, i64 0, i64 0, !dbg !6535
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 4 %arraydecay49, i64 12, i1 false), !dbg !6535
  %31 = load ptr, ptr %str.addr, align 8, !dbg !6536
  %arrayidx50 = getelementptr i8, ptr %31, i64 12, !dbg !6536
  store i8 0, ptr %arrayidx50, align 1, !dbg !6537
  br label %do.body51, !dbg !6538

do.body51:                                        ; preds = %do.end46
  br label %do.end52, !dbg !6540

do.end52:                                         ; preds = %do.body51
  %32 = load ptr, ptr %str.addr, align 8, !dbg !6538
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef @.str.31, ptr noundef %32) #14, !dbg !6538
  store i32 %call54, ptr %tmp53, align 4, !dbg !6540
  %33 = load i32, ptr %tmp53, align 4, !dbg !6538
  br label %do.body55, !dbg !6542

do.body55:                                        ; preds = %do.end52
  br label %do.end56, !dbg !6544

do.end56:                                         ; preds = %do.body55
  %34 = load ptr, ptr %mpc.addr, align 8, !dbg !6542
  %lapic58 = getelementptr inbounds %struct.mpc_table, ptr %34, i32 0, i32 9, !dbg !6542
  %35 = load i32, ptr %lapic58, align 4, !dbg !6542
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef @.str.32, i32 noundef %35) #14, !dbg !6542
  store i32 %call59, ptr %tmp57, align 4, !dbg !6544
  %36 = load i32, ptr %tmp57, align 4, !dbg !6542
  store i32 1, ptr %retval, align 4, !dbg !6546
  br label %return, !dbg !6546

return:                                           ; preds = %do.end56, %do.end38, %do.end29, %do.end17, %do.end
  %37 = load i32, ptr %retval, align 4, !dbg !6547
  ret i32 %37, !dbg !6547
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skip_entry(ptr noundef %ptr, ptr noundef %count, i32 noundef %size) #10 align 16 !dbg !6548 {
entry:
  %ptr.addr = alloca ptr, align 8
  %count.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6553, metadata !DIExpression()), !dbg !6556
  store ptr %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6554, metadata !DIExpression()), !dbg !6557
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6555, metadata !DIExpression()), !dbg !6558
  %0 = load i32, ptr %size.addr, align 4, !dbg !6559
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !6560
  %2 = load ptr, ptr %1, align 8, !dbg !6561
  %idx.ext = sext i32 %0 to i64, !dbg !6561
  %add.ptr = getelementptr i8, ptr %2, i64 %idx.ext, !dbg !6561
  store ptr %add.ptr, ptr %1, align 8, !dbg !6561
  %3 = load i32, ptr %size.addr, align 4, !dbg !6562
  %4 = load ptr, ptr %count.addr, align 8, !dbg !6563
  %5 = load i32, ptr %4, align 4, !dbg !6564
  %add = add i32 %5, %3, !dbg !6564
  store i32 %add, ptr %4, align 4, !dbg !6564
  ret void, !dbg !6565
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @smp_dump_mptable(ptr noundef %mpc, ptr noundef %mpt) #0 section ".init.text" align 16 !dbg !6566 {
entry:
  %mpc.addr = alloca ptr, align 8
  %mpt.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store ptr %mpc, ptr %mpc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mpc.addr, metadata !6570, metadata !DIExpression()), !dbg !6572
  store ptr %mpt, ptr %mpt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mpt.addr, metadata !6571, metadata !DIExpression()), !dbg !6573
  br label %do.body, !dbg !6574

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6576

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.33) #14, !dbg !6574
  store i32 %call, ptr %tmp, align 4, !dbg !6576
  %0 = load i32, ptr %tmp, align 4, !dbg !6574
  br label %do.body1, !dbg !6578

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6580

do.end2:                                          ; preds = %do.body1
  %1 = load ptr, ptr %mpt.addr, align 8, !dbg !6578
  %2 = load i8, ptr %1, align 1, !dbg !6578
  %conv = zext i8 %2 to i32, !dbg !6578
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.34, i32 noundef %conv) #14, !dbg !6578
  store i32 %call4, ptr %tmp3, align 4, !dbg !6580
  %3 = load i32, ptr %tmp3, align 4, !dbg !6578
  %4 = load ptr, ptr %mpc.addr, align 8, !dbg !6582
  %5 = load ptr, ptr %mpc.addr, align 8, !dbg !6583
  %length = getelementptr inbounds %struct.mpc_table, ptr %5, i32 0, i32 1, !dbg !6584
  %6 = load i16, ptr %length, align 4, !dbg !6584
  %conv5 = zext i16 %6 to i64, !dbg !6583
  call void @print_hex_dump(ptr noundef @.str.35, ptr noundef @.str.36, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %4, i64 noundef %conv5, i1 noundef zeroext true) #13, !dbg !6585
  ret void, !dbg !6586
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6587 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @mpf_checksum(ptr noundef %mp, i32 noundef %len) #0 section ".init.text" align 16 !dbg !6590 {
entry:
  %mp.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  store ptr %mp, ptr %mp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mp.addr, metadata !6594, metadata !DIExpression()), !dbg !6597
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6595, metadata !DIExpression()), !dbg !6598
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #12, !dbg !6599
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !6596, metadata !DIExpression()), !dbg !6600
  store i32 0, ptr %sum, align 4, !dbg !6600
  br label %while.cond, !dbg !6601

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %len.addr, align 4, !dbg !6602
  %dec = add i32 %0, -1, !dbg !6602
  store i32 %dec, ptr %len.addr, align 4, !dbg !6602
  %tobool = icmp ne i32 %0, 0, !dbg !6601
  br i1 %tobool, label %while.body, label %while.end, !dbg !6601

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %mp.addr, align 8, !dbg !6603
  %incdec.ptr = getelementptr i8, ptr %1, i32 1, !dbg !6603
  store ptr %incdec.ptr, ptr %mp.addr, align 8, !dbg !6603
  %2 = load i8, ptr %1, align 1, !dbg !6604
  %conv = zext i8 %2 to i32, !dbg !6604
  %3 = load i32, ptr %sum, align 4, !dbg !6605
  %add = add i32 %3, %conv, !dbg !6605
  store i32 %add, ptr %sum, align 4, !dbg !6605
  br label %while.cond, !dbg !6601, !llvm.loop !6606

while.end:                                        ; preds = %while.cond
  %4 = load i32, ptr %sum, align 4, !dbg !6607
  %and = and i32 %4, 255, !dbg !6608
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #12, !dbg !6609
  ret i32 %and, !dbg !6610
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6611 dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6614 dso_local i32 @memblock_reserve(i64 noundef, i64 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @smp_reserve_memory(ptr noundef %mpf) #0 section ".init.text" align 16 !dbg !6618 {
entry:
  %mpf.addr = alloca ptr, align 8
  store ptr %mpf, ptr %mpf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mpf.addr, metadata !6622, metadata !DIExpression()), !dbg !6623
  %0 = load ptr, ptr %mpf.addr, align 8, !dbg !6624
  %physptr = getelementptr inbounds %struct.mpf_intel, ptr %0, i32 0, i32 1, !dbg !6625
  %1 = load i32, ptr %physptr, align 4, !dbg !6625
  %conv = zext i32 %1 to i64, !dbg !6624
  %2 = load ptr, ptr %mpf.addr, align 8, !dbg !6626
  %physptr1 = getelementptr inbounds %struct.mpf_intel, ptr %2, i32 0, i32 1, !dbg !6627
  %3 = load i32, ptr %physptr1, align 4, !dbg !6627
  %conv2 = zext i32 %3 to i64, !dbg !6626
  %call = call i64 @get_mpc_size(i64 noundef %conv2) #14, !dbg !6628
  %call3 = call i32 @memblock_reserve(i64 noundef %conv, i64 noundef %call) #13, !dbg !6629
  ret void, !dbg !6630
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @phys_to_virt(i64 noundef %address) #6 align 16 !dbg !6631 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6636, metadata !DIExpression()), !dbg !6637
  %0 = load i64, ptr %address.addr, align 8, !dbg !6638
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !6638
  %add = add i64 %0, %1, !dbg !6638
  %2 = inttoptr i64 %add to ptr, !dbg !6638
  ret ptr %2, !dbg !6639
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6640 dso_local i64 @memparse(ptr noundef, ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @replace_intsrc_all(ptr noundef %mpc, i64 noundef %mpc_new_phys, i64 noundef %mpc_new_length) #0 section ".init.text" align 16 !dbg !6645 {
entry:
  %retval = alloca i32, align 4
  %mpc.addr = alloca ptr, align 8
  %mpc_new_phys.addr = alloca i64, align 8
  %mpc_new_length.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %nr_m_spare = alloca i32, align 4
  %mpt = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %m = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mpc, ptr %mpc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mpc.addr, metadata !6649, metadata !DIExpression()), !dbg !6663
  store i64 %mpc_new_phys, ptr %mpc_new_phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mpc_new_phys.addr, metadata !6650, metadata !DIExpression()), !dbg !6664
  store i64 %mpc_new_length, ptr %mpc_new_length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mpc_new_length.addr, metadata !6651, metadata !DIExpression()), !dbg !6665
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !6666
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6652, metadata !DIExpression()), !dbg !6667
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #12, !dbg !6668
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6653, metadata !DIExpression()), !dbg !6669
  store i32 44, ptr %count, align 4, !dbg !6669
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_m_spare) #12, !dbg !6670
  call void @llvm.dbg.declare(metadata ptr %nr_m_spare, metadata !6654, metadata !DIExpression()), !dbg !6671
  store i32 0, ptr %nr_m_spare, align 4, !dbg !6671
  call void @llvm.lifetime.start.p0(i64 8, ptr %mpt) #12, !dbg !6672
  call void @llvm.dbg.declare(metadata ptr %mpt, metadata !6655, metadata !DIExpression()), !dbg !6673
  %0 = load ptr, ptr %mpc.addr, align 8, !dbg !6674
  %1 = load i32, ptr %count, align 4, !dbg !6675
  %idx.ext = sext i32 %1 to i64, !dbg !6676
  %add.ptr = getelementptr i8, ptr %0, i64 %idx.ext, !dbg !6676
  store ptr %add.ptr, ptr %mpt, align 8, !dbg !6673
  br label %do.body, !dbg !6677

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6679

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6679

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %mpc.addr, align 8, !dbg !6677
  %length = getelementptr inbounds %struct.mpc_table, ptr %2, i32 0, i32 1, !dbg !6677
  %3 = load i16, ptr %length, align 4, !dbg !6677
  %conv = zext i16 %3 to i32, !dbg !6677
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.50, i32 noundef %conv) #14, !dbg !6677
  store i32 %call, ptr %tmp, align 4, !dbg !6679
  %4 = load i32, ptr %tmp, align 4, !dbg !6677
  br label %while.cond, !dbg !6681

while.cond:                                       ; preds = %sw.epilog, %do.end
  %5 = load i32, ptr %count, align 4, !dbg !6682
  %6 = load ptr, ptr %mpc.addr, align 8, !dbg !6683
  %length1 = getelementptr inbounds %struct.mpc_table, ptr %6, i32 0, i32 1, !dbg !6684
  %7 = load i16, ptr %length1, align 4, !dbg !6684
  %conv2 = zext i16 %7 to i32, !dbg !6683
  %cmp = icmp slt i32 %5, %conv2, !dbg !6685
  br i1 %cmp, label %while.body, label %while.end, !dbg !6681

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %mpt, align 8, !dbg !6686
  %9 = load i8, ptr %8, align 1, !dbg !6688
  %conv4 = zext i8 %9 to i32, !dbg !6688
  switch i32 %conv4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb6
    i32 3, label %sw.bb7
    i32 4, label %sw.bb8
  ], !dbg !6689

sw.bb:                                            ; preds = %while.body
  call void @skip_entry(ptr noundef %mpt, ptr noundef %count, i32 noundef 20) #13, !dbg !6690
  br label %sw.epilog, !dbg !6692

sw.bb5:                                           ; preds = %while.body
  call void @skip_entry(ptr noundef %mpt, ptr noundef %count, i32 noundef 8) #13, !dbg !6693
  br label %sw.epilog, !dbg !6694

sw.bb6:                                           ; preds = %while.body
  call void @skip_entry(ptr noundef %mpt, ptr noundef %count, i32 noundef 8) #13, !dbg !6695
  br label %sw.epilog, !dbg !6696

sw.bb7:                                           ; preds = %while.body
  %10 = load ptr, ptr %mpt, align 8, !dbg !6697
  call void @check_irq_src(ptr noundef %10, ptr noundef %nr_m_spare) #14, !dbg !6698
  call void @skip_entry(ptr noundef %mpt, ptr noundef %count, i32 noundef 8) #13, !dbg !6699
  br label %sw.epilog, !dbg !6700

sw.bb8:                                           ; preds = %while.body
  call void @skip_entry(ptr noundef %mpt, ptr noundef %count, i32 noundef 8) #13, !dbg !6701
  br label %sw.epilog, !dbg !6702

sw.default:                                       ; preds = %while.body
  %11 = load ptr, ptr %mpc.addr, align 8, !dbg !6703
  %12 = load ptr, ptr %mpt, align 8, !dbg !6704
  call void @smp_dump_mptable(ptr noundef %11, ptr noundef %12) #14, !dbg !6705
  br label %out, !dbg !6706

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb
  br label %while.cond, !dbg !6681, !llvm.loop !6707

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %i, align 4, !dbg !6709
  br label %for.cond, !dbg !6710

for.cond:                                         ; preds = %for.inc, %while.end
  %13 = load i32, ptr %i, align 4, !dbg !6711
  %14 = load i32, ptr @mp_irq_entries, align 4, !dbg !6712
  %cmp9 = icmp slt i32 %13, %14, !dbg !6713
  br i1 %cmp9, label %for.body, label %for.end, !dbg !6714

for.body:                                         ; preds = %for.cond
  %15 = load i32, ptr %i, align 4, !dbg !6715
  %idxprom = sext i32 %15 to i64, !dbg !6717
  %arrayidx = getelementptr [1024 x i8], ptr @irq_used, i64 0, i64 %idxprom, !dbg !6717
  %16 = load i8, ptr %arrayidx, align 1, !dbg !6717
  %tobool = icmp ne i8 %16, 0, !dbg !6717
  br i1 %tobool, label %if.then, label %if.end, !dbg !6718

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !6719

if.end:                                           ; preds = %for.body
  %17 = load i32, ptr %i, align 4, !dbg !6720
  %idxprom11 = sext i32 %17 to i64, !dbg !6722
  %arrayidx12 = getelementptr [1024 x %struct.mpc_intsrc], ptr @mp_irqs, i64 0, i64 %idxprom11, !dbg !6722
  %irqtype = getelementptr inbounds %struct.mpc_intsrc, ptr %arrayidx12, i32 0, i32 1, !dbg !6723
  %18 = load i8, ptr %irqtype, align 1, !dbg !6723
  %conv13 = zext i8 %18 to i32, !dbg !6722
  %cmp14 = icmp ne i32 %conv13, 0, !dbg !6724
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !6725

if.then16:                                        ; preds = %if.end
  br label %for.inc, !dbg !6726

if.end17:                                         ; preds = %if.end
  %19 = load i32, ptr %i, align 4, !dbg !6727
  %idxprom18 = sext i32 %19 to i64, !dbg !6729
  %arrayidx19 = getelementptr [1024 x %struct.mpc_intsrc], ptr @mp_irqs, i64 0, i64 %idxprom18, !dbg !6729
  %irqflag = getelementptr inbounds %struct.mpc_intsrc, ptr %arrayidx19, i32 0, i32 2, !dbg !6730
  %20 = load i16, ptr %irqflag, align 2, !dbg !6730
  %conv20 = zext i16 %20 to i32, !dbg !6729
  %cmp21 = icmp ne i32 %conv20, 15, !dbg !6731
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !6732

if.then23:                                        ; preds = %if.end17
  br label %for.inc, !dbg !6733

if.end24:                                         ; preds = %if.end17
  %21 = load i32, ptr %nr_m_spare, align 4, !dbg !6734
  %cmp25 = icmp sgt i32 %21, 0, !dbg !6735
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !6736

if.then27:                                        ; preds = %if.end24
  br label %do.body28, !dbg !6737

do.body28:                                        ; preds = %if.then27
  %22 = load i32, ptr @apic_verbosity, align 4, !dbg !6739
  %cmp29 = icmp sle i32 1, %22, !dbg !6739
  br i1 %cmp29, label %if.then31, label %if.end37, !dbg !6742

if.then31:                                        ; preds = %do.body28
  br label %do.body32, !dbg !6743

do.body32:                                        ; preds = %if.then31
  br label %do.cond33, !dbg !6745

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6745

do.end34:                                         ; preds = %do.cond33
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef @.str.51) #14, !dbg !6743
  store i32 %call36, ptr %tmp35, align 4, !dbg !6745
  %23 = load i32, ptr %tmp35, align 4, !dbg !6743
  br label %if.end37, !dbg !6739

if.end37:                                         ; preds = %do.end34, %do.body28
  br label %do.cond38, !dbg !6742

do.cond38:                                        ; preds = %if.end37
  br label %do.end39, !dbg !6742

do.end39:                                         ; preds = %do.cond38
  %24 = load i32, ptr %nr_m_spare, align 4, !dbg !6747
  %dec = add i32 %24, -1, !dbg !6747
  store i32 %dec, ptr %nr_m_spare, align 4, !dbg !6747
  %25 = load i32, ptr %nr_m_spare, align 4, !dbg !6748
  %idxprom40 = sext i32 %25 to i64, !dbg !6749
  %arrayidx41 = getelementptr [20 x ptr], ptr @m_spare, i64 0, i64 %idxprom40, !dbg !6749
  %26 = load ptr, ptr %arrayidx41, align 8, !dbg !6749
  %27 = load i32, ptr %i, align 4, !dbg !6750
  %idxprom42 = sext i32 %27 to i64, !dbg !6751
  %arrayidx43 = getelementptr [1024 x %struct.mpc_intsrc], ptr @mp_irqs, i64 0, i64 %idxprom42, !dbg !6751
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr align 8 %arrayidx43, i64 8, i1 false), !dbg !6752
  %28 = load i32, ptr %nr_m_spare, align 4, !dbg !6753
  %idxprom44 = sext i32 %28 to i64, !dbg !6754
  %arrayidx45 = getelementptr [20 x ptr], ptr @m_spare, i64 0, i64 %idxprom44, !dbg !6754
  store ptr null, ptr %arrayidx45, align 8, !dbg !6755
  br label %if.end58, !dbg !6756

if.else:                                          ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #12, !dbg !6757
  call void @llvm.dbg.declare(metadata ptr %m, metadata !6656, metadata !DIExpression()), !dbg !6758
  %29 = load ptr, ptr %mpt, align 8, !dbg !6759
  store ptr %29, ptr %m, align 8, !dbg !6758
  %30 = load i32, ptr %count, align 4, !dbg !6760
  %conv46 = sext i32 %30 to i64, !dbg !6760
  %add = add i64 %conv46, 8, !dbg !6760
  %conv47 = trunc i64 %add to i32, !dbg !6760
  store i32 %conv47, ptr %count, align 4, !dbg !6760
  %31 = load i64, ptr %mpc_new_phys.addr, align 8, !dbg !6761
  %32 = load i64, ptr %mpc_new_length.addr, align 8, !dbg !6763
  %33 = load i32, ptr %count, align 4, !dbg !6764
  %call48 = call i32 @check_slot(i64 noundef %31, i64 noundef %32, i32 noundef %33) #14, !dbg !6765
  %cmp49 = icmp slt i32 %call48, 0, !dbg !6766
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !6767

if.then51:                                        ; preds = %if.else
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6768

if.end52:                                         ; preds = %if.else
  %34 = load ptr, ptr %m, align 8, !dbg !6769
  %35 = load i32, ptr %i, align 4, !dbg !6770
  %idxprom53 = sext i32 %35 to i64, !dbg !6771
  %arrayidx54 = getelementptr [1024 x %struct.mpc_intsrc], ptr @mp_irqs, i64 0, i64 %idxprom53, !dbg !6771
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %34, ptr align 8 %arrayidx54, i64 8, i1 false), !dbg !6772
  %36 = load i32, ptr %count, align 4, !dbg !6773
  %conv55 = trunc i32 %36 to i16, !dbg !6773
  %37 = load ptr, ptr %mpc.addr, align 8, !dbg !6774
  %length56 = getelementptr inbounds %struct.mpc_table, ptr %37, i32 0, i32 1, !dbg !6775
  store i16 %conv55, ptr %length56, align 4, !dbg !6776
  %38 = load ptr, ptr %mpt, align 8, !dbg !6777
  %add.ptr57 = getelementptr i8, ptr %38, i64 8, !dbg !6777
  store ptr %add.ptr57, ptr %mpt, align 8, !dbg !6777
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6778
  br label %cleanup, !dbg !6778

cleanup:                                          ; preds = %if.then51, %if.end52
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #12, !dbg !6778
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup67 [
    i32 0, label %cleanup.cont
    i32 7, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end58

if.end58:                                         ; preds = %cleanup.cont, %do.end39
  %39 = load i32, ptr %i, align 4, !dbg !6779
  %idxprom59 = sext i32 %39 to i64, !dbg !6780
  %arrayidx60 = getelementptr [1024 x %struct.mpc_intsrc], ptr @mp_irqs, i64 0, i64 %idxprom59, !dbg !6780
  call void @print_mp_irq_info(ptr noundef %arrayidx60) #14, !dbg !6781
  br label %for.inc, !dbg !6782

for.inc:                                          ; preds = %if.end58, %if.then23, %if.then16, %if.then
  %40 = load i32, ptr %i, align 4, !dbg !6783
  %inc = add i32 %40, 1, !dbg !6783
  store i32 %inc, ptr %i, align 4, !dbg !6783
  br label %for.cond, !dbg !6784, !llvm.loop !6785

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !6786

out:                                              ; preds = %for.end, %cleanup, %sw.default
  call void @llvm.dbg.label(metadata !6662), !dbg !6787
  %41 = load ptr, ptr %mpc.addr, align 8, !dbg !6788
  %checksum = getelementptr inbounds %struct.mpc_table, ptr %41, i32 0, i32 3, !dbg !6789
  store i8 0, ptr %checksum, align 1, !dbg !6790
  %42 = load ptr, ptr %mpc.addr, align 8, !dbg !6791
  %43 = load ptr, ptr %mpc.addr, align 8, !dbg !6792
  %length61 = getelementptr inbounds %struct.mpc_table, ptr %43, i32 0, i32 1, !dbg !6793
  %44 = load i16, ptr %length61, align 4, !dbg !6793
  %conv62 = zext i16 %44 to i32, !dbg !6792
  %call63 = call i32 @mpf_checksum(ptr noundef %42, i32 noundef %conv62) #14, !dbg !6794
  %45 = load ptr, ptr %mpc.addr, align 8, !dbg !6795
  %checksum64 = getelementptr inbounds %struct.mpc_table, ptr %45, i32 0, i32 3, !dbg !6796
  %46 = load i8, ptr %checksum64, align 1, !dbg !6797
  %conv65 = zext i8 %46 to i32, !dbg !6797
  %sub = sub i32 %conv65, %call63, !dbg !6797
  %conv66 = trunc i32 %sub to i8, !dbg !6797
  store i8 %conv66, ptr %checksum64, align 1, !dbg !6797
  store i32 0, ptr %retval, align 4, !dbg !6798
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup67, !dbg !6798

cleanup67:                                        ; preds = %out, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %mpt) #12, !dbg !6799
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_m_spare) #12, !dbg !6799
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #12, !dbg !6799
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !6799
  %47 = load i32, ptr %retval, align 4, !dbg !6799
  ret i32 %47, !dbg !6799
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @check_irq_src(ptr noundef %m, ptr noundef %nr_m_spare) #0 section ".init.text" align 16 !dbg !6800 {
entry:
  %m.addr = alloca ptr, align 8
  %nr_m_spare.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6804, metadata !DIExpression()), !dbg !6807
  store ptr %nr_m_spare, ptr %nr_m_spare.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_m_spare.addr, metadata !6805, metadata !DIExpression()), !dbg !6808
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !6809
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6806, metadata !DIExpression()), !dbg !6810
  br label %do.body, !dbg !6811

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @apic_verbosity, align 4, !dbg !6812
  %cmp = icmp sle i32 1, %0, !dbg !6812
  br i1 %cmp, label %if.then, label %if.end, !dbg !6815

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !6816

do.body1:                                         ; preds = %if.then
  br label %do.cond, !dbg !6818

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6818

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.52) #14, !dbg !6816
  store i32 %call, ptr %tmp, align 4, !dbg !6818
  %1 = load i32, ptr %tmp, align 4, !dbg !6816
  br label %if.end, !dbg !6812

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond2, !dbg !6815

do.cond2:                                         ; preds = %if.end
  br label %do.end3, !dbg !6815

do.end3:                                          ; preds = %do.cond2
  %2 = load ptr, ptr %m.addr, align 8, !dbg !6820
  call void @print_mp_irq_info(ptr noundef %2) #14, !dbg !6821
  %3 = load ptr, ptr %m.addr, align 8, !dbg !6822
  %call4 = call i32 @get_MP_intsrc_index(ptr noundef %3) #14, !dbg !6823
  store i32 %call4, ptr %i, align 4, !dbg !6824
  %4 = load i32, ptr %i, align 4, !dbg !6825
  %cmp5 = icmp sgt i32 %4, 0, !dbg !6827
  br i1 %cmp5, label %if.then6, label %if.end20, !dbg !6828

if.then6:                                         ; preds = %do.end3
  %5 = load ptr, ptr %m.addr, align 8, !dbg !6829
  %6 = load i32, ptr %i, align 4, !dbg !6831
  %idxprom = sext i32 %6 to i64, !dbg !6832
  %arrayidx = getelementptr [1024 x %struct.mpc_intsrc], ptr @mp_irqs, i64 0, i64 %idxprom, !dbg !6832
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %5, ptr align 8 %arrayidx, i64 8, i1 false), !dbg !6833
  br label %do.body7, !dbg !6834

do.body7:                                         ; preds = %if.then6
  %7 = load i32, ptr @apic_verbosity, align 4, !dbg !6835
  %cmp8 = icmp sle i32 1, %7, !dbg !6835
  br i1 %cmp8, label %if.then9, label %if.end15, !dbg !6838

if.then9:                                         ; preds = %do.body7
  br label %do.body10, !dbg !6839

do.body10:                                        ; preds = %if.then9
  br label %do.cond11, !dbg !6841

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6841

do.end12:                                         ; preds = %do.cond11
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.53) #14, !dbg !6839
  store i32 %call14, ptr %tmp13, align 4, !dbg !6841
  %8 = load i32, ptr %tmp13, align 4, !dbg !6839
  br label %if.end15, !dbg !6835

if.end15:                                         ; preds = %do.end12, %do.body7
  br label %do.cond16, !dbg !6838

do.cond16:                                        ; preds = %if.end15
  br label %do.end17, !dbg !6838

do.end17:                                         ; preds = %do.cond16
  %9 = load i32, ptr %i, align 4, !dbg !6843
  %idxprom18 = sext i32 %9 to i64, !dbg !6844
  %arrayidx19 = getelementptr [1024 x %struct.mpc_intsrc], ptr @mp_irqs, i64 0, i64 %idxprom18, !dbg !6844
  call void @print_mp_irq_info(ptr noundef %arrayidx19) #14, !dbg !6845
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6846

if.end20:                                         ; preds = %do.end3
  %10 = load i32, ptr %i, align 4, !dbg !6847
  %tobool = icmp ne i32 %10, 0, !dbg !6847
  br i1 %tobool, label %if.end22, label %if.then21, !dbg !6849

if.then21:                                        ; preds = %if.end20
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6850

if.end22:                                         ; preds = %if.end20
  %11 = load ptr, ptr %nr_m_spare.addr, align 8, !dbg !6852
  %12 = load i32, ptr %11, align 4, !dbg !6854
  %cmp23 = icmp slt i32 %12, 20, !dbg !6855
  br i1 %cmp23, label %if.then24, label %if.end27, !dbg !6856

if.then24:                                        ; preds = %if.end22
  %13 = load ptr, ptr %m.addr, align 8, !dbg !6857
  %14 = load ptr, ptr %nr_m_spare.addr, align 8, !dbg !6859
  %15 = load i32, ptr %14, align 4, !dbg !6860
  %idxprom25 = sext i32 %15 to i64, !dbg !6861
  %arrayidx26 = getelementptr [20 x ptr], ptr @m_spare, i64 0, i64 %idxprom25, !dbg !6861
  store ptr %13, ptr %arrayidx26, align 8, !dbg !6862
  %16 = load ptr, ptr %nr_m_spare.addr, align 8, !dbg !6863
  %17 = load i32, ptr %16, align 4, !dbg !6864
  %add = add i32 %17, 1, !dbg !6864
  store i32 %add, ptr %16, align 4, !dbg !6864
  br label %if.end27, !dbg !6865

if.end27:                                         ; preds = %if.then24, %if.end22
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6866
  br label %cleanup, !dbg !6866

cleanup:                                          ; preds = %if.end27, %if.then21, %do.end17
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !6866
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6866

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @check_slot(i64 noundef %mpc_new_phys, i64 noundef %mpc_new_length, i32 noundef %count) #0 section ".init.text" align 16 !dbg !6867 {
entry:
  %retval = alloca i32, align 4
  %mpc_new_phys.addr = alloca i64, align 8
  %mpc_new_length.addr = alloca i64, align 8
  %count.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %mpc_new_phys, ptr %mpc_new_phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mpc_new_phys.addr, metadata !6871, metadata !DIExpression()), !dbg !6882
  store i64 %mpc_new_length, ptr %mpc_new_length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mpc_new_length.addr, metadata !6872, metadata !DIExpression()), !dbg !6883
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6873, metadata !DIExpression()), !dbg !6884
  %0 = load i64, ptr %mpc_new_phys.addr, align 8, !dbg !6885
  %tobool = icmp ne i64 %0, 0, !dbg !6885
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6886

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %count.addr, align 4, !dbg !6887
  %conv = sext i32 %1 to i64, !dbg !6887
  %2 = load i64, ptr %mpc_new_length.addr, align 8, !dbg !6888
  %cmp = icmp ule i64 %conv, %2, !dbg !6889
  br i1 %cmp, label %if.then, label %if.end32, !dbg !6890

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6891
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6874, metadata !DIExpression()), !dbg !6891
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6891
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6892
  %tobool2 = icmp ne i32 %3, 0, !dbg !6892
  %lnot = xor i1 %tobool2, true, !dbg !6892
  %lnot3 = xor i1 %lnot, true, !dbg !6892
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6892
  %conv4 = sext i32 %lnot.ext to i64, !dbg !6892
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !6892
  %tobool5 = icmp ne i64 %expval, 0, !dbg !6892
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !6891

if.then6:                                         ; preds = %if.then
  br label %do.body, !dbg !6892

do.body:                                          ; preds = %if.then6
  br label %do.body7, !dbg !6893

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !6894

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !6894

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %count.addr, align 4, !dbg !6893
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.54, i32 noundef %4) #13, !dbg !6893
  br label %do.body8, !dbg !6893

do.body8:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !6896
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6878, metadata !DIExpression()), !dbg !6896
  store i32 2313, ptr %__flags, align 4, !dbg !6896
  br label %do.body9, !dbg !6896

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !6897

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6897

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6896

do.body12:                                        ; preds = %do.end11
  %5 = load i32, ptr %__flags, align 4, !dbg !6899
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 703, i32 %5, i64 12) #12, !dbg !6899, !srcloc !6901
  br label %do.cond13, !dbg !6899

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6899

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !6896

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !6902

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6902

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !6893
  br label %do.cond18, !dbg !6896

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !6896

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !6893

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !6904

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6904

do.end22:                                         ; preds = %do.cond21
  br label %do.cond23, !dbg !6893

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !6893

do.end24:                                         ; preds = %do.cond23
  br label %if.end, !dbg !6893

if.end:                                           ; preds = %do.end24, %if.then
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6891
  %tobool25 = icmp ne i32 %6, 0, !dbg !6891
  %lnot26 = xor i1 %tobool25, true, !dbg !6891
  %lnot28 = xor i1 %lnot26, true, !dbg !6891
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !6891
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !6891
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !6891
  store i64 %expval31, ptr %tmp, align 8, !dbg !6892
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6906
  %7 = load i64, ptr %tmp, align 8, !dbg !6891
  store i32 -1, ptr %retval, align 4, !dbg !6907
  br label %return, !dbg !6907

if.end32:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !6908
  br label %return, !dbg !6908

return:                                           ; preds = %if.end32, %if.end
  %8 = load i32, ptr %retval, align 4, !dbg !6909
  ret i32 %8, !dbg !6909
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @print_mp_irq_info(ptr noundef %mp_irq) #0 section ".init.text" align 16 !dbg !6910 {
entry:
  %mp_irq.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %mp_irq, ptr %mp_irq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mp_irq.addr, metadata !6912, metadata !DIExpression()), !dbg !6913
  br label %do.body, !dbg !6914

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @apic_verbosity, align 4, !dbg !6915
  %cmp = icmp sle i32 1, %0, !dbg !6915
  br i1 %cmp, label %if.then, label %if.end, !dbg !6918

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !6919

do.body1:                                         ; preds = %if.then
  br label %do.end, !dbg !6921

do.end:                                           ; preds = %do.body1
  %1 = load ptr, ptr %mp_irq.addr, align 8, !dbg !6919
  %irqtype = getelementptr inbounds %struct.mpc_intsrc, ptr %1, i32 0, i32 1, !dbg !6919
  %2 = load i8, ptr %irqtype, align 1, !dbg !6919
  %conv = zext i8 %2 to i32, !dbg !6919
  %3 = load ptr, ptr %mp_irq.addr, align 8, !dbg !6919
  %irqflag = getelementptr inbounds %struct.mpc_intsrc, ptr %3, i32 0, i32 2, !dbg !6919
  %4 = load i16, ptr %irqflag, align 2, !dbg !6919
  %conv2 = zext i16 %4 to i32, !dbg !6919
  %and = and i32 %conv2, 3, !dbg !6919
  %5 = load ptr, ptr %mp_irq.addr, align 8, !dbg !6919
  %irqflag3 = getelementptr inbounds %struct.mpc_intsrc, ptr %5, i32 0, i32 2, !dbg !6919
  %6 = load i16, ptr %irqflag3, align 2, !dbg !6919
  %conv4 = zext i16 %6 to i32, !dbg !6919
  %shr = ashr i32 %conv4, 2, !dbg !6919
  %and5 = and i32 %shr, 3, !dbg !6919
  %7 = load ptr, ptr %mp_irq.addr, align 8, !dbg !6919
  %srcbus = getelementptr inbounds %struct.mpc_intsrc, ptr %7, i32 0, i32 3, !dbg !6919
  %8 = load i8, ptr %srcbus, align 2, !dbg !6919
  %conv6 = zext i8 %8 to i32, !dbg !6919
  %9 = load ptr, ptr %mp_irq.addr, align 8, !dbg !6919
  %srcbusirq = getelementptr inbounds %struct.mpc_intsrc, ptr %9, i32 0, i32 4, !dbg !6919
  %10 = load i8, ptr %srcbusirq, align 1, !dbg !6919
  %conv7 = zext i8 %10 to i32, !dbg !6919
  %11 = load ptr, ptr %mp_irq.addr, align 8, !dbg !6919
  %dstapic = getelementptr inbounds %struct.mpc_intsrc, ptr %11, i32 0, i32 5, !dbg !6919
  %12 = load i8, ptr %dstapic, align 2, !dbg !6919
  %conv8 = zext i8 %12 to i32, !dbg !6919
  %13 = load ptr, ptr %mp_irq.addr, align 8, !dbg !6919
  %dstirq = getelementptr inbounds %struct.mpc_intsrc, ptr %13, i32 0, i32 6, !dbg !6919
  %14 = load i8, ptr %dstirq, align 1, !dbg !6919
  %conv9 = zext i8 %14 to i32, !dbg !6919
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.55, i32 noundef %conv, i32 noundef %and, i32 noundef %and5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9) #14, !dbg !6919
  store i32 %call, ptr %tmp, align 4, !dbg !6921
  %15 = load i32, ptr %tmp, align 4, !dbg !6919
  br label %if.end, !dbg !6915

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end10, !dbg !6918

do.end10:                                         ; preds = %if.end
  ret void, !dbg !6923
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @get_MP_intsrc_index(ptr noundef %m) #0 section ".init.text" align 16 !dbg !6924 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6928, metadata !DIExpression()), !dbg !6930
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !6931
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6929, metadata !DIExpression()), !dbg !6932
  %0 = load ptr, ptr %m.addr, align 8, !dbg !6933
  %irqtype = getelementptr inbounds %struct.mpc_intsrc, ptr %0, i32 0, i32 1, !dbg !6935
  %1 = load i8, ptr %irqtype, align 1, !dbg !6935
  %conv = zext i8 %1 to i32, !dbg !6933
  %cmp = icmp ne i32 %conv, 0, !dbg !6936
  br i1 %cmp, label %if.then, label %if.end, !dbg !6937

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6938

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %m.addr, align 8, !dbg !6939
  %irqflag = getelementptr inbounds %struct.mpc_intsrc, ptr %2, i32 0, i32 2, !dbg !6941
  %3 = load i16, ptr %irqflag, align 2, !dbg !6941
  %conv2 = zext i16 %3 to i32, !dbg !6939
  %cmp3 = icmp ne i32 %conv2, 15, !dbg !6942
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !6943

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6944

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !6945
  br label %for.cond, !dbg !6947

for.cond:                                         ; preds = %for.inc, %if.end6
  %4 = load i32, ptr %i, align 4, !dbg !6948
  %5 = load i32, ptr @mp_irq_entries, align 4, !dbg !6950
  %cmp7 = icmp slt i32 %4, %5, !dbg !6951
  br i1 %cmp7, label %for.body, label %for.end, !dbg !6952

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4, !dbg !6953
  %idxprom = sext i32 %6 to i64, !dbg !6956
  %arrayidx = getelementptr [1024 x %struct.mpc_intsrc], ptr @mp_irqs, i64 0, i64 %idxprom, !dbg !6956
  %irqtype9 = getelementptr inbounds %struct.mpc_intsrc, ptr %arrayidx, i32 0, i32 1, !dbg !6957
  %7 = load i8, ptr %irqtype9, align 1, !dbg !6957
  %conv10 = zext i8 %7 to i32, !dbg !6956
  %cmp11 = icmp ne i32 %conv10, 0, !dbg !6958
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !6959

if.then13:                                        ; preds = %for.body
  br label %for.inc, !dbg !6960

if.end14:                                         ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !6961
  %idxprom15 = sext i32 %8 to i64, !dbg !6963
  %arrayidx16 = getelementptr [1024 x %struct.mpc_intsrc], ptr @mp_irqs, i64 0, i64 %idxprom15, !dbg !6963
  %irqflag17 = getelementptr inbounds %struct.mpc_intsrc, ptr %arrayidx16, i32 0, i32 2, !dbg !6964
  %9 = load i16, ptr %irqflag17, align 2, !dbg !6964
  %conv18 = zext i16 %9 to i32, !dbg !6963
  %cmp19 = icmp ne i32 %conv18, 15, !dbg !6965
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !6966

if.then21:                                        ; preds = %if.end14
  br label %for.inc, !dbg !6967

if.end22:                                         ; preds = %if.end14
  %10 = load i32, ptr %i, align 4, !dbg !6968
  %idxprom23 = sext i32 %10 to i64, !dbg !6970
  %arrayidx24 = getelementptr [1024 x %struct.mpc_intsrc], ptr @mp_irqs, i64 0, i64 %idxprom23, !dbg !6970
  %srcbus = getelementptr inbounds %struct.mpc_intsrc, ptr %arrayidx24, i32 0, i32 3, !dbg !6971
  %11 = load i8, ptr %srcbus, align 4, !dbg !6971
  %conv25 = zext i8 %11 to i32, !dbg !6970
  %12 = load ptr, ptr %m.addr, align 8, !dbg !6972
  %srcbus26 = getelementptr inbounds %struct.mpc_intsrc, ptr %12, i32 0, i32 3, !dbg !6973
  %13 = load i8, ptr %srcbus26, align 2, !dbg !6973
  %conv27 = zext i8 %13 to i32, !dbg !6972
  %cmp28 = icmp ne i32 %conv25, %conv27, !dbg !6974
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !6975

if.then30:                                        ; preds = %if.end22
  br label %for.inc, !dbg !6976

if.end31:                                         ; preds = %if.end22
  %14 = load i32, ptr %i, align 4, !dbg !6977
  %idxprom32 = sext i32 %14 to i64, !dbg !6979
  %arrayidx33 = getelementptr [1024 x %struct.mpc_intsrc], ptr @mp_irqs, i64 0, i64 %idxprom32, !dbg !6979
  %srcbusirq = getelementptr inbounds %struct.mpc_intsrc, ptr %arrayidx33, i32 0, i32 4, !dbg !6980
  %15 = load i8, ptr %srcbusirq, align 1, !dbg !6980
  %conv34 = zext i8 %15 to i32, !dbg !6979
  %16 = load ptr, ptr %m.addr, align 8, !dbg !6981
  %srcbusirq35 = getelementptr inbounds %struct.mpc_intsrc, ptr %16, i32 0, i32 4, !dbg !6982
  %17 = load i8, ptr %srcbusirq35, align 1, !dbg !6982
  %conv36 = zext i8 %17 to i32, !dbg !6981
  %cmp37 = icmp ne i32 %conv34, %conv36, !dbg !6983
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !6984

if.then39:                                        ; preds = %if.end31
  br label %for.inc, !dbg !6985

if.end40:                                         ; preds = %if.end31
  %18 = load i32, ptr %i, align 4, !dbg !6986
  %idxprom41 = sext i32 %18 to i64, !dbg !6988
  %arrayidx42 = getelementptr [1024 x i8], ptr @irq_used, i64 0, i64 %idxprom41, !dbg !6988
  %19 = load i8, ptr %arrayidx42, align 1, !dbg !6988
  %tobool = icmp ne i8 %19, 0, !dbg !6988
  br i1 %tobool, label %if.then43, label %if.end44, !dbg !6989

if.then43:                                        ; preds = %if.end40
  store i32 -2, ptr %retval, align 4, !dbg !6990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6990

if.end44:                                         ; preds = %if.end40
  %20 = load i32, ptr %i, align 4, !dbg !6992
  %idxprom45 = sext i32 %20 to i64, !dbg !6993
  %arrayidx46 = getelementptr [1024 x i8], ptr @irq_used, i64 0, i64 %idxprom45, !dbg !6993
  store i8 1, ptr %arrayidx46, align 1, !dbg !6994
  %21 = load i32, ptr %i, align 4, !dbg !6995
  store i32 %21, ptr %retval, align 4, !dbg !6996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6996

for.inc:                                          ; preds = %if.then39, %if.then30, %if.then21, %if.then13
  %22 = load i32, ptr %i, align 4, !dbg !6997
  %inc = add i32 %22, 1, !dbg !6997
  store i32 %inc, ptr %i, align 4, !dbg !6997
  br label %for.cond, !dbg !6998, !llvm.loop !6999

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4, !dbg !7001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7001

cleanup:                                          ; preds = %for.end, %if.end44, %if.then43, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !7002
  %23 = load i32, ptr %retval, align 4, !dbg !7002
  ret i32 %23, !dbg !7002
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7003 dso_local void @__warn_printk(ptr noundef, ...) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!577, !578, !579, !580, !581, !582, !583, !584}
!llvm.ident = !{!585}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mpf_found", scope: !2, file: !3, line: 409, type: !574, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.mpparse.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/mpparse\22 -D KBUILD_BASENAME=\22mpparse\22 -D KBUILD_MODNAME=\22mpparse\22 -D __KBUILD_MODNAME=kmod_mpparse -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/mpparse.ll arch/x86/kernel/mpparse.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !217, globals: !301, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/mpparse.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b69512e15ed40ee9036a4632018c8c7")
!4 = !{!5, !32, !37, !44, !51, !56, !64, !80, !88, !94, !99, !105, !112, !119, !125, !131, !138, !146, !154, !163, !168, !173, !179, !185, !204, !211}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuid_leafs", file: !6, line: 13, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!9 = !DIEnumerator(name: "CPUID_1_EDX", value: 0)
!10 = !DIEnumerator(name: "CPUID_8000_0001_EDX", value: 1)
!11 = !DIEnumerator(name: "CPUID_8086_0001_EDX", value: 2)
!12 = !DIEnumerator(name: "CPUID_LNX_1", value: 3)
!13 = !DIEnumerator(name: "CPUID_1_ECX", value: 4)
!14 = !DIEnumerator(name: "CPUID_C000_0001_EDX", value: 5)
!15 = !DIEnumerator(name: "CPUID_8000_0001_ECX", value: 6)
!16 = !DIEnumerator(name: "CPUID_LNX_2", value: 7)
!17 = !DIEnumerator(name: "CPUID_LNX_3", value: 8)
!18 = !DIEnumerator(name: "CPUID_7_0_EBX", value: 9)
!19 = !DIEnumerator(name: "CPUID_D_1_EAX", value: 10)
!20 = !DIEnumerator(name: "CPUID_LNX_4", value: 11)
!21 = !DIEnumerator(name: "CPUID_7_1_EAX", value: 12)
!22 = !DIEnumerator(name: "CPUID_8000_0008_EBX", value: 13)
!23 = !DIEnumerator(name: "CPUID_6_EAX", value: 14)
!24 = !DIEnumerator(name: "CPUID_8000_000A_EDX", value: 15)
!25 = !DIEnumerator(name: "CPUID_7_ECX", value: 16)
!26 = !DIEnumerator(name: "CPUID_8000_0007_EBX", value: 17)
!27 = !DIEnumerator(name: "CPUID_7_EDX", value: 18)
!28 = !DIEnumerator(name: "CPUID_8000_001F_EAX", value: 19)
!29 = !DIEnumerator(name: "CPUID_8000_0021_EAX", value: 20)
!30 = !DIEnumerator(name: "CPUID_LNX_5", value: 21)
!31 = !DIEnumerator(name: "NR_CPUID_WORDS", value: 22)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 10, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "false", value: 0)
!36 = !DIEnumerator(name: "true", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ioapic_domain_type", file: !38, line: 28, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./arch/x86/include/asm/irqdomain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2bc4706fb07cfd8e9ed646beaa0668fd")
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "IOAPIC_DOMAIN_INVALID", value: 0)
!41 = !DIEnumerator(name: "IOAPIC_DOMAIN_LEGACY", value: 1)
!42 = !DIEnumerator(name: "IOAPIC_DOMAIN_STRICT", value: 2)
!43 = !DIEnumerator(name: "IOAPIC_DOMAIN_DYNAMIC", value: 3)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !45, line: 312, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!48 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!49 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!50 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !52, line: 2052, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!53 = !{!54, !55}
!54 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!55 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !57, line: 9, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!58 = !{!59, !60, !61, !62, !63}
!59 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!60 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!61 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!62 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!63 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !65, line: 1325, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!67 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!68 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!69 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!70 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!71 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!72 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!73 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!74 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!75 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!76 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!77 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!78 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!79 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !81, line: 68, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!82 = !{!83, !84, !85, !86, !87}
!83 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!84 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!85 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!86 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!87 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !89, line: 54, baseType: !7, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!90 = !{!91, !92, !93}
!91 = !DIEnumerator(name: "USRQUOTA", value: 0)
!92 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!93 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !95, line: 65, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!96 = !{!97, !98}
!97 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!98 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !100, line: 16, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "TT_NONE", value: 0)
!103 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!104 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !106, line: 51, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!107 = !{!108, !109, !110, !111}
!108 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!109 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!110 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!111 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !113, line: 15, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!114 = !{!115, !116, !117, !118}
!115 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!116 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!117 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!118 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !120, line: 26, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!121 = !{!122, !123, !124}
!122 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!123 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!124 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !126, line: 45, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!127 = !{!128, !129, !130}
!128 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!129 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!130 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !132, line: 487, baseType: !7, size: 32, elements: !133)
!132 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!133 = !{!134, !135, !136, !137}
!134 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!135 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!136 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!137 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !139, line: 620, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!140 = !{!141, !142, !143, !144, !145}
!141 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!142 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!143 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!144 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!145 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !139, line: 597, baseType: !147, size: 32, elements: !148)
!147 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!148 = !{!149, !150, !151, !152, !153}
!149 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!150 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!151 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!152 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!153 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !132, line: 547, baseType: !7, size: 32, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162}
!156 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!157 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!158 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!159 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!160 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!161 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!162 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !132, line: 564, baseType: !7, size: 32, elements: !164)
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!166 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!167 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !132, line: 577, baseType: !7, size: 32, elements: !169)
!169 = !{!170, !171, !172}
!170 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!171 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!172 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !132, line: 503, baseType: !7, size: 32, elements: !174)
!174 = !{!175, !176, !177, !178}
!175 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!176 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!177 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!178 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !180, line: 30, baseType: !7, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!181 = !{!182, !183, !184}
!182 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!183 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!184 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !186, line: 12, baseType: !7, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/irqdomain_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "168aa78cd6535dbcc4cf99c0f8004653")
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!188 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0)
!189 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1)
!190 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2)
!191 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3)
!192 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4)
!193 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5)
!194 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6)
!195 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7)
!196 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8)
!197 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9)
!198 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10)
!199 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSI", value: 11)
!200 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSIX", value: 12)
!201 = !DIEnumerator(name: "DOMAIN_BUS_DMAR", value: 13)
!202 = !DIEnumerator(name: "DOMAIN_BUS_AMDVI", value: 14)
!203 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_IMS", value: 15)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mp_irq_source_types", file: !205, line: 124, baseType: !7, size: 32, elements: !206)
!205 = !DIFile(filename: "./arch/x86/include/asm/mpspec_def.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "310371c305b33e11ef72efadb158e19b")
!206 = !{!207, !208, !209, !210}
!207 = !DIEnumerator(name: "mp_INT", value: 0)
!208 = !DIEnumerator(name: "mp_NMI", value: 1)
!209 = !DIEnumerator(name: "mp_SMI", value: 2)
!210 = !DIEnumerator(name: "mp_ExtINT", value: 3)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !212, line: 704, baseType: !7, size: 32, elements: !213)
!212 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!213 = !{!214, !215, !216}
!214 = !DIEnumerator(name: "DUMP_PREFIX_NONE", value: 0)
!215 = !DIEnumerator(name: "DUMP_PREFIX_ADDRESS", value: 1)
!216 = !DIEnumerator(name: "DUMP_PREFIX_OFFSET", value: 2)
!217 = !{!218, !219, !222, !225, !227, !240, !249, !257, !268, !278, !294, !295, !296}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !221)
!221 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !224)
!224 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mpc_cpu", file: !205, line: 68, size: 160, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235, !236}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !228, file: !205, line: 69, baseType: !226, size: 8)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !228, file: !205, line: 70, baseType: !226, size: 8, offset: 8)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "apicver", scope: !228, file: !205, line: 71, baseType: !226, size: 8, offset: 16)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "cpuflag", scope: !228, file: !205, line: 72, baseType: !226, size: 8, offset: 24)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "cpufeature", scope: !228, file: !205, line: 73, baseType: !7, size: 32, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "featureflag", scope: !228, file: !205, line: 74, baseType: !7, size: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !228, file: !205, line: 75, baseType: !237, size: 64, offset: 96)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 2)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mpc_bus", file: !205, line: 78, size: 64, elements: !242)
!242 = !{!243, !244, !245}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !241, file: !205, line: 79, baseType: !226, size: 8)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "busid", scope: !241, file: !205, line: 80, baseType: !226, size: 8, offset: 8)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !241, file: !205, line: 81, baseType: !246, size: 48, offset: 16)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 48, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 6)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mpc_ioapic", file: !205, line: 106, size: 64, elements: !251)
!251 = !{!252, !253, !254, !255, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !250, file: !205, line: 107, baseType: !226, size: 8)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !250, file: !205, line: 108, baseType: !226, size: 8, offset: 8)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "apicver", scope: !250, file: !205, line: 109, baseType: !226, size: 8, offset: 16)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !250, file: !205, line: 110, baseType: !226, size: 8, offset: 24)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "apicaddr", scope: !250, file: !205, line: 111, baseType: !7, size: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mpc_intsrc", file: !205, line: 114, size: 64, elements: !259)
!259 = !{!260, !261, !262, !264, !265, !266, !267}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !258, file: !205, line: 115, baseType: !226, size: 8)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "irqtype", scope: !258, file: !205, line: 116, baseType: !226, size: 8, offset: 8)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "irqflag", scope: !258, file: !205, line: 117, baseType: !263, size: 16, offset: 16)
!263 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "srcbus", scope: !258, file: !205, line: 118, baseType: !226, size: 8, offset: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "srcbusirq", scope: !258, file: !205, line: 119, baseType: !226, size: 8, offset: 40)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "dstapic", scope: !258, file: !205, line: 120, baseType: !226, size: 8, offset: 48)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "dstirq", scope: !258, file: !205, line: 121, baseType: !226, size: 8, offset: 56)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mpc_lintsrc", file: !205, line: 145, size: 64, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276, !277}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !269, file: !205, line: 146, baseType: !226, size: 8)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "irqtype", scope: !269, file: !205, line: 147, baseType: !226, size: 8, offset: 8)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "irqflag", scope: !269, file: !205, line: 148, baseType: !263, size: 16, offset: 16)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "srcbusid", scope: !269, file: !205, line: 149, baseType: !226, size: 8, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "srcbusirq", scope: !269, file: !205, line: 150, baseType: !226, size: 8, offset: 40)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "destapic", scope: !269, file: !205, line: 151, baseType: !226, size: 8, offset: 48)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "destapiclint", scope: !269, file: !205, line: 152, baseType: !226, size: 8, offset: 56)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mpf_intel", file: !205, line: 22, size: 128, elements: !280)
!280 = !{!281, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !279, file: !205, line: 23, baseType: !282, size: 32)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 32, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 4)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "physptr", scope: !279, file: !205, line: 24, baseType: !7, size: 32, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !279, file: !205, line: 25, baseType: !226, size: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "specification", scope: !279, file: !205, line: 26, baseType: !226, size: 8, offset: 72)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !279, file: !205, line: 27, baseType: !226, size: 8, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "feature1", scope: !279, file: !205, line: 28, baseType: !226, size: 8, offset: 88)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "feature2", scope: !279, file: !205, line: 29, baseType: !226, size: 8, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "feature3", scope: !279, file: !205, line: 30, baseType: !226, size: 8, offset: 104)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "feature4", scope: !279, file: !205, line: 31, baseType: !226, size: 8, offset: 112)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "feature5", scope: !279, file: !205, line: 32, baseType: !226, size: 8, offset: 120)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!295 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !297, line: 23, baseType: !298)
!297 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !299, line: 31, baseType: !300)
!299 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!300 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!301 = !{!302, !307, !312, !317, !322, !327, !341, !343, !345, !0, !347, !349, !351, !353, !358, !363, !368, !373, !378, !380, !382, !384, !386, !391, !396, !401, !406, !408, !413, !418, !423, !428, !433, !438, !443, !445, !450, !455, !457, !462, !467, !469, !474, !479, !484, !486, !491, !496, !499, !502, !504, !509, !511, !516, !518, !523, !528, !533, !535, !537, !539, !541, !546, !548, !550, !552, !559, !564, !569}
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !3, line: 498, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 280, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 35)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !3, line: 502, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 352, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 44)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !3, line: 523, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 32)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !3, line: 530, type: !319, isLocal: true, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 208, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 26)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !3, line: 533, type: !324, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 144, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 18)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "__setup_update_mptable_setup", scope: !2, file: !3, line: 798, type: !329, isLocal: true, isDefinition: true, align: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !330, line: 324, size: 192, elements: !331)
!330 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!331 = !{!332, !335, !340}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !329, file: !330, line: 325, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !329, file: !330, line: 326, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!147, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !329, file: !330, line: 327, baseType: !147, size: 32, offset: 128)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "__setup_parse_alloc_mptable_opt", scope: !2, file: !3, line: 817, type: !329, isLocal: true, isDefinition: true, align: 64)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_mpparse__306_933_update_mp_table7307", scope: !2, file: !3, line: 933, type: !218, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "mpf_base", scope: !2, file: !3, line: 408, type: !295, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "enable_update_mptable", scope: !2, file: !3, line: 788, type: !147, isLocal: false, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "mpc_new_phys", scope: !2, file: !3, line: 800, type: !295, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "alloc_mptable", scope: !2, file: !3, line: 804, type: !147, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !355, isLocal: true, isDefinition: true)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 8, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 1)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !360, isLocal: true, isDefinition: true)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 112, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 14)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !365, isLocal: true, isDefinition: true)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 152, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 19)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !3, line: 334, type: !370, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 328, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 41)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !3, line: 339, type: !375, isLocal: true, isDefinition: true)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 56, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 7)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !3, line: 344, type: !375, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !3, line: 350, type: !375, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !282, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !282, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !388, isLocal: true, isDefinition: true)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 264, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 33)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !393, isLocal: true, isDefinition: true)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 120, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 15)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !3, line: 276, type: !398, isLocal: true, isDefinition: true)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 544, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 68)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !3, line: 280, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 384, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 48)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !3, line: 282, type: !370, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !3, line: 130, type: !410, isLocal: true, isDefinition: true)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 640, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 80)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !3, line: 440, type: !415, isLocal: true, isDefinition: true)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 336, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 42)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !3, line: 441, type: !420, isLocal: true, isDefinition: true)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 416, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 52)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !3, line: 459, type: !425, isLocal: true, isDefinition: true)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 664, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 83)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !3, line: 419, type: !430, isLocal: true, isDefinition: true)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 128, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 16)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !3, line: 240, type: !435, isLocal: true, isDefinition: true)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 304, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 38)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !3, line: 142, type: !440, isLocal: true, isDefinition: true)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 40, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 5)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !435, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !3, line: 149, type: !447, isLocal: true, isDefinition: true)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 224, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 28)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !3, line: 153, type: !452, isLocal: true, isDefinition: true)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 296, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 37)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !3, line: 157, type: !452, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !459, isLocal: true, isDefinition: true)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 184, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 23)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !3, line: 167, type: !464, isLocal: true, isDefinition: true)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 216, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 27)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !319, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !3, line: 182, type: !471, isLocal: true, isDefinition: true)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 400, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 50)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !476, isLocal: true, isDefinition: true)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 88, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 11)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !3, line: 184, type: !481, isLocal: true, isDefinition: true)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 24, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 3)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !3, line: 184, type: !481, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !3, line: 552, type: !488, isLocal: true, isDefinition: true)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 312, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 39)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !3, line: 570, type: !493, isLocal: true, isDefinition: true)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 376, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 47)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "__setup_str_update_mptable_setup", scope: !2, file: !3, line: 798, type: !498, isLocal: true, isDefinition: true, align: 8)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 120, elements: !394)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(name: "__setup_str_parse_alloc_mptable_opt", scope: !2, file: !3, line: 817, type: !501, isLocal: true, isDefinition: true, align: 8)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 112, elements: !361)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "mpc_new_length", scope: !2, file: !3, line: 801, type: !295, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !3, line: 841, type: !506, isLocal: true, isDefinition: true)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 320, elements: !507)
!507 = !{!508}
!508 = !DISubrange(count: 40)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !3, line: 857, type: !506, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !3, line: 864, type: !513, isLocal: true, isDefinition: true)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 104, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 13)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !3, line: 865, type: !393, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !3, line: 869, type: !520, isLocal: true, isDefinition: true)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 432, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 54)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !3, line: 881, type: !525, isLocal: true, isDefinition: true)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 424, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 53)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !3, line: 884, type: !530, isLocal: true, isDefinition: true)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 232, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 29)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !3, line: 888, type: !309, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !3, line: 902, type: !309, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !3, line: 905, type: !393, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !3, line: 913, type: !365, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !3, line: 725, type: !543, isLocal: true, isDefinition: true)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 136, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 17)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !3, line: 764, type: !513, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !3, line: 675, type: !440, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !3, line: 681, type: !440, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "irq_used", scope: !2, file: !3, line: 629, type: !554, isLocal: true, isDefinition: true)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 8192, elements: !557)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !297, line: 17, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !299, line: 21, baseType: !226)
!557 = !{!558}
!558 = !DISubrange(count: 1024)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "m_spare", scope: !2, file: !3, line: 669, type: !561, isLocal: true, isDefinition: true)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 1280, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: 20)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !3, line: 703, type: !566, isLocal: true, isDefinition: true)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 360, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 45)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !3, line: 116, type: !571, isLocal: true, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 624, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 78)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !575, line: 35, baseType: !576)
!575 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!576 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!577 = !{i32 7, !"Dwarf Version", i32 5}
!578 = !{i32 2, !"Debug Info Version", i32 3}
!579 = !{i32 1, !"wchar_size", i32 2}
!580 = !{i32 8, !"cf-protection-branch", i32 1}
!581 = !{i32 4, !"function_return_thunk_extern", i32 1}
!582 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!583 = !{i32 1, !"Code Model", i32 2}
!584 = !{i32 1, !"override-stack-alignment", i32 8}
!585 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!586 = distinct !DISubprogram(name: "default_get_smp_config", scope: !3, file: !3, line: 476, type: !587, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !589)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !7}
!589 = !{!590, !591, !592}
!590 = !DILocalVariable(name: "early", arg: 1, scope: !586, file: !3, line: 476, type: !7)
!591 = !DILocalVariable(name: "mpf", scope: !586, file: !3, line: 478, type: !278)
!592 = !DILabel(scope: !586, name: "out", file: !3, line: 537)
!593 = !DILocation(line: 476, column: 49, scope: !586)
!594 = !DILocation(line: 478, column: 2, scope: !586)
!595 = !DILocation(line: 478, column: 20, scope: !586)
!596 = !DILocation(line: 480, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !586, file: !3, line: 480, column: 6)
!598 = !DILocation(line: 480, column: 6, scope: !586)
!599 = !DILocation(line: 481, column: 3, scope: !597)
!600 = !DILocation(line: 483, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !586, file: !3, line: 483, column: 6)
!602 = !{i8 0, i8 2}
!603 = !{}
!604 = !DILocation(line: 483, column: 6, scope: !586)
!605 = !DILocation(line: 484, column: 3, scope: !601)
!606 = !DILocation(line: 486, column: 6, scope: !607)
!607 = distinct !DILexicalBlock(scope: !586, file: !3, line: 486, column: 6)
!608 = !DILocation(line: 486, column: 17, scope: !607)
!609 = !DILocation(line: 486, column: 20, scope: !607)
!610 = !DILocation(line: 486, column: 6, scope: !586)
!611 = !DILocation(line: 487, column: 3, scope: !607)
!612 = !DILocation(line: 493, column: 6, scope: !613)
!613 = distinct !DILexicalBlock(scope: !586, file: !3, line: 493, column: 6)
!614 = !DILocation(line: 493, column: 17, scope: !613)
!615 = !DILocation(line: 493, column: 20, scope: !613)
!616 = !DILocation(line: 493, column: 6, scope: !586)
!617 = !DILocation(line: 494, column: 3, scope: !613)
!618 = !DILocation(line: 496, column: 23, scope: !586)
!619 = !DILocation(line: 496, column: 8, scope: !586)
!620 = !DILocation(line: 496, column: 6, scope: !586)
!621 = !DILocation(line: 497, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !586, file: !3, line: 497, column: 6)
!623 = !DILocation(line: 497, column: 6, scope: !586)
!624 = !DILocation(line: 498, column: 3, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !3, line: 498, column: 3)
!626 = distinct !DILexicalBlock(scope: !622, file: !3, line: 497, column: 12)
!627 = !DILocation(line: 498, column: 3, scope: !628)
!628 = distinct !DILexicalBlock(scope: !625, file: !3, line: 498, column: 3)
!629 = !DILocation(line: 499, column: 3, scope: !626)
!630 = !DILocation(line: 502, column: 2, scope: !631)
!631 = distinct !DILexicalBlock(scope: !586, file: !3, line: 502, column: 2)
!632 = !DILocation(line: 502, column: 2, scope: !633)
!633 = distinct !DILexicalBlock(scope: !631, file: !3, line: 502, column: 2)
!634 = !DILocation(line: 516, column: 6, scope: !635)
!635 = distinct !DILexicalBlock(scope: !586, file: !3, line: 516, column: 6)
!636 = !DILocation(line: 516, column: 11, scope: !635)
!637 = !DILocation(line: 516, column: 6, scope: !586)
!638 = !DILocation(line: 517, column: 7, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 517, column: 7)
!640 = distinct !DILexicalBlock(scope: !635, file: !3, line: 516, column: 21)
!641 = !DILocation(line: 517, column: 7, scope: !640)
!642 = !DILocation(line: 519, column: 4, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !3, line: 517, column: 14)
!644 = !DILocation(line: 520, column: 4, scope: !643)
!645 = !DILocation(line: 523, column: 3, scope: !646)
!646 = distinct !DILexicalBlock(scope: !640, file: !3, line: 523, column: 3)
!647 = !DILocation(line: 523, column: 3, scope: !648)
!648 = distinct !DILexicalBlock(scope: !646, file: !3, line: 523, column: 3)
!649 = !DILocation(line: 524, column: 33, scope: !640)
!650 = !DILocation(line: 524, column: 38, scope: !640)
!651 = !DILocation(line: 524, column: 3, scope: !640)
!652 = !DILocation(line: 526, column: 2, scope: !640)
!653 = !DILocation(line: 526, column: 13, scope: !654)
!654 = distinct !DILexicalBlock(scope: !635, file: !3, line: 526, column: 13)
!655 = !DILocation(line: 526, column: 18, scope: !654)
!656 = !DILocation(line: 526, column: 13, scope: !635)
!657 = !DILocation(line: 527, column: 21, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 527, column: 7)
!659 = distinct !DILexicalBlock(scope: !654, file: !3, line: 526, column: 27)
!660 = !DILocation(line: 527, column: 26, scope: !658)
!661 = !DILocation(line: 527, column: 7, scope: !658)
!662 = !DILocation(line: 527, column: 7, scope: !659)
!663 = !DILocation(line: 528, column: 4, scope: !658)
!664 = !DILocation(line: 529, column: 2, scope: !659)
!665 = !DILocation(line: 530, column: 3, scope: !654)
!666 = !DILocation(line: 530, column: 3, scope: !667)
!667 = distinct !DILexicalBlock(scope: !654, file: !3, line: 530, column: 3)
!668 = !DILocation(line: 530, column: 3, scope: !669)
!669 = distinct !DILexicalBlock(scope: !667, file: !3, line: 530, column: 3)
!670 = !DILocation(line: 530, column: 3, scope: !671)
!671 = distinct !DILexicalBlock(scope: !667, file: !3, line: 530, column: 3)
!672 = !{i64 2156302659, i64 2156302688, i64 2156302734, i64 2156302792, i64 2156302846, i64 2156302900, i64 2156302955, i64 2156302986}
!673 = !DILocation(line: 532, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !586, file: !3, line: 532, column: 6)
!675 = !DILocation(line: 532, column: 6, scope: !586)
!676 = !DILocation(line: 533, column: 3, scope: !677)
!677 = distinct !DILexicalBlock(scope: !674, file: !3, line: 533, column: 3)
!678 = !DILocation(line: 533, column: 3, scope: !679)
!679 = distinct !DILexicalBlock(scope: !677, file: !3, line: 533, column: 3)
!680 = !DILocation(line: 533, column: 3, scope: !674)
!681 = !DILocation(line: 537, column: 1, scope: !586)
!682 = !DILocation(line: 538, column: 17, scope: !586)
!683 = !DILocation(line: 538, column: 2, scope: !586)
!684 = !DILocation(line: 539, column: 1, scope: !586)
!685 = !DISubprogram(name: "early_memremap", scope: !686, file: !686, line: 13, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!686 = !DIFile(filename: "./include/asm-generic/early_ioremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f963a4865cd884f109103123c55bb3b2")
!687 = !DISubroutineType(types: !688)
!688 = !{!218, !689, !295}
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !575, line: 164, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !575, line: 159, baseType: !296)
!691 = !DISubprogram(name: "_printk", scope: !212, file: !212, line: 153, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!692 = !DISubroutineType(types: !693)
!693 = !{!147, !333, null}
!694 = !DISubprogram(name: "register_lapic_address", scope: !695, file: !695, line: 135, type: !696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!695 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!696 = !DISubroutineType(types: !697)
!697 = !{null, !295}
!698 = distinct !DISubprogram(name: "construct_default_ISA_mptable", scope: !3, file: !3, line: 370, type: !699, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !701)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !147}
!701 = !{!702, !703, !704, !705, !707}
!702 = !DILocalVariable(name: "mpc_default_type", arg: 1, scope: !698, file: !3, line: 370, type: !147)
!703 = !DILocalVariable(name: "processor", scope: !698, file: !3, line: 372, type: !228)
!704 = !DILocalVariable(name: "lintsrc", scope: !698, file: !3, line: 373, type: !269)
!705 = !DILocalVariable(name: "linttypes", scope: !698, file: !3, line: 374, type: !706)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !238)
!707 = !DILocalVariable(name: "i", scope: !698, file: !3, line: 375, type: !147)
!708 = !DILocation(line: 370, column: 61, scope: !698)
!709 = !DILocation(line: 372, column: 2, scope: !698)
!710 = !DILocation(line: 372, column: 17, scope: !698)
!711 = !DILocation(line: 373, column: 2, scope: !698)
!712 = !DILocation(line: 373, column: 21, scope: !698)
!713 = !DILocation(line: 374, column: 2, scope: !698)
!714 = !DILocation(line: 374, column: 6, scope: !698)
!715 = !DILocation(line: 375, column: 2, scope: !698)
!716 = !DILocation(line: 375, column: 6, scope: !698)
!717 = !DILocation(line: 380, column: 12, scope: !698)
!718 = !DILocation(line: 380, column: 17, scope: !698)
!719 = !DILocation(line: 382, column: 22, scope: !698)
!720 = !DILocation(line: 382, column: 39, scope: !698)
!721 = !DILocation(line: 382, column: 12, scope: !698)
!722 = !DILocation(line: 382, column: 20, scope: !698)
!723 = !DILocation(line: 383, column: 12, scope: !698)
!724 = !DILocation(line: 383, column: 20, scope: !698)
!725 = !DILocation(line: 384, column: 40, scope: !698)
!726 = !DILocation(line: 384, column: 26, scope: !698)
!727 = !DILocation(line: 384, column: 44, scope: !698)
!728 = !DILocation(line: 385, column: 21, scope: !698)
!729 = !DILocation(line: 385, column: 7, scope: !698)
!730 = !DILocation(line: 385, column: 31, scope: !698)
!731 = !DILocation(line: 384, column: 50, scope: !698)
!732 = !DILocation(line: 385, column: 53, scope: !698)
!733 = !DILocation(line: 385, column: 39, scope: !698)
!734 = !DILocation(line: 385, column: 37, scope: !698)
!735 = !DILocation(line: 384, column: 12, scope: !698)
!736 = !DILocation(line: 384, column: 23, scope: !698)
!737 = !DILocation(line: 386, column: 26, scope: !698)
!738 = !DILocation(line: 386, column: 12, scope: !698)
!739 = !DILocation(line: 386, column: 24, scope: !698)
!740 = !DILocation(line: 387, column: 12, scope: !698)
!741 = !DILocation(line: 387, column: 2, scope: !698)
!742 = !DILocation(line: 387, column: 24, scope: !698)
!743 = !DILocation(line: 388, column: 12, scope: !698)
!744 = !DILocation(line: 388, column: 2, scope: !698)
!745 = !DILocation(line: 388, column: 24, scope: !698)
!746 = !DILocation(line: 389, column: 9, scope: !747)
!747 = distinct !DILexicalBlock(scope: !698, file: !3, line: 389, column: 2)
!748 = !DILocation(line: 389, column: 7, scope: !747)
!749 = !DILocation(line: 389, column: 14, scope: !750)
!750 = distinct !DILexicalBlock(scope: !747, file: !3, line: 389, column: 2)
!751 = !DILocation(line: 389, column: 16, scope: !750)
!752 = !DILocation(line: 389, column: 2, scope: !747)
!753 = !DILocation(line: 390, column: 22, scope: !754)
!754 = distinct !DILexicalBlock(scope: !750, file: !3, line: 389, column: 26)
!755 = !DILocation(line: 390, column: 13, scope: !754)
!756 = !DILocation(line: 390, column: 20, scope: !754)
!757 = !DILocation(line: 391, column: 3, scope: !754)
!758 = !DILocation(line: 392, column: 2, scope: !754)
!759 = !DILocation(line: 389, column: 22, scope: !750)
!760 = !DILocation(line: 389, column: 2, scope: !750)
!761 = distinct !{!761, !752, !762, !763, !764}
!762 = !DILocation(line: 392, column: 2, scope: !747)
!763 = !{!"llvm.loop.mustprogress"}
!764 = !{!"llvm.loop.unroll.disable"}
!765 = !DILocation(line: 394, column: 25, scope: !698)
!766 = !DILocation(line: 394, column: 2, scope: !698)
!767 = !DILocation(line: 396, column: 10, scope: !698)
!768 = !DILocation(line: 396, column: 15, scope: !698)
!769 = !DILocation(line: 397, column: 10, scope: !698)
!770 = !DILocation(line: 397, column: 18, scope: !698)
!771 = !DILocation(line: 398, column: 10, scope: !698)
!772 = !DILocation(line: 398, column: 19, scope: !698)
!773 = !DILocation(line: 399, column: 10, scope: !698)
!774 = !DILocation(line: 399, column: 20, scope: !698)
!775 = !DILocation(line: 400, column: 10, scope: !698)
!776 = !DILocation(line: 400, column: 19, scope: !698)
!777 = !DILocation(line: 401, column: 9, scope: !778)
!778 = distinct !DILexicalBlock(scope: !698, file: !3, line: 401, column: 2)
!779 = !DILocation(line: 401, column: 7, scope: !778)
!780 = !DILocation(line: 401, column: 14, scope: !781)
!781 = distinct !DILexicalBlock(scope: !778, file: !3, line: 401, column: 2)
!782 = !DILocation(line: 401, column: 16, scope: !781)
!783 = !DILocation(line: 401, column: 2, scope: !778)
!784 = !DILocation(line: 402, column: 31, scope: !785)
!785 = distinct !DILexicalBlock(scope: !781, file: !3, line: 401, column: 26)
!786 = !DILocation(line: 402, column: 21, scope: !785)
!787 = !DILocation(line: 402, column: 11, scope: !785)
!788 = !DILocation(line: 402, column: 19, scope: !785)
!789 = !DILocation(line: 403, column: 26, scope: !785)
!790 = !DILocation(line: 403, column: 11, scope: !785)
!791 = !DILocation(line: 403, column: 24, scope: !785)
!792 = !DILocation(line: 404, column: 3, scope: !785)
!793 = !DILocation(line: 405, column: 2, scope: !785)
!794 = !DILocation(line: 401, column: 22, scope: !781)
!795 = !DILocation(line: 401, column: 2, scope: !781)
!796 = distinct !{!796, !783, !797, !763, !764}
!797 = !DILocation(line: 405, column: 2, scope: !778)
!798 = !DILocation(line: 406, column: 1, scope: !698)
!799 = distinct !DISubprogram(name: "check_physptr", scope: !3, file: !3, line: 424, type: !800, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !802)
!800 = !DISubroutineType(types: !801)
!801 = !{!147, !278, !7}
!802 = !{!803, !804, !805, !826, !827}
!803 = !DILocalVariable(name: "mpf", arg: 1, scope: !799, file: !3, line: 424, type: !278)
!804 = !DILocalVariable(name: "early", arg: 2, scope: !799, file: !3, line: 424, type: !7)
!805 = !DILocalVariable(name: "mpc", scope: !799, file: !3, line: 426, type: !806)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mpc_table", file: !205, line: 37, size: 352, elements: !808)
!808 = !{!809, !810, !811, !812, !813, !817, !821, !822, !823, !824, !825}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !807, file: !205, line: 38, baseType: !282, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !807, file: !205, line: 39, baseType: !263, size: 16, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !807, file: !205, line: 40, baseType: !221, size: 8, offset: 48)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !807, file: !205, line: 41, baseType: !221, size: 8, offset: 56)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "oem", scope: !807, file: !205, line: 42, baseType: !814, size: 64, offset: 64)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 64, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 8)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "productid", scope: !807, file: !205, line: 43, baseType: !818, size: 96, offset: 128)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 96, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 12)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "oemptr", scope: !807, file: !205, line: 44, baseType: !7, size: 32, offset: 224)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "oemsize", scope: !807, file: !205, line: 45, baseType: !263, size: 16, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "oemcount", scope: !807, file: !205, line: 46, baseType: !263, size: 16, offset: 272)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "lapic", scope: !807, file: !205, line: 47, baseType: !7, size: 32, offset: 288)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !807, file: !205, line: 48, baseType: !7, size: 32, offset: 320)
!826 = !DILocalVariable(name: "size", scope: !799, file: !3, line: 427, type: !295)
!827 = !DILocalVariable(name: "bus", scope: !828, file: !3, line: 457, type: !241)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 456, column: 23)
!829 = distinct !DILexicalBlock(scope: !799, file: !3, line: 456, column: 6)
!830 = !DILocation(line: 424, column: 51, scope: !799)
!831 = !DILocation(line: 424, column: 69, scope: !799)
!832 = !DILocation(line: 426, column: 2, scope: !799)
!833 = !DILocation(line: 426, column: 20, scope: !799)
!834 = !DILocation(line: 427, column: 2, scope: !799)
!835 = !DILocation(line: 427, column: 16, scope: !799)
!836 = !DILocation(line: 429, column: 22, scope: !799)
!837 = !DILocation(line: 429, column: 27, scope: !799)
!838 = !DILocation(line: 429, column: 9, scope: !799)
!839 = !DILocation(line: 429, column: 7, scope: !799)
!840 = !DILocation(line: 430, column: 23, scope: !799)
!841 = !DILocation(line: 430, column: 28, scope: !799)
!842 = !DILocation(line: 430, column: 37, scope: !799)
!843 = !DILocation(line: 430, column: 8, scope: !799)
!844 = !DILocation(line: 430, column: 6, scope: !799)
!845 = !DILocation(line: 436, column: 20, scope: !846)
!846 = distinct !DILexicalBlock(scope: !799, file: !3, line: 436, column: 6)
!847 = !DILocation(line: 436, column: 25, scope: !846)
!848 = !DILocation(line: 436, column: 7, scope: !846)
!849 = !DILocation(line: 436, column: 6, scope: !799)
!850 = !DILocation(line: 438, column: 20, scope: !851)
!851 = distinct !DILexicalBlock(scope: !846, file: !3, line: 436, column: 33)
!852 = !DILocation(line: 440, column: 3, scope: !853)
!853 = distinct !DILexicalBlock(scope: !851, file: !3, line: 440, column: 3)
!854 = !DILocation(line: 440, column: 3, scope: !855)
!855 = distinct !DILexicalBlock(scope: !853, file: !3, line: 440, column: 3)
!856 = !DILocation(line: 441, column: 3, scope: !857)
!857 = distinct !DILexicalBlock(scope: !851, file: !3, line: 441, column: 3)
!858 = !DILocation(line: 441, column: 3, scope: !859)
!859 = distinct !DILexicalBlock(scope: !857, file: !3, line: 441, column: 3)
!860 = !DILocation(line: 442, column: 18, scope: !851)
!861 = !DILocation(line: 442, column: 23, scope: !851)
!862 = !DILocation(line: 442, column: 3, scope: !851)
!863 = !DILocation(line: 443, column: 3, scope: !851)
!864 = !DILocation(line: 445, column: 17, scope: !799)
!865 = !DILocation(line: 445, column: 22, scope: !799)
!866 = !DILocation(line: 445, column: 2, scope: !799)
!867 = !DILocation(line: 447, column: 6, scope: !868)
!868 = distinct !DILexicalBlock(scope: !799, file: !3, line: 447, column: 6)
!869 = !DILocation(line: 447, column: 6, scope: !799)
!870 = !DILocation(line: 448, column: 3, scope: !868)
!871 = !DILocation(line: 456, column: 7, scope: !829)
!872 = !DILocation(line: 456, column: 6, scope: !799)
!873 = !DILocation(line: 457, column: 3, scope: !828)
!874 = !DILocation(line: 457, column: 18, scope: !828)
!875 = !DILocation(line: 459, column: 3, scope: !876)
!876 = distinct !DILexicalBlock(scope: !828, file: !3, line: 459, column: 3)
!877 = !DILocation(line: 459, column: 3, scope: !878)
!878 = distinct !DILexicalBlock(scope: !876, file: !3, line: 459, column: 3)
!879 = !DILocation(line: 461, column: 7, scope: !828)
!880 = !DILocation(line: 461, column: 12, scope: !828)
!881 = !DILocation(line: 462, column: 7, scope: !828)
!882 = !DILocation(line: 462, column: 13, scope: !828)
!883 = !DILocation(line: 463, column: 14, scope: !828)
!884 = !DILocation(line: 463, column: 3, scope: !828)
!885 = !DILocation(line: 464, column: 3, scope: !828)
!886 = !DILocation(line: 466, column: 3, scope: !828)
!887 = !DILocation(line: 467, column: 2, scope: !829)
!888 = !DILocation(line: 467, column: 2, scope: !828)
!889 = !DILocation(line: 470, column: 2, scope: !799)
!890 = !DILocation(line: 471, column: 1, scope: !799)
!891 = !DISubprogram(name: "early_memunmap", scope: !686, file: !686, line: 20, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !218, !295}
!894 = distinct !DISubprogram(name: "default_find_smp_config", scope: !3, file: !3, line: 590, type: !895, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{null}
!897 = !{!898}
!898 = !DILocalVariable(name: "address", scope: !894, file: !3, line: 592, type: !7)
!899 = !DILocation(line: 592, column: 2, scope: !894)
!900 = !DILocation(line: 592, column: 15, scope: !894)
!901 = !DILocation(line: 602, column: 6, scope: !902)
!902 = distinct !DILexicalBlock(scope: !894, file: !3, line: 602, column: 6)
!903 = !DILocation(line: 602, column: 34, scope: !902)
!904 = !DILocation(line: 603, column: 6, scope: !902)
!905 = !DILocation(line: 603, column: 42, scope: !902)
!906 = !DILocation(line: 604, column: 6, scope: !902)
!907 = !DILocation(line: 602, column: 6, scope: !894)
!908 = !DILocation(line: 605, column: 3, scope: !902)
!909 = !DILocation(line: 623, column: 12, scope: !894)
!910 = !DILocation(line: 623, column: 10, scope: !894)
!911 = !DILocation(line: 624, column: 6, scope: !912)
!912 = distinct !DILexicalBlock(scope: !894, file: !3, line: 624, column: 6)
!913 = !DILocation(line: 624, column: 6, scope: !894)
!914 = !DILocation(line: 625, column: 19, scope: !912)
!915 = !DILocation(line: 625, column: 3, scope: !912)
!916 = !DILocation(line: 626, column: 1, scope: !894)
!917 = distinct !DISubprogram(name: "smp_scan_config", scope: !3, file: !3, line: 546, type: !918, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !920)
!918 = !DISubroutineType(types: !919)
!919 = !{!147, !295, !295}
!920 = !{!921, !922, !923, !925, !926}
!921 = !DILocalVariable(name: "base", arg: 1, scope: !917, file: !3, line: 546, type: !295)
!922 = !DILocalVariable(name: "length", arg: 2, scope: !917, file: !3, line: 546, type: !295)
!923 = !DILocalVariable(name: "bp", scope: !917, file: !3, line: 548, type: !924)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!925 = !DILocalVariable(name: "mpf", scope: !917, file: !3, line: 549, type: !278)
!926 = !DILocalVariable(name: "ret", scope: !917, file: !3, line: 550, type: !147)
!927 = !DILocation(line: 546, column: 49, scope: !917)
!928 = !DILocation(line: 546, column: 69, scope: !917)
!929 = !DILocation(line: 548, column: 2, scope: !917)
!930 = !DILocation(line: 548, column: 16, scope: !917)
!931 = !DILocation(line: 549, column: 2, scope: !917)
!932 = !DILocation(line: 549, column: 20, scope: !917)
!933 = !DILocation(line: 550, column: 2, scope: !917)
!934 = !DILocation(line: 550, column: 6, scope: !917)
!935 = !DILocation(line: 552, column: 2, scope: !917)
!936 = !DILocation(line: 552, column: 2, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 552, column: 2)
!938 = distinct !DILexicalBlock(scope: !917, file: !3, line: 552, column: 2)
!939 = !DILocation(line: 552, column: 2, scope: !938)
!940 = !DILocation(line: 552, column: 2, scope: !941)
!941 = distinct !DILexicalBlock(scope: !937, file: !3, line: 552, column: 2)
!942 = !DILocation(line: 552, column: 2, scope: !943)
!943 = distinct !DILexicalBlock(scope: !941, file: !3, line: 552, column: 2)
!944 = !DILocation(line: 554, column: 2, scope: !917)
!945 = !DILocation(line: 554, column: 2, scope: !946)
!946 = distinct !DILexicalBlock(scope: !917, file: !3, line: 554, column: 2)
!947 = !DILocation(line: 556, column: 2, scope: !917)
!948 = !DILocation(line: 556, column: 9, scope: !917)
!949 = !DILocation(line: 556, column: 16, scope: !917)
!950 = !DILocation(line: 557, column: 23, scope: !951)
!951 = distinct !DILexicalBlock(scope: !917, file: !3, line: 556, column: 21)
!952 = !DILocation(line: 557, column: 29, scope: !951)
!953 = !DILocation(line: 557, column: 8, scope: !951)
!954 = !DILocation(line: 557, column: 6, scope: !951)
!955 = !DILocation(line: 558, column: 29, scope: !951)
!956 = !DILocation(line: 558, column: 7, scope: !951)
!957 = !DILocation(line: 559, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !951, file: !3, line: 559, column: 7)
!959 = !DILocation(line: 559, column: 8, scope: !958)
!960 = !DILocation(line: 559, column: 12, scope: !958)
!961 = !DILocation(line: 559, column: 32, scope: !958)
!962 = !DILocation(line: 560, column: 8, scope: !958)
!963 = !DILocation(line: 560, column: 13, scope: !958)
!964 = !DILocation(line: 560, column: 20, scope: !958)
!965 = !DILocation(line: 560, column: 26, scope: !958)
!966 = !DILocation(line: 561, column: 38, scope: !958)
!967 = !DILocation(line: 561, column: 8, scope: !958)
!968 = !DILocation(line: 561, column: 46, scope: !958)
!969 = !DILocation(line: 562, column: 9, scope: !958)
!970 = !DILocation(line: 562, column: 14, scope: !958)
!971 = !DILocation(line: 562, column: 28, scope: !958)
!972 = !DILocation(line: 563, column: 8, scope: !958)
!973 = !DILocation(line: 563, column: 12, scope: !958)
!974 = !DILocation(line: 563, column: 17, scope: !958)
!975 = !DILocation(line: 563, column: 31, scope: !958)
!976 = !DILocation(line: 559, column: 7, scope: !951)
!977 = !DILocation(line: 565, column: 21, scope: !978)
!978 = distinct !DILexicalBlock(scope: !958, file: !3, line: 563, column: 39)
!979 = !DILocation(line: 567, column: 15, scope: !978)
!980 = !DILocation(line: 567, column: 13, scope: !978)
!981 = !DILocation(line: 568, column: 14, scope: !978)
!982 = !DILocation(line: 570, column: 4, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !3, line: 570, column: 4)
!984 = !DILocation(line: 570, column: 4, scope: !985)
!985 = distinct !DILexicalBlock(scope: !983, file: !3, line: 570, column: 4)
!986 = !DILocation(line: 573, column: 21, scope: !978)
!987 = !DILocation(line: 573, column: 4, scope: !978)
!988 = !DILocation(line: 574, column: 8, scope: !989)
!989 = distinct !DILexicalBlock(scope: !978, file: !3, line: 574, column: 8)
!990 = !DILocation(line: 574, column: 13, scope: !989)
!991 = !DILocation(line: 574, column: 8, scope: !978)
!992 = !DILocation(line: 575, column: 24, scope: !989)
!993 = !DILocation(line: 575, column: 5, scope: !989)
!994 = !DILocation(line: 577, column: 8, scope: !978)
!995 = !DILocation(line: 578, column: 3, scope: !978)
!996 = !DILocation(line: 579, column: 18, scope: !951)
!997 = !DILocation(line: 579, column: 22, scope: !951)
!998 = !DILocation(line: 579, column: 3, scope: !951)
!999 = !DILocation(line: 581, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !951, file: !3, line: 581, column: 7)
!1001 = !DILocation(line: 581, column: 7, scope: !951)
!1002 = !DILocation(line: 582, column: 4, scope: !1000)
!1003 = !DILocation(line: 584, column: 8, scope: !951)
!1004 = !DILocation(line: 585, column: 10, scope: !951)
!1005 = distinct !{!1005, !947, !1006, !763, !764}
!1006 = !DILocation(line: 586, column: 2, scope: !917)
!1007 = !DILocation(line: 587, column: 9, scope: !917)
!1008 = !DILocation(line: 588, column: 1, scope: !917)
!1009 = !DILocation(line: 587, column: 2, scope: !917)
!1010 = distinct !DISubprogram(name: "get_bios_ebda", scope: !1011, file: !1011, line: 10, type: !1012, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1014)
!1011 = !DIFile(filename: "./arch/x86/include/asm/bios_ebda.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5bad262402ea3230888712025074e72a")
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!7}
!1014 = !{!1015}
!1015 = !DILocalVariable(name: "address", scope: !1010, file: !1011, line: 16, type: !7)
!1016 = !DILocation(line: 16, column: 2, scope: !1010)
!1017 = !DILocation(line: 16, column: 15, scope: !1010)
!1018 = !DILocation(line: 16, column: 44, scope: !1010)
!1019 = !DILocation(line: 16, column: 25, scope: !1010)
!1020 = !DILocation(line: 17, column: 10, scope: !1010)
!1021 = !DILocation(line: 18, column: 9, scope: !1010)
!1022 = !DILocation(line: 19, column: 1, scope: !1010)
!1023 = !DILocation(line: 18, column: 2, scope: !1010)
!1024 = distinct !DISubprogram(name: "update_mptable_setup", scope: !3, file: !3, line: 790, type: !337, scopeLine: 791, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1025)
!1025 = !{!1026}
!1026 = !DILocalVariable(name: "str", arg: 1, scope: !1024, file: !3, line: 790, type: !339)
!1027 = !DILocation(line: 790, column: 46, scope: !1024)
!1028 = !DILocation(line: 792, column: 24, scope: !1024)
!1029 = !DILocation(line: 794, column: 15, scope: !1024)
!1030 = !DILocation(line: 796, column: 2, scope: !1024)
!1031 = distinct !DISubprogram(name: "parse_alloc_mptable_opt", scope: !3, file: !3, line: 805, type: !337, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1032)
!1032 = !{!1033}
!1033 = !DILocalVariable(name: "p", arg: 1, scope: !1031, file: !3, line: 805, type: !339)
!1034 = !DILocation(line: 805, column: 49, scope: !1031)
!1035 = !DILocation(line: 807, column: 24, scope: !1031)
!1036 = !DILocation(line: 809, column: 15, scope: !1031)
!1037 = !DILocation(line: 811, column: 16, scope: !1031)
!1038 = !DILocation(line: 812, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 812, column: 6)
!1040 = !DILocation(line: 812, column: 6, scope: !1031)
!1041 = !DILocation(line: 813, column: 3, scope: !1039)
!1042 = !DILocation(line: 814, column: 28, scope: !1031)
!1043 = !DILocation(line: 814, column: 19, scope: !1031)
!1044 = !DILocation(line: 814, column: 17, scope: !1031)
!1045 = !DILocation(line: 815, column: 2, scope: !1031)
!1046 = !DILocation(line: 816, column: 1, scope: !1031)
!1047 = distinct !DISubprogram(name: "e820__memblock_alloc_reserved_mpc_new", scope: !3, file: !3, line: 819, type: !895, scopeLine: 820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1048 = !DILocation(line: 821, column: 6, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 821, column: 6)
!1050 = !DILocation(line: 821, column: 28, scope: !1049)
!1051 = !DILocation(line: 821, column: 31, scope: !1049)
!1052 = !DILocation(line: 821, column: 6, scope: !1047)
!1053 = !DILocation(line: 822, column: 48, scope: !1049)
!1054 = !DILocation(line: 822, column: 18, scope: !1049)
!1055 = !DILocation(line: 822, column: 16, scope: !1049)
!1056 = !DILocation(line: 822, column: 3, scope: !1049)
!1057 = !DILocation(line: 823, column: 1, scope: !1047)
!1058 = !DISubprogram(name: "e820__memblock_alloc_reserved", scope: !1059, file: !1059, line: 28, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DIFile(filename: "./arch/x86/include/asm/e820/api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65a6719b6cd64e8daf1f569367f0fcc3")
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!296, !296, !296}
!1062 = distinct !DISubprogram(name: "__initstub__kmod_mpparse__306_933_update_mp_table7", scope: !3, file: !3, line: 933, type: !1063, scopeLine: 933, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!147}
!1065 = !DILocation(line: 933, column: 1, scope: !1062)
!1066 = distinct !DISubprogram(name: "update_mp_table", scope: !3, file: !3, line: 825, type: !1063, scopeLine: 826, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1067)
!1067 = !{!1068, !1069, !1073, !1074, !1075, !1076, !1077, !1080, !1081, !1085, !1086}
!1068 = !DILocalVariable(name: "str", scope: !1066, file: !3, line: 827, type: !430)
!1069 = !DILocalVariable(name: "oem", scope: !1066, file: !3, line: 828, type: !1070)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 80, elements: !1071)
!1071 = !{!1072}
!1072 = !DISubrange(count: 10)
!1073 = !DILocalVariable(name: "mpf", scope: !1066, file: !3, line: 829, type: !278)
!1074 = !DILocalVariable(name: "mpc", scope: !1066, file: !3, line: 830, type: !806)
!1075 = !DILocalVariable(name: "mpc_new", scope: !1066, file: !3, line: 830, type: !806)
!1076 = !DILocalVariable(name: "size", scope: !1066, file: !3, line: 831, type: !295)
!1077 = !DILocalVariable(name: "old", scope: !1078, file: !3, line: 874, type: !226)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 873, column: 21)
!1079 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 873, column: 6)
!1080 = !DILocalVariable(name: "new", scope: !1078, file: !3, line: 874, type: !226)
!1081 = !DILocalVariable(name: "mpf_new", scope: !1082, file: !3, line: 898, type: !278)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 897, column: 36)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 897, column: 7)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 885, column: 9)
!1085 = !DILabel(scope: !1066, name: "do_unmap_mpc", file: !3, line: 924)
!1086 = !DILabel(scope: !1066, name: "do_unmap_mpf", file: !3, line: 927)
!1087 = !DILocation(line: 827, column: 2, scope: !1066)
!1088 = !DILocation(line: 827, column: 7, scope: !1066)
!1089 = !DILocation(line: 828, column: 2, scope: !1066)
!1090 = !DILocation(line: 828, column: 7, scope: !1066)
!1091 = !DILocation(line: 829, column: 2, scope: !1066)
!1092 = !DILocation(line: 829, column: 20, scope: !1066)
!1093 = !DILocation(line: 830, column: 2, scope: !1066)
!1094 = !DILocation(line: 830, column: 20, scope: !1066)
!1095 = !DILocation(line: 830, column: 26, scope: !1066)
!1096 = !DILocation(line: 831, column: 2, scope: !1066)
!1097 = !DILocation(line: 831, column: 16, scope: !1066)
!1098 = !DILocation(line: 833, column: 7, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 833, column: 6)
!1100 = !DILocation(line: 833, column: 6, scope: !1066)
!1101 = !DILocation(line: 834, column: 3, scope: !1099)
!1102 = !DILocation(line: 836, column: 7, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 836, column: 6)
!1104 = !DILocation(line: 836, column: 6, scope: !1066)
!1105 = !DILocation(line: 837, column: 3, scope: !1103)
!1106 = !DILocation(line: 839, column: 23, scope: !1066)
!1107 = !DILocation(line: 839, column: 8, scope: !1066)
!1108 = !DILocation(line: 839, column: 6, scope: !1066)
!1109 = !DILocation(line: 840, column: 7, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 840, column: 6)
!1111 = !DILocation(line: 840, column: 6, scope: !1066)
!1112 = !DILocation(line: 841, column: 3, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 841, column: 3)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 840, column: 12)
!1115 = !DILocation(line: 841, column: 3, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 841, column: 3)
!1117 = !DILocation(line: 842, column: 3, scope: !1114)
!1118 = !DILocation(line: 848, column: 6, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 848, column: 6)
!1120 = !DILocation(line: 848, column: 11, scope: !1119)
!1121 = !DILocation(line: 848, column: 6, scope: !1066)
!1122 = !DILocation(line: 849, column: 3, scope: !1119)
!1123 = !DILocation(line: 851, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 851, column: 6)
!1125 = !DILocation(line: 851, column: 12, scope: !1124)
!1126 = !DILocation(line: 851, column: 6, scope: !1066)
!1127 = !DILocation(line: 852, column: 3, scope: !1124)
!1128 = !DILocation(line: 854, column: 22, scope: !1066)
!1129 = !DILocation(line: 854, column: 27, scope: !1066)
!1130 = !DILocation(line: 854, column: 9, scope: !1066)
!1131 = !DILocation(line: 854, column: 7, scope: !1066)
!1132 = !DILocation(line: 855, column: 23, scope: !1066)
!1133 = !DILocation(line: 855, column: 28, scope: !1066)
!1134 = !DILocation(line: 855, column: 37, scope: !1066)
!1135 = !DILocation(line: 855, column: 8, scope: !1066)
!1136 = !DILocation(line: 855, column: 6, scope: !1066)
!1137 = !DILocation(line: 856, column: 7, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 856, column: 6)
!1139 = !DILocation(line: 856, column: 6, scope: !1066)
!1140 = !DILocation(line: 857, column: 3, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 857, column: 3)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 856, column: 12)
!1143 = !DILocation(line: 857, column: 3, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 857, column: 3)
!1145 = !DILocation(line: 858, column: 3, scope: !1142)
!1146 = !DILocation(line: 861, column: 21, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 861, column: 6)
!1148 = !DILocation(line: 861, column: 26, scope: !1147)
!1149 = !DILocation(line: 861, column: 31, scope: !1147)
!1150 = !DILocation(line: 861, column: 7, scope: !1147)
!1151 = !DILocation(line: 861, column: 6, scope: !1066)
!1152 = !DILocation(line: 862, column: 3, scope: !1147)
!1153 = !DILocation(line: 864, column: 2, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 864, column: 2)
!1155 = !DILocation(line: 864, column: 2, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 864, column: 2)
!1157 = !DILocation(line: 865, column: 2, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 865, column: 2)
!1159 = !DILocation(line: 865, column: 2, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 865, column: 2)
!1161 = !DILocation(line: 867, column: 6, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 867, column: 6)
!1163 = !DILocation(line: 867, column: 19, scope: !1162)
!1164 = !DILocation(line: 867, column: 22, scope: !1162)
!1165 = !DILocation(line: 867, column: 27, scope: !1162)
!1166 = !DILocation(line: 867, column: 36, scope: !1162)
!1167 = !DILocation(line: 867, column: 34, scope: !1162)
!1168 = !DILocation(line: 867, column: 6, scope: !1066)
!1169 = !DILocation(line: 868, column: 16, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 867, column: 52)
!1171 = !DILocation(line: 869, column: 3, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 869, column: 3)
!1173 = !DILocation(line: 869, column: 3, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 869, column: 3)
!1175 = !DILocation(line: 871, column: 2, scope: !1170)
!1176 = !DILocation(line: 873, column: 7, scope: !1079)
!1177 = !DILocation(line: 873, column: 6, scope: !1066)
!1178 = !DILocation(line: 874, column: 3, scope: !1078)
!1179 = !DILocation(line: 874, column: 17, scope: !1078)
!1180 = !DILocation(line: 874, column: 22, scope: !1078)
!1181 = !DILocation(line: 876, column: 3, scope: !1078)
!1182 = !DILocation(line: 876, column: 8, scope: !1078)
!1183 = !DILocation(line: 876, column: 17, scope: !1078)
!1184 = !DILocation(line: 877, column: 39, scope: !1078)
!1185 = !DILocation(line: 877, column: 44, scope: !1078)
!1186 = !DILocation(line: 877, column: 49, scope: !1078)
!1187 = !DILocation(line: 877, column: 9, scope: !1078)
!1188 = !DILocation(line: 877, column: 7, scope: !1078)
!1189 = !DILocation(line: 878, column: 3, scope: !1078)
!1190 = !DILocation(line: 878, column: 8, scope: !1078)
!1191 = !DILocation(line: 878, column: 17, scope: !1078)
!1192 = !DILocation(line: 879, column: 39, scope: !1078)
!1193 = !DILocation(line: 879, column: 44, scope: !1078)
!1194 = !DILocation(line: 879, column: 49, scope: !1078)
!1195 = !DILocation(line: 879, column: 9, scope: !1078)
!1196 = !DILocation(line: 879, column: 7, scope: !1078)
!1197 = !DILocation(line: 880, column: 7, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 880, column: 7)
!1199 = !DILocation(line: 880, column: 14, scope: !1198)
!1200 = !DILocation(line: 880, column: 11, scope: !1198)
!1201 = !DILocation(line: 880, column: 7, scope: !1078)
!1202 = !DILocation(line: 881, column: 4, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 881, column: 4)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 880, column: 19)
!1205 = !DILocation(line: 881, column: 4, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 881, column: 4)
!1207 = !DILocation(line: 882, column: 4, scope: !1204)
!1208 = !DILocation(line: 884, column: 3, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 884, column: 3)
!1210 = !DILocation(line: 884, column: 3, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 884, column: 3)
!1212 = !DILocation(line: 885, column: 2, scope: !1079)
!1213 = !DILocation(line: 885, column: 2, scope: !1078)
!1214 = !DILocation(line: 886, column: 28, scope: !1084)
!1215 = !DILocation(line: 886, column: 42, scope: !1084)
!1216 = !DILocation(line: 886, column: 13, scope: !1084)
!1217 = !DILocation(line: 886, column: 11, scope: !1084)
!1218 = !DILocation(line: 887, column: 8, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 887, column: 7)
!1220 = !DILocation(line: 887, column: 7, scope: !1084)
!1221 = !DILocation(line: 888, column: 4, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 888, column: 4)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 887, column: 17)
!1224 = !DILocation(line: 888, column: 4, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 888, column: 4)
!1226 = !DILocation(line: 889, column: 4, scope: !1223)
!1227 = !DILocation(line: 891, column: 18, scope: !1084)
!1228 = !DILocation(line: 891, column: 3, scope: !1084)
!1229 = !DILocation(line: 891, column: 8, scope: !1084)
!1230 = !DILocation(line: 891, column: 16, scope: !1084)
!1231 = !DILocation(line: 892, column: 10, scope: !1084)
!1232 = !DILocation(line: 892, column: 19, scope: !1084)
!1233 = !DILocation(line: 892, column: 24, scope: !1084)
!1234 = !DILocation(line: 892, column: 29, scope: !1084)
!1235 = !DILocation(line: 892, column: 3, scope: !1084)
!1236 = !DILocation(line: 893, column: 18, scope: !1084)
!1237 = !DILocation(line: 893, column: 23, scope: !1084)
!1238 = !DILocation(line: 893, column: 3, scope: !1084)
!1239 = !DILocation(line: 894, column: 9, scope: !1084)
!1240 = !DILocation(line: 894, column: 7, scope: !1084)
!1241 = !DILocation(line: 895, column: 10, scope: !1084)
!1242 = !DILocation(line: 895, column: 8, scope: !1084)
!1243 = !DILocation(line: 897, column: 7, scope: !1083)
!1244 = !DILocation(line: 897, column: 22, scope: !1083)
!1245 = !DILocation(line: 897, column: 27, scope: !1083)
!1246 = !DILocation(line: 897, column: 20, scope: !1083)
!1247 = !DILocation(line: 897, column: 7, scope: !1084)
!1248 = !DILocation(line: 898, column: 4, scope: !1082)
!1249 = !DILocation(line: 898, column: 22, scope: !1082)
!1250 = !DILocation(line: 900, column: 14, scope: !1082)
!1251 = !DILocation(line: 900, column: 12, scope: !1082)
!1252 = !DILocation(line: 901, column: 9, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 901, column: 8)
!1254 = !DILocation(line: 901, column: 8, scope: !1082)
!1255 = !DILocation(line: 902, column: 5, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 902, column: 5)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 901, column: 18)
!1258 = !DILocation(line: 902, column: 5, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 902, column: 5)
!1260 = !DILocation(line: 903, column: 5, scope: !1257)
!1261 = !DILocation(line: 905, column: 4, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 905, column: 4)
!1263 = !DILocation(line: 905, column: 4, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 905, column: 4)
!1265 = !DILocation(line: 906, column: 11, scope: !1082)
!1266 = !DILocation(line: 906, column: 20, scope: !1082)
!1267 = !DILocation(line: 906, column: 4, scope: !1082)
!1268 = !DILocation(line: 907, column: 19, scope: !1082)
!1269 = !DILocation(line: 907, column: 4, scope: !1082)
!1270 = !DILocation(line: 908, column: 10, scope: !1082)
!1271 = !DILocation(line: 908, column: 8, scope: !1082)
!1272 = !DILocation(line: 909, column: 19, scope: !1082)
!1273 = !DILocation(line: 909, column: 4, scope: !1082)
!1274 = !DILocation(line: 909, column: 9, scope: !1082)
!1275 = !DILocation(line: 909, column: 17, scope: !1082)
!1276 = !DILocation(line: 910, column: 3, scope: !1083)
!1277 = !DILocation(line: 910, column: 3, scope: !1082)
!1278 = !DILocation(line: 911, column: 3, scope: !1084)
!1279 = !DILocation(line: 911, column: 8, scope: !1084)
!1280 = !DILocation(line: 911, column: 17, scope: !1084)
!1281 = !DILocation(line: 912, column: 50, scope: !1084)
!1282 = !DILocation(line: 912, column: 20, scope: !1084)
!1283 = !DILocation(line: 912, column: 3, scope: !1084)
!1284 = !DILocation(line: 912, column: 8, scope: !1084)
!1285 = !DILocation(line: 912, column: 17, scope: !1084)
!1286 = !DILocation(line: 913, column: 3, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 913, column: 3)
!1288 = !DILocation(line: 913, column: 3, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 913, column: 3)
!1290 = !DILocation(line: 922, column: 21, scope: !1066)
!1291 = !DILocation(line: 922, column: 26, scope: !1066)
!1292 = !DILocation(line: 922, column: 40, scope: !1066)
!1293 = !DILocation(line: 922, column: 2, scope: !1066)
!1294 = !DILocation(line: 924, column: 1, scope: !1066)
!1295 = !DILocation(line: 925, column: 17, scope: !1066)
!1296 = !DILocation(line: 925, column: 22, scope: !1066)
!1297 = !DILocation(line: 925, column: 2, scope: !1066)
!1298 = !DILocation(line: 927, column: 1, scope: !1066)
!1299 = !DILocation(line: 928, column: 17, scope: !1066)
!1300 = !DILocation(line: 928, column: 2, scope: !1066)
!1301 = !DILocation(line: 930, column: 2, scope: !1066)
!1302 = !DILocation(line: 931, column: 1, scope: !1066)
!1303 = distinct !DISubprogram(name: "MP_processor_info", scope: !3, file: !3, line: 49, type: !1304, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1306)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !227}
!1306 = !{!1307, !1308}
!1307 = !DILocalVariable(name: "m", arg: 1, scope: !1303, file: !3, line: 49, type: !227)
!1308 = !DILocalVariable(name: "bootup_cpu", scope: !1303, file: !3, line: 51, type: !339)
!1309 = !DILocation(line: 49, column: 54, scope: !1303)
!1310 = !DILocation(line: 51, column: 2, scope: !1303)
!1311 = !DILocation(line: 51, column: 8, scope: !1303)
!1312 = !DILocation(line: 53, column: 8, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 53, column: 6)
!1314 = !DILocation(line: 53, column: 11, scope: !1313)
!1315 = !DILocation(line: 53, column: 19, scope: !1313)
!1316 = !DILocation(line: 53, column: 6, scope: !1303)
!1317 = !DILocation(line: 54, column: 16, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 53, column: 35)
!1319 = !DILocation(line: 55, column: 3, scope: !1318)
!1320 = !DILocation(line: 58, column: 6, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 58, column: 6)
!1322 = !DILocation(line: 58, column: 9, scope: !1321)
!1323 = !DILocation(line: 58, column: 17, scope: !1321)
!1324 = !DILocation(line: 58, column: 6, scope: !1303)
!1325 = !DILocation(line: 59, column: 14, scope: !1321)
!1326 = !DILocation(line: 59, column: 3, scope: !1321)
!1327 = !DILocation(line: 61, column: 2, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 61, column: 2)
!1329 = !DILocation(line: 61, column: 2, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 61, column: 2)
!1331 = !DILocation(line: 62, column: 25, scope: !1303)
!1332 = !DILocation(line: 62, column: 28, scope: !1303)
!1333 = !DILocation(line: 62, column: 2, scope: !1303)
!1334 = !DILocation(line: 63, column: 1, scope: !1303)
!1335 = distinct !DISubprogram(name: "construct_ioapic_table", scope: !3, file: !3, line: 325, type: !699, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1336)
!1336 = !{!1337, !1338, !1339}
!1337 = !DILocalVariable(name: "mpc_default_type", arg: 1, scope: !1335, file: !3, line: 325, type: !147)
!1338 = !DILocalVariable(name: "ioapic", scope: !1335, file: !3, line: 327, type: !250)
!1339 = !DILocalVariable(name: "bus", scope: !1335, file: !3, line: 328, type: !241)
!1340 = !DILocation(line: 325, column: 47, scope: !1335)
!1341 = !DILocation(line: 327, column: 2, scope: !1335)
!1342 = !DILocation(line: 327, column: 20, scope: !1335)
!1343 = !DILocation(line: 328, column: 2, scope: !1335)
!1344 = !DILocation(line: 328, column: 17, scope: !1335)
!1345 = !DILocation(line: 330, column: 6, scope: !1335)
!1346 = !DILocation(line: 330, column: 11, scope: !1335)
!1347 = !DILocation(line: 331, column: 6, scope: !1335)
!1348 = !DILocation(line: 331, column: 12, scope: !1335)
!1349 = !DILocation(line: 332, column: 10, scope: !1335)
!1350 = !DILocation(line: 332, column: 2, scope: !1335)
!1351 = !DILocation(line: 334, column: 3, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 334, column: 3)
!1353 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 332, column: 28)
!1354 = !DILocation(line: 334, column: 3, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 334, column: 3)
!1356 = !DILocation(line: 334, column: 3, scope: !1353)
!1357 = !DILocation(line: 339, column: 14, scope: !1353)
!1358 = !DILocation(line: 339, column: 3, scope: !1353)
!1359 = !DILocation(line: 340, column: 3, scope: !1353)
!1360 = !DILocation(line: 344, column: 14, scope: !1353)
!1361 = !DILocation(line: 344, column: 3, scope: !1353)
!1362 = !DILocation(line: 345, column: 3, scope: !1353)
!1363 = !DILocation(line: 347, column: 2, scope: !1335)
!1364 = !DILocation(line: 348, column: 6, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 348, column: 6)
!1366 = !DILocation(line: 348, column: 23, scope: !1365)
!1367 = !DILocation(line: 348, column: 6, scope: !1335)
!1368 = !DILocation(line: 349, column: 7, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 348, column: 28)
!1370 = !DILocation(line: 349, column: 13, scope: !1369)
!1371 = !DILocation(line: 350, column: 14, scope: !1369)
!1372 = !DILocation(line: 350, column: 3, scope: !1369)
!1373 = !DILocation(line: 351, column: 3, scope: !1369)
!1374 = !DILocation(line: 352, column: 2, scope: !1369)
!1375 = !DILocation(line: 354, column: 9, scope: !1335)
!1376 = !DILocation(line: 354, column: 14, scope: !1335)
!1377 = !DILocation(line: 355, column: 9, scope: !1335)
!1378 = !DILocation(line: 355, column: 16, scope: !1335)
!1379 = !DILocation(line: 356, column: 19, scope: !1335)
!1380 = !DILocation(line: 356, column: 36, scope: !1335)
!1381 = !DILocation(line: 356, column: 9, scope: !1335)
!1382 = !DILocation(line: 356, column: 17, scope: !1335)
!1383 = !DILocation(line: 357, column: 9, scope: !1335)
!1384 = !DILocation(line: 357, column: 15, scope: !1335)
!1385 = !DILocation(line: 358, column: 9, scope: !1335)
!1386 = !DILocation(line: 358, column: 18, scope: !1335)
!1387 = !DILocation(line: 359, column: 2, scope: !1335)
!1388 = !DILocation(line: 364, column: 34, scope: !1335)
!1389 = !DILocation(line: 364, column: 2, scope: !1335)
!1390 = !DILocation(line: 365, column: 1, scope: !1335)
!1391 = distinct !DISubprogram(name: "MP_lintsrc_info", scope: !3, file: !3, line: 128, type: !1392, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1394)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !268}
!1394 = !{!1395}
!1395 = !DILocalVariable(name: "m", arg: 1, scope: !1391, file: !3, line: 128, type: !268)
!1396 = !DILocation(line: 128, column: 56, scope: !1391)
!1397 = !DILocation(line: 130, column: 2, scope: !1391)
!1398 = !DILocation(line: 130, column: 2, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 130, column: 2)
!1400 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 130, column: 2)
!1401 = !DILocation(line: 130, column: 2, scope: !1400)
!1402 = !DILocation(line: 130, column: 2, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 130, column: 2)
!1404 = !DILocation(line: 130, column: 2, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 130, column: 2)
!1406 = !DILocation(line: 134, column: 1, scope: !1391)
!1407 = !DISubprogram(name: "generic_processor_info", scope: !1408, file: !1408, line: 76, type: !1409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1408 = !DIFile(filename: "./arch/x86/include/asm/mpspec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6c121953d7eb2fe88838a269afe2127b")
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!147, !147}
!1411 = distinct !DISubprogram(name: "MP_bus_info", scope: !3, file: !3, line: 73, type: !1412, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1414)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{null, !240}
!1414 = !{!1415, !1416}
!1415 = !DILocalVariable(name: "m", arg: 1, scope: !1411, file: !3, line: 73, type: !240)
!1416 = !DILocalVariable(name: "str", scope: !1411, file: !3, line: 75, type: !375)
!1417 = !DILocation(line: 73, column: 48, scope: !1411)
!1418 = !DILocation(line: 75, column: 2, scope: !1411)
!1419 = !DILocation(line: 75, column: 7, scope: !1411)
!1420 = !DILocation(line: 77, column: 19, scope: !1411)
!1421 = !DILocation(line: 77, column: 22, scope: !1411)
!1422 = !DILocation(line: 77, column: 2, scope: !1411)
!1423 = !DILocation(line: 87, column: 10, scope: !1411)
!1424 = !DILocation(line: 87, column: 13, scope: !1411)
!1425 = !DILocation(line: 87, column: 2, scope: !1411)
!1426 = !DILocation(line: 88, column: 14, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 88, column: 6)
!1428 = !DILocation(line: 88, column: 6, scope: !1427)
!1429 = !DILocation(line: 88, column: 57, scope: !1427)
!1430 = !DILocation(line: 88, column: 6, scope: !1411)
!1431 = !DILocation(line: 92, column: 2, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 88, column: 63)
!1433 = !DILocation(line: 92, column: 21, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 92, column: 13)
!1435 = !DILocation(line: 92, column: 13, scope: !1434)
!1436 = !DILocation(line: 92, column: 64, scope: !1434)
!1437 = !DILocation(line: 92, column: 13, scope: !1427)
!1438 = !DILocation(line: 93, column: 13, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 92, column: 70)
!1440 = !DILocation(line: 93, column: 16, scope: !1439)
!1441 = !DILocation(line: 93, column: 3, scope: !1439)
!1442 = !DILocation(line: 99, column: 2, scope: !1439)
!1443 = !DILocation(line: 100, column: 3, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 100, column: 3)
!1445 = !DILocation(line: 100, column: 3, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 100, column: 3)
!1447 = !DILocation(line: 101, column: 1, scope: !1411)
!1448 = distinct !DISubprogram(name: "MP_ioapic_info", scope: !3, file: !3, line: 103, type: !1449, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1451)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !249}
!1451 = !{!1452, !1453}
!1452 = !DILocalVariable(name: "m", arg: 1, scope: !1448, file: !3, line: 103, type: !249)
!1453 = !DILocalVariable(name: "cfg", scope: !1448, file: !3, line: 105, type: !1454)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ioapic_domain_cfg", file: !38, line: 35, size: 192, elements: !1455)
!1455 = !{!1456, !1457, !6021}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1454, file: !38, line: 36, baseType: !37, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1454, file: !38, line: 37, baseType: !1458, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !1461, line: 88, size: 640, elements: !1462)
!1461 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd3b6d3aac1ec0f42f0ed0e1454dc51c")
!1462 = !{!1463, !5976, !5987, !5991, !5995, !6001, !6005, !6009, !6013, !6017}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1460, file: !1461, line: 89, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!147, !1467, !5800, !185}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1461, line: 150, size: 1408, elements: !1469)
!1469 = !{!1470, !1476, !1477, !1478, !1479, !1480, !1481, !1531, !1532, !5956, !5957, !5960, !5961, !5962, !5963, !5967, !5969, !5970, !5971}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1468, file: !1461, line: 151, baseType: !1471, size: 128)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !575, line: 190, size: 128, elements: !1472)
!1472 = !{!1473, !1475}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1471, file: !575, line: 191, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1471, file: !575, line: 191, baseType: !1474, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1468, file: !1461, line: 152, baseType: !333, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1468, file: !1461, line: 153, baseType: !1458, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1468, file: !1461, line: 154, baseType: !218, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1468, file: !1461, line: 155, baseType: !7, size: 32, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1468, file: !1461, line: 156, baseType: !7, size: 32, offset: 352)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1468, file: !1461, line: 157, baseType: !1482, size: 256, offset: 384)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1483, line: 66, size: 256, elements: !1484)
!1483 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1484 = !{!1485, !1495, !1525, !1530}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1482, file: !1483, line: 67, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1487, line: 13, baseType: !1488)
!1487 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !575, line: 181, baseType: !1489)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !575, line: 179, size: 64, elements: !1490)
!1490 = !{!1491}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1489, file: !575, line: 180, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !297, line: 22, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !299, line: 30, baseType: !1494)
!1494 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1482, file: !1483, line: 68, baseType: !1496, size: 32, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !1497, line: 23, baseType: !1498)
!1497 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !1497, line: 14, size: 32, elements: !1499)
!1499 = !{!1500}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1498, file: !1497, line: 15, baseType: !1501, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !1502, line: 44, baseType: !1503)
!1502 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !1502, line: 14, size: 32, elements: !1504)
!1504 = !{!1505}
!1505 = !DIDerivedType(tag: DW_TAG_member, scope: !1503, file: !1502, line: 15, baseType: !1506, size: 32)
!1506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1503, file: !1502, line: 15, size: 32, elements: !1507)
!1507 = !{!1508, !1513, !1518}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1506, file: !1502, line: 16, baseType: !1509, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !575, line: 174, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !575, line: 172, size: 32, elements: !1511)
!1511 = !{!1512}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1510, file: !575, line: 173, baseType: !147, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1506, file: !1502, line: 24, baseType: !1514, size: 16)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1506, file: !1502, line: 24, size: 16, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !1514, file: !1502, line: 25, baseType: !555, size: 8)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1514, file: !1502, line: 26, baseType: !555, size: 8, offset: 8)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1506, file: !1502, line: 28, baseType: !1519, size: 32)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1506, file: !1502, line: 28, size: 32, elements: !1520)
!1520 = !{!1521, !1524}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !1519, file: !1502, line: 29, baseType: !1522, size: 16)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !297, line: 19, baseType: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !299, line: 24, baseType: !263)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1519, file: !1502, line: 30, baseType: !1522, size: 16, offset: 16)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1482, file: !1483, line: 70, baseType: !1526, size: 32, offset: 96)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !1527, line: 15, size: 32, elements: !1528)
!1527 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!1528 = !{!1529}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1526, file: !1527, line: 20, baseType: !1509, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1482, file: !1483, line: 72, baseType: !1471, size: 128, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1468, file: !1461, line: 158, baseType: !1467, size: 64, offset: 640)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1468, file: !1461, line: 161, baseType: !1533, size: 64, offset: 704)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1535, line: 41, size: 512, elements: !1536)
!1535 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1536 = !{!1537, !1538, !5952, !5953, !5954, !5955}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1534, file: !1535, line: 42, baseType: !1533, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1534, file: !1535, line: 43, baseType: !1539, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1541)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1535, line: 125, size: 1408, elements: !1542)
!1542 = !{!1543, !1547, !1551, !1557, !5882, !5883, !5887, !5891, !5895, !5899, !5903, !5904, !5908, !5912, !5916, !5927, !5928, !5929, !5930, !5940, !5944, !5948}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1541, file: !1535, line: 126, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!1533, !1533}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1541, file: !1535, line: 127, baseType: !1548, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null, !1533}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1541, file: !1535, line: 128, baseType: !1552, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!574, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1534)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1541, file: !1535, line: 129, baseType: !1558, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!1561, !1555, !1563}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1565)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !132, line: 705, size: 5824, elements: !1566)
!1566 = !{!1567, !5508, !5510, !5513, !5514, !5565, !5650, !5651, !5652, !5653, !5654, !5661, !5753, !5766, !5773, !5777, !5779, !5780, !5781, !5785, !5792, !5793, !5796, !5799, !5823, !5824, !5825, !5826, !5827, !5828, !5829, !5859, !5860, !5861, !5864, !5867, !5876, !5877, !5878, !5879, !5880, !5881}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1565, file: !132, line: 706, baseType: !1568, size: 512)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1569, line: 64, size: 512, elements: !1570)
!1569 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1570 = !{!1571, !1572, !1573, !1575, !1627, !5406, !5498, !5503, !5504, !5505, !5506, !5507}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1568, file: !1569, line: 65, baseType: !333, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1568, file: !1569, line: 66, baseType: !1471, size: 128, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1568, file: !1569, line: 67, baseType: !1574, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1568, file: !1569, line: 68, baseType: !1576, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1569, line: 168, size: 768, elements: !1578)
!1578 = !{!1579, !1580, !1589, !1590}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1577, file: !1569, line: 169, baseType: !1471, size: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1577, file: !1569, line: 170, baseType: !1581, size: 32, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1582, line: 29, baseType: !1583)
!1582 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1582, line: 17, size: 32, elements: !1584)
!1584 = !{!1585}
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1583, file: !1582, line: 18, baseType: !1586, size: 32)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1583, file: !1582, line: 18, size: 32, elements: !1587)
!1587 = !{!1588}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1586, file: !1582, line: 19, baseType: !1498, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1577, file: !1569, line: 171, baseType: !1568, size: 512, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1577, file: !1569, line: 172, baseType: !1591, size: 64, offset: 704)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1569, line: 133, size: 192, elements: !1594)
!1594 = !{!1595, !1602, !1607}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1593, file: !1569, line: 134, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!147, !1600}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1568)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1593, file: !1569, line: 135, baseType: !1603, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1604)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!333, !1600}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1593, file: !1569, line: 136, baseType: !1608, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!147, !1600, !1612}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1569, line: 125, size: 20736, elements: !1614)
!1614 = !{!1615, !1617, !1621, !1622, !1626}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1613, file: !1569, line: 126, baseType: !1616, size: 192)
!1616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 192, elements: !482)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1613, file: !1569, line: 127, baseType: !1618, size: 4096, offset: 192)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 4096, elements: !1619)
!1619 = !{!1620}
!1620 = !DISubrange(count: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1613, file: !1569, line: 128, baseType: !147, size: 32, offset: 4288)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1613, file: !1569, line: 129, baseType: !1623, size: 16384, offset: 4320)
!1623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 16384, elements: !1624)
!1624 = !{!1625}
!1625 = !DISubrange(count: 2048)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1613, file: !1569, line: 130, baseType: !147, size: 32, offset: 20704)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1568, file: !1569, line: 69, baseType: !1628, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1630)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1569, line: 116, size: 384, elements: !1631)
!1631 = !{!1632, !1636, !1663, !5368, !5396, !5400}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1630, file: !1569, line: 117, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !1574}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1630, file: !1569, line: 118, baseType: !1637, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1640, line: 254, size: 128, elements: !1641)
!1640 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1641 = !{!1642, !1656}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1639, file: !1640, line: 255, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!1646, !1574, !1650, !339}
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !575, line: 66, baseType: !1647)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !1648, line: 73, baseType: !1649)
!1648 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !1648, line: 15, baseType: !224)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1640, line: 30, size: 128, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1651, file: !1640, line: 31, baseType: !333, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1651, file: !1640, line: 32, baseType: !1655, size: 16, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !575, line: 24, baseType: !263)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1639, file: !1640, line: 256, baseType: !1657, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!1646, !1574, !1650, !333, !1660}
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !575, line: 61, baseType: !1661)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1648, line: 72, baseType: !1662)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1648, line: 16, baseType: !295)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1630, file: !1569, line: 119, baseType: !1664, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1667)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1640, line: 84, size: 320, elements: !1668)
!1668 = !{!1669, !1670, !1674, !5364, !5366}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1667, file: !1640, line: 85, baseType: !333, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1667, file: !1640, line: 86, baseType: !1671, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!1655, !1574, !1650, !147}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1667, file: !1640, line: 88, baseType: !1675, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!1655, !1574, !1678, !147}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1640, line: 175, size: 512, elements: !1680)
!1680 = !{!1681, !1682, !1683, !1684, !5355, !5359, !5360}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1679, file: !1640, line: 176, baseType: !1651, size: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1679, file: !1640, line: 177, baseType: !1660, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1679, file: !1640, line: 178, baseType: !218, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1679, file: !1640, line: 179, baseType: !1685, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!1688}
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !52, line: 472, size: 1536, align: 64, elements: !1690)
!1690 = !{!1691, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5349, !5350, !5351, !5352, !5353, !5354}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1689, file: !52, line: 473, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !52, line: 641, size: 4800, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1705, !1706, !1713, !1714, !1717, !1718, !5120, !5121, !5122, !5123, !5124, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5164, !5167, !5168, !5169, !5186, !5187, !5188, !5189}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1693, file: !52, line: 642, baseType: !1655, size: 16)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1693, file: !52, line: 643, baseType: !263, size: 16, offset: 16)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1693, file: !52, line: 644, baseType: !1698, size: 32, offset: 32)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1699, line: 23, baseType: !1700)
!1699 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1699, line: 21, size: 32, elements: !1701)
!1701 = !{!1702}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1700, file: !1699, line: 22, baseType: !1703, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !575, line: 37, baseType: !1704)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !1648, line: 49, baseType: !7)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1693, file: !52, line: 645, baseType: !1471, size: 128, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1693, file: !52, line: 646, baseType: !1707, size: 32, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1699, line: 28, baseType: !1708)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1699, line: 26, size: 32, elements: !1709)
!1709 = !{!1710}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1708, file: !1699, line: 27, baseType: !1711, size: 32)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !575, line: 38, baseType: !1712)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !1648, line: 50, baseType: !7)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1693, file: !52, line: 647, baseType: !7, size: 32, offset: 224)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1693, file: !52, line: 650, baseType: !1715, size: 64, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !52, line: 607, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1693, file: !52, line: 651, baseType: !1715, size: 64, offset: 320)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1693, file: !52, line: 654, baseType: !1719, size: 64, offset: 384)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1721)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !52, line: 1966, size: 2048, align: 512, elements: !1722)
!1722 = !{!1723, !4954, !4964, !4968, !4972, !4976, !4980, !4984, !4988, !4992, !4996, !4997, !5001, !5005, !5042, !5071, !5075, !5081, !5085, !5089, !5093, !5097, !5101, !5107, !5111}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1721, file: !52, line: 1967, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!1727, !1692, !1727, !7}
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1729, line: 82, size: 1536, elements: !1730)
!1729 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1730 = !{!1731, !1732, !1742, !1750, !1751, !1768, !1769, !1771, !1784, !4938, !4939, !4940, !4941, !4946, !4947, !4948}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1728, file: !1729, line: 84, baseType: !7, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1728, file: !1729, line: 85, baseType: !1733, size: 32, offset: 32)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !1734, line: 275, baseType: !1735)
!1734 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !1734, line: 275, size: 32, elements: !1736)
!1736 = !{!1737}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1735, file: !1734, line: 275, baseType: !1738, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !1734, line: 69, baseType: !1739)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !1734, line: 64, size: 32, elements: !1740)
!1740 = !{!1741}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1739, file: !1734, line: 65, baseType: !7, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1728, file: !1729, line: 86, baseType: !1743, size: 128, offset: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1744, line: 38, size: 128, elements: !1745)
!1744 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1745 = !{!1746, !1748}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1743, file: !1744, line: 39, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1743, file: !1744, line: 39, baseType: !1749, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1728, file: !1729, line: 87, baseType: !1727, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1728, file: !1729, line: 88, baseType: !1752, size: 128, offset: 256)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1729, line: 49, size: 128, elements: !1753)
!1753 = !{!1754, !1765}
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !1729, line: 50, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !1729, line: 50, size: 64, elements: !1756)
!1756 = !{!1757, !1764}
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !1729, line: 51, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !1729, line: 51, size: 64, elements: !1759)
!1759 = !{!1760, !1763}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1758, file: !1729, line: 52, baseType: !1761, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !297, line: 21, baseType: !1762)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !299, line: 27, baseType: !7)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1758, file: !1729, line: 52, baseType: !1761, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1755, file: !1729, line: 54, baseType: !296, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1752, file: !1729, line: 56, baseType: !1766, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1728, file: !1729, line: 89, baseType: !1692, size: 64, offset: 384)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1728, file: !1729, line: 91, baseType: !1770, size: 256, offset: 448)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 256, elements: !315)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1728, file: !1729, line: 94, baseType: !1772, size: 64, offset: 704)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1773, line: 25, size: 64, elements: !1774)
!1773 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1774 = !{!1775}
!1775 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !1773, line: 26, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !1773, line: 26, size: 64, elements: !1777)
!1777 = !{!1778, !1779}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1776, file: !1773, line: 28, baseType: !298, size: 64, align: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !1773, line: 30, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !1773, line: 30, size: 64, elements: !1781)
!1781 = !{!1782, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1780, file: !1773, line: 31, baseType: !1581, size: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1780, file: !1773, line: 32, baseType: !147, size: 32, offset: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1728, file: !1729, line: 95, baseType: !1785, size: 64, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1729, line: 128, size: 1024, align: 512, elements: !1788)
!1788 = !{!1789, !1793, !1794, !1801, !1807, !1811, !1815, !1819, !1820, !1824, !1828, !4928, !4932}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1787, file: !1729, line: 129, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!147, !1727, !7}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1787, file: !1729, line: 130, baseType: !1790, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1787, file: !1729, line: 131, baseType: !1795, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!147, !1798, !1800}
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1728)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1787, file: !1729, line: 132, baseType: !1802, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!147, !1798, !7, !333, !1805}
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1752)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1787, file: !1729, line: 134, baseType: !1808, size: 64, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!147, !1798}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1787, file: !1729, line: 135, baseType: !1812, size: 64, offset: 320)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!147, !1727}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1787, file: !1729, line: 136, baseType: !1816, size: 64, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{null, !1727}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1787, file: !1729, line: 137, baseType: !1816, size: 64, offset: 448)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1787, file: !1729, line: 138, baseType: !1821, size: 64, offset: 512)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{null, !1727, !1692}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1787, file: !1729, line: 139, baseType: !1825, size: 64, offset: 576)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!339, !1727, !339, !147}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1787, file: !1729, line: 140, baseType: !1829, size: 64, offset: 640)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!1832, !4927}
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1834, line: 70, size: 256, elements: !1835)
!1834 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1835 = !{!1836, !1837, !4923, !4924}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1833, file: !1834, line: 71, baseType: !1727, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1833, file: !1834, line: 72, baseType: !1838, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !52, line: 1190, size: 10752, elements: !1840)
!1840 = !{!1841, !1842, !1845, !1846, !1847, !1850, !2295, !3436, !3476, !3561, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3578, !3582, !3583, !3586, !3589, !3592, !3595, !3596, !3597, !3638, !4857, !4858, !4859, !4860, !4861, !4862, !4865, !4866, !4873, !4874, !4875, !4876, !4877, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1839, file: !52, line: 1191, baseType: !1471, size: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1839, file: !52, line: 1192, baseType: !1843, size: 32, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !575, line: 21, baseType: !1844)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !575, line: 18, baseType: !1761)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1839, file: !52, line: 1193, baseType: !226, size: 8, offset: 160)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1839, file: !52, line: 1194, baseType: !295, size: 64, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1839, file: !52, line: 1195, baseType: !1848, size: 64, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !575, line: 52, baseType: !1849)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !1648, line: 88, baseType: !1494)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1839, file: !52, line: 1196, baseType: !1851, size: 64, offset: 320)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !52, line: 2366, size: 576, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1862, !1866, !1870, !1874, !2280, !2281, !2285, !2287, !2288, !2289, !2291, !2292, !2293, !2294}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1852, file: !52, line: 2367, baseType: !333, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1852, file: !52, line: 2368, baseType: !147, size: 32, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1852, file: !52, line: 2376, baseType: !1857, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!147, !1860}
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1834, line: 21, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1852, file: !52, line: 2377, baseType: !1863, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1865)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !52, line: 75, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1852, file: !52, line: 2378, baseType: !1867, size: 64, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!1727, !1851, !147, !333, !218}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1852, file: !52, line: 2380, baseType: !1871, size: 64, offset: 320)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{null, !1838}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1852, file: !52, line: 2381, baseType: !1875, size: 64, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !45, line: 402, size: 9216, align: 512, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1884, !1905, !1931, !1932, !1933, !1934, !1938, !1943, !1944, !1945, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2015, !2017, !2040, !2061, !2062, !2063, !2064, !2073, !2096, !2097, !2100, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2114, !2115, !2240, !2248, !2249, !2250, !2252, !2256, !2257, !2261, !2262, !2263, !2264, !2266, !2267, !2268, !2275, !2276, !2277, !2279}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1876, file: !45, line: 403, baseType: !44, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1876, file: !45, line: 406, baseType: !1471, size: 128, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1876, file: !45, line: 409, baseType: !1881, size: 448, offset: 192)
!1881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 448, elements: !1882)
!1882 = !{!1883}
!1883 = !DISubrange(count: 56)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1876, file: !45, line: 417, baseType: !1885, size: 768, offset: 640)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !45, line: 45, size: 768, elements: !1886)
!1886 = !{!1887, !1888, !1889, !1890, !1893}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1885, file: !45, line: 46, baseType: !1568, size: 512)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1885, file: !45, line: 47, baseType: !1875, size: 64, offset: 512)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1885, file: !45, line: 48, baseType: !1574, size: 64, offset: 576)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1885, file: !45, line: 49, baseType: !1891, size: 64, offset: 640)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !45, line: 49, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1885, file: !45, line: 50, baseType: !1894, size: 64, offset: 704)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1896, line: 26, size: 256, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1895, file: !1896, line: 27, baseType: !7, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1895, file: !1896, line: 28, baseType: !1900, size: 192, offset: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1901, line: 43, size: 192, elements: !1902)
!1901 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1902 = !{!1903, !1904}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1900, file: !1901, line: 44, baseType: !1496, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1900, file: !1901, line: 45, baseType: !1471, size: 128, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1876, file: !45, line: 418, baseType: !1906, size: 64, offset: 1408)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !45, line: 53, size: 448, elements: !1908)
!1908 = !{!1909, !1910, !1915, !1919, !1923, !1927}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1907, file: !45, line: 54, baseType: !1651, size: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1907, file: !45, line: 55, baseType: !1911, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!1646, !1906, !1914, !339}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1907, file: !45, line: 57, baseType: !1916, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!1646, !1906, !1914, !333, !1660}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1907, file: !45, line: 59, baseType: !1920, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1875, !333}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1907, file: !45, line: 60, baseType: !1924, size: 64, offset: 320)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!147, !1875}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1907, file: !45, line: 61, baseType: !1928, size: 64, offset: 384)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !1875}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1876, file: !45, line: 419, baseType: !333, size: 64, offset: 1472)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1876, file: !45, line: 420, baseType: !333, size: 64, offset: 1536)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1876, file: !45, line: 421, baseType: !1574, size: 64, offset: 1600)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1876, file: !45, line: 424, baseType: !1935, size: 64, offset: 1664)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1937)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !45, line: 424, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1876, file: !45, line: 425, baseType: !1939, size: 64, offset: 1728)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1941)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !297, line: 20, baseType: !1942)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !299, line: 26, baseType: !147)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1876, file: !45, line: 426, baseType: !7, size: 32, offset: 1792)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1876, file: !45, line: 435, baseType: !1482, size: 256, offset: 1856)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1876, file: !45, line: 437, baseType: !1946, size: 64, offset: 2112)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1948, line: 69, size: 320, elements: !1949)
!1948 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1949 = !{!1950, !1951, !1952, !1972, !1974, !1978, !1979}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1947, file: !1948, line: 70, baseType: !333, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1947, file: !1948, line: 71, baseType: !1875, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1947, file: !1948, line: 72, baseType: !1953, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1955)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1948, line: 47, size: 256, elements: !1956)
!1956 = !{!1957, !1958, !1964, !1968}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1955, file: !1948, line: 49, baseType: !7, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1955, file: !1948, line: 51, baseType: !1959, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!147, !333, !1962}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1947)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1955, file: !1948, line: 53, baseType: !1965, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!147, !339, !1962}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1955, file: !1948, line: 55, baseType: !1969, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !218}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1947, file: !1948, line: 73, baseType: !1973, size: 16, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1522)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1947, file: !1948, line: 74, baseType: !1975, size: 8, offset: 208)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !297, line: 16, baseType: !1976)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !299, line: 20, baseType: !1977)
!1977 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1947, file: !1948, line: 75, baseType: !555, size: 8, offset: 216)
!1979 = !DIDerivedType(tag: DW_TAG_member, scope: !1947, file: !1948, line: 76, baseType: !1980, size: 64, offset: 256)
!1980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1947, file: !1948, line: 76, size: 64, elements: !1981)
!1981 = !{!1982, !1983, !1990}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1980, file: !1948, line: 77, baseType: !218, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1980, file: !1948, line: 78, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1948, line: 86, size: 128, elements: !1987)
!1987 = !{!1988, !1989}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1986, file: !1948, line: 87, baseType: !7, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1986, file: !1948, line: 88, baseType: !339, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1980, file: !1948, line: 79, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1993)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1948, line: 92, size: 256, elements: !1994)
!1994 = !{!1995, !1996, !1997, !1998, !1999}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1993, file: !1948, line: 94, baseType: !7, size: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1993, file: !1948, line: 95, baseType: !7, size: 32, offset: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1993, file: !1948, line: 96, baseType: !924, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1993, file: !1948, line: 97, baseType: !1953, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1993, file: !1948, line: 98, baseType: !218, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1876, file: !45, line: 438, baseType: !7, size: 32, offset: 2176)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1876, file: !45, line: 441, baseType: !7, size: 32, offset: 2208)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1876, file: !45, line: 442, baseType: !1935, size: 64, offset: 2240)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1876, file: !45, line: 443, baseType: !1939, size: 64, offset: 2304)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1876, file: !45, line: 444, baseType: !574, size: 8, offset: 2368)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1876, file: !45, line: 451, baseType: !574, size: 8, offset: 2376)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1876, file: !45, line: 454, baseType: !7, size: 32, offset: 2400)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1876, file: !45, line: 455, baseType: !2008, size: 64, offset: 2432)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2010, line: 23, size: 96, elements: !2011)
!2010 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2011 = !{!2012, !2013, !2014}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2009, file: !2010, line: 24, baseType: !147, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2009, file: !2010, line: 24, baseType: !147, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2009, file: !2010, line: 24, baseType: !147, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1876, file: !45, line: 458, baseType: !2016, size: 64, offset: 2496)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1876, file: !45, line: 460, baseType: !2018, size: 4032, align: 512, offset: 2560)
!2018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2019, size: 4032, elements: !376)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !45, line: 362, size: 576, elements: !2020)
!2020 = !{!2021, !2022, !2023}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2019, file: !45, line: 363, baseType: !218, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2019, file: !45, line: 364, baseType: !7, size: 32, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2019, file: !45, line: 367, baseType: !2024, size: 448, offset: 128)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !45, line: 319, size: 448, elements: !2025)
!2025 = !{!2026, !2027}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2024, file: !45, line: 320, baseType: !1875, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2024, file: !45, line: 321, baseType: !2028, size: 384, offset: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2029, line: 40, size: 384, elements: !2030)
!2029 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2030 = !{!2031}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2028, file: !2029, line: 41, baseType: !2032, size: 384, align: 64)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2033, size: 384, align: 64, elements: !238)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !2034, line: 5, size: 192, align: 64, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!2035 = !{!2036, !2037, !2039}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !2033, file: !2034, line: 6, baseType: !295, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !2033, file: !2034, line: 7, baseType: !2038, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !2033, file: !2034, line: 8, baseType: !2038, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1876, file: !45, line: 463, baseType: !2041, size: 192, offset: 6592)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2042, line: 8, size: 192, elements: !2043)
!2042 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2043 = !{!2044, !2045, !2047}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2041, file: !2042, line: 10, baseType: !7, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2041, file: !2042, line: 11, baseType: !2046, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2041, file: !2042, line: 12, baseType: !2048, size: 64, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2050, line: 59, size: 48, elements: !2051)
!2050 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2051 = !{!2052, !2056, !2057, !2058, !2059, !2060}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2049, file: !2050, line: 60, baseType: !2053, size: 16)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !297, line: 18, baseType: !2054)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !299, line: 23, baseType: !2055)
!2055 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2049, file: !2050, line: 61, baseType: !2053, size: 16, offset: 16)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2049, file: !2050, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2049, file: !2050, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2049, file: !2050, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2049, file: !2050, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1876, file: !45, line: 465, baseType: !295, size: 64, offset: 6784)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1876, file: !45, line: 469, baseType: !7, size: 32, offset: 6848)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1876, file: !45, line: 470, baseType: !1471, size: 128, offset: 6912)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1876, file: !45, line: 471, baseType: !2065, size: 64, offset: 7040)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2067, line: 33, size: 96, elements: !2068)
!2067 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2068 = !{!2069, !2070, !2071, !2072}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2066, file: !2067, line: 37, baseType: !147, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2066, file: !2067, line: 43, baseType: !147, size: 32, offset: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2066, file: !2067, line: 45, baseType: !263, size: 16, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2066, file: !2067, line: 47, baseType: !263, size: 16, offset: 80)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1876, file: !45, line: 476, baseType: !2074, size: 64, offset: 7104)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !45, line: 378, size: 256, elements: !2076)
!2076 = !{!2077, !2093, !2094, !2095}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2075, file: !45, line: 379, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2080, line: 204, baseType: !2081)
!2080 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2080, line: 197, size: 192, elements: !2082)
!2082 = !{!2083, !2085, !2086, !2087, !2089, !2091}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2081, file: !2080, line: 198, baseType: !2084, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2080, line: 21, baseType: !1762)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2081, file: !2080, line: 199, baseType: !226, size: 8, offset: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2081, file: !2080, line: 200, baseType: !226, size: 8, offset: 40)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2081, file: !2080, line: 201, baseType: !2088, size: 16, offset: 48)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2080, line: 17, baseType: !1523)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2081, file: !2080, line: 202, baseType: !2090, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2080, line: 16, baseType: !298)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2081, file: !2080, line: 203, baseType: !2092, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2080, line: 22, baseType: !298)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2075, file: !45, line: 380, baseType: !7, size: 32, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2075, file: !45, line: 381, baseType: !339, size: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2075, file: !45, line: 382, baseType: !339, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1876, file: !45, line: 477, baseType: !2075, size: 256, offset: 7168)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1876, file: !45, line: 480, baseType: !2098, size: 64, offset: 7424)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !45, line: 480, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1876, file: !45, line: 483, baseType: !2101, size: 64, offset: 7488)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !45, line: 483, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1876, file: !45, line: 488, baseType: !339, size: 64, offset: 7552)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1876, file: !45, line: 492, baseType: !218, size: 64, offset: 7616)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1876, file: !45, line: 493, baseType: !7, size: 32, offset: 7680)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1876, file: !45, line: 495, baseType: !218, size: 64, offset: 7744)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1876, file: !45, line: 496, baseType: !7, size: 32, offset: 7808)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1876, file: !45, line: 499, baseType: !7, size: 32, offset: 7840)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1876, file: !45, line: 500, baseType: !2110, size: 64, offset: 7872)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2112, line: 45, baseType: !2113)
!2112 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1876, file: !45, line: 503, baseType: !7, size: 32, offset: 7936)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1876, file: !45, line: 504, baseType: !2116, size: 64, offset: 8000)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2119, line: 96, size: 192, elements: !2120)
!2119 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2120 = !{!2121, !2122, !2201, !2204}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2118, file: !2119, line: 97, baseType: !7, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2118, file: !2119, line: 98, baseType: !2123, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2119, line: 24, size: 3072, elements: !2125)
!2125 = !{!2126, !2128, !2129, !2130, !2131, !2153, !2154, !2155, !2156, !2174, !2186, !2187, !2198, !2199, !2200}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2124, file: !2119, line: 26, baseType: !2127, size: 128)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1486, size: 128, elements: !238)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2124, file: !2119, line: 27, baseType: !2127, size: 128, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2124, file: !2119, line: 28, baseType: !147, size: 32, offset: 256)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2124, file: !2119, line: 31, baseType: !1581, size: 32, align: 512, offset: 512)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2124, file: !2119, line: 32, baseType: !2132, size: 960, offset: 576)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2133, line: 206, size: 960, elements: !2134)
!2133 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2134 = !{!2135, !2144, !2147, !2149, !2150, !2152}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2132, file: !2133, line: 207, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !575, line: 232, size: 128, align: 64, elements: !2138)
!2138 = !{!2139, !2140}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2137, file: !575, line: 233, baseType: !2136, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2137, file: !575, line: 234, baseType: !2141, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{null, !2136}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2132, file: !2133, line: 208, baseType: !2145, size: 256, offset: 64)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2146, size: 256, elements: !283)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2132, file: !2133, line: 209, baseType: !2148, size: 256, offset: 320)
!2148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 256, elements: !283)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2132, file: !2133, line: 213, baseType: !224, size: 64, offset: 576)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2132, file: !2133, line: 215, baseType: !2151, size: 256, offset: 640)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 256, elements: !283)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2132, file: !2133, line: 216, baseType: !555, size: 8, offset: 896)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2124, file: !2119, line: 33, baseType: !295, size: 64, offset: 1536)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2124, file: !2119, line: 34, baseType: !295, size: 64, offset: 1600)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2124, file: !2119, line: 35, baseType: !574, size: 8, offset: 1664)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2124, file: !2119, line: 36, baseType: !2157, size: 320, offset: 1728)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2158, line: 11, size: 320, elements: !2159)
!2158 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2159 = !{!2160, !2167, !2168, !2173}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2157, file: !2158, line: 16, baseType: !2161, size: 128)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !575, line: 198, size: 128, elements: !2162)
!2162 = !{!2163, !2165}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2161, file: !575, line: 199, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !2161, file: !575, line: 199, baseType: !2166, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2157, file: !2158, line: 17, baseType: !295, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2157, file: !2158, line: 18, baseType: !2169, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{null, !2172}
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2157, file: !2158, line: 19, baseType: !1761, size: 32, offset: 256)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2124, file: !2119, line: 37, baseType: !2175, size: 256, offset: 2048)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2176, line: 98, size: 256, elements: !2177)
!2176 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2177 = !{!2178, !2179, !2180}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2175, file: !2176, line: 99, baseType: !1486, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2175, file: !2176, line: 100, baseType: !1471, size: 128, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2175, file: !2176, line: 101, baseType: !2181, size: 64, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2176, line: 21, baseType: !2182)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{null, !2185}
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2124, file: !2119, line: 38, baseType: !2137, size: 128, align: 64, offset: 2304)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2124, file: !2119, line: 39, baseType: !2188, size: 64, offset: 2432)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2119, line: 49, size: 768, elements: !2190)
!2190 = !{!2191, !2192, !2193, !2194, !2195, !2196, !2197}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2189, file: !2119, line: 50, baseType: !1581, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2189, file: !2119, line: 51, baseType: !2148, size: 256, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2189, file: !2119, line: 53, baseType: !2148, size: 256, offset: 320)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2189, file: !2119, line: 54, baseType: !295, size: 64, offset: 576)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2189, file: !2119, line: 55, baseType: !2188, size: 64, offset: 640)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2189, file: !2119, line: 56, baseType: !147, size: 32, offset: 704)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2189, file: !2119, line: 57, baseType: !147, size: 32, offset: 736)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2124, file: !2119, line: 40, baseType: !295, size: 64, offset: 2496)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2124, file: !2119, line: 42, baseType: !147, size: 32, offset: 2560)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2124, file: !2119, line: 43, baseType: !2117, size: 64, offset: 2624)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2118, file: !2119, line: 99, baseType: !2202, offset: 128)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2203, line: 211, elements: !603)
!2203 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2118, file: !2119, line: 100, baseType: !2205, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2119, line: 63, size: 3008, elements: !2207)
!2207 = !{!2208, !2209, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2239}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2206, file: !2119, line: 64, baseType: !2188, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2206, file: !2119, line: 65, baseType: !2210, size: 192, offset: 64)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2188, size: 192, elements: !482)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2206, file: !2119, line: 67, baseType: !147, size: 32, offset: 256)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2206, file: !2119, line: 68, baseType: !1482, size: 256, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2206, file: !2119, line: 69, baseType: !1581, size: 32, offset: 576)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2206, file: !2119, line: 70, baseType: !1482, size: 256, offset: 640)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2206, file: !2119, line: 71, baseType: !295, size: 64, offset: 896)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2206, file: !2119, line: 72, baseType: !295, size: 64, offset: 960)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2206, file: !2119, line: 73, baseType: !295, size: 64, offset: 1024)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2206, file: !2119, line: 74, baseType: !295, size: 64, offset: 1088)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2206, file: !2119, line: 75, baseType: !295, size: 64, offset: 1152)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2206, file: !2119, line: 76, baseType: !295, size: 64, offset: 1216)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2206, file: !2119, line: 77, baseType: !295, size: 64, offset: 1280)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2206, file: !2119, line: 78, baseType: !295, size: 64, offset: 1344)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2206, file: !2119, line: 79, baseType: !574, size: 8, offset: 1408)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2206, file: !2119, line: 80, baseType: !295, size: 64, offset: 1472)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2206, file: !2119, line: 81, baseType: !1482, size: 256, offset: 1536)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2206, file: !2119, line: 82, baseType: !1895, size: 256, offset: 1792)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2206, file: !2119, line: 84, baseType: !1509, size: 32, offset: 2048)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2206, file: !2119, line: 87, baseType: !295, size: 64, offset: 2112)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2206, file: !2119, line: 88, baseType: !295, size: 64, offset: 2176)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2206, file: !2119, line: 89, baseType: !2231, size: 704, offset: 2240)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2176, line: 111, size: 704, elements: !2232)
!2232 = !{!2233, !2234, !2235, !2238}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2231, file: !2176, line: 112, baseType: !2175, size: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2231, file: !2176, line: 113, baseType: !2157, size: 320, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2231, file: !2176, line: 116, baseType: !2236, size: 64, offset: 576)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2176, line: 18, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2231, file: !2176, line: 117, baseType: !147, size: 32, offset: 640)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2206, file: !2119, line: 90, baseType: !2117, size: 64, offset: 2944)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1876, file: !45, line: 515, baseType: !2241, size: 64, offset: 8064)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2243, line: 117, size: 128, elements: !2244)
!2243 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2244 = !{!2245, !2246, !2247}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2242, file: !2243, line: 118, baseType: !1941, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2242, file: !2243, line: 119, baseType: !1941, size: 32, offset: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2242, file: !2243, line: 120, baseType: !224, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1876, file: !45, line: 516, baseType: !7, size: 32, offset: 8128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1876, file: !45, line: 519, baseType: !7, size: 32, offset: 8160)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1876, file: !45, line: 520, baseType: !2251, size: 64, offset: 8192)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1876, file: !45, line: 523, baseType: !2253, size: 64, offset: 8256)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !45, line: 523, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1876, file: !45, line: 524, baseType: !7, size: 32, offset: 8320)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1876, file: !45, line: 525, baseType: !2258, size: 64, offset: 8384)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !45, line: 525, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1876, file: !45, line: 526, baseType: !7, size: 32, offset: 8448)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1876, file: !45, line: 533, baseType: !218, size: 64, offset: 8512)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1876, file: !45, line: 534, baseType: !7, size: 32, offset: 8576)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1876, file: !45, line: 535, baseType: !2265, size: 64, offset: 8640)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1876, file: !45, line: 536, baseType: !7, size: 32, offset: 8704)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1876, file: !45, line: 539, baseType: !147, size: 32, offset: 8736)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1876, file: !45, line: 540, baseType: !2269, size: 64, offset: 8768)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2271, line: 32, size: 64, elements: !2272)
!2271 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2272 = !{!2273, !2274}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2270, file: !2271, line: 33, baseType: !1941, size: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2270, file: !2271, line: 34, baseType: !1941, size: 32, offset: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1876, file: !45, line: 563, baseType: !1471, size: 128, offset: 8832)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1876, file: !45, line: 565, baseType: !1471, size: 128, offset: 8960)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1876, file: !45, line: 568, baseType: !2278, size: 64, offset: 9088)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1876, file: !45, line: 570, baseType: !1509, size: 32, offset: 9152)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1852, file: !52, line: 2382, baseType: !1851, size: 64, offset: 448)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1852, file: !52, line: 2383, baseType: !2282, size: 64, offset: 512)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !575, line: 194, size: 64, elements: !2283)
!2283 = !{!2284}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2282, file: !575, line: 195, baseType: !2164, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1852, file: !52, line: 2385, baseType: !2286, offset: 576)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2203, line: 206, elements: !603)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1852, file: !52, line: 2386, baseType: !2286, offset: 576)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1852, file: !52, line: 2387, baseType: !2286, offset: 576)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1852, file: !52, line: 2388, baseType: !2290, offset: 576)
!2290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2286, elements: !482)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1852, file: !52, line: 2390, baseType: !2286, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1852, file: !52, line: 2391, baseType: !2286, offset: 576)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1852, file: !52, line: 2392, baseType: !2286, offset: 576)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1852, file: !52, line: 2393, baseType: !2286, offset: 576)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1839, file: !52, line: 1197, baseType: !2296, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2298)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !52, line: 2057, size: 1664, elements: !2299)
!2299 = !{!2300, !2304, !2308, !2309, !2313, !2319, !2323, !2324, !2325, !2329, !2333, !2337, !2338, !2339, !2345, !2349, !2350, !3361, !3362, !3363, !3364, !3368, !3372, !3419, !3434, !3435}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2298, file: !52, line: 2058, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!1692, !1838}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2298, file: !52, line: 2059, baseType: !2305, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !1692}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2298, file: !52, line: 2060, baseType: !2305, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2298, file: !52, line: 2062, baseType: !2310, size: 64, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{null, !1692, !147}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2298, file: !52, line: 2063, baseType: !2314, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!147, !1692, !2317}
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !52, line: 309, flags: DIFlagFwdDecl)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2298, file: !52, line: 2064, baseType: !2320, size: 64, offset: 320)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!147, !1692}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2298, file: !52, line: 2065, baseType: !2305, size: 64, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2298, file: !52, line: 2066, baseType: !1871, size: 64, offset: 448)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2298, file: !52, line: 2067, baseType: !2326, size: 64, offset: 512)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!147, !1838, !147}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2298, file: !52, line: 2068, baseType: !2330, size: 64, offset: 576)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!147, !1838, !51}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2298, file: !52, line: 2069, baseType: !2334, size: 64, offset: 640)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!147, !1838}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2298, file: !52, line: 2070, baseType: !2330, size: 64, offset: 704)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2298, file: !52, line: 2071, baseType: !2334, size: 64, offset: 768)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2298, file: !52, line: 2072, baseType: !2340, size: 64, offset: 832)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!147, !1727, !2343}
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !52, line: 62, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2298, file: !52, line: 2073, baseType: !2346, size: 64, offset: 896)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!147, !1838, !2046, !339}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2298, file: !52, line: 2074, baseType: !1871, size: 64, offset: 960)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2298, file: !52, line: 2076, baseType: !2351, size: 64, offset: 1024)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!147, !2354, !1727}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2356, line: 17, size: 960, elements: !2357)
!2356 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2357 = !{!2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2388, !2389, !3360}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2355, file: !2356, line: 18, baseType: !339, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2355, file: !2356, line: 19, baseType: !1660, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2355, file: !2356, line: 20, baseType: !1660, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2355, file: !2356, line: 21, baseType: !1660, size: 64, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2355, file: !2356, line: 22, baseType: !1660, size: 64, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2355, file: !2356, line: 23, baseType: !1848, size: 64, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2355, file: !2356, line: 24, baseType: !1848, size: 64, offset: 384)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2355, file: !2356, line: 25, baseType: !1482, size: 256, offset: 448)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2355, file: !2356, line: 26, baseType: !2367, size: 64, offset: 704)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2369)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2356, line: 32, size: 256, elements: !2370)
!2370 = !{!2371, !2376, !2380, !2384}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2369, file: !2356, line: 33, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!218, !2354, !2375}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2369, file: !2356, line: 34, baseType: !2377, size: 64, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{null, !2354, !218}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2369, file: !2356, line: 35, baseType: !2381, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!218, !2354, !218, !2375}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2369, file: !2356, line: 36, baseType: !2385, size: 64, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!147, !2354, !218}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2355, file: !2356, line: 27, baseType: !147, size: 32, offset: 768)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2355, file: !2356, line: 28, baseType: !2390, size: 64, offset: 832)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2392)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !52, line: 994, size: 1856, align: 64, elements: !2393)
!2393 = !{!2394, !2405, !2406, !2408, !2409, !2410, !2411, !2412, !2473, !2671, !2680, !2686, !2687, !3350, !3351, !3352, !3353, !3355, !3356, !3359}
!2394 = !DIDerivedType(tag: DW_TAG_member, scope: !2392, file: !52, line: 995, baseType: !2395, size: 128)
!2395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2392, file: !52, line: 995, size: 128, elements: !2396)
!2396 = !{!2397, !2403, !2404}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !2395, file: !52, line: 996, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !2399, line: 60, size: 64, elements: !2400)
!2399 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!2400 = !{!2401}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2398, file: !2399, line: 61, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !2395, file: !52, line: 997, baseType: !2137, size: 128, align: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !2395, file: !52, line: 998, baseType: !7, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !2392, file: !52, line: 1005, baseType: !1581, size: 32, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !2392, file: !52, line: 1006, baseType: !2407, size: 32, offset: 160)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !575, line: 156, baseType: !7)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !2392, file: !52, line: 1007, baseType: !1486, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !2392, file: !52, line: 1008, baseType: !1482, size: 256, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !2392, file: !52, line: 1009, baseType: !1848, size: 64, offset: 512)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !2392, file: !52, line: 1010, baseType: !7, size: 32, offset: 576)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !2392, file: !52, line: 1011, baseType: !2413, size: 256, offset: 640)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !52, line: 948, size: 256, elements: !2414)
!2414 = !{!2415, !2436, !2469, !2470, !2471, !2472}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2413, file: !52, line: 949, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2417, line: 34, baseType: !2418)
!2417 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2417, line: 25, size: 64, elements: !2419)
!2419 = !{!2420}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2418, file: !2417, line: 26, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !2422, line: 27, baseType: !2423)
!2422 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !2422, line: 13, size: 64, elements: !2424)
!2424 = !{!2425, !2435}
!2425 = !DIDerivedType(tag: DW_TAG_member, scope: !2423, file: !2422, line: 14, baseType: !2426, size: 32)
!2426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2423, file: !2422, line: 14, size: 32, elements: !2427)
!2427 = !{!2428, !2429}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !2426, file: !2422, line: 15, baseType: !1509, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, scope: !2426, file: !2422, line: 16, baseType: !2430, size: 32)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2426, file: !2422, line: 16, size: 32, elements: !2431)
!2431 = !{!2432, !2433}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !2430, file: !2422, line: 18, baseType: !555, size: 8)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !2430, file: !2422, line: 19, baseType: !2434, size: 24, offset: 8)
!2434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 24, elements: !482)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2423, file: !2422, line: 26, baseType: !1501, size: 32, offset: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2413, file: !52, line: 950, baseType: !2437, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !57, line: 59, size: 768, elements: !2439)
!2439 = !{!2440, !2446, !2447, !2448, !2450, !2451, !2458, !2459}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2438, file: !57, line: 61, baseType: !2441, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !2442, line: 113, baseType: !2443)
!2442 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !2442, line: 111, size: 32, elements: !2444)
!2444 = !{!2445}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2443, file: !2442, line: 112, baseType: !1509, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2438, file: !57, line: 62, baseType: !7, size: 32, offset: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2438, file: !57, line: 63, baseType: !1581, size: 32, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2438, file: !57, line: 65, baseType: !2449, size: 256, offset: 128)
!2449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2282, size: 256, elements: !283)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2438, file: !57, line: 66, baseType: !2282, size: 64, offset: 384)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2438, file: !57, line: 68, baseType: !2452, size: 192, offset: 448)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !2453, line: 41, baseType: !2454)
!2453 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !2453, line: 37, size: 192, elements: !2455)
!2455 = !{!2456, !2457}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2454, file: !2453, line: 38, baseType: !1581, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2454, file: !2453, line: 39, baseType: !1471, size: 128, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2438, file: !57, line: 69, baseType: !2137, size: 128, align: 64, offset: 640)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2438, file: !57, line: 70, baseType: !2460, offset: 768)
!2460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2461, elements: !2467)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !57, line: 54, size: 128, elements: !2462)
!2462 = !{!2463, !2464}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2461, file: !57, line: 55, baseType: !147, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2461, file: !57, line: 56, baseType: !2465, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !57, line: 56, flags: DIFlagFwdDecl)
!2467 = !{!2468}
!2468 = !DISubrange(count: -1)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2413, file: !52, line: 951, baseType: !56, size: 32, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2413, file: !52, line: 952, baseType: !1698, size: 32, offset: 160)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2413, file: !52, line: 952, baseType: !1698, size: 32, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2413, file: !52, line: 953, baseType: !147, size: 32, offset: 224)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !2392, file: !52, line: 1012, baseType: !2474, size: 64, offset: 896)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2476)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2477, line: 110, size: 1472, elements: !2478)
!2477 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!2478 = !{!2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2495, !2496, !2497, !2498, !2499, !2500, !2616, !2617, !2618, !2619, !2620, !2651, !2654, !2658, !2666}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2476, file: !2477, line: 111, baseType: !1486, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2476, file: !2477, line: 112, baseType: !1698, size: 32, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2476, file: !2477, line: 113, baseType: !1707, size: 32, offset: 96)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2476, file: !2477, line: 114, baseType: !1698, size: 32, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2476, file: !2477, line: 115, baseType: !1707, size: 32, offset: 160)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2476, file: !2477, line: 116, baseType: !1698, size: 32, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2476, file: !2477, line: 117, baseType: !1707, size: 32, offset: 224)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2476, file: !2477, line: 118, baseType: !1698, size: 32, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2476, file: !2477, line: 119, baseType: !1707, size: 32, offset: 288)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2476, file: !2477, line: 120, baseType: !7, size: 32, offset: 320)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2476, file: !2477, line: 121, baseType: !2490, size: 64, offset: 384)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2491, line: 24, baseType: !2492)
!2491 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2491, line: 24, size: 64, elements: !2493)
!2493 = !{!2494}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2492, file: !2491, line: 24, baseType: !296, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2476, file: !2477, line: 122, baseType: !2490, size: 64, offset: 448)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2476, file: !2477, line: 123, baseType: !2490, size: 64, offset: 512)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2476, file: !2477, line: 124, baseType: !2490, size: 64, offset: 576)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2476, file: !2477, line: 125, baseType: !2490, size: 64, offset: 640)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2476, file: !2477, line: 127, baseType: !226, size: 8, offset: 704)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2476, file: !2477, line: 129, baseType: !2501, size: 64, offset: 768)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2503, line: 195, size: 1728, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!2504 = !{!2505, !2506, !2509, !2514, !2523, !2526, !2527, !2534, !2535, !2536, !2537, !2540, !2541, !2542, !2543, !2544, !2580, !2601}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2502, file: !2503, line: 196, baseType: !2441, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2502, file: !2503, line: 197, baseType: !2507, size: 32, offset: 32)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2503, line: 28, baseType: !2508)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !575, line: 104, baseType: !1941)
!2509 = !DIDerivedType(tag: DW_TAG_member, scope: !2502, file: !2503, line: 198, baseType: !2510, size: 192, offset: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2502, file: !2503, line: 198, size: 192, elements: !2511)
!2511 = !{!2512, !2513}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2510, file: !2503, line: 199, baseType: !1471, size: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2510, file: !2503, line: 200, baseType: !2033, size: 192, align: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2502, file: !2503, line: 205, baseType: !2515, size: 320, offset: 256)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !2516, line: 48, size: 320, elements: !2517)
!2516 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!2517 = !{!2518, !2519, !2520, !2521, !2522}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2515, file: !2516, line: 49, baseType: !1486, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2515, file: !2516, line: 55, baseType: !1486, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !2515, file: !2516, line: 57, baseType: !1526, size: 32, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2515, file: !2516, line: 59, baseType: !1496, size: 32, offset: 160)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !2515, file: !2516, line: 60, baseType: !1471, size: 128, offset: 192)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2502, file: !2503, line: 206, baseType: !2524, size: 64, offset: 576)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2503, line: 206, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2502, file: !2503, line: 207, baseType: !218, size: 64, offset: 640)
!2527 = !DIDerivedType(tag: DW_TAG_member, scope: !2502, file: !2503, line: 208, baseType: !2528, size: 64, offset: 704)
!2528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2502, file: !2503, line: 208, size: 64, elements: !2529)
!2529 = !{!2530, !2533}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2528, file: !2503, line: 209, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !2532, line: 8, baseType: !1493)
!2532 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2528, file: !2503, line: 210, baseType: !2531, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2502, file: !2503, line: 212, baseType: !2531, size: 64, offset: 768)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2502, file: !2503, line: 213, baseType: !1698, size: 32, offset: 832)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2502, file: !2503, line: 214, baseType: !1707, size: 32, offset: 864)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2502, file: !2503, line: 215, baseType: !2538, size: 32, offset: 896)
!2538 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2503, line: 31, baseType: !2539)
!2539 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !575, line: 110, baseType: !1761)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2502, file: !2503, line: 216, baseType: !263, size: 16, offset: 928)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2502, file: !2503, line: 217, baseType: !263, size: 16, offset: 944)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2502, file: !2503, line: 221, baseType: !2055, size: 16, offset: 960)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2502, file: !2503, line: 228, baseType: !295, size: 64, offset: 1024)
!2544 = !DIDerivedType(tag: DW_TAG_member, scope: !2502, file: !2503, line: 245, baseType: !2545, size: 320, offset: 1088)
!2545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2502, file: !2503, line: 245, size: 320, elements: !2546)
!2546 = !{!2547, !2572}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2545, file: !2503, line: 246, baseType: !2548, size: 320)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2503, line: 114, size: 320, elements: !2549)
!2549 = !{!2550, !2551, !2561, !2564, !2571}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2548, file: !2503, line: 116, baseType: !295, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, scope: !2548, file: !2503, line: 117, baseType: !2552, size: 64, offset: 64)
!2552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2548, file: !2503, line: 117, size: 64, elements: !2553)
!2553 = !{!2554, !2560}
!2554 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !2503, line: 118, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2552, file: !2503, line: 118, size: 64, elements: !2556)
!2556 = !{!2557, !2558}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2555, file: !2503, line: 120, baseType: !1522, size: 16)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2555, file: !2503, line: 121, baseType: !2559, size: 48, offset: 16)
!2559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 48, elements: !247)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2552, file: !2503, line: 127, baseType: !295, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2548, file: !2503, line: 129, baseType: !2562, size: 64, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2503, line: 102, flags: DIFlagFwdDecl)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2548, file: !2503, line: 130, baseType: !2565, size: 64, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2503, line: 108, size: 192, elements: !2567)
!2567 = !{!2568, !2569, !2570}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2566, file: !2503, line: 109, baseType: !2137, size: 128, align: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2566, file: !2503, line: 110, baseType: !2441, size: 32, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2566, file: !2503, line: 111, baseType: !574, size: 8, offset: 160)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2548, file: !2503, line: 131, baseType: !333, size: 64, offset: 256)
!2572 = !DIDerivedType(tag: DW_TAG_member, scope: !2545, file: !2503, line: 247, baseType: !2573, size: 320)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2503, line: 247, size: 320, elements: !2574)
!2574 = !{!2575, !2576, !2577, !2578, !2579}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2573, file: !2503, line: 248, baseType: !295, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2573, file: !2503, line: 249, baseType: !295, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2573, file: !2503, line: 250, baseType: !2562, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2573, file: !2503, line: 251, baseType: !2565, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2573, file: !2503, line: 252, baseType: !339, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, scope: !2502, file: !2503, line: 260, baseType: !2581, size: 256, offset: 1408)
!2581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2502, file: !2503, line: 260, size: 256, elements: !2582)
!2582 = !{!2583, !2589}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2581, file: !2503, line: 261, baseType: !2584, size: 256)
!2584 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2503, line: 134, size: 256, elements: !2585)
!2585 = !{!2586, !2587}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2584, file: !2503, line: 135, baseType: !218, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2584, file: !2503, line: 136, baseType: !2588, size: 256)
!2588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 256, elements: !283)
!2589 = !DIDerivedType(tag: DW_TAG_member, scope: !2581, file: !2503, line: 262, baseType: !2590, size: 256)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2581, file: !2503, line: 262, size: 256, elements: !2591)
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2590, file: !2503, line: 264, baseType: !1471, size: 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2590, file: !2503, line: 265, baseType: !2594, size: 128, offset: 128)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2595, line: 22, size: 128, elements: !2596)
!2595 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2596 = !{!2597, !2600}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2594, file: !2595, line: 23, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2595, line: 23, flags: DIFlagFwdDecl)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2594, file: !2595, line: 24, baseType: !295, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2502, file: !2503, line: 280, baseType: !2602, size: 64, offset: 1664)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2503, line: 176, size: 192, elements: !2604)
!2604 = !{!2605, !2614, !2615}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2603, file: !2503, line: 177, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2503, line: 171, baseType: !2607)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!147, !2501, !2610, !2612, !2501}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2563)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2584)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2603, file: !2503, line: 178, baseType: !2501, size: 64, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2603, file: !2503, line: 179, baseType: !2562, size: 64, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2476, file: !2477, line: 130, baseType: !2501, size: 64, offset: 832)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2476, file: !2477, line: 131, baseType: !2501, size: 64, offset: 896)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2476, file: !2477, line: 132, baseType: !2501, size: 64, offset: 960)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2476, file: !2477, line: 135, baseType: !218, size: 64, offset: 1024)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2476, file: !2477, line: 137, baseType: !2621, size: 64, offset: 1088)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2623, line: 14, size: 1088, elements: !2624)
!2623 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2624 = !{!2625, !2626, !2635, !2636, !2637, !2638, !2639, !2640}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2622, file: !2623, line: 15, baseType: !2441, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2622, file: !2623, line: 17, baseType: !2627, size: 320, offset: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2628, line: 22, size: 320, elements: !2629)
!2628 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2629 = !{!2630, !2631, !2632, !2633}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2627, file: !2628, line: 23, baseType: !1496, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2627, file: !2628, line: 24, baseType: !1492, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2627, file: !2628, line: 26, baseType: !1471, size: 128, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2627, file: !2628, line: 28, baseType: !2634, size: 64, offset: 256)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2622, file: !2623, line: 19, baseType: !295, size: 64, offset: 384)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2622, file: !2623, line: 20, baseType: !1486, size: 64, offset: 448)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2622, file: !2623, line: 23, baseType: !2161, size: 128, offset: 512)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2622, file: !2623, line: 24, baseType: !1698, size: 32, offset: 640)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2622, file: !2623, line: 29, baseType: !1486, size: 64, offset: 704)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2622, file: !2623, line: 36, baseType: !2641, size: 320, offset: 768)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2642, line: 15, size: 320, elements: !2643)
!2642 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2643 = !{!2644, !2645, !2646, !2647, !2648, !2649, !2650}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2641, file: !2642, line: 16, baseType: !1496, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2641, file: !2642, line: 18, baseType: !147, size: 32, offset: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2641, file: !2642, line: 19, baseType: !147, size: 32, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2641, file: !2642, line: 20, baseType: !147, size: 32, offset: 96)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2641, file: !2642, line: 21, baseType: !147, size: 32, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2641, file: !2642, line: 22, baseType: !295, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2641, file: !2642, line: 23, baseType: !295, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2476, file: !2477, line: 138, baseType: !2652, size: 64, offset: 1152)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !65, line: 901, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2476, file: !2477, line: 139, baseType: !2655, size: 64, offset: 1216)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2657, line: 16, flags: DIFlagFwdDecl)
!2657 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2476, file: !2477, line: 140, baseType: !2659, size: 64, offset: 1280)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2477, line: 25, size: 64, elements: !2661)
!2661 = !{!2662, !2663, !2664}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2660, file: !2477, line: 26, baseType: !1509, size: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2660, file: !2477, line: 27, baseType: !147, size: 32, offset: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2660, file: !2477, line: 28, baseType: !2665, offset: 64)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1707, elements: !2467)
!2666 = !DIDerivedType(tag: DW_TAG_member, scope: !2476, file: !2477, line: 142, baseType: !2667, size: 128, offset: 1344)
!2667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2476, file: !2477, line: 142, size: 128, elements: !2668)
!2668 = !{!2669, !2670}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2667, file: !2477, line: 143, baseType: !147, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2667, file: !2477, line: 144, baseType: !2137, size: 128, align: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !2392, file: !52, line: 1013, baseType: !2672, size: 256, offset: 960)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !52, line: 970, size: 256, elements: !2673)
!2673 = !{!2674, !2675, !2676, !2677, !2678, !2679}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2672, file: !52, line: 971, baseType: !295, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2672, file: !52, line: 972, baseType: !7, size: 32, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2672, file: !52, line: 973, baseType: !7, size: 32, offset: 96)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2672, file: !52, line: 974, baseType: !7, size: 32, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2672, file: !52, line: 975, baseType: !7, size: 32, offset: 160)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2672, file: !52, line: 976, baseType: !1848, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !2392, file: !52, line: 1014, baseType: !2681, size: 128, offset: 1216)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2682, line: 8, size: 128, elements: !2683)
!2682 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!2683 = !{!2684, !2685}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2681, file: !2682, line: 9, baseType: !1832, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2681, file: !2682, line: 10, baseType: !1727, size: 64, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !2392, file: !52, line: 1015, baseType: !1692, size: 64, offset: 1344)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !2392, file: !52, line: 1016, baseType: !2688, size: 64, offset: 1408)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2690)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !52, line: 1914, size: 2112, elements: !2691)
!2691 = !{!2692, !2693, !2698, !2702, !2706, !2792, !2793, !2799, !2812, !2829, !2833, !2834, !3273, !3274, !3278, !3283, !3284, !3288, !3292, !3298, !3299, !3301, !3302, !3309, !3313, !3317, !3323, !3327, !3331, !3335, !3339, !3340, !3346}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2690, file: !52, line: 1915, baseType: !1875, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2690, file: !52, line: 1916, baseType: !2694, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!1848, !2697, !1848, !147}
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2690, file: !52, line: 1917, baseType: !2699, size: 64, offset: 128)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!1646, !2697, !339, !1660, !2375}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2690, file: !52, line: 1918, baseType: !2703, size: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!1646, !2697, !333, !1660, !2375}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2690, file: !52, line: 1919, baseType: !2707, size: 64, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!1646, !2710, !2732}
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !52, line: 373, size: 384, elements: !2712)
!2712 = !{!2713, !2714, !2715, !2719, !2720, !2721, !2722}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2711, file: !52, line: 374, baseType: !2697, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2711, file: !52, line: 375, baseType: !1848, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2711, file: !52, line: 376, baseType: !2716, size: 64, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{null, !2710, !224}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2711, file: !52, line: 377, baseType: !218, size: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2711, file: !52, line: 378, baseType: !147, size: 32, offset: 256)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2711, file: !52, line: 379, baseType: !1522, size: 16, offset: 288)
!2722 = !DIDerivedType(tag: DW_TAG_member, scope: !2711, file: !52, line: 380, baseType: !2723, size: 64, offset: 320)
!2723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2711, file: !52, line: 380, size: 64, elements: !2724)
!2724 = !{!2725, !2728}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2723, file: !52, line: 386, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !52, line: 386, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2723, file: !52, line: 395, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!1646, !218}
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2734, line: 41, size: 320, elements: !2735)
!2734 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2735 = !{!2736, !2737, !2738, !2739, !2740, !2741, !2746, !2787}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2733, file: !2734, line: 42, baseType: !555, size: 8)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2733, file: !2734, line: 43, baseType: !574, size: 8, offset: 8)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2733, file: !2734, line: 44, baseType: !574, size: 8, offset: 16)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2733, file: !2734, line: 45, baseType: !574, size: 8, offset: 24)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2733, file: !2734, line: 46, baseType: !574, size: 8, offset: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, scope: !2733, file: !2734, line: 47, baseType: !2742, size: 64, offset: 64)
!2742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2733, file: !2734, line: 47, size: 64, elements: !2743)
!2743 = !{!2744, !2745}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2742, file: !2734, line: 48, baseType: !1660, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2742, file: !2734, line: 49, baseType: !147, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, scope: !2733, file: !2734, line: 61, baseType: !2747, size: 128, offset: 128)
!2747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2733, file: !2734, line: 61, size: 128, elements: !2748)
!2748 = !{!2749, !2755}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2747, file: !2734, line: 67, baseType: !2750, size: 128)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2751, line: 17, size: 128, elements: !2752)
!2751 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2752 = !{!2753, !2754}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2750, file: !2751, line: 19, baseType: !218, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2750, file: !2751, line: 20, baseType: !1661, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, scope: !2747, file: !2734, line: 68, baseType: !2756, size: 128)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2734, line: 68, size: 128, elements: !2757)
!2757 = !{!2758, !2786}
!2758 = !DIDerivedType(tag: DW_TAG_member, scope: !2756, file: !2734, line: 69, baseType: !2759, size: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2756, file: !2734, line: 69, size: 64, elements: !2760)
!2760 = !{!2761, !2764, !2771, !2776, !2785}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2759, file: !2734, line: 71, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2750)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2759, file: !2734, line: 72, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2767)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2734, line: 17, size: 128, elements: !2768)
!2768 = !{!2769, !2770}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2767, file: !2734, line: 18, baseType: !218, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2767, file: !2734, line: 19, baseType: !1660, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2759, file: !2734, line: 73, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2774)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2775, line: 54, flags: DIFlagFwdDecl)
!2775 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f0b1570b81b8ad6a5a9b58f221b3254d")
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2759, file: !2734, line: 74, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2779, line: 296, size: 128, elements: !2780)
!2779 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2780 = !{!2781, !2782, !2784}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2778, file: !2779, line: 297, baseType: !1581, size: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2778, file: !2779, line: 299, baseType: !2783, size: 32, offset: 32)
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !575, line: 154, baseType: !7)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2778, file: !2779, line: 300, baseType: !218, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2759, file: !2734, line: 75, baseType: !218, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2756, file: !2734, line: 77, baseType: !1660, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, scope: !2733, file: !2734, line: 80, baseType: !2788, size: 64, offset: 256)
!2788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2733, file: !2734, line: 80, size: 64, elements: !2789)
!2789 = !{!2790, !2791}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2788, file: !2734, line: 81, baseType: !295, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2788, file: !2734, line: 82, baseType: !1848, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2690, file: !52, line: 1920, baseType: !2707, size: 64, offset: 320)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2690, file: !52, line: 1921, baseType: !2794, size: 64, offset: 384)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!147, !2710, !2797, !7}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !52, line: 53, flags: DIFlagFwdDecl)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2690, file: !52, line: 1923, baseType: !2800, size: 64, offset: 448)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!147, !2697, !2803}
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !52, line: 1858, size: 128, elements: !2805)
!2805 = !{!2806, !2811}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2804, file: !52, line: 1859, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !52, line: 1855, baseType: !2808)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!574, !2803, !333, !147, !1848, !296, !7}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2804, file: !52, line: 1860, baseType: !1848, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2690, file: !52, line: 1924, baseType: !2813, size: 64, offset: 512)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!2816, !2697, !2818}
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2817, line: 59, baseType: !7)
!2817 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2820, line: 37, size: 128, elements: !2821)
!2820 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2821 = !{!2822, !2828}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2819, file: !2820, line: 38, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2820, line: 31, baseType: !2824)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{null, !2697, !2827, !2818}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2819, file: !2820, line: 39, baseType: !2816, size: 32, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2690, file: !52, line: 1925, baseType: !2830, size: 64, offset: 576)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!224, !2697, !7, !295}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2690, file: !52, line: 1926, baseType: !2830, size: 64, offset: 640)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2690, file: !52, line: 1927, baseType: !2835, size: 64, offset: 704)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!147, !2697, !2838}
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !65, line: 625, size: 1344, elements: !2840)
!2840 = !{!2841, !2850, !3001, !3007, !3014, !3015, !3020, !3021, !3026, !3027, !3030, !3266, !3267, !3268, !3269, !3270, !3271}
!2841 = !DIDerivedType(tag: DW_TAG_member, scope: !2839, file: !65, line: 628, baseType: !2842, size: 128)
!2842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2839, file: !65, line: 628, size: 128, elements: !2843)
!2843 = !{!2844, !2849}
!2844 = !DIDerivedType(tag: DW_TAG_member, scope: !2842, file: !65, line: 629, baseType: !2845, size: 128)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2842, file: !65, line: 629, size: 128, elements: !2846)
!2846 = !{!2847, !2848}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2845, file: !65, line: 631, baseType: !295, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2845, file: !65, line: 632, baseType: !295, size: 64, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2842, file: !65, line: 635, baseType: !2137, size: 128, align: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2839, file: !65, line: 639, baseType: !2851, size: 64, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !65, line: 733, size: 10240, elements: !2853)
!2853 = !{!2854, !2999}
!2854 = !DIDerivedType(tag: DW_TAG_member, scope: !2852, file: !65, line: 734, baseType: !2855, size: 10240)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2852, file: !65, line: 734, size: 10240, elements: !2856)
!2856 = !{!2857, !2861, !2874, !2878, !2879, !2880, !2881, !2882, !2883, !2892, !2893, !2894, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2931, !2933, !2936, !2979, !2980, !2981, !2984, !2985, !2986, !2989, !2990, !2991, !2997, !2998}
!2857 = !DIDerivedType(tag: DW_TAG_member, scope: !2855, file: !65, line: 739, baseType: !2858, size: 512, align: 512)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2855, file: !65, line: 739, size: 512, align: 512, elements: !2859)
!2859 = !{!2860}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2858, file: !65, line: 747, baseType: !1509, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !2855, file: !65, line: 750, baseType: !2862, size: 128, offset: 512)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !2863, line: 218, size: 128, elements: !2864)
!2863 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!2864 = !{!2865, !2872, !2873}
!2865 = !DIDerivedType(tag: DW_TAG_member, scope: !2862, file: !2863, line: 219, baseType: !2866, size: 32)
!2866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2862, file: !2863, line: 219, size: 32, elements: !2867)
!2867 = !{!2868, !2869}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !2866, file: !2863, line: 220, baseType: !1581, size: 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !2866, file: !2863, line: 221, baseType: !2870)
!2870 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !2863, line: 197, baseType: !2871)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2863, line: 197, elements: !603)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !2862, file: !2863, line: 223, baseType: !7, size: 32, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !2862, file: !2863, line: 224, baseType: !218, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2855, file: !65, line: 752, baseType: !2875, size: 64, offset: 640)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!295, !2697, !295, !295, !295, !295}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2855, file: !65, line: 756, baseType: !295, size: 64, offset: 704)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2855, file: !65, line: 757, baseType: !295, size: 64, offset: 768)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !2855, file: !65, line: 760, baseType: !295, size: 64, offset: 832)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !2855, file: !65, line: 761, baseType: !295, size: 64, offset: 896)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2855, file: !65, line: 763, baseType: !295, size: 64, offset: 960)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2855, file: !65, line: 764, baseType: !2884, size: 64, offset: 1024)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2886, line: 299, baseType: !2887)
!2886 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2886, line: 299, size: 64, elements: !2888)
!2888 = !{!2889}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2887, file: !2886, line: 299, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2891, line: 18, baseType: !295)
!2891 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2855, file: !65, line: 773, baseType: !1509, size: 32, offset: 1088)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2855, file: !65, line: 785, baseType: !1509, size: 32, offset: 1120)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !2855, file: !65, line: 795, baseType: !2895, size: 64, offset: 1152)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !65, line: 726, size: 128, elements: !2897)
!2897 = !{!2898, !2899}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2896, file: !65, line: 727, baseType: !296, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2896, file: !65, line: 728, baseType: !147, size: 32, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !2855, file: !65, line: 801, baseType: !295, size: 64, offset: 1216)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2855, file: !65, line: 804, baseType: !1486, size: 64, offset: 1280)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2855, file: !65, line: 806, baseType: !147, size: 32, offset: 1344)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2855, file: !65, line: 808, baseType: !1581, size: 32, offset: 1376)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2855, file: !65, line: 823, baseType: !2515, size: 320, offset: 1408)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2855, file: !65, line: 825, baseType: !1471, size: 128, offset: 1728)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !2855, file: !65, line: 845, baseType: !147, size: 32, offset: 1856)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2855, file: !65, line: 849, baseType: !295, size: 64, offset: 1920)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2855, file: !65, line: 850, baseType: !295, size: 64, offset: 1984)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2855, file: !65, line: 852, baseType: !295, size: 64, offset: 2048)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2855, file: !65, line: 853, baseType: !295, size: 64, offset: 2112)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2855, file: !65, line: 854, baseType: !1488, size: 64, offset: 2176)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2855, file: !65, line: 855, baseType: !295, size: 64, offset: 2240)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2855, file: !65, line: 856, baseType: !295, size: 64, offset: 2304)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2855, file: !65, line: 857, baseType: !295, size: 64, offset: 2368)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2855, file: !65, line: 858, baseType: !295, size: 64, offset: 2432)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !2855, file: !65, line: 865, baseType: !1738, size: 32, offset: 2496)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2855, file: !65, line: 867, baseType: !1581, size: 32, offset: 2528)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2855, file: !65, line: 869, baseType: !295, size: 64, offset: 2560)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2855, file: !65, line: 869, baseType: !295, size: 64, offset: 2624)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2855, file: !65, line: 869, baseType: !295, size: 64, offset: 2688)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2855, file: !65, line: 869, baseType: !295, size: 64, offset: 2752)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2855, file: !65, line: 870, baseType: !295, size: 64, offset: 2816)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2855, file: !65, line: 870, baseType: !295, size: 64, offset: 2880)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2855, file: !65, line: 870, baseType: !295, size: 64, offset: 2944)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2855, file: !65, line: 871, baseType: !295, size: 64, offset: 3008)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2855, file: !65, line: 871, baseType: !295, size: 64, offset: 3072)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2855, file: !65, line: 871, baseType: !295, size: 64, offset: 3136)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2855, file: !65, line: 871, baseType: !295, size: 64, offset: 3200)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2855, file: !65, line: 873, baseType: !2930, size: 3328, offset: 3264)
!2930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 3328, elements: !421)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2855, file: !65, line: 875, baseType: !2932, size: 1280, offset: 6592)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2627, size: 1280, elements: !283)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2855, file: !65, line: 877, baseType: !2934, size: 64, offset: 7872)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !65, line: 877, flags: DIFlagFwdDecl)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2855, file: !65, line: 880, baseType: !2937, size: 1088, offset: 7936)
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2938, line: 72, baseType: !2939)
!2938 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2938, line: 23, size: 1088, elements: !2940)
!2940 = !{!2941, !2942, !2943, !2944, !2945, !2948, !2949, !2950, !2951, !2976, !2977, !2978}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2939, file: !2938, line: 28, baseType: !296, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2939, file: !2938, line: 38, baseType: !1488, size: 64, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2939, file: !2938, line: 40, baseType: !295, size: 64, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2939, file: !2938, line: 43, baseType: !2515, size: 320, offset: 192)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2939, file: !2938, line: 44, baseType: !2946, size: 64, offset: 512)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2938, line: 44, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2939, file: !2938, line: 48, baseType: !295, size: 64, offset: 576)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2939, file: !2938, line: 59, baseType: !1482, size: 256, offset: 640)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2939, file: !2938, line: 60, baseType: !218, size: 64, offset: 896)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2939, file: !2938, line: 61, baseType: !2952, size: 64, offset: 960)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2954)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2955, line: 13, size: 1216, elements: !2956)
!2955 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2956 = !{!2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2954, file: !2955, line: 14, baseType: !218, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2954, file: !2955, line: 15, baseType: !295, size: 64, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2954, file: !2955, line: 17, baseType: !295, size: 64, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2954, file: !2955, line: 17, baseType: !295, size: 64, offset: 192)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2954, file: !2955, line: 18, baseType: !295, size: 64, offset: 256)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2954, file: !2955, line: 18, baseType: !295, size: 64, offset: 320)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2954, file: !2955, line: 19, baseType: !1561, size: 64, offset: 384)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2954, file: !2955, line: 21, baseType: !224, size: 64, offset: 448)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2954, file: !2955, line: 23, baseType: !224, size: 64, offset: 512)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2954, file: !2955, line: 24, baseType: !224, size: 64, offset: 576)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2954, file: !2955, line: 25, baseType: !224, size: 64, offset: 640)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2954, file: !2955, line: 26, baseType: !224, size: 64, offset: 704)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2954, file: !2955, line: 27, baseType: !224, size: 64, offset: 768)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2954, file: !2955, line: 28, baseType: !224, size: 64, offset: 832)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2954, file: !2955, line: 29, baseType: !224, size: 64, offset: 896)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2954, file: !2955, line: 30, baseType: !224, size: 64, offset: 960)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2954, file: !2955, line: 31, baseType: !224, size: 64, offset: 1024)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2954, file: !2955, line: 32, baseType: !224, size: 64, offset: 1088)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2954, file: !2955, line: 33, baseType: !224, size: 64, offset: 1152)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2939, file: !2938, line: 63, baseType: !1509, size: 32, offset: 1024)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2939, file: !2938, line: 69, baseType: !1522, size: 16, offset: 1056)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2939, file: !2938, line: 70, baseType: !2053, size: 16, offset: 1072)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2855, file: !65, line: 882, baseType: !295, size: 64, offset: 9024)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2855, file: !65, line: 885, baseType: !1581, size: 32, offset: 9088)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2855, file: !65, line: 886, baseType: !2982, size: 64, offset: 9152)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !65, line: 732, flags: DIFlagFwdDecl)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2855, file: !65, line: 901, baseType: !2652, size: 64, offset: 9216)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2855, file: !65, line: 904, baseType: !2697, size: 64, offset: 9280)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2855, file: !65, line: 906, baseType: !2987, size: 64, offset: 9344)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !65, line: 906, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2855, file: !65, line: 930, baseType: !1509, size: 32, offset: 9408)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2855, file: !65, line: 933, baseType: !1509, size: 32, offset: 9440)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2855, file: !65, line: 935, baseType: !2992, size: 64, offset: 9472)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !106, line: 103, size: 64, elements: !2993)
!2993 = !{!2994}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2992, file: !106, line: 104, baseType: !2995, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !106, line: 101, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !2855, file: !65, line: 940, baseType: !1486, size: 64, offset: 9536)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2855, file: !65, line: 942, baseType: !2175, size: 256, offset: 9600)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2852, file: !65, line: 986, baseType: !3000, offset: 10240)
!3000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, elements: !2467)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2839, file: !65, line: 640, baseType: !3002, size: 64, offset: 192)
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2886, line: 297, baseType: !3003)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2886, line: 297, size: 64, elements: !3004)
!3004 = !{!3005}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3003, file: !2886, line: 297, baseType: !3006, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2891, line: 19, baseType: !295)
!3007 = !DIDerivedType(tag: DW_TAG_member, scope: !2839, file: !65, line: 646, baseType: !3008, size: 64, offset: 256)
!3008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2839, file: !65, line: 646, size: 64, elements: !3009)
!3009 = !{!3010, !3013}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3008, file: !65, line: 647, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3012)
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !65, line: 542, baseType: !295)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3008, file: !65, line: 648, baseType: !3012, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2839, file: !65, line: 666, baseType: !147, size: 32, offset: 320)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2839, file: !65, line: 667, baseType: !3016, size: 64, offset: 384)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !65, line: 579, size: 320, elements: !3018)
!3018 = !{!3019}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3017, file: !65, line: 580, baseType: !2515, size: 320)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2839, file: !65, line: 670, baseType: !574, size: 8, offset: 448)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2839, file: !65, line: 681, baseType: !3022, size: 256, offset: 512)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2839, file: !65, line: 678, size: 256, elements: !3023)
!3023 = !{!3024, !3025}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3022, file: !65, line: 679, baseType: !2033, size: 192, align: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3022, file: !65, line: 680, baseType: !295, size: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2839, file: !65, line: 689, baseType: !1471, size: 128, offset: 768)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2839, file: !65, line: 691, baseType: !3028, size: 64, offset: 896)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !65, line: 691, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2839, file: !65, line: 694, baseType: !3031, size: 64, offset: 960)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3033)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !3034, line: 563, size: 1024, elements: !3035)
!3034 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!3035 = !{!3036, !3040, !3041, !3045, !3049, !3053, !3230, !3234, !3238, !3242, !3243, !3244, !3248, !3252, !3258, !3262}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3033, file: !3034, line: 564, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{null, !2838}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3033, file: !3034, line: 569, baseType: !3037, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !3033, file: !3034, line: 571, baseType: !3042, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!147, !2838, !295}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !3033, file: !3034, line: 572, baseType: !3046, size: 64, offset: 192)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!147, !2838}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !3033, file: !3034, line: 578, baseType: !3050, size: 64, offset: 256)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!147, !2838, !295, !295, !295}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3033, file: !3034, line: 580, baseType: !3054, size: 64, offset: 320)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!3057, !3058}
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !65, line: 1184, baseType: !7)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !3034, line: 512, size: 896, elements: !3060)
!3060 = !{!3061, !3069, !3070, !3077, !3084, !3094, !3223, !3224, !3226, !3228}
!3061 = !DIDerivedType(tag: DW_TAG_member, scope: !3059, file: !3034, line: 513, baseType: !3062, size: 320)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3059, file: !3034, line: 513, size: 320, elements: !3063)
!3063 = !{!3064, !3065, !3066, !3067, !3068}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3062, file: !3034, line: 514, baseType: !2838, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3062, file: !3034, line: 515, baseType: !2783, size: 32, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !3062, file: !3034, line: 516, baseType: !295, size: 64, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3062, file: !3034, line: 517, baseType: !295, size: 64, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !3062, file: !3034, line: 518, baseType: !295, size: 64, offset: 256)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3059, file: !3034, line: 520, baseType: !64, size: 32, offset: 320)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3059, file: !3034, line: 522, baseType: !3071, size: 64, offset: 384)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2891, line: 22, baseType: !3073)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2891, line: 22, size: 64, elements: !3074)
!3074 = !{!3075}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3073, file: !2891, line: 22, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2891, line: 15, baseType: !295)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3059, file: !3034, line: 524, baseType: !3078, size: 64, offset: 448)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2886, line: 372, baseType: !3080)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2886, line: 372, size: 64, elements: !3081)
!3081 = !{!3082}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3080, file: !2886, line: 372, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2891, line: 16, baseType: !295)
!3084 = !DIDerivedType(tag: DW_TAG_member, scope: !3059, file: !3034, line: 527, baseType: !3085, size: 64, offset: 512)
!3085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3059, file: !3034, line: 527, size: 64, elements: !3086)
!3086 = !{!3087, !3093}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3085, file: !3034, line: 528, baseType: !3088, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2891, line: 21, baseType: !3089)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2891, line: 21, size: 64, elements: !3090)
!3090 = !{!3091}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3089, file: !2891, line: 21, baseType: !3092, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2891, line: 14, baseType: !295)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3085, file: !3034, line: 529, baseType: !3072, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !3059, file: !3034, line: 534, baseType: !3095, size: 64, offset: 576)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !65, line: 74, size: 512, align: 128, elements: !3097)
!3097 = !{!3098, !3099, !3217, !3222}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3096, file: !65, line: 75, baseType: !295, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !3096, file: !65, line: 83, baseType: !3100, size: 320, offset: 64)
!3100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3096, file: !65, line: 83, size: 320, elements: !3101)
!3101 = !{!3102, !3123, !3137, !3141, !3216}
!3102 = !DIDerivedType(tag: DW_TAG_member, scope: !3100, file: !65, line: 84, baseType: !3103, size: 320)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !65, line: 84, size: 320, elements: !3104)
!3104 = !{!3105, !3116, !3117, !3122}
!3105 = !DIDerivedType(tag: DW_TAG_member, scope: !3103, file: !65, line: 90, baseType: !3106, size: 128)
!3106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3103, file: !65, line: 90, size: 128, elements: !3107)
!3107 = !{!3108, !3109, !3114, !3115}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3106, file: !65, line: 91, baseType: !1471, size: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, scope: !3106, file: !65, line: 94, baseType: !3110, size: 128)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !65, line: 94, size: 128, elements: !3111)
!3111 = !{!3112, !3113}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3110, file: !65, line: 96, baseType: !218, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3110, file: !65, line: 98, baseType: !7, size: 32, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !3106, file: !65, line: 102, baseType: !1471, size: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !3106, file: !65, line: 103, baseType: !1471, size: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3103, file: !65, line: 106, baseType: !1688, size: 64, offset: 128)
!3117 = !DIDerivedType(tag: DW_TAG_member, scope: !3103, file: !65, line: 107, baseType: !3118, size: 64, offset: 192)
!3118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3103, file: !65, line: 107, size: 64, elements: !3119)
!3119 = !{!3120, !3121}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3118, file: !65, line: 108, baseType: !295, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3118, file: !65, line: 109, baseType: !295, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3103, file: !65, line: 117, baseType: !295, size: 64, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !3100, file: !65, line: 119, baseType: !3124, size: 320)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !65, line: 119, size: 320, elements: !3125)
!3125 = !{!3126, !3127, !3130, !3131, !3132}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3124, file: !65, line: 124, baseType: !295, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3124, file: !65, line: 125, baseType: !3128, size: 64, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !65, line: 125, flags: DIFlagFwdDecl)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3124, file: !65, line: 126, baseType: !295, size: 64, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3124, file: !65, line: 127, baseType: !295, size: 64, offset: 192)
!3132 = !DIDerivedType(tag: DW_TAG_member, scope: !3124, file: !65, line: 128, baseType: !3133, size: 64, offset: 256)
!3133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3124, file: !65, line: 128, size: 64, elements: !3134)
!3134 = !{!3135, !3136}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3133, file: !65, line: 133, baseType: !295, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3133, file: !65, line: 138, baseType: !1486, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, scope: !3100, file: !65, line: 141, baseType: !3138, size: 64)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !65, line: 141, size: 64, elements: !3139)
!3139 = !{!3140}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3138, file: !65, line: 142, baseType: !295, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, scope: !3100, file: !65, line: 144, baseType: !3142, size: 128)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !65, line: 144, size: 128, elements: !3143)
!3143 = !{!3144, !3215}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3142, file: !65, line: 146, baseType: !3145, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !81, line: 126, size: 1216, elements: !3147)
!3147 = !{!3148, !3158, !3179, !3180, !3181, !3182, !3183, !3197, !3198, !3199}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3146, file: !81, line: 127, baseType: !3149, size: 384)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !81, line: 21, size: 384, elements: !3150)
!3150 = !{!3151, !3152, !3154, !3155, !3156, !3157}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3149, file: !81, line: 22, baseType: !295, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3149, file: !81, line: 23, baseType: !3153, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3149, file: !81, line: 24, baseType: !3153, size: 64, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3149, file: !81, line: 25, baseType: !295, size: 64, offset: 192)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3149, file: !81, line: 26, baseType: !295, size: 64, offset: 256)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3149, file: !81, line: 27, baseType: !295, size: 64, offset: 320)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3146, file: !81, line: 128, baseType: !3159, size: 128, offset: 384)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3160, line: 105, size: 128, elements: !3161)
!3160 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3159, file: !3160, line: 110, baseType: !295, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3159, file: !3160, line: 118, baseType: !3164, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3160, line: 95, size: 448, elements: !3166)
!3166 = !{!3167, !3168, !3174, !3175, !3176, !3177, !3178}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3165, file: !3160, line: 96, baseType: !1486, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3165, file: !3160, line: 97, baseType: !3169, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3160, line: 60, baseType: !3171)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{null, !3173}
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3165, file: !3160, line: 98, baseType: !3169, size: 64, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3165, file: !3160, line: 99, baseType: !574, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3165, file: !3160, line: 100, baseType: !574, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3165, file: !3160, line: 101, baseType: !2137, size: 128, align: 64, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3165, file: !3160, line: 102, baseType: !3173, size: 64, offset: 384)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3146, file: !81, line: 129, baseType: !1895, size: 256, offset: 512)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3146, file: !81, line: 130, baseType: !80, size: 32, offset: 768)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3146, file: !81, line: 131, baseType: !7, size: 32, offset: 800)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !3146, file: !81, line: 132, baseType: !295, size: 64, offset: 832)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3146, file: !81, line: 133, baseType: !3184, size: 64, offset: 896)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3186)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !81, line: 77, size: 192, elements: !3187)
!3187 = !{!3188, !3192, !3193}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3186, file: !81, line: 83, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{null, !3095}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3186, file: !81, line: 89, baseType: !3054, size: 64, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !3186, file: !81, line: 100, baseType: !3194, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!147, !3145, !295, !295, !147}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3146, file: !81, line: 134, baseType: !218, size: 64, offset: 960)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3146, file: !81, line: 135, baseType: !147, size: 32, offset: 1024)
!3199 = !DIDerivedType(tag: DW_TAG_member, scope: !3146, file: !81, line: 136, baseType: !3200, size: 128, offset: 1088)
!3200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3146, file: !81, line: 136, size: 128, elements: !3201)
!3201 = !{!3202, !3208}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3200, file: !81, line: 137, baseType: !3203, size: 128)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3204, line: 6, size: 128, elements: !3205)
!3204 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3205 = !{!3206, !3207}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3203, file: !3204, line: 7, baseType: !296, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3203, file: !3204, line: 8, baseType: !296, size: 64, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, scope: !3200, file: !81, line: 138, baseType: !3209)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3200, file: !81, line: 138, elements: !3210)
!3210 = !{!3211, !3213}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3209, file: !81, line: 138, baseType: !3212)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3209, file: !81, line: 138, elements: !603)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3209, file: !81, line: 138, baseType: !3214)
!3214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3203, elements: !2467)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3142, file: !65, line: 147, baseType: !218, size: 64, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3100, file: !65, line: 161, baseType: !2137, size: 128, align: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !3096, file: !65, line: 164, baseType: !3218, size: 32, offset: 384)
!3218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3096, file: !65, line: 164, size: 32, elements: !3219)
!3219 = !{!3220, !3221}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3218, file: !65, line: 169, baseType: !1509, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3218, file: !65, line: 177, baseType: !7, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3096, file: !65, line: 181, baseType: !1509, size: 32, offset: 416)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3059, file: !3034, line: 535, baseType: !3095, size: 64, offset: 640)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3059, file: !3034, line: 541, baseType: !3225, size: 64, offset: 704)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3059, file: !3034, line: 545, baseType: !3227, size: 64, offset: 768)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !3059, file: !3034, line: 549, baseType: !3229, size: 64, offset: 832)
!3229 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2886, line: 520, baseType: !3095)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !3033, file: !3034, line: 581, baseType: !3231, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!3057, !3058, !7}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !3033, file: !3034, line: 582, baseType: !3235, size: 64, offset: 448)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!3057, !3058, !295, !295}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !3033, file: !3034, line: 584, baseType: !3239, size: 64, offset: 512)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!295, !2838}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !3033, file: !3034, line: 588, baseType: !3054, size: 64, offset: 576)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !3033, file: !3034, line: 591, baseType: !3054, size: 64, offset: 640)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !3033, file: !3034, line: 597, baseType: !3245, size: 64, offset: 704)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!147, !2838, !295, !218, !147, !147}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3033, file: !3034, line: 603, baseType: !3249, size: 64, offset: 768)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!333, !2838}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !3033, file: !3034, line: 613, baseType: !3253, size: 64, offset: 832)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!147, !2838, !3256}
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !65, line: 717, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !3033, file: !3034, line: 625, baseType: !3259, size: 64, offset: 896)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!3256, !2838, !295}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !3033, file: !3034, line: 633, baseType: !3263, size: 64, offset: 960)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!3095, !2838, !295}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2839, file: !65, line: 697, baseType: !295, size: 64, offset: 1024)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2839, file: !65, line: 699, baseType: !2697, size: 64, offset: 1088)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2839, file: !65, line: 700, baseType: !218, size: 64, offset: 1152)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2839, file: !65, line: 711, baseType: !1486, size: 64, offset: 1216)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2839, file: !65, line: 717, baseType: !3256, size: 64, offset: 1280)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2839, file: !65, line: 722, baseType: !3272, offset: 1344)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !65, line: 570, elements: !603)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2690, file: !52, line: 1928, baseType: !295, size: 64, offset: 768)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2690, file: !52, line: 1929, baseType: !3275, size: 64, offset: 832)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!147, !1692, !2697}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2690, file: !52, line: 1930, baseType: !3279, size: 64, offset: 896)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!147, !2697, !3282}
!3282 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !52, line: 1061, baseType: !218)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2690, file: !52, line: 1931, baseType: !3275, size: 64, offset: 960)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2690, file: !52, line: 1932, baseType: !3285, size: 64, offset: 1024)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!147, !2697, !1848, !1848, !147}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2690, file: !52, line: 1933, baseType: !3289, size: 64, offset: 1088)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!147, !147, !2697, !147}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2690, file: !52, line: 1934, baseType: !3293, size: 64, offset: 1152)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!147, !2697, !147, !3296}
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !52, line: 1063, flags: DIFlagFwdDecl)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2690, file: !52, line: 1935, baseType: !2875, size: 64, offset: 1216)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2690, file: !52, line: 1936, baseType: !3300, size: 64, offset: 1280)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2690, file: !52, line: 1937, baseType: !3293, size: 64, offset: 1344)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2690, file: !52, line: 1938, baseType: !3303, size: 64, offset: 1408)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!1646, !3306, !2697, !2375, !1660, !7}
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !3308, line: 59, flags: DIFlagFwdDecl)
!3308 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2690, file: !52, line: 1939, baseType: !3310, size: 64, offset: 1472)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!1646, !2697, !2375, !3306, !1660, !7}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2690, file: !52, line: 1940, baseType: !3314, size: 64, offset: 1536)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{null, !2697}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2690, file: !52, line: 1941, baseType: !3318, size: 64, offset: 1600)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!147, !2697, !147, !3321, !3322}
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2690, file: !52, line: 1942, baseType: !3324, size: 64, offset: 1664)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!224, !2697, !147, !1848, !1848}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2690, file: !52, line: 1944, baseType: !3328, size: 64, offset: 1728)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{null, !2354, !2697}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2690, file: !52, line: 1948, baseType: !3332, size: 64, offset: 1792)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!1646, !2697, !1848, !2697, !1848, !1660, !7}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2690, file: !52, line: 1950, baseType: !3336, size: 64, offset: 1856)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!1848, !2697, !1848, !2697, !1848, !1848, !7}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2690, file: !52, line: 1953, baseType: !3285, size: 64, offset: 1920)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2690, file: !52, line: 1954, baseType: !3341, size: 64, offset: 1984)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!147, !3344, !7}
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !52, line: 1911, flags: DIFlagFwdDecl)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2690, file: !52, line: 1955, baseType: !3347, size: 64, offset: 2048)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!147, !3344, !2797, !7}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !2392, file: !52, line: 1018, baseType: !296, size: 64, offset: 1472)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !2392, file: !52, line: 1020, baseType: !218, size: 64, offset: 1536)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2392, file: !52, line: 1023, baseType: !218, size: 64, offset: 1600)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !2392, file: !52, line: 1027, baseType: !3354, size: 64, offset: 1664)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !2392, file: !52, line: 1029, baseType: !1688, size: 64, offset: 1728)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !2392, file: !52, line: 1030, baseType: !3357, size: 32, offset: 1792)
!3357 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3358, line: 8, baseType: !1761)
!3358 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !2392, file: !52, line: 1031, baseType: !3357, size: 32, offset: 1824)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2355, file: !2356, line: 29, baseType: !218, size: 64, offset: 896)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2298, file: !52, line: 2077, baseType: !2351, size: 64, offset: 1088)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2298, file: !52, line: 2078, baseType: !2351, size: 64, offset: 1152)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2298, file: !52, line: 2079, baseType: !2351, size: 64, offset: 1216)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2298, file: !52, line: 2081, baseType: !3365, size: 64, offset: 1280)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!1646, !1838, !147, !339, !1660, !1848}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2298, file: !52, line: 2082, baseType: !3369, size: 64, offset: 1344)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!1646, !1838, !147, !333, !1660, !1848}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2298, file: !52, line: 2083, baseType: !3373, size: 64, offset: 1408)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!3376, !1692}
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !89, line: 296, size: 1664, elements: !3379)
!3379 = !{!3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3404, !3405, !3406}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3378, file: !89, line: 297, baseType: !2161, size: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3378, file: !89, line: 298, baseType: !1471, size: 128, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3378, file: !89, line: 299, baseType: !1471, size: 128, offset: 256)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3378, file: !89, line: 300, baseType: !1471, size: 128, offset: 384)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3378, file: !89, line: 301, baseType: !1482, size: 256, offset: 512)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3378, file: !89, line: 302, baseType: !1581, size: 32, offset: 768)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3378, file: !89, line: 303, baseType: !1509, size: 32, offset: 800)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3378, file: !89, line: 304, baseType: !1838, size: 64, offset: 832)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3378, file: !89, line: 305, baseType: !3389, size: 64, offset: 896)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !89, line: 68, size: 64, elements: !3390)
!3390 = !{!3391, !3403}
!3391 = !DIDerivedType(tag: DW_TAG_member, scope: !3389, file: !89, line: 69, baseType: !3392, size: 32)
!3392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3389, file: !89, line: 69, size: 32, elements: !3393)
!3393 = !{!3394, !3395, !3396}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3392, file: !89, line: 70, baseType: !1698, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3392, file: !89, line: 71, baseType: !1707, size: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3392, file: !89, line: 72, baseType: !3397, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3398, line: 24, baseType: !3399)
!3398 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3398, line: 22, size: 32, elements: !3400)
!3400 = !{!3401}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3399, file: !3398, line: 23, baseType: !3402, size: 32)
!3402 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3398, line: 20, baseType: !1704)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3389, file: !89, line: 74, baseType: !88, size: 32, offset: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3378, file: !89, line: 306, baseType: !1848, size: 64, offset: 960)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3378, file: !89, line: 307, baseType: !295, size: 64, offset: 1024)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3378, file: !89, line: 308, baseType: !3407, size: 576, offset: 1088)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !89, line: 205, size: 576, elements: !3408)
!3408 = !{!3409, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3407, file: !89, line: 206, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !89, line: 66, baseType: !1494)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3407, file: !89, line: 207, baseType: !3410, size: 64, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3407, file: !89, line: 208, baseType: !3410, size: 64, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3407, file: !89, line: 209, baseType: !3410, size: 64, offset: 192)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3407, file: !89, line: 210, baseType: !3410, size: 64, offset: 256)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3407, file: !89, line: 211, baseType: !3410, size: 64, offset: 320)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3407, file: !89, line: 212, baseType: !3410, size: 64, offset: 384)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3407, file: !89, line: 213, baseType: !2531, size: 64, offset: 448)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3407, file: !89, line: 214, baseType: !2531, size: 64, offset: 512)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2298, file: !52, line: 2085, baseType: !3420, size: 64, offset: 1472)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!224, !1838, !3423}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3425, line: 15, size: 256, elements: !3426)
!3425 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3426 = !{!3427, !3428, !3429, !3430, !3431}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3424, file: !3425, line: 16, baseType: !2783, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3424, file: !3425, line: 19, baseType: !147, size: 32, offset: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3424, file: !3425, line: 26, baseType: !295, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3424, file: !3425, line: 33, baseType: !295, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3424, file: !3425, line: 36, baseType: !3432, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !65, line: 33, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2298, file: !52, line: 2087, baseType: !3420, size: 64, offset: 1536)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2298, file: !52, line: 2089, baseType: !1871, size: 64, offset: 1600)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1839, file: !52, line: 1198, baseType: !3437, size: 64, offset: 448)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3439)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !89, line: 324, size: 704, elements: !3440)
!3440 = !{!3441, !3445, !3449, !3453, !3454, !3455, !3456, !3457, !3462, !3467, !3471}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3439, file: !89, line: 325, baseType: !3442, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!147, !3377}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3439, file: !89, line: 326, baseType: !3446, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!3377, !1838, !147}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3439, file: !89, line: 327, baseType: !3450, size: 64, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{null, !3377}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3439, file: !89, line: 328, baseType: !3442, size: 64, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3439, file: !89, line: 329, baseType: !3442, size: 64, offset: 256)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3439, file: !89, line: 330, baseType: !3442, size: 64, offset: 320)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3439, file: !89, line: 331, baseType: !2326, size: 64, offset: 384)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3439, file: !89, line: 334, baseType: !3458, size: 64, offset: 448)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!3461, !1692}
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3439, file: !89, line: 335, baseType: !3463, size: 64, offset: 512)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!147, !1692, !3466}
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3439, file: !89, line: 337, baseType: !3468, size: 64, offset: 576)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!147, !1692, !3461}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3439, file: !89, line: 339, baseType: !3472, size: 64, offset: 640)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!147, !1838, !3475}
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1839, file: !52, line: 1199, baseType: !3477, size: 64, offset: 512)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3479)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !89, line: 430, size: 704, elements: !3480)
!3480 = !{!3481, !3487, !3488, !3492, !3493, !3494, !3509, !3532, !3536, !3537, !3560}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3479, file: !89, line: 431, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!147, !1838, !147, !147, !3485}
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2681)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3479, file: !89, line: 432, baseType: !2326, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3479, file: !89, line: 433, baseType: !3489, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!147, !1838, !7}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3479, file: !89, line: 434, baseType: !3489, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3479, file: !89, line: 435, baseType: !2326, size: 64, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3479, file: !89, line: 436, baseType: !3495, size: 64, offset: 320)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!147, !1838, !147, !3498}
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !89, line: 417, size: 256, elements: !3500)
!3500 = !{!3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3499, file: !89, line: 418, baseType: !147, size: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3499, file: !89, line: 419, baseType: !7, size: 32, offset: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3499, file: !89, line: 420, baseType: !7, size: 32, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3499, file: !89, line: 422, baseType: !7, size: 32, offset: 96)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3499, file: !89, line: 423, baseType: !7, size: 32, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3499, file: !89, line: 424, baseType: !7, size: 32, offset: 160)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3499, file: !89, line: 425, baseType: !7, size: 32, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3499, file: !89, line: 426, baseType: !7, size: 32, offset: 224)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3479, file: !89, line: 437, baseType: !3510, size: 64, offset: 384)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!147, !1838, !3389, !3513}
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !89, line: 345, size: 960, elements: !3515)
!3515 = !{!3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3514, file: !89, line: 346, baseType: !147, size: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3514, file: !89, line: 347, baseType: !296, size: 64, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3514, file: !89, line: 348, baseType: !296, size: 64, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3514, file: !89, line: 349, baseType: !296, size: 64, offset: 192)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3514, file: !89, line: 350, baseType: !296, size: 64, offset: 256)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3514, file: !89, line: 351, baseType: !296, size: 64, offset: 320)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3514, file: !89, line: 352, baseType: !296, size: 64, offset: 384)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3514, file: !89, line: 353, baseType: !1492, size: 64, offset: 448)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3514, file: !89, line: 355, baseType: !1492, size: 64, offset: 512)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3514, file: !89, line: 356, baseType: !147, size: 32, offset: 576)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3514, file: !89, line: 357, baseType: !147, size: 32, offset: 608)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3514, file: !89, line: 358, baseType: !296, size: 64, offset: 640)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3514, file: !89, line: 359, baseType: !296, size: 64, offset: 704)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3514, file: !89, line: 360, baseType: !296, size: 64, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3514, file: !89, line: 361, baseType: !1492, size: 64, offset: 832)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3514, file: !89, line: 362, baseType: !147, size: 32, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3479, file: !89, line: 438, baseType: !3533, size: 64, offset: 448)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!147, !1838, !3475, !3513}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3479, file: !89, line: 440, baseType: !3510, size: 64, offset: 512)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3479, file: !89, line: 441, baseType: !3538, size: 64, offset: 576)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!147, !1838, !3541}
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !89, line: 411, size: 1408, elements: !3543)
!3543 = !{!3544, !3545}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3542, file: !89, line: 412, baseType: !7, size: 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3542, file: !89, line: 413, baseType: !3546, size: 1344, offset: 64)
!3546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3547, size: 1344, elements: !482)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !89, line: 397, size: 448, elements: !3548)
!3548 = !{!3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3559}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3547, file: !89, line: 398, baseType: !7, size: 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3547, file: !89, line: 399, baseType: !7, size: 32, offset: 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3547, file: !89, line: 401, baseType: !7, size: 32, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3547, file: !89, line: 402, baseType: !7, size: 32, offset: 96)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3547, file: !89, line: 403, baseType: !7, size: 32, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3547, file: !89, line: 404, baseType: !7, size: 32, offset: 160)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3547, file: !89, line: 405, baseType: !7, size: 32, offset: 192)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3547, file: !89, line: 406, baseType: !300, size: 64, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3547, file: !89, line: 407, baseType: !3558, size: 64, offset: 320)
!3558 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !575, line: 132, baseType: !296)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3547, file: !89, line: 408, baseType: !3558, size: 64, offset: 384)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3479, file: !89, line: 442, baseType: !3489, size: 64, offset: 640)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1839, file: !52, line: 1200, baseType: !3562, size: 64, offset: 576)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3564)
!3564 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !52, line: 54, flags: DIFlagFwdDecl)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1839, file: !52, line: 1201, baseType: !295, size: 64, offset: 640)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1839, file: !52, line: 1202, baseType: !295, size: 64, offset: 704)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1839, file: !52, line: 1203, baseType: !295, size: 64, offset: 768)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1839, file: !52, line: 1204, baseType: !1727, size: 64, offset: 832)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1839, file: !52, line: 1205, baseType: !2515, size: 320, offset: 896)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1839, file: !52, line: 1206, baseType: !147, size: 32, offset: 1216)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1839, file: !52, line: 1207, baseType: !1509, size: 32, offset: 1248)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1839, file: !52, line: 1209, baseType: !218, size: 64, offset: 1280)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1839, file: !52, line: 1211, baseType: !3574, size: 64, offset: 1344)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3577)
!3577 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !52, line: 1211, flags: DIFlagFwdDecl)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1839, file: !52, line: 1223, baseType: !3579, size: 64, offset: 1408)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1744, line: 34, size: 64, elements: !3580)
!3580 = !{!3581}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3579, file: !1744, line: 35, baseType: !1747, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1839, file: !52, line: 1224, baseType: !1471, size: 128, offset: 1472)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1839, file: !52, line: 1225, baseType: !3584, size: 64, offset: 1600)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !52, line: 1225, flags: DIFlagFwdDecl)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1839, file: !52, line: 1226, baseType: !3587, size: 64, offset: 1664)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !52, line: 1226, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1839, file: !52, line: 1227, baseType: !3590, size: 64, offset: 1728)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !52, line: 50, flags: DIFlagFwdDecl)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1839, file: !52, line: 1228, baseType: !3593, size: 64, offset: 1792)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !52, line: 1228, flags: DIFlagFwdDecl)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1839, file: !52, line: 1229, baseType: !2161, size: 128, offset: 1856)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1839, file: !52, line: 1230, baseType: !7, size: 32, offset: 1984)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1839, file: !52, line: 1231, baseType: !3598, size: 2496, offset: 2048)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !89, line: 521, size: 2496, elements: !3599)
!3599 = !{!3600, !3601, !3602, !3604, !3636}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3598, file: !89, line: 522, baseType: !7, size: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3598, file: !89, line: 523, baseType: !2515, size: 320, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3598, file: !89, line: 524, baseType: !3603, size: 192, offset: 384)
!3603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1692, size: 192, elements: !482)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3598, file: !89, line: 525, baseType: !3605, size: 1728, offset: 576)
!3605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3606, size: 1728, elements: !482)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !89, line: 222, size: 576, elements: !3607)
!3607 = !{!3608, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3606, file: !89, line: 223, baseType: !3609, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !89, line: 445, size: 256, elements: !3611)
!3611 = !{!3612, !3613, !3626, !3627}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3610, file: !89, line: 446, baseType: !147, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3610, file: !89, line: 447, baseType: !3614, size: 64, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3616)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !89, line: 312, size: 512, elements: !3617)
!3617 = !{!3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3616, file: !89, line: 313, baseType: !2326, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3616, file: !89, line: 314, baseType: !2326, size: 64, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3616, file: !89, line: 315, baseType: !2326, size: 64, offset: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3616, file: !89, line: 316, baseType: !2326, size: 64, offset: 192)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3616, file: !89, line: 317, baseType: !3442, size: 64, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3616, file: !89, line: 318, baseType: !3442, size: 64, offset: 320)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3616, file: !89, line: 319, baseType: !3442, size: 64, offset: 384)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3616, file: !89, line: 320, baseType: !3472, size: 64, offset: 448)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3610, file: !89, line: 448, baseType: !1875, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3610, file: !89, line: 449, baseType: !3609, size: 64, offset: 192)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3606, file: !89, line: 224, baseType: !147, size: 32, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3606, file: !89, line: 226, baseType: !1471, size: 128, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3606, file: !89, line: 227, baseType: !295, size: 64, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3606, file: !89, line: 228, baseType: !7, size: 32, offset: 320)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3606, file: !89, line: 229, baseType: !7, size: 32, offset: 352)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3606, file: !89, line: 230, baseType: !3410, size: 64, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3606, file: !89, line: 231, baseType: !3410, size: 64, offset: 448)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3606, file: !89, line: 232, baseType: !218, size: 64, offset: 512)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3598, file: !89, line: 526, baseType: !3637, size: 192, offset: 2304)
!3637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3614, size: 192, elements: !482)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1839, file: !52, line: 1233, baseType: !3639, size: 2368, offset: 4544)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !52, line: 1184, size: 2368, elements: !3640)
!3640 = !{!3641, !3642, !3643}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3639, file: !52, line: 1185, baseType: !263, size: 16)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3639, file: !52, line: 1186, baseType: !263, size: 16, offset: 16)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3639, file: !52, line: 1187, baseType: !3644, size: 2304, offset: 64)
!3644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3645, size: 2304, elements: !482)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3646, line: 12, size: 768, elements: !3647)
!3646 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3647 = !{!3648, !3656, !3657, !4855, !4856}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3645, file: !3646, line: 13, baseType: !3649, size: 384)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3650, line: 17, size: 384, elements: !3651)
!3650 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3651 = !{!3652, !3653, !3654, !3655}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3649, file: !3650, line: 18, baseType: !147, size: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3649, file: !3650, line: 19, baseType: !147, size: 32, offset: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3649, file: !3650, line: 20, baseType: !2452, size: 192, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3649, file: !3650, line: 22, baseType: !2137, size: 128, align: 64, offset: 256)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3645, file: !3646, line: 14, baseType: !924, size: 64, offset: 384)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3645, file: !3646, line: 15, baseType: !3658, size: 64, offset: 448)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3659, line: 16, size: 64, elements: !3660)
!3659 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3660 = !{!3661}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3658, file: !3659, line: 17, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !3308, line: 746, size: 58368, elements: !3664)
!3664 = !{!3665, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3745, !3756, !3849, !3853, !3856, !3887, !3888, !3889, !3890, !3899, !3901, !3902, !3903, !3904, !3905, !3906, !3917, !3918, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3935, !3936, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !4029, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4077, !4083, !4084, !4085, !4086, !4087, !4088, !4091, !4098, !4103, !4106, !4109, !4112, !4115, !4253, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4289, !4290, !4291, !4300, !4308, !4309, !4310, !4311, !4312, !4317, !4318, !4319, !4322, !4323, !4326, !4329, !4332, !4340, !4343, !4344, !4429, !4430, !4431, !4432, !4433, !4439, !4440, !4441, !4442, !4445, !4446, !4449, !4463, !4464, !4467, !4468, !4469, !4472, !4473, !4474, !4475, !4476, !4477, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4509, !4510, !4516, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4528, !4600, !4602, !4603, !4604, !4605, !4606, !4607, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4636, !4637, !4638}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3663, file: !3308, line: 752, baseType: !3666, size: 192)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3667, line: 56, size: 192, elements: !3668)
!3667 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3668 = !{!3669, !3670, !3671, !3672}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3666, file: !3667, line: 57, baseType: !295, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3666, file: !3667, line: 58, baseType: !295, size: 64, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3666, file: !3667, line: 59, baseType: !1761, size: 32, offset: 128)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3666, file: !3667, line: 61, baseType: !1761, size: 32, offset: 160)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3663, file: !3308, line: 754, baseType: !7, size: 32, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3663, file: !3308, line: 767, baseType: !218, size: 64, offset: 256)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3663, file: !3308, line: 768, baseType: !2441, size: 32, offset: 320)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3663, file: !3308, line: 770, baseType: !7, size: 32, offset: 352)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3663, file: !3308, line: 771, baseType: !7, size: 32, offset: 384)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3663, file: !3308, line: 774, baseType: !147, size: 32, offset: 416)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3663, file: !3308, line: 775, baseType: !3680, size: 128, offset: 448)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3681, line: 58, size: 128, elements: !3682)
!3681 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3682 = !{!3683, !3684, !3689, !3690}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3680, file: !3681, line: 59, baseType: !2398, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, scope: !3680, file: !3681, line: 60, baseType: !3685, size: 32, offset: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3680, file: !3681, line: 60, size: 32, elements: !3686)
!3686 = !{!3687, !3688}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3685, file: !3681, line: 61, baseType: !7, size: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3685, file: !3681, line: 62, baseType: !1509, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3680, file: !3681, line: 65, baseType: !1522, size: 16, offset: 96)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3680, file: !3681, line: 65, baseType: !1522, size: 16, offset: 112)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3663, file: !3308, line: 776, baseType: !7, size: 32, offset: 576)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3663, file: !3308, line: 777, baseType: !295, size: 64, offset: 640)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3663, file: !3308, line: 778, baseType: !3662, size: 64, offset: 704)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3663, file: !3308, line: 787, baseType: !147, size: 32, offset: 768)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3663, file: !3308, line: 788, baseType: !147, size: 32, offset: 800)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3663, file: !3308, line: 790, baseType: !147, size: 32, offset: 832)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3663, file: !3308, line: 792, baseType: !147, size: 32, offset: 864)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3663, file: !3308, line: 793, baseType: !147, size: 32, offset: 896)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3663, file: !3308, line: 794, baseType: !147, size: 32, offset: 928)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3663, file: !3308, line: 795, baseType: !7, size: 32, offset: 960)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3663, file: !3308, line: 797, baseType: !3702, size: 2048, offset: 1024)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !3308, line: 551, size: 2048, elements: !3703)
!3703 = !{!3704, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3724, !3727, !3728, !3729}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3702, file: !3308, line: 553, baseType: !3705, size: 128)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !3308, line: 411, size: 128, elements: !3706)
!3706 = !{!3707, !3708}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3705, file: !3308, line: 412, baseType: !295, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3705, file: !3308, line: 413, baseType: !1761, size: 32, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3702, file: !3308, line: 554, baseType: !2033, size: 192, align: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3702, file: !3308, line: 555, baseType: !296, size: 64, offset: 320)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3702, file: !3308, line: 556, baseType: !296, size: 64, offset: 384)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3702, file: !3308, line: 558, baseType: !1471, size: 128, offset: 448)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3702, file: !3308, line: 559, baseType: !7, size: 32, offset: 576)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3702, file: !3308, line: 561, baseType: !296, size: 64, offset: 640)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3702, file: !3308, line: 562, baseType: !296, size: 64, offset: 704)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3702, file: !3308, line: 563, baseType: !296, size: 64, offset: 768)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3702, file: !3308, line: 564, baseType: !296, size: 64, offset: 832)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3702, file: !3308, line: 565, baseType: !1492, size: 64, offset: 896)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3702, file: !3308, line: 566, baseType: !296, size: 64, offset: 960)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3702, file: !3308, line: 568, baseType: !296, size: 64, offset: 1024)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3702, file: !3308, line: 571, baseType: !147, size: 32, offset: 1088)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3702, file: !3308, line: 572, baseType: !3723, size: 64, offset: 1152)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3702, file: !3308, line: 574, baseType: !3725, size: 64, offset: 1216)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !3308, line: 49, flags: DIFlagFwdDecl)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3702, file: !3308, line: 576, baseType: !3725, size: 64, offset: 1280)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3702, file: !3308, line: 578, baseType: !295, size: 64, offset: 1344)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3702, file: !3308, line: 588, baseType: !3730, size: 512, align: 512, offset: 1536)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !3308, line: 497, size: 512, align: 512, elements: !3731)
!3731 = !{!3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3730, file: !3308, line: 498, baseType: !296, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3730, file: !3308, line: 499, baseType: !296, size: 64, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3730, file: !3308, line: 500, baseType: !296, size: 64, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3730, file: !3308, line: 501, baseType: !1761, size: 32, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3730, file: !3308, line: 502, baseType: !1761, size: 32, offset: 224)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3730, file: !3308, line: 503, baseType: !295, size: 64, offset: 256)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3730, file: !3308, line: 504, baseType: !295, size: 64, offset: 320)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3730, file: !3308, line: 505, baseType: !295, size: 64, offset: 384)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3730, file: !3308, line: 506, baseType: !3741, size: 64, align: 64, offset: 448)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !3308, line: 445, size: 64, align: 64, elements: !3742)
!3742 = !{!3743, !3744}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3741, file: !3308, line: 446, baseType: !7, size: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3741, file: !3308, line: 447, baseType: !7, size: 32, offset: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3663, file: !3308, line: 798, baseType: !3746, size: 384, offset: 3072)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !3308, line: 592, size: 384, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3751, !3752, !3753, !3754}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3746, file: !3308, line: 593, baseType: !1471, size: 128)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3746, file: !3308, line: 594, baseType: !295, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3746, file: !3308, line: 595, baseType: !295, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3746, file: !3308, line: 596, baseType: !7, size: 32, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3746, file: !3308, line: 597, baseType: !263, size: 16, offset: 288)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3746, file: !3308, line: 598, baseType: !263, size: 16, offset: 304)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3746, file: !3308, line: 600, baseType: !3755, size: 64, offset: 320)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3663, file: !3308, line: 799, baseType: !3757, size: 1792, offset: 3456)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !3308, line: 610, size: 1792, elements: !3758)
!3758 = !{!3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3846, !3847}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3757, file: !3308, line: 611, baseType: !2033, size: 192, align: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3757, file: !3308, line: 618, baseType: !296, size: 64, offset: 192)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3757, file: !3308, line: 619, baseType: !296, size: 64, offset: 256)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3757, file: !3308, line: 620, baseType: !296, size: 64, offset: 320)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3757, file: !3308, line: 621, baseType: !296, size: 64, offset: 384)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3757, file: !3308, line: 622, baseType: !296, size: 64, offset: 448)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3757, file: !3308, line: 629, baseType: !1492, size: 64, offset: 512)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3757, file: !3308, line: 630, baseType: !296, size: 64, offset: 576)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3757, file: !3308, line: 631, baseType: !7, size: 32, offset: 640)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3757, file: !3308, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3757, file: !3308, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3757, file: !3308, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3757, file: !3308, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3757, file: !3308, line: 662, baseType: !3773, size: 512, offset: 704)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !95, line: 118, size: 512, elements: !3774)
!3774 = !{!3775, !3783, !3784, !3789, !3842, !3843, !3844, !3845}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3773, file: !95, line: 119, baseType: !3776, size: 256)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3777, line: 9, size: 256, elements: !3778)
!3777 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3778 = !{!3779, !3780}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3776, file: !3777, line: 10, baseType: !2033, size: 192, align: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3776, file: !3777, line: 11, baseType: !3781, size: 64, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3782, line: 29, baseType: !1492)
!3782 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3773, file: !95, line: 120, baseType: !3781, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3773, file: !95, line: 121, baseType: !3785, size: 64, offset: 320)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!94, !3788}
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3773, file: !95, line: 122, baseType: !3790, size: 64, offset: 384)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !95, line: 159, size: 512, align: 512, elements: !3792)
!3792 = !{!3793, !3816, !3817, !3820, !3825, !3826, !3837, !3841}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3791, file: !95, line: 160, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !95, line: 215, size: 4608, align: 512, elements: !3796)
!3796 = !{!3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3795, file: !95, line: 216, baseType: !1496, size: 32)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3795, file: !95, line: 217, baseType: !7, size: 32, offset: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3795, file: !95, line: 218, baseType: !7, size: 32, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3795, file: !95, line: 219, baseType: !7, size: 32, offset: 96)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3795, file: !95, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3795, file: !95, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3795, file: !95, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3795, file: !95, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3795, file: !95, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3795, file: !95, line: 226, baseType: !7, size: 32, offset: 160)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3795, file: !95, line: 227, baseType: !263, size: 16, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3795, file: !95, line: 228, baseType: !263, size: 16, offset: 208)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3795, file: !95, line: 229, baseType: !7, size: 32, offset: 224)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3795, file: !95, line: 235, baseType: !3781, size: 64, offset: 256)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3795, file: !95, line: 236, baseType: !3788, size: 64, offset: 320)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3795, file: !95, line: 237, baseType: !3781, size: 64, offset: 384)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3795, file: !95, line: 238, baseType: !3788, size: 64, offset: 448)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3795, file: !95, line: 239, baseType: !3815, size: 4096, align: 512, offset: 512)
!3815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3791, size: 4096, align: 512, elements: !815)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3791, file: !95, line: 161, baseType: !7, size: 32, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3791, file: !95, line: 162, baseType: !3818, size: 32, offset: 96)
!3818 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !575, line: 32, baseType: !3819)
!3819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !1648, line: 96, baseType: !147)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3791, file: !95, line: 163, baseType: !3821, size: 32, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !1734, line: 274, baseType: !3822)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !1734, line: 274, size: 32, elements: !3823)
!3823 = !{!3824}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3822, file: !1734, line: 274, baseType: !1738, size: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3791, file: !95, line: 164, baseType: !3788, size: 64, offset: 192)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3791, file: !95, line: 165, baseType: !3827, size: 128, offset: 256)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3777, line: 14, size: 128, elements: !3828)
!3828 = !{!3829}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3827, file: !3777, line: 15, baseType: !3830, size: 128)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !2034, line: 26, size: 128, elements: !3831)
!3831 = !{!3832, !3836}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3830, file: !2034, line: 27, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !2034, line: 12, size: 64, elements: !3834)
!3834 = !{!3835}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3833, file: !2034, line: 13, baseType: !2038, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !3830, file: !2034, line: 28, baseType: !2038, size: 64, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3791, file: !95, line: 166, baseType: !3838, size: 64, offset: 384)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!3781}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3791, file: !95, line: 167, baseType: !3781, size: 64, offset: 448)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3773, file: !95, line: 123, baseType: !555, size: 8, offset: 448)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3773, file: !95, line: 124, baseType: !555, size: 8, offset: 456)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3773, file: !95, line: 125, baseType: !555, size: 8, offset: 464)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3773, file: !95, line: 126, baseType: !555, size: 8, offset: 472)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3757, file: !3308, line: 671, baseType: !3773, size: 512, offset: 1216)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3757, file: !3308, line: 679, baseType: !3848, size: 64, offset: 1728)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3663, file: !3308, line: 800, baseType: !3850, size: 64, offset: 5248)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3852)
!3852 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !3308, line: 800, flags: DIFlagFwdDecl)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3663, file: !3308, line: 809, baseType: !3854, size: 64, offset: 5312)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !3308, line: 70, flags: DIFlagFwdDecl)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3663, file: !3308, line: 825, baseType: !3857, size: 2048, align: 512, offset: 5632)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !3308, line: 509, size: 2048, align: 512, elements: !3858)
!3858 = !{!3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3857, file: !3308, line: 511, baseType: !296, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3857, file: !3308, line: 512, baseType: !296, size: 64, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3857, file: !3308, line: 513, baseType: !296, size: 64, offset: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3857, file: !3308, line: 514, baseType: !296, size: 64, offset: 192)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3857, file: !3308, line: 515, baseType: !296, size: 64, offset: 256)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3857, file: !3308, line: 516, baseType: !296, size: 64, offset: 320)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3857, file: !3308, line: 518, baseType: !296, size: 64, offset: 384)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3857, file: !3308, line: 519, baseType: !296, size: 64, offset: 448)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3857, file: !3308, line: 520, baseType: !1492, size: 64, offset: 512)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3857, file: !3308, line: 522, baseType: !296, size: 64, offset: 576)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3857, file: !3308, line: 523, baseType: !296, size: 64, offset: 640)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3857, file: !3308, line: 524, baseType: !1492, size: 64, offset: 704)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3857, file: !3308, line: 526, baseType: !1492, size: 64, offset: 768)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3857, file: !3308, line: 527, baseType: !296, size: 64, offset: 832)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3857, file: !3308, line: 529, baseType: !296, size: 64, offset: 896)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3857, file: !3308, line: 530, baseType: !296, size: 64, offset: 960)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3857, file: !3308, line: 531, baseType: !296, size: 64, offset: 1024)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3857, file: !3308, line: 532, baseType: !296, size: 64, offset: 1088)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3857, file: !3308, line: 533, baseType: !296, size: 64, offset: 1152)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3857, file: !3308, line: 535, baseType: !296, size: 64, offset: 1216)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3857, file: !3308, line: 536, baseType: !296, size: 64, offset: 1280)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3857, file: !3308, line: 537, baseType: !296, size: 64, offset: 1344)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3857, file: !3308, line: 538, baseType: !296, size: 64, offset: 1408)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3857, file: !3308, line: 539, baseType: !296, size: 64, offset: 1472)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3857, file: !3308, line: 540, baseType: !296, size: 64, offset: 1536)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3857, file: !3308, line: 541, baseType: !296, size: 64, offset: 1600)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3857, file: !3308, line: 542, baseType: !296, size: 64, offset: 1664)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3857, file: !3308, line: 543, baseType: !296, size: 64, offset: 1728)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3663, file: !3308, line: 833, baseType: !7, size: 32, offset: 7680)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3663, file: !3308, line: 836, baseType: !7, size: 32, offset: 7712)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3663, file: !3308, line: 837, baseType: !147, size: 32, offset: 7744)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3663, file: !3308, line: 838, baseType: !3891, size: 64, offset: 7808)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3893)
!3893 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3894, line: 19, baseType: !3895)
!3894 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3894, line: 19, size: 64, elements: !3896)
!3896 = !{!3897}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3895, file: !3894, line: 19, baseType: !3898, size: 64)
!3898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 64, elements: !356)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3663, file: !3308, line: 839, baseType: !3900, size: 64, offset: 7872)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3663, file: !3308, line: 840, baseType: !3893, size: 64, offset: 7936)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3663, file: !3308, line: 841, baseType: !218, size: 64, offset: 8000)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3663, file: !3308, line: 843, baseType: !263, size: 16, offset: 8064)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3663, file: !3308, line: 845, baseType: !263, size: 16, offset: 8080)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3663, file: !3308, line: 848, baseType: !147, size: 32, offset: 8096)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3663, file: !3308, line: 849, baseType: !3907, size: 32, offset: 8128)
!3907 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !3308, line: 718, size: 32, elements: !3908)
!3908 = !{!3909, !3916}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3907, file: !3308, line: 724, baseType: !3910, size: 32)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3907, file: !3308, line: 719, size: 32, elements: !3911)
!3911 = !{!3912, !3913, !3914, !3915}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3910, file: !3308, line: 720, baseType: !555, size: 8)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3910, file: !3308, line: 721, baseType: !555, size: 8, offset: 8)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3910, file: !3308, line: 722, baseType: !555, size: 8, offset: 16)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3910, file: !3308, line: 723, baseType: !555, size: 8, offset: 24)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3907, file: !3308, line: 725, baseType: !1761, size: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3663, file: !3308, line: 850, baseType: !1471, size: 128, offset: 8192)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3663, file: !3308, line: 851, baseType: !3919, size: 64, offset: 8320)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !3308, line: 60, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3663, file: !3308, line: 855, baseType: !295, size: 64, offset: 8384)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3663, file: !3308, line: 856, baseType: !555, size: 8, offset: 8448)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3663, file: !3308, line: 857, baseType: !555, size: 8, offset: 8456)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3663, file: !3308, line: 858, baseType: !147, size: 32, offset: 8480)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3663, file: !3308, line: 859, baseType: !1471, size: 128, offset: 8512)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3663, file: !3308, line: 860, baseType: !147, size: 32, offset: 8640)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3663, file: !3308, line: 861, baseType: !1471, size: 128, offset: 8704)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3663, file: !3308, line: 873, baseType: !3929, size: 256, offset: 8832)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !3308, line: 376, size: 256, elements: !3930)
!3930 = !{!3931, !3932, !3933, !3934}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3929, file: !3308, line: 381, baseType: !295, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3929, file: !3308, line: 384, baseType: !300, size: 64, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3929, file: !3308, line: 389, baseType: !300, size: 64, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3929, file: !3308, line: 392, baseType: !300, size: 64, offset: 192)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3663, file: !3308, line: 875, baseType: !1471, size: 128, offset: 9088)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3663, file: !3308, line: 877, baseType: !3937, size: 320, offset: 9216)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3938, line: 86, size: 320, elements: !3939)
!3938 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3939 = !{!3940, !3941, !3942}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3937, file: !3938, line: 87, baseType: !147, size: 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3937, file: !3938, line: 88, baseType: !1471, size: 128, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3937, file: !3938, line: 89, baseType: !1471, size: 128, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3663, file: !3308, line: 878, baseType: !2033, size: 192, align: 64, offset: 9536)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3663, file: !3308, line: 881, baseType: !2851, size: 64, offset: 9728)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3663, file: !3308, line: 882, baseType: !2851, size: 64, offset: 9792)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3663, file: !3308, line: 884, baseType: !147, size: 32, offset: 9856)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3663, file: !3308, line: 885, baseType: !147, size: 32, offset: 9888)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3663, file: !3308, line: 886, baseType: !147, size: 32, offset: 9920)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3663, file: !3308, line: 888, baseType: !147, size: 32, offset: 9952)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3663, file: !3308, line: 890, baseType: !295, size: 64, offset: 9984)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3663, file: !3308, line: 893, baseType: !7, size: 32, offset: 10048)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3663, file: !3308, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3663, file: !3308, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3663, file: !3308, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3663, file: !3308, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3663, file: !3308, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3663, file: !3308, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3663, file: !3308, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3663, file: !3308, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3663, file: !3308, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3663, file: !3308, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3663, file: !3308, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3663, file: !3308, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3663, file: !3308, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3663, file: !3308, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3663, file: !3308, line: 969, baseType: !295, size: 64, offset: 10176)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3663, file: !3308, line: 971, baseType: !3968, size: 448, offset: 10240)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !100, line: 25, size: 448, elements: !3969)
!3969 = !{!3970, !3971, !3976}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3968, file: !100, line: 26, baseType: !295, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3968, file: !100, line: 27, baseType: !3972, size: 64, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!224, !3975}
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, scope: !3968, file: !100, line: 28, baseType: !3977, size: 320, offset: 128)
!3977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3968, file: !100, line: 28, size: 320, elements: !3978)
!3978 = !{!3979, !3989, !4014}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3977, file: !100, line: 37, baseType: !3980, size: 320)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3977, file: !100, line: 30, size: 320, elements: !3981)
!3981 = !{!3982, !3984, !3985, !3986, !3987, !3988}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3980, file: !100, line: 31, baseType: !3983, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3980, file: !100, line: 32, baseType: !1761, size: 32, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3980, file: !100, line: 33, baseType: !1761, size: 32, offset: 96)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3980, file: !100, line: 34, baseType: !1761, size: 32, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3980, file: !100, line: 35, baseType: !296, size: 64, offset: 192)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3980, file: !100, line: 36, baseType: !3983, size: 64, offset: 256)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3977, file: !100, line: 47, baseType: !3990, size: 192)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3977, file: !100, line: 39, size: 192, elements: !3991)
!3991 = !{!3992, !3993, !3994, !4013}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3990, file: !100, line: 40, baseType: !3818, size: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3990, file: !100, line: 41, baseType: !99, size: 32, offset: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, scope: !3990, file: !100, line: 42, baseType: !3995, size: 64, offset: 64)
!3995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3990, file: !100, line: 42, size: 64, elements: !3996)
!3996 = !{!3997, !4005}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3995, file: !100, line: 43, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4000, line: 7, size: 128, elements: !4001)
!4000 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4001 = !{!4002, !4004}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3999, file: !4000, line: 8, baseType: !4003, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !1648, line: 93, baseType: !1494)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3999, file: !4000, line: 9, baseType: !1494, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3995, file: !100, line: 44, baseType: !4006, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4008, line: 7, size: 64, elements: !4009)
!4008 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4009 = !{!4010, !4012}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4007, file: !4008, line: 8, baseType: !4011, size: 32)
!4011 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4008, line: 5, baseType: !1941)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4007, file: !4008, line: 9, baseType: !1941, size: 32, offset: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3990, file: !100, line: 46, baseType: !296, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3977, file: !100, line: 55, baseType: !4015, size: 256)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3977, file: !100, line: 49, size: 256, elements: !4016)
!4016 = !{!4017, !4025, !4026, !4027, !4028}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4015, file: !100, line: 50, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !4020, line: 36, size: 64, elements: !4021)
!4020 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!4021 = !{!4022, !4023, !4024}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4019, file: !4020, line: 37, baseType: !147, size: 32)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4019, file: !4020, line: 38, baseType: !2055, size: 16, offset: 32)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !4019, file: !4020, line: 39, baseType: !2055, size: 16, offset: 48)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4015, file: !100, line: 51, baseType: !147, size: 32, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4015, file: !100, line: 52, baseType: !147, size: 32, offset: 96)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4015, file: !100, line: 53, baseType: !295, size: 64, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4015, file: !100, line: 54, baseType: !295, size: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3663, file: !3308, line: 973, baseType: !4030, size: 32, offset: 10688)
!4030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !575, line: 27, baseType: !4031)
!4031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !1648, line: 28, baseType: !147)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3663, file: !3308, line: 974, baseType: !4030, size: 32, offset: 10720)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3663, file: !3308, line: 978, baseType: !295, size: 64, offset: 10752)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3663, file: !3308, line: 987, baseType: !3662, size: 64, offset: 10816)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3663, file: !3308, line: 990, baseType: !3662, size: 64, offset: 10880)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3663, file: !3308, line: 995, baseType: !1471, size: 128, offset: 10944)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3663, file: !3308, line: 996, baseType: !1471, size: 128, offset: 11072)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3663, file: !3308, line: 997, baseType: !3662, size: 64, offset: 11200)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3663, file: !3308, line: 1005, baseType: !1471, size: 128, offset: 11264)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3663, file: !3308, line: 1006, baseType: !1471, size: 128, offset: 11392)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3663, file: !3308, line: 1009, baseType: !2437, size: 64, offset: 11520)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3663, file: !3308, line: 1010, baseType: !4043, size: 512, offset: 11584)
!4043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2161, size: 512, elements: !283)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3663, file: !3308, line: 1011, baseType: !1471, size: 128, offset: 12096)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3663, file: !3308, line: 1012, baseType: !1471, size: 128, offset: 12224)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3663, file: !3308, line: 1014, baseType: !1894, size: 64, offset: 12352)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3663, file: !3308, line: 1017, baseType: !2046, size: 64, offset: 12416)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3663, file: !3308, line: 1020, baseType: !2046, size: 64, offset: 12480)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3663, file: !3308, line: 1023, baseType: !218, size: 64, offset: 12544)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3663, file: !3308, line: 1025, baseType: !296, size: 64, offset: 12608)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3663, file: !3308, line: 1026, baseType: !296, size: 64, offset: 12672)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3663, file: !3308, line: 1031, baseType: !296, size: 64, offset: 12736)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3663, file: !3308, line: 1032, baseType: !4054, size: 192, offset: 12800)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !3308, line: 324, size: 192, elements: !4055)
!4055 = !{!4056, !4057, !4058}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4054, file: !3308, line: 326, baseType: !296, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4054, file: !3308, line: 327, baseType: !296, size: 64, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4054, file: !3308, line: 328, baseType: !1496, size: 32, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3663, file: !3308, line: 1041, baseType: !295, size: 64, offset: 12992)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3663, file: !3308, line: 1042, baseType: !295, size: 64, offset: 13056)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3663, file: !3308, line: 1045, baseType: !296, size: 64, offset: 13120)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3663, file: !3308, line: 1048, baseType: !296, size: 64, offset: 13184)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3663, file: !3308, line: 1051, baseType: !295, size: 64, offset: 13248)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3663, file: !3308, line: 1052, baseType: !295, size: 64, offset: 13312)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3663, file: !3308, line: 1055, baseType: !4066, size: 640, offset: 13376)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4067, line: 132, size: 640, elements: !4068)
!4067 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4068 = !{!4069, !4075, !4076}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4066, file: !4067, line: 133, baseType: !4070, size: 576)
!4070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4071, size: 576, elements: !482)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4067, line: 117, size: 192, elements: !4072)
!4072 = !{!4073, !4074}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4071, file: !4067, line: 118, baseType: !296, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4071, file: !4067, line: 119, baseType: !3827, size: 128, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4066, file: !4067, line: 134, baseType: !7, size: 32, offset: 576)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4066, file: !4067, line: 135, baseType: !7, size: 32, offset: 608)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3663, file: !3308, line: 1058, baseType: !4078, size: 448, offset: 14016)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4067, line: 144, size: 448, elements: !4079)
!4079 = !{!4080, !4081, !4082}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4078, file: !4067, line: 145, baseType: !2137, size: 128, align: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4078, file: !4067, line: 146, baseType: !1482, size: 256, offset: 128)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4078, file: !4067, line: 147, baseType: !7, size: 32, offset: 384)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3663, file: !3308, line: 1064, baseType: !2474, size: 64, offset: 14464)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3663, file: !3308, line: 1067, baseType: !2474, size: 64, offset: 14528)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3663, file: !3308, line: 1070, baseType: !2474, size: 64, offset: 14592)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3663, file: !3308, line: 1074, baseType: !2501, size: 64, offset: 14656)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3663, file: !3308, line: 1084, baseType: !430, size: 128, offset: 14720)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3663, file: !3308, line: 1086, baseType: !4089, size: 64, offset: 14848)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !3308, line: 55, flags: DIFlagFwdDecl)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3663, file: !3308, line: 1089, baseType: !4092, size: 64, offset: 14912)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4093, line: 12, size: 64, elements: !4094)
!4093 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4094 = !{!4095}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4092, file: !4093, line: 13, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4093, line: 8, flags: DIFlagFwdDecl)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3663, file: !3308, line: 1090, baseType: !4099, size: 128, offset: 14976)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4100, line: 13, size: 128, elements: !4101)
!4100 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4101 = !{!4102}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4099, file: !4100, line: 14, baseType: !1471, size: 128)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3663, file: !3308, line: 1097, baseType: !4104, size: 64, offset: 15104)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !3308, line: 50, flags: DIFlagFwdDecl)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3663, file: !3308, line: 1100, baseType: !4107, size: 64, offset: 15168)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !3308, line: 1100, flags: DIFlagFwdDecl)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3663, file: !3308, line: 1103, baseType: !4110, size: 64, offset: 15232)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !3308, line: 53, flags: DIFlagFwdDecl)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3663, file: !3308, line: 1107, baseType: !4113, size: 64, offset: 15296)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3308, line: 56, flags: DIFlagFwdDecl)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3663, file: !3308, line: 1110, baseType: !4116, size: 64, offset: 15360)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4118, line: 93, size: 8768, elements: !4119)
!4118 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4119 = !{!4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4167, !4176, !4177, !4179, !4180, !4181, !4184, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4222, !4223, !4230, !4240, !4243, !4244, !4247, !4248, !4249, !4250, !4251, !4252}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4117, file: !4118, line: 94, baseType: !2441, size: 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4117, file: !4118, line: 95, baseType: !1509, size: 32, offset: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4117, file: !4118, line: 96, baseType: !147, size: 32, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4117, file: !4118, line: 97, baseType: !147, size: 32, offset: 96)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4117, file: !4118, line: 98, baseType: !1471, size: 128, offset: 128)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4117, file: !4118, line: 100, baseType: !2452, size: 192, offset: 256)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4117, file: !4118, line: 103, baseType: !3662, size: 64, offset: 448)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4117, file: !4118, line: 106, baseType: !4128, size: 192, offset: 512)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2657, line: 32, size: 192, elements: !4129)
!4129 = !{!4130, !4131}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4128, file: !2657, line: 33, baseType: !1471, size: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4128, file: !2657, line: 34, baseType: !4132, size: 64, offset: 128)
!4132 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4133, line: 25, baseType: !4134)
!4133 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4133, line: 23, size: 64, elements: !4135)
!4135 = !{!4136}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4134, file: !4133, line: 24, baseType: !3898, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4117, file: !4118, line: 109, baseType: !2282, size: 64, offset: 704)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4117, file: !4118, line: 112, baseType: !147, size: 32, offset: 768)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4117, file: !4118, line: 114, baseType: !147, size: 32, offset: 800)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4117, file: !4118, line: 115, baseType: !3662, size: 64, offset: 832)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4117, file: !4118, line: 118, baseType: !147, size: 32, offset: 896)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4117, file: !4118, line: 119, baseType: !7, size: 32, offset: 928)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4117, file: !4118, line: 121, baseType: !4144, size: 64, offset: 960)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4118, line: 80, size: 448, elements: !4146)
!4146 = !{!4147, !4148, !4154}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4145, file: !4118, line: 81, baseType: !1509, size: 32)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4145, file: !4118, line: 82, baseType: !4149, size: 128, offset: 64)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4118, line: 75, size: 128, elements: !4150)
!4150 = !{!4151, !4152}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4149, file: !4118, line: 76, baseType: !3662, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4149, file: !4118, line: 77, baseType: !4153, size: 64, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4145, file: !4118, line: 83, baseType: !1895, size: 256, offset: 192)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4117, file: !4118, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4117, file: !4118, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4117, file: !4118, line: 138, baseType: !7, size: 32, offset: 1056)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4117, file: !4118, line: 139, baseType: !1471, size: 128, offset: 1088)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4117, file: !4118, line: 142, baseType: !3773, size: 512, offset: 1216)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4117, file: !4118, line: 143, baseType: !3781, size: 64, offset: 1728)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4117, file: !4118, line: 150, baseType: !4162, size: 256, offset: 1792)
!4162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4163, size: 256, elements: !238)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4118, line: 38, size: 128, elements: !4164)
!4164 = !{!4165, !4166}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4163, file: !4118, line: 39, baseType: !296, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4163, file: !4118, line: 40, baseType: !296, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4117, file: !4118, line: 156, baseType: !4168, size: 192, offset: 2048)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4118, line: 66, size: 192, elements: !4169)
!4169 = !{!4170}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4168, file: !4118, line: 67, baseType: !4171, size: 192)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4118, line: 47, size: 192, elements: !4172)
!4172 = !{!4173, !4174, !4175}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4171, file: !4118, line: 48, baseType: !1488, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4171, file: !4118, line: 49, baseType: !1488, size: 64, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4171, file: !4118, line: 50, baseType: !1488, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4117, file: !4118, line: 160, baseType: !4066, size: 640, offset: 2240)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4117, file: !4118, line: 163, baseType: !4178, size: 256, offset: 2880)
!4178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2437, size: 256, elements: !283)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4117, file: !4118, line: 169, baseType: !2437, size: 64, offset: 3136)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4117, file: !4118, line: 172, baseType: !147, size: 32, offset: 3200)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4117, file: !4118, line: 174, baseType: !4182, size: 64, offset: 3264)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4118, line: 174, flags: DIFlagFwdDecl)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4117, file: !4118, line: 185, baseType: !4185, size: 64, offset: 3328)
!4185 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !1734, line: 860, baseType: !4186)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1734, line: 853, size: 64, elements: !4187)
!4187 = !{!4188, !4189}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4186, file: !1734, line: 858, baseType: !1733, size: 32)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4186, file: !1734, line: 859, baseType: !1581, size: 32, offset: 32)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4117, file: !4118, line: 186, baseType: !296, size: 64, offset: 3392)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4117, file: !4118, line: 186, baseType: !296, size: 64, offset: 3456)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4117, file: !4118, line: 186, baseType: !296, size: 64, offset: 3520)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4117, file: !4118, line: 186, baseType: !296, size: 64, offset: 3584)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4117, file: !4118, line: 187, baseType: !296, size: 64, offset: 3648)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4117, file: !4118, line: 188, baseType: !296, size: 64, offset: 3712)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4117, file: !4118, line: 189, baseType: !4054, size: 192, offset: 3776)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4117, file: !4118, line: 190, baseType: !295, size: 64, offset: 3968)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4117, file: !4118, line: 190, baseType: !295, size: 64, offset: 4032)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4117, file: !4118, line: 190, baseType: !295, size: 64, offset: 4096)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4117, file: !4118, line: 190, baseType: !295, size: 64, offset: 4160)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4117, file: !4118, line: 191, baseType: !295, size: 64, offset: 4224)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4117, file: !4118, line: 191, baseType: !295, size: 64, offset: 4288)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4117, file: !4118, line: 191, baseType: !295, size: 64, offset: 4352)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4117, file: !4118, line: 191, baseType: !295, size: 64, offset: 4416)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4117, file: !4118, line: 192, baseType: !295, size: 64, offset: 4480)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4117, file: !4118, line: 192, baseType: !295, size: 64, offset: 4544)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4117, file: !4118, line: 192, baseType: !295, size: 64, offset: 4608)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4117, file: !4118, line: 192, baseType: !295, size: 64, offset: 4672)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4117, file: !4118, line: 193, baseType: !295, size: 64, offset: 4736)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4117, file: !4118, line: 193, baseType: !295, size: 64, offset: 4800)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4117, file: !4118, line: 194, baseType: !4212, size: 448, offset: 4864)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4213, line: 12, size: 448, elements: !4214)
!4213 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4214 = !{!4215, !4216, !4217, !4218, !4219, !4220, !4221}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4212, file: !4213, line: 15, baseType: !296, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4212, file: !4213, line: 17, baseType: !296, size: 64, offset: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4212, file: !4213, line: 19, baseType: !296, size: 64, offset: 128)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4212, file: !4213, line: 21, baseType: !296, size: 64, offset: 192)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4212, file: !4213, line: 29, baseType: !296, size: 64, offset: 256)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4212, file: !4213, line: 35, baseType: !296, size: 64, offset: 320)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4212, file: !4213, line: 44, baseType: !296, size: 64, offset: 384)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4117, file: !4118, line: 202, baseType: !300, size: 64, offset: 5312)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4117, file: !4118, line: 213, baseType: !4224, size: 2048, offset: 5376)
!4224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4225, size: 2048, elements: !431)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4226, line: 43, size: 128, elements: !4227)
!4226 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4227 = !{!4228, !4229}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4225, file: !4226, line: 44, baseType: !1662, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4225, file: !4226, line: 45, baseType: !1662, size: 64, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4117, file: !4118, line: 216, baseType: !4231, size: 448, offset: 7424)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4118, line: 30, size: 448, elements: !4232)
!4232 = !{!4233, !4234, !4235, !4236, !4237, !4238, !4239}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4231, file: !4118, line: 31, baseType: !147, size: 32)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4231, file: !4118, line: 32, baseType: !224, size: 64, offset: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4231, file: !4118, line: 33, baseType: !295, size: 64, offset: 128)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4231, file: !4118, line: 34, baseType: !296, size: 64, offset: 192)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4231, file: !4118, line: 34, baseType: !296, size: 64, offset: 256)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4231, file: !4118, line: 35, baseType: !295, size: 64, offset: 320)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4231, file: !4118, line: 35, baseType: !295, size: 64, offset: 384)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4117, file: !4118, line: 219, baseType: !4241, size: 64, offset: 7872)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4118, line: 219, flags: DIFlagFwdDecl)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4117, file: !4118, line: 222, baseType: !7, size: 32, offset: 7936)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4117, file: !4118, line: 223, baseType: !4245, size: 64, offset: 8000)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4118, line: 223, flags: DIFlagFwdDecl)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4117, file: !4118, line: 230, baseType: !574, size: 8, offset: 8064)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4117, file: !4118, line: 231, baseType: !2055, size: 16, offset: 8080)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4117, file: !4118, line: 232, baseType: !2055, size: 16, offset: 8096)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4117, file: !4118, line: 234, baseType: !2851, size: 64, offset: 8128)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4117, file: !4118, line: 237, baseType: !1482, size: 256, offset: 8192)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4117, file: !4118, line: 243, baseType: !2515, size: 320, offset: 8448)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3663, file: !3308, line: 1111, baseType: !4254, size: 64, offset: 15424)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4118, line: 20, size: 16640, elements: !4256)
!4256 = !{!4257, !4258, !4259, !4260}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4255, file: !4118, line: 21, baseType: !1581, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4255, file: !4118, line: 22, baseType: !2441, size: 32, offset: 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4255, file: !4118, line: 23, baseType: !2452, size: 192, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4255, file: !4118, line: 24, baseType: !4261, size: 16384, offset: 256)
!4261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4262, size: 16384, elements: !1619)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2657, line: 51, size: 256, elements: !4263)
!4263 = !{!4264}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4262, file: !2657, line: 52, baseType: !4265, size: 256)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2657, line: 37, size: 256, elements: !4266)
!4266 = !{!4267, !4272, !4273, !4277}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4265, file: !2657, line: 39, baseType: !4268, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4269, line: 83, baseType: !4270)
!4269 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4269, line: 82, baseType: !699)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4265, file: !2657, line: 40, baseType: !295, size: 64, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4265, file: !2657, line: 46, baseType: !4274, size: 64, offset: 128)
!4274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4269, line: 86, baseType: !4275)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4269, line: 85, baseType: !895)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4265, file: !2657, line: 48, baseType: !4132, size: 64, offset: 192)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3663, file: !3308, line: 1112, baseType: !4132, size: 64, offset: 15488)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3663, file: !3308, line: 1113, baseType: !4132, size: 64, offset: 15552)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3663, file: !3308, line: 1115, baseType: !4132, size: 64, offset: 15616)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3663, file: !3308, line: 1116, baseType: !4128, size: 192, offset: 15680)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3663, file: !3308, line: 1117, baseType: !295, size: 64, offset: 15872)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3663, file: !3308, line: 1118, baseType: !1660, size: 64, offset: 15936)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3663, file: !3308, line: 1119, baseType: !7, size: 32, offset: 16000)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3663, file: !3308, line: 1121, baseType: !2136, size: 64, offset: 16064)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3663, file: !3308, line: 1125, baseType: !4287, size: 64, offset: 16128)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !3308, line: 43, flags: DIFlagFwdDecl)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3663, file: !3308, line: 1127, baseType: !1698, size: 32, offset: 16192)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3663, file: !3308, line: 1128, baseType: !7, size: 32, offset: 16224)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3663, file: !3308, line: 1130, baseType: !4292, size: 128, offset: 16256)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4293, line: 37, size: 128, elements: !4294)
!4293 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4294 = !{!4295, !4296, !4297}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4292, file: !4293, line: 38, baseType: !147, size: 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4292, file: !4293, line: 39, baseType: !1509, size: 32, offset: 32)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4292, file: !4293, line: 40, baseType: !4298, size: 64, offset: 64)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4293, line: 24, flags: DIFlagFwdDecl)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3663, file: !3308, line: 1131, baseType: !4301, size: 256, offset: 16384)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4302, line: 12, size: 256, elements: !4303)
!4302 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4303 = !{!4304, !4305, !4306, !4307}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4301, file: !4302, line: 13, baseType: !339, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4301, file: !4302, line: 14, baseType: !295, size: 64, offset: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4301, file: !4302, line: 15, baseType: !295, size: 64, offset: 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4301, file: !4302, line: 16, baseType: !574, size: 8, offset: 192)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3663, file: !3308, line: 1134, baseType: !296, size: 64, offset: 16640)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3663, file: !3308, line: 1135, baseType: !296, size: 64, offset: 16704)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3663, file: !3308, line: 1138, baseType: !1581, size: 32, offset: 16768)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3663, file: !3308, line: 1141, baseType: !1496, size: 32, offset: 16800)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3663, file: !3308, line: 1143, baseType: !4313, size: 64, offset: 16832)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !3308, line: 735, size: 64, elements: !4314)
!4314 = !{!4315}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4313, file: !3308, line: 736, baseType: !4316, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3663, file: !3308, line: 1147, baseType: !3830, size: 128, offset: 16896)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3663, file: !3308, line: 1149, baseType: !3662, size: 64, offset: 17024)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3663, file: !3308, line: 1151, baseType: !4320, size: 64, offset: 17088)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !3308, line: 1151, flags: DIFlagFwdDecl)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3663, file: !3308, line: 1188, baseType: !218, size: 64, offset: 17152)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3663, file: !3308, line: 1191, baseType: !4324, size: 64, offset: 17216)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !3308, line: 44, flags: DIFlagFwdDecl)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3663, file: !3308, line: 1194, baseType: !4327, size: 64, offset: 17280)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !3308, line: 45, flags: DIFlagFwdDecl)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3663, file: !3308, line: 1197, baseType: !4330, size: 64, offset: 17344)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !3308, line: 61, flags: DIFlagFwdDecl)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3663, file: !3308, line: 1199, baseType: !4333, size: 64, offset: 17408)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4335, line: 99, size: 128, elements: !4336)
!4335 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4336 = !{!4337, !4338, !4339}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4334, file: !4335, line: 100, baseType: !1486, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4334, file: !4335, line: 101, baseType: !1509, size: 32, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4334, file: !4335, line: 103, baseType: !263, size: 16, offset: 96)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3663, file: !3308, line: 1202, baseType: !4341, size: 64, offset: 17472)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !3308, line: 48, flags: DIFlagFwdDecl)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3663, file: !3308, line: 1205, baseType: !295, size: 64, offset: 17536)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3663, file: !3308, line: 1206, baseType: !4345, size: 64, offset: 17600)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2657, line: 14, baseType: !4347)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2657, line: 12, size: 384, elements: !4348)
!4348 = !{!4349}
!4349 = !DIDerivedType(tag: DW_TAG_member, scope: !4347, file: !2657, line: 13, baseType: !4350, size: 384)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4347, file: !2657, line: 13, size: 384, elements: !4351)
!4351 = !{!4352, !4353, !4354, !4355}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4350, file: !2657, line: 13, baseType: !147, size: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4350, file: !2657, line: 13, baseType: !147, size: 32, offset: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4350, file: !2657, line: 13, baseType: !147, size: 32, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4350, file: !2657, line: 13, baseType: !4356, size: 256, offset: 128)
!4356 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4357, line: 37, size: 256, elements: !4358)
!4357 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4358 = !{!4359, !4364, !4377, !4383, !4392, !4418, !4423}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4356, file: !4357, line: 42, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4356, file: !4357, line: 39, size: 64, elements: !4361)
!4361 = !{!4362, !4363}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4360, file: !4357, line: 40, baseType: !4031, size: 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4360, file: !4357, line: 41, baseType: !1704, size: 32, offset: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4356, file: !4357, line: 50, baseType: !4365, size: 192)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4356, file: !4357, line: 45, size: 192, elements: !4366)
!4366 = !{!4367, !4369, !4370, !4376}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4365, file: !4357, line: 46, baseType: !4368, size: 32)
!4368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !1648, line: 95, baseType: !147)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4365, file: !4357, line: 47, baseType: !147, size: 32, offset: 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4365, file: !4357, line: 48, baseType: !4371, size: 64, offset: 64)
!4371 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4357, line: 11, baseType: !4372)
!4372 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4357, line: 8, size: 64, elements: !4373)
!4373 = !{!4374, !4375}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4372, file: !4357, line: 9, baseType: !147, size: 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4372, file: !4357, line: 10, baseType: !218, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4365, file: !4357, line: 49, baseType: !147, size: 32, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4356, file: !4357, line: 57, baseType: !4378, size: 128)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4356, file: !4357, line: 53, size: 128, elements: !4379)
!4379 = !{!4380, !4381, !4382}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4378, file: !4357, line: 54, baseType: !4031, size: 32)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4378, file: !4357, line: 55, baseType: !1704, size: 32, offset: 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4378, file: !4357, line: 56, baseType: !4371, size: 64, offset: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4356, file: !4357, line: 66, baseType: !4384, size: 256)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4356, file: !4357, line: 60, size: 256, elements: !4385)
!4385 = !{!4386, !4387, !4388, !4389, !4391}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4384, file: !4357, line: 61, baseType: !4031, size: 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4384, file: !4357, line: 62, baseType: !1704, size: 32, offset: 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4384, file: !4357, line: 63, baseType: !147, size: 32, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4384, file: !4357, line: 64, baseType: !4390, size: 64, offset: 128)
!4390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !1648, line: 94, baseType: !1649)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4384, file: !4357, line: 65, baseType: !4390, size: 64, offset: 192)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4356, file: !4357, line: 105, baseType: !4393, size: 256)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4356, file: !4357, line: 69, size: 256, elements: !4394)
!4394 = !{!4395, !4396}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4393, file: !4357, line: 70, baseType: !218, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, scope: !4393, file: !4357, line: 79, baseType: !4397, size: 192, offset: 64)
!4397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4393, file: !4357, line: 79, size: 192, elements: !4398)
!4398 = !{!4399, !4400, !4401, !4407, !4412}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4397, file: !4357, line: 81, baseType: !147, size: 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4397, file: !4357, line: 86, baseType: !2055, size: 16)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4397, file: !4357, line: 92, baseType: !4402, size: 192)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4397, file: !4357, line: 88, size: 192, elements: !4403)
!4403 = !{!4404, !4405, !4406}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4402, file: !4357, line: 89, baseType: !814, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4402, file: !4357, line: 90, baseType: !218, size: 64, offset: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4402, file: !4357, line: 91, baseType: !218, size: 64, offset: 128)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4397, file: !4357, line: 97, baseType: !4408, size: 96)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4397, file: !4357, line: 94, size: 96, elements: !4409)
!4409 = !{!4410, !4411}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4408, file: !4357, line: 95, baseType: !814, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4408, file: !4357, line: 96, baseType: !1762, size: 32, offset: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4397, file: !4357, line: 103, baseType: !4413, size: 128)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4397, file: !4357, line: 99, size: 128, elements: !4414)
!4414 = !{!4415, !4416, !4417}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4413, file: !4357, line: 100, baseType: !295, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4413, file: !4357, line: 101, baseType: !1762, size: 32, offset: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4413, file: !4357, line: 102, baseType: !1762, size: 32, offset: 96)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4356, file: !4357, line: 111, baseType: !4419, size: 128)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4356, file: !4357, line: 108, size: 128, elements: !4420)
!4420 = !{!4421, !4422}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4419, file: !4357, line: 109, baseType: !224, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4419, file: !4357, line: 110, baseType: !147, size: 32, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4356, file: !4357, line: 118, baseType: !4424, size: 128)
!4424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4356, file: !4357, line: 114, size: 128, elements: !4425)
!4425 = !{!4426, !4427, !4428}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4424, file: !4357, line: 115, baseType: !218, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4424, file: !4357, line: 116, baseType: !147, size: 32, offset: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4424, file: !4357, line: 117, baseType: !7, size: 32, offset: 96)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3663, file: !3308, line: 1208, baseType: !4212, size: 448, offset: 17664)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3663, file: !3308, line: 1215, baseType: !296, size: 64, offset: 18112)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3663, file: !3308, line: 1217, baseType: !296, size: 64, offset: 18176)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3663, file: !3308, line: 1219, baseType: !296, size: 64, offset: 18240)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3663, file: !3308, line: 1223, baseType: !4434, size: 64, offset: 18304)
!4434 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4435, line: 99, baseType: !4436)
!4435 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4435, line: 99, size: 64, elements: !4437)
!4437 = !{!4438}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4436, file: !4435, line: 99, baseType: !3898, size: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3663, file: !3308, line: 1225, baseType: !1733, size: 32, offset: 18368)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3663, file: !3308, line: 1226, baseType: !147, size: 32, offset: 18400)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3663, file: !3308, line: 1227, baseType: !147, size: 32, offset: 18432)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3663, file: !3308, line: 1231, baseType: !4443, size: 64, offset: 18496)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3308, line: 1231, flags: DIFlagFwdDecl)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3663, file: !3308, line: 1233, baseType: !1471, size: 128, offset: 18560)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3663, file: !3308, line: 1240, baseType: !4447, size: 64, offset: 18688)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !3308, line: 62, flags: DIFlagFwdDecl)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3663, file: !3308, line: 1242, baseType: !4450, size: 64, offset: 18752)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !4452, line: 392, size: 96, elements: !4453)
!4452 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!4453 = !{!4454, !4460, !4462}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4451, file: !4452, line: 393, baseType: !4455, size: 32)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !4452, line: 388, size: 32, elements: !4456)
!4456 = !{!4457}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4455, file: !4452, line: 389, baseType: !4458, size: 32)
!4458 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !4459, line: 46, baseType: !1761)
!4459 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !4451, file: !4452, line: 394, baseType: !4461, size: 32, offset: 32)
!4461 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !4459, line: 42, baseType: !1941)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !4451, file: !4452, line: 395, baseType: !4458, size: 32, offset: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3663, file: !3308, line: 1244, baseType: !1471, size: 128, offset: 18816)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3663, file: !3308, line: 1245, baseType: !4465, size: 64, offset: 18944)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !3308, line: 51, flags: DIFlagFwdDecl)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3663, file: !3308, line: 1246, baseType: !1482, size: 256, offset: 19008)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3663, file: !3308, line: 1247, baseType: !7, size: 32, offset: 19264)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3663, file: !3308, line: 1250, baseType: !4470, size: 64, offset: 19328)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !3308, line: 57, flags: DIFlagFwdDecl)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3663, file: !3308, line: 1251, baseType: !1482, size: 256, offset: 19392)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3663, file: !3308, line: 1252, baseType: !1471, size: 128, offset: 19648)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3663, file: !3308, line: 1259, baseType: !3256, size: 64, offset: 19776)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3663, file: !3308, line: 1260, baseType: !2055, size: 16, offset: 19840)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3663, file: !3308, line: 1261, baseType: !2055, size: 16, offset: 19856)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3663, file: !3308, line: 1314, baseType: !4478, size: 64, offset: 19904)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4480, line: 62, size: 256, align: 256, elements: !4481)
!4480 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4481 = !{!4482, !4483, !4484, !4485, !4486, !4487, !4488}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4479, file: !4480, line: 75, baseType: !1762, size: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4479, file: !4480, line: 90, baseType: !1762, size: 32, offset: 32)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4479, file: !4480, line: 112, baseType: !298, size: 64, offset: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4479, file: !4480, line: 132, baseType: !1762, size: 32, offset: 128)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4479, file: !4480, line: 140, baseType: !1762, size: 32, offset: 160)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4479, file: !4480, line: 149, baseType: !1762, size: 32, offset: 192)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4479, file: !4480, line: 154, baseType: !4489, offset: 224)
!4489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, elements: !2467)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3663, file: !3308, line: 1315, baseType: !1761, size: 32, offset: 19968)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3663, file: !3308, line: 1316, baseType: !1761, size: 32, offset: 20000)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3663, file: !3308, line: 1321, baseType: !295, size: 64, offset: 20032)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3663, file: !3308, line: 1325, baseType: !147, size: 32, offset: 20096)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3663, file: !3308, line: 1326, baseType: !147, size: 32, offset: 20128)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3663, file: !3308, line: 1327, baseType: !147, size: 32, offset: 20160)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3663, file: !3308, line: 1328, baseType: !147, size: 32, offset: 20192)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3663, file: !3308, line: 1329, baseType: !2137, size: 128, align: 64, offset: 20224)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3663, file: !3308, line: 1332, baseType: !4499, size: 128, offset: 20352)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4500, line: 51, size: 128, elements: !4501)
!4500 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4501 = !{!4502, !4507, !4508}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4499, file: !4500, line: 60, baseType: !4503, size: 64)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4504, line: 7, size: 64, elements: !4505)
!4504 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4505 = !{!4506}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4503, file: !4504, line: 12, baseType: !3895, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4499, file: !4500, line: 63, baseType: !574, size: 8, offset: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4499, file: !4500, line: 70, baseType: !574, size: 8, offset: 72)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3663, file: !3308, line: 1335, baseType: !3306, size: 64, offset: 20480)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3663, file: !3308, line: 1337, baseType: !4511, size: 128, offset: 20544)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4500, line: 39, size: 128, elements: !4512)
!4512 = !{!4513, !4514, !4515}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4511, file: !4500, line: 40, baseType: !3095, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4511, file: !4500, line: 42, baseType: !1762, size: 32, offset: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4511, file: !4500, line: 43, baseType: !1762, size: 32, offset: 96)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3663, file: !3308, line: 1340, baseType: !4517, size: 64, offset: 20672)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !3308, line: 69, flags: DIFlagFwdDecl)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3663, file: !3308, line: 1351, baseType: !147, size: 32, offset: 20736)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3663, file: !3308, line: 1352, baseType: !147, size: 32, offset: 20768)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3663, file: !3308, line: 1354, baseType: !295, size: 64, offset: 20800)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3663, file: !3308, line: 1364, baseType: !296, size: 64, offset: 20864)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3663, file: !3308, line: 1365, baseType: !296, size: 64, offset: 20928)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3663, file: !3308, line: 1412, baseType: !295, size: 64, offset: 20992)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3663, file: !3308, line: 1453, baseType: !4526, size: 64, offset: 21056)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !3308, line: 1453, flags: DIFlagFwdDecl)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3663, file: !3308, line: 1457, baseType: !4529, size: 64, offset: 21120)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !106, line: 61, size: 576, elements: !4531)
!4531 = !{!4532, !4533, !4552, !4555, !4556, !4589, !4599}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4530, file: !106, line: 62, baseType: !105, size: 32)
!4533 = !DIDerivedType(tag: DW_TAG_member, scope: !4530, file: !106, line: 64, baseType: !4534, size: 192, offset: 64)
!4534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4530, file: !106, line: 64, size: 192, elements: !4535)
!4535 = !{!4536, !4547}
!4536 = !DIDerivedType(tag: DW_TAG_member, scope: !4534, file: !106, line: 65, baseType: !4537, size: 192)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4534, file: !106, line: 65, size: 192, elements: !4538)
!4538 = !{!4539, !4546}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4537, file: !106, line: 66, baseType: !4540, size: 128)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4541, line: 50, size: 128, elements: !4542)
!4541 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4542 = !{!4543, !4544, !4545}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4540, file: !4541, line: 52, baseType: !295, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4540, file: !4541, line: 54, baseType: !7, size: 32, offset: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4540, file: !4541, line: 55, baseType: !7, size: 32, offset: 96)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4537, file: !106, line: 67, baseType: !295, size: 64, offset: 128)
!4547 = !DIDerivedType(tag: DW_TAG_member, scope: !4534, file: !106, line: 70, baseType: !4548, size: 192)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4534, file: !106, line: 70, size: 192, elements: !4549)
!4549 = !{!4550, !4551}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4548, file: !106, line: 71, baseType: !2137, size: 128, align: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4548, file: !106, line: 72, baseType: !295, size: 64, offset: 128)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4530, file: !106, line: 76, baseType: !4553, size: 64, offset: 256)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !106, line: 76, flags: DIFlagFwdDecl)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4530, file: !106, line: 77, baseType: !295, size: 64, offset: 320)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4530, file: !106, line: 79, baseType: !4557, size: 64, offset: 384)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4541, line: 25, size: 256, elements: !4559)
!4559 = !{!4560, !4566, !4570}
!4560 = !DIDerivedType(tag: DW_TAG_member, scope: !4558, file: !4541, line: 26, baseType: !4561, size: 128)
!4561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4558, file: !4541, line: 26, size: 128, elements: !4562)
!4562 = !{!4563, !4565}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4561, file: !4541, line: 27, baseType: !4564, size: 128)
!4564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 128, elements: !431)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4561, file: !4541, line: 28, baseType: !4564, size: 128)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4558, file: !4541, line: 31, baseType: !4567, size: 64, offset: 128)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4569)
!4569 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4541, line: 23, flags: DIFlagFwdDecl)
!4570 = !DIDerivedType(tag: DW_TAG_member, scope: !4558, file: !4541, line: 33, baseType: !4571, size: 64, offset: 192)
!4571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4558, file: !4541, line: 33, size: 64, elements: !4572)
!4572 = !{!4573, !4579, !4584}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4571, file: !4541, line: 38, baseType: !4574, size: 64)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4571, file: !4541, line: 34, size: 64, elements: !4575)
!4575 = !{!4576, !4577, !4578}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4574, file: !4541, line: 35, baseType: !1941, size: 32)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4574, file: !4541, line: 36, baseType: !555, size: 8, offset: 32)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4574, file: !4541, line: 37, baseType: !555, size: 8, offset: 40)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4571, file: !4541, line: 42, baseType: !4580, size: 16)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4571, file: !4541, line: 39, size: 16, elements: !4581)
!4581 = !{!4582, !4583}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4580, file: !4541, line: 40, baseType: !555, size: 8)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4580, file: !4541, line: 41, baseType: !555, size: 8, offset: 8)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4571, file: !4541, line: 46, baseType: !4585, size: 16)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4571, file: !4541, line: 43, size: 16, elements: !4586)
!4586 = !{!4587, !4588}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4585, file: !4541, line: 44, baseType: !555, size: 8)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4585, file: !4541, line: 45, baseType: !555, size: 8, offset: 8)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4530, file: !106, line: 81, baseType: !4590, size: 64, offset: 448)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !106, line: 85, size: 384, elements: !4592)
!4592 = !{!4593, !4594, !4595, !4596, !4597, !4598}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4591, file: !106, line: 86, baseType: !4553, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4591, file: !106, line: 87, baseType: !295, size: 64, offset: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4591, file: !106, line: 88, baseType: !295, size: 64, offset: 128)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4591, file: !106, line: 89, baseType: !295, size: 64, offset: 192)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4591, file: !106, line: 90, baseType: !574, size: 8, offset: 256)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4591, file: !106, line: 92, baseType: !4590, size: 64, offset: 320)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4530, file: !106, line: 82, baseType: !7, size: 32, offset: 512)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3663, file: !3308, line: 1463, baseType: !4601, offset: 21184)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !3308, line: 739, elements: !603)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3663, file: !3308, line: 1470, baseType: !2137, size: 128, align: 64, offset: 21184)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3663, file: !3308, line: 1471, baseType: !2441, size: 32, offset: 21312)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3663, file: !3308, line: 1472, baseType: !147, size: 32, offset: 21344)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3663, file: !3308, line: 1474, baseType: !3662, size: 64, offset: 21376)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3663, file: !3308, line: 1475, baseType: !2157, size: 320, offset: 21440)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3663, file: !3308, line: 1478, baseType: !4608, size: 64, offset: 21760)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4610, line: 49, size: 512, elements: !4611)
!4610 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4611 = !{!4612, !4613, !4614, !4615, !4616, !4618, !4619, !4620, !4621}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4609, file: !4610, line: 50, baseType: !4608, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4609, file: !4610, line: 51, baseType: !218, size: 64, offset: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4609, file: !4610, line: 52, baseType: !295, size: 64, offset: 128)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4609, file: !4610, line: 53, baseType: !295, size: 64, offset: 192)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4609, file: !4610, line: 54, baseType: !4617, size: 64, offset: 256)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4609, file: !4610, line: 56, baseType: !7, size: 32, offset: 320)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4609, file: !4610, line: 58, baseType: !7, size: 32, offset: 352)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4609, file: !4610, line: 59, baseType: !690, size: 64, offset: 384)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4609, file: !4610, line: 60, baseType: !1561, size: 64, offset: 448)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3663, file: !3308, line: 1482, baseType: !2441, size: 32, offset: 21824)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3663, file: !3308, line: 1489, baseType: !218, size: 64, offset: 21888)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3663, file: !3308, line: 1504, baseType: !218, size: 64, offset: 21952)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3663, file: !3308, line: 1505, baseType: !298, size: 64, offset: 22016)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3663, file: !3308, line: 1506, baseType: !296, size: 64, offset: 22080)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3663, file: !3308, line: 1507, baseType: !298, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3663, file: !3308, line: 1508, baseType: !298, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3663, file: !3308, line: 1509, baseType: !298, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3663, file: !3308, line: 1510, baseType: !2137, size: 128, align: 64, offset: 22208)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3663, file: !3308, line: 1511, baseType: !147, size: 32, offset: 22336)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3663, file: !3308, line: 1515, baseType: !4633, size: 64, offset: 22400)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !2399, line: 56, size: 64, elements: !4634)
!4634 = !{!4635}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4633, file: !2399, line: 57, baseType: !2402, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3663, file: !3308, line: 1518, baseType: !4633, size: 64, offset: 22464)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3663, file: !3308, line: 1528, baseType: !2137, size: 128, align: 64, offset: 22528)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3663, file: !3308, line: 1552, baseType: !4639, size: 35328, offset: 23040)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4640, line: 430, size: 35328, elements: !4641)
!4640 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4641 = !{!4642, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4671, !4672, !4673, !4674, !4675, !4676, !4679, !4680, !4681, !4682}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4639, file: !4640, line: 432, baseType: !4643, size: 192)
!4643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4644, size: 192, elements: !482)
!4644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4645, line: 16, size: 64, elements: !4646)
!4645 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4646 = !{!4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4644, file: !4645, line: 17, baseType: !1522, size: 16)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4644, file: !4645, line: 18, baseType: !1522, size: 16, offset: 16)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4644, file: !4645, line: 19, baseType: !1522, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4644, file: !4645, line: 19, baseType: !1522, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4644, file: !4645, line: 19, baseType: !1522, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4644, file: !4645, line: 19, baseType: !1522, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4644, file: !4645, line: 19, baseType: !1522, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4644, file: !4645, line: 20, baseType: !1522, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4644, file: !4645, line: 20, baseType: !1522, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4644, file: !4645, line: 20, baseType: !1522, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4644, file: !4645, line: 20, baseType: !1522, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4644, file: !4645, line: 20, baseType: !1522, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4644, file: !4645, line: 20, baseType: !1522, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4639, file: !4640, line: 436, baseType: !295, size: 64, offset: 192)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4639, file: !4640, line: 440, baseType: !263, size: 16, offset: 256)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4639, file: !4640, line: 441, baseType: !263, size: 16, offset: 272)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4639, file: !4640, line: 442, baseType: !263, size: 16, offset: 288)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4639, file: !4640, line: 443, baseType: !263, size: 16, offset: 304)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4639, file: !4640, line: 447, baseType: !295, size: 64, offset: 320)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4639, file: !4640, line: 448, baseType: !295, size: 64, offset: 384)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4639, file: !4640, line: 459, baseType: !4668, size: 256, offset: 448)
!4668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4669, size: 256, elements: !283)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4640, line: 428, flags: DIFlagFwdDecl)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4639, file: !4640, line: 461, baseType: !295, size: 64, offset: 704)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4639, file: !4640, line: 463, baseType: !295, size: 64, offset: 768)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4639, file: !4640, line: 465, baseType: !295, size: 64, offset: 832)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4639, file: !4640, line: 466, baseType: !295, size: 64, offset: 896)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4639, file: !4640, line: 467, baseType: !295, size: 64, offset: 960)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4639, file: !4640, line: 473, baseType: !4677, size: 64, offset: 1024)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4640, line: 10, flags: DIFlagFwdDecl)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4639, file: !4640, line: 480, baseType: !295, size: 64, offset: 1088)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4639, file: !4640, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4639, file: !4640, line: 491, baseType: !1761, size: 32, offset: 1184)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4639, file: !4640, line: 501, baseType: !4683, size: 33792, offset: 1536)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4684, line: 448, size: 33792, elements: !4685)
!4684 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4685 = !{!4686, !4687, !4688, !4846, !4847, !4853, !4854}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4683, file: !4684, line: 461, baseType: !7, size: 32)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4683, file: !4684, line: 468, baseType: !295, size: 64, offset: 64)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4683, file: !4684, line: 476, baseType: !4689, size: 64, offset: 128)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4684, line: 356, size: 33280, align: 512, elements: !4691)
!4691 = !{!4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4690, file: !4684, line: 358, baseType: !7, size: 32)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4690, file: !4684, line: 361, baseType: !7, size: 32, offset: 32)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4690, file: !4684, line: 364, baseType: !296, size: 64, offset: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4690, file: !4684, line: 367, baseType: !296, size: 64, offset: 128)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4690, file: !4684, line: 370, baseType: !296, size: 64, offset: 192)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4690, file: !4684, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4690, file: !4684, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4690, file: !4684, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4690, file: !4684, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4690, file: !4684, line: 397, baseType: !4702, size: 32768, offset: 512)
!4702 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4684, line: 348, size: 32768, elements: !4703)
!4703 = !{!4704, !4717, !4752, !4829, !4842}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4702, file: !4684, line: 349, baseType: !4705, size: 896)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4684, line: 12, size: 896, elements: !4706)
!4706 = !{!4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4716}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4705, file: !4684, line: 13, baseType: !1761, size: 32)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4705, file: !4684, line: 14, baseType: !1761, size: 32, offset: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4705, file: !4684, line: 15, baseType: !1761, size: 32, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4705, file: !4684, line: 16, baseType: !1761, size: 32, offset: 96)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4705, file: !4684, line: 17, baseType: !1761, size: 32, offset: 128)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4705, file: !4684, line: 18, baseType: !1761, size: 32, offset: 160)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4705, file: !4684, line: 19, baseType: !1761, size: 32, offset: 192)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4705, file: !4684, line: 22, baseType: !4715, size: 640, offset: 224)
!4715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1761, size: 640, elements: !562)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4705, file: !4684, line: 25, baseType: !1761, size: 32, offset: 864)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4702, file: !4684, line: 350, baseType: !4718, size: 4096, align: 128)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4684, line: 34, size: 4096, align: 128, elements: !4719)
!4719 = !{!4720, !4721, !4722, !4723, !4724, !4739, !4740, !4741, !4743, !4745, !4747}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4718, file: !4684, line: 35, baseType: !1522, size: 16)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4718, file: !4684, line: 36, baseType: !1522, size: 16, offset: 16)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4718, file: !4684, line: 37, baseType: !1522, size: 16, offset: 32)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4718, file: !4684, line: 38, baseType: !1522, size: 16, offset: 48)
!4724 = !DIDerivedType(tag: DW_TAG_member, scope: !4718, file: !4684, line: 39, baseType: !4725, size: 128, offset: 64)
!4725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4718, file: !4684, line: 39, size: 128, elements: !4726)
!4726 = !{!4727, !4732}
!4727 = !DIDerivedType(tag: DW_TAG_member, scope: !4725, file: !4684, line: 40, baseType: !4728, size: 128)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4725, file: !4684, line: 40, size: 128, elements: !4729)
!4729 = !{!4730, !4731}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4728, file: !4684, line: 41, baseType: !296, size: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4728, file: !4684, line: 42, baseType: !296, size: 64, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, scope: !4725, file: !4684, line: 44, baseType: !4733, size: 128)
!4733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4725, file: !4684, line: 44, size: 128, elements: !4734)
!4734 = !{!4735, !4736, !4737, !4738}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4733, file: !4684, line: 45, baseType: !1761, size: 32)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4733, file: !4684, line: 46, baseType: !1761, size: 32, offset: 32)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4733, file: !4684, line: 47, baseType: !1761, size: 32, offset: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4733, file: !4684, line: 48, baseType: !1761, size: 32, offset: 96)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4718, file: !4684, line: 51, baseType: !1761, size: 32, offset: 192)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4718, file: !4684, line: 52, baseType: !1761, size: 32, offset: 224)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4718, file: !4684, line: 55, baseType: !4742, size: 1024, offset: 256)
!4742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1761, size: 1024, elements: !315)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4718, file: !4684, line: 58, baseType: !4744, size: 2048, offset: 1280)
!4744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1761, size: 2048, elements: !1619)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4718, file: !4684, line: 60, baseType: !4746, size: 384, offset: 3328)
!4746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1761, size: 384, elements: !819)
!4747 = !DIDerivedType(tag: DW_TAG_member, scope: !4718, file: !4684, line: 62, baseType: !4748, size: 384, offset: 3712)
!4748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4718, file: !4684, line: 62, size: 384, elements: !4749)
!4749 = !{!4750, !4751}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4748, file: !4684, line: 63, baseType: !4746, size: 384)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4748, file: !4684, line: 64, baseType: !4746, size: 384)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4702, file: !4684, line: 351, baseType: !4753, size: 1088)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4684, line: 79, size: 1088, elements: !4754)
!4754 = !{!4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4828}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4753, file: !4684, line: 80, baseType: !1761, size: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4753, file: !4684, line: 81, baseType: !1761, size: 32, offset: 32)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4753, file: !4684, line: 82, baseType: !1761, size: 32, offset: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4753, file: !4684, line: 83, baseType: !1761, size: 32, offset: 96)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4753, file: !4684, line: 84, baseType: !1761, size: 32, offset: 128)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4753, file: !4684, line: 85, baseType: !1761, size: 32, offset: 160)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4753, file: !4684, line: 86, baseType: !1761, size: 32, offset: 192)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4753, file: !4684, line: 88, baseType: !4715, size: 640, offset: 224)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4753, file: !4684, line: 89, baseType: !555, size: 8, offset: 864)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4753, file: !4684, line: 90, baseType: !555, size: 8, offset: 872)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4753, file: !4684, line: 91, baseType: !555, size: 8, offset: 880)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4753, file: !4684, line: 92, baseType: !555, size: 8, offset: 888)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4753, file: !4684, line: 93, baseType: !555, size: 8, offset: 896)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4753, file: !4684, line: 94, baseType: !555, size: 8, offset: 904)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4753, file: !4684, line: 95, baseType: !4770, size: 64, offset: 960)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4772, line: 11, size: 128, elements: !4773)
!4772 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4773 = !{!4774, !4775}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4771, file: !4772, line: 12, baseType: !224, size: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4771, file: !4772, line: 13, baseType: !4776, size: 64, offset: 64)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4778, line: 103, size: 1344, elements: !4779)
!4778 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4779 = !{!4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4808, !4809, !4810}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4777, file: !4778, line: 109, baseType: !295, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4777, file: !4778, line: 110, baseType: !295, size: 64, offset: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4777, file: !4778, line: 111, baseType: !295, size: 64, offset: 128)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4777, file: !4778, line: 112, baseType: !295, size: 64, offset: 192)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4777, file: !4778, line: 113, baseType: !295, size: 64, offset: 256)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4777, file: !4778, line: 114, baseType: !295, size: 64, offset: 320)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4777, file: !4778, line: 117, baseType: !295, size: 64, offset: 384)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4777, file: !4778, line: 118, baseType: !295, size: 64, offset: 448)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4777, file: !4778, line: 119, baseType: !295, size: 64, offset: 512)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4777, file: !4778, line: 120, baseType: !295, size: 64, offset: 576)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4777, file: !4778, line: 121, baseType: !295, size: 64, offset: 640)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4777, file: !4778, line: 122, baseType: !295, size: 64, offset: 704)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4777, file: !4778, line: 123, baseType: !295, size: 64, offset: 768)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4777, file: !4778, line: 124, baseType: !295, size: 64, offset: 832)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4777, file: !4778, line: 125, baseType: !295, size: 64, offset: 896)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4777, file: !4778, line: 139, baseType: !295, size: 64, offset: 960)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4777, file: !4778, line: 142, baseType: !295, size: 64, offset: 1024)
!4797 = !DIDerivedType(tag: DW_TAG_member, scope: !4777, file: !4778, line: 144, baseType: !4798, size: 64, offset: 1088)
!4798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4777, file: !4778, line: 144, size: 64, elements: !4799)
!4799 = !{!4800, !4801, !4802}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4798, file: !4778, line: 146, baseType: !1522, size: 16)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4798, file: !4778, line: 148, baseType: !296, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4798, file: !4778, line: 150, baseType: !4803, size: 64)
!4803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4778, line: 59, size: 64, elements: !4804)
!4804 = !{!4805, !4806, !4807}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4803, file: !4778, line: 61, baseType: !296, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4803, file: !4778, line: 63, baseType: !296, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4803, file: !4778, line: 65, baseType: !296, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4777, file: !4778, line: 153, baseType: !295, size: 64, offset: 1152)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4777, file: !4778, line: 154, baseType: !295, size: 64, offset: 1216)
!4810 = !DIDerivedType(tag: DW_TAG_member, scope: !4777, file: !4778, line: 156, baseType: !4811, size: 64, offset: 1280)
!4811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4777, file: !4778, line: 156, size: 64, elements: !4812)
!4812 = !{!4813, !4814, !4815}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4811, file: !4778, line: 158, baseType: !1522, size: 16)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4811, file: !4778, line: 160, baseType: !296, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4811, file: !4778, line: 162, baseType: !4816, size: 64)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4778, line: 69, size: 64, elements: !4817)
!4817 = !{!4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4816, file: !4778, line: 71, baseType: !296, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4816, file: !4778, line: 73, baseType: !296, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4816, file: !4778, line: 75, baseType: !296, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4816, file: !4778, line: 77, baseType: !296, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4816, file: !4778, line: 80, baseType: !296, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4816, file: !4778, line: 83, baseType: !296, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4816, file: !4778, line: 86, baseType: !296, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4816, file: !4778, line: 88, baseType: !296, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4816, file: !4778, line: 93, baseType: !296, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4816, file: !4778, line: 100, baseType: !296, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4753, file: !4684, line: 96, baseType: !1761, size: 32, offset: 1024)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4702, file: !4684, line: 352, baseType: !4830, size: 4608, align: 512)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4684, line: 333, size: 4608, align: 512, elements: !4831)
!4831 = !{!4832, !4833, !4840}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4830, file: !4684, line: 334, baseType: !4718, size: 4096, align: 128)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4830, file: !4684, line: 335, baseType: !4834, size: 512, offset: 4096)
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4684, line: 312, size: 512, elements: !4835)
!4835 = !{!4836, !4837, !4838}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4834, file: !4684, line: 313, baseType: !296, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4834, file: !4684, line: 314, baseType: !296, size: 64, offset: 64)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4834, file: !4684, line: 315, baseType: !4839, size: 384, offset: 128)
!4839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 384, elements: !247)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4830, file: !4684, line: 336, baseType: !4841, offset: 4608)
!4841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, elements: !2467)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4702, file: !4684, line: 353, baseType: !4843, size: 32768)
!4843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 32768, elements: !4844)
!4844 = !{!4845}
!4845 = !DISubrange(count: 4096)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4683, file: !4684, line: 484, baseType: !4689, size: 64, offset: 192)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4683, file: !4684, line: 491, baseType: !4848, size: 128, offset: 256)
!4848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4684, line: 404, size: 128, elements: !4849)
!4849 = !{!4850, !4851, !4852}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4848, file: !4684, line: 424, baseType: !296, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4848, file: !4684, line: 432, baseType: !7, size: 32, offset: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4848, file: !4684, line: 440, baseType: !7, size: 32, offset: 96)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4683, file: !4684, line: 498, baseType: !4848, size: 128, offset: 384)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4683, file: !4684, line: 508, baseType: !4690, size: 33280, align: 512, offset: 512)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3645, file: !3646, line: 16, baseType: !2452, size: 192, offset: 512)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3645, file: !3646, line: 17, baseType: !1509, size: 32, offset: 704)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1839, file: !52, line: 1240, baseType: !218, size: 64, offset: 6912)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1839, file: !52, line: 1243, baseType: !1761, size: 32, offset: 6976)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1839, file: !52, line: 1245, baseType: !2531, size: 64, offset: 7040)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1839, file: !52, line: 1246, baseType: !2531, size: 64, offset: 7104)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1839, file: !52, line: 1248, baseType: !1762, size: 32, offset: 7168)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1839, file: !52, line: 1249, baseType: !4863, size: 64, offset: 7232)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !52, line: 634, flags: DIFlagFwdDecl)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1839, file: !52, line: 1252, baseType: !314, size: 256, offset: 7296)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1839, file: !52, line: 1253, baseType: !4867, size: 128, offset: 7552)
!4867 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4868, line: 21, baseType: !4869)
!4868 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4868, line: 19, size: 128, elements: !4870)
!4870 = !{!4871}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4869, file: !4868, line: 20, baseType: !4872, size: 128)
!4872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 128, elements: !431)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1839, file: !52, line: 1255, baseType: !7, size: 32, offset: 7680)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1839, file: !52, line: 1261, baseType: !1482, size: 256, offset: 7744)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1839, file: !52, line: 1267, baseType: !333, size: 64, offset: 8000)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1839, file: !52, line: 1269, baseType: !1785, size: 64, offset: 8064)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1839, file: !52, line: 1271, baseType: !4878, size: 448, offset: 8128)
!4878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3425, line: 63, size: 448, elements: !4879)
!4879 = !{!4880, !4885, !4886, !4887, !4888, !4889, !4890}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4878, file: !3425, line: 64, baseType: !4881, size: 64)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!295, !4884, !3423}
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4878, file: !3425, line: 66, baseType: !4881, size: 64, offset: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4878, file: !3425, line: 69, baseType: !224, size: 64, offset: 128)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4878, file: !3425, line: 70, baseType: !147, size: 32, offset: 192)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4878, file: !3425, line: 71, baseType: !7, size: 32, offset: 224)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4878, file: !3425, line: 74, baseType: !1471, size: 128, offset: 256)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4878, file: !3425, line: 85, baseType: !4891, size: 64, offset: 384)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1839, file: !52, line: 1274, baseType: !1486, size: 64, offset: 8576)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1839, file: !52, line: 1280, baseType: !1486, size: 64, offset: 8640)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1839, file: !52, line: 1283, baseType: !147, size: 32, offset: 8704)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1839, file: !52, line: 1286, baseType: !3357, size: 32, offset: 8736)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1839, file: !52, line: 1289, baseType: !2236, size: 64, offset: 8768)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1839, file: !52, line: 1290, baseType: !2282, size: 64, offset: 8832)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1839, file: !52, line: 1297, baseType: !2652, size: 64, offset: 8896)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1839, file: !52, line: 1304, baseType: !4900, size: 64, offset: 8960)
!4900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4901, line: 49, size: 64, elements: !4902)
!4901 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4902 = !{!4903}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4900, file: !4901, line: 50, baseType: !4904, size: 64)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4901, line: 41, size: 512, align: 512, elements: !4906)
!4906 = !{!4907, !4908, !4913}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4905, file: !4901, line: 43, baseType: !1581, size: 32)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4905, file: !4901, line: 45, baseType: !4909, size: 192, offset: 64)
!4909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4901, line: 29, size: 192, elements: !4910)
!4910 = !{!4911, !4912}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4909, file: !4901, line: 30, baseType: !1471, size: 128)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4909, file: !4901, line: 32, baseType: !224, size: 64, offset: 128)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4905, file: !4901, line: 46, baseType: !224, size: 64, offset: 256)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1839, file: !52, line: 1305, baseType: !4900, size: 64, offset: 9024)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1839, file: !52, line: 1306, baseType: !2137, size: 128, align: 64, offset: 9088)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1839, file: !52, line: 1307, baseType: !2175, size: 256, offset: 9216)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1839, file: !52, line: 1309, baseType: !1482, size: 256, offset: 9472)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1839, file: !52, line: 1314, baseType: !147, size: 32, offset: 9728)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1839, file: !52, line: 1317, baseType: !1581, size: 32, align: 512, offset: 10240)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1839, file: !52, line: 1318, baseType: !1471, size: 128, offset: 10304)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1839, file: !52, line: 1320, baseType: !1581, size: 32, offset: 10432)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1839, file: !52, line: 1321, baseType: !1471, size: 128, offset: 10496)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1833, file: !1834, line: 73, baseType: !147, size: 32, offset: 128)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1833, file: !1834, line: 74, baseType: !4925, size: 64, offset: 192)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !2491, line: 42, flags: DIFlagFwdDecl)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1787, file: !1729, line: 141, baseType: !4929, size: 64, offset: 704)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!147, !3485, !574}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1787, file: !1729, line: 142, baseType: !4933, size: 64, offset: 768)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!1727, !1727, !4936}
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1693)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1728, file: !1729, line: 96, baseType: !1838, size: 64, offset: 832)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1728, file: !1729, line: 97, baseType: !295, size: 64, offset: 896)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1728, file: !1729, line: 98, baseType: !218, size: 64, offset: 960)
!4941 = !DIDerivedType(tag: DW_TAG_member, scope: !1728, file: !1729, line: 100, baseType: !4942, size: 128, offset: 1024)
!4942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1728, file: !1729, line: 100, size: 128, elements: !4943)
!4943 = !{!4944, !4945}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4942, file: !1729, line: 101, baseType: !1471, size: 128)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4942, file: !1729, line: 102, baseType: !2827, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1728, file: !1729, line: 104, baseType: !1471, size: 128, offset: 1152)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1728, file: !1729, line: 105, baseType: !1471, size: 128, offset: 1280)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1728, file: !1729, line: 113, baseType: !4949, size: 128, offset: 1408)
!4949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1728, file: !1729, line: 109, size: 128, elements: !4950)
!4950 = !{!4951, !4952, !4953}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4949, file: !1729, line: 110, baseType: !2161, size: 128)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4949, file: !1729, line: 111, baseType: !1743, size: 128)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4949, file: !1729, line: 112, baseType: !2137, size: 128, align: 64)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1721, file: !52, line: 1968, baseType: !4955, size: 64, offset: 64)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!333, !1727, !1692, !4958}
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4960, line: 10, size: 128, elements: !4961)
!4960 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4961 = !{!4962, !4963}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4959, file: !4960, line: 11, baseType: !1969, size: 64)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4959, file: !4960, line: 12, baseType: !218, size: 64, offset: 64)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1721, file: !52, line: 1969, baseType: !4965, size: 64, offset: 128)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!147, !4925, !1692, !147}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1721, file: !52, line: 1970, baseType: !4969, size: 64, offset: 192)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!1715, !1692, !147, !574}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1721, file: !52, line: 1972, baseType: !4973, size: 64, offset: 256)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!147, !1727, !339, !147}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1721, file: !52, line: 1974, baseType: !4977, size: 64, offset: 320)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!147, !4925, !1692, !1727, !1655, !574}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1721, file: !52, line: 1976, baseType: !4981, size: 64, offset: 384)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!147, !1727, !1692, !1727}
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1721, file: !52, line: 1977, baseType: !4985, size: 64, offset: 448)
!4985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!147, !1692, !1727}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1721, file: !52, line: 1978, baseType: !4989, size: 64, offset: 512)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{!147, !4925, !1692, !1727, !333}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1721, file: !52, line: 1980, baseType: !4993, size: 64, offset: 576)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!147, !4925, !1692, !1727, !1655}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1721, file: !52, line: 1982, baseType: !4985, size: 64, offset: 640)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1721, file: !52, line: 1983, baseType: !4998, size: 64, offset: 704)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!147, !4925, !1692, !1727, !1655, !1843}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1721, file: !52, line: 1985, baseType: !5002, size: 64, offset: 768)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{!147, !4925, !1692, !1727, !1692, !1727, !7}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1721, file: !52, line: 1987, baseType: !5006, size: 64, offset: 832)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!147, !4925, !1727, !5009}
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !52, line: 226, size: 640, elements: !5011)
!5011 = !{!5012, !5013, !5014, !5024, !5033, !5034, !5039, !5040, !5041}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5010, file: !52, line: 227, baseType: !7, size: 32)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5010, file: !52, line: 228, baseType: !1655, size: 16, offset: 32)
!5014 = !DIDerivedType(tag: DW_TAG_member, scope: !5010, file: !52, line: 241, baseType: !5015, size: 32, offset: 64)
!5015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5010, file: !52, line: 241, size: 32, elements: !5016)
!5016 = !{!5017, !5018}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5015, file: !52, line: 242, baseType: !1698, size: 32)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5015, file: !52, line: 243, baseType: !5019, size: 32)
!5019 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5020, line: 16, baseType: !5021)
!5020 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5020, line: 14, size: 32, elements: !5022)
!5022 = !{!5023}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5021, file: !5020, line: 15, baseType: !1703, size: 32)
!5024 = !DIDerivedType(tag: DW_TAG_member, scope: !5010, file: !52, line: 245, baseType: !5025, size: 32, offset: 96)
!5025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5010, file: !52, line: 245, size: 32, elements: !5026)
!5026 = !{!5027, !5028}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5025, file: !52, line: 246, baseType: !1707, size: 32)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5025, file: !52, line: 247, baseType: !5029, size: 32)
!5029 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5020, line: 20, baseType: !5030)
!5030 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5020, line: 18, size: 32, elements: !5031)
!5031 = !{!5032}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5030, file: !5020, line: 19, baseType: !1711, size: 32)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5010, file: !52, line: 249, baseType: !1848, size: 64, offset: 128)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5010, file: !52, line: 250, baseType: !5035, size: 128, offset: 192)
!5035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !2532, line: 13, size: 128, elements: !5036)
!5036 = !{!5037, !5038}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5035, file: !2532, line: 14, baseType: !2531, size: 64)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5035, file: !2532, line: 15, baseType: !224, size: 64, offset: 64)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5010, file: !52, line: 251, baseType: !5035, size: 128, offset: 320)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5010, file: !52, line: 252, baseType: !5035, size: 128, offset: 448)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5010, file: !52, line: 259, baseType: !2697, size: 64, offset: 576)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1721, file: !52, line: 1988, baseType: !5043, size: 64, offset: 896)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!147, !4925, !3485, !5046, !1761, !7}
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5048, line: 22, size: 1280, elements: !5049)
!5048 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5049 = !{!5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5047, file: !5048, line: 23, baseType: !1761, size: 32)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5047, file: !5048, line: 24, baseType: !1655, size: 16, offset: 32)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5047, file: !5048, line: 25, baseType: !7, size: 32, offset: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5047, file: !5048, line: 26, baseType: !2539, size: 32, offset: 96)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5047, file: !5048, line: 27, baseType: !296, size: 64, offset: 128)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5047, file: !5048, line: 28, baseType: !296, size: 64, offset: 192)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5047, file: !5048, line: 41, baseType: !296, size: 64, offset: 256)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5047, file: !5048, line: 42, baseType: !1843, size: 32, offset: 320)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5047, file: !5048, line: 43, baseType: !1843, size: 32, offset: 352)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5047, file: !5048, line: 44, baseType: !1698, size: 32, offset: 384)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5047, file: !5048, line: 45, baseType: !1707, size: 32, offset: 416)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5047, file: !5048, line: 46, baseType: !1848, size: 64, offset: 448)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5047, file: !5048, line: 47, baseType: !5035, size: 128, offset: 512)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5047, file: !5048, line: 48, baseType: !5035, size: 128, offset: 640)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5047, file: !5048, line: 49, baseType: !5035, size: 128, offset: 768)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5047, file: !5048, line: 50, baseType: !5035, size: 128, offset: 896)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5047, file: !5048, line: 51, baseType: !296, size: 64, offset: 1024)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5047, file: !5048, line: 52, baseType: !296, size: 64, offset: 1088)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5047, file: !5048, line: 53, baseType: !1761, size: 32, offset: 1152)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5047, file: !5048, line: 54, baseType: !1761, size: 32, offset: 1184)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5047, file: !5048, line: 55, baseType: !296, size: 64, offset: 1216)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1721, file: !52, line: 1990, baseType: !5072, size: 64, offset: 960)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!1646, !1727, !339, !1660}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1721, file: !52, line: 1991, baseType: !5076, size: 64, offset: 1024)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!147, !1692, !5079, !296, !296}
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !52, line: 55, flags: DIFlagFwdDecl)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1721, file: !52, line: 1993, baseType: !5082, size: 64, offset: 1088)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!147, !1692, !147}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1721, file: !52, line: 1994, baseType: !5086, size: 64, offset: 1152)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!147, !1692, !1727, !2697, !7, !1655}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1721, file: !52, line: 1997, baseType: !5090, size: 64, offset: 1216)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{!147, !4925, !1692, !2697, !1655}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1721, file: !52, line: 1999, baseType: !5094, size: 64, offset: 1280)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!1715, !4925, !1727, !147}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1721, file: !52, line: 2001, baseType: !5098, size: 64, offset: 1344)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{!147, !4925, !1727, !1715, !147}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1721, file: !52, line: 2003, baseType: !5102, size: 64, offset: 1408)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!147, !4925, !1727, !5105}
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !52, line: 76, flags: DIFlagFwdDecl)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1721, file: !52, line: 2005, baseType: !5108, size: 64, offset: 1472)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!147, !1727, !5105}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1721, file: !52, line: 2006, baseType: !5112, size: 64, offset: 1536)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = !DISubroutineType(types: !5114)
!5114 = !{!5115, !1692}
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5116, size: 64)
!5116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !52, line: 3192, size: 192, elements: !5117)
!5117 = !{!5118, !5119}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5116, file: !52, line: 3193, baseType: !2778, size: 128)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5116, file: !52, line: 3194, baseType: !1761, size: 32, offset: 128)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1693, file: !52, line: 655, baseType: !1838, size: 64, offset: 448)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1693, file: !52, line: 656, baseType: !1688, size: 64, offset: 512)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1693, file: !52, line: 659, baseType: !218, size: 64, offset: 576)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1693, file: !52, line: 663, baseType: !295, size: 64, offset: 640)
!5124 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !52, line: 671, baseType: !5125, size: 32, offset: 704)
!5125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1693, file: !52, line: 671, size: 32, elements: !5126)
!5126 = !{!5127, !5129}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5125, file: !52, line: 672, baseType: !5128, size: 32)
!5128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5125, file: !52, line: 673, baseType: !7, size: 32)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1693, file: !52, line: 675, baseType: !1843, size: 32, offset: 736)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1693, file: !52, line: 676, baseType: !1848, size: 64, offset: 768)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1693, file: !52, line: 677, baseType: !5035, size: 128, offset: 832)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1693, file: !52, line: 678, baseType: !5035, size: 128, offset: 960)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1693, file: !52, line: 679, baseType: !5035, size: 128, offset: 1088)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1693, file: !52, line: 680, baseType: !1581, size: 32, offset: 1216)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1693, file: !52, line: 681, baseType: !263, size: 16, offset: 1248)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1693, file: !52, line: 682, baseType: !555, size: 8, offset: 1264)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1693, file: !52, line: 683, baseType: !555, size: 8, offset: 1272)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1693, file: !52, line: 684, baseType: !3558, size: 64, offset: 1280)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1693, file: !52, line: 691, baseType: !295, size: 64, offset: 1344)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1693, file: !52, line: 692, baseType: !2515, size: 320, offset: 1408)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1693, file: !52, line: 694, baseType: !295, size: 64, offset: 1728)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1693, file: !52, line: 695, baseType: !295, size: 64, offset: 1792)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1693, file: !52, line: 697, baseType: !2161, size: 128, offset: 1856)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1693, file: !52, line: 698, baseType: !1471, size: 128, offset: 1984)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1693, file: !52, line: 707, baseType: !1471, size: 128, offset: 2112)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1693, file: !52, line: 708, baseType: !1471, size: 128, offset: 2240)
!5148 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !52, line: 709, baseType: !5149, size: 128, offset: 2368)
!5149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1693, file: !52, line: 709, size: 128, elements: !5150)
!5150 = !{!5151, !5152}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5149, file: !52, line: 710, baseType: !2282, size: 64)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5149, file: !52, line: 711, baseType: !2137, size: 128, align: 64)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1693, file: !52, line: 713, baseType: !1488, size: 64, offset: 2496)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1693, file: !52, line: 714, baseType: !1488, size: 64, offset: 2560)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1693, file: !52, line: 715, baseType: !1509, size: 32, offset: 2624)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1693, file: !52, line: 716, baseType: !1509, size: 32, offset: 2656)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1693, file: !52, line: 717, baseType: !1509, size: 32, offset: 2688)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1693, file: !52, line: 719, baseType: !1509, size: 32, offset: 2720)
!5159 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !52, line: 721, baseType: !5160, size: 64, offset: 2752)
!5160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1693, file: !52, line: 721, size: 64, elements: !5161)
!5161 = !{!5162, !5163}
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5160, file: !52, line: 722, baseType: !2688, size: 64)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5160, file: !52, line: 723, baseType: !2305, size: 64)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1693, file: !52, line: 725, baseType: !5165, size: 64, offset: 2816)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !52, line: 725, flags: DIFlagFwdDecl)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1693, file: !52, line: 726, baseType: !1689, size: 1536, align: 64, offset: 2880)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1693, file: !52, line: 727, baseType: !1471, size: 128, offset: 4416)
!5169 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !52, line: 728, baseType: !5170, size: 64, offset: 4544)
!5170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1693, file: !52, line: 728, size: 64, elements: !5171)
!5171 = !{!5172, !5173, !5184, !5185}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5170, file: !52, line: 729, baseType: !3306, size: 64)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5170, file: !52, line: 730, baseType: !5174, size: 64)
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !5176, line: 14, size: 832, elements: !5177)
!5176 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!5177 = !{!5178, !5179, !5180, !5181, !5182, !5183}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5175, file: !5176, line: 15, baseType: !1568, size: 512)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5175, file: !5176, line: 16, baseType: !1875, size: 64, offset: 512)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5175, file: !5176, line: 17, baseType: !2688, size: 64, offset: 576)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5175, file: !5176, line: 18, baseType: !1471, size: 128, offset: 640)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5175, file: !5176, line: 19, baseType: !1843, size: 32, offset: 768)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5175, file: !5176, line: 20, baseType: !7, size: 32, offset: 800)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5170, file: !52, line: 731, baseType: !339, size: 64)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5170, file: !52, line: 732, baseType: !7, size: 32)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1693, file: !52, line: 735, baseType: !1762, size: 32, offset: 4608)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1693, file: !52, line: 738, baseType: !1762, size: 32, offset: 4640)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1693, file: !52, line: 739, baseType: !4863, size: 64, offset: 4672)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1693, file: !52, line: 750, baseType: !218, size: 64, offset: 4736)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1689, file: !52, line: 474, baseType: !2778, size: 128, offset: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1689, file: !52, line: 475, baseType: !2515, size: 320, offset: 192)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1689, file: !52, line: 476, baseType: !2783, size: 32, offset: 512)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1689, file: !52, line: 477, baseType: !1509, size: 32, offset: 544)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1689, file: !52, line: 482, baseType: !3830, size: 128, offset: 576)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1689, file: !52, line: 483, baseType: !295, size: 64, offset: 704)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1689, file: !52, line: 484, baseType: !295, size: 64, offset: 768)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1689, file: !52, line: 485, baseType: !5198, size: 64, offset: 832)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5200)
!5200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !52, line: 404, size: 1280, elements: !5201)
!5201 = !{!5202, !5206, !5276, !5280, !5284, !5290, !5294, !5298, !5303, !5307, !5311, !5315, !5316, !5320, !5324, !5328, !5333, !5337, !5344, !5345}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5200, file: !52, line: 405, baseType: !5203, size: 64)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{!147, !3095, !2317}
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5200, file: !52, line: 406, baseType: !5207, size: 64, offset: 64)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!147, !2697, !5210}
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !65, line: 293, size: 1536, elements: !5212)
!5212 = !{!5213, !5243, !5257}
!5213 = !DIDerivedType(tag: DW_TAG_member, scope: !5211, file: !65, line: 295, baseType: !5214, size: 512)
!5214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5211, file: !65, line: 295, size: 512, elements: !5215)
!5215 = !{!5216, !5242}
!5216 = !DIDerivedType(tag: DW_TAG_member, scope: !5214, file: !65, line: 296, baseType: !5217, size: 448)
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5214, file: !65, line: 296, size: 448, elements: !5218)
!5218 = !{!5219, !5220, !5229, !5230, !5231, !5240, !5241}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5217, file: !65, line: 298, baseType: !295, size: 64)
!5220 = !DIDerivedType(tag: DW_TAG_member, scope: !5217, file: !65, line: 299, baseType: !5221, size: 128, offset: 64)
!5221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5217, file: !65, line: 299, size: 128, elements: !5222)
!5222 = !{!5223, !5224}
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5221, file: !65, line: 300, baseType: !1471, size: 128)
!5224 = !DIDerivedType(tag: DW_TAG_member, scope: !5221, file: !65, line: 302, baseType: !5225, size: 128)
!5225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5221, file: !65, line: 302, size: 128, elements: !5226)
!5226 = !{!5227, !5228}
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !5225, file: !65, line: 303, baseType: !218, size: 64)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !5225, file: !65, line: 305, baseType: !7, size: 32, offset: 64)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5217, file: !65, line: 310, baseType: !1688, size: 64, offset: 192)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5217, file: !65, line: 311, baseType: !295, size: 64, offset: 256)
!5231 = !DIDerivedType(tag: DW_TAG_member, scope: !5217, file: !65, line: 312, baseType: !5232, size: 64, offset: 320)
!5232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5217, file: !65, line: 312, size: 64, elements: !5233)
!5233 = !{!5234, !5235}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5232, file: !65, line: 313, baseType: !218, size: 64)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5232, file: !65, line: 314, baseType: !5236, size: 64)
!5236 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !65, line: 257, baseType: !5237)
!5237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 255, size: 64, elements: !5238)
!5238 = !{!5239}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5237, file: !65, line: 256, baseType: !295, size: 64)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5217, file: !65, line: 316, baseType: !1509, size: 32, offset: 384)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !5217, file: !65, line: 317, baseType: !1509, size: 32, offset: 416)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5214, file: !65, line: 323, baseType: !3096, size: 512, align: 128)
!5243 = !DIDerivedType(tag: DW_TAG_member, scope: !5211, file: !65, line: 325, baseType: !5244, size: 512, offset: 512)
!5244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5211, file: !65, line: 325, size: 512, elements: !5245)
!5245 = !{!5246, !5256}
!5246 = !DIDerivedType(tag: DW_TAG_member, scope: !5244, file: !65, line: 326, baseType: !5247, size: 320)
!5247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5244, file: !65, line: 326, size: 320, elements: !5248)
!5248 = !{!5249, !5250, !5251, !5252, !5253, !5254, !5255}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !5247, file: !65, line: 327, baseType: !295, size: 64)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !5247, file: !65, line: 328, baseType: !295, size: 64, offset: 64)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !5247, file: !65, line: 329, baseType: !295, size: 64, offset: 128)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !5247, file: !65, line: 331, baseType: !1509, size: 32, offset: 192)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !5247, file: !65, line: 332, baseType: !1509, size: 32, offset: 224)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !5247, file: !65, line: 333, baseType: !1509, size: 32, offset: 256)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !5247, file: !65, line: 335, baseType: !7, size: 32, offset: 288)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !5244, file: !65, line: 339, baseType: !3096, size: 512, align: 128)
!5257 = !DIDerivedType(tag: DW_TAG_member, scope: !5211, file: !65, line: 341, baseType: !5258, size: 512, offset: 1024)
!5258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5211, file: !65, line: 341, size: 512, elements: !5259)
!5259 = !{!5260, !5269, !5275}
!5260 = !DIDerivedType(tag: DW_TAG_member, scope: !5258, file: !65, line: 342, baseType: !5261, size: 384)
!5261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5258, file: !65, line: 342, size: 384, elements: !5262)
!5262 = !{!5263, !5264, !5265, !5266, !5267, !5268}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !5261, file: !65, line: 343, baseType: !295, size: 64)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !5261, file: !65, line: 344, baseType: !295, size: 64, offset: 64)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !5261, file: !65, line: 346, baseType: !218, size: 64, offset: 128)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !5261, file: !65, line: 347, baseType: !218, size: 64, offset: 192)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !5261, file: !65, line: 348, baseType: !218, size: 64, offset: 256)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !5261, file: !65, line: 349, baseType: !218, size: 64, offset: 320)
!5269 = !DIDerivedType(tag: DW_TAG_member, scope: !5258, file: !65, line: 352, baseType: !5270, size: 256)
!5270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5258, file: !65, line: 352, size: 256, elements: !5271)
!5271 = !{!5272, !5273, !5274}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !5270, file: !65, line: 353, baseType: !295, size: 64)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !5270, file: !65, line: 354, baseType: !295, size: 64, offset: 64)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !5270, file: !65, line: 356, baseType: !1471, size: 128, offset: 128)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !5258, file: !65, line: 359, baseType: !3096, size: 512, align: 128)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5200, file: !52, line: 409, baseType: !5277, size: 64, offset: 128)
!5277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5278, size: 64)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{!147, !1688, !2317}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5200, file: !52, line: 412, baseType: !5281, size: 64, offset: 192)
!5281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5282, size: 64)
!5282 = !DISubroutineType(types: !5283)
!5283 = !{!574, !1688, !5210}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5200, file: !52, line: 414, baseType: !5285, size: 64, offset: 256)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{null, !5288}
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !52, line: 310, flags: DIFlagFwdDecl)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5200, file: !52, line: 416, baseType: !5291, size: 64, offset: 320)
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5292, size: 64)
!5292 = !DISubroutineType(types: !5293)
!5293 = !{!147, !2697, !1688, !1848, !7, !4617, !3322}
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5200, file: !52, line: 419, baseType: !5295, size: 64, offset: 384)
!5295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5296, size: 64)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{!147, !2697, !1688, !1848, !7, !7, !3095, !218}
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5200, file: !52, line: 424, baseType: !5299, size: 64, offset: 448)
!5299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5300, size: 64)
!5300 = !DISubroutineType(types: !5301)
!5301 = !{!5302, !1688, !5302}
!5302 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !575, line: 131, baseType: !296)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5200, file: !52, line: 425, baseType: !5304, size: 64, offset: 512)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{null, !5210, !1660, !1660}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5200, file: !52, line: 426, baseType: !5308, size: 64, offset: 576)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!574, !5210, !2783}
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5200, file: !52, line: 427, baseType: !5312, size: 64, offset: 640)
!5312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5313, size: 64)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{null, !5210}
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5200, file: !52, line: 428, baseType: !2707, size: 64, offset: 704)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5200, file: !52, line: 433, baseType: !5317, size: 64, offset: 768)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{!147, !1688, !5210, !5210, !112}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5200, file: !52, line: 435, baseType: !5321, size: 64, offset: 832)
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = !DISubroutineType(types: !5323)
!5323 = !{!147, !5210}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5200, file: !52, line: 436, baseType: !5325, size: 64, offset: 896)
!5325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5326, size: 64)
!5326 = !DISubroutineType(types: !5327)
!5327 = !{!574, !5210, !1660, !1660}
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5200, file: !52, line: 438, baseType: !5329, size: 64, offset: 960)
!5329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5330, size: 64)
!5330 = !DISubroutineType(types: !5331)
!5331 = !{null, !5210, !5332, !5332}
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5200, file: !52, line: 439, baseType: !5334, size: 64, offset: 1024)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!147, !1688, !3095}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5200, file: !52, line: 442, baseType: !5338, size: 64, offset: 1088)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!147, !5341, !2697, !5343}
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5342 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !52, line: 66, flags: DIFlagFwdDecl)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5200, file: !52, line: 444, baseType: !3314, size: 64, offset: 1152)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5200, file: !52, line: 445, baseType: !5346, size: 64, offset: 1216)
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5347, size: 64)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!147, !2710, !2732}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1689, file: !52, line: 486, baseType: !295, size: 64, offset: 896)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1689, file: !52, line: 487, baseType: !2515, size: 320, offset: 960)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1689, file: !52, line: 488, baseType: !3357, size: 32, offset: 1280)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1689, file: !52, line: 489, baseType: !1581, size: 32, offset: 1312)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1689, file: !52, line: 490, baseType: !1471, size: 128, offset: 1344)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1689, file: !52, line: 491, baseType: !218, size: 64, offset: 1472)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1679, file: !1640, line: 180, baseType: !5356, size: 64, offset: 320)
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5357, size: 64)
!5357 = !DISubroutineType(types: !5358)
!5358 = !{!1646, !2697, !1574, !1678, !339, !1848, !1660}
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1679, file: !1640, line: 182, baseType: !5356, size: 64, offset: 384)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1679, file: !1640, line: 184, baseType: !5361, size: 64, offset: 448)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!147, !2697, !1574, !1678, !2838}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1667, file: !1640, line: 90, baseType: !5365, size: 64, offset: 192)
!5365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1667, file: !1640, line: 91, baseType: !5367, size: 64, offset: 256)
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1630, file: !1569, line: 120, baseType: !5369, size: 64, offset: 192)
!5369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5370, size: 64)
!5370 = !DISubroutineType(types: !5371)
!5371 = !{!5372, !1600}
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5373, size: 64)
!5373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5374)
!5374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !120, line: 39, size: 384, elements: !5375)
!5375 = !{!5376, !5377, !5381, !5385, !5391, !5395}
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5374, file: !120, line: 40, baseType: !119, size: 32)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !5374, file: !120, line: 41, baseType: !5378, size: 64, offset: 64)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!574}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !5374, file: !120, line: 42, baseType: !5382, size: 64, offset: 128)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DISubroutineType(types: !5384)
!5384 = !{!218}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !5374, file: !120, line: 43, baseType: !5386, size: 64, offset: 192)
!5386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5387, size: 64)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{!1561, !5389}
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5390, size: 64)
!5390 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !120, line: 19, flags: DIFlagFwdDecl)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !5374, file: !120, line: 44, baseType: !5392, size: 64, offset: 256)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!1561}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !5374, file: !120, line: 45, baseType: !1969, size: 64, offset: 320)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1630, file: !1569, line: 121, baseType: !5397, size: 64, offset: 256)
!5397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5398, size: 64)
!5398 = !DISubroutineType(types: !5399)
!5399 = !{!1561, !1600}
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1630, file: !1569, line: 122, baseType: !5401, size: 64, offset: 320)
!5401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5402, size: 64)
!5402 = !DISubroutineType(types: !5403)
!5403 = !{null, !1600, !5404, !5405}
!5404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1568, file: !1569, line: 70, baseType: !5407, size: 64, offset: 384)
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5408, size: 64)
!5408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !5409, line: 190, size: 1152, elements: !5410)
!5409 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!5410 = !{!5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418, !5490, !5491, !5492, !5493, !5494, !5497}
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5408, file: !5409, line: 191, baseType: !1509, size: 32)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5408, file: !5409, line: 192, baseType: !1509, size: 32, offset: 32)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5408, file: !5409, line: 202, baseType: !5407, size: 64, offset: 64)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5408, file: !5409, line: 203, baseType: !333, size: 64, offset: 128)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5408, file: !5409, line: 205, baseType: !2033, size: 192, align: 64, offset: 192)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5408, file: !5409, line: 207, baseType: !1561, size: 64, offset: 384)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5408, file: !5409, line: 208, baseType: !7, size: 32, offset: 448)
!5418 = !DIDerivedType(tag: DW_TAG_member, scope: !5408, file: !5409, line: 209, baseType: !5419, size: 256, offset: 512)
!5419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5408, file: !5409, line: 209, size: 256, elements: !5420)
!5420 = !{!5421, !5430, !5434}
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5419, file: !5409, line: 210, baseType: !5422, size: 256)
!5422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !5409, line: 153, size: 256, elements: !5423)
!5423 = !{!5424, !5425, !5426, !5429}
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !5422, file: !5409, line: 154, baseType: !295, size: 64)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5422, file: !5409, line: 156, baseType: !3833, size: 64, offset: 64)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5422, file: !5409, line: 162, baseType: !5427, size: 64, offset: 128)
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5428, size: 64)
!5428 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !5409, line: 162, flags: DIFlagFwdDecl)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !5422, file: !5409, line: 167, baseType: !295, size: 64, offset: 192)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !5419, file: !5409, line: 211, baseType: !5431, size: 64)
!5431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !5409, line: 170, size: 64, elements: !5432)
!5432 = !{!5433}
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !5431, file: !5409, line: 171, baseType: !5407, size: 64)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5419, file: !5409, line: 212, baseType: !5435, size: 256)
!5435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !5409, line: 174, size: 256, elements: !5436)
!5436 = !{!5437, !5485, !5488, !5489}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5435, file: !5409, line: 175, baseType: !5438, size: 64)
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5439, size: 64)
!5439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5440)
!5440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !5409, line: 271, size: 768, elements: !5441)
!5441 = !{!5442, !5462, !5466, !5467, !5468, !5469, !5470, !5474, !5475, !5476, !5477, !5481}
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5440, file: !5409, line: 276, baseType: !5443, size: 64)
!5443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5444, size: 64)
!5444 = !DISubroutineType(types: !5445)
!5445 = !{!147, !5446}
!5446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5447, size: 64)
!5447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !5409, line: 251, size: 1216, elements: !5448)
!5448 = !{!5449, !5450, !5451, !5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460, !5461}
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !5447, file: !5409, line: 253, baseType: !5407, size: 64)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5447, file: !5409, line: 254, baseType: !2697, size: 64, offset: 64)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !5447, file: !5409, line: 255, baseType: !2354, size: 64, offset: 128)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5447, file: !5409, line: 256, baseType: !218, size: 64, offset: 192)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5447, file: !5409, line: 259, baseType: !1482, size: 256, offset: 256)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !5447, file: !5409, line: 260, baseType: !1482, size: 256, offset: 512)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5447, file: !5409, line: 261, baseType: !147, size: 32, offset: 768)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5447, file: !5409, line: 262, baseType: !1471, size: 128, offset: 832)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !5447, file: !5409, line: 263, baseType: !339, size: 64, offset: 960)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5447, file: !5409, line: 265, baseType: !1660, size: 64, offset: 1024)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !5447, file: !5409, line: 266, baseType: !574, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !5447, file: !5409, line: 267, baseType: !574, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5447, file: !5409, line: 268, baseType: !3031, size: 64, offset: 1152)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5440, file: !5409, line: 277, baseType: !5463, size: 64, offset: 64)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = !DISubroutineType(types: !5465)
!5465 = !{null, !5446}
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5440, file: !5409, line: 290, baseType: !2385, size: 64, offset: 128)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5440, file: !5409, line: 292, baseType: !2372, size: 64, offset: 192)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5440, file: !5409, line: 293, baseType: !2381, size: 64, offset: 256)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5440, file: !5409, line: 294, baseType: !2377, size: 64, offset: 320)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5440, file: !5409, line: 296, baseType: !5471, size: 64, offset: 384)
!5471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5472, size: 64)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{!1646, !5446, !339, !1660, !1848}
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5440, file: !5409, line: 306, baseType: !1660, size: 64, offset: 448)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !5440, file: !5409, line: 313, baseType: !574, size: 8, offset: 512)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5440, file: !5409, line: 314, baseType: !5471, size: 64, offset: 576)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5440, file: !5409, line: 317, baseType: !5478, size: 64, offset: 640)
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!2816, !5446, !2818}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5440, file: !5409, line: 320, baseType: !5482, size: 64, offset: 704)
!5482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5483, size: 64)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{!147, !5446, !2838}
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5435, file: !5409, line: 176, baseType: !5486, size: 64, offset: 64)
!5486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5487, size: 64)
!5487 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !5409, line: 35, flags: DIFlagFwdDecl)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5435, file: !5409, line: 177, baseType: !1848, size: 64, offset: 128)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !5435, file: !5409, line: 178, baseType: !5407, size: 64, offset: 192)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5408, file: !5409, line: 215, baseType: !218, size: 64, offset: 768)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5408, file: !5409, line: 221, baseType: !296, size: 64, offset: 832)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5408, file: !5409, line: 223, baseType: !263, size: 16, offset: 896)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5408, file: !5409, line: 224, baseType: !1655, size: 16, offset: 912)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !5408, file: !5409, line: 225, baseType: !5495, size: 64, offset: 960)
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5496, size: 64)
!5496 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !5409, line: 36, flags: DIFlagFwdDecl)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5408, file: !5409, line: 227, baseType: !2137, size: 128, align: 64, offset: 1024)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1568, file: !1569, line: 71, baseType: !5499, size: 32, offset: 448)
!5499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5500, line: 19, size: 32, elements: !5501)
!5500 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5501 = !{!5502}
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5499, file: !5500, line: 20, baseType: !2441, size: 32)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1568, file: !1569, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1568, file: !1569, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1568, file: !1569, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1568, file: !1569, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1568, file: !1569, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1565, file: !132, line: 707, baseType: !5509, size: 64, offset: 512)
!5509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1565, file: !132, line: 709, baseType: !5511, size: 64, offset: 576)
!5511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5512, size: 64)
!5512 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !132, line: 37, flags: DIFlagFwdDecl)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1565, file: !132, line: 711, baseType: !333, size: 64, offset: 640)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1565, file: !132, line: 712, baseType: !5515, size: 64, offset: 704)
!5515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5516, size: 64)
!5516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5517)
!5517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !132, line: 89, size: 384, elements: !5518)
!5518 = !{!5519, !5520, !5521, !5525, !5530, !5534}
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5517, file: !132, line: 90, baseType: !333, size: 64)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5517, file: !132, line: 91, baseType: !1664, size: 64, offset: 64)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5517, file: !132, line: 92, baseType: !5522, size: 64, offset: 128)
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = !DISubroutineType(types: !5524)
!5524 = !{!147, !1563, !1612}
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5517, file: !132, line: 93, baseType: !5526, size: 64, offset: 192)
!5526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5527, size: 64)
!5527 = !DISubroutineType(types: !5528)
!5528 = !{!339, !1563, !5529, !5404, !5405}
!5529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5517, file: !132, line: 95, baseType: !5531, size: 64, offset: 256)
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5532, size: 64)
!5532 = !DISubroutineType(types: !5533)
!5533 = !{null, !5509}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5517, file: !132, line: 97, baseType: !5535, size: 64, offset: 320)
!5535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5536, size: 64)
!5536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5537)
!5537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !139, line: 286, size: 1472, elements: !5538)
!5538 = !{!5539, !5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564}
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5537, file: !139, line: 287, baseType: !5540, size: 64)
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{!147, !5509}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5537, file: !139, line: 288, baseType: !5531, size: 64, offset: 64)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5537, file: !139, line: 289, baseType: !5540, size: 64, offset: 128)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5537, file: !139, line: 290, baseType: !5540, size: 64, offset: 192)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !5537, file: !139, line: 291, baseType: !5540, size: 64, offset: 256)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !5537, file: !139, line: 292, baseType: !5540, size: 64, offset: 320)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !5537, file: !139, line: 293, baseType: !5540, size: 64, offset: 384)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !5537, file: !139, line: 294, baseType: !5540, size: 64, offset: 448)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !5537, file: !139, line: 295, baseType: !5540, size: 64, offset: 512)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !5537, file: !139, line: 296, baseType: !5540, size: 64, offset: 576)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !5537, file: !139, line: 297, baseType: !5540, size: 64, offset: 640)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !5537, file: !139, line: 298, baseType: !5540, size: 64, offset: 704)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !5537, file: !139, line: 299, baseType: !5540, size: 64, offset: 768)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !5537, file: !139, line: 300, baseType: !5540, size: 64, offset: 832)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !5537, file: !139, line: 301, baseType: !5540, size: 64, offset: 896)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !5537, file: !139, line: 302, baseType: !5540, size: 64, offset: 960)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !5537, file: !139, line: 303, baseType: !5540, size: 64, offset: 1024)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !5537, file: !139, line: 304, baseType: !5540, size: 64, offset: 1088)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !5537, file: !139, line: 305, baseType: !5540, size: 64, offset: 1152)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !5537, file: !139, line: 306, baseType: !5540, size: 64, offset: 1216)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !5537, file: !139, line: 307, baseType: !5540, size: 64, offset: 1280)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !5537, file: !139, line: 308, baseType: !5540, size: 64, offset: 1344)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !5537, file: !139, line: 309, baseType: !5540, size: 64, offset: 1408)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1565, file: !132, line: 714, baseType: !5566, size: 64, offset: 768)
!5566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5567, size: 64)
!5567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5568)
!5568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !5569, line: 80, size: 1344, elements: !5570)
!5569 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!5570 = !{!5571, !5572, !5573, !5574, !5575, !5576, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5643, !5644, !5645, !5649}
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5568, file: !5569, line: 81, baseType: !333, size: 64)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !5568, file: !5569, line: 82, baseType: !333, size: 64, offset: 64)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !5568, file: !5569, line: 83, baseType: !1664, size: 64, offset: 128)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5568, file: !5569, line: 84, baseType: !1664, size: 64, offset: 192)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !5568, file: !5569, line: 85, baseType: !1664, size: 64, offset: 256)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5568, file: !5569, line: 87, baseType: !5577, size: 64, offset: 320)
!5577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5578, size: 64)
!5578 = !DISubroutineType(types: !5579)
!5579 = !{!147, !5509, !5580}
!5580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5581, size: 64)
!5581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !126, line: 96, size: 1152, elements: !5582)
!5582 = !{!5583, !5584, !5585, !5586, !5587, !5588, !5589, !5602, !5612, !5613, !5614, !5615, !5616, !5624, !5625, !5626, !5627, !5628, !5629}
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5581, file: !126, line: 97, baseType: !333, size: 64)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5581, file: !126, line: 98, baseType: !5566, size: 64, offset: 64)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5581, file: !126, line: 100, baseType: !1875, size: 64, offset: 128)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !5581, file: !126, line: 101, baseType: !333, size: 64, offset: 192)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !5581, file: !126, line: 103, baseType: !574, size: 8, offset: 256)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !5581, file: !126, line: 104, baseType: !125, size: 32, offset: 288)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !5581, file: !126, line: 106, baseType: !5590, size: 64, offset: 320)
!5590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5591, size: 64)
!5591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5592)
!5592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !5593, line: 282, size: 1600, elements: !5594)
!5593 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!5594 = !{!5595, !5596, !5597, !5601}
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5592, file: !5593, line: 283, baseType: !314, size: 256)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5592, file: !5593, line: 284, baseType: !314, size: 256, offset: 256)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !5592, file: !5593, line: 285, baseType: !5598, size: 1024, offset: 512)
!5598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 1024, elements: !5599)
!5599 = !{!5600}
!5600 = !DISubrange(count: 128)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5592, file: !5593, line: 286, baseType: !1561, size: 64, offset: 1536)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !5581, file: !126, line: 107, baseType: !5603, size: 64, offset: 384)
!5603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5604, size: 64)
!5604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5605)
!5605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !5593, line: 217, size: 256, elements: !5606)
!5606 = !{!5607, !5608, !5610, !5611}
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5605, file: !5593, line: 218, baseType: !4872, size: 128)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5605, file: !5593, line: 219, baseType: !5609, size: 64, offset: 128)
!5609 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !5593, line: 15, baseType: !295)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !5605, file: !5593, line: 220, baseType: !1762, size: 32, offset: 192)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !5605, file: !5593, line: 221, baseType: !1762, size: 32, offset: 224)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5581, file: !126, line: 109, baseType: !5540, size: 64, offset: 448)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5581, file: !126, line: 110, baseType: !5531, size: 64, offset: 512)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5581, file: !126, line: 111, baseType: !5540, size: 64, offset: 576)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5581, file: !126, line: 112, baseType: !5531, size: 64, offset: 640)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5581, file: !126, line: 113, baseType: !5617, size: 64, offset: 704)
!5617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5618, size: 64)
!5618 = !DISubroutineType(types: !5619)
!5619 = !{!147, !5509, !5620}
!5620 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !139, line: 60, baseType: !5621)
!5621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !139, line: 58, size: 32, elements: !5622)
!5622 = !{!5623}
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5621, file: !139, line: 59, baseType: !147, size: 32)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5581, file: !126, line: 114, baseType: !5540, size: 64, offset: 768)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5581, file: !126, line: 115, baseType: !1664, size: 64, offset: 832)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5581, file: !126, line: 116, baseType: !1664, size: 64, offset: 896)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5581, file: !126, line: 118, baseType: !5535, size: 64, offset: 960)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !5581, file: !126, line: 119, baseType: !5531, size: 64, offset: 1024)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5581, file: !126, line: 121, baseType: !5630, size: 64, offset: 1088)
!5630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5631, size: 64)
!5631 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !126, line: 121, flags: DIFlagFwdDecl)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5568, file: !5569, line: 88, baseType: !5522, size: 64, offset: 384)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5568, file: !5569, line: 89, baseType: !5540, size: 64, offset: 448)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5568, file: !5569, line: 90, baseType: !5531, size: 64, offset: 512)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5568, file: !5569, line: 91, baseType: !5531, size: 64, offset: 576)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5568, file: !5569, line: 92, baseType: !5531, size: 64, offset: 640)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !5568, file: !5569, line: 94, baseType: !5540, size: 64, offset: 704)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !5568, file: !5569, line: 95, baseType: !5540, size: 64, offset: 768)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5568, file: !5569, line: 97, baseType: !5617, size: 64, offset: 832)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5568, file: !5569, line: 98, baseType: !5540, size: 64, offset: 896)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !5568, file: !5569, line: 100, baseType: !5540, size: 64, offset: 960)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !5568, file: !5569, line: 102, baseType: !5540, size: 64, offset: 1024)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !5568, file: !5569, line: 103, baseType: !5531, size: 64, offset: 1088)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5568, file: !5569, line: 105, baseType: !5535, size: 64, offset: 1152)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !5568, file: !5569, line: 107, baseType: !5646, size: 64, offset: 1216)
!5646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5647, size: 64)
!5647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5648)
!5648 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !5569, line: 107, flags: DIFlagFwdDecl)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !5568, file: !5569, line: 109, baseType: !574, size: 8, offset: 1280)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1565, file: !132, line: 715, baseType: !5580, size: 64, offset: 832)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1565, file: !132, line: 717, baseType: !218, size: 64, offset: 896)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1565, file: !132, line: 719, baseType: !218, size: 64, offset: 960)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1565, file: !132, line: 721, baseType: !1482, size: 256, offset: 1024)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1565, file: !132, line: 725, baseType: !5655, size: 448, offset: 1280)
!5655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !132, line: 517, size: 448, elements: !5656)
!5656 = !{!5657, !5658, !5659, !5660}
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5655, file: !132, line: 518, baseType: !1471, size: 128)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5655, file: !132, line: 519, baseType: !1471, size: 128, offset: 128)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !5655, file: !132, line: 520, baseType: !1471, size: 128, offset: 256)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5655, file: !132, line: 521, baseType: !131, size: 32, offset: 384)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1565, file: !132, line: 726, baseType: !5662, size: 2496, offset: 1728)
!5662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !139, line: 663, size: 2496, elements: !5663)
!5663 = !{!5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5706, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5728, !5729, !5730, !5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740, !5746, !5750}
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !5662, file: !139, line: 664, baseType: !5620, size: 32)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !5662, file: !139, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !5662, file: !139, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !5662, file: !139, line: 667, baseType: !574, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !5662, file: !139, line: 668, baseType: !574, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !5662, file: !139, line: 669, baseType: !574, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !5662, file: !139, line: 670, baseType: !574, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !5662, file: !139, line: 671, baseType: !574, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !5662, file: !139, line: 672, baseType: !574, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !5662, file: !139, line: 673, baseType: !574, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !5662, file: !139, line: 674, baseType: !574, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !5662, file: !139, line: 675, baseType: !1761, size: 32, offset: 64)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5662, file: !139, line: 676, baseType: !1581, size: 32, offset: 96)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5662, file: !139, line: 678, baseType: !1471, size: 128, offset: 128)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !5662, file: !139, line: 679, baseType: !1895, size: 256, offset: 256)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5662, file: !139, line: 680, baseType: !5680, size: 64, offset: 512)
!5680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5681, size: 64)
!5681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !5682, line: 43, size: 1536, elements: !5683)
!5682 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!5683 = !{!5684, !5685, !5686, !5687, !5688, !5691, !5692, !5693, !5694, !5695, !5696, !5697, !5698, !5699, !5700, !5701, !5702, !5703, !5704, !5705}
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5681, file: !5682, line: 44, baseType: !333, size: 64)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5681, file: !5682, line: 45, baseType: !147, size: 32, offset: 64)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5681, file: !5682, line: 46, baseType: !1471, size: 128, offset: 128)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5681, file: !5682, line: 47, baseType: !1581, size: 32, offset: 256)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5681, file: !5682, line: 48, baseType: !5689, size: 64, offset: 320)
!5689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5690, size: 64)
!5690 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !139, line: 629, flags: DIFlagFwdDecl)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5681, file: !5682, line: 49, baseType: !2157, size: 320, offset: 384)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5681, file: !5682, line: 50, baseType: !295, size: 64, offset: 704)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !5681, file: !5682, line: 51, baseType: !3781, size: 64, offset: 768)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !5681, file: !5682, line: 52, baseType: !3781, size: 64, offset: 832)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !5681, file: !5682, line: 53, baseType: !3781, size: 64, offset: 896)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !5681, file: !5682, line: 54, baseType: !3781, size: 64, offset: 960)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !5681, file: !5682, line: 55, baseType: !3781, size: 64, offset: 1024)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !5681, file: !5682, line: 56, baseType: !295, size: 64, offset: 1088)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !5681, file: !5682, line: 57, baseType: !295, size: 64, offset: 1152)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !5681, file: !5682, line: 58, baseType: !295, size: 64, offset: 1216)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !5681, file: !5682, line: 59, baseType: !295, size: 64, offset: 1280)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !5681, file: !5682, line: 60, baseType: !295, size: 64, offset: 1344)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5681, file: !5682, line: 61, baseType: !5509, size: 64, offset: 1408)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5681, file: !5682, line: 62, baseType: !574, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !5681, file: !5682, line: 63, baseType: !574, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !5662, file: !139, line: 681, baseType: !574, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !5662, file: !139, line: 682, baseType: !574, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !5662, file: !139, line: 683, baseType: !574, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !5662, file: !139, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !5662, file: !139, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !5662, file: !139, line: 690, baseType: !3773, size: 512, offset: 640)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5662, file: !139, line: 691, baseType: !296, size: 64, offset: 1152)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5662, file: !139, line: 692, baseType: !2175, size: 256, offset: 1216)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !5662, file: !139, line: 693, baseType: !2452, size: 192, offset: 1472)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5662, file: !139, line: 694, baseType: !5689, size: 64, offset: 1664)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !5662, file: !139, line: 695, baseType: !1509, size: 32, offset: 1728)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !5662, file: !139, line: 696, baseType: !1509, size: 32, offset: 1760)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !5662, file: !139, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !5662, file: !139, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !5662, file: !139, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !5662, file: !139, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !5662, file: !139, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !5662, file: !139, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !5662, file: !139, line: 703, baseType: !574, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !5662, file: !139, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !5662, file: !139, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !5662, file: !139, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !5662, file: !139, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !5662, file: !139, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !5662, file: !139, line: 709, baseType: !7, size: 32, offset: 1824)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5662, file: !139, line: 710, baseType: !138, size: 32, offset: 1856)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !5662, file: !139, line: 711, baseType: !146, size: 32, offset: 1888)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !5662, file: !139, line: 712, baseType: !146, size: 32, offset: 1920)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !5662, file: !139, line: 713, baseType: !147, size: 32, offset: 1952)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !5662, file: !139, line: 714, baseType: !147, size: 32, offset: 1984)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !5662, file: !139, line: 715, baseType: !296, size: 64, offset: 2048)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !5662, file: !139, line: 716, baseType: !296, size: 64, offset: 2112)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !5662, file: !139, line: 717, baseType: !296, size: 64, offset: 2176)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !5662, file: !139, line: 718, baseType: !296, size: 64, offset: 2240)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !5662, file: !139, line: 720, baseType: !5741, size: 64, offset: 2304)
!5741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5742, size: 64)
!5742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !139, line: 632, size: 64, elements: !5743)
!5743 = !{!5744, !5745}
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5742, file: !139, line: 633, baseType: !1581, size: 32)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5742, file: !139, line: 634, baseType: !7, size: 32, offset: 32)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !5662, file: !139, line: 721, baseType: !5747, size: 64, offset: 2368)
!5747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5748, size: 64)
!5748 = !DISubroutineType(types: !5749)
!5749 = !{null, !5509, !1941}
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !5662, file: !139, line: 722, baseType: !5751, size: 64, offset: 2432)
!5751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5752, size: 64)
!5752 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !139, line: 722, flags: DIFlagFwdDecl)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1565, file: !132, line: 727, baseType: !5754, size: 64, offset: 4224)
!5754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5755, size: 64)
!5755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !139, line: 742, size: 1792, elements: !5756)
!5756 = !{!5757, !5758, !5759, !5763, !5764, !5765}
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5755, file: !139, line: 743, baseType: !5537, size: 1472)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5755, file: !139, line: 744, baseType: !5540, size: 64, offset: 1472)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5755, file: !139, line: 745, baseType: !5760, size: 64, offset: 1536)
!5760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5761, size: 64)
!5761 = !DISubroutineType(types: !5762)
!5762 = !{null, !5509, !574}
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5755, file: !139, line: 746, baseType: !5540, size: 64, offset: 1600)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5755, file: !139, line: 747, baseType: !5531, size: 64, offset: 1664)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !5755, file: !139, line: 748, baseType: !5531, size: 64, offset: 1728)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1565, file: !132, line: 736, baseType: !5767, size: 128, offset: 4288)
!5767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !132, line: 529, size: 128, elements: !5768)
!5768 = !{!5769, !5770}
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5767, file: !132, line: 531, baseType: !1467, size: 64)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5767, file: !132, line: 532, baseType: !5771, size: 64, offset: 64)
!5771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5772, size: 64)
!5772 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !132, line: 49, flags: DIFlagFwdDecl)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1565, file: !132, line: 738, baseType: !5774, size: 64, offset: 4416)
!5774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5775, size: 64)
!5775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5776)
!5776 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !132, line: 738, flags: DIFlagFwdDecl)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1565, file: !132, line: 740, baseType: !5778, size: 64, offset: 4480)
!5778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1565, file: !132, line: 741, baseType: !296, size: 64, offset: 4544)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1565, file: !132, line: 746, baseType: !296, size: 64, offset: 4608)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1565, file: !132, line: 747, baseType: !5782, size: 64, offset: 4672)
!5782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5783, size: 64)
!5783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5784)
!5784 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !132, line: 747, flags: DIFlagFwdDecl)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1565, file: !132, line: 749, baseType: !5786, size: 64, offset: 4736)
!5786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5787, size: 64)
!5787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !132, line: 428, size: 128, elements: !5788)
!5788 = !{!5789, !5790, !5791}
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5787, file: !132, line: 433, baseType: !7, size: 32)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !5787, file: !132, line: 434, baseType: !7, size: 32, offset: 32)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5787, file: !132, line: 435, baseType: !295, size: 64, offset: 64)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1565, file: !132, line: 751, baseType: !1471, size: 128, offset: 4800)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1565, file: !132, line: 762, baseType: !5794, size: 64, offset: 4928)
!5794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5795, size: 64)
!5795 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !132, line: 762, flags: DIFlagFwdDecl)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1565, file: !132, line: 770, baseType: !5797, offset: 4992)
!5797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5798, line: 5, elements: !603)
!5798 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1565, file: !132, line: 772, baseType: !5800, size: 64, offset: 4992)
!5800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5801, size: 64)
!5801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !5802, line: 48, size: 1152, elements: !5803)
!5802 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!5803 = !{!5804, !5805, !5807, !5808, !5809, !5817, !5818, !5819, !5820, !5821, !5822}
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5801, file: !5802, line: 49, baseType: !333, size: 64)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !5801, file: !5802, line: 50, baseType: !5806, size: 32, offset: 64)
!5806 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !5802, line: 25, baseType: !1761)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !5801, file: !5802, line: 51, baseType: !333, size: 64, offset: 128)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5801, file: !5802, line: 52, baseType: !1534, size: 512, offset: 192)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5801, file: !5802, line: 54, baseType: !5810, size: 64, offset: 704)
!5810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5811, size: 64)
!5811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !5802, line: 28, size: 256, elements: !5812)
!5812 = !{!5813, !5814, !5815, !5816}
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5811, file: !5802, line: 29, baseType: !339, size: 64)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5811, file: !5802, line: 30, baseType: !147, size: 32, offset: 64)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5811, file: !5802, line: 31, baseType: !218, size: 64, offset: 128)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5811, file: !5802, line: 32, baseType: !5810, size: 64, offset: 192)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !5801, file: !5802, line: 55, baseType: !5810, size: 64, offset: 768)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5801, file: !5802, line: 56, baseType: !5800, size: 64, offset: 832)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !5801, file: !5802, line: 57, baseType: !5800, size: 64, offset: 896)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !5801, file: !5802, line: 58, baseType: !5800, size: 64, offset: 960)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5801, file: !5802, line: 62, baseType: !295, size: 64, offset: 1024)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5801, file: !5802, line: 63, baseType: !218, size: 64, offset: 1088)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1565, file: !132, line: 773, baseType: !1533, size: 64, offset: 5056)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1565, file: !132, line: 776, baseType: !147, size: 32, offset: 5120)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1565, file: !132, line: 778, baseType: !1843, size: 32, offset: 5152)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1565, file: !132, line: 779, baseType: !1761, size: 32, offset: 5184)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1565, file: !132, line: 781, baseType: !1581, size: 32, offset: 5216)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1565, file: !132, line: 782, baseType: !1471, size: 128, offset: 5248)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1565, file: !132, line: 784, baseType: !5830, size: 64, offset: 5376)
!5830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5831, size: 64)
!5831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5832)
!5832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5833, line: 52, size: 768, elements: !5834)
!5833 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5834 = !{!5835, !5836, !5837, !5838, !5839, !5843, !5847, !5848, !5849, !5850, !5854, !5858}
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5832, file: !5833, line: 53, baseType: !333, size: 64)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5832, file: !5833, line: 55, baseType: !1664, size: 64, offset: 64)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5832, file: !5833, line: 56, baseType: !1664, size: 64, offset: 128)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5832, file: !5833, line: 58, baseType: !5522, size: 64, offset: 192)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5832, file: !5833, line: 59, baseType: !5840, size: 64, offset: 256)
!5840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5841, size: 64)
!5841 = !DISubroutineType(types: !5842)
!5842 = !{!339, !1563, !5529}
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5832, file: !5833, line: 61, baseType: !5844, size: 64, offset: 320)
!5844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5845, size: 64)
!5845 = !DISubroutineType(types: !5846)
!5846 = !{null, !5830}
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5832, file: !5833, line: 62, baseType: !5531, size: 64, offset: 384)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5832, file: !5833, line: 64, baseType: !5540, size: 64, offset: 448)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5832, file: !5833, line: 66, baseType: !5372, size: 64, offset: 512)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5832, file: !5833, line: 67, baseType: !5851, size: 64, offset: 576)
!5851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5852, size: 64)
!5852 = !DISubroutineType(types: !5853)
!5853 = !{!1561, !1563}
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5832, file: !5833, line: 69, baseType: !5855, size: 64, offset: 640)
!5855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5856, size: 64)
!5856 = !DISubroutineType(types: !5857)
!5857 = !{null, !1563, !5404, !5405}
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5832, file: !5833, line: 71, baseType: !5535, size: 64, offset: 704)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1565, file: !132, line: 785, baseType: !1664, size: 64, offset: 5440)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1565, file: !132, line: 787, baseType: !5531, size: 64, offset: 5504)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1565, file: !132, line: 788, baseType: !5862, size: 64, offset: 5568)
!5862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5863, size: 64)
!5863 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !132, line: 46, flags: DIFlagFwdDecl)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1565, file: !132, line: 789, baseType: !5865, size: 64, offset: 5632)
!5865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5866, size: 64)
!5866 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !132, line: 48, flags: DIFlagFwdDecl)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1565, file: !132, line: 791, baseType: !5868, size: 64, offset: 5696)
!5868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5869, size: 64)
!5869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !132, line: 597, size: 128, elements: !5870)
!5870 = !{!5871, !5872, !5873, !5874, !5875}
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5869, file: !132, line: 598, baseType: !154, size: 32)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5869, file: !132, line: 599, baseType: !163, size: 32, offset: 32)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5869, file: !132, line: 600, baseType: !168, size: 32, offset: 64)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5869, file: !132, line: 601, baseType: !574, size: 8, offset: 96)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5869, file: !132, line: 602, baseType: !574, size: 8, offset: 104)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1565, file: !132, line: 793, baseType: !173, size: 32, offset: 5760)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1565, file: !132, line: 795, baseType: !574, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1565, file: !132, line: 796, baseType: !574, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1565, file: !132, line: 797, baseType: !574, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1565, file: !132, line: 798, baseType: !574, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1565, file: !132, line: 799, baseType: !574, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1541, file: !1535, line: 131, baseType: !1552, size: 64, offset: 256)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1541, file: !1535, line: 133, baseType: !5884, size: 64, offset: 320)
!5884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5885, size: 64)
!5885 = !DISubroutineType(types: !5886)
!5886 = !{!179, !1555}
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1541, file: !1535, line: 134, baseType: !5888, size: 64, offset: 384)
!5888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5889, size: 64)
!5889 = !DISubroutineType(types: !5890)
!5890 = !{!574, !1555, !333}
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1541, file: !1535, line: 136, baseType: !5892, size: 64, offset: 448)
!5892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5893, size: 64)
!5893 = !DISubroutineType(types: !5894)
!5894 = !{!147, !1555, !333, !7, !218, !1660}
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1541, file: !1535, line: 141, baseType: !5896, size: 64, offset: 512)
!5896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5897, size: 64)
!5897 = !DISubroutineType(types: !5898)
!5898 = !{!147, !1555, !333, !2251, !1660}
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1541, file: !1535, line: 144, baseType: !5900, size: 64, offset: 576)
!5900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5901, size: 64)
!5901 = !DISubroutineType(types: !5902)
!5902 = !{!333, !1555}
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1541, file: !1535, line: 145, baseType: !5900, size: 64, offset: 640)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1541, file: !1535, line: 146, baseType: !5905, size: 64, offset: 704)
!5905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5906, size: 64)
!5906 = !DISubroutineType(types: !5907)
!5907 = !{!1533, !1555}
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1541, file: !1535, line: 148, baseType: !5909, size: 64, offset: 768)
!5909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5910, size: 64)
!5910 = !DISubroutineType(types: !5911)
!5911 = !{!1533, !1555, !1533}
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1541, file: !1535, line: 151, baseType: !5913, size: 64, offset: 832)
!5913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5914, size: 64)
!5914 = !DISubroutineType(types: !5915)
!5915 = !{!1533, !1555, !333}
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1541, file: !1535, line: 153, baseType: !5917, size: 64, offset: 896)
!5917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5918, size: 64)
!5918 = !DISubroutineType(types: !5919)
!5919 = !{!147, !1555, !333, !333, !7, !7, !5920}
!5920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5921, size: 64)
!5921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1535, line: 94, size: 640, elements: !5922)
!5922 = !{!5923, !5924, !5925}
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5921, file: !1535, line: 95, baseType: !1533, size: 64)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !5921, file: !1535, line: 96, baseType: !7, size: 32, offset: 64)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !5921, file: !1535, line: 97, baseType: !5926, size: 512, offset: 128)
!5926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 512, elements: !815)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1541, file: !1535, line: 158, baseType: !5909, size: 64, offset: 960)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1541, file: !1535, line: 161, baseType: !5905, size: 64, offset: 1024)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1541, file: !1535, line: 163, baseType: !1544, size: 64, offset: 1088)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1541, file: !1535, line: 164, baseType: !5931, size: 64, offset: 1152)
!5931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5932, size: 64)
!5932 = !DISubroutineType(types: !5933)
!5933 = !{!147, !1555, !5934}
!5934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5935, size: 64)
!5935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1535, line: 73, size: 128, elements: !5936)
!5936 = !{!5937, !5938, !5939}
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5935, file: !1535, line: 74, baseType: !7, size: 32)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5935, file: !1535, line: 75, baseType: !7, size: 32, offset: 32)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !5935, file: !1535, line: 76, baseType: !1555, size: 64, offset: 64)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1541, file: !1535, line: 166, baseType: !5941, size: 64, offset: 1216)
!5941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5942, size: 64)
!5942 = !DISubroutineType(types: !5943)
!5943 = !{!218, !1533, !147}
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1541, file: !1535, line: 167, baseType: !5945, size: 64, offset: 1280)
!5945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5946, size: 64)
!5946 = !DISubroutineType(types: !5947)
!5947 = !{!147, !1555, !7}
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1541, file: !1535, line: 168, baseType: !5949, size: 64, offset: 1344)
!5949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5950, size: 64)
!5950 = !DISubroutineType(types: !5951)
!5951 = !{!147, !1533}
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1534, file: !1535, line: 44, baseType: !5509, size: 64, offset: 128)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1534, file: !1535, line: 45, baseType: !1471, size: 128, offset: 192)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1534, file: !1535, line: 46, baseType: !1471, size: 128, offset: 320)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1534, file: !1535, line: 47, baseType: !555, size: 8, offset: 448)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1468, file: !1461, line: 162, baseType: !185, size: 32, offset: 768)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1468, file: !1461, line: 163, baseType: !5958, size: 64, offset: 832)
!5958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5959, size: 64)
!5959 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !1461, line: 117, flags: DIFlagFwdDecl)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1468, file: !1461, line: 164, baseType: !5509, size: 64, offset: 896)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "pm_dev", scope: !1468, file: !1461, line: 165, baseType: !5509, size: 64, offset: 960)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1468, file: !1461, line: 167, baseType: !1467, size: 64, offset: 1024)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "msi_parent_ops", scope: !1468, file: !1461, line: 170, baseType: !5964, size: 64, offset: 1088)
!5964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5965, size: 64)
!5965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5966)
!5966 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_parent_ops", file: !1461, line: 49, flags: DIFlagFwdDecl)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1468, file: !1461, line: 174, baseType: !5968, size: 64, offset: 1152)
!5968 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !575, line: 170, baseType: !295)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1468, file: !1461, line: 175, baseType: !7, size: 32, offset: 1216)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1468, file: !1461, line: 176, baseType: !2778, size: 128, offset: 1280)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "revmap", scope: !1468, file: !1461, line: 177, baseType: !5972, offset: 1408)
!5972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5973, elements: !2467)
!5973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5974, size: 64)
!5974 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !5975, line: 11, flags: DIFlagFwdDecl)
!5975 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1460, file: !1461, line: 91, baseType: !5977, size: 64, offset: 64)
!5977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5978, size: 64)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{!147, !1467, !5980, !185}
!5980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5981, size: 64)
!5981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !1461, line: 63, size: 640, elements: !5982)
!5982 = !{!5983, !5984, !5985}
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5981, file: !1461, line: 64, baseType: !1533, size: 64)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !5981, file: !1461, line: 65, baseType: !147, size: 32, offset: 64)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !5981, file: !1461, line: 66, baseType: !5986, size: 512, offset: 96)
!5986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1761, size: 512, elements: !431)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1460, file: !1461, line: 93, baseType: !5988, size: 64, offset: 128)
!5988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5989, size: 64)
!5989 = !DISubroutineType(types: !5990)
!5990 = !{!147, !1467, !7, !5968}
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1460, file: !1461, line: 94, baseType: !5992, size: 64, offset: 192)
!5992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5993, size: 64)
!5993 = !DISubroutineType(types: !5994)
!5994 = !{null, !1467, !7}
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1460, file: !1461, line: 95, baseType: !5996, size: 64, offset: 256)
!5996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5997, size: 64)
!5997 = !DISubroutineType(types: !5998)
!5998 = !{!147, !1467, !5800, !5999, !7, !2265, !924}
!5999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6000, size: 64)
!6000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1761)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1460, file: !1461, line: 100, baseType: !6002, size: 64, offset: 320)
!6002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6003, size: 64)
!6003 = !DISubroutineType(types: !6004)
!6004 = !{!147, !1467, !7, !7, !218}
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1460, file: !1461, line: 102, baseType: !6006, size: 64, offset: 384)
!6006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6007, size: 64)
!6007 = !DISubroutineType(types: !6008)
!6008 = !{null, !1467, !7, !7}
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1460, file: !1461, line: 104, baseType: !6010, size: 64, offset: 448)
!6010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6011, size: 64)
!6011 = !DISubroutineType(types: !6012)
!6012 = !{!147, !1467, !5973, !574}
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1460, file: !1461, line: 105, baseType: !6014, size: 64, offset: 512)
!6014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6015, size: 64)
!6015 = !DISubroutineType(types: !6016)
!6016 = !{null, !1467, !5973}
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1460, file: !1461, line: 106, baseType: !6018, size: 64, offset: 576)
!6018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6019, size: 64)
!6019 = !DISubroutineType(types: !6020)
!6020 = !{!147, !1467, !5980, !2265, !924}
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1454, file: !38, line: 38, baseType: !5800, size: 64, offset: 128)
!6022 = !DILocation(line: 103, column: 54, scope: !1448)
!6023 = !DILocation(line: 105, column: 2, scope: !1448)
!6024 = !DILocation(line: 105, column: 27, scope: !1448)
!6025 = !DILocation(line: 110, column: 6, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 110, column: 6)
!6027 = !DILocation(line: 110, column: 9, scope: !6026)
!6028 = !DILocation(line: 110, column: 15, scope: !6026)
!6029 = !DILocation(line: 110, column: 6, scope: !1448)
!6030 = !DILocation(line: 111, column: 22, scope: !6026)
!6031 = !DILocation(line: 111, column: 25, scope: !6026)
!6032 = !DILocation(line: 111, column: 33, scope: !6026)
!6033 = !DILocation(line: 111, column: 36, scope: !6026)
!6034 = !DILocation(line: 111, column: 46, scope: !6026)
!6035 = !DILocation(line: 111, column: 3, scope: !6026)
!6036 = !DILocation(line: 112, column: 1, scope: !1448)
!6037 = distinct !DISubprogram(name: "construct_default_ioirq_mptable", scope: !3, file: !3, line: 254, type: !699, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6038)
!6038 = !{!6039, !6040, !6041, !6042}
!6039 = !DILocalVariable(name: "mpc_default_type", arg: 1, scope: !6037, file: !3, line: 254, type: !147)
!6040 = !DILocalVariable(name: "intsrc", scope: !6037, file: !3, line: 256, type: !258)
!6041 = !DILocalVariable(name: "i", scope: !6037, file: !3, line: 257, type: !147)
!6042 = !DILocalVariable(name: "ELCR_fallback", scope: !6037, file: !3, line: 258, type: !147)
!6043 = !DILocation(line: 254, column: 56, scope: !6037)
!6044 = !DILocation(line: 256, column: 2, scope: !6037)
!6045 = !DILocation(line: 256, column: 20, scope: !6037)
!6046 = !DILocation(line: 257, column: 2, scope: !6037)
!6047 = !DILocation(line: 257, column: 6, scope: !6037)
!6048 = !DILocation(line: 258, column: 2, scope: !6037)
!6049 = !DILocation(line: 258, column: 6, scope: !6037)
!6050 = !DILocation(line: 260, column: 9, scope: !6037)
!6051 = !DILocation(line: 260, column: 14, scope: !6037)
!6052 = !DILocation(line: 261, column: 9, scope: !6037)
!6053 = !DILocation(line: 261, column: 17, scope: !6037)
!6054 = !DILocation(line: 262, column: 9, scope: !6037)
!6055 = !DILocation(line: 262, column: 16, scope: !6037)
!6056 = !DILocation(line: 263, column: 19, scope: !6037)
!6057 = !DILocation(line: 263, column: 9, scope: !6037)
!6058 = !DILocation(line: 263, column: 17, scope: !6037)
!6059 = !DILocation(line: 265, column: 9, scope: !6037)
!6060 = !DILocation(line: 265, column: 17, scope: !6037)
!6061 = !DILocation(line: 275, column: 6, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6037, file: !3, line: 275, column: 6)
!6063 = !DILocation(line: 275, column: 23, scope: !6062)
!6064 = !DILocation(line: 275, column: 6, scope: !6037)
!6065 = !DILocation(line: 276, column: 3, scope: !6066)
!6066 = distinct !DILexicalBlock(scope: !6067, file: !3, line: 276, column: 3)
!6067 = distinct !DILexicalBlock(scope: !6062, file: !3, line: 275, column: 29)
!6068 = !DILocation(line: 276, column: 3, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 276, column: 3)
!6070 = !DILocation(line: 278, column: 7, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6067, file: !3, line: 278, column: 7)
!6072 = !DILocation(line: 278, column: 23, scope: !6071)
!6073 = !DILocation(line: 278, column: 26, scope: !6071)
!6074 = !DILocation(line: 278, column: 42, scope: !6071)
!6075 = !DILocation(line: 278, column: 45, scope: !6071)
!6076 = !DILocation(line: 278, column: 61, scope: !6071)
!6077 = !DILocation(line: 279, column: 7, scope: !6071)
!6078 = !DILocation(line: 278, column: 7, scope: !6067)
!6079 = !DILocation(line: 280, column: 4, scope: !6080)
!6080 = distinct !DILexicalBlock(scope: !6071, file: !3, line: 280, column: 4)
!6081 = !DILocation(line: 280, column: 4, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6080, file: !3, line: 280, column: 4)
!6083 = !DILocation(line: 280, column: 4, scope: !6071)
!6084 = !DILocation(line: 282, column: 4, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6086, file: !3, line: 282, column: 4)
!6086 = distinct !DILexicalBlock(scope: !6071, file: !3, line: 281, column: 8)
!6087 = !DILocation(line: 282, column: 4, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6085, file: !3, line: 282, column: 4)
!6089 = !DILocation(line: 283, column: 18, scope: !6086)
!6090 = !DILocation(line: 285, column: 2, scope: !6067)
!6091 = !DILocation(line: 287, column: 9, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6037, file: !3, line: 287, column: 2)
!6093 = !DILocation(line: 287, column: 7, scope: !6092)
!6094 = !DILocation(line: 287, column: 14, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6092, file: !3, line: 287, column: 2)
!6096 = !DILocation(line: 287, column: 16, scope: !6095)
!6097 = !DILocation(line: 287, column: 2, scope: !6092)
!6098 = !DILocation(line: 288, column: 11, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6095, file: !3, line: 287, column: 27)
!6100 = !DILocation(line: 288, column: 3, scope: !6099)
!6101 = !DILocation(line: 290, column: 8, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 290, column: 8)
!6103 = distinct !DILexicalBlock(scope: !6099, file: !3, line: 288, column: 29)
!6104 = !DILocation(line: 290, column: 10, scope: !6102)
!6105 = !DILocation(line: 290, column: 15, scope: !6102)
!6106 = !DILocation(line: 290, column: 18, scope: !6102)
!6107 = !DILocation(line: 290, column: 20, scope: !6102)
!6108 = !DILocation(line: 290, column: 8, scope: !6103)
!6109 = !DILocation(line: 291, column: 5, scope: !6102)
!6110 = !DILocation(line: 290, column: 23, scope: !6102)
!6111 = !DILocation(line: 294, column: 8, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 294, column: 8)
!6113 = !DILocation(line: 294, column: 10, scope: !6112)
!6114 = !DILocation(line: 294, column: 8, scope: !6103)
!6115 = !DILocation(line: 295, column: 5, scope: !6112)
!6116 = !DILocation(line: 296, column: 3, scope: !6103)
!6117 = !DILocation(line: 298, column: 7, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6099, file: !3, line: 298, column: 7)
!6119 = !DILocation(line: 298, column: 7, scope: !6099)
!6120 = !DILocation(line: 304, column: 21, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6122, file: !3, line: 304, column: 8)
!6122 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 298, column: 22)
!6123 = !DILocation(line: 304, column: 8, scope: !6121)
!6124 = !DILocation(line: 304, column: 8, scope: !6122)
!6125 = !DILocation(line: 305, column: 12, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 304, column: 25)
!6127 = !DILocation(line: 305, column: 20, scope: !6126)
!6128 = !DILocation(line: 307, column: 4, scope: !6126)
!6129 = !DILocation(line: 308, column: 12, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 307, column: 11)
!6131 = !DILocation(line: 308, column: 20, scope: !6130)
!6132 = !DILocation(line: 311, column: 3, scope: !6122)
!6133 = !DILocation(line: 313, column: 22, scope: !6099)
!6134 = !DILocation(line: 313, column: 10, scope: !6099)
!6135 = !DILocation(line: 313, column: 20, scope: !6099)
!6136 = !DILocation(line: 314, column: 19, scope: !6099)
!6137 = !DILocation(line: 314, column: 23, scope: !6099)
!6138 = !DILocation(line: 314, column: 10, scope: !6099)
!6139 = !DILocation(line: 314, column: 17, scope: !6099)
!6140 = !DILocation(line: 315, column: 3, scope: !6099)
!6141 = !DILocation(line: 316, column: 2, scope: !6099)
!6142 = !DILocation(line: 287, column: 23, scope: !6095)
!6143 = !DILocation(line: 287, column: 2, scope: !6095)
!6144 = distinct !{!6144, !6097, !6145, !763, !764}
!6145 = !DILocation(line: 316, column: 2, scope: !6092)
!6146 = !DILocation(line: 318, column: 9, scope: !6037)
!6147 = !DILocation(line: 318, column: 17, scope: !6037)
!6148 = !DILocation(line: 319, column: 9, scope: !6037)
!6149 = !DILocation(line: 319, column: 19, scope: !6037)
!6150 = !DILocation(line: 320, column: 9, scope: !6037)
!6151 = !DILocation(line: 320, column: 16, scope: !6037)
!6152 = !DILocation(line: 321, column: 2, scope: !6037)
!6153 = !DILocation(line: 322, column: 1, scope: !6037)
!6154 = distinct !DISubprogram(name: "mpc_oem_bus_info", scope: !3, file: !3, line: 66, type: !6155, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6157)
!6155 = !DISubroutineType(types: !6156)
!6156 = !{null, !240, !339}
!6157 = !{!6158, !6159}
!6158 = !DILocalVariable(name: "m", arg: 1, scope: !6154, file: !3, line: 66, type: !240)
!6159 = !DILocalVariable(name: "str", arg: 2, scope: !6154, file: !3, line: 66, type: !339)
!6160 = !DILocation(line: 66, column: 53, scope: !6154)
!6161 = !DILocation(line: 66, column: 62, scope: !6154)
!6162 = !DILocation(line: 68, column: 9, scope: !6154)
!6163 = !DILocation(line: 68, column: 14, scope: !6154)
!6164 = !DILocation(line: 68, column: 17, scope: !6154)
!6165 = !DILocation(line: 68, column: 2, scope: !6154)
!6166 = !DILocation(line: 69, column: 2, scope: !6154)
!6167 = !DILocation(line: 69, column: 9, scope: !6154)
!6168 = !DILocation(line: 70, column: 2, scope: !6154)
!6169 = !DILocation(line: 70, column: 2, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 70, column: 2)
!6171 = distinct !DILexicalBlock(scope: !6154, file: !3, line: 70, column: 2)
!6172 = !DILocation(line: 70, column: 2, scope: !6171)
!6173 = !DILocation(line: 70, column: 2, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 70, column: 2)
!6175 = !DILocation(line: 70, column: 2, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 70, column: 2)
!6177 = !DILocation(line: 71, column: 1, scope: !6154)
!6178 = distinct !DISubprogram(name: "set_bit", scope: !6179, file: !6179, line: 26, type: !6180, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6184)
!6179 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6180 = !DISubroutineType(types: !6181)
!6181 = !{null, !224, !6182}
!6182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6183, size: 64)
!6183 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !295)
!6184 = !{!6185, !6186}
!6185 = !DILocalVariable(name: "nr", arg: 1, scope: !6178, file: !6179, line: 26, type: !224)
!6186 = !DILocalVariable(name: "addr", arg: 2, scope: !6178, file: !6179, line: 26, type: !6182)
!6187 = !DILocation(line: 26, column: 42, scope: !6178)
!6188 = !DILocation(line: 26, column: 70, scope: !6178)
!6189 = !DILocation(line: 28, column: 26, scope: !6178)
!6190 = !DILocation(line: 28, column: 33, scope: !6178)
!6191 = !DILocation(line: 28, column: 31, scope: !6178)
!6192 = !DILocation(line: 28, column: 2, scope: !6178)
!6193 = !DILocation(line: 29, column: 15, scope: !6178)
!6194 = !DILocation(line: 29, column: 19, scope: !6178)
!6195 = !DILocation(line: 29, column: 2, scope: !6178)
!6196 = !DILocation(line: 30, column: 1, scope: !6178)
!6197 = !DISubprogram(name: "strncmp", scope: !6198, file: !6198, line: 91, type: !6199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6198 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6199 = !DISubroutineType(types: !6200)
!6200 = !{!147, !333, !333, !1661}
!6201 = distinct !DISubprogram(name: "clear_bit", scope: !6179, file: !6179, line: 39, type: !6180, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6202)
!6202 = !{!6203, !6204}
!6203 = !DILocalVariable(name: "nr", arg: 1, scope: !6201, file: !6179, line: 39, type: !224)
!6204 = !DILocalVariable(name: "addr", arg: 2, scope: !6201, file: !6179, line: 39, type: !6182)
!6205 = !DILocation(line: 39, column: 44, scope: !6201)
!6206 = !DILocation(line: 39, column: 72, scope: !6201)
!6207 = !DILocation(line: 41, column: 26, scope: !6201)
!6208 = !DILocation(line: 41, column: 33, scope: !6201)
!6209 = !DILocation(line: 41, column: 31, scope: !6201)
!6210 = !DILocation(line: 41, column: 2, scope: !6201)
!6211 = !DILocation(line: 42, column: 17, scope: !6201)
!6212 = !DILocation(line: 42, column: 21, scope: !6201)
!6213 = !DILocation(line: 42, column: 2, scope: !6201)
!6214 = !DILocation(line: 43, column: 1, scope: !6201)
!6215 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6216, file: !6216, line: 80, type: !6217, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6222)
!6216 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6217 = !DISubroutineType(types: !6218)
!6218 = !{null, !6219, !1660}
!6219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6220, size: 64)
!6220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6221)
!6221 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6222 = !{!6223, !6224}
!6223 = !DILocalVariable(name: "v", arg: 1, scope: !6215, file: !6216, line: 80, type: !6219)
!6224 = !DILocalVariable(name: "size", arg: 2, scope: !6215, file: !6216, line: 80, type: !1660)
!6225 = !DILocation(line: 80, column: 74, scope: !6215)
!6226 = !DILocation(line: 80, column: 84, scope: !6215)
!6227 = !DILocation(line: 82, column: 20, scope: !6215)
!6228 = !DILocation(line: 82, column: 23, scope: !6215)
!6229 = !DILocation(line: 82, column: 2, scope: !6215)
!6230 = !DILocation(line: 83, column: 2, scope: !6215)
!6231 = !DILocation(line: 84, column: 1, scope: !6215)
!6232 = distinct !DISubprogram(name: "arch_set_bit", scope: !6233, file: !6233, line: 52, type: !6180, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6234)
!6233 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6234 = !{!6235, !6236}
!6235 = !DILocalVariable(name: "nr", arg: 1, scope: !6232, file: !6233, line: 52, type: !224)
!6236 = !DILocalVariable(name: "addr", arg: 2, scope: !6232, file: !6233, line: 52, type: !6182)
!6237 = !DILocation(line: 52, column: 19, scope: !6232)
!6238 = !DILocation(line: 52, column: 47, scope: !6232)
!6239 = !DILocation(line: 54, column: 27, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6232, file: !6233, line: 54, column: 6)
!6241 = !DILocation(line: 54, column: 6, scope: !6240)
!6242 = !DILocation(line: 54, column: 6, scope: !6232)
!6243 = !DILocation(line: 56, column: 6, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6240, file: !6233, line: 54, column: 32)
!6245 = !DILocation(line: 57, column: 12, scope: !6244)
!6246 = !DILocation(line: 55, column: 3, scope: !6244)
!6247 = !{i64 2148310163, i64 2148310202, i64 2148310223, i64 2148310260, i64 2148310283, i64 2148310153}
!6248 = !DILocation(line: 59, column: 2, scope: !6244)
!6249 = !DILocation(line: 61, column: 8, scope: !6250)
!6250 = distinct !DILexicalBlock(scope: !6240, file: !6233, line: 59, column: 9)
!6251 = !DILocation(line: 61, column: 32, scope: !6250)
!6252 = !DILocation(line: 60, column: 3, scope: !6250)
!6253 = !{i64 2148310448, i64 2148310487, i64 2148310508, i64 2148310545, i64 2148310568, i64 2148310438}
!6254 = !DILocation(line: 63, column: 1, scope: !6232)
!6255 = distinct !DISubprogram(name: "kasan_check_write", scope: !6256, file: !6256, line: 44, type: !6257, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6259)
!6256 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6257 = !DISubroutineType(types: !6258)
!6258 = !{!574, !6219, !7}
!6259 = !{!6260, !6261}
!6260 = !DILocalVariable(name: "p", arg: 1, scope: !6255, file: !6256, line: 44, type: !6219)
!6261 = !DILocalVariable(name: "size", arg: 2, scope: !6255, file: !6256, line: 44, type: !7)
!6262 = !DILocation(line: 44, column: 59, scope: !6255)
!6263 = !DILocation(line: 44, column: 75, scope: !6255)
!6264 = !DILocation(line: 46, column: 2, scope: !6255)
!6265 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6266, file: !6266, line: 229, type: !6267, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6269)
!6266 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6267 = !DISubroutineType(types: !6268)
!6268 = !{null, !6219, !1660, !147}
!6269 = !{!6270, !6271, !6272}
!6270 = !DILocalVariable(name: "ptr", arg: 1, scope: !6265, file: !6266, line: 229, type: !6219)
!6271 = !DILocalVariable(name: "size", arg: 2, scope: !6265, file: !6266, line: 229, type: !1660)
!6272 = !DILocalVariable(name: "type", arg: 3, scope: !6265, file: !6266, line: 230, type: !147)
!6273 = !DILocation(line: 229, column: 60, scope: !6265)
!6274 = !DILocation(line: 229, column: 72, scope: !6265)
!6275 = !DILocation(line: 230, column: 15, scope: !6265)
!6276 = !DILocation(line: 230, column: 23, scope: !6265)
!6277 = distinct !DISubprogram(name: "arch_clear_bit", scope: !6233, file: !6233, line: 72, type: !6180, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6278)
!6278 = !{!6279, !6280}
!6279 = !DILocalVariable(name: "nr", arg: 1, scope: !6277, file: !6233, line: 72, type: !224)
!6280 = !DILocalVariable(name: "addr", arg: 2, scope: !6277, file: !6233, line: 72, type: !6182)
!6281 = !DILocation(line: 72, column: 21, scope: !6277)
!6282 = !DILocation(line: 72, column: 49, scope: !6277)
!6283 = !DILocation(line: 74, column: 27, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6277, file: !6233, line: 74, column: 6)
!6285 = !DILocation(line: 74, column: 6, scope: !6284)
!6286 = !DILocation(line: 74, column: 6, scope: !6277)
!6287 = !DILocation(line: 76, column: 6, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6284, file: !6233, line: 74, column: 32)
!6289 = !DILocation(line: 77, column: 13, scope: !6288)
!6290 = !DILocation(line: 77, column: 12, scope: !6288)
!6291 = !DILocation(line: 75, column: 3, scope: !6288)
!6292 = !{i64 2148311451, i64 2148311490, i64 2148311511, i64 2148311548, i64 2148311571, i64 2148311441}
!6293 = !DILocation(line: 78, column: 2, scope: !6288)
!6294 = !DILocation(line: 80, column: 8, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6284, file: !6233, line: 78, column: 9)
!6296 = !DILocation(line: 80, column: 32, scope: !6295)
!6297 = !DILocation(line: 79, column: 3, scope: !6295)
!6298 = !{i64 2148311736, i64 2148311775, i64 2148311796, i64 2148311833, i64 2148311856, i64 2148311726}
!6299 = !DILocation(line: 82, column: 1, scope: !6277)
!6300 = !DISubprogram(name: "mp_register_ioapic", scope: !6301, file: !6301, line: 150, type: !6302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6301 = !DIFile(filename: "./arch/x86/include/asm/io_apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c646052d57aa5ccfb364bced6a46c18")
!6302 = !DISubroutineType(types: !6303)
!6303 = !{!147, !147, !1761, !1761, !6304}
!6304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!6305 = !DISubprogram(name: "mpc_ioapic_id", scope: !6301, file: !6301, line: 103, type: !1409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6306 = distinct !DISubprogram(name: "ELCR_trigger", scope: !3, file: !3, line: 246, type: !6307, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6309)
!6307 = !DISubroutineType(types: !6308)
!6308 = !{!147, !7}
!6309 = !{!6310, !6311}
!6310 = !DILocalVariable(name: "irq", arg: 1, scope: !6306, file: !3, line: 246, type: !7)
!6311 = !DILocalVariable(name: "port", scope: !6306, file: !3, line: 248, type: !7)
!6312 = !DILocation(line: 246, column: 45, scope: !6306)
!6313 = !DILocation(line: 248, column: 2, scope: !6306)
!6314 = !DILocation(line: 248, column: 15, scope: !6306)
!6315 = !DILocation(line: 250, column: 22, scope: !6306)
!6316 = !DILocation(line: 250, column: 26, scope: !6306)
!6317 = !DILocation(line: 250, column: 19, scope: !6306)
!6318 = !DILocation(line: 250, column: 7, scope: !6306)
!6319 = !DILocation(line: 251, column: 14, scope: !6306)
!6320 = !DILocation(line: 251, column: 10, scope: !6306)
!6321 = !DILocation(line: 251, column: 24, scope: !6306)
!6322 = !DILocation(line: 251, column: 28, scope: !6306)
!6323 = !DILocation(line: 251, column: 20, scope: !6306)
!6324 = !DILocation(line: 251, column: 34, scope: !6306)
!6325 = !DILocation(line: 252, column: 1, scope: !6306)
!6326 = !DILocation(line: 251, column: 2, scope: !6306)
!6327 = !DISubprogram(name: "mp_save_irq", scope: !6301, file: !6301, line: 158, type: !6328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6328 = !DISubroutineType(types: !6329)
!6329 = !{null, !257}
!6330 = distinct !DISubprogram(name: "__inb", scope: !6331, file: !6331, line: 22, type: !6332, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6334)
!6331 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!6332 = !DISubroutineType(types: !6333)
!6333 = !{!555, !1522}
!6334 = !{!6335, !6336}
!6335 = !DILocalVariable(name: "port", arg: 1, scope: !6330, file: !6331, line: 22, type: !1522)
!6336 = !DILocalVariable(name: "value", scope: !6330, file: !6331, line: 22, type: !555)
!6337 = !DILocation(line: 22, column: 1, scope: !6330)
!6338 = !{i64 2153949571}
!6339 = distinct !DISubprogram(name: "get_mpc_size", scope: !3, file: !3, line: 411, type: !6340, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6342)
!6340 = !DISubroutineType(types: !6341)
!6341 = !{!295, !295}
!6342 = !{!6343, !6344, !6345}
!6343 = !DILocalVariable(name: "physptr", arg: 1, scope: !6339, file: !3, line: 411, type: !295)
!6344 = !DILocalVariable(name: "mpc", scope: !6339, file: !3, line: 413, type: !806)
!6345 = !DILocalVariable(name: "size", scope: !6339, file: !3, line: 414, type: !295)
!6346 = !DILocation(line: 411, column: 56, scope: !6339)
!6347 = !DILocation(line: 413, column: 2, scope: !6339)
!6348 = !DILocation(line: 413, column: 20, scope: !6339)
!6349 = !DILocation(line: 414, column: 2, scope: !6339)
!6350 = !DILocation(line: 414, column: 16, scope: !6339)
!6351 = !DILocation(line: 416, column: 23, scope: !6339)
!6352 = !DILocation(line: 416, column: 8, scope: !6339)
!6353 = !DILocation(line: 416, column: 6, scope: !6339)
!6354 = !DILocation(line: 417, column: 9, scope: !6339)
!6355 = !DILocation(line: 417, column: 14, scope: !6339)
!6356 = !DILocation(line: 417, column: 7, scope: !6339)
!6357 = !DILocation(line: 418, column: 17, scope: !6339)
!6358 = !DILocation(line: 418, column: 2, scope: !6339)
!6359 = !DILocation(line: 419, column: 2, scope: !6339)
!6360 = !DILocation(line: 419, column: 2, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6362, file: !3, line: 419, column: 2)
!6362 = distinct !DILexicalBlock(scope: !6339, file: !3, line: 419, column: 2)
!6363 = !DILocation(line: 419, column: 2, scope: !6362)
!6364 = !DILocation(line: 419, column: 2, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6361, file: !3, line: 419, column: 2)
!6366 = !DILocation(line: 419, column: 2, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 419, column: 2)
!6368 = !DILocation(line: 421, column: 9, scope: !6339)
!6369 = !DILocation(line: 422, column: 1, scope: !6339)
!6370 = !DILocation(line: 421, column: 2, scope: !6339)
!6371 = distinct !DISubprogram(name: "smp_read_mpc", scope: !3, file: !3, line: 188, type: !6372, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6374)
!6372 = !DISubroutineType(types: !6373)
!6373 = !{!147, !806, !7}
!6374 = !{!6375, !6376, !6377, !6378, !6379, !6380}
!6375 = !DILocalVariable(name: "mpc", arg: 1, scope: !6371, file: !3, line: 188, type: !806)
!6376 = !DILocalVariable(name: "early", arg: 2, scope: !6371, file: !3, line: 188, type: !7)
!6377 = !DILocalVariable(name: "str", scope: !6371, file: !3, line: 190, type: !430)
!6378 = !DILocalVariable(name: "oem", scope: !6371, file: !3, line: 191, type: !1070)
!6379 = !DILocalVariable(name: "count", scope: !6371, file: !3, line: 193, type: !147)
!6380 = !DILocalVariable(name: "mpt", scope: !6371, file: !3, line: 194, type: !225)
!6381 = !DILocation(line: 188, column: 50, scope: !6371)
!6382 = !DILocation(line: 188, column: 64, scope: !6371)
!6383 = !DILocation(line: 190, column: 2, scope: !6371)
!6384 = !DILocation(line: 190, column: 7, scope: !6371)
!6385 = !DILocation(line: 191, column: 2, scope: !6371)
!6386 = !DILocation(line: 191, column: 7, scope: !6371)
!6387 = !DILocation(line: 193, column: 2, scope: !6371)
!6388 = !DILocation(line: 193, column: 6, scope: !6371)
!6389 = !DILocation(line: 194, column: 2, scope: !6371)
!6390 = !DILocation(line: 194, column: 17, scope: !6371)
!6391 = !DILocation(line: 194, column: 41, scope: !6371)
!6392 = !DILocation(line: 194, column: 48, scope: !6371)
!6393 = !DILocation(line: 194, column: 46, scope: !6371)
!6394 = !DILocation(line: 196, column: 21, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6371, file: !3, line: 196, column: 6)
!6396 = !DILocation(line: 196, column: 26, scope: !6395)
!6397 = !DILocation(line: 196, column: 31, scope: !6395)
!6398 = !DILocation(line: 196, column: 7, scope: !6395)
!6399 = !DILocation(line: 196, column: 6, scope: !6371)
!6400 = !DILocation(line: 197, column: 3, scope: !6395)
!6401 = !DILocation(line: 200, column: 7, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6371, file: !3, line: 200, column: 6)
!6403 = !DILocation(line: 200, column: 6, scope: !6371)
!6404 = !DILocation(line: 201, column: 26, scope: !6402)
!6405 = !DILocation(line: 201, column: 31, scope: !6402)
!6406 = !DILocation(line: 201, column: 3, scope: !6402)
!6407 = !DILocation(line: 203, column: 6, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6371, file: !3, line: 203, column: 6)
!6409 = !DILocation(line: 203, column: 6, scope: !6371)
!6410 = !DILocation(line: 204, column: 3, scope: !6408)
!6411 = !DILocation(line: 207, column: 2, scope: !6371)
!6412 = !DILocation(line: 207, column: 9, scope: !6371)
!6413 = !DILocation(line: 207, column: 17, scope: !6371)
!6414 = !DILocation(line: 207, column: 22, scope: !6371)
!6415 = !DILocation(line: 207, column: 15, scope: !6371)
!6416 = !DILocation(line: 208, column: 12, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6371, file: !3, line: 207, column: 30)
!6418 = !DILocation(line: 208, column: 11, scope: !6417)
!6419 = !DILocation(line: 208, column: 3, scope: !6417)
!6420 = !DILocation(line: 211, column: 9, scope: !6421)
!6421 = distinct !DILexicalBlock(scope: !6422, file: !3, line: 211, column: 8)
!6422 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 208, column: 17)
!6423 = !DILocation(line: 211, column: 8, scope: !6422)
!6424 = !DILocation(line: 212, column: 41, scope: !6421)
!6425 = !DILocation(line: 212, column: 5, scope: !6421)
!6426 = !DILocation(line: 213, column: 4, scope: !6422)
!6427 = !DILocation(line: 214, column: 4, scope: !6422)
!6428 = !DILocation(line: 216, column: 34, scope: !6422)
!6429 = !DILocation(line: 216, column: 4, scope: !6422)
!6430 = !DILocation(line: 217, column: 4, scope: !6422)
!6431 = !DILocation(line: 218, column: 4, scope: !6422)
!6432 = !DILocation(line: 220, column: 40, scope: !6422)
!6433 = !DILocation(line: 220, column: 4, scope: !6422)
!6434 = !DILocation(line: 221, column: 4, scope: !6422)
!6435 = !DILocation(line: 222, column: 4, scope: !6422)
!6436 = !DILocation(line: 224, column: 37, scope: !6422)
!6437 = !DILocation(line: 224, column: 4, scope: !6422)
!6438 = !DILocation(line: 225, column: 4, scope: !6422)
!6439 = !DILocation(line: 226, column: 4, scope: !6422)
!6440 = !DILocation(line: 228, column: 42, scope: !6422)
!6441 = !DILocation(line: 228, column: 4, scope: !6422)
!6442 = !DILocation(line: 229, column: 4, scope: !6422)
!6443 = !DILocation(line: 230, column: 4, scope: !6422)
!6444 = !DILocation(line: 233, column: 21, scope: !6422)
!6445 = !DILocation(line: 233, column: 26, scope: !6422)
!6446 = !DILocation(line: 233, column: 4, scope: !6422)
!6447 = !DILocation(line: 234, column: 12, scope: !6422)
!6448 = !DILocation(line: 234, column: 17, scope: !6422)
!6449 = !DILocation(line: 234, column: 10, scope: !6422)
!6450 = !DILocation(line: 235, column: 4, scope: !6422)
!6451 = distinct !{!6451, !6411, !6452, !763, !764}
!6452 = !DILocation(line: 237, column: 2, scope: !6371)
!6453 = !DILocation(line: 239, column: 7, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6371, file: !3, line: 239, column: 6)
!6455 = !DILocation(line: 239, column: 6, scope: !6371)
!6456 = !DILocation(line: 240, column: 3, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 240, column: 3)
!6458 = !DILocation(line: 240, column: 3, scope: !6459)
!6459 = distinct !DILexicalBlock(scope: !6457, file: !3, line: 240, column: 3)
!6460 = !DILocation(line: 240, column: 3, scope: !6454)
!6461 = !DILocation(line: 241, column: 9, scope: !6371)
!6462 = !DILocation(line: 241, column: 2, scope: !6371)
!6463 = !DILocation(line: 242, column: 1, scope: !6371)
!6464 = distinct !DISubprogram(name: "smp_check_mpc", scope: !3, file: !3, line: 139, type: !6465, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6467)
!6465 = !DISubroutineType(types: !6466)
!6466 = !{!147, !806, !339, !339}
!6467 = !{!6468, !6469, !6470}
!6468 = !DILocalVariable(name: "mpc", arg: 1, scope: !6464, file: !3, line: 139, type: !806)
!6469 = !DILocalVariable(name: "oem", arg: 2, scope: !6464, file: !3, line: 139, type: !339)
!6470 = !DILocalVariable(name: "str", arg: 3, scope: !6464, file: !3, line: 139, type: !339)
!6471 = !DILocation(line: 139, column: 51, scope: !6464)
!6472 = !DILocation(line: 139, column: 62, scope: !6464)
!6473 = !DILocation(line: 139, column: 73, scope: !6464)
!6474 = !DILocation(line: 142, column: 13, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 142, column: 6)
!6476 = !DILocation(line: 142, column: 18, scope: !6475)
!6477 = !DILocation(line: 142, column: 6, scope: !6475)
!6478 = !DILocation(line: 142, column: 6, scope: !6464)
!6479 = !DILocation(line: 143, column: 3, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6481, file: !3, line: 143, column: 3)
!6481 = distinct !DILexicalBlock(scope: !6475, file: !3, line: 142, column: 48)
!6482 = !DILocation(line: 143, column: 3, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 143, column: 3)
!6484 = !DILocation(line: 146, column: 3, scope: !6481)
!6485 = !DILocation(line: 148, column: 36, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 148, column: 6)
!6487 = !DILocation(line: 148, column: 41, scope: !6486)
!6488 = !DILocation(line: 148, column: 46, scope: !6486)
!6489 = !DILocation(line: 148, column: 6, scope: !6486)
!6490 = !DILocation(line: 148, column: 6, scope: !6464)
!6491 = !DILocation(line: 149, column: 3, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6493, file: !3, line: 149, column: 3)
!6493 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 148, column: 55)
!6494 = !DILocation(line: 149, column: 3, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6492, file: !3, line: 149, column: 3)
!6496 = !DILocation(line: 150, column: 3, scope: !6493)
!6497 = !DILocation(line: 152, column: 6, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 152, column: 6)
!6499 = !DILocation(line: 152, column: 11, scope: !6498)
!6500 = !DILocation(line: 152, column: 16, scope: !6498)
!6501 = !DILocation(line: 152, column: 24, scope: !6498)
!6502 = !DILocation(line: 152, column: 27, scope: !6498)
!6503 = !DILocation(line: 152, column: 32, scope: !6498)
!6504 = !DILocation(line: 152, column: 37, scope: !6498)
!6505 = !DILocation(line: 152, column: 6, scope: !6464)
!6506 = !DILocation(line: 153, column: 3, scope: !6507)
!6507 = distinct !DILexicalBlock(scope: !6508, file: !3, line: 153, column: 3)
!6508 = distinct !DILexicalBlock(scope: !6498, file: !3, line: 152, column: 46)
!6509 = !DILocation(line: 153, column: 3, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 153, column: 3)
!6511 = !DILocation(line: 154, column: 3, scope: !6508)
!6512 = !DILocation(line: 156, column: 7, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 156, column: 6)
!6514 = !DILocation(line: 156, column: 12, scope: !6513)
!6515 = !DILocation(line: 156, column: 6, scope: !6464)
!6516 = !DILocation(line: 157, column: 3, scope: !6517)
!6517 = distinct !DILexicalBlock(scope: !6518, file: !3, line: 157, column: 3)
!6518 = distinct !DILexicalBlock(scope: !6513, file: !3, line: 156, column: 19)
!6519 = !DILocation(line: 157, column: 3, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6517, file: !3, line: 157, column: 3)
!6521 = !DILocation(line: 158, column: 3, scope: !6518)
!6522 = !DILocation(line: 160, column: 9, scope: !6464)
!6523 = !DILocation(line: 160, column: 14, scope: !6464)
!6524 = !DILocation(line: 160, column: 19, scope: !6464)
!6525 = !DILocation(line: 160, column: 2, scope: !6464)
!6526 = !DILocation(line: 161, column: 2, scope: !6464)
!6527 = !DILocation(line: 161, column: 9, scope: !6464)
!6528 = !DILocation(line: 162, column: 2, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 162, column: 2)
!6530 = !DILocation(line: 162, column: 2, scope: !6531)
!6531 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 162, column: 2)
!6532 = !DILocation(line: 164, column: 9, scope: !6464)
!6533 = !DILocation(line: 164, column: 14, scope: !6464)
!6534 = !DILocation(line: 164, column: 19, scope: !6464)
!6535 = !DILocation(line: 164, column: 2, scope: !6464)
!6536 = !DILocation(line: 165, column: 2, scope: !6464)
!6537 = !DILocation(line: 165, column: 10, scope: !6464)
!6538 = !DILocation(line: 167, column: 2, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 167, column: 2)
!6540 = !DILocation(line: 167, column: 2, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6539, file: !3, line: 167, column: 2)
!6542 = !DILocation(line: 169, column: 2, scope: !6543)
!6543 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 169, column: 2)
!6544 = !DILocation(line: 169, column: 2, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6543, file: !3, line: 169, column: 2)
!6546 = !DILocation(line: 171, column: 2, scope: !6464)
!6547 = !DILocation(line: 172, column: 1, scope: !6464)
!6548 = distinct !DISubprogram(name: "skip_entry", scope: !3, file: !3, line: 174, type: !6549, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6552)
!6549 = !DISubroutineType(types: !6550)
!6550 = !{null, !6551, !2046, !147}
!6551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!6552 = !{!6553, !6554, !6555}
!6553 = !DILocalVariable(name: "ptr", arg: 1, scope: !6548, file: !3, line: 174, type: !6551)
!6554 = !DILocalVariable(name: "count", arg: 2, scope: !6548, file: !3, line: 174, type: !2046)
!6555 = !DILocalVariable(name: "size", arg: 3, scope: !6548, file: !3, line: 174, type: !147)
!6556 = !DILocation(line: 174, column: 40, scope: !6548)
!6557 = !DILocation(line: 174, column: 50, scope: !6548)
!6558 = !DILocation(line: 174, column: 61, scope: !6548)
!6559 = !DILocation(line: 176, column: 10, scope: !6548)
!6560 = !DILocation(line: 176, column: 3, scope: !6548)
!6561 = !DILocation(line: 176, column: 7, scope: !6548)
!6562 = !DILocation(line: 177, column: 12, scope: !6548)
!6563 = !DILocation(line: 177, column: 3, scope: !6548)
!6564 = !DILocation(line: 177, column: 9, scope: !6548)
!6565 = !DILocation(line: 178, column: 1, scope: !6548)
!6566 = distinct !DISubprogram(name: "smp_dump_mptable", scope: !3, file: !3, line: 180, type: !6567, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6569)
!6567 = !DISubroutineType(types: !6568)
!6568 = !{null, !806, !225}
!6569 = !{!6570, !6571}
!6570 = !DILocalVariable(name: "mpc", arg: 1, scope: !6566, file: !3, line: 180, type: !806)
!6571 = !DILocalVariable(name: "mpt", arg: 2, scope: !6566, file: !3, line: 180, type: !225)
!6572 = !DILocation(line: 180, column: 55, scope: !6566)
!6573 = !DILocation(line: 180, column: 75, scope: !6566)
!6574 = !DILocation(line: 182, column: 2, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6566, file: !3, line: 182, column: 2)
!6576 = !DILocation(line: 182, column: 2, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6575, file: !3, line: 182, column: 2)
!6578 = !DILocation(line: 183, column: 2, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6566, file: !3, line: 183, column: 2)
!6580 = !DILocation(line: 183, column: 2, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6579, file: !3, line: 183, column: 2)
!6582 = !DILocation(line: 185, column: 7, scope: !6566)
!6583 = !DILocation(line: 185, column: 12, scope: !6566)
!6584 = !DILocation(line: 185, column: 17, scope: !6566)
!6585 = !DILocation(line: 184, column: 2, scope: !6566)
!6586 = !DILocation(line: 186, column: 1, scope: !6566)
!6587 = !DISubprogram(name: "memcmp", scope: !6198, file: !6198, line: 196, type: !6588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6588 = !DISubroutineType(types: !6589)
!6589 = !{!147, !1561, !1561, !1661}
!6590 = distinct !DISubprogram(name: "mpf_checksum", scope: !3, file: !3, line: 39, type: !6591, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6593)
!6591 = !DISubroutineType(types: !6592)
!6592 = !{!147, !225, !147}
!6593 = !{!6594, !6595, !6596}
!6594 = !DILocalVariable(name: "mp", arg: 1, scope: !6590, file: !3, line: 39, type: !225)
!6595 = !DILocalVariable(name: "len", arg: 2, scope: !6590, file: !3, line: 39, type: !147)
!6596 = !DILocalVariable(name: "sum", scope: !6590, file: !3, line: 41, type: !147)
!6597 = !DILocation(line: 39, column: 47, scope: !6590)
!6598 = !DILocation(line: 39, column: 55, scope: !6590)
!6599 = !DILocation(line: 41, column: 2, scope: !6590)
!6600 = !DILocation(line: 41, column: 6, scope: !6590)
!6601 = !DILocation(line: 43, column: 2, scope: !6590)
!6602 = !DILocation(line: 43, column: 12, scope: !6590)
!6603 = !DILocation(line: 44, column: 13, scope: !6590)
!6604 = !DILocation(line: 44, column: 10, scope: !6590)
!6605 = !DILocation(line: 44, column: 7, scope: !6590)
!6606 = distinct !{!6606, !6601, !6603, !763, !764}
!6607 = !DILocation(line: 46, column: 9, scope: !6590)
!6608 = !DILocation(line: 46, column: 13, scope: !6590)
!6609 = !DILocation(line: 47, column: 1, scope: !6590)
!6610 = !DILocation(line: 46, column: 2, scope: !6590)
!6611 = !DISubprogram(name: "print_hex_dump", scope: !212, file: !212, line: 713, type: !6612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6612 = !DISubroutineType(types: !6613)
!6613 = !{null, !333, !333, !147, !147, !147, !1561, !1660, !574}
!6614 = !DISubprogram(name: "memblock_reserve", scope: !6615, file: !6615, line: 116, type: !6616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6615 = !DIFile(filename: "./include/linux/memblock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee488cc8c6522cca1567fc06e1716948")
!6616 = !DISubroutineType(types: !6617)
!6617 = !{!147, !690, !690}
!6618 = distinct !DISubprogram(name: "smp_reserve_memory", scope: !3, file: !3, line: 541, type: !6619, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6621)
!6619 = !DISubroutineType(types: !6620)
!6620 = !{null, !278}
!6621 = !{!6622}
!6622 = !DILocalVariable(name: "mpf", arg: 1, scope: !6618, file: !3, line: 541, type: !278)
!6623 = !DILocation(line: 541, column: 57, scope: !6618)
!6624 = !DILocation(line: 543, column: 19, scope: !6618)
!6625 = !DILocation(line: 543, column: 24, scope: !6618)
!6626 = !DILocation(line: 543, column: 46, scope: !6618)
!6627 = !DILocation(line: 543, column: 51, scope: !6618)
!6628 = !DILocation(line: 543, column: 33, scope: !6618)
!6629 = !DILocation(line: 543, column: 2, scope: !6618)
!6630 = !DILocation(line: 544, column: 1, scope: !6618)
!6631 = distinct !DISubprogram(name: "phys_to_virt", scope: !6632, file: !6632, line: 147, type: !6633, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6635)
!6632 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!6633 = !DISubroutineType(types: !6634)
!6634 = !{!218, !690}
!6635 = !{!6636}
!6636 = !DILocalVariable(name: "address", arg: 1, scope: !6631, file: !6632, line: 147, type: !690)
!6637 = !DILocation(line: 147, column: 46, scope: !6631)
!6638 = !DILocation(line: 149, column: 9, scope: !6631)
!6639 = !DILocation(line: 149, column: 2, scope: !6631)
!6640 = !DISubprogram(name: "memparse", scope: !6641, file: !6641, line: 209, type: !6642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6641 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6642 = !DISubroutineType(types: !6643)
!6643 = !{!300, !333, !6644}
!6644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!6645 = distinct !DISubprogram(name: "replace_intsrc_all", scope: !3, file: !3, line: 714, type: !6646, scopeLine: 717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6648)
!6646 = !DISubroutineType(types: !6647)
!6647 = !{!147, !806, !295, !295}
!6648 = !{!6649, !6650, !6651, !6652, !6653, !6654, !6655, !6656, !6662}
!6649 = !DILocalVariable(name: "mpc", arg: 1, scope: !6645, file: !3, line: 714, type: !806)
!6650 = !DILocalVariable(name: "mpc_new_phys", arg: 2, scope: !6645, file: !3, line: 715, type: !295)
!6651 = !DILocalVariable(name: "mpc_new_length", arg: 3, scope: !6645, file: !3, line: 716, type: !295)
!6652 = !DILocalVariable(name: "i", scope: !6645, file: !3, line: 719, type: !147)
!6653 = !DILocalVariable(name: "count", scope: !6645, file: !3, line: 721, type: !147)
!6654 = !DILocalVariable(name: "nr_m_spare", scope: !6645, file: !3, line: 722, type: !147)
!6655 = !DILocalVariable(name: "mpt", scope: !6645, file: !3, line: 723, type: !225)
!6656 = !DILocalVariable(name: "m", scope: !6657, file: !3, line: 769, type: !257)
!6657 = distinct !DILexicalBlock(scope: !6658, file: !3, line: 768, column: 10)
!6658 = distinct !DILexicalBlock(scope: !6659, file: !3, line: 763, column: 7)
!6659 = distinct !DILexicalBlock(scope: !6660, file: !3, line: 752, column: 39)
!6660 = distinct !DILexicalBlock(scope: !6661, file: !3, line: 752, column: 2)
!6661 = distinct !DILexicalBlock(scope: !6645, file: !3, line: 752, column: 2)
!6662 = !DILabel(scope: !6645, name: "out", file: !3, line: 780)
!6663 = !DILocation(line: 714, column: 57, scope: !6645)
!6664 = !DILocation(line: 715, column: 20, scope: !6645)
!6665 = !DILocation(line: 716, column: 20, scope: !6645)
!6666 = !DILocation(line: 719, column: 2, scope: !6645)
!6667 = !DILocation(line: 719, column: 6, scope: !6645)
!6668 = !DILocation(line: 721, column: 2, scope: !6645)
!6669 = !DILocation(line: 721, column: 6, scope: !6645)
!6670 = !DILocation(line: 722, column: 2, scope: !6645)
!6671 = !DILocation(line: 722, column: 6, scope: !6645)
!6672 = !DILocation(line: 723, column: 2, scope: !6645)
!6673 = !DILocation(line: 723, column: 17, scope: !6645)
!6674 = !DILocation(line: 723, column: 41, scope: !6645)
!6675 = !DILocation(line: 723, column: 48, scope: !6645)
!6676 = !DILocation(line: 723, column: 46, scope: !6645)
!6677 = !DILocation(line: 725, column: 2, scope: !6678)
!6678 = distinct !DILexicalBlock(scope: !6645, file: !3, line: 725, column: 2)
!6679 = !DILocation(line: 725, column: 2, scope: !6680)
!6680 = distinct !DILexicalBlock(scope: !6678, file: !3, line: 725, column: 2)
!6681 = !DILocation(line: 726, column: 2, scope: !6645)
!6682 = !DILocation(line: 726, column: 9, scope: !6645)
!6683 = !DILocation(line: 726, column: 17, scope: !6645)
!6684 = !DILocation(line: 726, column: 22, scope: !6645)
!6685 = !DILocation(line: 726, column: 15, scope: !6645)
!6686 = !DILocation(line: 727, column: 12, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !6645, file: !3, line: 726, column: 30)
!6688 = !DILocation(line: 727, column: 11, scope: !6687)
!6689 = !DILocation(line: 727, column: 3, scope: !6687)
!6690 = !DILocation(line: 729, column: 4, scope: !6691)
!6691 = distinct !DILexicalBlock(scope: !6687, file: !3, line: 727, column: 17)
!6692 = !DILocation(line: 730, column: 4, scope: !6691)
!6693 = !DILocation(line: 732, column: 4, scope: !6691)
!6694 = !DILocation(line: 733, column: 4, scope: !6691)
!6695 = !DILocation(line: 735, column: 4, scope: !6691)
!6696 = !DILocation(line: 736, column: 4, scope: !6691)
!6697 = !DILocation(line: 738, column: 39, scope: !6691)
!6698 = !DILocation(line: 738, column: 4, scope: !6691)
!6699 = !DILocation(line: 739, column: 4, scope: !6691)
!6700 = !DILocation(line: 740, column: 4, scope: !6691)
!6701 = !DILocation(line: 742, column: 4, scope: !6691)
!6702 = !DILocation(line: 743, column: 4, scope: !6691)
!6703 = !DILocation(line: 746, column: 21, scope: !6691)
!6704 = !DILocation(line: 746, column: 26, scope: !6691)
!6705 = !DILocation(line: 746, column: 4, scope: !6691)
!6706 = !DILocation(line: 747, column: 4, scope: !6691)
!6707 = distinct !{!6707, !6681, !6708, !763, !764}
!6708 = !DILocation(line: 749, column: 2, scope: !6645)
!6709 = !DILocation(line: 752, column: 9, scope: !6661)
!6710 = !DILocation(line: 752, column: 7, scope: !6661)
!6711 = !DILocation(line: 752, column: 14, scope: !6660)
!6712 = !DILocation(line: 752, column: 18, scope: !6660)
!6713 = !DILocation(line: 752, column: 16, scope: !6660)
!6714 = !DILocation(line: 752, column: 2, scope: !6661)
!6715 = !DILocation(line: 753, column: 16, scope: !6716)
!6716 = distinct !DILexicalBlock(scope: !6659, file: !3, line: 753, column: 7)
!6717 = !DILocation(line: 753, column: 7, scope: !6716)
!6718 = !DILocation(line: 753, column: 7, scope: !6659)
!6719 = !DILocation(line: 754, column: 4, scope: !6716)
!6720 = !DILocation(line: 756, column: 15, scope: !6721)
!6721 = distinct !DILexicalBlock(scope: !6659, file: !3, line: 756, column: 7)
!6722 = !DILocation(line: 756, column: 7, scope: !6721)
!6723 = !DILocation(line: 756, column: 18, scope: !6721)
!6724 = !DILocation(line: 756, column: 26, scope: !6721)
!6725 = !DILocation(line: 756, column: 7, scope: !6659)
!6726 = !DILocation(line: 757, column: 4, scope: !6721)
!6727 = !DILocation(line: 759, column: 15, scope: !6728)
!6728 = distinct !DILexicalBlock(scope: !6659, file: !3, line: 759, column: 7)
!6729 = !DILocation(line: 759, column: 7, scope: !6728)
!6730 = !DILocation(line: 759, column: 18, scope: !6728)
!6731 = !DILocation(line: 759, column: 26, scope: !6728)
!6732 = !DILocation(line: 759, column: 7, scope: !6659)
!6733 = !DILocation(line: 761, column: 4, scope: !6728)
!6734 = !DILocation(line: 763, column: 7, scope: !6658)
!6735 = !DILocation(line: 763, column: 18, scope: !6658)
!6736 = !DILocation(line: 763, column: 7, scope: !6659)
!6737 = !DILocation(line: 764, column: 4, scope: !6738)
!6738 = distinct !DILexicalBlock(scope: !6658, file: !3, line: 763, column: 23)
!6739 = !DILocation(line: 764, column: 4, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6741, file: !3, line: 764, column: 4)
!6741 = distinct !DILexicalBlock(scope: !6738, file: !3, line: 764, column: 4)
!6742 = !DILocation(line: 764, column: 4, scope: !6741)
!6743 = !DILocation(line: 764, column: 4, scope: !6744)
!6744 = distinct !DILexicalBlock(scope: !6740, file: !3, line: 764, column: 4)
!6745 = !DILocation(line: 764, column: 4, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6744, file: !3, line: 764, column: 4)
!6747 = !DILocation(line: 765, column: 14, scope: !6738)
!6748 = !DILocation(line: 766, column: 19, scope: !6738)
!6749 = !DILocation(line: 766, column: 11, scope: !6738)
!6750 = !DILocation(line: 766, column: 41, scope: !6738)
!6751 = !DILocation(line: 766, column: 33, scope: !6738)
!6752 = !DILocation(line: 766, column: 4, scope: !6738)
!6753 = !DILocation(line: 767, column: 12, scope: !6738)
!6754 = !DILocation(line: 767, column: 4, scope: !6738)
!6755 = !DILocation(line: 767, column: 24, scope: !6738)
!6756 = !DILocation(line: 768, column: 3, scope: !6738)
!6757 = !DILocation(line: 769, column: 4, scope: !6657)
!6758 = !DILocation(line: 769, column: 23, scope: !6657)
!6759 = !DILocation(line: 769, column: 48, scope: !6657)
!6760 = !DILocation(line: 770, column: 10, scope: !6657)
!6761 = !DILocation(line: 771, column: 19, scope: !6762)
!6762 = distinct !DILexicalBlock(scope: !6657, file: !3, line: 771, column: 8)
!6763 = !DILocation(line: 771, column: 33, scope: !6762)
!6764 = !DILocation(line: 771, column: 49, scope: !6762)
!6765 = !DILocation(line: 771, column: 8, scope: !6762)
!6766 = !DILocation(line: 771, column: 56, scope: !6762)
!6767 = !DILocation(line: 771, column: 8, scope: !6657)
!6768 = !DILocation(line: 772, column: 5, scope: !6762)
!6769 = !DILocation(line: 773, column: 11, scope: !6657)
!6770 = !DILocation(line: 773, column: 23, scope: !6657)
!6771 = !DILocation(line: 773, column: 15, scope: !6657)
!6772 = !DILocation(line: 773, column: 4, scope: !6657)
!6773 = !DILocation(line: 774, column: 18, scope: !6657)
!6774 = !DILocation(line: 774, column: 4, scope: !6657)
!6775 = !DILocation(line: 774, column: 9, scope: !6657)
!6776 = !DILocation(line: 774, column: 16, scope: !6657)
!6777 = !DILocation(line: 775, column: 8, scope: !6657)
!6778 = !DILocation(line: 776, column: 3, scope: !6658)
!6779 = !DILocation(line: 777, column: 30, scope: !6659)
!6780 = !DILocation(line: 777, column: 22, scope: !6659)
!6781 = !DILocation(line: 777, column: 3, scope: !6659)
!6782 = !DILocation(line: 778, column: 2, scope: !6659)
!6783 = !DILocation(line: 752, column: 35, scope: !6660)
!6784 = !DILocation(line: 752, column: 2, scope: !6660)
!6785 = distinct !{!6785, !6714, !6786, !763, !764}
!6786 = !DILocation(line: 778, column: 2, scope: !6661)
!6787 = !DILocation(line: 780, column: 1, scope: !6645)
!6788 = !DILocation(line: 782, column: 2, scope: !6645)
!6789 = !DILocation(line: 782, column: 7, scope: !6645)
!6790 = !DILocation(line: 782, column: 16, scope: !6645)
!6791 = !DILocation(line: 783, column: 49, scope: !6645)
!6792 = !DILocation(line: 783, column: 54, scope: !6645)
!6793 = !DILocation(line: 783, column: 59, scope: !6645)
!6794 = !DILocation(line: 783, column: 19, scope: !6645)
!6795 = !DILocation(line: 783, column: 2, scope: !6645)
!6796 = !DILocation(line: 783, column: 7, scope: !6645)
!6797 = !DILocation(line: 783, column: 16, scope: !6645)
!6798 = !DILocation(line: 785, column: 2, scope: !6645)
!6799 = !DILocation(line: 786, column: 1, scope: !6645)
!6800 = distinct !DISubprogram(name: "check_irq_src", scope: !3, file: !3, line: 671, type: !6801, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6803)
!6801 = !DISubroutineType(types: !6802)
!6802 = !{null, !257, !2046}
!6803 = !{!6804, !6805, !6806}
!6804 = !DILocalVariable(name: "m", arg: 1, scope: !6800, file: !3, line: 671, type: !257)
!6805 = !DILocalVariable(name: "nr_m_spare", arg: 2, scope: !6800, file: !3, line: 671, type: !2046)
!6806 = !DILocalVariable(name: "i", scope: !6800, file: !3, line: 673, type: !147)
!6807 = !DILocation(line: 671, column: 53, scope: !6800)
!6808 = !DILocation(line: 671, column: 61, scope: !6800)
!6809 = !DILocation(line: 673, column: 2, scope: !6800)
!6810 = !DILocation(line: 673, column: 6, scope: !6800)
!6811 = !DILocation(line: 675, column: 2, scope: !6800)
!6812 = !DILocation(line: 675, column: 2, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 675, column: 2)
!6814 = distinct !DILexicalBlock(scope: !6800, file: !3, line: 675, column: 2)
!6815 = !DILocation(line: 675, column: 2, scope: !6814)
!6816 = !DILocation(line: 675, column: 2, scope: !6817)
!6817 = distinct !DILexicalBlock(scope: !6813, file: !3, line: 675, column: 2)
!6818 = !DILocation(line: 675, column: 2, scope: !6819)
!6819 = distinct !DILexicalBlock(scope: !6817, file: !3, line: 675, column: 2)
!6820 = !DILocation(line: 676, column: 20, scope: !6800)
!6821 = !DILocation(line: 676, column: 2, scope: !6800)
!6822 = !DILocation(line: 678, column: 26, scope: !6800)
!6823 = !DILocation(line: 678, column: 6, scope: !6800)
!6824 = !DILocation(line: 678, column: 4, scope: !6800)
!6825 = !DILocation(line: 679, column: 6, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6800, file: !3, line: 679, column: 6)
!6827 = !DILocation(line: 679, column: 8, scope: !6826)
!6828 = !DILocation(line: 679, column: 6, scope: !6800)
!6829 = !DILocation(line: 680, column: 10, scope: !6830)
!6830 = distinct !DILexicalBlock(scope: !6826, file: !3, line: 679, column: 13)
!6831 = !DILocation(line: 680, column: 22, scope: !6830)
!6832 = !DILocation(line: 680, column: 14, scope: !6830)
!6833 = !DILocation(line: 680, column: 3, scope: !6830)
!6834 = !DILocation(line: 681, column: 3, scope: !6830)
!6835 = !DILocation(line: 681, column: 3, scope: !6836)
!6836 = distinct !DILexicalBlock(scope: !6837, file: !3, line: 681, column: 3)
!6837 = distinct !DILexicalBlock(scope: !6830, file: !3, line: 681, column: 3)
!6838 = !DILocation(line: 681, column: 3, scope: !6837)
!6839 = !DILocation(line: 681, column: 3, scope: !6840)
!6840 = distinct !DILexicalBlock(scope: !6836, file: !3, line: 681, column: 3)
!6841 = !DILocation(line: 681, column: 3, scope: !6842)
!6842 = distinct !DILexicalBlock(scope: !6840, file: !3, line: 681, column: 3)
!6843 = !DILocation(line: 682, column: 30, scope: !6830)
!6844 = !DILocation(line: 682, column: 22, scope: !6830)
!6845 = !DILocation(line: 682, column: 3, scope: !6830)
!6846 = !DILocation(line: 683, column: 3, scope: !6830)
!6847 = !DILocation(line: 685, column: 7, scope: !6848)
!6848 = distinct !DILexicalBlock(scope: !6800, file: !3, line: 685, column: 6)
!6849 = !DILocation(line: 685, column: 6, scope: !6800)
!6850 = !DILocation(line: 687, column: 3, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !6848, file: !3, line: 685, column: 10)
!6852 = !DILocation(line: 689, column: 7, scope: !6853)
!6853 = distinct !DILexicalBlock(scope: !6800, file: !3, line: 689, column: 6)
!6854 = !DILocation(line: 689, column: 6, scope: !6853)
!6855 = !DILocation(line: 689, column: 18, scope: !6853)
!6856 = !DILocation(line: 689, column: 6, scope: !6800)
!6857 = !DILocation(line: 694, column: 26, scope: !6858)
!6858 = distinct !DILexicalBlock(scope: !6853, file: !3, line: 689, column: 36)
!6859 = !DILocation(line: 694, column: 12, scope: !6858)
!6860 = !DILocation(line: 694, column: 11, scope: !6858)
!6861 = !DILocation(line: 694, column: 3, scope: !6858)
!6862 = !DILocation(line: 694, column: 24, scope: !6858)
!6863 = !DILocation(line: 695, column: 4, scope: !6858)
!6864 = !DILocation(line: 695, column: 15, scope: !6858)
!6865 = !DILocation(line: 696, column: 2, scope: !6858)
!6866 = !DILocation(line: 697, column: 1, scope: !6800)
!6867 = distinct !DISubprogram(name: "check_slot", scope: !3, file: !3, line: 700, type: !6868, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6870)
!6868 = !DISubroutineType(types: !6869)
!6869 = !{!147, !295, !295, !147}
!6870 = !{!6871, !6872, !6873, !6874, !6878}
!6871 = !DILocalVariable(name: "mpc_new_phys", arg: 1, scope: !6867, file: !3, line: 700, type: !295)
!6872 = !DILocalVariable(name: "mpc_new_length", arg: 2, scope: !6867, file: !3, line: 700, type: !295)
!6873 = !DILocalVariable(name: "count", arg: 3, scope: !6867, file: !3, line: 700, type: !147)
!6874 = !DILocalVariable(name: "__ret_warn_on", scope: !6875, file: !3, line: 703, type: !147)
!6875 = distinct !DILexicalBlock(scope: !6876, file: !3, line: 703, column: 3)
!6876 = distinct !DILexicalBlock(scope: !6877, file: !3, line: 702, column: 48)
!6877 = distinct !DILexicalBlock(scope: !6867, file: !3, line: 702, column: 6)
!6878 = !DILocalVariable(name: "__flags", scope: !6879, file: !3, line: 703, type: !147)
!6879 = distinct !DILexicalBlock(scope: !6880, file: !3, line: 703, column: 3)
!6880 = distinct !DILexicalBlock(scope: !6881, file: !3, line: 703, column: 3)
!6881 = distinct !DILexicalBlock(scope: !6875, file: !3, line: 703, column: 3)
!6882 = !DILocation(line: 700, column: 26, scope: !6867)
!6883 = !DILocation(line: 700, column: 54, scope: !6867)
!6884 = !DILocation(line: 700, column: 74, scope: !6867)
!6885 = !DILocation(line: 702, column: 7, scope: !6877)
!6886 = !DILocation(line: 702, column: 20, scope: !6877)
!6887 = !DILocation(line: 702, column: 23, scope: !6877)
!6888 = !DILocation(line: 702, column: 32, scope: !6877)
!6889 = !DILocation(line: 702, column: 29, scope: !6877)
!6890 = !DILocation(line: 702, column: 6, scope: !6867)
!6891 = !DILocation(line: 703, column: 3, scope: !6875)
!6892 = !DILocation(line: 703, column: 3, scope: !6881)
!6893 = !DILocation(line: 703, column: 3, scope: !6880)
!6894 = !DILocation(line: 703, column: 3, scope: !6895)
!6895 = distinct !DILexicalBlock(scope: !6880, file: !3, line: 703, column: 3)
!6896 = !DILocation(line: 703, column: 3, scope: !6879)
!6897 = !DILocation(line: 703, column: 3, scope: !6898)
!6898 = distinct !DILexicalBlock(scope: !6879, file: !3, line: 703, column: 3)
!6899 = !DILocation(line: 703, column: 3, scope: !6900)
!6900 = distinct !DILexicalBlock(scope: !6879, file: !3, line: 703, column: 3)
!6901 = !{i64 2156308481, i64 2156308510, i64 2156308556, i64 2156308614, i64 2156308668, i64 2156308722, i64 2156308777, i64 2156308808, i64 2156309116, i64 2156309122, i64 2156309169, i64 2156309192, i64 2156309218}
!6902 = !DILocation(line: 703, column: 3, scope: !6903)
!6903 = distinct !DILexicalBlock(scope: !6879, file: !3, line: 703, column: 3)
!6904 = !DILocation(line: 703, column: 3, scope: !6905)
!6905 = distinct !DILexicalBlock(scope: !6880, file: !3, line: 703, column: 3)
!6906 = !DILocation(line: 703, column: 3, scope: !6876)
!6907 = !DILocation(line: 704, column: 3, scope: !6876)
!6908 = !DILocation(line: 707, column: 2, scope: !6867)
!6909 = !DILocation(line: 708, column: 1, scope: !6867)
!6910 = distinct !DISubprogram(name: "print_mp_irq_info", scope: !3, file: !3, line: 114, type: !6328, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6911)
!6911 = !{!6912}
!6912 = !DILocalVariable(name: "mp_irq", arg: 1, scope: !6910, file: !3, line: 114, type: !257)
!6913 = !DILocation(line: 114, column: 57, scope: !6910)
!6914 = !DILocation(line: 116, column: 2, scope: !6910)
!6915 = !DILocation(line: 116, column: 2, scope: !6916)
!6916 = distinct !DILexicalBlock(scope: !6917, file: !3, line: 116, column: 2)
!6917 = distinct !DILexicalBlock(scope: !6910, file: !3, line: 116, column: 2)
!6918 = !DILocation(line: 116, column: 2, scope: !6917)
!6919 = !DILocation(line: 116, column: 2, scope: !6920)
!6920 = distinct !DILexicalBlock(scope: !6916, file: !3, line: 116, column: 2)
!6921 = !DILocation(line: 116, column: 2, scope: !6922)
!6922 = distinct !DILexicalBlock(scope: !6920, file: !3, line: 116, column: 2)
!6923 = !DILocation(line: 121, column: 1, scope: !6910)
!6924 = distinct !DISubprogram(name: "get_MP_intsrc_index", scope: !3, file: !3, line: 631, type: !6925, scopeLine: 632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6927)
!6925 = !DISubroutineType(types: !6926)
!6926 = !{!147, !257}
!6927 = !{!6928, !6929}
!6928 = !DILocalVariable(name: "m", arg: 1, scope: !6924, file: !3, line: 631, type: !257)
!6929 = !DILocalVariable(name: "i", scope: !6924, file: !3, line: 633, type: !147)
!6930 = !DILocation(line: 631, column: 59, scope: !6924)
!6931 = !DILocation(line: 633, column: 2, scope: !6924)
!6932 = !DILocation(line: 633, column: 6, scope: !6924)
!6933 = !DILocation(line: 635, column: 6, scope: !6934)
!6934 = distinct !DILexicalBlock(scope: !6924, file: !3, line: 635, column: 6)
!6935 = !DILocation(line: 635, column: 9, scope: !6934)
!6936 = !DILocation(line: 635, column: 17, scope: !6934)
!6937 = !DILocation(line: 635, column: 6, scope: !6924)
!6938 = !DILocation(line: 636, column: 3, scope: !6934)
!6939 = !DILocation(line: 638, column: 6, scope: !6940)
!6940 = distinct !DILexicalBlock(scope: !6924, file: !3, line: 638, column: 6)
!6941 = !DILocation(line: 638, column: 9, scope: !6940)
!6942 = !DILocation(line: 638, column: 17, scope: !6940)
!6943 = !DILocation(line: 638, column: 6, scope: !6924)
!6944 = !DILocation(line: 639, column: 3, scope: !6940)
!6945 = !DILocation(line: 643, column: 9, scope: !6946)
!6946 = distinct !DILexicalBlock(scope: !6924, file: !3, line: 643, column: 2)
!6947 = !DILocation(line: 643, column: 7, scope: !6946)
!6948 = !DILocation(line: 643, column: 14, scope: !6949)
!6949 = distinct !DILexicalBlock(scope: !6946, file: !3, line: 643, column: 2)
!6950 = !DILocation(line: 643, column: 18, scope: !6949)
!6951 = !DILocation(line: 643, column: 16, scope: !6949)
!6952 = !DILocation(line: 643, column: 2, scope: !6946)
!6953 = !DILocation(line: 644, column: 15, scope: !6954)
!6954 = distinct !DILexicalBlock(scope: !6955, file: !3, line: 644, column: 7)
!6955 = distinct !DILexicalBlock(scope: !6949, file: !3, line: 643, column: 39)
!6956 = !DILocation(line: 644, column: 7, scope: !6954)
!6957 = !DILocation(line: 644, column: 18, scope: !6954)
!6958 = !DILocation(line: 644, column: 26, scope: !6954)
!6959 = !DILocation(line: 644, column: 7, scope: !6955)
!6960 = !DILocation(line: 645, column: 4, scope: !6954)
!6961 = !DILocation(line: 647, column: 15, scope: !6962)
!6962 = distinct !DILexicalBlock(scope: !6955, file: !3, line: 647, column: 7)
!6963 = !DILocation(line: 647, column: 7, scope: !6962)
!6964 = !DILocation(line: 647, column: 18, scope: !6962)
!6965 = !DILocation(line: 647, column: 26, scope: !6962)
!6966 = !DILocation(line: 647, column: 7, scope: !6955)
!6967 = !DILocation(line: 649, column: 4, scope: !6962)
!6968 = !DILocation(line: 651, column: 15, scope: !6969)
!6969 = distinct !DILexicalBlock(scope: !6955, file: !3, line: 651, column: 7)
!6970 = !DILocation(line: 651, column: 7, scope: !6969)
!6971 = !DILocation(line: 651, column: 18, scope: !6969)
!6972 = !DILocation(line: 651, column: 28, scope: !6969)
!6973 = !DILocation(line: 651, column: 31, scope: !6969)
!6974 = !DILocation(line: 651, column: 25, scope: !6969)
!6975 = !DILocation(line: 651, column: 7, scope: !6955)
!6976 = !DILocation(line: 652, column: 4, scope: !6969)
!6977 = !DILocation(line: 653, column: 15, scope: !6978)
!6978 = distinct !DILexicalBlock(scope: !6955, file: !3, line: 653, column: 7)
!6979 = !DILocation(line: 653, column: 7, scope: !6978)
!6980 = !DILocation(line: 653, column: 18, scope: !6978)
!6981 = !DILocation(line: 653, column: 31, scope: !6978)
!6982 = !DILocation(line: 653, column: 34, scope: !6978)
!6983 = !DILocation(line: 653, column: 28, scope: !6978)
!6984 = !DILocation(line: 653, column: 7, scope: !6955)
!6985 = !DILocation(line: 654, column: 4, scope: !6978)
!6986 = !DILocation(line: 655, column: 16, scope: !6987)
!6987 = distinct !DILexicalBlock(scope: !6955, file: !3, line: 655, column: 7)
!6988 = !DILocation(line: 655, column: 7, scope: !6987)
!6989 = !DILocation(line: 655, column: 7, scope: !6955)
!6990 = !DILocation(line: 657, column: 4, scope: !6991)
!6991 = distinct !DILexicalBlock(scope: !6987, file: !3, line: 655, column: 20)
!6992 = !DILocation(line: 659, column: 12, scope: !6955)
!6993 = !DILocation(line: 659, column: 3, scope: !6955)
!6994 = !DILocation(line: 659, column: 15, scope: !6955)
!6995 = !DILocation(line: 660, column: 10, scope: !6955)
!6996 = !DILocation(line: 660, column: 3, scope: !6955)
!6997 = !DILocation(line: 643, column: 35, scope: !6949)
!6998 = !DILocation(line: 643, column: 2, scope: !6949)
!6999 = distinct !{!6999, !6952, !7000, !763, !764}
!7000 = !DILocation(line: 661, column: 2, scope: !6946)
!7001 = !DILocation(line: 664, column: 2, scope: !6924)
!7002 = !DILocation(line: 665, column: 1, scope: !6924)
!7003 = !DISubprogram(name: "__warn_printk", scope: !2067, file: !2067, line: 93, type: !7004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7004 = !DISubroutineType(types: !7005)
!7005 = !{null, !333, null}
