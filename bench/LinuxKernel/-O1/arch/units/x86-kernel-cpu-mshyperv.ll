; ModuleID = 'arch/x86/kernel/cpu/mshyperv.c'
source_filename = "arch/x86/kernel/cpu/mshyperv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hyperv_paravisor_present: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hyperv_paravisor_present ; .previous"

%struct.hypervisor_x86 = type { ptr, ptr, i32, %struct.x86_hyper_init, %struct.x86_hyper_runtime, i8 }
%struct.x86_hyper_init = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x86_hyper_runtime = type { ptr, ptr, ptr, ptr }
%struct.ms_hyperv_info = type { i32, i32, i32, i32, i32, i32, i32, i8, %union.anon, %union.anon.0, i64 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%struct.cpuinfo_x86 = type { %union.anon.2, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.4, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.2 = type { i32 }
%union.anon.4 = type { i64, [88 x i8] }
%struct.pv_info = type { ptr }
%struct.x86_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.x86_legacy_features, ptr, ptr, ptr, %struct.x86_hyper_runtime, %struct.x86_guest }
%struct.x86_legacy_features = type { i32, i32, i32, i32, i32, %struct.x86_legacy_devices }
%struct.x86_legacy_devices = type { i32 }
%struct.x86_guest = type { ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.5 }
%struct.atomic_t = type { i32 }
%union.anon.5 = type { i64 }
%struct.x86_init_ops = type { %struct.x86_init_resources, %struct.x86_init_mpparse, %struct.x86_init_irqs, %struct.x86_init_oem, %struct.x86_init_paging, %struct.x86_init_timers, %struct.x86_init_iommu, %struct.x86_init_pci, %struct.x86_hyper_init, %struct.x86_init_acpi }
%struct.x86_init_resources = type { ptr, ptr, ptr, ptr }
%struct.x86_init_mpparse = type { ptr, ptr, ptr }
%struct.x86_init_irqs = type { ptr, ptr, ptr, ptr, ptr }
%struct.x86_init_oem = type { ptr, ptr }
%struct.x86_init_paging = type { ptr }
%struct.x86_init_timers = type { ptr, ptr, ptr }
%struct.x86_init_iommu = type { ptr }
%struct.x86_init_pci = type { ptr, ptr, ptr, ptr }
%struct.x86_init_acpi = type { ptr, ptr, ptr }
%struct.nmiaction = type { %struct.list_head, ptr, i64, i64, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.6 }
%union.anon.6 = type { %struct.anon.7, [16 x i8] }
%struct.anon.7 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.efi = type { ptr, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i64 }
%struct.efi_memory_map = type { i64, ptr, ptr, i32, i64, i64, i64 }

@hyperv_paravisor_present = hidden global i8 0, section ".data..ro_after_init", align 1, !dbg !0
@__UNIQUE_ID___addressable_hyperv_paravisor_present389 = internal global ptr @hyperv_paravisor_present, section ".discard.addressable", align 8, !dbg !63
@.str = private unnamed_addr constant [18 x i8] c"Microsoft Hyper-V\00", align 1, !dbg !65
@x86_hyper_ms_hyperv = hidden constant %struct.hypervisor_x86 { ptr @.str, ptr @ms_hyperv_platform, i32 2, %struct.x86_hyper_init { ptr @ms_hyperv_init_platform, ptr null, ptr @ms_hyperv_x2apic_available, ptr @ms_hyperv_msi_ext_dest_id, ptr null, ptr null }, %struct.x86_hyper_runtime zeroinitializer, i8 0 }, section ".init.rodata", align 8, !dbg !70
@hv_root_partition = hidden global i8 0, align 1, !dbg !262
@hv_nested = hidden global i8 0, align 1, !dbg !264
@ms_hyperv = hidden global %struct.ms_hyperv_info zeroinitializer, align 8, !dbg !266
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Microsoft Hv\00", align 1, !dbg !301
@.str.2 = private unnamed_addr constant [44 x i8] c"\014x86/hyperv: HYPERCALL MSR not available.\0A\00", align 1, !dbg !306
@.str.3 = private unnamed_addr constant [43 x i8] c"\014x86/hyperv: VP_INDEX MSR not available.\0A\00", align 1, !dbg !311
@.str.4 = private unnamed_addr constant [8 x i8] c"Hyper-V\00", align 1, !dbg !316
@pv_info = external dso_local global %struct.pv_info, align 8
@.str.5 = private unnamed_addr constant [71 x i8] c"\016Hyper-V: privilege flags low 0x%x, high 0x%x, hints 0x%x, misc 0x%x\0A\00", align 1, !dbg !319
@.str.6 = private unnamed_addr constant [38 x i8] c"\016Hyper-V: running as root partition\0A\00", align 1, !dbg !324
@.str.7 = private unnamed_addr constant [43 x i8] c"\016Hyper-V: running on a nested hypervisor\0A\00", align 1, !dbg !329
@.str.8 = private unnamed_addr constant [41 x i8] c"\016Hyper-V: Host Build %d.%d.%d.%d-%d-%d\0A\00", align 1, !dbg !331
@x86_platform = external dso_local global %struct.x86_platform_ops, align 8
@cpu_caps_set = external dso_local global [24 x i32], align 16
@.str.9 = private unnamed_addr constant [57 x i8] c"\016Hyper-V: Isolation Config: Group A 0x%x, Group B 0x%x\0A\00", align 1, !dbg !336
@isolation_type_snp = external dso_local global %struct.static_key_false, align 8
@isolation_type_tdx = external dso_local global %struct.static_key_false, align 8
@x86_init = external dso_local global %struct.x86_init_ops, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"\016Hyper-V: Nested features: 0x%x\0A\00", align 1, !dbg !341
@lapic_timer_period = external dso_local global i32, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"\016Hyper-V: LAPIC Timer Frequency: %#x\0A\00", align 1, !dbg !346
@ms_hyperv_init_platform.hv_nmi_unknown_na = internal global %struct.nmiaction { %struct.list_head { ptr @ms_hyperv_init_platform.hv_nmi_unknown_na, ptr @ms_hyperv_init_platform.hv_nmi_unknown_na }, ptr @hv_nmi_unknown, i64 0, i64 1, ptr @.str.12 }, align 8, !dbg !356
@.str.12 = private unnamed_addr constant [15 x i8] c"hv_nmi_unknown\00", align 1, !dbg !351
@no_timer_check = external dso_local global i32, align 4
@i8253_clear_counter_on_shutdown = external dso_local global i8, align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"running on Hyper-V\00", align 1, !dbg !384
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@hv_nmi_unknown.nmi_cpu = internal global %struct.atomic_t { i32 -1 }, align 4, !dbg !389
@unknown_nmi_panic = external dso_local global i32, align 4
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@efi = external dso_local global %struct.efi, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_hyperv_paravisor_present389], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @ms_hyperv_platform() #0 section ".init.text" align 16 !dbg !417 {
entry:
  %retval = alloca i32, align 4
  %eax = alloca i32, align 4
  %hyp_signature = alloca [3 x i32], align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #10, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !419, metadata !DIExpression()), !dbg !425
  call void @llvm.lifetime.start.p0(i64 12, ptr %hyp_signature) #10, !dbg !426
  call void @llvm.dbg.declare(metadata ptr %hyp_signature, metadata !420, metadata !DIExpression()), !dbg !427
  br i1 false, label %cond.true, label %cond.false, !dbg !428

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %if.then, !dbg !429

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 159, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #11, !dbg !429
  br i1 %call, label %if.end, label %if.then, !dbg !428

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !431

if.end:                                           ; preds = %cond.false, %cond.true
  %arrayidx = getelementptr [3 x i32], ptr %hyp_signature, i64 0, i64 0, !dbg !432
  %arrayidx1 = getelementptr [3 x i32], ptr %hyp_signature, i64 0, i64 1, !dbg !433
  %arrayidx2 = getelementptr [3 x i32], ptr %hyp_signature, i64 0, i64 2, !dbg !434
  call void @cpuid(i32 noundef 1073741824, ptr noundef %eax, ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #11, !dbg !435
  %0 = load i32, ptr %eax, align 4, !dbg !436
  %cmp = icmp ult i32 %0, 1073741829, !dbg !438
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !439

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i32, ptr %eax, align 4, !dbg !440
  %cmp3 = icmp ugt i32 %1, 1073807359, !dbg !441
  br i1 %cmp3, label %if.then6, label %lor.lhs.false4, !dbg !442

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [3 x i32], ptr %hyp_signature, i64 0, i64 0, !dbg !443
  %call5 = call i32 @memcmp(ptr noundef @.str.1, ptr noundef %arraydecay, i64 noundef 12) #11, !dbg !444
  %tobool = icmp ne i32 %call5, 0, !dbg !444
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !445

if.then6:                                         ; preds = %lor.lhs.false4, %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4, !dbg !446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !446

if.end7:                                          ; preds = %lor.lhs.false4
  %call8 = call i32 @cpuid_eax(i32 noundef 1073741827) #11, !dbg !447
  store i32 %call8, ptr %eax, align 4, !dbg !448
  %2 = load i32, ptr %eax, align 4, !dbg !449
  %conv = zext i32 %2 to i64, !dbg !449
  %and = and i64 %conv, 32, !dbg !451
  %tobool9 = icmp ne i64 %and, 0, !dbg !451
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !452

if.then10:                                        ; preds = %if.end7
  br label %do.body, !dbg !453

do.body:                                          ; preds = %if.then10
  br label %do.cond, !dbg !456

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !456

do.end:                                           ; preds = %do.cond
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #12, !dbg !453
  store i32 %call11, ptr %tmp, align 4, !dbg !456
  %3 = load i32, ptr %tmp, align 4, !dbg !453
  store i32 0, ptr %retval, align 4, !dbg !458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !458

if.end12:                                         ; preds = %if.end7
  %4 = load i32, ptr %eax, align 4, !dbg !459
  %conv13 = zext i32 %4 to i64, !dbg !459
  %and14 = and i64 %conv13, 64, !dbg !461
  %tobool15 = icmp ne i64 %and14, 0, !dbg !461
  br i1 %tobool15, label %if.end22, label %if.then16, !dbg !462

if.then16:                                        ; preds = %if.end12
  br label %do.body17, !dbg !463

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !466

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !466

do.end19:                                         ; preds = %do.cond18
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #12, !dbg !463
  store i32 %call21, ptr %tmp20, align 4, !dbg !466
  %5 = load i32, ptr %tmp20, align 4, !dbg !463
  store i32 0, ptr %retval, align 4, !dbg !468
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !468

if.end22:                                         ; preds = %if.end12
  store i32 1073741824, ptr %retval, align 4, !dbg !469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !469

cleanup:                                          ; preds = %if.end22, %do.end19, %do.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr %hyp_signature) #10, !dbg !470
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #10, !dbg !470
  %6 = load i32, ptr %retval, align 4, !dbg !470
  ret i32 %6, !dbg !470
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @ms_hyperv_init_platform() #0 section ".init.text" align 16 !dbg !358 {
entry:
  %hv_max_functions_eax = alloca i32, align 4
  %hv_host_info_eax = alloca i32, align 4
  %hv_host_info_ebx = alloca i32, align 4
  %hv_host_info_ecx = alloca i32, align 4
  %hv_host_info_edx = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %tmp73 = alloca i32, align 4
  %tmp110 = alloca i32, align 4
  %hv_lapic_frequency = alloca i64, align 8
  %tmp127 = alloca i32, align 4
  %tmp130 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hv_max_functions_eax) #10, !dbg !471
  call void @llvm.dbg.declare(metadata ptr %hv_max_functions_eax, metadata !360, metadata !DIExpression()), !dbg !472
  call void @llvm.lifetime.start.p0(i64 4, ptr %hv_host_info_eax) #10, !dbg !473
  call void @llvm.dbg.declare(metadata ptr %hv_host_info_eax, metadata !361, metadata !DIExpression()), !dbg !474
  call void @llvm.lifetime.start.p0(i64 4, ptr %hv_host_info_ebx) #10, !dbg !475
  call void @llvm.dbg.declare(metadata ptr %hv_host_info_ebx, metadata !362, metadata !DIExpression()), !dbg !476
  call void @llvm.lifetime.start.p0(i64 4, ptr %hv_host_info_ecx) #10, !dbg !477
  call void @llvm.dbg.declare(metadata ptr %hv_host_info_ecx, metadata !363, metadata !DIExpression()), !dbg !478
  call void @llvm.lifetime.start.p0(i64 4, ptr %hv_host_info_edx) #10, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %hv_host_info_edx, metadata !364, metadata !DIExpression()), !dbg !480
  store ptr @.str.4, ptr @pv_info, align 8, !dbg !481
  %call = call i32 @cpuid_eax(i32 noundef 1073741827) #11, !dbg !482
  store i32 %call, ptr @ms_hyperv, align 8, !dbg !483
  %call1 = call i32 @cpuid_ebx(i32 noundef 1073741827) #11, !dbg !484
  store i32 %call1, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 1), align 4, !dbg !485
  %call2 = call i32 @cpuid_edx(i32 noundef 1073741827) #11, !dbg !486
  store i32 %call2, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 2), align 8, !dbg !487
  %call3 = call i32 @cpuid_eax(i32 noundef 1073741828) #11, !dbg !488
  store i32 %call3, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 3), align 4, !dbg !489
  %call4 = call i32 @cpuid_eax(i32 noundef 1073741824) #11, !dbg !490
  store i32 %call4, ptr %hv_max_functions_eax, align 4, !dbg !491
  br label %do.body, !dbg !492

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !494

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !494

do.end:                                           ; preds = %do.cond
  %0 = load i32, ptr @ms_hyperv, align 8, !dbg !492
  %1 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 1), align 4, !dbg !492
  %2 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 3), align 4, !dbg !492
  %3 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 2), align 8, !dbg !492
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #12, !dbg !492
  store i32 %call5, ptr %tmp, align 4, !dbg !494
  %4 = load i32, ptr %tmp, align 4, !dbg !492
  %call6 = call i32 @cpuid_eax(i32 noundef 1073741829) #11, !dbg !496
  store i32 %call6, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 5), align 4, !dbg !497
  %call7 = call i32 @cpuid_ebx(i32 noundef 1073741829) #11, !dbg !498
  store i32 %call7, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 6), align 8, !dbg !499
  store i32 0, ptr %tmp8, align 4, !dbg !500
  %5 = load i32, ptr %tmp8, align 4, !dbg !503
  %6 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 1), align 4, !dbg !504
  %conv = zext i32 %6 to i64, !dbg !506
  %and = and i64 %conv, 4096, !dbg !507
  %tobool = icmp ne i64 %and, 0, !dbg !507
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !508

land.lhs.true:                                    ; preds = %do.end
  %7 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 1), align 4, !dbg !509
  %conv9 = zext i32 %7 to i64, !dbg !510
  %and10 = and i64 %conv9, 4194304, !dbg !511
  %tobool11 = icmp ne i64 %and10, 0, !dbg !511
  br i1 %tobool11, label %if.end, label %if.then, !dbg !512

if.then:                                          ; preds = %land.lhs.true
  store i8 1, ptr @hv_root_partition, align 1, !dbg !513
  br label %do.body12, !dbg !515

do.body12:                                        ; preds = %if.then
  br label %do.cond13, !dbg !517

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !517

do.end14:                                         ; preds = %do.cond13
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #12, !dbg !515
  store i32 %call16, ptr %tmp15, align 4, !dbg !517
  %8 = load i32, ptr %tmp15, align 4, !dbg !515
  br label %if.end, !dbg !519

if.end:                                           ; preds = %do.end14, %land.lhs.true, %do.end
  %9 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 3), align 4, !dbg !520
  %conv17 = zext i32 %9 to i64, !dbg !522
  %and18 = and i64 %conv17, 4096, !dbg !523
  %tobool19 = icmp ne i64 %and18, 0, !dbg !523
  br i1 %tobool19, label %if.then20, label %if.end26, !dbg !524

if.then20:                                        ; preds = %if.end
  store i8 1, ptr @hv_nested, align 1, !dbg !525
  br label %do.body21, !dbg !527

do.body21:                                        ; preds = %if.then20
  br label %do.cond22, !dbg !529

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !529

do.end23:                                         ; preds = %do.cond22
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #12, !dbg !527
  store i32 %call25, ptr %tmp24, align 4, !dbg !529
  %10 = load i32, ptr %tmp24, align 4, !dbg !527
  br label %if.end26, !dbg !531

if.end26:                                         ; preds = %do.end23, %if.end
  %11 = load i32, ptr %hv_max_functions_eax, align 4, !dbg !532
  %cmp = icmp sge i32 %11, 1073741826, !dbg !534
  br i1 %cmp, label %if.then28, label %if.end41, !dbg !535

if.then28:                                        ; preds = %if.end26
  %call29 = call i32 @cpuid_eax(i32 noundef 1073741826) #11, !dbg !536
  store i32 %call29, ptr %hv_host_info_eax, align 4, !dbg !538
  %call30 = call i32 @cpuid_ebx(i32 noundef 1073741826) #11, !dbg !539
  store i32 %call30, ptr %hv_host_info_ebx, align 4, !dbg !540
  %call31 = call i32 @cpuid_ecx(i32 noundef 1073741826) #11, !dbg !541
  store i32 %call31, ptr %hv_host_info_ecx, align 4, !dbg !542
  %call32 = call i32 @cpuid_edx(i32 noundef 1073741826) #11, !dbg !543
  store i32 %call32, ptr %hv_host_info_edx, align 4, !dbg !544
  br label %do.body33, !dbg !545

do.body33:                                        ; preds = %if.then28
  br label %do.cond34, !dbg !547

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !547

do.end35:                                         ; preds = %do.cond34
  %12 = load i32, ptr %hv_host_info_ebx, align 4, !dbg !545
  %shr = ashr i32 %12, 16, !dbg !545
  %13 = load i32, ptr %hv_host_info_ebx, align 4, !dbg !545
  %and37 = and i32 %13, 65535, !dbg !545
  %14 = load i32, ptr %hv_host_info_eax, align 4, !dbg !545
  %15 = load i32, ptr %hv_host_info_edx, align 4, !dbg !545
  %and38 = and i32 %15, 16777215, !dbg !545
  %16 = load i32, ptr %hv_host_info_ecx, align 4, !dbg !545
  %17 = load i32, ptr %hv_host_info_edx, align 4, !dbg !545
  %shr39 = ashr i32 %17, 24, !dbg !545
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i32 noundef %shr, i32 noundef %and37, i32 noundef %14, i32 noundef %and38, i32 noundef %16, i32 noundef %shr39) #12, !dbg !545
  store i32 %call40, ptr %tmp36, align 4, !dbg !547
  %18 = load i32, ptr %tmp36, align 4, !dbg !545
  br label %if.end41, !dbg !549

if.end41:                                         ; preds = %do.end35, %if.end26
  %19 = load i32, ptr @ms_hyperv, align 8, !dbg !550
  %conv42 = zext i32 %19 to i64, !dbg !552
  %and43 = and i64 %conv42, 2048, !dbg !553
  %tobool44 = icmp ne i64 %and43, 0, !dbg !553
  br i1 %tobool44, label %land.lhs.true45, label %if.end53, !dbg !554

land.lhs.true45:                                  ; preds = %if.end41
  %20 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 2), align 8, !dbg !555
  %conv46 = zext i32 %20 to i64, !dbg !556
  %and47 = and i64 %conv46, 256, !dbg !557
  %tobool48 = icmp ne i64 %and47, 0, !dbg !557
  br i1 %tobool48, label %if.then49, label %if.end53, !dbg !558

if.then49:                                        ; preds = %land.lhs.true45
  store ptr @hv_get_tsc_khz, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 1), align 8, !dbg !559
  store ptr @hv_get_tsc_khz, ptr @x86_platform, align 8, !dbg !561
  br label %do.body50, !dbg !562

do.body50:                                        ; preds = %if.then49
  call void @set_bit(i64 noundef 127, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #11, !dbg !563
  call void @set_bit(i64 noundef 127, ptr noundef @cpu_caps_set) #11, !dbg !563
  br label %do.cond51, !dbg !563

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !563

do.end52:                                         ; preds = %do.cond51
  br label %if.end53, !dbg !565

if.end53:                                         ; preds = %do.end52, %land.lhs.true45, %if.end41
  %21 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 1), align 4, !dbg !566
  %conv54 = zext i32 %21 to i64, !dbg !568
  %and55 = and i64 %conv54, 4194304, !dbg !569
  %tobool56 = icmp ne i64 %and55, 0, !dbg !569
  br i1 %tobool56, label %if.then57, label %if.end102, !dbg !570

if.then57:                                        ; preds = %if.end53
  %call58 = call i32 @cpuid_eax(i32 noundef 1073741836) #11, !dbg !571
  store i32 %call58, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 8), align 8, !dbg !573
  %call59 = call i32 @cpuid_ebx(i32 noundef 1073741836) #11, !dbg !574
  store i32 %call59, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 9), align 4, !dbg !575
  %bf.load = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 9), align 4, !dbg !576
  %bf.lshr = lshr i32 %bf.load, 5, !dbg !576
  %bf.clear = and i32 %bf.lshr, 1, !dbg !576
  %tobool60 = icmp ne i32 %bf.clear, 0, !dbg !578
  br i1 %tobool60, label %if.then61, label %if.end65, !dbg !579

if.then61:                                        ; preds = %if.then57
  %bf.load62 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 9), align 4, !dbg !580
  %bf.lshr63 = lshr i32 %bf.load62, 6, !dbg !580
  %bf.clear64 = and i32 %bf.lshr63, 63, !dbg !580
  %sh_prom = zext i32 %bf.clear64 to i64, !dbg !580
  %shl = shl i64 1, %sh_prom, !dbg !580
  store i64 %shl, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 10), align 8, !dbg !581
  br label %if.end65, !dbg !582

if.end65:                                         ; preds = %if.then61, %if.then57
  %bf.load66 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 8), align 8, !dbg !583
  %bf.clear67 = and i32 %bf.load66, 1, !dbg !583
  %tobool68 = icmp ne i32 %bf.clear67, 0, !dbg !584
  %lnot = xor i1 %tobool68, true, !dbg !584
  %lnot69 = xor i1 %lnot, true, !dbg !585
  %frombool = zext i1 %lnot69 to i8, !dbg !586
  store i8 %frombool, ptr @hyperv_paravisor_present, align 1, !dbg !586
  br label %do.body70, !dbg !587

do.body70:                                        ; preds = %if.end65
  br label %do.cond71, !dbg !589

do.cond71:                                        ; preds = %do.body70
  br label %do.end72, !dbg !589

do.end72:                                         ; preds = %do.cond71
  %22 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 8), align 8, !dbg !587
  %23 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 9), align 4, !dbg !587
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, i32 noundef %22, i32 noundef %23) #12, !dbg !587
  store i32 %call74, ptr %tmp73, align 4, !dbg !589
  %24 = load i32, ptr %tmp73, align 4, !dbg !587
  %call75 = call i32 @hv_get_isolation_type() #11, !dbg !591
  %cmp76 = icmp eq i32 %call75, 2, !dbg !593
  br i1 %cmp76, label %if.then78, label %if.else, !dbg !594

if.then78:                                        ; preds = %do.end72
  call void @static_key_enable(ptr noundef @isolation_type_snp) #11, !dbg !595
  br label %if.end101, !dbg !597

if.else:                                          ; preds = %do.end72
  %call79 = call i32 @hv_get_isolation_type() #11, !dbg !598
  %cmp80 = icmp eq i32 %call79, 3, !dbg !600
  br i1 %cmp80, label %if.then82, label %if.end100, !dbg !601

if.then82:                                        ; preds = %if.else
  call void @static_key_enable(ptr noundef @isolation_type_tdx) #11, !dbg !602
  %25 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 3), align 4, !dbg !604
  %conv83 = zext i32 %25 to i64, !dbg !604
  %and84 = and i64 %conv83, -9, !dbg !604
  %conv85 = trunc i64 %and84 to i32, !dbg !604
  store i32 %conv85, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 3), align 4, !dbg !604
  %bf.load86 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 8), align 8, !dbg !605
  %bf.clear87 = and i32 %bf.load86, 1, !dbg !605
  %tobool88 = icmp ne i32 %bf.clear87, 0, !dbg !607
  br i1 %tobool88, label %if.end99, label %if.then89, !dbg !608

if.then89:                                        ; preds = %if.then82
  %26 = load i32, ptr @ms_hyperv, align 8, !dbg !609
  %conv90 = zext i32 %26 to i64, !dbg !609
  %and91 = and i64 %conv90, -513, !dbg !609
  %conv92 = trunc i64 %and91 to i32, !dbg !609
  store i32 %conv92, ptr @ms_hyperv, align 8, !dbg !609
  %27 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 2), align 8, !dbg !611
  %conv93 = zext i32 %27 to i64, !dbg !611
  %and94 = and i64 %conv93, -1025, !dbg !611
  %conv95 = trunc i64 %and94 to i32, !dbg !611
  store i32 %conv95, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 2), align 8, !dbg !611
  %28 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 3), align 4, !dbg !612
  %conv96 = zext i32 %28 to i64, !dbg !612
  %and97 = and i64 %conv96, -5, !dbg !612
  %conv98 = trunc i64 %and97 to i32, !dbg !612
  store i32 %conv98, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 3), align 4, !dbg !612
  store ptr @reduced_hw_init, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 9, i32 2), align 8, !dbg !613
  br label %if.end99, !dbg !614

if.end99:                                         ; preds = %if.then89, %if.then82
  br label %if.end100, !dbg !615

if.end100:                                        ; preds = %if.end99, %if.else
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then78
  br label %if.end102, !dbg !616

if.end102:                                        ; preds = %if.end101, %if.end53
  %29 = load i32, ptr %hv_max_functions_eax, align 4, !dbg !617
  %cmp103 = icmp sge i32 %29, 1073741834, !dbg !619
  br i1 %cmp103, label %if.then105, label %if.end112, !dbg !620

if.then105:                                       ; preds = %if.end102
  %call106 = call i32 @cpuid_eax(i32 noundef 1073741834) #11, !dbg !621
  store i32 %call106, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 4), align 8, !dbg !623
  br label %do.body107, !dbg !624

do.body107:                                       ; preds = %if.then105
  br label %do.cond108, !dbg !626

do.cond108:                                       ; preds = %do.body107
  br label %do.end109, !dbg !626

do.end109:                                        ; preds = %do.cond108
  %30 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 4), align 8, !dbg !624
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, i32 noundef %30) #12, !dbg !624
  store i32 %call111, ptr %tmp110, align 4, !dbg !626
  %31 = load i32, ptr %tmp110, align 4, !dbg !624
  br label %if.end112, !dbg !628

if.end112:                                        ; preds = %do.end109, %if.end102
  %32 = load i32, ptr @ms_hyperv, align 8, !dbg !629
  %conv113 = zext i32 %32 to i64, !dbg !630
  %and114 = and i64 %conv113, 2048, !dbg !631
  %tobool115 = icmp ne i64 %and114, 0, !dbg !631
  br i1 %tobool115, label %land.lhs.true116, label %if.end129, !dbg !632

land.lhs.true116:                                 ; preds = %if.end112
  %33 = load i32, ptr getelementptr inbounds (%struct.ms_hyperv_info, ptr @ms_hyperv, i32 0, i32 2), align 8, !dbg !633
  %conv117 = zext i32 %33 to i64, !dbg !634
  %and118 = and i64 %conv117, 256, !dbg !635
  %tobool119 = icmp ne i64 %and118, 0, !dbg !635
  br i1 %tobool119, label %if.then120, label %if.end129, !dbg !636

if.then120:                                       ; preds = %land.lhs.true116
  call void @llvm.lifetime.start.p0(i64 8, ptr %hv_lapic_frequency) #10, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %hv_lapic_frequency, metadata !365, metadata !DIExpression()), !dbg !638
  %call121 = call i64 @native_read_msr(i32 noundef 1073741859) #11, !dbg !639
  store i64 %call121, ptr %hv_lapic_frequency, align 8, !dbg !639
  %34 = load i64, ptr %hv_lapic_frequency, align 8, !dbg !640
  %call122 = call i64 @div_u64(i64 noundef %34, i32 noundef 1000) #11, !dbg !641
  store i64 %call122, ptr %hv_lapic_frequency, align 8, !dbg !642
  %35 = load i64, ptr %hv_lapic_frequency, align 8, !dbg !643
  %conv123 = trunc i64 %35 to i32, !dbg !643
  store i32 %conv123, ptr @lapic_timer_period, align 4, !dbg !644
  br label %do.body124, !dbg !645

do.body124:                                       ; preds = %if.then120
  br label %do.cond125, !dbg !647

do.cond125:                                       ; preds = %do.body124
  br label %do.end126, !dbg !647

do.end126:                                        ; preds = %do.cond125
  %36 = load i32, ptr @lapic_timer_period, align 4, !dbg !645
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, i32 noundef %36) #12, !dbg !645
  store i32 %call128, ptr %tmp127, align 4, !dbg !647
  %37 = load i32, ptr %tmp127, align 4, !dbg !645
  call void @llvm.lifetime.end.p0(i64 8, ptr %hv_lapic_frequency) #10, !dbg !649
  br label %if.end129, !dbg !650

if.end129:                                        ; preds = %do.end126, %land.lhs.true116, %if.end112
  %call131 = call i32 @__register_nmi_handler(i32 noundef 1, ptr noundef @ms_hyperv_init_platform.hv_nmi_unknown_na) #11, !dbg !651
  store i32 %call131, ptr %tmp130, align 4, !dbg !651
  %38 = load i32, ptr %tmp130, align 4, !dbg !651
  store i32 1, ptr @no_timer_check, align 4, !dbg !653
  %39 = load i32, ptr @ms_hyperv, align 8, !dbg !654
  %conv132 = zext i32 %39 to i64, !dbg !656
  %and133 = and i64 %conv132, 32768, !dbg !657
  %tobool134 = icmp ne i64 %and133, 0, !dbg !657
  br i1 %tobool134, label %if.then135, label %if.end139, !dbg !658

if.then135:                                       ; preds = %if.end129
  call void @wrmsrl(i32 noundef 1073742104, i64 noundef 1) #11, !dbg !659
  br label %do.body136, !dbg !661

do.body136:                                       ; preds = %if.then135
  call void @set_bit(i64 noundef 119, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #11, !dbg !662
  call void @set_bit(i64 noundef 119, ptr noundef @cpu_caps_set) #11, !dbg !662
  br label %do.cond137, !dbg !662

do.cond137:                                       ; preds = %do.body136
  br label %do.end138, !dbg !662

do.end138:                                        ; preds = %do.cond137
  br label %if.end139, !dbg !664

if.end139:                                        ; preds = %do.end138, %if.end129
  %call140 = call zeroext i1 @efi_enabled(i32 noundef 0) #11, !dbg !665
  br i1 %call140, label %if.then141, label %if.end142, !dbg !667

if.then141:                                       ; preds = %if.end139
  store ptr @hv_get_nmi_reason, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 7), align 8, !dbg !668
  br label %if.end142, !dbg !669

if.end142:                                        ; preds = %if.then141, %if.end139
  store i8 0, ptr @i8253_clear_counter_on_shutdown, align 1, !dbg !670
  %40 = load i32, ptr @ms_hyperv, align 8, !dbg !671
  %conv143 = zext i32 %40 to i64, !dbg !673
  %and144 = and i64 %conv143, 32768, !dbg !674
  %tobool145 = icmp ne i64 %and144, 0, !dbg !674
  br i1 %tobool145, label %if.end147, label %if.then146, !dbg !675

if.then146:                                       ; preds = %if.end142
  call void @mark_tsc_unstable(ptr noundef @.str.13) #11, !dbg !676
  br label %if.end147, !dbg !676

if.end147:                                        ; preds = %if.then146, %if.end142
  call void @hardlockup_detector_disable() #11, !dbg !677
  call void @llvm.lifetime.end.p0(i64 4, ptr %hv_host_info_edx) #10, !dbg !678
  call void @llvm.lifetime.end.p0(i64 4, ptr %hv_host_info_ecx) #10, !dbg !678
  call void @llvm.lifetime.end.p0(i64 4, ptr %hv_host_info_ebx) #10, !dbg !678
  call void @llvm.lifetime.end.p0(i64 4, ptr %hv_host_info_eax) #10, !dbg !678
  call void @llvm.lifetime.end.p0(i64 4, ptr %hv_max_functions_eax) #10, !dbg !678
  ret void, !dbg !678
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @ms_hyperv_x2apic_available() #0 section ".init.text" align 16 !dbg !679 {
entry:
  ret i1 false, !dbg !680
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @ms_hyperv_msi_ext_dest_id() #0 section ".init.text" align 16 !dbg !681 {
entry:
  %retval = alloca i1, align 1
  %eax = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #10, !dbg !684
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !683, metadata !DIExpression()), !dbg !685
  %call = call i32 @cpuid_eax(i32 noundef 1073741953) #11, !dbg !686
  store i32 %call, ptr %eax, align 4, !dbg !687
  %0 = load i32, ptr %eax, align 4, !dbg !688
  %cmp = icmp ne i32 %0, 824398678, !dbg !690
  br i1 %cmp, label %if.then, label %if.end, !dbg !691

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !692

if.end:                                           ; preds = %entry
  %call1 = call i32 @cpuid_eax(i32 noundef 1073741954) #11, !dbg !693
  store i32 %call1, ptr %eax, align 4, !dbg !694
  %1 = load i32, ptr %eax, align 4, !dbg !695
  %conv = zext i32 %1 to i64, !dbg !695
  %and = and i64 %conv, 4, !dbg !696
  %tobool = icmp ne i64 %and, 0, !dbg !695
  store i1 %tobool, ptr %retval, align 1, !dbg !697
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !697

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #10, !dbg !698
  %2 = load i1, ptr %retval, align 1, !dbg !698
  ret i1 %2, !dbg !698
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !699 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !707, metadata !DIExpression()), !dbg !709
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !708, metadata !DIExpression()), !dbg !710
  %0 = load i64, ptr %nr.addr, align 8, !dbg !711
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !712
  br i1 %1, label %cond.true, label %cond.false, !dbg !712

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !713
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !714
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !715
  %conv = zext i1 %call to i32, !dbg !715
  br label %cond.end, !dbg !712

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !716
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !717
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !718
  %conv2 = zext i1 %call1 to i32, !dbg !718
  br label %cond.end, !dbg !712

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !712
  %tobool = icmp ne i32 %cond, 0, !dbg !712
  ret i1 %tobool, !dbg !719
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid(i32 noundef %op, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !720 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !726, metadata !DIExpression()), !dbg !731
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !727, metadata !DIExpression()), !dbg !732
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !728, metadata !DIExpression()), !dbg !733
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !729, metadata !DIExpression()), !dbg !734
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !730, metadata !DIExpression()), !dbg !735
  %0 = load i32, ptr %op.addr, align 4, !dbg !736
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !737
  store i32 %0, ptr %1, align 4, !dbg !738
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !739
  store i32 0, ptr %2, align 4, !dbg !740
  %3 = load ptr, ptr %eax.addr, align 8, !dbg !741
  %4 = load ptr, ptr %ebx.addr, align 8, !dbg !742
  %5 = load ptr, ptr %ecx.addr, align 8, !dbg !743
  %6 = load ptr, ptr %edx.addr, align 8, !dbg !744
  call void @native_cpuid(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #11, !dbg !745
  ret void, !dbg !746
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !747 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_eax(i32 noundef %op) #4 align 16 !dbg !754 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !758, metadata !DIExpression()), !dbg !763
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #10, !dbg !764
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !759, metadata !DIExpression()), !dbg !765
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #10, !dbg !764
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !760, metadata !DIExpression()), !dbg !766
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #10, !dbg !764
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !761, metadata !DIExpression()), !dbg !767
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #10, !dbg !764
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !762, metadata !DIExpression()), !dbg !768
  %0 = load i32, ptr %op.addr, align 4, !dbg !769
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #11, !dbg !770
  %1 = load i32, ptr %eax, align 4, !dbg !771
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #10, !dbg !772
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #10, !dbg !772
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #10, !dbg !772
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #10, !dbg !772
  ret i32 %1, !dbg !773
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !774 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !778 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !782, metadata !DIExpression()), !dbg !784
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !783, metadata !DIExpression()), !dbg !785
  %0 = load i64, ptr %nr.addr, align 8, !dbg !786
  %and = and i64 %0, 63, !dbg !787
  %shl = shl i64 1, %and, !dbg !788
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !789
  %2 = load i64, ptr %nr.addr, align 8, !dbg !790
  %shr = ashr i64 %2, 6, !dbg !791
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !789
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !789
  %and1 = and i64 %shl, %3, !dbg !792
  %cmp = icmp ne i64 %and1, 0, !dbg !793
  ret i1 %cmp, !dbg !794
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !795 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !797, metadata !DIExpression()), !dbg !800
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !798, metadata !DIExpression()), !dbg !801
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !802
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !799, metadata !DIExpression()), !dbg !803
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !804
  %1 = load i64, ptr %nr.addr, align 8, !dbg !805
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !806, !srcloc !807
  %3 = icmp ult i8 %2, 2, !dbg !806
  call void @llvm.assume(i1 %3), !dbg !806
  store i8 %2, ptr %oldbit, align 1, !dbg !806
  %4 = load i8, ptr %oldbit, align 1, !dbg !808, !range !809, !noundef !810
  %tobool = trunc i8 %4 to i1, !dbg !808
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !811
  ret i1 %tobool, !dbg !812
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !813 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !817, metadata !DIExpression()), !dbg !821
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !818, metadata !DIExpression()), !dbg !822
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !819, metadata !DIExpression()), !dbg !823
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !820, metadata !DIExpression()), !dbg !824
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !825
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !826
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !827
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !828
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !829
  %5 = load i32, ptr %4, align 4, !dbg !830
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !831
  %7 = load i32, ptr %6, align 4, !dbg !832
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #10, !dbg !833, !srcloc !834
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !833
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !833
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !833
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !833
  store i32 %asmresult, ptr %0, align 4, !dbg !833
  store i32 %asmresult1, ptr %1, align 4, !dbg !833
  store i32 %asmresult2, ptr %2, align 4, !dbg !833
  store i32 %asmresult3, ptr %3, align 4, !dbg !833
  ret void, !dbg !835
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_ebx(i32 noundef %op) #4 align 16 !dbg !836 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !838, metadata !DIExpression()), !dbg !843
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #10, !dbg !844
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !839, metadata !DIExpression()), !dbg !845
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #10, !dbg !844
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !840, metadata !DIExpression()), !dbg !846
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #10, !dbg !844
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !841, metadata !DIExpression()), !dbg !847
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #10, !dbg !844
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !842, metadata !DIExpression()), !dbg !848
  %0 = load i32, ptr %op.addr, align 4, !dbg !849
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #11, !dbg !850
  %1 = load i32, ptr %ebx, align 4, !dbg !851
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #10, !dbg !852
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #10, !dbg !852
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #10, !dbg !852
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #10, !dbg !852
  ret i32 %1, !dbg !853
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_edx(i32 noundef %op) #4 align 16 !dbg !854 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !856, metadata !DIExpression()), !dbg !861
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #10, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !857, metadata !DIExpression()), !dbg !863
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #10, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !858, metadata !DIExpression()), !dbg !864
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #10, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !859, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #10, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !860, metadata !DIExpression()), !dbg !866
  %0 = load i32, ptr %op.addr, align 4, !dbg !867
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #11, !dbg !868
  %1 = load i32, ptr %edx, align 4, !dbg !869
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #10, !dbg !870
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #10, !dbg !870
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #10, !dbg !870
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #10, !dbg !870
  ret i32 %1, !dbg !871
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_ecx(i32 noundef %op) #4 align 16 !dbg !872 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !874, metadata !DIExpression()), !dbg !879
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #10, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !875, metadata !DIExpression()), !dbg !881
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #10, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !876, metadata !DIExpression()), !dbg !882
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #10, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !877, metadata !DIExpression()), !dbg !883
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #10, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !878, metadata !DIExpression()), !dbg !884
  %0 = load i32, ptr %op.addr, align 4, !dbg !885
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #11, !dbg !886
  %1 = load i32, ptr %ecx, align 4, !dbg !887
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #10, !dbg !888
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #10, !dbg !888
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #10, !dbg !888
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #10, !dbg !888
  ret i32 %1, !dbg !889
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hv_get_tsc_khz() #9 align 16 !dbg !890 {
entry:
  %freq = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %freq) #10, !dbg !895
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !894, metadata !DIExpression()), !dbg !896
  %call = call i64 @native_read_msr(i32 noundef 1073741858) #11, !dbg !897
  store i64 %call, ptr %freq, align 8, !dbg !897
  %0 = load i64, ptr %freq, align 8, !dbg !898
  %div = udiv i64 %0, 1000, !dbg !899
  call void @llvm.lifetime.end.p0(i64 8, ptr %freq) #10, !dbg !900
  ret i64 %div, !dbg !901
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !902 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !908, metadata !DIExpression()), !dbg !910
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !909, metadata !DIExpression()), !dbg !911
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !912
  %1 = load i64, ptr %nr.addr, align 8, !dbg !913
  %div = sdiv i64 %1, 64, !dbg !913
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !914
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !915
  %2 = load i64, ptr %nr.addr, align 8, !dbg !916
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !917
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !918
  ret void, !dbg !919
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hv_get_isolation_type() #4 align 16 !dbg !920 {
entry:
  ret i32 0, !dbg !923
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !924 dso_local void @static_key_enable(ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @reduced_hw_init() #0 section ".init.text" align 16 !dbg !948 {
entry:
  store ptr @x86_init_noop, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 5, i32 1), align 8, !dbg !949
  store ptr @x86_init_noop, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 2), align 8, !dbg !950
  ret void, !dbg !951
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #4 align 16 !dbg !952 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !957, metadata !DIExpression()), !dbg !959
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !960
  call void @llvm.dbg.declare(metadata ptr %val, metadata !958, metadata !DIExpression()), !dbg !961
  %0 = load i32, ptr %msr.addr, align 4, !dbg !962
  %call = call i64 @__rdmsr(i32 noundef %0) #11, !dbg !963
  store i64 %call, ptr %val, align 8, !dbg !964
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #11, !dbg !965
  br i1 %call1, label %if.then, label %if.end, !dbg !967

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !968
  %2 = load i64, ptr %val, align 8, !dbg !969
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #11, !dbg !970
  br label %if.end, !dbg !970

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !971
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !972
  ret i64 %3, !dbg !973
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) #4 align 16 !dbg !974 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !979, metadata !DIExpression()), !dbg !982
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !980, metadata !DIExpression()), !dbg !983
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #10, !dbg !984
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !981, metadata !DIExpression()), !dbg !985
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !986
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !987
  %call = call i64 @div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #11, !dbg !988
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #10, !dbg !989
  ret i64 %call, !dbg !990
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hv_nmi_unknown(i32 noundef %val, ptr noundef %regs) #9 align 16 !dbg !391 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !393, metadata !DIExpression()), !dbg !991
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !394, metadata !DIExpression()), !dbg !992
  %0 = load i32, ptr @unknown_nmi_panic, align 4, !dbg !993
  %tobool = icmp ne i32 %0, 0, !dbg !993
  br i1 %tobool, label %if.end, label %if.then, !dbg !995

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !996
  br label %return, !dbg !996

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #10, !dbg !997
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !395, metadata !DIExpression()), !dbg !997
  br label %do.body, !dbg !997

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !998
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !398, metadata !DIExpression()), !dbg !998
  store ptr null, ptr %__vpp_verify, align 8, !dbg !998
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !998
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !997
  br label %do.cond, !dbg !998

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !998

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #10, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !402, metadata !DIExpression()), !dbg !999
  %2 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 2)) #10, !dbg !999, !srcloc !1000
  store i32 %2, ptr %pfo_val__, align 4, !dbg !999
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !999
  %conv = zext i32 %3 to i64, !dbg !999
  %conv1 = trunc i64 %conv to i32, !dbg !999
  store i32 %conv1, ptr %tmp, align 4, !dbg !999
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #10, !dbg !997
  %4 = load i32, ptr %tmp, align 4, !dbg !999
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !997
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !997
  store i32 %5, ptr %tmp2, align 4, !dbg !997
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #10, !dbg !1001
  %6 = load i32, ptr %tmp2, align 4, !dbg !997
  %call = call i32 @atomic_cmpxchg(ptr noundef @hv_nmi_unknown.nmi_cpu, i32 noundef -1, i32 noundef %6) #11, !dbg !1002
  %cmp = icmp ne i32 %call, -1, !dbg !1003
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !1004

if.then4:                                         ; preds = %do.end
  store i32 1, ptr %retval, align 4, !dbg !1005
  br label %return, !dbg !1005

if.end5:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !1006
  br label %return, !dbg !1006

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !1007
  ret i32 %7, !dbg !1007
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1008 dso_local i32 @__register_nmi_handler(i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsrl(i32 noundef %msr, i64 noundef %val) #4 align 16 !dbg !1012 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1016, metadata !DIExpression()), !dbg !1018
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1017, metadata !DIExpression()), !dbg !1019
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1020
  %1 = load i64, ptr %val.addr, align 8, !dbg !1021
  %and = and i64 %1, 4294967295, !dbg !1022
  %conv = trunc i64 %and to i32, !dbg !1023
  %2 = load i64, ptr %val.addr, align 8, !dbg !1024
  %shr = lshr i64 %2, 32, !dbg !1025
  %conv1 = trunc i64 %shr to i32, !dbg !1026
  call void @native_write_msr(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #11, !dbg !1027
  ret void, !dbg !1028
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_enabled(i32 noundef %feature) #4 align 16 !dbg !1029 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !1034, metadata !DIExpression()), !dbg !1035
  %0 = load i32, ptr %feature.addr, align 4, !dbg !1036
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1036
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !1036

land.lhs.true:                                    ; preds = %entry
  %conv = zext i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0) to i32, !dbg !1036
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1036
  br i1 %2, label %land.lhs.true1, label %cond.false, !dbg !1036

land.lhs.true1:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0), label %land.lhs.true3, label %cond.false, !dbg !1036

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %3 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28), align 8, !dbg !1036
  %4 = call i1 @llvm.is.constant.i64(i64 %3), !dbg !1036
  br i1 %4, label %cond.true, label %cond.false, !dbg !1036

cond.true:                                        ; preds = %land.lhs.true3
  %5 = load i32, ptr %feature.addr, align 4, !dbg !1036
  %conv4 = sext i32 %5 to i64, !dbg !1036
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv4, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #11, !dbg !1036
  %conv5 = zext i1 %call to i32, !dbg !1036
  br label %cond.end, !dbg !1036

cond.false:                                       ; preds = %land.lhs.true3, %land.lhs.true1, %land.lhs.true, %entry
  %6 = load i32, ptr %feature.addr, align 4, !dbg !1036
  %conv6 = sext i32 %6 to i64, !dbg !1036
  %call7 = call zeroext i1 @_test_bit(i64 noundef %conv6, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #11, !dbg !1036
  %conv8 = zext i1 %call7 to i32, !dbg !1036
  br label %cond.end, !dbg !1036

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv8, %cond.false ], !dbg !1036
  %cmp = icmp ne i32 %cond, 0, !dbg !1037
  ret i1 %cmp, !dbg !1038
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @hv_get_nmi_reason() #4 align 16 !dbg !1039 {
entry:
  ret i8 0, !dbg !1043
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1044 dso_local void @mark_tsc_unstable(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hardlockup_detector_disable() #4 align 16 !dbg !1049 {
entry:
  ret void, !dbg !1051
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !1052 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1061, metadata !DIExpression()), !dbg !1063
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1062, metadata !DIExpression()), !dbg !1064
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1065
  %1 = load i64, ptr %size.addr, align 8, !dbg !1066
  %conv = trunc i64 %1 to i32, !dbg !1066
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !1067
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1068
  %3 = load i64, ptr %size.addr, align 8, !dbg !1068
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #11, !dbg !1068
  ret void, !dbg !1069
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1070 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1072, metadata !DIExpression()), !dbg !1074
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1073, metadata !DIExpression()), !dbg !1075
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1076
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1078
  br i1 %1, label %if.then, label %if.else, !dbg !1079

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !1080
  %3 = load i64, ptr %nr.addr, align 8, !dbg !1080
  %shr = ashr i64 %3, 3, !dbg !1080
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !1080
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1082
  %and = and i64 %4, 7, !dbg !1082
  %sh_prom = trunc i64 %and to i32, !dbg !1082
  %shl = shl i32 1, %sh_prom, !dbg !1082
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #10, !dbg !1083, !srcloc !1084
  br label %if.end, !dbg !1085

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1086
  %6 = load i64, ptr %nr.addr, align 8, !dbg !1088
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #10, !dbg !1089, !srcloc !1090
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1091
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !1092 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1097, metadata !DIExpression()), !dbg !1099
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1098, metadata !DIExpression()), !dbg !1100
  ret i1 true, !dbg !1101
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !1102 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1107, metadata !DIExpression()), !dbg !1110
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1108, metadata !DIExpression()), !dbg !1111
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1109, metadata !DIExpression()), !dbg !1112
  ret void, !dbg !1113
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @x86_init_noop() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #3 align 16 !dbg !1114 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1116, metadata !DIExpression()), !dbg !1119
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #10, !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %low, metadata !1117, metadata !DIExpression()), !dbg !1120
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #10, !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %high, metadata !1118, metadata !DIExpression()), !dbg !1120
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1121
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #10, !dbg !1122, !srcloc !1123
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !1122
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !1122
  store i64 %asmresult, ptr %low, align 8, !dbg !1122
  store i64 %asmresult1, ptr %high, align 8, !dbg !1122
  %2 = load i64, ptr %low, align 8, !dbg !1124
  %3 = load i64, ptr %high, align 8, !dbg !1124
  %shl = shl i64 %3, 32, !dbg !1124
  %or = or i64 %2, %shl, !dbg !1124
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #10, !dbg !1125
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #10, !dbg !1125
  ret i64 %or, !dbg !1126
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #3 align 16 !dbg !1127 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1131, metadata !DIExpression()), !dbg !1132
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1133
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #11, !dbg !1134
  ret i1 %call, !dbg !1135
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1136 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !1139 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1144, metadata !DIExpression()), !dbg !1147
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !1145, metadata !DIExpression()), !dbg !1148
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1149
  %1 = load i8, ptr %branch.addr, align 1, !dbg !1150, !range !809, !noundef !810
  %tobool = trunc i8 %1 to i1, !dbg !1150
  %conv = zext i1 %tobool to i32, !dbg !1150
  %or = or i32 2, %conv, !dbg !1151
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #10
          to label %asm.fallthrough [label %l_yes], !dbg !1152, !srcloc !1153

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1154
  br label %return, !dbg !1154

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !1146), !dbg !1155
  store i1 true, ptr %retval, align 1, !dbg !1156
  br label %return, !dbg !1156

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !1157
  ret i1 %2, !dbg !1157
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #4 align 16 !dbg !1158 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !1163, metadata !DIExpression()), !dbg !1166
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !1164, metadata !DIExpression()), !dbg !1167
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !1165, metadata !DIExpression()), !dbg !1168
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !1169
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !1170
  %conv = zext i32 %1 to i64, !dbg !1170
  %rem = urem i64 %0, %conv, !dbg !1171
  %conv1 = trunc i64 %rem to i32, !dbg !1169
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !1172
  store i32 %conv1, ptr %2, align 4, !dbg !1173
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !1174
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !1175
  %conv2 = zext i32 %4 to i64, !dbg !1175
  %div = udiv i64 %3, %conv2, !dbg !1176
  ret i64 %div, !dbg !1177
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #3 align 16 !dbg !1178 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1184, metadata !DIExpression()), !dbg !1187
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1185, metadata !DIExpression()), !dbg !1188
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1186, metadata !DIExpression()), !dbg !1189
  br label %do.body, !dbg !1190

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1191

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1193
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !1194
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1195
  %2 = load i32, ptr %old.addr, align 4, !dbg !1196
  %3 = load i32, ptr %new.addr, align 4, !dbg !1197
  %call = call i32 @raw_atomic_cmpxchg(ptr noundef %1, i32 noundef %2, i32 noundef %3) #11, !dbg !1198
  ret i32 %call, !dbg !1199
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !1200 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1202, metadata !DIExpression()), !dbg !1204
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1203, metadata !DIExpression()), !dbg !1205
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1206
  %1 = load i64, ptr %size.addr, align 8, !dbg !1207
  %conv = trunc i64 %1 to i32, !dbg !1207
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !1208
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1209
  %3 = load i64, ptr %size.addr, align 8, !dbg !1209
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !1209
  ret void, !dbg !1210
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #3 align 16 !dbg !1211 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1214, metadata !DIExpression()), !dbg !1217
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1215, metadata !DIExpression()), !dbg !1218
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1216, metadata !DIExpression()), !dbg !1219
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1220
  %1 = load i32, ptr %old.addr, align 4, !dbg !1221
  %2 = load i32, ptr %new.addr, align 4, !dbg !1222
  %call = call i32 @arch_atomic_cmpxchg(ptr noundef %0, i32 noundef %1, i32 noundef %2) #11, !dbg !1223
  ret i32 %call, !dbg !1224
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #3 align 16 !dbg !1225 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1228, metadata !DIExpression()), !dbg !1236
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1229, metadata !DIExpression()), !dbg !1237
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1230, metadata !DIExpression()), !dbg !1238
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #10, !dbg !1239
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1231, metadata !DIExpression()), !dbg !1239
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #10, !dbg !1239
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !1233, metadata !DIExpression()), !dbg !1239
  %0 = load i32, ptr %old.addr, align 4, !dbg !1239
  store i32 %0, ptr %__old, align 4, !dbg !1239
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #10, !dbg !1239
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !1234, metadata !DIExpression()), !dbg !1239
  %1 = load i32, ptr %new.addr, align 4, !dbg !1239
  store i32 %1, ptr %__new, align 4, !dbg !1239
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !1239
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1235, metadata !DIExpression()), !dbg !1239
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1239
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !1239
  store ptr %counter, ptr %__ptr, align 8, !dbg !1239
  %3 = load ptr, ptr %__ptr, align 8, !dbg !1239
  %4 = load i32, ptr %__new, align 4, !dbg !1239
  %5 = load i32, ptr %__old, align 4, !dbg !1239
  %6 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %3, i32 %4, i32 %5, ptr elementtype(i32) %3) #10, !dbg !1239, !srcloc !1240
  store i32 %6, ptr %__ret, align 4, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !1239
  %7 = load i32, ptr %__ret, align 4, !dbg !1239
  store i32 %7, ptr %tmp, align 4, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #10, !dbg !1241
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #10, !dbg !1241
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #10, !dbg !1241
  %8 = load i32, ptr %tmp, align 4, !dbg !1239
  ret i32 %8, !dbg !1242
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #4 align 16 !dbg !1243 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1247, metadata !DIExpression()), !dbg !1250
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !1248, metadata !DIExpression()), !dbg !1251
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !1249, metadata !DIExpression()), !dbg !1252
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1253
  %1 = load i32, ptr %low.addr, align 4, !dbg !1254
  %2 = load i32, ptr %high.addr, align 4, !dbg !1255
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #11, !dbg !1256
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #11, !dbg !1257
  br i1 %call, label %if.then, label %if.end, !dbg !1259

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !1260
  %4 = load i32, ptr %high.addr, align 4, !dbg !1261
  %conv = zext i32 %4 to i64, !dbg !1262
  %shl = shl i64 %conv, 32, !dbg !1263
  %5 = load i32, ptr %low.addr, align 4, !dbg !1264
  %conv1 = zext i32 %5 to i64, !dbg !1264
  %or = or i64 %shl, %conv1, !dbg !1265
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #11, !dbg !1266
  br label %if.end, !dbg !1266

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1267
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #3 align 16 !dbg !1268 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1270, metadata !DIExpression()), !dbg !1273
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !1271, metadata !DIExpression()), !dbg !1274
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !1272, metadata !DIExpression()), !dbg !1275
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1276
  %1 = load i32, ptr %low.addr, align 4, !dbg !1277
  %2 = load i32, ptr %high.addr, align 4, !dbg !1278
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #10, !dbg !1279, !srcloc !1280
  ret void, !dbg !1281
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1282 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1283 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1286, metadata !DIExpression()), !dbg !1291
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1287, metadata !DIExpression()), !dbg !1292
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !1293
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1288, metadata !DIExpression()), !dbg !1294
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1295
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1296
  %div = udiv i64 %1, 64, !dbg !1296
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1297
  store ptr %add.ptr, ptr %p, align 8, !dbg !1294
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !1298
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1289, metadata !DIExpression()), !dbg !1299
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1300
  %rem = urem i64 %2, 64, !dbg !1300
  %shl = shl i64 1, %rem, !dbg !1300
  store i64 %shl, ptr %mask, align 8, !dbg !1299
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !1301
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1290, metadata !DIExpression()), !dbg !1302
  %3 = load ptr, ptr %p, align 8, !dbg !1303
  %4 = load i64, ptr %3, align 8, !dbg !1304
  store i64 %4, ptr %val, align 8, !dbg !1302
  %5 = load i64, ptr %val, align 8, !dbg !1305
  %6 = load i64, ptr %mask, align 8, !dbg !1306
  %and = and i64 %5, %6, !dbg !1307
  %tobool = icmp ne i64 %and, 0, !dbg !1308
  %lnot = xor i1 %tobool, true, !dbg !1308
  %lnot1 = xor i1 %lnot, true, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !1310
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !1310
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !1310
  ret i1 %lnot1, !dbg !1311
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1312 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1315, metadata !DIExpression()), !dbg !1317
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1316, metadata !DIExpression()), !dbg !1318
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1319
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1320
  %div = udiv i64 %1, 64, !dbg !1320
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1321
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !1322
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1323
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1324
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !1325
  ret i1 %call, !dbg !1326
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !1327 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1329, metadata !DIExpression()), !dbg !1331
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1330, metadata !DIExpression()), !dbg !1332
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1333
  %1 = load i64, ptr %size.addr, align 8, !dbg !1334
  %conv = trunc i64 %1 to i32, !dbg !1334
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !1335
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1336
  %3 = load i64, ptr %size.addr, align 8, !dbg !1336
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !1336
  ret void, !dbg !1337
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !1338 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1340, metadata !DIExpression()), !dbg !1342
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1341, metadata !DIExpression()), !dbg !1343
  ret i1 true, !dbg !1344
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!408, !409, !410, !411, !412, !413, !414, !415}
!llvm.ident = !{!416}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hyperv_paravisor_present", scope: !2, file: !3, line: 44, type: !97, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.mshyperv.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/mshyperv\22 -D KBUILD_BASENAME=\22mshyperv\22 -D KBUILD_MODNAME=\22mshyperv\22 -D __KBUILD_MODNAME=kmod_mshyperv -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/mshyperv.ll arch/x86/kernel/cpu/mshyperv.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !37, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/mshyperv.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f08a3fe63db04714870534f573b44952")
!4 = !{!5, !17, !22, !29}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "x86_hypervisor_type", file: !6, line: 24, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/hypervisor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c3d187261c297a091f71fc8abfac2f1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "X86_HYPER_NATIVE", value: 0)
!10 = !DIEnumerator(name: "X86_HYPER_VMWARE", value: 1)
!11 = !DIEnumerator(name: "X86_HYPER_MS_HYPERV", value: 2)
!12 = !DIEnumerator(name: "X86_HYPER_XEN_PV", value: 3)
!13 = !DIEnumerator(name: "X86_HYPER_XEN_HVM", value: 4)
!14 = !DIEnumerator(name: "X86_HYPER_KVM", value: 5)
!15 = !DIEnumerator(name: "X86_HYPER_JAILHOUSE", value: 6)
!16 = !DIEnumerator(name: "X86_HYPER_ACRN", value: 7)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 10, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "false", value: 0)
!21 = !DIEnumerator(name: "true", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hv_isolation_type", file: !23, line: 169, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./arch/x86/include/asm/hyperv-tlfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09a3243b23f2cf6ba4cd394ba2c97dee")
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "HV_ISOLATION_TYPE_NONE", value: 0)
!26 = !DIEnumerator(name: "HV_ISOLATION_TYPE_VBS", value: 1)
!27 = !DIEnumerator(name: "HV_ISOLATION_TYPE_SNP", value: 2)
!28 = !DIEnumerator(name: "HV_ISOLATION_TYPE_TDX", value: 3)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 26, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./arch/x86/include/asm/nmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df2487e90a9e90d681c12ee58edd9a47")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "NMI_LOCAL", value: 0)
!33 = !DIEnumerator(name: "NMI_UNKNOWN", value: 1)
!34 = !DIEnumerator(name: "NMI_SERR", value: 2)
!35 = !DIEnumerator(name: "NMI_IO_CHECK", value: 3)
!36 = !DIEnumerator(name: "NMI_MAX", value: 4)
!37 = !{!38, !39, !40, !42, !45, !48, !41, !49, !51, !55, !58, !60}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!47 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !52, line: 21, baseType: !53)
!52 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !54, line: 27, baseType: !7)
!54 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !52, line: 23, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !54, line: 31, baseType: !57)
!57 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !59, line: 42, baseType: !41)
!59 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!62 = !{!63, !65, !70, !262, !264, !266, !0, !301, !306, !311, !316, !319, !324, !329, !331, !336, !341, !346, !351, !356, !384, !389}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hyperv_paravisor_present389", scope: !2, file: !3, line: 45, type: !38, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !3, line: 696, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 144, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 18)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "x86_hyper_ms_hyperv", scope: !2, file: !3, line: 695, type: !72, isLocal: false, isDefinition: true)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hypervisor_x86", file: !6, line: 41, size: 896, elements: !74)
!74 = !{!75, !78, !83, !84, !102, !261}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !73, file: !6, line: 43, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !73, file: !6, line: 46, baseType: !79, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !59, line: 110, baseType: !51)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !73, file: !6, line: 49, baseType: !5, size: 32, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !73, file: !6, line: 52, baseType: !85, size: 384, offset: 192)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_hyper_init", file: !86, line: 124, size: 384, elements: !87)
!86 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!87 = !{!88, !92, !93, !99, !100, !101}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "init_platform", scope: !85, file: !86, line: 125, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "guest_late_init", scope: !85, file: !86, line: 126, baseType: !89, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "x2apic_available", scope: !85, file: !86, line: 127, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !59, line: 35, baseType: !98)
!98 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "msi_ext_dest_id", scope: !85, file: !86, line: 128, baseType: !94, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem_mapping", scope: !85, file: !86, line: 129, baseType: !89, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "init_after_bootmem", scope: !85, file: !86, line: 130, baseType: !89, size: 64, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !73, file: !6, line: 55, baseType: !103, size: 256, offset: 576)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_hyper_runtime", file: !86, line: 270, size: 256, elements: !104)
!104 = !{!105, !109, !253, !257}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pin_vcpu", scope: !103, file: !86, line: 271, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !39}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sev_es_hcall_prepare", scope: !103, file: !86, line: 272, baseType: !110, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !113, !201}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ghcb", file: !115, line: 505, size: 32768, elements: !116)
!115 = !DIFile(filename: "./arch/x86/include/asm/svm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccde6e0fcda4269e31ba4a4ceb53d4bf")
!116 = !{!117, !184, !188, !192, !196, !200}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "save", scope: !114, file: !115, line: 506, baseType: !118, size: 8256)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ghcb_save_area", file: !115, line: 463, size: 8256, elements: !119)
!119 = !{!120, !127, !128, !132, !133, !137, !138, !142, !143, !147, !148, !149, !150, !154, !155, !156, !157, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !181, !182, !183}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x0", scope: !118, file: !115, line: 464, baseType: !121, size: 1624)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 1624, elements: !125)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !52, line: 17, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !54, line: 21, baseType: !124)
!124 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !{!126}
!126 = !DISubrange(count: 203)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "cpl", scope: !118, file: !115, line: 465, baseType: !122, size: 8, offset: 1624)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0xcc", scope: !118, file: !115, line: 466, baseType: !129, size: 928, offset: 1632)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 928, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 116)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "xss", scope: !118, file: !115, line: 467, baseType: !55, size: 64, offset: 2560)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x148", scope: !118, file: !115, line: 468, baseType: !134, size: 192, offset: 2624)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 192, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 24)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "dr7", scope: !118, file: !115, line: 469, baseType: !55, size: 64, offset: 2816)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x168", scope: !118, file: !115, line: 470, baseType: !139, size: 128, offset: 2880)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 128, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 16)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !118, file: !115, line: 471, baseType: !55, size: 64, offset: 3008)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x180", scope: !118, file: !115, line: 472, baseType: !144, size: 704, offset: 3072)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 704, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 88)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !118, file: !115, line: 473, baseType: !55, size: 64, offset: 3776)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x1e0", scope: !118, file: !115, line: 474, baseType: !134, size: 192, offset: 3840)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !118, file: !115, line: 475, baseType: !55, size: 64, offset: 4032)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x200", scope: !118, file: !115, line: 476, baseType: !151, size: 2112, offset: 4096)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 2112, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 264)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rcx", scope: !118, file: !115, line: 477, baseType: !55, size: 64, offset: 6208)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "rdx", scope: !118, file: !115, line: 478, baseType: !55, size: 64, offset: 6272)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rbx", scope: !118, file: !115, line: 479, baseType: !55, size: 64, offset: 6336)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x320", scope: !118, file: !115, line: 480, baseType: !158, size: 64, offset: 6400)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 64, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "rbp", scope: !118, file: !115, line: 481, baseType: !55, size: 64, offset: 6464)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "rsi", scope: !118, file: !115, line: 482, baseType: !55, size: 64, offset: 6528)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "rdi", scope: !118, file: !115, line: 483, baseType: !55, size: 64, offset: 6592)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !118, file: !115, line: 484, baseType: !55, size: 64, offset: 6656)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !118, file: !115, line: 485, baseType: !55, size: 64, offset: 6720)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !118, file: !115, line: 486, baseType: !55, size: 64, offset: 6784)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !118, file: !115, line: 487, baseType: !55, size: 64, offset: 6848)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !118, file: !115, line: 488, baseType: !55, size: 64, offset: 6912)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !118, file: !115, line: 489, baseType: !55, size: 64, offset: 6976)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !118, file: !115, line: 490, baseType: !55, size: 64, offset: 7040)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !118, file: !115, line: 491, baseType: !55, size: 64, offset: 7104)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x380", scope: !118, file: !115, line: 492, baseType: !139, size: 128, offset: 7168)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "sw_exit_code", scope: !118, file: !115, line: 493, baseType: !55, size: 64, offset: 7296)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "sw_exit_info_1", scope: !118, file: !115, line: 494, baseType: !55, size: 64, offset: 7360)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sw_exit_info_2", scope: !118, file: !115, line: 495, baseType: !55, size: 64, offset: 7424)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "sw_scratch", scope: !118, file: !115, line: 496, baseType: !55, size: 64, offset: 7488)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x3b0", scope: !118, file: !115, line: 497, baseType: !178, size: 448, offset: 7552)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 448, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 56)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "xcr0", scope: !118, file: !115, line: 498, baseType: !55, size: 64, offset: 8000)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "valid_bitmap", scope: !118, file: !115, line: 499, baseType: !139, size: 128, offset: 8064)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "x87_state_gpa", scope: !118, file: !115, line: 500, baseType: !55, size: 64, offset: 8192)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_save", scope: !114, file: !115, line: 507, baseType: !185, size: 8128, offset: 8256)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 8128, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 1016)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "shared_buffer", scope: !114, file: !115, line: 509, baseType: !189, size: 16256, offset: 16384)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 16256, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 2032)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0xff0", scope: !114, file: !115, line: 511, baseType: !193, size: 80, offset: 32640)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 80, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 10)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_version", scope: !114, file: !115, line: 512, baseType: !197, size: 16, offset: 32720)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !52, line: 19, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !54, line: 24, baseType: !199)
!199 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ghcb_usage", scope: !114, file: !115, line: 513, baseType: !51, size: 32, offset: 32736)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !203, line: 103, size: 1344, elements: !204)
!203 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !233, !234, !235}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !202, file: !203, line: 109, baseType: !41, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !202, file: !203, line: 110, baseType: !41, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !202, file: !203, line: 111, baseType: !41, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !202, file: !203, line: 112, baseType: !41, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !202, file: !203, line: 113, baseType: !41, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !202, file: !203, line: 114, baseType: !41, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !202, file: !203, line: 117, baseType: !41, size: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !202, file: !203, line: 118, baseType: !41, size: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !202, file: !203, line: 119, baseType: !41, size: 64, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !202, file: !203, line: 120, baseType: !41, size: 64, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !202, file: !203, line: 121, baseType: !41, size: 64, offset: 640)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !202, file: !203, line: 122, baseType: !41, size: 64, offset: 704)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !202, file: !203, line: 123, baseType: !41, size: 64, offset: 768)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !202, file: !203, line: 124, baseType: !41, size: 64, offset: 832)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !202, file: !203, line: 125, baseType: !41, size: 64, offset: 896)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !202, file: !203, line: 139, baseType: !41, size: 64, offset: 960)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !202, file: !203, line: 142, baseType: !41, size: 64, offset: 1024)
!222 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !203, line: 144, baseType: !223, size: 64, offset: 1088)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !203, line: 144, size: 64, elements: !224)
!224 = !{!225, !226, !227}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !223, file: !203, line: 146, baseType: !197, size: 16)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !223, file: !203, line: 148, baseType: !55, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !223, file: !203, line: 150, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !203, line: 59, size: 64, elements: !229)
!229 = !{!230, !231, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !228, file: !203, line: 61, baseType: !55, size: 16, flags: DIFlagBitField, extraData: i64 0)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !228, file: !203, line: 63, baseType: !55, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !228, file: !203, line: 65, baseType: !55, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !203, line: 153, baseType: !41, size: 64, offset: 1152)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !202, file: !203, line: 154, baseType: !41, size: 64, offset: 1216)
!235 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !203, line: 156, baseType: !236, size: 64, offset: 1280)
!236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !203, line: 156, size: 64, elements: !237)
!237 = !{!238, !239, !240}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !236, file: !203, line: 158, baseType: !197, size: 16)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !236, file: !203, line: 160, baseType: !55, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !236, file: !203, line: 162, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !203, line: 69, size: 64, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !241, file: !203, line: 71, baseType: !55, size: 16, flags: DIFlagBitField, extraData: i64 0)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !241, file: !203, line: 73, baseType: !55, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !241, file: !203, line: 75, baseType: !55, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !241, file: !203, line: 77, baseType: !55, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !241, file: !203, line: 80, baseType: !55, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !241, file: !203, line: 83, baseType: !55, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !241, file: !203, line: 86, baseType: !55, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !241, file: !203, line: 88, baseType: !55, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !241, file: !203, line: 93, baseType: !55, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !241, file: !203, line: 100, baseType: !55, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sev_es_hcall_finish", scope: !103, file: !86, line: 273, baseType: !254, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!97, !113, !201}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "is_private_mmio", scope: !103, file: !86, line: 274, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!97, !55}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_nopv", scope: !73, file: !6, line: 58, baseType: !97, size: 8, offset: 832)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "hv_root_partition", scope: !2, file: !3, line: 38, type: !97, isLocal: false, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "hv_nested", scope: !2, file: !3, line: 40, type: !97, isLocal: false, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "ms_hyperv", scope: !2, file: !3, line: 41, type: !268, isLocal: false, isDefinition: true)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ms_hyperv_info", file: !269, line: 31, size: 384, elements: !270)
!269 = !DIFile(filename: "./include/asm-generic/mshyperv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd50a0b047962e893af356bbfd04e3c5")
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278, !279, !288, !300}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !268, file: !269, line: 32, baseType: !51, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "priv_high", scope: !268, file: !269, line: 33, baseType: !51, size: 32, offset: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "misc_features", scope: !268, file: !269, line: 34, baseType: !51, size: 32, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "hints", scope: !268, file: !269, line: 35, baseType: !51, size: 32, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "nested_features", scope: !268, file: !269, line: 36, baseType: !51, size: 32, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "max_vp_index", scope: !268, file: !269, line: 37, baseType: !51, size: 32, offset: 160)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "max_lp_index", scope: !268, file: !269, line: 38, baseType: !51, size: 32, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "vtl", scope: !268, file: !269, line: 39, baseType: !122, size: 8, offset: 224)
!279 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !269, line: 40, baseType: !280, size: 32, offset: 256)
!280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !269, line: 40, size: 32, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "isolation_config_a", scope: !280, file: !269, line: 41, baseType: !51, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !269, line: 42, baseType: !284, size: 32)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !280, file: !269, line: 42, size: 32, elements: !285)
!285 = !{!286, !287}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "paravisor_present", scope: !284, file: !269, line: 43, baseType: !51, size: 1, flags: DIFlagBitField, extraData: i64 0)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_a1", scope: !284, file: !269, line: 44, baseType: !51, size: 31, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!288 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !269, line: 47, baseType: !289, size: 32, offset: 288)
!289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !269, line: 47, size: 32, elements: !290)
!290 = !{!291, !292}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "isolation_config_b", scope: !289, file: !269, line: 48, baseType: !51, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !269, line: 49, baseType: !293, size: 32)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !289, file: !269, line: 49, size: 32, elements: !294)
!294 = !{!295, !296, !297, !298, !299}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "cvm_type", scope: !293, file: !269, line: 50, baseType: !51, size: 4, flags: DIFlagBitField, extraData: i64 0)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_b1", scope: !293, file: !269, line: 51, baseType: !51, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "shared_gpa_boundary_active", scope: !293, file: !269, line: 52, baseType: !51, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "shared_gpa_boundary_bits", scope: !293, file: !269, line: 53, baseType: !51, size: 6, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_b2", scope: !293, file: !269, line: 54, baseType: !51, size: 20, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "shared_gpa_boundary", scope: !268, file: !269, line: 57, baseType: !55, size: 64, offset: 320)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !3, line: 296, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 104, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 13)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !3, line: 302, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 352, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 44)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !3, line: 306, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 344, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 43)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !3, line: 416, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !159)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !3, line: 429, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 568, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 71)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !3, line: 456, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 304, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 38)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !3, line: 461, type: !313, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !3, line: 473, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 328, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 41)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !3, line: 496, type: !338, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 456, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 57)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !3, line: 526, type: !343, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 272, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 34)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !3, line: 541, type: !348, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 312, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 39)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !3, line: 545, type: !353, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 120, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 15)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(name: "hv_nmi_unknown_na", scope: !358, file: !3, line: 545, type: !368, isLocal: true, isDefinition: true)
!358 = distinct !DISubprogram(name: "ms_hyperv_init_platform", scope: !3, file: !3, line: 407, type: !90, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !359)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DILocalVariable(name: "hv_max_functions_eax", scope: !358, file: !3, line: 409, type: !39)
!361 = !DILocalVariable(name: "hv_host_info_eax", scope: !358, file: !3, line: 410, type: !39)
!362 = !DILocalVariable(name: "hv_host_info_ebx", scope: !358, file: !3, line: 411, type: !39)
!363 = !DILocalVariable(name: "hv_host_info_ecx", scope: !358, file: !3, line: 412, type: !39)
!364 = !DILocalVariable(name: "hv_host_info_edx", scope: !358, file: !3, line: 413, type: !39)
!365 = !DILocalVariable(name: "hv_lapic_frequency", scope: !366, file: !3, line: 536, type: !55)
!366 = distinct !DILexicalBlock(scope: !367, file: !3, line: 532, column: 69)
!367 = distinct !DILexicalBlock(scope: !358, file: !3, line: 531, column: 6)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nmiaction", file: !30, line: 39, size: 384, elements: !369)
!369 = !{!370, !376, !381, !382, !383}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !368, file: !30, line: 40, baseType: !371, size: 128)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !59, line: 190, size: 128, elements: !372)
!372 = !{!373, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !59, line: 191, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !371, file: !59, line: 191, baseType: !374, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !368, file: !30, line: 41, baseType: !377, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "nmi_handler_t", file: !30, line: 37, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!39, !7, !201}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "max_duration", scope: !368, file: !30, line: 42, baseType: !55, size: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !30, line: 43, baseType: !41, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !368, file: !30, line: 44, baseType: !76, size: 64, offset: 320)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !3, line: 641, type: !386, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 152, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 19)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "nmi_cpu", scope: !391, file: !3, line: 321, type: !404, isLocal: true, isDefinition: true)
!391 = distinct !DISubprogram(name: "hv_nmi_unknown", scope: !3, file: !3, line: 319, type: !379, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !392)
!392 = !{!393, !394, !395, !398, !402}
!393 = !DILocalVariable(name: "val", arg: 1, scope: !391, file: !3, line: 319, type: !7)
!394 = !DILocalVariable(name: "regs", arg: 2, scope: !391, file: !3, line: 319, type: !201)
!395 = !DILocalVariable(name: "pscr_ret__", scope: !396, file: !3, line: 326, type: !39)
!396 = distinct !DILexicalBlock(scope: !397, file: !3, line: 326, column: 35)
!397 = distinct !DILexicalBlock(scope: !391, file: !3, line: 326, column: 6)
!398 = !DILocalVariable(name: "__vpp_verify", scope: !399, file: !3, line: 326, type: !400)
!399 = distinct !DILexicalBlock(scope: !396, file: !3, line: 326, column: 35)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!402 = !DILocalVariable(name: "pfo_val__", scope: !403, file: !3, line: 326, type: !51)
!403 = distinct !DILexicalBlock(scope: !396, file: !3, line: 326, column: 35)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !59, line: 174, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 172, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !405, file: !59, line: 173, baseType: !39, size: 32)
!408 = !{i32 7, !"Dwarf Version", i32 5}
!409 = !{i32 2, !"Debug Info Version", i32 3}
!410 = !{i32 1, !"wchar_size", i32 2}
!411 = !{i32 8, !"cf-protection-branch", i32 1}
!412 = !{i32 4, !"function_return_thunk_extern", i32 1}
!413 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!414 = !{i32 1, !"Code Model", i32 2}
!415 = !{i32 1, !"override-stack-alignment", i32 8}
!416 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!417 = distinct !DISubprogram(name: "ms_hyperv_platform", scope: !3, file: !3, line: 284, type: !80, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !418)
!418 = !{!419, !420}
!419 = !DILocalVariable(name: "eax", scope: !417, file: !3, line: 286, type: !51)
!420 = !DILocalVariable(name: "hyp_signature", scope: !417, file: !3, line: 287, type: !421)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 96, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 3)
!424 = !DILocation(line: 286, column: 2, scope: !417)
!425 = !DILocation(line: 286, column: 6, scope: !417)
!426 = !DILocation(line: 287, column: 2, scope: !417)
!427 = !DILocation(line: 287, column: 6, scope: !417)
!428 = !DILocation(line: 289, column: 6, scope: !417)
!429 = !DILocation(line: 289, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !417, file: !3, line: 289, column: 6)
!431 = !DILocation(line: 290, column: 3, scope: !430)
!432 = !DILocation(line: 293, column: 15, scope: !417)
!433 = !DILocation(line: 293, column: 34, scope: !417)
!434 = !DILocation(line: 293, column: 53, scope: !417)
!435 = !DILocation(line: 292, column: 2, scope: !417)
!436 = !DILocation(line: 295, column: 6, scope: !437)
!437 = distinct !DILexicalBlock(scope: !417, file: !3, line: 295, column: 6)
!438 = !DILocation(line: 295, column: 10, scope: !437)
!439 = !DILocation(line: 295, column: 29, scope: !437)
!440 = !DILocation(line: 295, column: 32, scope: !437)
!441 = !DILocation(line: 295, column: 36, scope: !437)
!442 = !DILocation(line: 295, column: 55, scope: !437)
!443 = !DILocation(line: 296, column: 29, scope: !437)
!444 = !DILocation(line: 296, column: 6, scope: !437)
!445 = !DILocation(line: 295, column: 6, scope: !417)
!446 = !DILocation(line: 297, column: 3, scope: !437)
!447 = !DILocation(line: 300, column: 8, scope: !417)
!448 = !DILocation(line: 300, column: 6, scope: !417)
!449 = !DILocation(line: 301, column: 8, scope: !450)
!450 = distinct !DILexicalBlock(scope: !417, file: !3, line: 301, column: 6)
!451 = !DILocation(line: 301, column: 12, scope: !450)
!452 = !DILocation(line: 301, column: 6, scope: !417)
!453 = !DILocation(line: 302, column: 3, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !3, line: 302, column: 3)
!455 = distinct !DILexicalBlock(scope: !450, file: !3, line: 301, column: 43)
!456 = !DILocation(line: 302, column: 3, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !3, line: 302, column: 3)
!458 = !DILocation(line: 303, column: 3, scope: !455)
!459 = !DILocation(line: 305, column: 8, scope: !460)
!460 = distinct !DILexicalBlock(scope: !417, file: !3, line: 305, column: 6)
!461 = !DILocation(line: 305, column: 12, scope: !460)
!462 = !DILocation(line: 305, column: 6, scope: !417)
!463 = !DILocation(line: 306, column: 3, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !3, line: 306, column: 3)
!465 = distinct !DILexicalBlock(scope: !460, file: !3, line: 305, column: 42)
!466 = !DILocation(line: 306, column: 3, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !3, line: 306, column: 3)
!468 = !DILocation(line: 307, column: 3, scope: !465)
!469 = !DILocation(line: 310, column: 2, scope: !417)
!470 = !DILocation(line: 311, column: 1, scope: !417)
!471 = !DILocation(line: 409, column: 2, scope: !358)
!472 = !DILocation(line: 409, column: 6, scope: !358)
!473 = !DILocation(line: 410, column: 2, scope: !358)
!474 = !DILocation(line: 410, column: 6, scope: !358)
!475 = !DILocation(line: 411, column: 2, scope: !358)
!476 = !DILocation(line: 411, column: 6, scope: !358)
!477 = !DILocation(line: 412, column: 2, scope: !358)
!478 = !DILocation(line: 412, column: 6, scope: !358)
!479 = !DILocation(line: 413, column: 2, scope: !358)
!480 = !DILocation(line: 413, column: 6, scope: !358)
!481 = !DILocation(line: 416, column: 15, scope: !358)
!482 = !DILocation(line: 422, column: 23, scope: !358)
!483 = !DILocation(line: 422, column: 21, scope: !358)
!484 = !DILocation(line: 423, column: 24, scope: !358)
!485 = !DILocation(line: 423, column: 22, scope: !358)
!486 = !DILocation(line: 424, column: 28, scope: !358)
!487 = !DILocation(line: 424, column: 26, scope: !358)
!488 = !DILocation(line: 425, column: 23, scope: !358)
!489 = !DILocation(line: 425, column: 21, scope: !358)
!490 = !DILocation(line: 427, column: 25, scope: !358)
!491 = !DILocation(line: 427, column: 23, scope: !358)
!492 = !DILocation(line: 429, column: 2, scope: !493)
!493 = distinct !DILexicalBlock(scope: !358, file: !3, line: 429, column: 2)
!494 = !DILocation(line: 429, column: 2, scope: !495)
!495 = distinct !DILexicalBlock(scope: !493, file: !3, line: 429, column: 2)
!496 = !DILocation(line: 433, column: 27, scope: !358)
!497 = !DILocation(line: 433, column: 25, scope: !358)
!498 = !DILocation(line: 434, column: 27, scope: !358)
!499 = !DILocation(line: 434, column: 25, scope: !358)
!500 = !DILocation(line: 436, column: 2, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 436, column: 2)
!502 = distinct !DILexicalBlock(scope: !358, file: !3, line: 436, column: 2)
!503 = !DILocation(line: 436, column: 2, scope: !502)
!504 = !DILocation(line: 453, column: 17, scope: !505)
!505 = distinct !DILexicalBlock(scope: !358, file: !3, line: 453, column: 6)
!506 = !DILocation(line: 453, column: 7, scope: !505)
!507 = !DILocation(line: 453, column: 27, scope: !505)
!508 = !DILocation(line: 453, column: 48, scope: !505)
!509 = !DILocation(line: 454, column: 18, scope: !505)
!510 = !DILocation(line: 454, column: 8, scope: !505)
!511 = !DILocation(line: 454, column: 28, scope: !505)
!512 = !DILocation(line: 453, column: 6, scope: !358)
!513 = !DILocation(line: 455, column: 21, scope: !514)
!514 = distinct !DILexicalBlock(scope: !505, file: !3, line: 454, column: 45)
!515 = !DILocation(line: 456, column: 3, scope: !516)
!516 = distinct !DILexicalBlock(scope: !514, file: !3, line: 456, column: 3)
!517 = !DILocation(line: 456, column: 3, scope: !518)
!518 = distinct !DILexicalBlock(scope: !516, file: !3, line: 456, column: 3)
!519 = !DILocation(line: 457, column: 2, scope: !514)
!520 = !DILocation(line: 459, column: 16, scope: !521)
!521 = distinct !DILexicalBlock(scope: !358, file: !3, line: 459, column: 6)
!522 = !DILocation(line: 459, column: 6, scope: !521)
!523 = !DILocation(line: 459, column: 22, scope: !521)
!524 = !DILocation(line: 459, column: 6, scope: !358)
!525 = !DILocation(line: 460, column: 13, scope: !526)
!526 = distinct !DILexicalBlock(scope: !521, file: !3, line: 459, column: 46)
!527 = !DILocation(line: 461, column: 3, scope: !528)
!528 = distinct !DILexicalBlock(scope: !526, file: !3, line: 461, column: 3)
!529 = !DILocation(line: 461, column: 3, scope: !530)
!530 = distinct !DILexicalBlock(scope: !528, file: !3, line: 461, column: 3)
!531 = !DILocation(line: 462, column: 2, scope: !526)
!532 = !DILocation(line: 467, column: 6, scope: !533)
!533 = distinct !DILexicalBlock(scope: !358, file: !3, line: 467, column: 6)
!534 = !DILocation(line: 467, column: 27, scope: !533)
!535 = !DILocation(line: 467, column: 6, scope: !358)
!536 = !DILocation(line: 468, column: 22, scope: !537)
!537 = distinct !DILexicalBlock(scope: !533, file: !3, line: 467, column: 52)
!538 = !DILocation(line: 468, column: 20, scope: !537)
!539 = !DILocation(line: 469, column: 22, scope: !537)
!540 = !DILocation(line: 469, column: 20, scope: !537)
!541 = !DILocation(line: 470, column: 22, scope: !537)
!542 = !DILocation(line: 470, column: 20, scope: !537)
!543 = !DILocation(line: 471, column: 22, scope: !537)
!544 = !DILocation(line: 471, column: 20, scope: !537)
!545 = !DILocation(line: 473, column: 3, scope: !546)
!546 = distinct !DILexicalBlock(scope: !537, file: !3, line: 473, column: 3)
!547 = !DILocation(line: 473, column: 3, scope: !548)
!548 = distinct !DILexicalBlock(scope: !546, file: !3, line: 473, column: 3)
!549 = !DILocation(line: 477, column: 2, scope: !537)
!550 = !DILocation(line: 479, column: 16, scope: !551)
!551 = distinct !DILexicalBlock(scope: !358, file: !3, line: 479, column: 6)
!552 = !DILocation(line: 479, column: 6, scope: !551)
!553 = !DILocation(line: 479, column: 25, scope: !551)
!554 = !DILocation(line: 479, column: 52, scope: !551)
!555 = !DILocation(line: 480, column: 16, scope: !551)
!556 = !DILocation(line: 480, column: 6, scope: !551)
!557 = !DILocation(line: 480, column: 30, scope: !551)
!558 = !DILocation(line: 479, column: 6, scope: !358)
!559 = !DILocation(line: 481, column: 30, scope: !560)
!560 = distinct !DILexicalBlock(scope: !551, file: !3, line: 480, column: 69)
!561 = !DILocation(line: 482, column: 30, scope: !560)
!562 = !DILocation(line: 483, column: 3, scope: !560)
!563 = !DILocation(line: 483, column: 3, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !3, line: 483, column: 3)
!565 = !DILocation(line: 484, column: 2, scope: !560)
!566 = !DILocation(line: 486, column: 16, scope: !567)
!567 = distinct !DILexicalBlock(scope: !358, file: !3, line: 486, column: 6)
!568 = !DILocation(line: 486, column: 6, scope: !567)
!569 = !DILocation(line: 486, column: 26, scope: !567)
!570 = !DILocation(line: 486, column: 6, scope: !358)
!571 = !DILocation(line: 487, column: 34, scope: !572)
!572 = distinct !DILexicalBlock(scope: !567, file: !3, line: 486, column: 42)
!573 = !DILocation(line: 487, column: 32, scope: !572)
!574 = !DILocation(line: 488, column: 34, scope: !572)
!575 = !DILocation(line: 488, column: 32, scope: !572)
!576 = !DILocation(line: 490, column: 17, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !3, line: 490, column: 7)
!578 = !DILocation(line: 490, column: 7, scope: !577)
!579 = !DILocation(line: 490, column: 7, scope: !572)
!580 = !DILocation(line: 492, column: 5, scope: !577)
!581 = !DILocation(line: 491, column: 34, scope: !577)
!582 = !DILocation(line: 491, column: 4, scope: !577)
!583 = !DILocation(line: 494, column: 42, scope: !572)
!584 = !DILocation(line: 494, column: 31, scope: !572)
!585 = !DILocation(line: 494, column: 30, scope: !572)
!586 = !DILocation(line: 494, column: 28, scope: !572)
!587 = !DILocation(line: 496, column: 3, scope: !588)
!588 = distinct !DILexicalBlock(scope: !572, file: !3, line: 496, column: 3)
!589 = !DILocation(line: 496, column: 3, scope: !590)
!590 = distinct !DILexicalBlock(scope: !588, file: !3, line: 496, column: 3)
!591 = !DILocation(line: 500, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !572, file: !3, line: 500, column: 7)
!593 = !DILocation(line: 500, column: 31, scope: !592)
!594 = !DILocation(line: 500, column: 7, scope: !572)
!595 = !DILocation(line: 501, column: 4, scope: !596)
!596 = distinct !DILexicalBlock(scope: !592, file: !3, line: 500, column: 57)
!597 = !DILocation(line: 502, column: 3, scope: !596)
!598 = !DILocation(line: 502, column: 14, scope: !599)
!599 = distinct !DILexicalBlock(scope: !592, file: !3, line: 502, column: 14)
!600 = !DILocation(line: 502, column: 38, scope: !599)
!601 = !DILocation(line: 502, column: 14, scope: !592)
!602 = !DILocation(line: 503, column: 4, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !3, line: 502, column: 64)
!604 = !DILocation(line: 506, column: 20, scope: !603)
!605 = !DILocation(line: 508, column: 19, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !3, line: 508, column: 8)
!607 = !DILocation(line: 508, column: 9, scope: !606)
!608 = !DILocation(line: 508, column: 8, scope: !603)
!609 = !DILocation(line: 510, column: 24, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !3, line: 508, column: 38)
!611 = !DILocation(line: 513, column: 29, scope: !610)
!612 = !DILocation(line: 516, column: 21, scope: !610)
!613 = !DILocation(line: 518, column: 41, scope: !610)
!614 = !DILocation(line: 519, column: 4, scope: !610)
!615 = !DILocation(line: 520, column: 3, scope: !603)
!616 = !DILocation(line: 521, column: 2, scope: !572)
!617 = !DILocation(line: 523, column: 6, scope: !618)
!618 = distinct !DILexicalBlock(scope: !358, file: !3, line: 523, column: 6)
!619 = !DILocation(line: 523, column: 27, scope: !618)
!620 = !DILocation(line: 523, column: 6, scope: !358)
!621 = !DILocation(line: 525, column: 4, scope: !622)
!622 = distinct !DILexicalBlock(scope: !618, file: !3, line: 523, column: 60)
!623 = !DILocation(line: 524, column: 29, scope: !622)
!624 = !DILocation(line: 526, column: 3, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !3, line: 526, column: 3)
!626 = !DILocation(line: 526, column: 3, scope: !627)
!627 = distinct !DILexicalBlock(scope: !625, file: !3, line: 526, column: 3)
!628 = !DILocation(line: 528, column: 2, scope: !622)
!629 = !DILocation(line: 531, column: 16, scope: !367)
!630 = !DILocation(line: 531, column: 6, scope: !367)
!631 = !DILocation(line: 531, column: 25, scope: !367)
!632 = !DILocation(line: 531, column: 52, scope: !367)
!633 = !DILocation(line: 532, column: 16, scope: !367)
!634 = !DILocation(line: 532, column: 6, scope: !367)
!635 = !DILocation(line: 532, column: 30, scope: !367)
!636 = !DILocation(line: 531, column: 6, scope: !358)
!637 = !DILocation(line: 536, column: 3, scope: !366)
!638 = !DILocation(line: 536, column: 7, scope: !366)
!639 = !DILocation(line: 538, column: 3, scope: !366)
!640 = !DILocation(line: 539, column: 32, scope: !366)
!641 = !DILocation(line: 539, column: 24, scope: !366)
!642 = !DILocation(line: 539, column: 22, scope: !366)
!643 = !DILocation(line: 540, column: 24, scope: !366)
!644 = !DILocation(line: 540, column: 22, scope: !366)
!645 = !DILocation(line: 541, column: 3, scope: !646)
!646 = distinct !DILexicalBlock(scope: !366, file: !3, line: 541, column: 3)
!647 = !DILocation(line: 541, column: 3, scope: !648)
!648 = distinct !DILexicalBlock(scope: !646, file: !3, line: 541, column: 3)
!649 = !DILocation(line: 543, column: 2, scope: !367)
!650 = !DILocation(line: 543, column: 2, scope: !366)
!651 = !DILocation(line: 545, column: 2, scope: !652)
!652 = distinct !DILexicalBlock(scope: !358, file: !3, line: 545, column: 2)
!653 = !DILocation(line: 550, column: 17, scope: !358)
!654 = !DILocation(line: 557, column: 16, scope: !655)
!655 = distinct !DILexicalBlock(scope: !358, file: !3, line: 557, column: 6)
!656 = !DILocation(line: 557, column: 6, scope: !655)
!657 = !DILocation(line: 557, column: 25, scope: !655)
!658 = !DILocation(line: 557, column: 6, scope: !358)
!659 = !DILocation(line: 567, column: 3, scope: !660)
!660 = distinct !DILexicalBlock(scope: !655, file: !3, line: 557, column: 52)
!661 = !DILocation(line: 568, column: 3, scope: !660)
!662 = !DILocation(line: 568, column: 3, scope: !663)
!663 = distinct !DILexicalBlock(scope: !660, file: !3, line: 568, column: 3)
!664 = !DILocation(line: 569, column: 2, scope: !660)
!665 = !DILocation(line: 575, column: 6, scope: !666)
!666 = distinct !DILexicalBlock(scope: !358, file: !3, line: 575, column: 6)
!667 = !DILocation(line: 575, column: 6, scope: !358)
!668 = !DILocation(line: 576, column: 31, scope: !666)
!669 = !DILocation(line: 576, column: 3, scope: !666)
!670 = !DILocation(line: 586, column: 34, scope: !358)
!671 = !DILocation(line: 640, column: 18, scope: !672)
!672 = distinct !DILexicalBlock(scope: !358, file: !3, line: 640, column: 6)
!673 = !DILocation(line: 640, column: 8, scope: !672)
!674 = !DILocation(line: 640, column: 27, scope: !672)
!675 = !DILocation(line: 640, column: 6, scope: !358)
!676 = !DILocation(line: 641, column: 3, scope: !672)
!677 = !DILocation(line: 643, column: 2, scope: !358)
!678 = !DILocation(line: 644, column: 1, scope: !358)
!679 = distinct !DISubprogram(name: "ms_hyperv_x2apic_available", scope: !3, file: !3, line: 646, type: !95, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!680 = !DILocation(line: 648, column: 2, scope: !679)
!681 = distinct !DISubprogram(name: "ms_hyperv_msi_ext_dest_id", scope: !3, file: !3, line: 667, type: !95, scopeLine: 668, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !682)
!682 = !{!683}
!683 = !DILocalVariable(name: "eax", scope: !681, file: !3, line: 669, type: !51)
!684 = !DILocation(line: 669, column: 2, scope: !681)
!685 = !DILocation(line: 669, column: 6, scope: !681)
!686 = !DILocation(line: 671, column: 8, scope: !681)
!687 = !DILocation(line: 671, column: 6, scope: !681)
!688 = !DILocation(line: 672, column: 6, scope: !689)
!689 = distinct !DILexicalBlock(scope: !681, file: !3, line: 672, column: 6)
!690 = !DILocation(line: 672, column: 10, scope: !689)
!691 = !DILocation(line: 672, column: 6, scope: !681)
!692 = !DILocation(line: 673, column: 3, scope: !689)
!693 = !DILocation(line: 675, column: 8, scope: !681)
!694 = !DILocation(line: 675, column: 6, scope: !681)
!695 = !DILocation(line: 676, column: 9, scope: !681)
!696 = !DILocation(line: 676, column: 13, scope: !681)
!697 = !DILocation(line: 676, column: 2, scope: !681)
!698 = !DILocation(line: 677, column: 1, scope: !681)
!699 = distinct !DISubprogram(name: "arch_test_bit", scope: !700, file: !700, line: 237, type: !701, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !706)
!700 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!701 = !DISubroutineType(types: !702)
!702 = !{!97, !41, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !41)
!706 = !{!707, !708}
!707 = !DILocalVariable(name: "nr", arg: 1, scope: !699, file: !700, line: 237, type: !41)
!708 = !DILocalVariable(name: "addr", arg: 2, scope: !699, file: !700, line: 237, type: !703)
!709 = !DILocation(line: 237, column: 29, scope: !699)
!710 = !DILocation(line: 237, column: 63, scope: !699)
!711 = !DILocation(line: 239, column: 30, scope: !699)
!712 = !DILocation(line: 239, column: 9, scope: !699)
!713 = !DILocation(line: 239, column: 54, scope: !699)
!714 = !DILocation(line: 239, column: 58, scope: !699)
!715 = !DILocation(line: 239, column: 36, scope: !699)
!716 = !DILocation(line: 240, column: 26, scope: !699)
!717 = !DILocation(line: 240, column: 30, scope: !699)
!718 = !DILocation(line: 240, column: 8, scope: !699)
!719 = !DILocation(line: 239, column: 2, scope: !699)
!720 = distinct !DISubprogram(name: "cpuid", scope: !721, file: !721, line: 72, type: !722, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !725)
!721 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!722 = !DISubroutineType(types: !723)
!723 = !{null, !7, !724, !724, !724, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!725 = !{!726, !727, !728, !729, !730}
!726 = !DILocalVariable(name: "op", arg: 1, scope: !720, file: !721, line: 72, type: !7)
!727 = !DILocalVariable(name: "eax", arg: 2, scope: !720, file: !721, line: 73, type: !724)
!728 = !DILocalVariable(name: "ebx", arg: 3, scope: !720, file: !721, line: 73, type: !724)
!729 = !DILocalVariable(name: "ecx", arg: 4, scope: !720, file: !721, line: 74, type: !724)
!730 = !DILocalVariable(name: "edx", arg: 5, scope: !720, file: !721, line: 74, type: !724)
!731 = !DILocation(line: 72, column: 39, scope: !720)
!732 = !DILocation(line: 73, column: 19, scope: !720)
!733 = !DILocation(line: 73, column: 38, scope: !720)
!734 = !DILocation(line: 74, column: 19, scope: !720)
!735 = !DILocation(line: 74, column: 38, scope: !720)
!736 = !DILocation(line: 76, column: 9, scope: !720)
!737 = !DILocation(line: 76, column: 3, scope: !720)
!738 = !DILocation(line: 76, column: 7, scope: !720)
!739 = !DILocation(line: 77, column: 3, scope: !720)
!740 = !DILocation(line: 77, column: 7, scope: !720)
!741 = !DILocation(line: 78, column: 10, scope: !720)
!742 = !DILocation(line: 78, column: 15, scope: !720)
!743 = !DILocation(line: 78, column: 20, scope: !720)
!744 = !DILocation(line: 78, column: 25, scope: !720)
!745 = !DILocation(line: 78, column: 2, scope: !720)
!746 = !DILocation(line: 79, column: 1, scope: !720)
!747 = !DISubprogram(name: "memcmp", scope: !748, file: !748, line: 196, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!748 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!749 = !DISubroutineType(types: !750)
!750 = !{!39, !400, !400, !751}
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !752, line: 72, baseType: !753)
!752 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !752, line: 16, baseType: !41)
!754 = distinct !DISubprogram(name: "cpuid_eax", scope: !721, file: !721, line: 94, type: !755, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!7, !7}
!757 = !{!758, !759, !760, !761, !762}
!758 = !DILocalVariable(name: "op", arg: 1, scope: !754, file: !721, line: 94, type: !7)
!759 = !DILocalVariable(name: "eax", scope: !754, file: !721, line: 96, type: !7)
!760 = !DILocalVariable(name: "ebx", scope: !754, file: !721, line: 96, type: !7)
!761 = !DILocalVariable(name: "ecx", scope: !754, file: !721, line: 96, type: !7)
!762 = !DILocalVariable(name: "edx", scope: !754, file: !721, line: 96, type: !7)
!763 = !DILocation(line: 94, column: 51, scope: !754)
!764 = !DILocation(line: 96, column: 2, scope: !754)
!765 = !DILocation(line: 96, column: 15, scope: !754)
!766 = !DILocation(line: 96, column: 20, scope: !754)
!767 = !DILocation(line: 96, column: 25, scope: !754)
!768 = !DILocation(line: 96, column: 30, scope: !754)
!769 = !DILocation(line: 98, column: 8, scope: !754)
!770 = !DILocation(line: 98, column: 2, scope: !754)
!771 = !DILocation(line: 100, column: 9, scope: !754)
!772 = !DILocation(line: 101, column: 1, scope: !754)
!773 = !DILocation(line: 100, column: 2, scope: !754)
!774 = !DISubprogram(name: "_printk", scope: !775, file: !775, line: 153, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!775 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!776 = !DISubroutineType(types: !777)
!777 = !{!39, !76, null}
!778 = distinct !DISubprogram(name: "constant_test_bit", scope: !700, file: !700, line: 204, type: !779, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !781)
!779 = !DISubroutineType(types: !780)
!780 = !{!97, !47, !703}
!781 = !{!782, !783}
!782 = !DILocalVariable(name: "nr", arg: 1, scope: !778, file: !700, line: 204, type: !47)
!783 = !DILocalVariable(name: "addr", arg: 2, scope: !778, file: !700, line: 204, type: !703)
!784 = !DILocation(line: 204, column: 52, scope: !778)
!785 = !DILocation(line: 204, column: 86, scope: !778)
!786 = !DILocation(line: 206, column: 19, scope: !778)
!787 = !DILocation(line: 206, column: 22, scope: !778)
!788 = !DILocation(line: 206, column: 15, scope: !778)
!789 = !DILocation(line: 207, column: 4, scope: !778)
!790 = !DILocation(line: 207, column: 9, scope: !778)
!791 = !DILocation(line: 207, column: 12, scope: !778)
!792 = !DILocation(line: 206, column: 44, scope: !778)
!793 = !DILocation(line: 207, column: 37, scope: !778)
!794 = !DILocation(line: 206, column: 2, scope: !778)
!795 = distinct !DISubprogram(name: "variable_test_bit", scope: !700, file: !700, line: 224, type: !779, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !796)
!796 = !{!797, !798, !799}
!797 = !DILocalVariable(name: "nr", arg: 1, scope: !795, file: !700, line: 224, type: !47)
!798 = !DILocalVariable(name: "addr", arg: 2, scope: !795, file: !700, line: 224, type: !703)
!799 = !DILocalVariable(name: "oldbit", scope: !795, file: !700, line: 226, type: !97)
!800 = !DILocation(line: 224, column: 52, scope: !795)
!801 = !DILocation(line: 224, column: 86, scope: !795)
!802 = !DILocation(line: 226, column: 2, scope: !795)
!803 = !DILocation(line: 226, column: 7, scope: !795)
!804 = !DILocation(line: 231, column: 33, scope: !795)
!805 = !DILocation(line: 231, column: 46, scope: !795)
!806 = !DILocation(line: 228, column: 2, scope: !795)
!807 = !{i64 2148216068, i64 2148216142}
!808 = !DILocation(line: 233, column: 9, scope: !795)
!809 = !{i8 0, i8 2}
!810 = !{}
!811 = !DILocation(line: 234, column: 1, scope: !795)
!812 = !DILocation(line: 233, column: 2, scope: !795)
!813 = distinct !DISubprogram(name: "native_cpuid", scope: !721, file: !721, line: 30, type: !814, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !724, !724, !724, !724}
!816 = !{!817, !818, !819, !820}
!817 = !DILocalVariable(name: "eax", arg: 1, scope: !813, file: !721, line: 30, type: !724)
!818 = !DILocalVariable(name: "ebx", arg: 2, scope: !813, file: !721, line: 30, type: !724)
!819 = !DILocalVariable(name: "ecx", arg: 3, scope: !813, file: !721, line: 31, type: !724)
!820 = !DILocalVariable(name: "edx", arg: 4, scope: !813, file: !721, line: 31, type: !724)
!821 = !DILocation(line: 30, column: 47, scope: !813)
!822 = !DILocation(line: 30, column: 66, scope: !813)
!823 = !DILocation(line: 31, column: 19, scope: !813)
!824 = !DILocation(line: 31, column: 38, scope: !813)
!825 = !DILocation(line: 35, column: 15, scope: !813)
!826 = !DILocation(line: 36, column: 15, scope: !813)
!827 = !DILocation(line: 37, column: 15, scope: !813)
!828 = !DILocation(line: 38, column: 15, scope: !813)
!829 = !DILocation(line: 39, column: 14, scope: !813)
!830 = !DILocation(line: 39, column: 13, scope: !813)
!831 = !DILocation(line: 39, column: 26, scope: !813)
!832 = !DILocation(line: 39, column: 25, scope: !813)
!833 = !DILocation(line: 34, column: 2, scope: !813)
!834 = !{i64 954355}
!835 = !DILocation(line: 41, column: 1, scope: !813)
!836 = distinct !DISubprogram(name: "cpuid_ebx", scope: !721, file: !721, line: 103, type: !755, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !837)
!837 = !{!838, !839, !840, !841, !842}
!838 = !DILocalVariable(name: "op", arg: 1, scope: !836, file: !721, line: 103, type: !7)
!839 = !DILocalVariable(name: "eax", scope: !836, file: !721, line: 105, type: !7)
!840 = !DILocalVariable(name: "ebx", scope: !836, file: !721, line: 105, type: !7)
!841 = !DILocalVariable(name: "ecx", scope: !836, file: !721, line: 105, type: !7)
!842 = !DILocalVariable(name: "edx", scope: !836, file: !721, line: 105, type: !7)
!843 = !DILocation(line: 103, column: 51, scope: !836)
!844 = !DILocation(line: 105, column: 2, scope: !836)
!845 = !DILocation(line: 105, column: 15, scope: !836)
!846 = !DILocation(line: 105, column: 20, scope: !836)
!847 = !DILocation(line: 105, column: 25, scope: !836)
!848 = !DILocation(line: 105, column: 30, scope: !836)
!849 = !DILocation(line: 107, column: 8, scope: !836)
!850 = !DILocation(line: 107, column: 2, scope: !836)
!851 = !DILocation(line: 109, column: 9, scope: !836)
!852 = !DILocation(line: 110, column: 1, scope: !836)
!853 = !DILocation(line: 109, column: 2, scope: !836)
!854 = distinct !DISubprogram(name: "cpuid_edx", scope: !721, file: !721, line: 121, type: !755, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !855)
!855 = !{!856, !857, !858, !859, !860}
!856 = !DILocalVariable(name: "op", arg: 1, scope: !854, file: !721, line: 121, type: !7)
!857 = !DILocalVariable(name: "eax", scope: !854, file: !721, line: 123, type: !7)
!858 = !DILocalVariable(name: "ebx", scope: !854, file: !721, line: 123, type: !7)
!859 = !DILocalVariable(name: "ecx", scope: !854, file: !721, line: 123, type: !7)
!860 = !DILocalVariable(name: "edx", scope: !854, file: !721, line: 123, type: !7)
!861 = !DILocation(line: 121, column: 51, scope: !854)
!862 = !DILocation(line: 123, column: 2, scope: !854)
!863 = !DILocation(line: 123, column: 15, scope: !854)
!864 = !DILocation(line: 123, column: 20, scope: !854)
!865 = !DILocation(line: 123, column: 25, scope: !854)
!866 = !DILocation(line: 123, column: 30, scope: !854)
!867 = !DILocation(line: 125, column: 8, scope: !854)
!868 = !DILocation(line: 125, column: 2, scope: !854)
!869 = !DILocation(line: 127, column: 9, scope: !854)
!870 = !DILocation(line: 128, column: 1, scope: !854)
!871 = !DILocation(line: 127, column: 2, scope: !854)
!872 = distinct !DISubprogram(name: "cpuid_ecx", scope: !721, file: !721, line: 112, type: !755, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !873)
!873 = !{!874, !875, !876, !877, !878}
!874 = !DILocalVariable(name: "op", arg: 1, scope: !872, file: !721, line: 112, type: !7)
!875 = !DILocalVariable(name: "eax", scope: !872, file: !721, line: 114, type: !7)
!876 = !DILocalVariable(name: "ebx", scope: !872, file: !721, line: 114, type: !7)
!877 = !DILocalVariable(name: "ecx", scope: !872, file: !721, line: 114, type: !7)
!878 = !DILocalVariable(name: "edx", scope: !872, file: !721, line: 114, type: !7)
!879 = !DILocation(line: 112, column: 51, scope: !872)
!880 = !DILocation(line: 114, column: 2, scope: !872)
!881 = !DILocation(line: 114, column: 15, scope: !872)
!882 = !DILocation(line: 114, column: 20, scope: !872)
!883 = !DILocation(line: 114, column: 25, scope: !872)
!884 = !DILocation(line: 114, column: 30, scope: !872)
!885 = !DILocation(line: 116, column: 8, scope: !872)
!886 = !DILocation(line: 116, column: 2, scope: !872)
!887 = !DILocation(line: 118, column: 9, scope: !872)
!888 = !DILocation(line: 119, column: 1, scope: !872)
!889 = !DILocation(line: 118, column: 2, scope: !872)
!890 = distinct !DISubprogram(name: "hv_get_tsc_khz", scope: !3, file: !3, line: 333, type: !891, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !893)
!891 = !DISubroutineType(types: !892)
!892 = !{!41}
!893 = !{!894}
!894 = !DILocalVariable(name: "freq", scope: !890, file: !3, line: 335, type: !41)
!895 = !DILocation(line: 335, column: 2, scope: !890)
!896 = !DILocation(line: 335, column: 16, scope: !890)
!897 = !DILocation(line: 337, column: 2, scope: !890)
!898 = !DILocation(line: 339, column: 9, scope: !890)
!899 = !DILocation(line: 339, column: 14, scope: !890)
!900 = !DILocation(line: 340, column: 1, scope: !890)
!901 = !DILocation(line: 339, column: 2, scope: !890)
!902 = distinct !DISubprogram(name: "set_bit", scope: !903, file: !903, line: 26, type: !904, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !907)
!903 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!904 = !DISubroutineType(types: !905)
!905 = !{null, !47, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!907 = !{!908, !909}
!908 = !DILocalVariable(name: "nr", arg: 1, scope: !902, file: !903, line: 26, type: !47)
!909 = !DILocalVariable(name: "addr", arg: 2, scope: !902, file: !903, line: 26, type: !906)
!910 = !DILocation(line: 26, column: 42, scope: !902)
!911 = !DILocation(line: 26, column: 70, scope: !902)
!912 = !DILocation(line: 28, column: 26, scope: !902)
!913 = !DILocation(line: 28, column: 33, scope: !902)
!914 = !DILocation(line: 28, column: 31, scope: !902)
!915 = !DILocation(line: 28, column: 2, scope: !902)
!916 = !DILocation(line: 29, column: 15, scope: !902)
!917 = !DILocation(line: 29, column: 19, scope: !902)
!918 = !DILocation(line: 29, column: 2, scope: !902)
!919 = !DILocation(line: 30, column: 1, scope: !902)
!920 = distinct !DISubprogram(name: "hv_get_isolation_type", scope: !269, file: !269, line: 294, type: !921, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!921 = !DISubroutineType(types: !922)
!922 = !{!22}
!923 = !DILocation(line: 296, column: 2, scope: !920)
!924 = !DISubprogram(name: "static_key_enable", scope: !925, file: !925, line: 233, type: !926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!925 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!926 = !DISubroutineType(types: !927)
!927 = !{null, !928}
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !925, line: 85, size: 128, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !929, file: !925, line: 86, baseType: !404, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !925, line: 101, baseType: !933, size: 64, offset: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !929, file: !925, line: 101, size: 64, elements: !934)
!934 = !{!935, !936, !945}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !933, file: !925, line: 102, baseType: !41, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !933, file: !925, line: 103, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !925, line: 117, size: 128, elements: !939)
!939 = !{!940, !943, !944}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !938, file: !925, line: 118, baseType: !941, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !52, line: 20, baseType: !942)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !54, line: 26, baseType: !39)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !938, file: !925, line: 119, baseType: !941, size: 32, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !938, file: !925, line: 120, baseType: !47, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !933, file: !925, line: 104, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !925, line: 104, flags: DIFlagFwdDecl)
!948 = distinct !DISubprogram(name: "reduced_hw_init", scope: !3, file: !3, line: 401, type: !90, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!949 = !DILocation(line: 403, column: 29, scope: !948)
!950 = !DILocation(line: 404, column: 32, scope: !948)
!951 = !DILocation(line: 405, column: 1, scope: !948)
!952 = distinct !DISubprogram(name: "native_read_msr", scope: !953, file: !953, line: 114, type: !954, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !956)
!953 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!954 = !DISubroutineType(types: !955)
!955 = !{!57, !7}
!956 = !{!957, !958}
!957 = !DILocalVariable(name: "msr", arg: 1, scope: !952, file: !953, line: 114, type: !7)
!958 = !DILocalVariable(name: "val", scope: !952, file: !953, line: 116, type: !57)
!959 = !DILocation(line: 114, column: 63, scope: !952)
!960 = !DILocation(line: 116, column: 2, scope: !952)
!961 = !DILocation(line: 116, column: 21, scope: !952)
!962 = !DILocation(line: 118, column: 16, scope: !952)
!963 = !DILocation(line: 118, column: 8, scope: !952)
!964 = !DILocation(line: 118, column: 6, scope: !952)
!965 = !DILocation(line: 120, column: 6, scope: !966)
!966 = distinct !DILexicalBlock(scope: !952, file: !953, line: 120, column: 6)
!967 = !DILocation(line: 120, column: 6, scope: !952)
!968 = !DILocation(line: 121, column: 21, scope: !966)
!969 = !DILocation(line: 121, column: 26, scope: !966)
!970 = !DILocation(line: 121, column: 3, scope: !966)
!971 = !DILocation(line: 123, column: 9, scope: !952)
!972 = !DILocation(line: 124, column: 1, scope: !952)
!973 = !DILocation(line: 123, column: 2, scope: !952)
!974 = distinct !DISubprogram(name: "div_u64", scope: !975, file: !975, line: 127, type: !976, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !978)
!975 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!976 = !DISubroutineType(types: !977)
!977 = !{!55, !55, !51}
!978 = !{!979, !980, !981}
!979 = !DILocalVariable(name: "dividend", arg: 1, scope: !974, file: !975, line: 127, type: !55)
!980 = !DILocalVariable(name: "divisor", arg: 2, scope: !974, file: !975, line: 127, type: !51)
!981 = !DILocalVariable(name: "remainder", scope: !974, file: !975, line: 129, type: !51)
!982 = !DILocation(line: 127, column: 31, scope: !974)
!983 = !DILocation(line: 127, column: 45, scope: !974)
!984 = !DILocation(line: 129, column: 2, scope: !974)
!985 = !DILocation(line: 129, column: 6, scope: !974)
!986 = !DILocation(line: 130, column: 21, scope: !974)
!987 = !DILocation(line: 130, column: 31, scope: !974)
!988 = !DILocation(line: 130, column: 9, scope: !974)
!989 = !DILocation(line: 131, column: 1, scope: !974)
!990 = !DILocation(line: 130, column: 2, scope: !974)
!991 = !DILocation(line: 319, column: 40, scope: !391)
!992 = !DILocation(line: 319, column: 61, scope: !391)
!993 = !DILocation(line: 323, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !391, file: !3, line: 323, column: 6)
!995 = !DILocation(line: 323, column: 6, scope: !391)
!996 = !DILocation(line: 324, column: 3, scope: !994)
!997 = !DILocation(line: 326, column: 35, scope: !396)
!998 = !DILocation(line: 326, column: 35, scope: !399)
!999 = !DILocation(line: 326, column: 35, scope: !403)
!1000 = !{i64 2157116346}
!1001 = !DILocation(line: 326, column: 35, scope: !397)
!1002 = !DILocation(line: 326, column: 6, scope: !397)
!1003 = !DILocation(line: 326, column: 59, scope: !397)
!1004 = !DILocation(line: 326, column: 6, scope: !391)
!1005 = !DILocation(line: 327, column: 3, scope: !397)
!1006 = !DILocation(line: 329, column: 2, scope: !391)
!1007 = !DILocation(line: 330, column: 1, scope: !391)
!1008 = !DISubprogram(name: "__register_nmi_handler", scope: !30, file: !30, line: 58, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!39, !7, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!1012 = distinct !DISubprogram(name: "wrmsrl", scope: !953, file: !953, line: 260, type: !1013, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !7, !55}
!1015 = !{!1016, !1017}
!1016 = !DILocalVariable(name: "msr", arg: 1, scope: !1012, file: !953, line: 260, type: !7)
!1017 = !DILocalVariable(name: "val", arg: 2, scope: !1012, file: !953, line: 260, type: !55)
!1018 = !DILocation(line: 260, column: 40, scope: !1012)
!1019 = !DILocation(line: 260, column: 49, scope: !1012)
!1020 = !DILocation(line: 262, column: 19, scope: !1012)
!1021 = !DILocation(line: 262, column: 30, scope: !1012)
!1022 = !DILocation(line: 262, column: 34, scope: !1012)
!1023 = !DILocation(line: 262, column: 24, scope: !1012)
!1024 = !DILocation(line: 262, column: 58, scope: !1012)
!1025 = !DILocation(line: 262, column: 62, scope: !1012)
!1026 = !DILocation(line: 262, column: 52, scope: !1012)
!1027 = !DILocation(line: 262, column: 2, scope: !1012)
!1028 = !DILocation(line: 263, column: 1, scope: !1012)
!1029 = distinct !DISubprogram(name: "efi_enabled", scope: !1030, file: !1030, line: 880, type: !1031, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1033)
!1030 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!97, !39}
!1033 = !{!1034}
!1034 = !DILocalVariable(name: "feature", arg: 1, scope: !1029, file: !1030, line: 880, type: !39)
!1035 = !DILocation(line: 880, column: 36, scope: !1029)
!1036 = !DILocation(line: 882, column: 9, scope: !1029)
!1037 = !DILocation(line: 882, column: 39, scope: !1029)
!1038 = !DILocation(line: 882, column: 2, scope: !1029)
!1039 = distinct !DISubprogram(name: "hv_get_nmi_reason", scope: !1040, file: !1040, line: 37, type: !1041, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1040 = !DIFile(filename: "./arch/x86/include/asm/mshyperv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "88b2c79600d8e9810753cd308e534413")
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!124}
!1043 = !DILocation(line: 39, column: 2, scope: !1039)
!1044 = !DISubprogram(name: "mark_tsc_unstable", scope: !1045, file: !1045, line: 35, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1045 = !DIFile(filename: "./arch/x86/include/asm/tsc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c263a7d672afe42de3ea9a5e4b53aa46")
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !1048}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!1049 = distinct !DISubprogram(name: "hardlockup_detector_disable", scope: !1050, file: !1050, line: 89, type: !90, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1050 = !DIFile(filename: "./include/linux/nmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5da5752bbe70ab061cfd0891798ac7e8")
!1051 = !DILocation(line: 89, column: 55, scope: !1049)
!1052 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1053, file: !1053, line: 80, type: !1054, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1060)
!1053 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !1056, !1059}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1058)
!1058 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 61, baseType: !751)
!1060 = !{!1061, !1062}
!1061 = !DILocalVariable(name: "v", arg: 1, scope: !1052, file: !1053, line: 80, type: !1056)
!1062 = !DILocalVariable(name: "size", arg: 2, scope: !1052, file: !1053, line: 80, type: !1059)
!1063 = !DILocation(line: 80, column: 74, scope: !1052)
!1064 = !DILocation(line: 80, column: 84, scope: !1052)
!1065 = !DILocation(line: 82, column: 20, scope: !1052)
!1066 = !DILocation(line: 82, column: 23, scope: !1052)
!1067 = !DILocation(line: 82, column: 2, scope: !1052)
!1068 = !DILocation(line: 83, column: 2, scope: !1052)
!1069 = !DILocation(line: 84, column: 1, scope: !1052)
!1070 = distinct !DISubprogram(name: "arch_set_bit", scope: !700, file: !700, line: 52, type: !904, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1071)
!1071 = !{!1072, !1073}
!1072 = !DILocalVariable(name: "nr", arg: 1, scope: !1070, file: !700, line: 52, type: !47)
!1073 = !DILocalVariable(name: "addr", arg: 2, scope: !1070, file: !700, line: 52, type: !906)
!1074 = !DILocation(line: 52, column: 19, scope: !1070)
!1075 = !DILocation(line: 52, column: 47, scope: !1070)
!1076 = !DILocation(line: 54, column: 27, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1070, file: !700, line: 54, column: 6)
!1078 = !DILocation(line: 54, column: 6, scope: !1077)
!1079 = !DILocation(line: 54, column: 6, scope: !1070)
!1080 = !DILocation(line: 56, column: 6, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !700, line: 54, column: 32)
!1082 = !DILocation(line: 57, column: 12, scope: !1081)
!1083 = !DILocation(line: 55, column: 3, scope: !1081)
!1084 = !{i64 2148202456, i64 2148202495, i64 2148202516, i64 2148202553, i64 2148202576, i64 2148202446}
!1085 = !DILocation(line: 59, column: 2, scope: !1081)
!1086 = !DILocation(line: 61, column: 8, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1077, file: !700, line: 59, column: 9)
!1088 = !DILocation(line: 61, column: 32, scope: !1087)
!1089 = !DILocation(line: 60, column: 3, scope: !1087)
!1090 = !{i64 2148202741, i64 2148202780, i64 2148202801, i64 2148202838, i64 2148202861, i64 2148202731}
!1091 = !DILocation(line: 63, column: 1, scope: !1070)
!1092 = distinct !DISubprogram(name: "kasan_check_write", scope: !1093, file: !1093, line: 44, type: !1094, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1096)
!1093 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!97, !1056, !7}
!1096 = !{!1097, !1098}
!1097 = !DILocalVariable(name: "p", arg: 1, scope: !1092, file: !1093, line: 44, type: !1056)
!1098 = !DILocalVariable(name: "size", arg: 2, scope: !1092, file: !1093, line: 44, type: !7)
!1099 = !DILocation(line: 44, column: 59, scope: !1092)
!1100 = !DILocation(line: 44, column: 75, scope: !1092)
!1101 = !DILocation(line: 46, column: 2, scope: !1092)
!1102 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1103, file: !1103, line: 229, type: !1104, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1106)
!1103 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !1056, !1059, !39}
!1106 = !{!1107, !1108, !1109}
!1107 = !DILocalVariable(name: "ptr", arg: 1, scope: !1102, file: !1103, line: 229, type: !1056)
!1108 = !DILocalVariable(name: "size", arg: 2, scope: !1102, file: !1103, line: 229, type: !1059)
!1109 = !DILocalVariable(name: "type", arg: 3, scope: !1102, file: !1103, line: 230, type: !39)
!1110 = !DILocation(line: 229, column: 60, scope: !1102)
!1111 = !DILocation(line: 229, column: 72, scope: !1102)
!1112 = !DILocation(line: 230, column: 15, scope: !1102)
!1113 = !DILocation(line: 230, column: 23, scope: !1102)
!1114 = distinct !DISubprogram(name: "__rdmsr", scope: !953, file: !953, line: 80, type: !954, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1115)
!1115 = !{!1116, !1117, !1118}
!1116 = !DILocalVariable(name: "msr", arg: 1, scope: !1114, file: !953, line: 80, type: !7)
!1117 = !DILocalVariable(name: "low", scope: !1114, file: !953, line: 82, type: !41)
!1118 = !DILocalVariable(name: "high", scope: !1114, file: !953, line: 82, type: !41)
!1119 = !DILocation(line: 80, column: 64, scope: !1114)
!1120 = !DILocation(line: 82, column: 2, scope: !1114)
!1121 = !DILocation(line: 87, column: 45, scope: !1114)
!1122 = !DILocation(line: 84, column: 2, scope: !1114)
!1123 = !{i64 983742, i64 983763, i64 2149199975, i64 2149200019, i64 2149200042, i64 2149200075, i64 2149200106, i64 2149200145}
!1124 = !DILocation(line: 89, column: 9, scope: !1114)
!1125 = !DILocation(line: 90, column: 1, scope: !1114)
!1126 = !DILocation(line: 89, column: 2, scope: !1114)
!1127 = distinct !DISubprogram(name: "static_key_false", scope: !925, file: !925, line: 205, type: !1128, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1130)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!97, !928}
!1130 = !{!1131}
!1131 = !DILocalVariable(name: "key", arg: 1, scope: !1127, file: !925, line: 205, type: !928)
!1132 = !DILocation(line: 205, column: 65, scope: !1127)
!1133 = !DILocation(line: 207, column: 28, scope: !1127)
!1134 = !DILocation(line: 207, column: 9, scope: !1127)
!1135 = !DILocation(line: 207, column: 2, scope: !1127)
!1136 = !DISubprogram(name: "do_trace_read_msr", scope: !953, file: !953, line: 65, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !7, !55, !39}
!1139 = distinct !DISubprogram(name: "arch_static_branch", scope: !1140, file: !1140, line: 25, type: !1141, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1143)
!1140 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!97, !928, !97}
!1143 = !{!1144, !1145, !1146}
!1144 = !DILocalVariable(name: "key", arg: 1, scope: !1139, file: !1140, line: 25, type: !928)
!1145 = !DILocalVariable(name: "branch", arg: 2, scope: !1139, file: !1140, line: 25, type: !97)
!1146 = !DILabel(scope: !1139, name: "l_yes", file: !1140, line: 33)
!1147 = !DILocation(line: 25, column: 67, scope: !1139)
!1148 = !DILocation(line: 25, column: 77, scope: !1139)
!1149 = !DILocation(line: 30, column: 13, scope: !1139)
!1150 = !DILocation(line: 30, column: 28, scope: !1139)
!1151 = !DILocation(line: 30, column: 26, scope: !1139)
!1152 = !DILocation(line: 27, column: 2, scope: !1139)
!1153 = !{i64 500113, i64 500157, i64 2147987132, i64 2147987153, i64 2147987179, i64 2147987212, i64 2147987246, i64 2147987270}
!1154 = !DILocation(line: 32, column: 2, scope: !1139)
!1155 = !DILocation(line: 33, column: 1, scope: !1139)
!1156 = !DILocation(line: 34, column: 2, scope: !1139)
!1157 = !DILocation(line: 35, column: 1, scope: !1139)
!1158 = distinct !DISubprogram(name: "div_u64_rem", scope: !975, file: !975, line: 26, type: !1159, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1162)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!55, !55, !51, !1161}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!1162 = !{!1163, !1164, !1165}
!1163 = !DILocalVariable(name: "dividend", arg: 1, scope: !1158, file: !975, line: 26, type: !55)
!1164 = !DILocalVariable(name: "divisor", arg: 2, scope: !1158, file: !975, line: 26, type: !51)
!1165 = !DILocalVariable(name: "remainder", arg: 3, scope: !1158, file: !975, line: 26, type: !1161)
!1166 = !DILocation(line: 26, column: 35, scope: !1158)
!1167 = !DILocation(line: 26, column: 49, scope: !1158)
!1168 = !DILocation(line: 26, column: 63, scope: !1158)
!1169 = !DILocation(line: 28, column: 15, scope: !1158)
!1170 = !DILocation(line: 28, column: 26, scope: !1158)
!1171 = !DILocation(line: 28, column: 24, scope: !1158)
!1172 = !DILocation(line: 28, column: 3, scope: !1158)
!1173 = !DILocation(line: 28, column: 13, scope: !1158)
!1174 = !DILocation(line: 29, column: 9, scope: !1158)
!1175 = !DILocation(line: 29, column: 20, scope: !1158)
!1176 = !DILocation(line: 29, column: 18, scope: !1158)
!1177 = !DILocation(line: 29, column: 2, scope: !1158)
!1178 = distinct !DISubprogram(name: "atomic_cmpxchg", scope: !1179, file: !1179, line: 1191, type: !1180, scopeLine: 1192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1183)
!1179 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!39, !1182, !39, !39}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1183 = !{!1184, !1185, !1186}
!1184 = !DILocalVariable(name: "v", arg: 1, scope: !1178, file: !1179, line: 1191, type: !1182)
!1185 = !DILocalVariable(name: "old", arg: 2, scope: !1178, file: !1179, line: 1191, type: !39)
!1186 = !DILocalVariable(name: "new", arg: 3, scope: !1178, file: !1179, line: 1191, type: !39)
!1187 = !DILocation(line: 1191, column: 26, scope: !1178)
!1188 = !DILocation(line: 1191, column: 33, scope: !1178)
!1189 = !DILocation(line: 1191, column: 42, scope: !1178)
!1190 = !DILocation(line: 1193, column: 2, scope: !1178)
!1191 = !DILocation(line: 1193, column: 2, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1178, file: !1179, line: 1193, column: 2)
!1193 = !DILocation(line: 1194, column: 31, scope: !1178)
!1194 = !DILocation(line: 1194, column: 2, scope: !1178)
!1195 = !DILocation(line: 1195, column: 28, scope: !1178)
!1196 = !DILocation(line: 1195, column: 31, scope: !1178)
!1197 = !DILocation(line: 1195, column: 36, scope: !1178)
!1198 = !DILocation(line: 1195, column: 9, scope: !1178)
!1199 = !DILocation(line: 1195, column: 2, scope: !1178)
!1200 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1053, file: !1053, line: 94, type: !1054, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1201)
!1201 = !{!1202, !1203}
!1202 = !DILocalVariable(name: "v", arg: 1, scope: !1200, file: !1053, line: 94, type: !1056)
!1203 = !DILocalVariable(name: "size", arg: 2, scope: !1200, file: !1053, line: 94, type: !1059)
!1204 = !DILocation(line: 94, column: 79, scope: !1200)
!1205 = !DILocation(line: 94, column: 89, scope: !1200)
!1206 = !DILocation(line: 96, column: 20, scope: !1200)
!1207 = !DILocation(line: 96, column: 23, scope: !1200)
!1208 = !DILocation(line: 96, column: 2, scope: !1200)
!1209 = !DILocation(line: 97, column: 2, scope: !1200)
!1210 = !DILocation(line: 98, column: 1, scope: !1200)
!1211 = distinct !DISubprogram(name: "raw_atomic_cmpxchg", scope: !1212, file: !1212, line: 2001, type: !1180, scopeLine: 2002, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1213)
!1212 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1213 = !{!1214, !1215, !1216}
!1214 = !DILocalVariable(name: "v", arg: 1, scope: !1211, file: !1212, line: 2001, type: !1182)
!1215 = !DILocalVariable(name: "old", arg: 2, scope: !1211, file: !1212, line: 2001, type: !39)
!1216 = !DILocalVariable(name: "new", arg: 3, scope: !1211, file: !1212, line: 2001, type: !39)
!1217 = !DILocation(line: 2001, column: 30, scope: !1211)
!1218 = !DILocation(line: 2001, column: 37, scope: !1211)
!1219 = !DILocation(line: 2001, column: 46, scope: !1211)
!1220 = !DILocation(line: 2004, column: 29, scope: !1211)
!1221 = !DILocation(line: 2004, column: 32, scope: !1211)
!1222 = !DILocation(line: 2004, column: 37, scope: !1211)
!1223 = !DILocation(line: 2004, column: 9, scope: !1211)
!1224 = !DILocation(line: 2004, column: 2, scope: !1211)
!1225 = distinct !DISubprogram(name: "arch_atomic_cmpxchg", scope: !1226, file: !1226, line: 107, type: !1180, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1227)
!1226 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!1227 = !{!1228, !1229, !1230, !1231, !1233, !1234, !1235}
!1228 = !DILocalVariable(name: "v", arg: 1, scope: !1225, file: !1226, line: 107, type: !1182)
!1229 = !DILocalVariable(name: "old", arg: 2, scope: !1225, file: !1226, line: 107, type: !39)
!1230 = !DILocalVariable(name: "new", arg: 3, scope: !1225, file: !1226, line: 107, type: !39)
!1231 = !DILocalVariable(name: "__ret", scope: !1232, file: !1226, line: 109, type: !39)
!1232 = distinct !DILexicalBlock(scope: !1225, file: !1226, line: 109, column: 9)
!1233 = !DILocalVariable(name: "__old", scope: !1232, file: !1226, line: 109, type: !39)
!1234 = !DILocalVariable(name: "__new", scope: !1232, file: !1226, line: 109, type: !39)
!1235 = !DILocalVariable(name: "__ptr", scope: !1232, file: !1226, line: 109, type: !49)
!1236 = !DILocation(line: 107, column: 58, scope: !1225)
!1237 = !DILocation(line: 107, column: 65, scope: !1225)
!1238 = !DILocation(line: 107, column: 74, scope: !1225)
!1239 = !DILocation(line: 109, column: 9, scope: !1232)
!1240 = !{i64 2148667006, i64 2148667045, i64 2148667066, i64 2148667103, i64 2148667126, i64 2148667135}
!1241 = !DILocation(line: 109, column: 9, scope: !1225)
!1242 = !DILocation(line: 109, column: 2, scope: !1225)
!1243 = distinct !DISubprogram(name: "native_write_msr", scope: !953, file: !953, line: 143, type: !1244, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1246)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !7, !51, !51}
!1246 = !{!1247, !1248, !1249}
!1247 = !DILocalVariable(name: "msr", arg: 1, scope: !1243, file: !953, line: 143, type: !7)
!1248 = !DILocalVariable(name: "low", arg: 2, scope: !1243, file: !953, line: 143, type: !51)
!1249 = !DILocalVariable(name: "high", arg: 3, scope: !1243, file: !953, line: 143, type: !51)
!1250 = !DILocation(line: 143, column: 31, scope: !1243)
!1251 = !DILocation(line: 143, column: 40, scope: !1243)
!1252 = !DILocation(line: 143, column: 49, scope: !1243)
!1253 = !DILocation(line: 145, column: 10, scope: !1243)
!1254 = !DILocation(line: 145, column: 15, scope: !1243)
!1255 = !DILocation(line: 145, column: 20, scope: !1243)
!1256 = !DILocation(line: 145, column: 2, scope: !1243)
!1257 = !DILocation(line: 147, column: 6, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1243, file: !953, line: 147, column: 6)
!1259 = !DILocation(line: 147, column: 6, scope: !1243)
!1260 = !DILocation(line: 148, column: 22, scope: !1258)
!1261 = !DILocation(line: 148, column: 33, scope: !1258)
!1262 = !DILocation(line: 148, column: 28, scope: !1258)
!1263 = !DILocation(line: 148, column: 38, scope: !1258)
!1264 = !DILocation(line: 148, column: 46, scope: !1258)
!1265 = !DILocation(line: 148, column: 44, scope: !1258)
!1266 = !DILocation(line: 148, column: 3, scope: !1258)
!1267 = !DILocation(line: 149, column: 1, scope: !1243)
!1268 = distinct !DISubprogram(name: "__wrmsr", scope: !953, file: !953, line: 92, type: !1244, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1269)
!1269 = !{!1270, !1271, !1272}
!1270 = !DILocalVariable(name: "msr", arg: 1, scope: !1268, file: !953, line: 92, type: !7)
!1271 = !DILocalVariable(name: "low", arg: 2, scope: !1268, file: !953, line: 92, type: !51)
!1272 = !DILocalVariable(name: "high", arg: 3, scope: !1268, file: !953, line: 92, type: !51)
!1273 = !DILocation(line: 92, column: 50, scope: !1268)
!1274 = !DILocation(line: 92, column: 59, scope: !1268)
!1275 = !DILocation(line: 92, column: 68, scope: !1268)
!1276 = !DILocation(line: 97, column: 17, scope: !1268)
!1277 = !DILocation(line: 97, column: 27, scope: !1268)
!1278 = !DILocation(line: 97, column: 38, scope: !1268)
!1279 = !DILocation(line: 94, column: 2, scope: !1268)
!1280 = !{i64 983998, i64 984019, i64 2149200474, i64 2149200518, i64 2149200541, i64 2149200574, i64 2149200605, i64 2149200644}
!1281 = !DILocation(line: 98, column: 1, scope: !1268)
!1282 = !DISubprogram(name: "do_trace_write_msr", scope: !953, file: !953, line: 64, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1283 = distinct !DISubprogram(name: "const_test_bit", scope: !1284, file: !1284, line: 166, type: !701, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1285)
!1284 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!1285 = !{!1286, !1287, !1288, !1289, !1290}
!1286 = !DILocalVariable(name: "nr", arg: 1, scope: !1283, file: !1284, line: 166, type: !41)
!1287 = !DILocalVariable(name: "addr", arg: 2, scope: !1283, file: !1284, line: 166, type: !703)
!1288 = !DILocalVariable(name: "p", scope: !1283, file: !1284, line: 168, type: !60)
!1289 = !DILocalVariable(name: "mask", scope: !1283, file: !1284, line: 169, type: !41)
!1290 = !DILocalVariable(name: "val", scope: !1283, file: !1284, line: 170, type: !41)
!1291 = !DILocation(line: 166, column: 30, scope: !1283)
!1292 = !DILocation(line: 166, column: 64, scope: !1283)
!1293 = !DILocation(line: 168, column: 2, scope: !1283)
!1294 = !DILocation(line: 168, column: 23, scope: !1283)
!1295 = !DILocation(line: 168, column: 50, scope: !1283)
!1296 = !DILocation(line: 168, column: 57, scope: !1283)
!1297 = !DILocation(line: 168, column: 55, scope: !1283)
!1298 = !DILocation(line: 169, column: 2, scope: !1283)
!1299 = !DILocation(line: 169, column: 16, scope: !1283)
!1300 = !DILocation(line: 169, column: 23, scope: !1283)
!1301 = !DILocation(line: 170, column: 2, scope: !1283)
!1302 = !DILocation(line: 170, column: 16, scope: !1283)
!1303 = !DILocation(line: 170, column: 23, scope: !1283)
!1304 = !DILocation(line: 170, column: 22, scope: !1283)
!1305 = !DILocation(line: 172, column: 12, scope: !1283)
!1306 = !DILocation(line: 172, column: 18, scope: !1283)
!1307 = !DILocation(line: 172, column: 16, scope: !1283)
!1308 = !DILocation(line: 172, column: 10, scope: !1283)
!1309 = !DILocation(line: 172, column: 9, scope: !1283)
!1310 = !DILocation(line: 173, column: 1, scope: !1283)
!1311 = !DILocation(line: 172, column: 2, scope: !1283)
!1312 = distinct !DISubprogram(name: "_test_bit", scope: !1313, file: !1313, line: 139, type: !701, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1314)
!1313 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!1314 = !{!1315, !1316}
!1315 = !DILocalVariable(name: "nr", arg: 1, scope: !1312, file: !1313, line: 139, type: !41)
!1316 = !DILocalVariable(name: "addr", arg: 2, scope: !1312, file: !1313, line: 139, type: !703)
!1317 = !DILocation(line: 139, column: 25, scope: !1312)
!1318 = !DILocation(line: 139, column: 59, scope: !1312)
!1319 = !DILocation(line: 141, column: 25, scope: !1312)
!1320 = !DILocation(line: 141, column: 32, scope: !1312)
!1321 = !DILocation(line: 141, column: 30, scope: !1312)
!1322 = !DILocation(line: 141, column: 2, scope: !1312)
!1323 = !DILocation(line: 142, column: 23, scope: !1312)
!1324 = !DILocation(line: 142, column: 27, scope: !1312)
!1325 = !DILocation(line: 142, column: 9, scope: !1312)
!1326 = !DILocation(line: 142, column: 2, scope: !1312)
!1327 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1053, file: !1053, line: 66, type: !1054, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1328)
!1328 = !{!1329, !1330}
!1329 = !DILocalVariable(name: "v", arg: 1, scope: !1327, file: !1053, line: 66, type: !1056)
!1330 = !DILocalVariable(name: "size", arg: 2, scope: !1327, file: !1053, line: 66, type: !1059)
!1331 = !DILocation(line: 66, column: 73, scope: !1327)
!1332 = !DILocation(line: 66, column: 83, scope: !1327)
!1333 = !DILocation(line: 68, column: 19, scope: !1327)
!1334 = !DILocation(line: 68, column: 22, scope: !1327)
!1335 = !DILocation(line: 68, column: 2, scope: !1327)
!1336 = !DILocation(line: 69, column: 2, scope: !1327)
!1337 = !DILocation(line: 70, column: 1, scope: !1327)
!1338 = distinct !DISubprogram(name: "kasan_check_read", scope: !1093, file: !1093, line: 40, type: !1094, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1339)
!1339 = !{!1340, !1341}
!1340 = !DILocalVariable(name: "p", arg: 1, scope: !1338, file: !1093, line: 40, type: !1056)
!1341 = !DILocalVariable(name: "size", arg: 2, scope: !1338, file: !1093, line: 40, type: !7)
!1342 = !DILocation(line: 40, column: 58, scope: !1338)
!1343 = !DILocation(line: 40, column: 74, scope: !1338)
!1344 = !DILocation(line: 42, column: 2, scope: !1338)
