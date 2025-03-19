; ModuleID = 'drivers/acpi/pci_link.c'
source_filename = "drivers/acpi/pci_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.acpi_scan_handler = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, ptr, ptr, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.acpi_device_id = type { [16 x i8], i64, i32, i32 }
%struct.acpi_pci_link = type { %struct.list_head, ptr, %struct.acpi_pci_link_irq, i32 }
%struct.acpi_pci_link_irq = type { i32, i8, i8, i8, i8, [16 x i32], i8 }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.13, i32, i32, %struct.list_head }
%struct.anon.13 = type { i8 }
%struct.acpi_device_wakeup = type { ptr, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, ptr, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { ptr, ptr }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, ptr }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_dir = type { ptr }
%struct.acpi_device_data = type { ptr, %struct.list_head, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.acpi_buffer = type { i64, ptr }
%struct.anon.15 = type { %struct.acpi_resource, %struct.acpi_resource }
%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor, [58 x i8] }
%struct.acpi_resource_vendor = type { i16, [0 x i8] }
%struct.acpi_resource_irq = type { i8, i8, i8, i8, i8, i8, %union.anon.16 }
%union.anon.16 = type { i8 }
%struct.anon.17 = type { %struct.anon.18, [0 x i8] }
%struct.anon.18 = type {}
%struct.acpi_resource_extended_irq = type <{ i8, i8, i8, i8, i8, i8, %struct.acpi_resource_source, %union.anon.22 }>
%struct.acpi_resource_source = type <{ i8, i16, ptr }>
%union.anon.22 = type { i32 }
%struct.anon.23 = type { %struct.anon.24, [0 x i32] }
%struct.anon.24 = type {}

@acpi_link_list = internal global %struct.list_head { ptr @acpi_link_list, ptr @acpi_link_list }, align 8, !dbg !0
@acpi_isa_irq_penalty = internal global [16 x i32] [i32 16777216, i32 16777216, i32 16777216, i32 65536, i32 65536, i32 65536, i32 65536, i32 65536, i32 65536, i32 0, i32 0, i32 0, i32 1048576, i32 1048576, i32 1048576, i32 1048576], align 16, !dbg !4919
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1, !dbg !4869
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid link device\0A\00", align 1, !dbg !4872
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid link context\0A\00", align 1, !dbg !4877
@.str.3 = private unnamed_addr constant [18 x i8] c"Invalid index %d\0A\00", align 1, !dbg !4882
@acpi_link_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @acpi_link_lock, i64 16), ptr getelementptr (i8, ptr @acpi_link_lock, i64 16) } }, align 8, !dbg !4922
@.str.4 = private unnamed_addr constant [23 x i8] c"Link active IRQ is 0!\0A\00", align 1, !dbg !4887
@.str.5 = private unnamed_addr constant [24 x i8] c"Link isn't initialized\0A\00", align 1, !dbg !4892
@.str.6 = private unnamed_addr constant [5 x i8] c"_DIS\00", align 1, !dbg !4897
@sci_irq = internal global i32 -1, align 4, !dbg !4976
@sci_penalty = internal global i32 0, align 4, !dbg !4917
@__setup_str_acpi_irq_isa = internal constant [14 x i8] c"acpi_irq_isa=\00", section ".init.rodata", align 1, !dbg !4978
@__setup_acpi_irq_isa = internal global %struct.obs_kernel_param { ptr @__setup_str_acpi_irq_isa, ptr @acpi_irq_isa, i32 0 }, section ".init.setup", align 8, !dbg !4900
@__setup_str_acpi_irq_pci = internal constant [14 x i8] c"acpi_irq_pci=\00", section ".init.rodata", align 1, !dbg !4983
@__setup_acpi_irq_pci = internal global %struct.obs_kernel_param { ptr @__setup_str_acpi_irq_pci, ptr @acpi_irq_pci, i32 0 }, section ".init.setup", align 8, !dbg !4911
@__setup_str_acpi_irq_nobalance_set = internal constant [19 x i8] c"acpi_irq_nobalance\00", section ".init.rodata", align 1, !dbg !4985
@__setup_acpi_irq_nobalance_set = internal global %struct.obs_kernel_param { ptr @__setup_str_acpi_irq_nobalance_set, ptr @acpi_irq_nobalance_set, i32 0 }, section ".init.setup", align 8, !dbg !4913
@__setup_str_acpi_irq_balance_set = internal constant [17 x i8] c"acpi_irq_balance\00", section ".init.rodata", align 1, !dbg !4988
@__setup_acpi_irq_balance_set = internal global %struct.obs_kernel_param { ptr @__setup_str_acpi_irq_balance_set, ptr @acpi_irq_balance_set, i32 0 }, section ".init.setup", align 8, !dbg !4915
@acpi_noirq = external dso_local global i32, align 4
@acpi_irq_balance = internal global i32 -1, align 4, !dbg !4991
@acpi_irq_model = external dso_local global i32, align 4
@irqrouter_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr null, ptr @irqrouter_resume, ptr null }, align 8, !dbg !4993
@pci_link_handler = internal global %struct.acpi_scan_handler { ptr @link_device_ids, %struct.list_head zeroinitializer, ptr null, ptr @acpi_pci_link_add, ptr @acpi_pci_link_remove, ptr null, ptr null, %struct.acpi_hotplug_profile zeroinitializer }, align 8, !dbg !5002
@acpi_strict = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"\014\00", align 1, !dbg !4924
@.str.8 = private unnamed_addr constant [27 x i8] c"_CRS %d not found in _PRS\0A\00", align 1, !dbg !4926
@.str.9 = private unnamed_addr constant [46 x i8] c"No IRQ available. Try pci=noacpi or acpi=off\0A\00", align 1, !dbg !4931
@.str.10 = private unnamed_addr constant [47 x i8] c"Unable to set IRQ. Try pci=noacpi or acpi=off\0A\00", align 1, !dbg !4936
@.str.11 = private unnamed_addr constant [3 x i8] c"\016\00", align 1, !dbg !4941
@.str.12 = private unnamed_addr constant [19 x i8] c"Enabled at IRQ %d\0A\00", align 1, !dbg !4943
@.str.13 = private unnamed_addr constant [26 x i8] c"Invalid resource type %d\0A\00", align 1, !dbg !4948
@.str.14 = private unnamed_addr constant [5 x i8] c"_SRS\00", align 1, !dbg !4953
@.str.15 = private unnamed_addr constant [23 x i8] c"Unable to read status\0A\00", align 1, !dbg !4955
@.str.16 = private unnamed_addr constant [35 x i8] c"Disabled and referenced, BIOS bug\0A\00", align 1, !dbg !4957
@.str.17 = private unnamed_addr constant [36 x i8] c"BIOS reported IRQ %d, using IRQ %d\0A\00", align 1, !dbg !4962
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.18 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4967
@.str.19 = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1, !dbg !4969
@.str.20 = private unnamed_addr constant [17 x i8] c"_CRS returned 0\0A\00", align 1, !dbg !4971
@link_device_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [16 x i8] c"PNP0C0F\00\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !5004
@.str.21 = private unnamed_addr constant [19 x i8] c"PCI Interrupt Link\00", align 1, !dbg !5007
@.str.22 = private unnamed_addr constant [16 x i8] c"pci_irq_routing\00", align 1, !dbg !5009
@.str.23 = private unnamed_addr constant [54 x i8] c"\016ACPI: PCI: Interrupt link %s configured for IRQ %d\0A\00", align 1, !dbg !5011
@.str.24 = private unnamed_addr constant [41 x i8] c"\016ACPI: PCI: Interrupt link %s disabled\0A\00", align 1, !dbg !5016
@.str.25 = private unnamed_addr constant [5 x i8] c"_PRS\00", align 1, !dbg !5021
@llvm.compiler.used = appending global [4 x ptr] [ptr @__setup_acpi_irq_isa, ptr @__setup_acpi_irq_pci, ptr @__setup_acpi_irq_nobalance_set, ptr @__setup_acpi_irq_balance_set], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_irq_penalty_init() #0 section ".init.text" align 16 !dbg !5032 {
entry:
  %link = alloca ptr, align 8
  %i = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %penalty = alloca i32, align 4
  %__mptr35 = alloca ptr, align 8
  %tmp37 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #16, !dbg !5046
  call void @llvm.dbg.declare(metadata ptr %link, metadata !5034, metadata !DIExpression()), !dbg !5047
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5048
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5035, metadata !DIExpression()), !dbg !5049
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5050
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5036, metadata !DIExpression()), !dbg !5050
  %0 = load ptr, ptr @acpi_link_list, align 8, !dbg !5050
  store ptr %0, ptr %__mptr, align 8, !dbg !5050
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5050
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5050
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5050
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5051
  %2 = load ptr, ptr %tmp, align 8, !dbg !5050
  store ptr %2, ptr %link, align 8, !dbg !5051
  br label %for.cond, !dbg !5051

for.cond:                                         ; preds = %for.inc34, %entry
  %3 = load ptr, ptr %link, align 8, !dbg !5052
  %list = getelementptr inbounds %struct.acpi_pci_link, ptr %3, i32 0, i32 0, !dbg !5052
  %cmp = icmp eq ptr %list, @acpi_link_list, !dbg !5052
  %lnot = xor i1 %cmp, true, !dbg !5052
  br i1 %lnot, label %for.body, label %for.end39, !dbg !5051

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %link, align 8, !dbg !5053
  %irq = getelementptr inbounds %struct.acpi_pci_link, ptr %4, i32 0, i32 2, !dbg !5054
  %possible_count = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq, i32 0, i32 4, !dbg !5055
  %5 = load i8, ptr %possible_count, align 1, !dbg !5055
  %tobool = icmp ne i8 %5, 0, !dbg !5053
  br i1 %tobool, label %if.then, label %if.else, !dbg !5056

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %penalty) #16, !dbg !5057
  call void @llvm.dbg.declare(metadata ptr %penalty, metadata !5039, metadata !DIExpression()), !dbg !5058
  %6 = load ptr, ptr %link, align 8, !dbg !5059
  %irq1 = getelementptr inbounds %struct.acpi_pci_link, ptr %6, i32 0, i32 2, !dbg !5060
  %possible_count2 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq1, i32 0, i32 4, !dbg !5061
  %7 = load i8, ptr %possible_count2, align 1, !dbg !5061
  %conv = zext i8 %7 to i32, !dbg !5059
  %div = sdiv i32 256, %conv, !dbg !5062
  store i32 %div, ptr %penalty, align 4, !dbg !5058
  store i32 0, ptr %i, align 4, !dbg !5063
  br label %for.cond3, !dbg !5065

for.cond3:                                        ; preds = %for.inc, %if.then
  %8 = load i32, ptr %i, align 4, !dbg !5066
  %9 = load ptr, ptr %link, align 8, !dbg !5068
  %irq4 = getelementptr inbounds %struct.acpi_pci_link, ptr %9, i32 0, i32 2, !dbg !5069
  %possible_count5 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq4, i32 0, i32 4, !dbg !5070
  %10 = load i8, ptr %possible_count5, align 1, !dbg !5070
  %conv6 = zext i8 %10 to i32, !dbg !5068
  %cmp7 = icmp slt i32 %8, %conv6, !dbg !5071
  br i1 %cmp7, label %for.body9, label %for.end, !dbg !5072

for.body9:                                        ; preds = %for.cond3
  %11 = load ptr, ptr %link, align 8, !dbg !5073
  %irq10 = getelementptr inbounds %struct.acpi_pci_link, ptr %11, i32 0, i32 2, !dbg !5076
  %possible = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq10, i32 0, i32 5, !dbg !5077
  %12 = load i32, ptr %i, align 4, !dbg !5078
  %idxprom = sext i32 %12 to i64, !dbg !5073
  %arrayidx = getelementptr [16 x i32], ptr %possible, i64 0, i64 %idxprom, !dbg !5073
  %13 = load i32, ptr %arrayidx, align 4, !dbg !5073
  %cmp11 = icmp ult i32 %13, 16, !dbg !5079
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !5080

if.then13:                                        ; preds = %for.body9
  %14 = load i32, ptr %penalty, align 4, !dbg !5081
  %15 = load ptr, ptr %link, align 8, !dbg !5082
  %irq14 = getelementptr inbounds %struct.acpi_pci_link, ptr %15, i32 0, i32 2, !dbg !5083
  %possible15 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq14, i32 0, i32 5, !dbg !5084
  %16 = load i32, ptr %i, align 4, !dbg !5085
  %idxprom16 = sext i32 %16 to i64, !dbg !5082
  %arrayidx17 = getelementptr [16 x i32], ptr %possible15, i64 0, i64 %idxprom16, !dbg !5082
  %17 = load i32, ptr %arrayidx17, align 4, !dbg !5082
  %idxprom18 = zext i32 %17 to i64, !dbg !5086
  %arrayidx19 = getelementptr [16 x i32], ptr @acpi_isa_irq_penalty, i64 0, i64 %idxprom18, !dbg !5086
  %18 = load i32, ptr %arrayidx19, align 4, !dbg !5087
  %add = add i32 %18, %14, !dbg !5087
  store i32 %add, ptr %arrayidx19, align 4, !dbg !5087
  br label %if.end, !dbg !5086

if.end:                                           ; preds = %if.then13, %for.body9
  br label %for.inc, !dbg !5088

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %i, align 4, !dbg !5089
  %inc = add i32 %19, 1, !dbg !5089
  store i32 %inc, ptr %i, align 4, !dbg !5089
  br label %for.cond3, !dbg !5090, !llvm.loop !5091

for.end:                                          ; preds = %for.cond3
  call void @llvm.lifetime.end.p0(i64 4, ptr %penalty) #16, !dbg !5095
  br label %if.end33, !dbg !5096

if.else:                                          ; preds = %for.body
  %20 = load ptr, ptr %link, align 8, !dbg !5097
  %irq20 = getelementptr inbounds %struct.acpi_pci_link, ptr %20, i32 0, i32 2, !dbg !5099
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq20, i32 0, i32 0, !dbg !5100
  %21 = load i32, ptr %active, align 8, !dbg !5100
  %tobool21 = icmp ne i32 %21, 0, !dbg !5097
  br i1 %tobool21, label %land.lhs.true, label %if.end32, !dbg !5101

land.lhs.true:                                    ; preds = %if.else
  %22 = load ptr, ptr %link, align 8, !dbg !5102
  %irq22 = getelementptr inbounds %struct.acpi_pci_link, ptr %22, i32 0, i32 2, !dbg !5103
  %active23 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq22, i32 0, i32 0, !dbg !5104
  %23 = load i32, ptr %active23, align 8, !dbg !5104
  %cmp24 = icmp ult i32 %23, 16, !dbg !5105
  br i1 %cmp24, label %if.then26, label %if.end32, !dbg !5106

if.then26:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr %link, align 8, !dbg !5107
  %irq27 = getelementptr inbounds %struct.acpi_pci_link, ptr %24, i32 0, i32 2, !dbg !5109
  %active28 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq27, i32 0, i32 0, !dbg !5110
  %25 = load i32, ptr %active28, align 8, !dbg !5110
  %idxprom29 = zext i32 %25 to i64, !dbg !5111
  %arrayidx30 = getelementptr [16 x i32], ptr @acpi_isa_irq_penalty, i64 0, i64 %idxprom29, !dbg !5111
  %26 = load i32, ptr %arrayidx30, align 4, !dbg !5112
  %add31 = add i32 %26, 256, !dbg !5112
  store i32 %add31, ptr %arrayidx30, align 4, !dbg !5112
  br label %if.end32, !dbg !5113

if.end32:                                         ; preds = %if.then26, %land.lhs.true, %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %for.end
  br label %for.inc34, !dbg !5114

for.inc34:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr35) #16, !dbg !5115
  call void @llvm.dbg.declare(metadata ptr %__mptr35, metadata !5044, metadata !DIExpression()), !dbg !5115
  %27 = load ptr, ptr %link, align 8, !dbg !5115
  %list36 = getelementptr inbounds %struct.acpi_pci_link, ptr %27, i32 0, i32 0, !dbg !5115
  %next = getelementptr inbounds %struct.list_head, ptr %list36, i32 0, i32 0, !dbg !5115
  %28 = load ptr, ptr %next, align 8, !dbg !5115
  store ptr %28, ptr %__mptr35, align 8, !dbg !5115
  %29 = load ptr, ptr %__mptr35, align 8, !dbg !5115
  %add.ptr38 = getelementptr i8, ptr %29, i64 0, !dbg !5115
  store ptr %add.ptr38, ptr %tmp37, align 8, !dbg !5115
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr35) #16, !dbg !5052
  %30 = load ptr, ptr %tmp37, align 8, !dbg !5115
  store ptr %30, ptr %link, align 8, !dbg !5052
  br label %for.cond, !dbg !5052, !llvm.loop !5116

for.end39:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5118
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #16, !dbg !5118
  ret i32 0, !dbg !5119
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_pci_link_allocate_irq(ptr noundef %handle, i32 noundef %index, ptr noundef %triggering, ptr noundef %polarity, ptr noundef %name) #3 align 16 !dbg !5120 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %triggering.addr = alloca ptr, align 8
  %polarity.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %link = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !5125, metadata !DIExpression()), !dbg !5132
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5126, metadata !DIExpression()), !dbg !5133
  store ptr %triggering, ptr %triggering.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %triggering.addr, metadata !5127, metadata !DIExpression()), !dbg !5134
  store ptr %polarity, ptr %polarity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %polarity.addr, metadata !5128, metadata !DIExpression()), !dbg !5135
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5129, metadata !DIExpression()), !dbg !5136
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #16, !dbg !5137
  call void @llvm.dbg.declare(metadata ptr %device, metadata !5130, metadata !DIExpression()), !dbg !5138
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !5139
  %call = call ptr @acpi_fetch_acpi_dev(ptr noundef %0) #17, !dbg !5140
  store ptr %call, ptr %device, align 8, !dbg !5138
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #16, !dbg !5141
  call void @llvm.dbg.declare(metadata ptr %link, metadata !5131, metadata !DIExpression()), !dbg !5142
  %1 = load ptr, ptr %device, align 8, !dbg !5143
  %tobool = icmp ne ptr %1, null, !dbg !5143
  br i1 %tobool, label %if.end, label %if.then, !dbg !5145

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !5146
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %2, ptr noundef @.str.1) #17, !dbg !5146
  store i32 -1, ptr %retval, align 4, !dbg !5148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5148

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %device, align 8, !dbg !5149
  %call1 = call ptr @acpi_driver_data(ptr noundef %3) #17, !dbg !5150
  store ptr %call1, ptr %link, align 8, !dbg !5151
  %4 = load ptr, ptr %link, align 8, !dbg !5152
  %tobool2 = icmp ne ptr %4, null, !dbg !5152
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5154

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !5155
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %5, ptr noundef @.str.2) #17, !dbg !5155
  store i32 -1, ptr %retval, align 4, !dbg !5157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5157

if.end4:                                          ; preds = %if.end
  %6 = load i32, ptr %index.addr, align 4, !dbg !5158
  %tobool5 = icmp ne i32 %6, 0, !dbg !5158
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5160

if.then6:                                         ; preds = %if.end4
  %7 = load ptr, ptr %handle.addr, align 8, !dbg !5161
  %8 = load i32, ptr %index.addr, align 4, !dbg !5161
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %7, ptr noundef @.str.3, i32 noundef %8) #17, !dbg !5161
  store i32 -1, ptr %retval, align 4, !dbg !5163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5163

if.end7:                                          ; preds = %if.end4
  call void @mutex_lock(ptr noundef @acpi_link_lock) #17, !dbg !5164
  %9 = load ptr, ptr %link, align 8, !dbg !5165
  %call8 = call i32 @acpi_pci_link_allocate(ptr noundef %9) #17, !dbg !5167
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5167
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5168

if.then10:                                        ; preds = %if.end7
  call void @mutex_unlock(ptr noundef @acpi_link_lock) #17, !dbg !5169
  store i32 -1, ptr %retval, align 4, !dbg !5171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5171

if.end11:                                         ; preds = %if.end7
  %10 = load ptr, ptr %link, align 8, !dbg !5172
  %irq = getelementptr inbounds %struct.acpi_pci_link, ptr %10, i32 0, i32 2, !dbg !5174
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq, i32 0, i32 0, !dbg !5175
  %11 = load i32, ptr %active, align 8, !dbg !5175
  %tobool12 = icmp ne i32 %11, 0, !dbg !5172
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !5176

if.then13:                                        ; preds = %if.end11
  call void @mutex_unlock(ptr noundef @acpi_link_lock) #17, !dbg !5177
  %12 = load ptr, ptr %handle.addr, align 8, !dbg !5179
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %12, ptr noundef @.str.4) #17, !dbg !5179
  store i32 -1, ptr %retval, align 4, !dbg !5180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5180

if.end14:                                         ; preds = %if.end11
  %13 = load ptr, ptr %link, align 8, !dbg !5181
  %refcnt = getelementptr inbounds %struct.acpi_pci_link, ptr %13, i32 0, i32 3, !dbg !5182
  %14 = load i32, ptr %refcnt, align 4, !dbg !5183
  %inc = add i32 %14, 1, !dbg !5183
  store i32 %inc, ptr %refcnt, align 4, !dbg !5183
  call void @mutex_unlock(ptr noundef @acpi_link_lock) #17, !dbg !5184
  %15 = load ptr, ptr %triggering.addr, align 8, !dbg !5185
  %tobool15 = icmp ne ptr %15, null, !dbg !5185
  br i1 %tobool15, label %if.then16, label %if.end19, !dbg !5187

if.then16:                                        ; preds = %if.end14
  %16 = load ptr, ptr %link, align 8, !dbg !5188
  %irq17 = getelementptr inbounds %struct.acpi_pci_link, ptr %16, i32 0, i32 2, !dbg !5189
  %triggering18 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq17, i32 0, i32 1, !dbg !5190
  %17 = load i8, ptr %triggering18, align 4, !dbg !5190
  %conv = zext i8 %17 to i32, !dbg !5188
  %18 = load ptr, ptr %triggering.addr, align 8, !dbg !5191
  store i32 %conv, ptr %18, align 4, !dbg !5192
  br label %if.end19, !dbg !5193

if.end19:                                         ; preds = %if.then16, %if.end14
  %19 = load ptr, ptr %polarity.addr, align 8, !dbg !5194
  %tobool20 = icmp ne ptr %19, null, !dbg !5194
  br i1 %tobool20, label %if.then21, label %if.end25, !dbg !5196

if.then21:                                        ; preds = %if.end19
  %20 = load ptr, ptr %link, align 8, !dbg !5197
  %irq22 = getelementptr inbounds %struct.acpi_pci_link, ptr %20, i32 0, i32 2, !dbg !5198
  %polarity23 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq22, i32 0, i32 2, !dbg !5199
  %21 = load i8, ptr %polarity23, align 1, !dbg !5199
  %conv24 = zext i8 %21 to i32, !dbg !5197
  %22 = load ptr, ptr %polarity.addr, align 8, !dbg !5200
  store i32 %conv24, ptr %22, align 4, !dbg !5201
  br label %if.end25, !dbg !5202

if.end25:                                         ; preds = %if.then21, %if.end19
  %23 = load ptr, ptr %name.addr, align 8, !dbg !5203
  %tobool26 = icmp ne ptr %23, null, !dbg !5203
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !5205

if.then27:                                        ; preds = %if.end25
  %24 = load ptr, ptr %link, align 8, !dbg !5206
  %device28 = getelementptr inbounds %struct.acpi_pci_link, ptr %24, i32 0, i32 1, !dbg !5206
  %25 = load ptr, ptr %device28, align 8, !dbg !5206
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %25, i32 0, i32 8, !dbg !5206
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 0, !dbg !5206
  %arraydecay = getelementptr inbounds [8 x i8], ptr %bus_id, i64 0, i64 0, !dbg !5206
  %26 = load ptr, ptr %name.addr, align 8, !dbg !5207
  store ptr %arraydecay, ptr %26, align 8, !dbg !5208
  br label %if.end29, !dbg !5209

if.end29:                                         ; preds = %if.then27, %if.end25
  store i32 0, ptr %tmp, align 4, !dbg !5210
  %27 = load i32, ptr %tmp, align 4, !dbg !5213
  %28 = load ptr, ptr %link, align 8, !dbg !5214
  %irq30 = getelementptr inbounds %struct.acpi_pci_link, ptr %28, i32 0, i32 2, !dbg !5215
  %active31 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq30, i32 0, i32 0, !dbg !5216
  %29 = load i32, ptr %active31, align 8, !dbg !5216
  store i32 %29, ptr %retval, align 4, !dbg !5217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5217

cleanup:                                          ; preds = %if.end29, %if.then13, %if.then10, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #16, !dbg !5218
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #16, !dbg !5218
  %30 = load i32, ptr %retval, align 4, !dbg !5218
  ret i32 %30, !dbg !5218
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5219 dso_local ptr @acpi_fetch_acpi_dev(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5222 dso_local void @acpi_handle_printk(ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_driver_data(ptr noundef %d) #5 align 16 !dbg !5225 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5229, metadata !DIExpression()), !dbg !5230
  %0 = load ptr, ptr %d.addr, align 8, !dbg !5231
  %driver_data = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 17, !dbg !5232
  %1 = load ptr, ptr %driver_data, align 8, !dbg !5232
  ret ptr %1, !dbg !5233
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5234 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_pci_link_allocate(ptr noundef %link) #3 align 16 !dbg !5238 {
entry:
  %retval = alloca i32, align 4
  %link.addr = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %irq = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %link, ptr %link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %link.addr, metadata !5242, metadata !DIExpression()), !dbg !5246
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #16, !dbg !5247
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !5243, metadata !DIExpression()), !dbg !5248
  %0 = load ptr, ptr %link.addr, align 8, !dbg !5249
  %device = getelementptr inbounds %struct.acpi_pci_link, ptr %0, i32 0, i32 1, !dbg !5250
  %1 = load ptr, ptr %device, align 8, !dbg !5250
  %handle1 = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !5251
  %2 = load ptr, ptr %handle1, align 8, !dbg !5251
  store ptr %2, ptr %handle, align 8, !dbg !5248
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #16, !dbg !5252
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !5244, metadata !DIExpression()), !dbg !5253
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5254
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5245, metadata !DIExpression()), !dbg !5255
  %3 = load ptr, ptr %link.addr, align 8, !dbg !5256
  %irq2 = getelementptr inbounds %struct.acpi_pci_link, ptr %3, i32 0, i32 2, !dbg !5258
  %initialized = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq2, i32 0, i32 6, !dbg !5259
  %bf.load = load i8, ptr %initialized, align 8, !dbg !5259
  %bf.clear = and i8 %bf.load, 1, !dbg !5259
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !5256
  br i1 %tobool, label %if.then, label %if.end5, !dbg !5260

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %link.addr, align 8, !dbg !5261
  %refcnt = getelementptr inbounds %struct.acpi_pci_link, ptr %4, i32 0, i32 3, !dbg !5264
  %5 = load i32, ptr %refcnt, align 4, !dbg !5264
  %cmp = icmp eq i32 %5, 0, !dbg !5265
  br i1 %cmp, label %if.then3, label %if.end, !dbg !5266

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %link.addr, align 8, !dbg !5267
  %7 = load ptr, ptr %link.addr, align 8, !dbg !5268
  %irq4 = getelementptr inbounds %struct.acpi_pci_link, ptr %7, i32 0, i32 2, !dbg !5269
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq4, i32 0, i32 0, !dbg !5270
  %8 = load i32, ptr %active, align 8, !dbg !5270
  %call = call i32 @acpi_pci_link_set(ptr noundef %6, i32 noundef %8) #17, !dbg !5271
  br label %if.end, !dbg !5271

if.end:                                           ; preds = %if.then3, %if.then
  store i32 0, ptr %retval, align 4, !dbg !5272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5272

if.end5:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !5273
  br label %for.cond, !dbg !5275

for.cond:                                         ; preds = %for.inc, %if.end5
  %9 = load i32, ptr %i, align 4, !dbg !5276
  %10 = load ptr, ptr %link.addr, align 8, !dbg !5278
  %irq6 = getelementptr inbounds %struct.acpi_pci_link, ptr %10, i32 0, i32 2, !dbg !5279
  %possible_count = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq6, i32 0, i32 4, !dbg !5280
  %11 = load i8, ptr %possible_count, align 1, !dbg !5280
  %conv = zext i8 %11 to i32, !dbg !5278
  %cmp7 = icmp slt i32 %9, %conv, !dbg !5281
  br i1 %cmp7, label %for.body, label %for.end, !dbg !5282

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %link.addr, align 8, !dbg !5283
  %irq9 = getelementptr inbounds %struct.acpi_pci_link, ptr %12, i32 0, i32 2, !dbg !5286
  %active10 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq9, i32 0, i32 0, !dbg !5287
  %13 = load i32, ptr %active10, align 8, !dbg !5287
  %14 = load ptr, ptr %link.addr, align 8, !dbg !5288
  %irq11 = getelementptr inbounds %struct.acpi_pci_link, ptr %14, i32 0, i32 2, !dbg !5289
  %possible = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq11, i32 0, i32 5, !dbg !5290
  %15 = load i32, ptr %i, align 4, !dbg !5291
  %idxprom = sext i32 %15 to i64, !dbg !5288
  %arrayidx = getelementptr [16 x i32], ptr %possible, i64 0, i64 %idxprom, !dbg !5288
  %16 = load i32, ptr %arrayidx, align 4, !dbg !5288
  %cmp12 = icmp eq i32 %13, %16, !dbg !5292
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !5293

if.then14:                                        ; preds = %for.body
  br label %for.end, !dbg !5294

if.end15:                                         ; preds = %for.body
  br label %for.inc, !dbg !5295

for.inc:                                          ; preds = %if.end15
  %17 = load i32, ptr %i, align 4, !dbg !5296
  %inc = add i32 %17, 1, !dbg !5296
  store i32 %inc, ptr %i, align 4, !dbg !5296
  br label %for.cond, !dbg !5297, !llvm.loop !5298

for.end:                                          ; preds = %if.then14, %for.cond
  %18 = load i32, ptr %i, align 4, !dbg !5300
  %19 = load ptr, ptr %link.addr, align 8, !dbg !5302
  %irq16 = getelementptr inbounds %struct.acpi_pci_link, ptr %19, i32 0, i32 2, !dbg !5303
  %possible_count17 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq16, i32 0, i32 4, !dbg !5304
  %20 = load i8, ptr %possible_count17, align 1, !dbg !5304
  %conv18 = zext i8 %20 to i32, !dbg !5302
  %cmp19 = icmp eq i32 %18, %conv18, !dbg !5305
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !5306

if.then21:                                        ; preds = %for.end
  %21 = load i32, ptr @acpi_strict, align 4, !dbg !5307
  %tobool22 = icmp ne i32 %21, 0, !dbg !5307
  br i1 %tobool22, label %if.then23, label %if.end26, !dbg !5310

if.then23:                                        ; preds = %if.then21
  %22 = load ptr, ptr %handle, align 8, !dbg !5311
  %23 = load ptr, ptr %link.addr, align 8, !dbg !5311
  %irq24 = getelementptr inbounds %struct.acpi_pci_link, ptr %23, i32 0, i32 2, !dbg !5311
  %active25 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq24, i32 0, i32 0, !dbg !5311
  %24 = load i32, ptr %active25, align 8, !dbg !5311
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %22, ptr noundef @.str.8, i32 noundef %24) #17, !dbg !5311
  br label %if.end26, !dbg !5311

if.end26:                                         ; preds = %if.then23, %if.then21
  %25 = load ptr, ptr %link.addr, align 8, !dbg !5312
  %irq27 = getelementptr inbounds %struct.acpi_pci_link, ptr %25, i32 0, i32 2, !dbg !5313
  %active28 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq27, i32 0, i32 0, !dbg !5314
  store i32 0, ptr %active28, align 8, !dbg !5315
  br label %if.end29, !dbg !5316

if.end29:                                         ; preds = %if.end26, %for.end
  %26 = load ptr, ptr %link.addr, align 8, !dbg !5317
  %irq30 = getelementptr inbounds %struct.acpi_pci_link, ptr %26, i32 0, i32 2, !dbg !5319
  %active31 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq30, i32 0, i32 0, !dbg !5320
  %27 = load i32, ptr %active31, align 8, !dbg !5320
  %tobool32 = icmp ne i32 %27, 0, !dbg !5317
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !5321

if.then33:                                        ; preds = %if.end29
  %28 = load ptr, ptr %link.addr, align 8, !dbg !5322
  %irq34 = getelementptr inbounds %struct.acpi_pci_link, ptr %28, i32 0, i32 2, !dbg !5323
  %active35 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq34, i32 0, i32 0, !dbg !5324
  %29 = load i32, ptr %active35, align 8, !dbg !5324
  store i32 %29, ptr %irq, align 4, !dbg !5325
  br label %if.end43, !dbg !5326

if.else:                                          ; preds = %if.end29
  %30 = load ptr, ptr %link.addr, align 8, !dbg !5327
  %irq36 = getelementptr inbounds %struct.acpi_pci_link, ptr %30, i32 0, i32 2, !dbg !5328
  %possible37 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq36, i32 0, i32 5, !dbg !5329
  %31 = load ptr, ptr %link.addr, align 8, !dbg !5330
  %irq38 = getelementptr inbounds %struct.acpi_pci_link, ptr %31, i32 0, i32 2, !dbg !5331
  %possible_count39 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq38, i32 0, i32 4, !dbg !5332
  %32 = load i8, ptr %possible_count39, align 1, !dbg !5332
  %conv40 = zext i8 %32 to i32, !dbg !5330
  %sub = sub i32 %conv40, 1, !dbg !5333
  %idxprom41 = sext i32 %sub to i64, !dbg !5327
  %arrayidx42 = getelementptr [16 x i32], ptr %possible37, i64 0, i64 %idxprom41, !dbg !5327
  %33 = load i32, ptr %arrayidx42, align 4, !dbg !5327
  store i32 %33, ptr %irq, align 4, !dbg !5334
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then33
  %34 = load i32, ptr @acpi_irq_balance, align 4, !dbg !5335
  %tobool44 = icmp ne i32 %34, 0, !dbg !5335
  br i1 %tobool44, label %if.then48, label %lor.lhs.false, !dbg !5337

lor.lhs.false:                                    ; preds = %if.end43
  %35 = load ptr, ptr %link.addr, align 8, !dbg !5338
  %irq45 = getelementptr inbounds %struct.acpi_pci_link, ptr %35, i32 0, i32 2, !dbg !5339
  %active46 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq45, i32 0, i32 0, !dbg !5340
  %36 = load i32, ptr %active46, align 8, !dbg !5340
  %tobool47 = icmp ne i32 %36, 0, !dbg !5338
  br i1 %tobool47, label %if.end73, label %if.then48, !dbg !5341

if.then48:                                        ; preds = %lor.lhs.false, %if.end43
  %37 = load ptr, ptr %link.addr, align 8, !dbg !5342
  %irq49 = getelementptr inbounds %struct.acpi_pci_link, ptr %37, i32 0, i32 2, !dbg !5345
  %possible_count50 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq49, i32 0, i32 4, !dbg !5346
  %38 = load i8, ptr %possible_count50, align 1, !dbg !5346
  %conv51 = zext i8 %38 to i32, !dbg !5342
  %sub52 = sub i32 %conv51, 1, !dbg !5347
  store i32 %sub52, ptr %i, align 4, !dbg !5348
  br label %for.cond53, !dbg !5349

for.cond53:                                       ; preds = %for.inc71, %if.then48
  %39 = load i32, ptr %i, align 4, !dbg !5350
  %cmp54 = icmp sge i32 %39, 0, !dbg !5352
  br i1 %cmp54, label %for.body56, label %for.end72, !dbg !5353

for.body56:                                       ; preds = %for.cond53
  %40 = load i32, ptr %irq, align 4, !dbg !5354
  %call57 = call i32 @acpi_irq_get_penalty(i32 noundef %40) #17, !dbg !5357
  %41 = load ptr, ptr %link.addr, align 8, !dbg !5358
  %irq58 = getelementptr inbounds %struct.acpi_pci_link, ptr %41, i32 0, i32 2, !dbg !5359
  %possible59 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq58, i32 0, i32 5, !dbg !5360
  %42 = load i32, ptr %i, align 4, !dbg !5361
  %idxprom60 = sext i32 %42 to i64, !dbg !5358
  %arrayidx61 = getelementptr [16 x i32], ptr %possible59, i64 0, i64 %idxprom60, !dbg !5358
  %43 = load i32, ptr %arrayidx61, align 4, !dbg !5358
  %call62 = call i32 @acpi_irq_get_penalty(i32 noundef %43) #17, !dbg !5362
  %cmp63 = icmp sgt i32 %call57, %call62, !dbg !5363
  br i1 %cmp63, label %if.then65, label %if.end70, !dbg !5364

if.then65:                                        ; preds = %for.body56
  %44 = load ptr, ptr %link.addr, align 8, !dbg !5365
  %irq66 = getelementptr inbounds %struct.acpi_pci_link, ptr %44, i32 0, i32 2, !dbg !5366
  %possible67 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq66, i32 0, i32 5, !dbg !5367
  %45 = load i32, ptr %i, align 4, !dbg !5368
  %idxprom68 = sext i32 %45 to i64, !dbg !5365
  %arrayidx69 = getelementptr [16 x i32], ptr %possible67, i64 0, i64 %idxprom68, !dbg !5365
  %46 = load i32, ptr %arrayidx69, align 4, !dbg !5365
  store i32 %46, ptr %irq, align 4, !dbg !5369
  br label %if.end70, !dbg !5370

if.end70:                                         ; preds = %if.then65, %for.body56
  br label %for.inc71, !dbg !5371

for.inc71:                                        ; preds = %if.end70
  %47 = load i32, ptr %i, align 4, !dbg !5372
  %dec = add i32 %47, -1, !dbg !5372
  store i32 %dec, ptr %i, align 4, !dbg !5372
  br label %for.cond53, !dbg !5373, !llvm.loop !5374

for.end72:                                        ; preds = %for.cond53
  br label %if.end73, !dbg !5376

if.end73:                                         ; preds = %for.end72, %lor.lhs.false
  %48 = load i32, ptr %irq, align 4, !dbg !5377
  %call74 = call i32 @acpi_irq_get_penalty(i32 noundef %48) #17, !dbg !5379
  %cmp75 = icmp sge i32 %call74, 16777216, !dbg !5380
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !5381

if.then77:                                        ; preds = %if.end73
  %49 = load ptr, ptr %handle, align 8, !dbg !5382
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %49, ptr noundef @.str.9) #17, !dbg !5382
  store i32 -19, ptr %retval, align 4, !dbg !5384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5384

if.end78:                                         ; preds = %if.end73
  %50 = load ptr, ptr %link.addr, align 8, !dbg !5385
  %51 = load i32, ptr %irq, align 4, !dbg !5387
  %call79 = call i32 @acpi_pci_link_set(ptr noundef %50, i32 noundef %51) #17, !dbg !5388
  %tobool80 = icmp ne i32 %call79, 0, !dbg !5388
  br i1 %tobool80, label %if.then81, label %if.else82, !dbg !5389

if.then81:                                        ; preds = %if.end78
  %52 = load ptr, ptr %handle, align 8, !dbg !5390
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %52, ptr noundef @.str.10) #17, !dbg !5390
  store i32 -19, ptr %retval, align 4, !dbg !5392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5392

if.else82:                                        ; preds = %if.end78
  %53 = load ptr, ptr %link.addr, align 8, !dbg !5393
  %irq83 = getelementptr inbounds %struct.acpi_pci_link, ptr %53, i32 0, i32 2, !dbg !5396
  %active84 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq83, i32 0, i32 0, !dbg !5397
  %54 = load i32, ptr %active84, align 8, !dbg !5397
  %cmp85 = icmp ult i32 %54, 16, !dbg !5398
  br i1 %cmp85, label %if.then87, label %if.end92, !dbg !5399

if.then87:                                        ; preds = %if.else82
  %55 = load ptr, ptr %link.addr, align 8, !dbg !5400
  %irq88 = getelementptr inbounds %struct.acpi_pci_link, ptr %55, i32 0, i32 2, !dbg !5401
  %active89 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq88, i32 0, i32 0, !dbg !5402
  %56 = load i32, ptr %active89, align 8, !dbg !5402
  %idxprom90 = zext i32 %56 to i64, !dbg !5403
  %arrayidx91 = getelementptr [16 x i32], ptr @acpi_isa_irq_penalty, i64 0, i64 %idxprom90, !dbg !5403
  %57 = load i32, ptr %arrayidx91, align 4, !dbg !5404
  %add = add i32 %57, 4096, !dbg !5404
  store i32 %add, ptr %arrayidx91, align 4, !dbg !5404
  br label %if.end92, !dbg !5403

if.end92:                                         ; preds = %if.then87, %if.else82
  %58 = load ptr, ptr %handle, align 8, !dbg !5405
  %59 = load ptr, ptr %link.addr, align 8, !dbg !5405
  %irq93 = getelementptr inbounds %struct.acpi_pci_link, ptr %59, i32 0, i32 2, !dbg !5405
  %active94 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq93, i32 0, i32 0, !dbg !5405
  %60 = load i32, ptr %active94, align 8, !dbg !5405
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.11, ptr noundef %58, ptr noundef @.str.12, i32 noundef %60) #17, !dbg !5405
  br label %if.end95

if.end95:                                         ; preds = %if.end92
  %61 = load ptr, ptr %link.addr, align 8, !dbg !5406
  %irq96 = getelementptr inbounds %struct.acpi_pci_link, ptr %61, i32 0, i32 2, !dbg !5407
  %initialized97 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq96, i32 0, i32 6, !dbg !5408
  %bf.load98 = load i8, ptr %initialized97, align 8, !dbg !5409
  %bf.clear99 = and i8 %bf.load98, -2, !dbg !5409
  %bf.set = or i8 %bf.clear99, 1, !dbg !5409
  store i8 %bf.set, ptr %initialized97, align 8, !dbg !5409
  store i32 0, ptr %retval, align 4, !dbg !5410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5410

cleanup:                                          ; preds = %if.end95, %if.then81, %if.then77, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5411
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #16, !dbg !5411
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #16, !dbg !5411
  %62 = load i32, ptr %retval, align 4, !dbg !5411
  ret i32 %62, !dbg !5411
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5412 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_pci_link_free_irq(ptr noundef %handle) #3 align 16 !dbg !5413 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %link = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !5417, metadata !DIExpression()), !dbg !5420
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #16, !dbg !5421
  call void @llvm.dbg.declare(metadata ptr %device, metadata !5418, metadata !DIExpression()), !dbg !5422
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !5423
  %call = call ptr @acpi_fetch_acpi_dev(ptr noundef %0) #17, !dbg !5424
  store ptr %call, ptr %device, align 8, !dbg !5422
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #16, !dbg !5425
  call void @llvm.dbg.declare(metadata ptr %link, metadata !5419, metadata !DIExpression()), !dbg !5426
  %1 = load ptr, ptr %device, align 8, !dbg !5427
  %tobool = icmp ne ptr %1, null, !dbg !5427
  br i1 %tobool, label %if.end, label %if.then, !dbg !5429

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !5430
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %2, ptr noundef @.str.1) #17, !dbg !5430
  store i32 -1, ptr %retval, align 4, !dbg !5432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5432

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %device, align 8, !dbg !5433
  %call1 = call ptr @acpi_driver_data(ptr noundef %3) #17, !dbg !5434
  store ptr %call1, ptr %link, align 8, !dbg !5435
  %4 = load ptr, ptr %link, align 8, !dbg !5436
  %tobool2 = icmp ne ptr %4, null, !dbg !5436
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5438

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !5439
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %5, ptr noundef @.str.2) #17, !dbg !5439
  store i32 -1, ptr %retval, align 4, !dbg !5441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5441

if.end4:                                          ; preds = %if.end
  call void @mutex_lock(ptr noundef @acpi_link_lock) #17, !dbg !5442
  %6 = load ptr, ptr %link, align 8, !dbg !5443
  %irq = getelementptr inbounds %struct.acpi_pci_link, ptr %6, i32 0, i32 2, !dbg !5445
  %initialized = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq, i32 0, i32 6, !dbg !5446
  %bf.load = load i8, ptr %initialized, align 8, !dbg !5446
  %bf.clear = and i8 %bf.load, 1, !dbg !5446
  %tobool5 = icmp ne i8 %bf.clear, 0, !dbg !5443
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5447

if.then6:                                         ; preds = %if.end4
  call void @mutex_unlock(ptr noundef @acpi_link_lock) #17, !dbg !5448
  %7 = load ptr, ptr %handle.addr, align 8, !dbg !5450
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %7, ptr noundef @.str.5) #17, !dbg !5450
  store i32 -1, ptr %retval, align 4, !dbg !5451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5451

if.end7:                                          ; preds = %if.end4
  store i32 0, ptr %tmp, align 4, !dbg !5452
  %8 = load i32, ptr %tmp, align 4, !dbg !5455
  %9 = load ptr, ptr %link, align 8, !dbg !5456
  %refcnt = getelementptr inbounds %struct.acpi_pci_link, ptr %9, i32 0, i32 3, !dbg !5458
  %10 = load i32, ptr %refcnt, align 4, !dbg !5458
  %cmp = icmp eq i32 %10, 0, !dbg !5459
  br i1 %cmp, label %if.then8, label %if.end12, !dbg !5460

if.then8:                                         ; preds = %if.end7
  %11 = load ptr, ptr %link, align 8, !dbg !5461
  %device9 = getelementptr inbounds %struct.acpi_pci_link, ptr %11, i32 0, i32 1, !dbg !5462
  %12 = load ptr, ptr %device9, align 8, !dbg !5462
  %handle10 = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 2, !dbg !5463
  %13 = load ptr, ptr %handle10, align 8, !dbg !5463
  %call11 = call i32 @acpi_evaluate_object(ptr noundef %13, ptr noundef @.str.6, ptr noundef null, ptr noundef null) #17, !dbg !5464
  br label %if.end12, !dbg !5464

if.end12:                                         ; preds = %if.then8, %if.end7
  call void @mutex_unlock(ptr noundef @acpi_link_lock) #17, !dbg !5465
  %14 = load ptr, ptr %link, align 8, !dbg !5466
  %irq13 = getelementptr inbounds %struct.acpi_pci_link, ptr %14, i32 0, i32 2, !dbg !5467
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq13, i32 0, i32 0, !dbg !5468
  %15 = load i32, ptr %active, align 8, !dbg !5468
  store i32 %15, ptr %retval, align 4, !dbg !5469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5469

cleanup:                                          ; preds = %if.end12, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #16, !dbg !5470
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #16, !dbg !5470
  %16 = load i32, ptr %retval, align 4, !dbg !5470
  ret i32 %16, !dbg !5470
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5471 dso_local i32 @acpi_evaluate_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_penalize_isa_irq(i32 noundef %irq, i32 noundef %active) #3 align 16 !dbg !5487 {
entry:
  %irq.addr = alloca i32, align 4
  %active.addr = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !5491, metadata !DIExpression()), !dbg !5493
  store i32 %active, ptr %active.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %active.addr, metadata !5492, metadata !DIExpression()), !dbg !5494
  %0 = load i32, ptr %irq.addr, align 4, !dbg !5495
  %cmp = icmp sge i32 %0, 0, !dbg !5497
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5498

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %irq.addr, align 4, !dbg !5499
  %conv = sext i32 %1 to i64, !dbg !5499
  %cmp1 = icmp ult i64 %conv, 16, !dbg !5500
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5501

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, ptr %active.addr, align 4, !dbg !5502
  %tobool = icmp ne i32 %2, 0, !dbg !5502
  %3 = zext i1 %tobool to i64, !dbg !5502
  %cond = select i1 %tobool, i32 1048576, i32 4096, !dbg !5502
  %4 = load i32, ptr %irq.addr, align 4, !dbg !5503
  %idxprom = sext i32 %4 to i64, !dbg !5504
  %arrayidx = getelementptr [16 x i32], ptr @acpi_isa_irq_penalty, i64 0, i64 %idxprom, !dbg !5504
  %5 = load i32, ptr %arrayidx, align 4, !dbg !5505
  %add = add i32 %5, %cond, !dbg !5505
  store i32 %add, ptr %arrayidx, align 4, !dbg !5505
  br label %if.end, !dbg !5504

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !5506
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @acpi_isa_irq_available(i32 noundef %irq) #3 align 16 !dbg !5507 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !5511, metadata !DIExpression()), !dbg !5512
  %0 = load i32, ptr %irq.addr, align 4, !dbg !5513
  %cmp = icmp sge i32 %0, 0, !dbg !5514
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5515

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %irq.addr, align 4, !dbg !5516
  %conv = sext i32 %1 to i64, !dbg !5516
  %cmp1 = icmp uge i64 %conv, 16, !dbg !5517
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !5518

lor.rhs:                                          ; preds = %land.rhs
  %2 = load i32, ptr %irq.addr, align 4, !dbg !5519
  %call = call i32 @acpi_irq_get_penalty(i32 noundef %2) #17, !dbg !5520
  %cmp3 = icmp slt i32 %call, 16777216, !dbg !5521
  br label %lor.end, !dbg !5518

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %3 = phi i1 [ true, %land.rhs ], [ %cmp3, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %4 = phi i1 [ false, %entry ], [ %3, %lor.end ], !dbg !5522
  ret i1 %4, !dbg !5523
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_irq_get_penalty(i32 noundef %irq) #3 align 16 !dbg !5524 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %penalty = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !5526, metadata !DIExpression()), !dbg !5528
  call void @llvm.lifetime.start.p0(i64 4, ptr %penalty) #16, !dbg !5529
  call void @llvm.dbg.declare(metadata ptr %penalty, metadata !5527, metadata !DIExpression()), !dbg !5530
  store i32 0, ptr %penalty, align 4, !dbg !5530
  %0 = load i32, ptr %irq.addr, align 4, !dbg !5531
  %1 = load i32, ptr @sci_irq, align 4, !dbg !5533
  %cmp = icmp eq i32 %0, %1, !dbg !5534
  br i1 %cmp, label %if.then, label %if.end, !dbg !5535

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @sci_penalty, align 4, !dbg !5536
  %3 = load i32, ptr %penalty, align 4, !dbg !5537
  %add = add i32 %3, %2, !dbg !5537
  store i32 %add, ptr %penalty, align 4, !dbg !5537
  br label %if.end, !dbg !5538

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %irq.addr, align 4, !dbg !5539
  %cmp1 = icmp slt i32 %4, 16, !dbg !5541
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !5542

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %penalty, align 4, !dbg !5543
  %6 = load i32, ptr %irq.addr, align 4, !dbg !5544
  %idxprom = sext i32 %6 to i64, !dbg !5545
  %arrayidx = getelementptr [16 x i32], ptr @acpi_isa_irq_penalty, i64 0, i64 %idxprom, !dbg !5545
  %7 = load i32, ptr %arrayidx, align 4, !dbg !5545
  %add3 = add i32 %5, %7, !dbg !5546
  store i32 %add3, ptr %retval, align 4, !dbg !5547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5547

if.end4:                                          ; preds = %if.end
  %8 = load i32, ptr %penalty, align 4, !dbg !5548
  %9 = load i32, ptr %irq.addr, align 4, !dbg !5549
  %call = call i32 @acpi_irq_pci_sharing_penalty(i32 noundef %9) #17, !dbg !5550
  %add5 = add i32 %8, %call, !dbg !5551
  store i32 %add5, ptr %retval, align 4, !dbg !5552
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5552

cleanup:                                          ; preds = %if.end4, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %penalty) #16, !dbg !5553
  %10 = load i32, ptr %retval, align 4, !dbg !5553
  ret i32 %10, !dbg !5553
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_penalize_sci_irq(i32 noundef %irq, i32 noundef %trigger, i32 noundef %polarity) #3 align 16 !dbg !5554 {
entry:
  %irq.addr = alloca i32, align 4
  %trigger.addr = alloca i32, align 4
  %polarity.addr = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !5558, metadata !DIExpression()), !dbg !5561
  store i32 %trigger, ptr %trigger.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trigger.addr, metadata !5559, metadata !DIExpression()), !dbg !5562
  store i32 %polarity, ptr %polarity.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %polarity.addr, metadata !5560, metadata !DIExpression()), !dbg !5563
  %0 = load i32, ptr %irq.addr, align 4, !dbg !5564
  store i32 %0, ptr @sci_irq, align 4, !dbg !5565
  %1 = load i32, ptr %trigger.addr, align 4, !dbg !5566
  %cmp = icmp eq i32 %1, 12, !dbg !5568
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5569

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %polarity.addr, align 4, !dbg !5570
  %cmp1 = icmp eq i32 %2, 3, !dbg !5571
  br i1 %cmp1, label %if.then, label %if.else, !dbg !5572

if.then:                                          ; preds = %land.lhs.true
  store i32 4096, ptr @sci_penalty, align 4, !dbg !5573
  br label %if.end, !dbg !5574

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 16777216, ptr @sci_penalty, align 4, !dbg !5575
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5576
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_irq_isa(ptr noundef %str) #0 section ".init.text" align 16 !dbg !5577 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5579, metadata !DIExpression()), !dbg !5580
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5581
  %call = call i32 @acpi_irq_penalty_update(ptr noundef %0, i32 noundef 1) #18, !dbg !5582
  ret i32 %call, !dbg !5583
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_irq_pci(ptr noundef %str) #0 section ".init.text" align 16 !dbg !5584 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5586, metadata !DIExpression()), !dbg !5587
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5588
  %call = call i32 @acpi_irq_penalty_update(ptr noundef %0, i32 noundef 0) #18, !dbg !5589
  ret i32 %call, !dbg !5590
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_irq_nobalance_set(ptr noundef %str) #0 section ".init.text" align 16 !dbg !5591 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5593, metadata !DIExpression()), !dbg !5594
  store i32 0, ptr @acpi_irq_balance, align 4, !dbg !5595
  ret i32 1, !dbg !5596
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_irq_balance_set(ptr noundef %str) #0 section ".init.text" align 16 !dbg !5597 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5599, metadata !DIExpression()), !dbg !5600
  store i32 1, ptr @acpi_irq_balance, align 4, !dbg !5601
  ret i32 1, !dbg !5602
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @acpi_pci_link_init() #0 section ".init.text" align 16 !dbg !5603 {
entry:
  %0 = load i32, ptr @acpi_noirq, align 4, !dbg !5604
  %tobool = icmp ne i32 %0, 0, !dbg !5604
  br i1 %tobool, label %if.then, label %if.end, !dbg !5606

if.then:                                          ; preds = %entry
  br label %return, !dbg !5607

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @acpi_irq_balance, align 4, !dbg !5608
  %cmp = icmp eq i32 %1, -1, !dbg !5610
  br i1 %cmp, label %if.then1, label %if.end5, !dbg !5611

if.then1:                                         ; preds = %if.end
  %2 = load i32, ptr @acpi_irq_model, align 4, !dbg !5612
  %cmp2 = icmp eq i32 %2, 1, !dbg !5615
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !5616

if.then3:                                         ; preds = %if.then1
  store i32 1, ptr @acpi_irq_balance, align 4, !dbg !5617
  br label %if.end4, !dbg !5618

if.else:                                          ; preds = %if.then1
  store i32 0, ptr @acpi_irq_balance, align 4, !dbg !5619
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  br label %if.end5, !dbg !5620

if.end5:                                          ; preds = %if.end4, %if.end
  call void @register_syscore_ops(ptr noundef @irqrouter_syscore_ops) #17, !dbg !5621
  %call = call i32 @acpi_scan_add_handler(ptr noundef @pci_link_handler) #17, !dbg !5622
  br label %return, !dbg !5623

return:                                           ; preds = %if.end5, %if.then
  ret void, !dbg !5623
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5624 dso_local void @register_syscore_ops(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5628 dso_local i32 @acpi_scan_add_handler(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_pci_link_set(ptr noundef %link, i32 noundef %irq) #3 align 16 !dbg !5631 {
entry:
  %retval = alloca i32, align 4
  %link.addr = alloca ptr, align 8
  %irq.addr = alloca i32, align 4
  %resource = alloca ptr, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %handle = alloca ptr, align 8
  %status = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %tmp116 = alloca i32, align 4
  store ptr %link, ptr %link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %link.addr, metadata !5635, metadata !DIExpression()), !dbg !6068
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !5636, metadata !DIExpression()), !dbg !6069
  call void @llvm.lifetime.start.p0(i64 8, ptr %resource) #16, !dbg !6070
  call void @llvm.dbg.declare(metadata ptr %resource, metadata !5637, metadata !DIExpression()), !dbg !6071
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #16, !dbg !6072
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !6053, metadata !DIExpression()), !dbg !6073
  call void @llvm.memset.p0.i64(ptr align 8 %buffer, i8 0, i64 16, i1 false), !dbg !6073
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #16, !dbg !6074
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !6054, metadata !DIExpression()), !dbg !6075
  %0 = load ptr, ptr %link.addr, align 8, !dbg !6076
  %device = getelementptr inbounds %struct.acpi_pci_link, ptr %0, i32 0, i32 1, !dbg !6077
  %1 = load ptr, ptr %device, align 8, !dbg !6077
  %handle1 = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !6078
  %2 = load ptr, ptr %handle1, align 8, !dbg !6078
  store ptr %2, ptr %handle, align 8, !dbg !6075
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %status, metadata !6055, metadata !DIExpression()), !dbg !6080
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #16, !dbg !6081
  call void @llvm.dbg.declare(metadata ptr %result, metadata !6056, metadata !DIExpression()), !dbg !6082
  %3 = load i32, ptr %irq.addr, align 4, !dbg !6083
  %tobool = icmp ne i32 %3, 0, !dbg !6083
  br i1 %tobool, label %if.end, label %if.then, !dbg !6085

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6086

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #16, !dbg !6087
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !6057, metadata !DIExpression()), !dbg !6087
  br label %do.body, !dbg !6087

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !6088
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6059, metadata !DIExpression()), !dbg !6088
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !6088
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6062, metadata !DIExpression()), !dbg !6088
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6088
  %conv = zext i1 %cmp to i32, !dbg !6088
  store i32 1, ptr %tmp, align 4, !dbg !6088
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !6089
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !6089
  %4 = load i32, ptr %tmp, align 4, !dbg !6088
  %call = call i64 @arch_local_save_flags() #17, !dbg !6089
  store i64 %call, ptr %_flags, align 8, !dbg !6089
  br label %do.cond, !dbg !6089

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6089

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #16, !dbg !6090
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !6063, metadata !DIExpression()), !dbg !6090
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #16, !dbg !6090
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !6066, metadata !DIExpression()), !dbg !6090
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !6090
  %conv6 = zext i1 %cmp5 to i32, !dbg !6090
  store i32 1, ptr %tmp7, align 4, !dbg !6090
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #16, !dbg !6091
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #16, !dbg !6091
  %5 = load i32, ptr %tmp7, align 4, !dbg !6090
  %6 = load i64, ptr %_flags, align 8, !dbg !6091
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %6) #17, !dbg !6091
  store i32 %call9, ptr %tmp8, align 4, !dbg !6091
  %7 = load i32, ptr %tmp8, align 4, !dbg !6091
  store i32 %7, ptr %tmp2, align 4, !dbg !6089
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #16, !dbg !6092
  %8 = load i32, ptr %tmp2, align 4, !dbg !6087
  %tobool10 = icmp ne i32 %8, 0, !dbg !6092
  %9 = zext i1 %tobool10 to i64, !dbg !6092
  %cond = select i1 %tobool10, i32 2080, i32 3264, !dbg !6092
  %call11 = call noalias ptr @kzalloc(i64 noundef 137, i32 noundef %cond) #19, !dbg !6093
  store ptr %call11, ptr %resource, align 8, !dbg !6094
  %10 = load ptr, ptr %resource, align 8, !dbg !6095
  %tobool12 = icmp ne ptr %10, null, !dbg !6095
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !6097

if.then13:                                        ; preds = %do.end
  store i32 -12, ptr %retval, align 4, !dbg !6098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6098

if.end14:                                         ; preds = %do.end
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 0, !dbg !6099
  store i64 137, ptr %length, align 8, !dbg !6100
  %11 = load ptr, ptr %resource, align 8, !dbg !6101
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !6102
  store ptr %11, ptr %pointer, align 8, !dbg !6103
  %12 = load ptr, ptr %link.addr, align 8, !dbg !6104
  %irq15 = getelementptr inbounds %struct.acpi_pci_link, ptr %12, i32 0, i32 2, !dbg !6105
  %resource_type = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq15, i32 0, i32 3, !dbg !6106
  %13 = load i8, ptr %resource_type, align 2, !dbg !6106
  %conv16 = zext i8 %13 to i32, !dbg !6104
  switch i32 %conv16, label %sw.default [
    i32 0, label %sw.bb
    i32 15, label %sw.bb43
  ], !dbg !6107

sw.bb:                                            ; preds = %if.end14
  %14 = load ptr, ptr %resource, align 8, !dbg !6108
  %res = getelementptr inbounds %struct.anon.15, ptr %14, i32 0, i32 0, !dbg !6110
  %type = getelementptr inbounds %struct.acpi_resource, ptr %res, i32 0, i32 0, !dbg !6111
  store i32 0, ptr %type, align 1, !dbg !6112
  %15 = load ptr, ptr %resource, align 8, !dbg !6113
  %res17 = getelementptr inbounds %struct.anon.15, ptr %15, i32 0, i32 0, !dbg !6114
  %length18 = getelementptr inbounds %struct.acpi_resource, ptr %res17, i32 0, i32 1, !dbg !6115
  store i32 68, ptr %length18, align 1, !dbg !6116
  %16 = load ptr, ptr %link.addr, align 8, !dbg !6117
  %irq19 = getelementptr inbounds %struct.acpi_pci_link, ptr %16, i32 0, i32 2, !dbg !6118
  %triggering = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq19, i32 0, i32 1, !dbg !6119
  %17 = load i8, ptr %triggering, align 4, !dbg !6119
  %18 = load ptr, ptr %resource, align 8, !dbg !6120
  %res20 = getelementptr inbounds %struct.anon.15, ptr %18, i32 0, i32 0, !dbg !6121
  %data = getelementptr inbounds %struct.acpi_resource, ptr %res20, i32 0, i32 2, !dbg !6122
  %triggering21 = getelementptr inbounds %struct.acpi_resource_irq, ptr %data, i32 0, i32 1, !dbg !6123
  store i8 %17, ptr %triggering21, align 1, !dbg !6124
  %19 = load ptr, ptr %link.addr, align 8, !dbg !6125
  %irq22 = getelementptr inbounds %struct.acpi_pci_link, ptr %19, i32 0, i32 2, !dbg !6126
  %polarity = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq22, i32 0, i32 2, !dbg !6127
  %20 = load i8, ptr %polarity, align 1, !dbg !6127
  %21 = load ptr, ptr %resource, align 8, !dbg !6128
  %res23 = getelementptr inbounds %struct.anon.15, ptr %21, i32 0, i32 0, !dbg !6129
  %data24 = getelementptr inbounds %struct.acpi_resource, ptr %res23, i32 0, i32 2, !dbg !6130
  %polarity25 = getelementptr inbounds %struct.acpi_resource_irq, ptr %data24, i32 0, i32 2, !dbg !6131
  store i8 %20, ptr %polarity25, align 1, !dbg !6132
  %22 = load ptr, ptr %link.addr, align 8, !dbg !6133
  %irq26 = getelementptr inbounds %struct.acpi_pci_link, ptr %22, i32 0, i32 2, !dbg !6135
  %triggering27 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq26, i32 0, i32 1, !dbg !6136
  %23 = load i8, ptr %triggering27, align 4, !dbg !6136
  %conv28 = zext i8 %23 to i32, !dbg !6133
  %cmp29 = icmp eq i32 %conv28, 1, !dbg !6137
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !6138

if.then31:                                        ; preds = %sw.bb
  %24 = load ptr, ptr %resource, align 8, !dbg !6139
  %res32 = getelementptr inbounds %struct.anon.15, ptr %24, i32 0, i32 0, !dbg !6140
  %data33 = getelementptr inbounds %struct.acpi_resource, ptr %res32, i32 0, i32 2, !dbg !6141
  %shareable = getelementptr inbounds %struct.acpi_resource_irq, ptr %data33, i32 0, i32 3, !dbg !6142
  store i8 0, ptr %shareable, align 1, !dbg !6143
  br label %if.end37, !dbg !6139

if.else:                                          ; preds = %sw.bb
  %25 = load ptr, ptr %resource, align 8, !dbg !6144
  %res34 = getelementptr inbounds %struct.anon.15, ptr %25, i32 0, i32 0, !dbg !6145
  %data35 = getelementptr inbounds %struct.acpi_resource, ptr %res34, i32 0, i32 2, !dbg !6146
  %shareable36 = getelementptr inbounds %struct.acpi_resource_irq, ptr %data35, i32 0, i32 3, !dbg !6147
  store i8 1, ptr %shareable36, align 1, !dbg !6148
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then31
  %26 = load ptr, ptr %resource, align 8, !dbg !6149
  %res38 = getelementptr inbounds %struct.anon.15, ptr %26, i32 0, i32 0, !dbg !6150
  %data39 = getelementptr inbounds %struct.acpi_resource, ptr %res38, i32 0, i32 2, !dbg !6151
  %interrupt_count = getelementptr inbounds %struct.acpi_resource_irq, ptr %data39, i32 0, i32 5, !dbg !6152
  store i8 1, ptr %interrupt_count, align 1, !dbg !6153
  %27 = load i32, ptr %irq.addr, align 4, !dbg !6154
  %conv40 = trunc i32 %27 to i8, !dbg !6154
  %28 = load ptr, ptr %resource, align 8, !dbg !6155
  %res41 = getelementptr inbounds %struct.anon.15, ptr %28, i32 0, i32 0, !dbg !6156
  %data42 = getelementptr inbounds %struct.acpi_resource, ptr %res41, i32 0, i32 2, !dbg !6157
  %29 = getelementptr inbounds %struct.acpi_resource_irq, ptr %data42, i32 0, i32 6, !dbg !6158
  %interrupts = getelementptr inbounds %struct.anon.17, ptr %29, i32 0, i32 1, !dbg !6158
  %arrayidx = getelementptr [0 x i8], ptr %interrupts, i64 0, i64 0, !dbg !6155
  store i8 %conv40, ptr %arrayidx, align 1, !dbg !6159
  br label %sw.epilog, !dbg !6160

sw.bb43:                                          ; preds = %if.end14
  %30 = load ptr, ptr %resource, align 8, !dbg !6161
  %res44 = getelementptr inbounds %struct.anon.15, ptr %30, i32 0, i32 0, !dbg !6162
  %type45 = getelementptr inbounds %struct.acpi_resource, ptr %res44, i32 0, i32 0, !dbg !6163
  store i32 15, ptr %type45, align 1, !dbg !6164
  %31 = load ptr, ptr %resource, align 8, !dbg !6165
  %res46 = getelementptr inbounds %struct.anon.15, ptr %31, i32 0, i32 0, !dbg !6166
  %length47 = getelementptr inbounds %struct.acpi_resource, ptr %res46, i32 0, i32 1, !dbg !6167
  store i32 68, ptr %length47, align 1, !dbg !6168
  %32 = load ptr, ptr %resource, align 8, !dbg !6169
  %res48 = getelementptr inbounds %struct.anon.15, ptr %32, i32 0, i32 0, !dbg !6170
  %data49 = getelementptr inbounds %struct.acpi_resource, ptr %res48, i32 0, i32 2, !dbg !6171
  %producer_consumer = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %data49, i32 0, i32 0, !dbg !6172
  store i8 1, ptr %producer_consumer, align 1, !dbg !6173
  %33 = load ptr, ptr %link.addr, align 8, !dbg !6174
  %irq50 = getelementptr inbounds %struct.acpi_pci_link, ptr %33, i32 0, i32 2, !dbg !6175
  %triggering51 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq50, i32 0, i32 1, !dbg !6176
  %34 = load i8, ptr %triggering51, align 4, !dbg !6176
  %35 = load ptr, ptr %resource, align 8, !dbg !6177
  %res52 = getelementptr inbounds %struct.anon.15, ptr %35, i32 0, i32 0, !dbg !6178
  %data53 = getelementptr inbounds %struct.acpi_resource, ptr %res52, i32 0, i32 2, !dbg !6179
  %triggering54 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %data53, i32 0, i32 1, !dbg !6180
  store i8 %34, ptr %triggering54, align 1, !dbg !6181
  %36 = load ptr, ptr %link.addr, align 8, !dbg !6182
  %irq55 = getelementptr inbounds %struct.acpi_pci_link, ptr %36, i32 0, i32 2, !dbg !6183
  %polarity56 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq55, i32 0, i32 2, !dbg !6184
  %37 = load i8, ptr %polarity56, align 1, !dbg !6184
  %38 = load ptr, ptr %resource, align 8, !dbg !6185
  %res57 = getelementptr inbounds %struct.anon.15, ptr %38, i32 0, i32 0, !dbg !6186
  %data58 = getelementptr inbounds %struct.acpi_resource, ptr %res57, i32 0, i32 2, !dbg !6187
  %polarity59 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %data58, i32 0, i32 2, !dbg !6188
  store i8 %37, ptr %polarity59, align 1, !dbg !6189
  %39 = load ptr, ptr %link.addr, align 8, !dbg !6190
  %irq60 = getelementptr inbounds %struct.acpi_pci_link, ptr %39, i32 0, i32 2, !dbg !6192
  %triggering61 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq60, i32 0, i32 1, !dbg !6193
  %40 = load i8, ptr %triggering61, align 4, !dbg !6193
  %conv62 = zext i8 %40 to i32, !dbg !6190
  %cmp63 = icmp eq i32 %conv62, 1, !dbg !6194
  br i1 %cmp63, label %if.then65, label %if.else69, !dbg !6195

if.then65:                                        ; preds = %sw.bb43
  %41 = load ptr, ptr %resource, align 8, !dbg !6196
  %res66 = getelementptr inbounds %struct.anon.15, ptr %41, i32 0, i32 0, !dbg !6197
  %data67 = getelementptr inbounds %struct.acpi_resource, ptr %res66, i32 0, i32 2, !dbg !6198
  %shareable68 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %data67, i32 0, i32 3, !dbg !6199
  store i8 0, ptr %shareable68, align 1, !dbg !6200
  br label %if.end73, !dbg !6196

if.else69:                                        ; preds = %sw.bb43
  %42 = load ptr, ptr %resource, align 8, !dbg !6201
  %res70 = getelementptr inbounds %struct.anon.15, ptr %42, i32 0, i32 0, !dbg !6202
  %data71 = getelementptr inbounds %struct.acpi_resource, ptr %res70, i32 0, i32 2, !dbg !6203
  %shareable72 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %data71, i32 0, i32 3, !dbg !6204
  store i8 1, ptr %shareable72, align 1, !dbg !6205
  br label %if.end73

if.end73:                                         ; preds = %if.else69, %if.then65
  %43 = load ptr, ptr %resource, align 8, !dbg !6206
  %res74 = getelementptr inbounds %struct.anon.15, ptr %43, i32 0, i32 0, !dbg !6207
  %data75 = getelementptr inbounds %struct.acpi_resource, ptr %res74, i32 0, i32 2, !dbg !6208
  %interrupt_count76 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %data75, i32 0, i32 5, !dbg !6209
  store i8 1, ptr %interrupt_count76, align 1, !dbg !6210
  %44 = load i32, ptr %irq.addr, align 4, !dbg !6211
  %45 = load ptr, ptr %resource, align 8, !dbg !6212
  %res77 = getelementptr inbounds %struct.anon.15, ptr %45, i32 0, i32 0, !dbg !6213
  %data78 = getelementptr inbounds %struct.acpi_resource, ptr %res77, i32 0, i32 2, !dbg !6214
  %46 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %data78, i32 0, i32 7, !dbg !6215
  %interrupts79 = getelementptr inbounds %struct.anon.23, ptr %46, i32 0, i32 1, !dbg !6215
  %arrayidx80 = getelementptr [0 x i32], ptr %interrupts79, i64 0, i64 0, !dbg !6212
  store i32 %44, ptr %arrayidx80, align 1, !dbg !6216
  br label %sw.epilog, !dbg !6217

sw.default:                                       ; preds = %if.end14
  %47 = load ptr, ptr %handle, align 8, !dbg !6218
  %48 = load ptr, ptr %link.addr, align 8, !dbg !6218
  %irq81 = getelementptr inbounds %struct.acpi_pci_link, ptr %48, i32 0, i32 2, !dbg !6218
  %resource_type82 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq81, i32 0, i32 3, !dbg !6218
  %49 = load i8, ptr %resource_type82, align 2, !dbg !6218
  %conv83 = zext i8 %49 to i32, !dbg !6218
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %47, ptr noundef @.str.13, i32 noundef %conv83) #17, !dbg !6218
  store i32 -22, ptr %result, align 4, !dbg !6219
  br label %end117, !dbg !6220

sw.epilog:                                        ; preds = %if.end73, %if.end37
  %50 = load ptr, ptr %resource, align 8, !dbg !6221
  %end = getelementptr inbounds %struct.anon.15, ptr %50, i32 0, i32 1, !dbg !6222
  %type84 = getelementptr inbounds %struct.acpi_resource, ptr %end, i32 0, i32 0, !dbg !6223
  store i32 7, ptr %type84, align 1, !dbg !6224
  %51 = load ptr, ptr %resource, align 8, !dbg !6225
  %end85 = getelementptr inbounds %struct.anon.15, ptr %51, i32 0, i32 1, !dbg !6226
  %length86 = getelementptr inbounds %struct.acpi_resource, ptr %end85, i32 0, i32 1, !dbg !6227
  store i32 68, ptr %length86, align 1, !dbg !6228
  %52 = load ptr, ptr %link.addr, align 8, !dbg !6229
  %device87 = getelementptr inbounds %struct.acpi_pci_link, ptr %52, i32 0, i32 1, !dbg !6230
  %53 = load ptr, ptr %device87, align 8, !dbg !6230
  %handle88 = getelementptr inbounds %struct.acpi_device, ptr %53, i32 0, i32 2, !dbg !6231
  %54 = load ptr, ptr %handle88, align 8, !dbg !6231
  %call89 = call i32 @acpi_set_current_resources(ptr noundef %54, ptr noundef %buffer) #17, !dbg !6232
  store i32 %call89, ptr %status, align 4, !dbg !6233
  %55 = load i32, ptr %status, align 4, !dbg !6234
  %tobool90 = icmp ne i32 %55, 0, !dbg !6234
  br i1 %tobool90, label %if.then91, label %if.end92, !dbg !6236

if.then91:                                        ; preds = %sw.epilog
  %56 = load ptr, ptr %handle, align 8, !dbg !6237
  %57 = load i32, ptr %status, align 4, !dbg !6239
  call void @acpi_evaluation_failure_warn(ptr noundef %56, ptr noundef @.str.14, i32 noundef %57) #17, !dbg !6240
  store i32 -19, ptr %result, align 4, !dbg !6241
  br label %end117, !dbg !6242

if.end92:                                         ; preds = %sw.epilog
  %58 = load ptr, ptr %link.addr, align 8, !dbg !6243
  %device93 = getelementptr inbounds %struct.acpi_pci_link, ptr %58, i32 0, i32 1, !dbg !6244
  %59 = load ptr, ptr %device93, align 8, !dbg !6244
  %call94 = call i32 @acpi_bus_get_status(ptr noundef %59) #17, !dbg !6245
  store i32 %call94, ptr %result, align 4, !dbg !6246
  %60 = load i32, ptr %result, align 4, !dbg !6247
  %tobool95 = icmp ne i32 %60, 0, !dbg !6247
  br i1 %tobool95, label %if.then96, label %if.end97, !dbg !6249

if.then96:                                        ; preds = %if.end92
  %61 = load ptr, ptr %handle, align 8, !dbg !6250
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %61, ptr noundef @.str.15) #17, !dbg !6250
  br label %end117, !dbg !6252

if.end97:                                         ; preds = %if.end92
  %62 = load ptr, ptr %link.addr, align 8, !dbg !6253
  %device98 = getelementptr inbounds %struct.acpi_pci_link, ptr %62, i32 0, i32 1, !dbg !6255
  %63 = load ptr, ptr %device98, align 8, !dbg !6255
  %status99 = getelementptr inbounds %struct.acpi_device, ptr %63, i32 0, i32 6, !dbg !6256
  %bf.load = load i32, ptr %status99, align 8, !dbg !6257
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !6257
  %bf.clear = and i32 %bf.lshr, 1, !dbg !6257
  %tobool100 = icmp ne i32 %bf.clear, 0, !dbg !6253
  br i1 %tobool100, label %if.end102, label %if.then101, !dbg !6258

if.then101:                                       ; preds = %if.end97
  %64 = load ptr, ptr %handle, align 8, !dbg !6259
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %64, ptr noundef @.str.16) #17, !dbg !6259
  br label %if.end102, !dbg !6259

if.end102:                                        ; preds = %if.then101, %if.end97
  %65 = load ptr, ptr %link.addr, align 8, !dbg !6260
  %call103 = call i32 @acpi_pci_link_get_current(ptr noundef %65) #17, !dbg !6261
  store i32 %call103, ptr %result, align 4, !dbg !6262
  %66 = load i32, ptr %result, align 4, !dbg !6263
  %tobool104 = icmp ne i32 %66, 0, !dbg !6263
  br i1 %tobool104, label %if.then105, label %if.end106, !dbg !6265

if.then105:                                       ; preds = %if.end102
  br label %end117, !dbg !6266

if.end106:                                        ; preds = %if.end102
  %67 = load ptr, ptr %link.addr, align 8, !dbg !6268
  %irq107 = getelementptr inbounds %struct.acpi_pci_link, ptr %67, i32 0, i32 2, !dbg !6270
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq107, i32 0, i32 0, !dbg !6271
  %68 = load i32, ptr %active, align 8, !dbg !6271
  %69 = load i32, ptr %irq.addr, align 4, !dbg !6272
  %cmp108 = icmp ne i32 %68, %69, !dbg !6273
  br i1 %cmp108, label %if.then110, label %if.end115, !dbg !6274

if.then110:                                       ; preds = %if.end106
  %70 = load ptr, ptr %handle, align 8, !dbg !6275
  %71 = load ptr, ptr %link.addr, align 8, !dbg !6275
  %irq111 = getelementptr inbounds %struct.acpi_pci_link, ptr %71, i32 0, i32 2, !dbg !6275
  %active112 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq111, i32 0, i32 0, !dbg !6275
  %72 = load i32, ptr %active112, align 8, !dbg !6275
  %73 = load i32, ptr %irq.addr, align 4, !dbg !6275
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %70, ptr noundef @.str.17, i32 noundef %72, i32 noundef %73) #17, !dbg !6275
  %74 = load i32, ptr %irq.addr, align 4, !dbg !6277
  %75 = load ptr, ptr %link.addr, align 8, !dbg !6278
  %irq113 = getelementptr inbounds %struct.acpi_pci_link, ptr %75, i32 0, i32 2, !dbg !6279
  %active114 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq113, i32 0, i32 0, !dbg !6280
  store i32 %74, ptr %active114, align 8, !dbg !6281
  br label %if.end115, !dbg !6282

if.end115:                                        ; preds = %if.then110, %if.end106
  store i32 0, ptr %tmp116, align 4, !dbg !6283
  %76 = load i32, ptr %tmp116, align 4, !dbg !6286
  br label %end117, !dbg !6287

end117:                                           ; preds = %if.end115, %if.then105, %if.then96, %if.then91, %sw.default
  call void @llvm.dbg.label(metadata !6067), !dbg !6288
  %77 = load ptr, ptr %resource, align 8, !dbg !6289
  call void @kfree(ptr noundef %77) #17, !dbg !6290
  %78 = load i32, ptr %result, align 4, !dbg !6291
  store i32 %78, ptr %retval, align 4, !dbg !6292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6292

cleanup:                                          ; preds = %end117, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #16, !dbg !6293
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !6293
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #16, !dbg !6293
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #16, !dbg !6293
  call void @llvm.lifetime.end.p0(i64 8, ptr %resource) #16, !dbg !6293
  %79 = load i32, ptr %retval, align 4, !dbg !6293
  ret i32 %79, !dbg !6293
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6294 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6298, metadata !DIExpression()), !dbg !6300
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6299, metadata !DIExpression()), !dbg !6301
  %0 = load i64, ptr %size.addr, align 8, !dbg !6302
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6303
  %or = or i32 %1, 256, !dbg !6304
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !6305
  ret ptr %call, !dbg !6306
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #8 align 16 !dbg !6307 {
entry:
  %call = call i64 @native_save_fl() #17, !dbg !6311
  ret i64 %call, !dbg !6312
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #8 align 16 !dbg !6313 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6317, metadata !DIExpression()), !dbg !6318
  %0 = load i64, ptr %flags.addr, align 8, !dbg !6319
  %and = and i64 %0, 512, !dbg !6320
  %tobool = icmp ne i64 %and, 0, !dbg !6321
  %lnot = xor i1 %tobool, true, !dbg !6321
  %lnot.ext = zext i1 %lnot to i32, !dbg !6321
  ret i32 %lnot.ext, !dbg !6322
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6323 dso_local i32 @acpi_set_current_resources(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6326 dso_local void @acpi_evaluation_failure_warn(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6329 dso_local i32 @acpi_bus_get_status(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_pci_link_get_current(ptr noundef %link) #3 align 16 !dbg !6330 {
entry:
  %retval = alloca i32, align 4
  %link.addr = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %status = alloca i32, align 4
  %result = alloca i32, align 4
  %irq = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  store ptr %link, ptr %link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %link.addr, metadata !6332, metadata !DIExpression()), !dbg !6338
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #16, !dbg !6339
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !6333, metadata !DIExpression()), !dbg !6340
  %0 = load ptr, ptr %link.addr, align 8, !dbg !6341
  %device = getelementptr inbounds %struct.acpi_pci_link, ptr %0, i32 0, i32 1, !dbg !6342
  %1 = load ptr, ptr %device, align 8, !dbg !6342
  %handle1 = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !6343
  %2 = load ptr, ptr %handle1, align 8, !dbg !6343
  store ptr %2, ptr %handle, align 8, !dbg !6340
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !6344
  call void @llvm.dbg.declare(metadata ptr %status, metadata !6334, metadata !DIExpression()), !dbg !6345
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #16, !dbg !6346
  call void @llvm.dbg.declare(metadata ptr %result, metadata !6335, metadata !DIExpression()), !dbg !6347
  store i32 0, ptr %result, align 4, !dbg !6347
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #16, !dbg !6348
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !6336, metadata !DIExpression()), !dbg !6349
  store i32 0, ptr %irq, align 4, !dbg !6349
  %3 = load ptr, ptr %link.addr, align 8, !dbg !6350
  %irq2 = getelementptr inbounds %struct.acpi_pci_link, ptr %3, i32 0, i32 2, !dbg !6351
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq2, i32 0, i32 0, !dbg !6352
  store i32 0, ptr %active, align 8, !dbg !6353
  %4 = load i32, ptr @acpi_strict, align 4, !dbg !6354
  %tobool = icmp ne i32 %4, 0, !dbg !6354
  br i1 %tobool, label %if.then, label %if.end11, !dbg !6356

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %link.addr, align 8, !dbg !6357
  %device3 = getelementptr inbounds %struct.acpi_pci_link, ptr %5, i32 0, i32 1, !dbg !6359
  %6 = load ptr, ptr %device3, align 8, !dbg !6359
  %call = call i32 @acpi_bus_get_status(ptr noundef %6) #17, !dbg !6360
  store i32 %call, ptr %result, align 4, !dbg !6361
  %7 = load i32, ptr %result, align 4, !dbg !6362
  %tobool4 = icmp ne i32 %7, 0, !dbg !6362
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !6364

if.then5:                                         ; preds = %if.then
  %8 = load ptr, ptr %handle, align 8, !dbg !6365
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %8, ptr noundef @.str.15) #17, !dbg !6365
  br label %end, !dbg !6367

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %link.addr, align 8, !dbg !6368
  %device6 = getelementptr inbounds %struct.acpi_pci_link, ptr %9, i32 0, i32 1, !dbg !6370
  %10 = load ptr, ptr %device6, align 8, !dbg !6370
  %status7 = getelementptr inbounds %struct.acpi_device, ptr %10, i32 0, i32 6, !dbg !6371
  %bf.load = load i32, ptr %status7, align 8, !dbg !6372
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !6372
  %bf.clear = and i32 %bf.lshr, 1, !dbg !6372
  %tobool8 = icmp ne i32 %bf.clear, 0, !dbg !6368
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6373

if.then9:                                         ; preds = %if.end
  store i32 0, ptr %tmp, align 4, !dbg !6374
  %11 = load i32, ptr %tmp, align 4, !dbg !6378
  store i32 0, ptr %retval, align 4, !dbg !6379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6379

if.end10:                                         ; preds = %if.end
  br label %if.end11, !dbg !6380

if.end11:                                         ; preds = %if.end10, %entry
  %12 = load ptr, ptr %handle, align 8, !dbg !6381
  %call12 = call i32 @acpi_walk_resources(ptr noundef %12, ptr noundef @.str.19, ptr noundef @acpi_pci_link_check_current, ptr noundef %irq) #17, !dbg !6382
  store i32 %call12, ptr %status, align 4, !dbg !6383
  %13 = load i32, ptr %status, align 4, !dbg !6384
  %tobool13 = icmp ne i32 %13, 0, !dbg !6384
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !6386

if.then14:                                        ; preds = %if.end11
  %14 = load ptr, ptr %handle, align 8, !dbg !6387
  %15 = load i32, ptr %status, align 4, !dbg !6389
  call void @acpi_evaluation_failure_warn(ptr noundef %14, ptr noundef @.str.19, i32 noundef %15) #17, !dbg !6390
  store i32 -19, ptr %result, align 4, !dbg !6391
  br label %end, !dbg !6392

if.end15:                                         ; preds = %if.end11
  %16 = load i32, ptr @acpi_strict, align 4, !dbg !6393
  %tobool16 = icmp ne i32 %16, 0, !dbg !6393
  br i1 %tobool16, label %land.lhs.true, label %if.end19, !dbg !6395

land.lhs.true:                                    ; preds = %if.end15
  %17 = load i32, ptr %irq, align 4, !dbg !6396
  %tobool17 = icmp ne i32 %17, 0, !dbg !6396
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !6397

if.then18:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %handle, align 8, !dbg !6398
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %18, ptr noundef @.str.20) #17, !dbg !6398
  store i32 -19, ptr %result, align 4, !dbg !6400
  br label %if.end19, !dbg !6401

if.end19:                                         ; preds = %if.then18, %land.lhs.true, %if.end15
  %19 = load i32, ptr %irq, align 4, !dbg !6402
  %20 = load ptr, ptr %link.addr, align 8, !dbg !6403
  %irq20 = getelementptr inbounds %struct.acpi_pci_link, ptr %20, i32 0, i32 2, !dbg !6404
  %active21 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq20, i32 0, i32 0, !dbg !6405
  store i32 %19, ptr %active21, align 8, !dbg !6406
  store i32 0, ptr %tmp22, align 4, !dbg !6407
  %21 = load i32, ptr %tmp22, align 4, !dbg !6410
  br label %end, !dbg !6411

end:                                              ; preds = %if.end19, %if.then14, %if.then5
  call void @llvm.dbg.label(metadata !6337), !dbg !6412
  %22 = load i32, ptr %result, align 4, !dbg !6413
  store i32 %22, ptr %retval, align 4, !dbg !6414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6414

cleanup:                                          ; preds = %end, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #16, !dbg !6415
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #16, !dbg !6415
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !6415
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #16, !dbg !6415
  %23 = load i32, ptr %retval, align 4, !dbg !6415
  ret i32 %23, !dbg !6415
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6416 dso_local void @kfree(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6419 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6421, metadata !DIExpression()), !dbg !6426
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6422, metadata !DIExpression()), !dbg !6427
  %0 = load i64, ptr %size.addr, align 8, !dbg !6428
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6429
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6430

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6431
  %tobool = icmp ne i64 %2, 0, !dbg !6431
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6432

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6433
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6423, metadata !DIExpression()), !dbg !6434
  %3 = load i64, ptr %size.addr, align 8, !dbg !6435
  %cmp = icmp ugt i64 %3, 8192, !dbg !6437
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6438

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6439
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6440
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6441
  store ptr %call, ptr %retval, align 8, !dbg !6442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6442

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6443
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6443
  store i32 %call2, ptr %index, align 4, !dbg !6444
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6445
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6446
  %9 = ptrtoint ptr %8 to i64, !dbg !6446
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6447
  %idxprom = zext i32 %call3 to i64, !dbg !6448
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6448
  %10 = load i32, ptr %index, align 4, !dbg !6449
  %idxprom4 = zext i32 %10 to i64, !dbg !6448
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6448
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6448
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6450
  %13 = load i64, ptr %size.addr, align 8, !dbg !6451
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6452
  store ptr %call6, ptr %retval, align 8, !dbg !6453
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6453

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6454
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6455
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6456
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6457
  store ptr %call8, ptr %retval, align 8, !dbg !6458
  br label %return, !dbg !6458

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6459
  ret ptr %16, !dbg !6459
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6460 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !6461 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6465, metadata !DIExpression()), !dbg !6467
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6466, metadata !DIExpression()), !dbg !6468
  %0 = load i64, ptr %size.addr, align 8, !dbg !6469
  %tobool = icmp ne i64 %0, 0, !dbg !6469
  br i1 %tobool, label %if.end, label %if.then, !dbg !6471

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6472
  br label %return, !dbg !6472

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6473
  %cmp = icmp ule i64 %1, 8, !dbg !6475
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6476

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6477
  br label %return, !dbg !6477

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6478
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6480
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6481

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6482
  %cmp4 = icmp ule i64 %3, 96, !dbg !6483
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6484

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6485
  br label %return, !dbg !6485

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6486
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6488
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6489

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6490
  %cmp9 = icmp ule i64 %5, 192, !dbg !6491
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6492

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6493
  br label %return, !dbg !6493

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6494
  %cmp12 = icmp ule i64 %6, 8, !dbg !6496
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6497

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6498
  br label %return, !dbg !6498

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6499
  %cmp15 = icmp ule i64 %7, 16, !dbg !6501
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6502

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6503
  br label %return, !dbg !6503

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6504
  %cmp18 = icmp ule i64 %8, 32, !dbg !6506
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6507

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6508
  br label %return, !dbg !6508

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6509
  %cmp21 = icmp ule i64 %9, 64, !dbg !6511
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6512

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6513
  br label %return, !dbg !6513

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6514
  %cmp24 = icmp ule i64 %10, 128, !dbg !6516
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6517

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6518
  br label %return, !dbg !6518

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6519
  %cmp27 = icmp ule i64 %11, 256, !dbg !6521
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6522

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6523
  br label %return, !dbg !6523

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6524
  %cmp30 = icmp ule i64 %12, 512, !dbg !6526
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6527

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6528
  br label %return, !dbg !6528

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6529
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6531
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6532

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6533
  br label %return, !dbg !6533

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6534
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6536
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6537

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6538
  br label %return, !dbg !6538

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6539
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6541
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6542

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6543
  br label %return, !dbg !6543

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6544
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6546
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6547

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6548
  br label %return, !dbg !6548

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6549
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6551
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6552

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6553
  br label %return, !dbg !6553

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6554
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6556
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6557

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6558
  br label %return, !dbg !6558

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6559
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6561
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6562

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6563
  br label %return, !dbg !6563

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6564
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6566
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6567

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6568
  br label %return, !dbg !6568

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6569
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6571
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6572

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6573
  br label %return, !dbg !6573

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6574
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6576
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6577

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6578
  br label %return, !dbg !6578

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6579
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6581
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6582

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6583
  br label %return, !dbg !6583

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6584
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6586
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6587

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6588
  br label %return, !dbg !6588

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6589, !range !6591, !noundef !946
  %tobool69 = trunc i8 %25 to i1, !dbg !6589
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6592

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6593

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #21, !dbg !6594, !srcloc !6597
  unreachable, !dbg !6594

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6598

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6599

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6600

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6602

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6600

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.18, i32 480, i32 0, i64 12) #16, !dbg !6604, !srcloc !6606
  br label %do.end75, !dbg !6604

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6600

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6607
  br label %return, !dbg !6607

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6608
  ret i32 %26, !dbg !6608
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6609 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !6615 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6619, metadata !DIExpression()), !dbg !6621
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6620, metadata !DIExpression()), !dbg !6622
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6623
  %and = and i32 %0, 17, !dbg !6623
  %cmp = icmp eq i32 %and, 0, !dbg !6623
  %lnot = xor i1 %cmp, true, !dbg !6623
  %lnot1 = xor i1 %lnot, true, !dbg !6623
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6623
  %conv = sext i32 %lnot.ext to i64, !dbg !6623
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6623
  %tobool = icmp ne i64 %expval, 0, !dbg !6623
  br i1 %tobool, label %if.then, label %if.end, !dbg !6625

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6626
  br label %return, !dbg !6626

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6627
  %and2 = and i32 %1, 1, !dbg !6629
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6629
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6630

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6631
  br label %return, !dbg !6631

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6632
  br label %return, !dbg !6632

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6634
  ret i32 %2, !dbg !6634
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6635 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6636 dso_local void @__compiletime_assert_204() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #8 align 16 !dbg !6637 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !6640
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6639, metadata !DIExpression()), !dbg !6641
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #16, !dbg !6642, !srcloc !6643
  %0 = load i64, ptr %flags, align 8, !dbg !6644
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6645
  ret i64 %0, !dbg !6646
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6647 dso_local i32 @acpi_walk_resources(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_pci_link_check_current(ptr noundef %resource, ptr noundef %context) #3 align 16 !dbg !6655 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %irq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %p = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %p3 = alloca ptr, align 8
  %tmp8 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !6657, metadata !DIExpression()), !dbg !6667
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !6658, metadata !DIExpression()), !dbg !6668
  call void @llvm.lifetime.start.p0(i64 8, ptr %irq) #16, !dbg !6669
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !6659, metadata !DIExpression()), !dbg !6670
  %0 = load ptr, ptr %context.addr, align 8, !dbg !6671
  store ptr %0, ptr %irq, align 8, !dbg !6670
  %1 = load ptr, ptr %resource.addr, align 8, !dbg !6672
  %type = getelementptr inbounds %struct.acpi_resource, ptr %1, i32 0, i32 0, !dbg !6673
  %2 = load i32, ptr %type, align 1, !dbg !6673
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 7, label %sw.bb
    i32 0, label %sw.bb1
    i32 15, label %sw.bb2
  ], !dbg !6674

sw.bb:                                            ; preds = %entry, %entry
  store i32 0, ptr %retval, align 4, !dbg !6675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !6675

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6676
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6660, metadata !DIExpression()), !dbg !6677
  %3 = load ptr, ptr %resource.addr, align 8, !dbg !6678
  %data = getelementptr inbounds %struct.acpi_resource, ptr %3, i32 0, i32 2, !dbg !6679
  store ptr %data, ptr %p, align 8, !dbg !6677
  %4 = load ptr, ptr %p, align 8, !dbg !6680
  %interrupt_count = getelementptr inbounds %struct.acpi_resource_irq, ptr %4, i32 0, i32 5, !dbg !6682
  %5 = load i8, ptr %interrupt_count, align 1, !dbg !6682
  %tobool = icmp ne i8 %5, 0, !dbg !6680
  br i1 %tobool, label %if.end, label %if.then, !dbg !6683

if.then:                                          ; preds = %sw.bb1
  store i32 0, ptr %tmp, align 4, !dbg !6684
  %6 = load i32, ptr %tmp, align 4, !dbg !6688
  store i32 0, ptr %retval, align 4, !dbg !6689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6689

if.end:                                           ; preds = %sw.bb1
  %7 = load ptr, ptr %p, align 8, !dbg !6690
  %8 = getelementptr inbounds %struct.acpi_resource_irq, ptr %7, i32 0, i32 6, !dbg !6691
  %interrupts = getelementptr inbounds %struct.anon.17, ptr %8, i32 0, i32 1, !dbg !6691
  %arrayidx = getelementptr [0 x i8], ptr %interrupts, i64 0, i64 0, !dbg !6690
  %9 = load i8, ptr %arrayidx, align 1, !dbg !6690
  %conv = zext i8 %9 to i32, !dbg !6690
  %10 = load ptr, ptr %irq, align 8, !dbg !6692
  store i32 %conv, ptr %10, align 4, !dbg !6693
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6694

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6695
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 2, label %sw.epilog
  ]

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p3) #16, !dbg !6696
  call void @llvm.dbg.declare(metadata ptr %p3, metadata !6664, metadata !DIExpression()), !dbg !6697
  %11 = load ptr, ptr %resource.addr, align 8, !dbg !6698
  %data4 = getelementptr inbounds %struct.acpi_resource, ptr %11, i32 0, i32 2, !dbg !6699
  store ptr %data4, ptr %p3, align 8, !dbg !6697
  %12 = load ptr, ptr %p3, align 8, !dbg !6700
  %interrupt_count5 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %12, i32 0, i32 5, !dbg !6702
  %13 = load i8, ptr %interrupt_count5, align 1, !dbg !6702
  %tobool6 = icmp ne i8 %13, 0, !dbg !6700
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !6703

if.then7:                                         ; preds = %sw.bb2
  store i32 0, ptr %tmp8, align 4, !dbg !6704
  %14 = load i32, ptr %tmp8, align 4, !dbg !6708
  store i32 0, ptr %retval, align 4, !dbg !6709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup12, !dbg !6709

if.end9:                                          ; preds = %sw.bb2
  %15 = load ptr, ptr %p3, align 8, !dbg !6710
  %16 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %15, i32 0, i32 7, !dbg !6711
  %interrupts10 = getelementptr inbounds %struct.anon.23, ptr %16, i32 0, i32 1, !dbg !6711
  %arrayidx11 = getelementptr [0 x i32], ptr %interrupts10, i64 0, i64 0, !dbg !6710
  %17 = load i32, ptr %arrayidx11, align 1, !dbg !6710
  %18 = load ptr, ptr %irq, align 8, !dbg !6712
  store i32 %17, ptr %18, align 4, !dbg !6713
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup12, !dbg !6714

cleanup12:                                        ; preds = %if.end9, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p3) #16, !dbg !6715
  %cleanup.dest13 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest13, label %cleanup15 [
    i32 2, label %sw.epilog
  ]

sw.default:                                       ; preds = %entry
  store i32 0, ptr %tmp14, align 4, !dbg !6716
  %19 = load i32, ptr %tmp14, align 4, !dbg !6719
  store i32 0, ptr %retval, align 4, !dbg !6720
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !6720

sw.epilog:                                        ; preds = %cleanup12, %cleanup
  store i32 16387, ptr %retval, align 4, !dbg !6721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !6721

cleanup15:                                        ; preds = %sw.epilog, %sw.default, %cleanup12, %cleanup, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %irq) #16, !dbg !6722
  %20 = load i32, ptr %retval, align 4, !dbg !6722
  ret i32 %20, !dbg !6722
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_irq_pci_sharing_penalty(i32 noundef %irq) #3 align 16 !dbg !6723 {
entry:
  %irq.addr = alloca i32, align 4
  %link = alloca ptr, align 8
  %penalty = alloca i32, align 4
  %i = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr20 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !6725, metadata !DIExpression()), !dbg !6735
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #16, !dbg !6736
  call void @llvm.dbg.declare(metadata ptr %link, metadata !6726, metadata !DIExpression()), !dbg !6737
  call void @llvm.lifetime.start.p0(i64 4, ptr %penalty) #16, !dbg !6738
  call void @llvm.dbg.declare(metadata ptr %penalty, metadata !6727, metadata !DIExpression()), !dbg !6739
  store i32 0, ptr %penalty, align 4, !dbg !6739
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6740
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6728, metadata !DIExpression()), !dbg !6741
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6742
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6729, metadata !DIExpression()), !dbg !6742
  %0 = load ptr, ptr @acpi_link_list, align 8, !dbg !6742
  store ptr %0, ptr %__mptr, align 8, !dbg !6742
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6742
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6742
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6742
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6743
  %2 = load ptr, ptr %tmp, align 8, !dbg !6742
  store ptr %2, ptr %link, align 8, !dbg !6743
  br label %for.cond, !dbg !6743

for.cond:                                         ; preds = %for.inc19, %entry
  %3 = load ptr, ptr %link, align 8, !dbg !6744
  %list = getelementptr inbounds %struct.acpi_pci_link, ptr %3, i32 0, i32 0, !dbg !6744
  %cmp = icmp eq ptr %list, @acpi_link_list, !dbg !6744
  %lnot = xor i1 %cmp, true, !dbg !6744
  br i1 %lnot, label %for.body, label %for.end24, !dbg !6743

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %link, align 8, !dbg !6745
  %irq1 = getelementptr inbounds %struct.acpi_pci_link, ptr %4, i32 0, i32 2, !dbg !6748
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq1, i32 0, i32 0, !dbg !6749
  %5 = load i32, ptr %active, align 8, !dbg !6749
  %tobool = icmp ne i32 %5, 0, !dbg !6745
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6750

land.lhs.true:                                    ; preds = %for.body
  %6 = load ptr, ptr %link, align 8, !dbg !6751
  %irq2 = getelementptr inbounds %struct.acpi_pci_link, ptr %6, i32 0, i32 2, !dbg !6752
  %active3 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq2, i32 0, i32 0, !dbg !6753
  %7 = load i32, ptr %active3, align 8, !dbg !6753
  %8 = load i32, ptr %irq.addr, align 4, !dbg !6754
  %cmp4 = icmp eq i32 %7, %8, !dbg !6755
  br i1 %cmp4, label %if.then, label %if.end, !dbg !6756

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, ptr %penalty, align 4, !dbg !6757
  %add = add i32 %9, 4096, !dbg !6757
  store i32 %add, ptr %penalty, align 4, !dbg !6757
  br label %if.end, !dbg !6758

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  store i32 0, ptr %i, align 4, !dbg !6759
  br label %for.cond5, !dbg !6761

for.cond5:                                        ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4, !dbg !6762
  %11 = load ptr, ptr %link, align 8, !dbg !6764
  %irq6 = getelementptr inbounds %struct.acpi_pci_link, ptr %11, i32 0, i32 2, !dbg !6765
  %possible_count = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq6, i32 0, i32 4, !dbg !6766
  %12 = load i8, ptr %possible_count, align 1, !dbg !6766
  %conv = zext i8 %12 to i32, !dbg !6764
  %cmp7 = icmp slt i32 %10, %conv, !dbg !6767
  br i1 %cmp7, label %for.body9, label %for.end, !dbg !6768

for.body9:                                        ; preds = %for.cond5
  %13 = load ptr, ptr %link, align 8, !dbg !6769
  %irq10 = getelementptr inbounds %struct.acpi_pci_link, ptr %13, i32 0, i32 2, !dbg !6771
  %possible = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq10, i32 0, i32 5, !dbg !6772
  %14 = load i32, ptr %i, align 4, !dbg !6773
  %idxprom = sext i32 %14 to i64, !dbg !6769
  %arrayidx = getelementptr [16 x i32], ptr %possible, i64 0, i64 %idxprom, !dbg !6769
  %15 = load i32, ptr %arrayidx, align 4, !dbg !6769
  %16 = load i32, ptr %irq.addr, align 4, !dbg !6774
  %cmp11 = icmp eq i32 %15, %16, !dbg !6775
  br i1 %cmp11, label %if.then13, label %if.end18, !dbg !6776

if.then13:                                        ; preds = %for.body9
  %17 = load ptr, ptr %link, align 8, !dbg !6777
  %irq14 = getelementptr inbounds %struct.acpi_pci_link, ptr %17, i32 0, i32 2, !dbg !6778
  %possible_count15 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq14, i32 0, i32 4, !dbg !6779
  %18 = load i8, ptr %possible_count15, align 1, !dbg !6779
  %conv16 = zext i8 %18 to i32, !dbg !6777
  %div = sdiv i32 256, %conv16, !dbg !6780
  %19 = load i32, ptr %penalty, align 4, !dbg !6781
  %add17 = add i32 %19, %div, !dbg !6781
  store i32 %add17, ptr %penalty, align 4, !dbg !6781
  br label %if.end18, !dbg !6782

if.end18:                                         ; preds = %if.then13, %for.body9
  br label %for.inc, !dbg !6774

for.inc:                                          ; preds = %if.end18
  %20 = load i32, ptr %i, align 4, !dbg !6783
  %inc = add i32 %20, 1, !dbg !6783
  store i32 %inc, ptr %i, align 4, !dbg !6783
  br label %for.cond5, !dbg !6784, !llvm.loop !6785

for.end:                                          ; preds = %for.cond5
  br label %for.inc19, !dbg !6787

for.inc19:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr20) #16, !dbg !6788
  call void @llvm.dbg.declare(metadata ptr %__mptr20, metadata !6732, metadata !DIExpression()), !dbg !6788
  %21 = load ptr, ptr %link, align 8, !dbg !6788
  %list21 = getelementptr inbounds %struct.acpi_pci_link, ptr %21, i32 0, i32 0, !dbg !6788
  %next = getelementptr inbounds %struct.list_head, ptr %list21, i32 0, i32 0, !dbg !6788
  %22 = load ptr, ptr %next, align 8, !dbg !6788
  store ptr %22, ptr %__mptr20, align 8, !dbg !6788
  %23 = load ptr, ptr %__mptr20, align 8, !dbg !6788
  %add.ptr23 = getelementptr i8, ptr %23, i64 0, !dbg !6788
  store ptr %add.ptr23, ptr %tmp22, align 8, !dbg !6788
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr20) #16, !dbg !6744
  %24 = load ptr, ptr %tmp22, align 8, !dbg !6788
  store ptr %24, ptr %link, align 8, !dbg !6744
  br label %for.cond, !dbg !6744, !llvm.loop !6789

for.end24:                                        ; preds = %for.cond
  %25 = load i32, ptr %penalty, align 4, !dbg !6791
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6792
  call void @llvm.lifetime.end.p0(i64 4, ptr %penalty) #16, !dbg !6792
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #16, !dbg !6792
  ret i32 %25, !dbg !6793
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_irq_penalty_update(ptr noundef %str, i32 noundef %used) #0 section ".init.text" align 16 !dbg !6794 {
entry:
  %str.addr = alloca ptr, align 8
  %used.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %irq = alloca i32, align 4
  %new_penalty = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !6798, metadata !DIExpression()), !dbg !6807
  store i32 %used, ptr %used.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %used.addr, metadata !6799, metadata !DIExpression()), !dbg !6808
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6809
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6800, metadata !DIExpression()), !dbg !6810
  store i32 0, ptr %i, align 4, !dbg !6811
  br label %for.cond, !dbg !6812

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6813
  %cmp = icmp slt i32 %0, 16, !dbg !6814
  br i1 %cmp, label %for.body, label %for.end, !dbg !6815

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !6816
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6801, metadata !DIExpression()), !dbg !6817
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #16, !dbg !6818
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !6805, metadata !DIExpression()), !dbg !6819
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_penalty) #16, !dbg !6820
  call void @llvm.dbg.declare(metadata ptr %new_penalty, metadata !6806, metadata !DIExpression()), !dbg !6821
  %call = call i32 @get_option(ptr noundef %str.addr, ptr noundef %irq) #17, !dbg !6822
  store i32 %call, ptr %retval1, align 4, !dbg !6823
  %1 = load i32, ptr %retval1, align 4, !dbg !6824
  %tobool = icmp ne i32 %1, 0, !dbg !6824
  br i1 %tobool, label %if.end, label %if.then, !dbg !6826

if.then:                                          ; preds = %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6827

if.end:                                           ; preds = %for.body
  %2 = load i32, ptr %irq, align 4, !dbg !6828
  %cmp2 = icmp slt i32 %2, 0, !dbg !6830
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !6831

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, ptr %irq, align 4, !dbg !6832
  %cmp3 = icmp sge i32 %3, 16, !dbg !6833
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6834

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6835

if.end5:                                          ; preds = %lor.lhs.false
  %4 = load i32, ptr %used.addr, align 4, !dbg !6836
  %tobool6 = icmp ne i32 %4, 0, !dbg !6836
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !6838

if.then7:                                         ; preds = %if.end5
  %5 = load i32, ptr %irq, align 4, !dbg !6839
  %idxprom = sext i32 %5 to i64, !dbg !6840
  %arrayidx = getelementptr [16 x i32], ptr @acpi_isa_irq_penalty, i64 0, i64 %idxprom, !dbg !6840
  %6 = load i32, ptr %arrayidx, align 4, !dbg !6840
  %add = add i32 %6, 1048576, !dbg !6841
  store i32 %add, ptr %new_penalty, align 4, !dbg !6842
  br label %if.end8, !dbg !6843

if.else:                                          ; preds = %if.end5
  store i32 0, ptr %new_penalty, align 4, !dbg !6844
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %7 = load i32, ptr %new_penalty, align 4, !dbg !6845
  %8 = load i32, ptr %irq, align 4, !dbg !6846
  %idxprom9 = sext i32 %8 to i64, !dbg !6847
  %arrayidx10 = getelementptr [16 x i32], ptr @acpi_isa_irq_penalty, i64 0, i64 %idxprom9, !dbg !6847
  store i32 %7, ptr %arrayidx10, align 4, !dbg !6848
  %9 = load i32, ptr %retval1, align 4, !dbg !6849
  %cmp11 = icmp ne i32 %9, 2, !dbg !6851
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !6852

if.then12:                                        ; preds = %if.end8
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6853

if.end13:                                         ; preds = %if.end8
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6854
  br label %cleanup, !dbg !6854

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_penalty) #16, !dbg !6854
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #16, !dbg !6854
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !6854
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6855

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %10 = load i32, ptr %i, align 4, !dbg !6856
  %inc = add i32 %10, 1, !dbg !6856
  store i32 %inc, ptr %i, align 4, !dbg !6856
  br label %for.cond, !dbg !6857, !llvm.loop !6858

for.end:                                          ; preds = %cleanup, %for.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6860
  ret i32 1, !dbg !6861

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6862 dso_local i32 @get_option(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irqrouter_resume() #3 align 16 !dbg !6866 {
entry:
  %link = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #16, !dbg !6875
  call void @llvm.dbg.declare(metadata ptr %link, metadata !6868, metadata !DIExpression()), !dbg !6876
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6877
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6869, metadata !DIExpression()), !dbg !6877
  %0 = load ptr, ptr @acpi_link_list, align 8, !dbg !6877
  store ptr %0, ptr %__mptr, align 8, !dbg !6877
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6877
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6877
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6877
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6878
  %2 = load ptr, ptr %tmp, align 8, !dbg !6877
  store ptr %2, ptr %link, align 8, !dbg !6878
  br label %for.cond, !dbg !6878

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %link, align 8, !dbg !6879
  %list = getelementptr inbounds %struct.acpi_pci_link, ptr %3, i32 0, i32 0, !dbg !6879
  %cmp = icmp eq ptr %list, @acpi_link_list, !dbg !6879
  %lnot = xor i1 %cmp, true, !dbg !6879
  br i1 %lnot, label %for.body, label %for.end, !dbg !6878

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %link, align 8, !dbg !6880
  %call = call i32 @acpi_pci_link_resume(ptr noundef %4) #17, !dbg !6882
  br label %for.inc, !dbg !6883

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #16, !dbg !6884
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6872, metadata !DIExpression()), !dbg !6884
  %5 = load ptr, ptr %link, align 8, !dbg !6884
  %list2 = getelementptr inbounds %struct.acpi_pci_link, ptr %5, i32 0, i32 0, !dbg !6884
  %next = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 0, !dbg !6884
  %6 = load ptr, ptr %next, align 8, !dbg !6884
  store ptr %6, ptr %__mptr1, align 8, !dbg !6884
  %7 = load ptr, ptr %__mptr1, align 8, !dbg !6884
  %add.ptr4 = getelementptr i8, ptr %7, i64 0, !dbg !6884
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !6884
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #16, !dbg !6879
  %8 = load ptr, ptr %tmp3, align 8, !dbg !6884
  store ptr %8, ptr %link, align 8, !dbg !6879
  br label %for.cond, !dbg !6879, !llvm.loop !6885

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #16, !dbg !6887
  ret void, !dbg !6887
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_pci_link_resume(ptr noundef %link) #3 align 16 !dbg !6888 {
entry:
  %retval = alloca i32, align 4
  %link.addr = alloca ptr, align 8
  store ptr %link, ptr %link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %link.addr, metadata !6890, metadata !DIExpression()), !dbg !6891
  %0 = load ptr, ptr %link.addr, align 8, !dbg !6892
  %refcnt = getelementptr inbounds %struct.acpi_pci_link, ptr %0, i32 0, i32 3, !dbg !6894
  %1 = load i32, ptr %refcnt, align 4, !dbg !6894
  %tobool = icmp ne i32 %1, 0, !dbg !6892
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6895

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %link.addr, align 8, !dbg !6896
  %irq = getelementptr inbounds %struct.acpi_pci_link, ptr %2, i32 0, i32 2, !dbg !6897
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq, i32 0, i32 0, !dbg !6898
  %3 = load i32, ptr %active, align 8, !dbg !6898
  %tobool1 = icmp ne i32 %3, 0, !dbg !6896
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !6899

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %link.addr, align 8, !dbg !6900
  %irq3 = getelementptr inbounds %struct.acpi_pci_link, ptr %4, i32 0, i32 2, !dbg !6901
  %initialized = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq3, i32 0, i32 6, !dbg !6902
  %bf.load = load i8, ptr %initialized, align 8, !dbg !6902
  %bf.clear = and i8 %bf.load, 1, !dbg !6902
  %conv = zext i8 %bf.clear to i32, !dbg !6900
  %tobool4 = icmp ne i32 %conv, 0, !dbg !6900
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6903

if.then:                                          ; preds = %land.lhs.true2
  %5 = load ptr, ptr %link.addr, align 8, !dbg !6904
  %6 = load ptr, ptr %link.addr, align 8, !dbg !6905
  %irq5 = getelementptr inbounds %struct.acpi_pci_link, ptr %6, i32 0, i32 2, !dbg !6906
  %active6 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq5, i32 0, i32 0, !dbg !6907
  %7 = load i32, ptr %active6, align 8, !dbg !6907
  %call = call i32 @acpi_pci_link_set(ptr noundef %5, i32 noundef %7) #17, !dbg !6908
  store i32 %call, ptr %retval, align 4, !dbg !6909
  br label %return, !dbg !6909

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !6910
  br label %return, !dbg !6910

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !6911
  ret i32 %8, !dbg !6911
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_pci_link_add(ptr noundef %device, ptr noundef %not_used) #3 align 16 !dbg !6912 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %not_used.addr = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %link = alloca ptr, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !6914, metadata !DIExpression()), !dbg !6921
  store ptr %not_used, ptr %not_used.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %not_used.addr, metadata !6915, metadata !DIExpression()), !dbg !6922
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #16, !dbg !6923
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !6916, metadata !DIExpression()), !dbg !6924
  %0 = load ptr, ptr %device.addr, align 8, !dbg !6925
  %handle1 = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 2, !dbg !6926
  %1 = load ptr, ptr %handle1, align 8, !dbg !6926
  store ptr %1, ptr %handle, align 8, !dbg !6924
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #16, !dbg !6927
  call void @llvm.dbg.declare(metadata ptr %link, metadata !6917, metadata !DIExpression()), !dbg !6928
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #16, !dbg !6929
  call void @llvm.dbg.declare(metadata ptr %result, metadata !6918, metadata !DIExpression()), !dbg !6930
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6931
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6919, metadata !DIExpression()), !dbg !6932
  %call = call noalias ptr @kzalloc(i64 noundef 104, i32 noundef 3264) #19, !dbg !6933
  store ptr %call, ptr %link, align 8, !dbg !6934
  %2 = load ptr, ptr %link, align 8, !dbg !6935
  %tobool = icmp ne ptr %2, null, !dbg !6935
  br i1 %tobool, label %if.end, label %if.then, !dbg !6937

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6938

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %device.addr, align 8, !dbg !6939
  %4 = load ptr, ptr %link, align 8, !dbg !6940
  %device2 = getelementptr inbounds %struct.acpi_pci_link, ptr %4, i32 0, i32 1, !dbg !6941
  store ptr %3, ptr %device2, align 8, !dbg !6942
  %5 = load ptr, ptr %device.addr, align 8, !dbg !6943
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %5, i32 0, i32 8, !dbg !6943
  %device_name = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 6, !dbg !6943
  %arraydecay = getelementptr inbounds [40 x i8], ptr %device_name, i64 0, i64 0, !dbg !6943
  %call3 = call ptr @strcpy(ptr noundef %arraydecay, ptr noundef @.str.21) #17, !dbg !6944
  %6 = load ptr, ptr %device.addr, align 8, !dbg !6945
  %pnp4 = getelementptr inbounds %struct.acpi_device, ptr %6, i32 0, i32 8, !dbg !6945
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp4, i32 0, i32 7, !dbg !6945
  %arraydecay5 = getelementptr inbounds [20 x i8], ptr %device_class, i64 0, i64 0, !dbg !6945
  %call6 = call ptr @strcpy(ptr noundef %arraydecay5, ptr noundef @.str.22) #17, !dbg !6946
  %7 = load ptr, ptr %link, align 8, !dbg !6947
  %8 = load ptr, ptr %device.addr, align 8, !dbg !6948
  %driver_data = getelementptr inbounds %struct.acpi_device, ptr %8, i32 0, i32 17, !dbg !6949
  store ptr %7, ptr %driver_data, align 8, !dbg !6950
  call void @mutex_lock(ptr noundef @acpi_link_lock) #17, !dbg !6951
  %9 = load ptr, ptr %link, align 8, !dbg !6952
  %call7 = call i32 @acpi_pci_link_get_possible(ptr noundef %9) #17, !dbg !6953
  store i32 %call7, ptr %result, align 4, !dbg !6954
  %10 = load i32, ptr %result, align 4, !dbg !6955
  %tobool8 = icmp ne i32 %10, 0, !dbg !6955
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6957

if.then9:                                         ; preds = %if.end
  br label %end, !dbg !6958

if.end10:                                         ; preds = %if.end
  %11 = load ptr, ptr %link, align 8, !dbg !6959
  %call11 = call i32 @acpi_pci_link_get_current(ptr noundef %11) #17, !dbg !6960
  br label %do.body, !dbg !6961

do.body:                                          ; preds = %if.end10
  br label %do.cond, !dbg !6963

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6963

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %device.addr, align 8, !dbg !6961
  %pnp12 = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 8, !dbg !6961
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp12, i32 0, i32 0, !dbg !6961
  %arraydecay13 = getelementptr inbounds [8 x i8], ptr %bus_id, i64 0, i64 0, !dbg !6961
  %13 = load ptr, ptr %link, align 8, !dbg !6961
  %irq = getelementptr inbounds %struct.acpi_pci_link, ptr %13, i32 0, i32 2, !dbg !6961
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq, i32 0, i32 0, !dbg !6961
  %14 = load i32, ptr %active, align 8, !dbg !6961
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.23, ptr noundef %arraydecay13, i32 noundef %14) #18, !dbg !6961
  store i32 %call14, ptr %tmp, align 4, !dbg !6963
  %15 = load i32, ptr %tmp, align 4, !dbg !6961
  store i32 0, ptr %i, align 4, !dbg !6965
  br label %for.cond, !dbg !6967

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load i32, ptr %i, align 4, !dbg !6968
  %17 = load ptr, ptr %link, align 8, !dbg !6970
  %irq15 = getelementptr inbounds %struct.acpi_pci_link, ptr %17, i32 0, i32 2, !dbg !6971
  %possible_count = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq15, i32 0, i32 4, !dbg !6972
  %18 = load i8, ptr %possible_count, align 1, !dbg !6972
  %conv = zext i8 %18 to i32, !dbg !6970
  %cmp = icmp slt i32 %16, %conv, !dbg !6973
  br i1 %cmp, label %for.body, label %for.end, !dbg !6974

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %link, align 8, !dbg !6975
  %irq17 = getelementptr inbounds %struct.acpi_pci_link, ptr %19, i32 0, i32 2, !dbg !6978
  %active18 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq17, i32 0, i32 0, !dbg !6979
  %20 = load i32, ptr %active18, align 8, !dbg !6979
  %21 = load ptr, ptr %link, align 8, !dbg !6980
  %irq19 = getelementptr inbounds %struct.acpi_pci_link, ptr %21, i32 0, i32 2, !dbg !6981
  %possible = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq19, i32 0, i32 5, !dbg !6982
  %22 = load i32, ptr %i, align 4, !dbg !6983
  %idxprom = sext i32 %22 to i64, !dbg !6980
  %arrayidx = getelementptr [16 x i32], ptr %possible, i64 0, i64 %idxprom, !dbg !6980
  %23 = load i32, ptr %arrayidx, align 4, !dbg !6980
  %cmp20 = icmp ne i32 %20, %23, !dbg !6984
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !6985

if.then22:                                        ; preds = %for.body
  store i32 0, ptr %tmp23, align 4, !dbg !6986
  %24 = load i32, ptr %tmp23, align 4, !dbg !6989
  br label %if.end24, !dbg !6990

if.end24:                                         ; preds = %if.then22, %for.body
  br label %for.inc, !dbg !6991

for.inc:                                          ; preds = %if.end24
  %25 = load i32, ptr %i, align 4, !dbg !6992
  %inc = add i32 %25, 1, !dbg !6992
  store i32 %inc, ptr %i, align 4, !dbg !6992
  br label %for.cond, !dbg !6993, !llvm.loop !6994

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %link, align 8, !dbg !6996
  %device25 = getelementptr inbounds %struct.acpi_pci_link, ptr %26, i32 0, i32 1, !dbg !6998
  %27 = load ptr, ptr %device25, align 8, !dbg !6998
  %status = getelementptr inbounds %struct.acpi_device, ptr %27, i32 0, i32 6, !dbg !6999
  %bf.load = load i32, ptr %status, align 8, !dbg !7000
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !7000
  %bf.clear = and i32 %bf.lshr, 1, !dbg !7000
  %tobool26 = icmp ne i32 %bf.clear, 0, !dbg !6996
  br i1 %tobool26, label %if.end36, label %if.then27, !dbg !7001

if.then27:                                        ; preds = %for.end
  br label %do.body28, !dbg !7002

do.body28:                                        ; preds = %if.then27
  br label %do.cond29, !dbg !7004

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !7004

do.end30:                                         ; preds = %do.cond29
  %28 = load ptr, ptr %device.addr, align 8, !dbg !7002
  %pnp32 = getelementptr inbounds %struct.acpi_device, ptr %28, i32 0, i32 8, !dbg !7002
  %bus_id33 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp32, i32 0, i32 0, !dbg !7002
  %arraydecay34 = getelementptr inbounds [8 x i8], ptr %bus_id33, i64 0, i64 0, !dbg !7002
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef @.str.24, ptr noundef %arraydecay34) #18, !dbg !7002
  store i32 %call35, ptr %tmp31, align 4, !dbg !7004
  %29 = load i32, ptr %tmp31, align 4, !dbg !7002
  br label %if.end36, !dbg !7006

if.end36:                                         ; preds = %do.end30, %for.end
  %30 = load ptr, ptr %link, align 8, !dbg !7007
  %list = getelementptr inbounds %struct.acpi_pci_link, ptr %30, i32 0, i32 0, !dbg !7008
  call void @list_add_tail(ptr noundef %list, ptr noundef @acpi_link_list) #17, !dbg !7009
  br label %end, !dbg !7009

end:                                              ; preds = %if.end36, %if.then9
  call void @llvm.dbg.label(metadata !6920), !dbg !7010
  %31 = load ptr, ptr %handle, align 8, !dbg !7011
  %call37 = call i32 @acpi_evaluate_object(ptr noundef %31, ptr noundef @.str.6, ptr noundef null, ptr noundef null) #17, !dbg !7012
  call void @mutex_unlock(ptr noundef @acpi_link_lock) #17, !dbg !7013
  %32 = load i32, ptr %result, align 4, !dbg !7014
  %tobool38 = icmp ne i32 %32, 0, !dbg !7014
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !7016

if.then39:                                        ; preds = %end
  %33 = load ptr, ptr %link, align 8, !dbg !7017
  call void @kfree(ptr noundef %33) #17, !dbg !7018
  br label %if.end40, !dbg !7018

if.end40:                                         ; preds = %if.then39, %end
  %34 = load i32, ptr %result, align 4, !dbg !7019
  %cmp41 = icmp slt i32 %34, 0, !dbg !7020
  br i1 %cmp41, label %cond.true, label %cond.false, !dbg !7019

cond.true:                                        ; preds = %if.end40
  %35 = load i32, ptr %result, align 4, !dbg !7021
  br label %cond.end, !dbg !7019

cond.false:                                       ; preds = %if.end40
  br label %cond.end, !dbg !7019

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %35, %cond.true ], [ 1, %cond.false ], !dbg !7019
  store i32 %cond, ptr %retval, align 4, !dbg !7022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7022

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !7023
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #16, !dbg !7023
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #16, !dbg !7023
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #16, !dbg !7023
  %36 = load i32, ptr %retval, align 4, !dbg !7023
  ret i32 %36, !dbg !7023
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_pci_link_remove(ptr noundef %device) #3 align 16 !dbg !7024 {
entry:
  %device.addr = alloca ptr, align 8
  %link = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !7026, metadata !DIExpression()), !dbg !7028
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #16, !dbg !7029
  call void @llvm.dbg.declare(metadata ptr %link, metadata !7027, metadata !DIExpression()), !dbg !7030
  %0 = load ptr, ptr %device.addr, align 8, !dbg !7031
  %call = call ptr @acpi_driver_data(ptr noundef %0) #17, !dbg !7032
  store ptr %call, ptr %link, align 8, !dbg !7033
  call void @mutex_lock(ptr noundef @acpi_link_lock) #17, !dbg !7034
  %1 = load ptr, ptr %link, align 8, !dbg !7035
  %list = getelementptr inbounds %struct.acpi_pci_link, ptr %1, i32 0, i32 0, !dbg !7036
  call void @list_del(ptr noundef %list) #17, !dbg !7037
  call void @mutex_unlock(ptr noundef @acpi_link_lock) #17, !dbg !7038
  %2 = load ptr, ptr %link, align 8, !dbg !7039
  call void @kfree(ptr noundef %2) #17, !dbg !7040
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #16, !dbg !7041
  ret void, !dbg !7041
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7042 dso_local ptr @strcpy(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_pci_link_get_possible(ptr noundef %link) #3 align 16 !dbg !7046 {
entry:
  %retval = alloca i32, align 4
  %link.addr = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store ptr %link, ptr %link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %link.addr, metadata !7048, metadata !DIExpression()), !dbg !7051
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #16, !dbg !7052
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !7049, metadata !DIExpression()), !dbg !7053
  %0 = load ptr, ptr %link.addr, align 8, !dbg !7054
  %device = getelementptr inbounds %struct.acpi_pci_link, ptr %0, i32 0, i32 1, !dbg !7055
  %1 = load ptr, ptr %device, align 8, !dbg !7055
  %handle1 = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !7056
  %2 = load ptr, ptr %handle1, align 8, !dbg !7056
  store ptr %2, ptr %handle, align 8, !dbg !7053
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !7057
  call void @llvm.dbg.declare(metadata ptr %status, metadata !7050, metadata !DIExpression()), !dbg !7058
  %3 = load ptr, ptr %handle, align 8, !dbg !7059
  %4 = load ptr, ptr %link.addr, align 8, !dbg !7060
  %call = call i32 @acpi_walk_resources(ptr noundef %3, ptr noundef @.str.25, ptr noundef @acpi_pci_link_check_possible, ptr noundef %4) #17, !dbg !7061
  store i32 %call, ptr %status, align 4, !dbg !7062
  %5 = load i32, ptr %status, align 4, !dbg !7063
  %tobool = icmp ne i32 %5, 0, !dbg !7063
  br i1 %tobool, label %if.then, label %if.end, !dbg !7065

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !7066
  %6 = load i32, ptr %tmp, align 4, !dbg !7070
  store i32 0, ptr %retval, align 4, !dbg !7071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7071

if.end:                                           ; preds = %entry
  store i32 0, ptr %tmp2, align 4, !dbg !7072
  %7 = load i32, ptr %tmp2, align 4, !dbg !7075
  store i32 0, ptr %retval, align 4, !dbg !7076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7076

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !7077
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #16, !dbg !7077
  %8 = load i32, ptr %retval, align 4, !dbg !7077
  ret i32 %8, !dbg !7077
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7078 dso_local i32 @_printk(ptr noundef, ...) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !7082 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7087, metadata !DIExpression()), !dbg !7089
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7088, metadata !DIExpression()), !dbg !7090
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7091
  %1 = load ptr, ptr %head.addr, align 8, !dbg !7092
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7093
  %2 = load ptr, ptr %prev, align 8, !dbg !7093
  %3 = load ptr, ptr %head.addr, align 8, !dbg !7094
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !7095
  ret void, !dbg !7096
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_pci_link_check_possible(ptr noundef %resource, ptr noundef %context) #3 align 16 !dbg !7097 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %link = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %p = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %p25 = alloca ptr, align 8
  %tmp30 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  %tmp72 = alloca i32, align 4
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !7099, metadata !DIExpression()), !dbg !7109
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !7100, metadata !DIExpression()), !dbg !7110
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #16, !dbg !7111
  call void @llvm.dbg.declare(metadata ptr %link, metadata !7101, metadata !DIExpression()), !dbg !7112
  %0 = load ptr, ptr %context.addr, align 8, !dbg !7113
  store ptr %0, ptr %link, align 8, !dbg !7112
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #16, !dbg !7114
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !7102, metadata !DIExpression()), !dbg !7115
  %1 = load ptr, ptr %link, align 8, !dbg !7116
  %device = getelementptr inbounds %struct.acpi_pci_link, ptr %1, i32 0, i32 1, !dbg !7117
  %2 = load ptr, ptr %device, align 8, !dbg !7117
  %handle1 = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 2, !dbg !7118
  %3 = load ptr, ptr %handle1, align 8, !dbg !7118
  store ptr %3, ptr %handle, align 8, !dbg !7115
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !7119
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7103, metadata !DIExpression()), !dbg !7120
  %4 = load ptr, ptr %resource.addr, align 8, !dbg !7121
  %type = getelementptr inbounds %struct.acpi_resource, ptr %4, i32 0, i32 0, !dbg !7122
  %5 = load i32, ptr %type, align 1, !dbg !7122
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 7, label %sw.bb
    i32 0, label %sw.bb2
    i32 15, label %sw.bb24
  ], !dbg !7123

sw.bb:                                            ; preds = %entry, %entry
  store i32 0, ptr %retval, align 4, !dbg !7124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup73, !dbg !7124

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !7125
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7104, metadata !DIExpression()), !dbg !7126
  %6 = load ptr, ptr %resource.addr, align 8, !dbg !7127
  %data = getelementptr inbounds %struct.acpi_resource, ptr %6, i32 0, i32 2, !dbg !7128
  store ptr %data, ptr %p, align 8, !dbg !7126
  %7 = load ptr, ptr %p, align 8, !dbg !7129
  %interrupt_count = getelementptr inbounds %struct.acpi_resource_irq, ptr %7, i32 0, i32 5, !dbg !7131
  %8 = load i8, ptr %interrupt_count, align 1, !dbg !7131
  %tobool = icmp ne i8 %8, 0, !dbg !7129
  br i1 %tobool, label %if.end, label %if.then, !dbg !7132

if.then:                                          ; preds = %sw.bb2
  store i32 0, ptr %tmp, align 4, !dbg !7133
  %9 = load i32, ptr %tmp, align 4, !dbg !7137
  store i32 0, ptr %retval, align 4, !dbg !7138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7138

if.end:                                           ; preds = %sw.bb2
  store i32 0, ptr %i, align 4, !dbg !7139
  br label %for.cond, !dbg !7141

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4, !dbg !7142
  %11 = load ptr, ptr %p, align 8, !dbg !7144
  %interrupt_count3 = getelementptr inbounds %struct.acpi_resource_irq, ptr %11, i32 0, i32 5, !dbg !7145
  %12 = load i8, ptr %interrupt_count3, align 1, !dbg !7145
  %conv = zext i8 %12 to i32, !dbg !7144
  %cmp = icmp ult i32 %10, %conv, !dbg !7146
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !7147

land.rhs:                                         ; preds = %for.cond
  %13 = load i32, ptr %i, align 4, !dbg !7148
  %cmp5 = icmp ult i32 %13, 16, !dbg !7149
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ], !dbg !7150
  br i1 %14, label %for.body, label %for.end, !dbg !7151

for.body:                                         ; preds = %land.end
  %15 = load ptr, ptr %p, align 8, !dbg !7152
  %16 = getelementptr inbounds %struct.acpi_resource_irq, ptr %15, i32 0, i32 6, !dbg !7155
  %interrupts = getelementptr inbounds %struct.anon.17, ptr %16, i32 0, i32 1, !dbg !7155
  %17 = load i32, ptr %i, align 4, !dbg !7156
  %idxprom = zext i32 %17 to i64, !dbg !7152
  %arrayidx = getelementptr [0 x i8], ptr %interrupts, i64 0, i64 %idxprom, !dbg !7152
  %18 = load i8, ptr %arrayidx, align 1, !dbg !7152
  %tobool7 = icmp ne i8 %18, 0, !dbg !7152
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !7157

if.then8:                                         ; preds = %for.body
  store i32 0, ptr %tmp9, align 4, !dbg !7158
  %19 = load i32, ptr %tmp9, align 4, !dbg !7162
  br label %for.inc, !dbg !7163

if.end10:                                         ; preds = %for.body
  %20 = load ptr, ptr %p, align 8, !dbg !7164
  %21 = getelementptr inbounds %struct.acpi_resource_irq, ptr %20, i32 0, i32 6, !dbg !7165
  %interrupts11 = getelementptr inbounds %struct.anon.17, ptr %21, i32 0, i32 1, !dbg !7165
  %22 = load i32, ptr %i, align 4, !dbg !7166
  %idxprom12 = zext i32 %22 to i64, !dbg !7164
  %arrayidx13 = getelementptr [0 x i8], ptr %interrupts11, i64 0, i64 %idxprom12, !dbg !7164
  %23 = load i8, ptr %arrayidx13, align 1, !dbg !7164
  %conv14 = zext i8 %23 to i32, !dbg !7164
  %24 = load ptr, ptr %link, align 8, !dbg !7167
  %irq = getelementptr inbounds %struct.acpi_pci_link, ptr %24, i32 0, i32 2, !dbg !7168
  %possible = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq, i32 0, i32 5, !dbg !7169
  %25 = load i32, ptr %i, align 4, !dbg !7170
  %idxprom15 = zext i32 %25 to i64, !dbg !7167
  %arrayidx16 = getelementptr [16 x i32], ptr %possible, i64 0, i64 %idxprom15, !dbg !7167
  store i32 %conv14, ptr %arrayidx16, align 4, !dbg !7171
  %26 = load ptr, ptr %link, align 8, !dbg !7172
  %irq17 = getelementptr inbounds %struct.acpi_pci_link, ptr %26, i32 0, i32 2, !dbg !7173
  %possible_count = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq17, i32 0, i32 4, !dbg !7174
  %27 = load i8, ptr %possible_count, align 1, !dbg !7175
  %inc = add i8 %27, 1, !dbg !7175
  store i8 %inc, ptr %possible_count, align 1, !dbg !7175
  br label %for.inc, !dbg !7176

for.inc:                                          ; preds = %if.end10, %if.then8
  %28 = load i32, ptr %i, align 4, !dbg !7177
  %inc18 = add i32 %28, 1, !dbg !7177
  store i32 %inc18, ptr %i, align 4, !dbg !7177
  br label %for.cond, !dbg !7178, !llvm.loop !7179

for.end:                                          ; preds = %land.end
  %29 = load ptr, ptr %p, align 8, !dbg !7181
  %triggering = getelementptr inbounds %struct.acpi_resource_irq, ptr %29, i32 0, i32 1, !dbg !7182
  %30 = load i8, ptr %triggering, align 1, !dbg !7182
  %31 = load ptr, ptr %link, align 8, !dbg !7183
  %irq19 = getelementptr inbounds %struct.acpi_pci_link, ptr %31, i32 0, i32 2, !dbg !7184
  %triggering20 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq19, i32 0, i32 1, !dbg !7185
  store i8 %30, ptr %triggering20, align 4, !dbg !7186
  %32 = load ptr, ptr %p, align 8, !dbg !7187
  %polarity = getelementptr inbounds %struct.acpi_resource_irq, ptr %32, i32 0, i32 2, !dbg !7188
  %33 = load i8, ptr %polarity, align 1, !dbg !7188
  %34 = load ptr, ptr %link, align 8, !dbg !7189
  %irq21 = getelementptr inbounds %struct.acpi_pci_link, ptr %34, i32 0, i32 2, !dbg !7190
  %polarity22 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq21, i32 0, i32 2, !dbg !7191
  store i8 %33, ptr %polarity22, align 1, !dbg !7192
  %35 = load ptr, ptr %link, align 8, !dbg !7193
  %irq23 = getelementptr inbounds %struct.acpi_pci_link, ptr %35, i32 0, i32 2, !dbg !7194
  %resource_type = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq23, i32 0, i32 3, !dbg !7195
  store i8 0, ptr %resource_type, align 2, !dbg !7196
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7197

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !7198
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup73 [
    i32 2, label %sw.epilog
  ]

sw.bb24:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p25) #16, !dbg !7199
  call void @llvm.dbg.declare(metadata ptr %p25, metadata !7107, metadata !DIExpression()), !dbg !7200
  %36 = load ptr, ptr %resource.addr, align 8, !dbg !7201
  %data26 = getelementptr inbounds %struct.acpi_resource, ptr %36, i32 0, i32 2, !dbg !7202
  store ptr %data26, ptr %p25, align 8, !dbg !7200
  %37 = load ptr, ptr %p25, align 8, !dbg !7203
  %interrupt_count27 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %37, i32 0, i32 5, !dbg !7205
  %38 = load i8, ptr %interrupt_count27, align 1, !dbg !7205
  %tobool28 = icmp ne i8 %38, 0, !dbg !7203
  br i1 %tobool28, label %if.end31, label %if.then29, !dbg !7206

if.then29:                                        ; preds = %sw.bb24
  store i32 0, ptr %tmp30, align 4, !dbg !7207
  %39 = load i32, ptr %tmp30, align 4, !dbg !7211
  store i32 0, ptr %retval, align 4, !dbg !7212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !7212

if.end31:                                         ; preds = %sw.bb24
  store i32 0, ptr %i, align 4, !dbg !7213
  br label %for.cond32, !dbg !7215

for.cond32:                                       ; preds = %for.inc59, %if.end31
  %40 = load i32, ptr %i, align 4, !dbg !7216
  %41 = load ptr, ptr %p25, align 8, !dbg !7218
  %interrupt_count33 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %41, i32 0, i32 5, !dbg !7219
  %42 = load i8, ptr %interrupt_count33, align 1, !dbg !7219
  %conv34 = zext i8 %42 to i32, !dbg !7218
  %cmp35 = icmp ult i32 %40, %conv34, !dbg !7220
  br i1 %cmp35, label %land.rhs37, label %land.end40, !dbg !7221

land.rhs37:                                       ; preds = %for.cond32
  %43 = load i32, ptr %i, align 4, !dbg !7222
  %cmp38 = icmp ult i32 %43, 16, !dbg !7223
  br label %land.end40

land.end40:                                       ; preds = %land.rhs37, %for.cond32
  %44 = phi i1 [ false, %for.cond32 ], [ %cmp38, %land.rhs37 ], !dbg !7224
  br i1 %44, label %for.body41, label %for.end61, !dbg !7225

for.body41:                                       ; preds = %land.end40
  %45 = load ptr, ptr %p25, align 8, !dbg !7226
  %46 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %45, i32 0, i32 7, !dbg !7229
  %interrupts42 = getelementptr inbounds %struct.anon.23, ptr %46, i32 0, i32 1, !dbg !7229
  %47 = load i32, ptr %i, align 4, !dbg !7230
  %idxprom43 = zext i32 %47 to i64, !dbg !7226
  %arrayidx44 = getelementptr [0 x i32], ptr %interrupts42, i64 0, i64 %idxprom43, !dbg !7226
  %48 = load i32, ptr %arrayidx44, align 1, !dbg !7226
  %tobool45 = icmp ne i32 %48, 0, !dbg !7226
  br i1 %tobool45, label %if.end48, label %if.then46, !dbg !7231

if.then46:                                        ; preds = %for.body41
  store i32 0, ptr %tmp47, align 4, !dbg !7232
  %49 = load i32, ptr %tmp47, align 4, !dbg !7236
  br label %for.inc59, !dbg !7237

if.end48:                                         ; preds = %for.body41
  %50 = load ptr, ptr %p25, align 8, !dbg !7238
  %51 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %50, i32 0, i32 7, !dbg !7239
  %interrupts49 = getelementptr inbounds %struct.anon.23, ptr %51, i32 0, i32 1, !dbg !7239
  %52 = load i32, ptr %i, align 4, !dbg !7240
  %idxprom50 = zext i32 %52 to i64, !dbg !7238
  %arrayidx51 = getelementptr [0 x i32], ptr %interrupts49, i64 0, i64 %idxprom50, !dbg !7238
  %53 = load i32, ptr %arrayidx51, align 1, !dbg !7238
  %54 = load ptr, ptr %link, align 8, !dbg !7241
  %irq52 = getelementptr inbounds %struct.acpi_pci_link, ptr %54, i32 0, i32 2, !dbg !7242
  %possible53 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq52, i32 0, i32 5, !dbg !7243
  %55 = load i32, ptr %i, align 4, !dbg !7244
  %idxprom54 = zext i32 %55 to i64, !dbg !7241
  %arrayidx55 = getelementptr [16 x i32], ptr %possible53, i64 0, i64 %idxprom54, !dbg !7241
  store i32 %53, ptr %arrayidx55, align 4, !dbg !7245
  %56 = load ptr, ptr %link, align 8, !dbg !7246
  %irq56 = getelementptr inbounds %struct.acpi_pci_link, ptr %56, i32 0, i32 2, !dbg !7247
  %possible_count57 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq56, i32 0, i32 4, !dbg !7248
  %57 = load i8, ptr %possible_count57, align 1, !dbg !7249
  %inc58 = add i8 %57, 1, !dbg !7249
  store i8 %inc58, ptr %possible_count57, align 1, !dbg !7249
  br label %for.inc59, !dbg !7250

for.inc59:                                        ; preds = %if.end48, %if.then46
  %58 = load i32, ptr %i, align 4, !dbg !7251
  %inc60 = add i32 %58, 1, !dbg !7251
  store i32 %inc60, ptr %i, align 4, !dbg !7251
  br label %for.cond32, !dbg !7252, !llvm.loop !7253

for.end61:                                        ; preds = %land.end40
  %59 = load ptr, ptr %p25, align 8, !dbg !7255
  %triggering62 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %59, i32 0, i32 1, !dbg !7256
  %60 = load i8, ptr %triggering62, align 1, !dbg !7256
  %61 = load ptr, ptr %link, align 8, !dbg !7257
  %irq63 = getelementptr inbounds %struct.acpi_pci_link, ptr %61, i32 0, i32 2, !dbg !7258
  %triggering64 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq63, i32 0, i32 1, !dbg !7259
  store i8 %60, ptr %triggering64, align 4, !dbg !7260
  %62 = load ptr, ptr %p25, align 8, !dbg !7261
  %polarity65 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %62, i32 0, i32 2, !dbg !7262
  %63 = load i8, ptr %polarity65, align 1, !dbg !7262
  %64 = load ptr, ptr %link, align 8, !dbg !7263
  %irq66 = getelementptr inbounds %struct.acpi_pci_link, ptr %64, i32 0, i32 2, !dbg !7264
  %polarity67 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq66, i32 0, i32 2, !dbg !7265
  store i8 %63, ptr %polarity67, align 1, !dbg !7266
  %65 = load ptr, ptr %link, align 8, !dbg !7267
  %irq68 = getelementptr inbounds %struct.acpi_pci_link, ptr %65, i32 0, i32 2, !dbg !7268
  %resource_type69 = getelementptr inbounds %struct.acpi_pci_link_irq, ptr %irq68, i32 0, i32 3, !dbg !7269
  store i8 15, ptr %resource_type69, align 2, !dbg !7270
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !7271

cleanup70:                                        ; preds = %for.end61, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %p25) #16, !dbg !7272
  %cleanup.dest71 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest71, label %cleanup73 [
    i32 2, label %sw.epilog
  ]

sw.default:                                       ; preds = %entry
  store i32 0, ptr %tmp72, align 4, !dbg !7273
  %66 = load i32, ptr %tmp72, align 4, !dbg !7276
  store i32 0, ptr %retval, align 4, !dbg !7277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup73, !dbg !7277

sw.epilog:                                        ; preds = %cleanup70, %cleanup
  store i32 16387, ptr %retval, align 4, !dbg !7278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup73, !dbg !7278

cleanup73:                                        ; preds = %sw.epilog, %sw.default, %cleanup70, %cleanup, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !7279
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #16, !dbg !7279
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #16, !dbg !7279
  %67 = load i32, ptr %retval, align 4, !dbg !7279
  ret i32 %67, !dbg !7279
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !7280 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7284, metadata !DIExpression()), !dbg !7287
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7285, metadata !DIExpression()), !dbg !7288
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7286, metadata !DIExpression()), !dbg !7289
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7290
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7292
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7293
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !7294
  br i1 %call, label %if.end, label %if.then, !dbg !7295

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7296

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7297
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7298
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7299
  store ptr %3, ptr %prev1, align 8, !dbg !7300
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7301
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7302
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7303
  store ptr %5, ptr %next2, align 8, !dbg !7304
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7305
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7306
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7307
  store ptr %7, ptr %prev3, align 8, !dbg !7308
  br label %do.body, !dbg !7309

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7310

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7312

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7310

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7314
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7314
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7314
  store volatile ptr %9, ptr %next6, align 8, !dbg !7314
  br label %do.end7, !dbg !7314

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7310

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7316
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !7317 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7321, metadata !DIExpression()), !dbg !7324
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7322, metadata !DIExpression()), !dbg !7325
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7323, metadata !DIExpression()), !dbg !7326
  ret i1 true, !dbg !7327
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !7328 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7332, metadata !DIExpression()), !dbg !7333
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7334
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !7335
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !7336
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !7337
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !7338
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !7339
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !7340
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !7341
  ret void, !dbg !7342
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !7343 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7345, metadata !DIExpression()), !dbg !7346
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7347
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !7349
  br i1 %call, label %if.end, label %if.then, !dbg !7350

if.then:                                          ; preds = %entry
  br label %return, !dbg !7351

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !7352
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7353
  %2 = load ptr, ptr %prev, align 8, !dbg !7353
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !7354
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7355
  %4 = load ptr, ptr %next, align 8, !dbg !7355
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !7356
  br label %return, !dbg !7357

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !7357
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !7358 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7362, metadata !DIExpression()), !dbg !7363
  ret i1 true, !dbg !7364
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !7365 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7367, metadata !DIExpression()), !dbg !7369
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7368, metadata !DIExpression()), !dbg !7370
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !7371
  %1 = load ptr, ptr %next.addr, align 8, !dbg !7372
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7373
  store ptr %0, ptr %prev1, align 8, !dbg !7374
  br label %do.body, !dbg !7375

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !7376

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !7378

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !7376

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7380
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !7380
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7380
  store volatile ptr %2, ptr %next4, align 8, !dbg !7380
  br label %do.end5, !dbg !7380

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !7376

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !7382
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030}
!llvm.ident = !{!5031}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_link_list", scope: !2, file: !3, line: 73, type: !178, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.pci_link.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22pci_link\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/pci_link.ll drivers/acpi/pci_link.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !172, globals: !4868, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/pci_link.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3bf574db1e92f26681bc0b04774640a3")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !147, !157, !162}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !30, line: 9, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!33 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!34 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!35 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!36 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !38, line: 1325, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!41 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!42 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!43 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!44 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!45 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!46 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!47 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!48 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!49 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!50 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!51 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!52 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
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
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!119 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!120 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!121 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!122 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!124 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!128 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!133 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!138 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!139 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !142, line: 30, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!145 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!146 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_irq_model_id", file: !148, line: 91, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!149 = !{!150, !151, !152, !153, !154, !155, !156}
!150 = !DIEnumerator(name: "ACPI_IRQ_MODEL_PIC", value: 0)
!151 = !DIEnumerator(name: "ACPI_IRQ_MODEL_IOAPIC", value: 1)
!152 = !DIEnumerator(name: "ACPI_IRQ_MODEL_IOSAPIC", value: 2)
!153 = !DIEnumerator(name: "ACPI_IRQ_MODEL_PLATFORM", value: 3)
!154 = !DIEnumerator(name: "ACPI_IRQ_MODEL_GIC", value: 4)
!155 = !DIEnumerator(name: "ACPI_IRQ_MODEL_LPIC", value: 5)
!156 = !DIEnumerator(name: "ACPI_IRQ_MODEL_COUNT", value: 6)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !158, line: 10, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!159 = !{!160, !161}
!160 = !DIEnumerator(name: "false", value: 0)
!161 = !DIEnumerator(name: "true", value: 1)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !163, line: 364, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!164 = !{!165, !166, !167, !168, !169, !170, !171}
!165 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!166 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!167 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!168 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!169 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!170 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!171 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!172 = !{!173, !174, !109, !1171, !280, !370, !4865, !4866}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_link", file: !3, line: 66, size: 832, elements: !176)
!176 = !{!177, !184, !4852, !4864}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !175, file: !3, line: 67, baseType: !178, size: 128)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !179, line: 190, size: 128, elements: !180)
!179 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!180 = !{!181, !183}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !179, line: 191, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !178, file: !179, line: 191, baseType: !182, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !175, file: !3, line: 68, baseType: !185, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !187, line: 367, size: 11200, elements: !188)
!187 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!188 = !{!189, !194, !195, !198, !4599, !4600, !4601, !4610, !4628, !4704, !4734, !4758, !4779, !4786, !4795, !4827, !4841, !4845, !4846, !4847, !4848, !4849, !4850, !4851}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !186, file: !187, line: 368, baseType: !190, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !191, line: 21, baseType: !192)
!191 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !193, line: 27, baseType: !7)
!193 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!194 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !186, file: !187, line: 369, baseType: !109, size: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !186, file: !187, line: 370, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !197, line: 424, baseType: !173)
!197 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!198 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !186, file: !187, line: 371, baseType: !199, size: 512, offset: 128)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !200, line: 41, size: 512, elements: !201)
!200 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!201 = !{!202, !204, !4595, !4596, !4597, !4598}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !199, file: !200, line: 42, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !199, file: !200, line: 43, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !200, line: 125, size: 1408, elements: !208)
!208 = !{!209, !213, !217, !225, !4525, !4526, !4530, !4534, !4538, !4542, !4546, !4547, !4551, !4555, !4559, !4570, !4571, !4572, !4573, !4583, !4587, !4591}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !207, file: !200, line: 126, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!203, !203}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !207, file: !200, line: 127, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !203}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !207, file: !200, line: 128, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !223}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !179, line: 35, baseType: !222)
!222 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !207, file: !200, line: 129, baseType: !226, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !223, !231}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !234)
!234 = !{!235, !4168, !4170, !4173, !4174, !4225, !4310, !4311, !4312, !4313, !4314, !4321, !4413, !4426, !4436, !4440, !4442, !4443, !4444, !4448, !4455, !4456, !4459, !4462, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4502, !4503, !4504, !4507, !4510, !4519, !4520, !4521, !4522, !4523, !4524}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !233, file: !94, line: 706, baseType: !236, size: 512)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !237, line: 64, size: 512, elements: !238)
!237 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!238 = !{!239, !243, !244, !246, !333, !4055, !4158, !4163, !4164, !4165, !4166, !4167}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !237, line: 65, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !236, file: !237, line: 66, baseType: !178, size: 128, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !236, file: !237, line: 67, baseType: !245, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !236, file: !237, line: 68, baseType: !247, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !237, line: 168, size: 768, elements: !249)
!249 = !{!250, !251, !292, !293}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !248, file: !237, line: 169, baseType: !178, size: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !248, file: !237, line: 170, baseType: !252, size: 32, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !253, line: 29, baseType: !254)
!253 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !253, line: 17, size: 32, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, scope: !254, file: !253, line: 18, baseType: !257, size: 32)
!257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !254, file: !253, line: 18, size: 32, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !257, file: !253, line: 19, baseType: !260, size: 32)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !261, line: 14, size: 32, elements: !262)
!261 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !260, file: !261, line: 15, baseType: !264, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !265, line: 44, baseType: !266)
!265 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !265, line: 14, size: 32, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !265, line: 15, baseType: !269, size: 32)
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !265, line: 15, size: 32, elements: !270)
!270 = !{!271, !276, !284}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !269, file: !265, line: 16, baseType: !272, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !179, line: 174, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 172, size: 32, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !273, file: !179, line: 173, baseType: !109, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !265, line: 24, baseType: !277, size: 16)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !269, file: !265, line: 24, size: 16, elements: !278)
!278 = !{!279, !283}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !277, file: !265, line: 25, baseType: !280, size: 8)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !191, line: 17, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !193, line: 21, baseType: !282)
!282 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !277, file: !265, line: 26, baseType: !280, size: 8, offset: 8)
!284 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !265, line: 28, baseType: !285, size: 32)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !269, file: !265, line: 28, size: 32, elements: !286)
!286 = !{!287, !291}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !285, file: !265, line: 29, baseType: !288, size: 16)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !191, line: 19, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !193, line: 24, baseType: !290)
!290 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !285, file: !265, line: 30, baseType: !288, size: 16, offset: 16)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !248, file: !237, line: 171, baseType: !236, size: 512, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !248, file: !237, line: 172, baseType: !294, size: 64, offset: 704)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !237, line: 133, size: 192, elements: !297)
!297 = !{!298, !305, !310}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !296, file: !237, line: 134, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!109, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !237, line: 135, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!240, !303}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !296, file: !237, line: 136, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!109, !303, !315}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !237, line: 125, size: 20736, elements: !317)
!317 = !{!318, !323, !327, !328, !332}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !316, file: !237, line: 126, baseType: !319, size: 192)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 192, elements: !321)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!321 = !{!322}
!322 = !DISubrange(count: 3)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !316, file: !237, line: 127, baseType: !324, size: 4096, offset: 192)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 4096, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !316, file: !237, line: 128, baseType: !109, size: 32, offset: 4288)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !316, file: !237, line: 129, baseType: !329, size: 16384, offset: 4320)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 16384, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 2048)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !316, file: !237, line: 130, baseType: !109, size: 32, offset: 20704)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !236, file: !237, line: 69, baseType: !334, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !237, line: 116, size: 384, elements: !337)
!337 = !{!338, !342, !371, !4017, !4045, !4049}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !336, file: !237, line: 117, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !245}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !336, file: !237, line: 118, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !346, line: 254, size: 128, elements: !347)
!346 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!347 = !{!348, !363}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !345, file: !346, line: 255, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!352, !245, !357, !320}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !179, line: 66, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !354, line: 73, baseType: !355)
!354 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !354, line: 15, baseType: !356)
!356 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !346, line: 30, size: 128, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !346, line: 31, baseType: !240, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !358, file: !346, line: 32, baseType: !362, size: 16, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !179, line: 24, baseType: !290)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !345, file: !346, line: 256, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!352, !245, !357, !240, !367}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !179, line: 61, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !354, line: 72, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !354, line: 16, baseType: !370)
!370 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !336, file: !237, line: 119, baseType: !372, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !346, line: 84, size: 320, elements: !376)
!376 = !{!377, !378, !382, !4013, !4015}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !375, file: !346, line: 85, baseType: !240, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !375, file: !346, line: 86, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!362, !245, !357, !109}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !375, file: !346, line: 88, baseType: !383, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!362, !245, !386, !109}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !346, line: 175, size: 512, elements: !388)
!388 = !{!389, !390, !391, !392, !4004, !4008, !4009}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !387, file: !346, line: 176, baseType: !358, size: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !387, file: !346, line: 177, baseType: !367, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !387, file: !346, line: 178, baseType: !173, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !387, file: !346, line: 179, baseType: !393, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !398)
!398 = !{!399, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3998, !3999, !4000, !4001, !4002, !4003}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !397, file: !14, line: 473, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !402)
!402 = !{!403, !404, !405, !413, !414, !421, !422, !425, !426, !3777, !3778, !3779, !3780, !3781, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3821, !3824, !3825, !3826, !3835, !3836, !3837, !3838}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !401, file: !14, line: 642, baseType: !362, size: 16)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !401, file: !14, line: 643, baseType: !290, size: 16, offset: 16)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !401, file: !14, line: 644, baseType: !406, size: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !407, line: 23, baseType: !408)
!407 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !407, line: 21, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !408, file: !407, line: 22, baseType: !411, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !179, line: 37, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !354, line: 49, baseType: !7)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !401, file: !14, line: 645, baseType: !178, size: 128, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !401, file: !14, line: 646, baseType: !415, size: 32, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !407, line: 28, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !407, line: 26, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !416, file: !407, line: 27, baseType: !419, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !179, line: 38, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !354, line: 50, baseType: !7)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !401, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !401, file: !14, line: 650, baseType: !423, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !401, file: !14, line: 651, baseType: !423, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !401, file: !14, line: 654, baseType: !427, size: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !430)
!430 = !{!431, !3605, !3615, !3619, !3623, !3627, !3631, !3635, !3639, !3643, !3647, !3648, !3652, !3656, !3693, !3722, !3726, !3732, !3736, !3740, !3744, !3748, !3752, !3758, !3762}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !429, file: !14, line: 1967, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!435, !400, !435, !7}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !437, line: 82, size: 1536, elements: !438)
!437 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!438 = !{!439, !440, !450, !458, !459, !477, !478, !482, !495, !3588, !3589, !3590, !3591, !3597, !3598, !3599}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !436, file: !437, line: 84, baseType: !7, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !436, file: !437, line: 85, baseType: !441, size: 32, offset: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !442, line: 275, baseType: !443)
!442 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !442, line: 275, size: 32, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !443, file: !442, line: 275, baseType: !446, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !442, line: 69, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !442, line: 64, size: 32, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !447, file: !442, line: 65, baseType: !7, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !436, file: !437, line: 86, baseType: !451, size: 128, offset: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !452, line: 38, size: 128, elements: !453)
!452 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!453 = !{!454, !456}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !452, line: 39, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !451, file: !452, line: 39, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !436, file: !437, line: 87, baseType: !435, size: 64, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !436, file: !437, line: 88, baseType: !460, size: 128, offset: 256)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !437, line: 49, size: 128, elements: !461)
!461 = !{!462, !474}
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !437, line: 50, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !437, line: 50, size: 64, elements: !464)
!464 = !{!465, !470}
!465 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !437, line: 51, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !437, line: 51, size: 64, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !466, file: !437, line: 52, baseType: !190, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !466, file: !437, line: 52, baseType: !190, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !463, file: !437, line: 54, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !191, line: 23, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !193, line: 31, baseType: !473)
!473 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !460, file: !437, line: 56, baseType: !475, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !436, file: !437, line: 89, baseType: !400, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !436, file: !437, line: 91, baseType: !479, size: 256, offset: 448)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 256, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !436, file: !437, line: 94, baseType: !483, size: 64, offset: 704)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !484, line: 25, size: 64, elements: !485)
!484 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!485 = !{!486}
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !484, line: 26, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !483, file: !484, line: 26, size: 64, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !487, file: !484, line: 28, baseType: !472, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !484, line: 30, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !487, file: !484, line: 30, size: 64, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !491, file: !484, line: 31, baseType: !252, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !491, file: !484, line: 32, baseType: !109, size: 32, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !436, file: !437, line: 95, baseType: !496, size: 64, offset: 768)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !437, line: 128, size: 1024, align: 512, elements: !499)
!499 = !{!500, !504, !505, !512, !518, !522, !526, !530, !531, !535, !539, !3578, !3582}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !498, file: !437, line: 129, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!109, !435, !7}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !498, file: !437, line: 130, baseType: !501, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !498, file: !437, line: 131, baseType: !506, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!109, !509, !511}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !498, file: !437, line: 132, baseType: !513, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!109, !509, !7, !240, !516}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !498, file: !437, line: 134, baseType: !519, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!109, !509}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !498, file: !437, line: 135, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!109, !435}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !498, file: !437, line: 136, baseType: !527, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !435}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !498, file: !437, line: 137, baseType: !527, size: 64, offset: 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !498, file: !437, line: 138, baseType: !532, size: 64, offset: 512)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !435, !400}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !498, file: !437, line: 139, baseType: !536, size: 64, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!320, !435, !320, !109}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !498, file: !437, line: 140, baseType: !540, size: 64, offset: 640)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!543, !3577}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !545, line: 70, size: 256, elements: !546)
!545 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!546 = !{!547, !548, !3573, !3574}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !544, file: !545, line: 71, baseType: !435, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !544, file: !545, line: 72, baseType: !549, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !551)
!551 = !{!552, !553, !556, !557, !558, !562, !1040, !1180, !1220, !1310, !1314, !1315, !1316, !1317, !1318, !1327, !1328, !1329, !1330, !1335, !1339, !1340, !1343, !1346, !1349, !1352, !1353, !1354, !1395, !3506, !3507, !3508, !3509, !3510, !3511, !3514, !3516, !3523, !3524, !3525, !3526, !3527, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !550, file: !14, line: 1191, baseType: !178, size: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !550, file: !14, line: 1192, baseType: !554, size: 32, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !179, line: 21, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !179, line: 18, baseType: !190)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !550, file: !14, line: 1193, baseType: !282, size: 8, offset: 160)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !550, file: !14, line: 1194, baseType: !370, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !550, file: !14, line: 1195, baseType: !559, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !179, line: 52, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !354, line: 88, baseType: !561)
!561 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !550, file: !14, line: 1196, baseType: !563, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !565)
!565 = !{!566, !567, !568, !575, !579, !583, !587, !1025, !1026, !1030, !1032, !1033, !1034, !1036, !1037, !1038, !1039}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !564, file: !14, line: 2367, baseType: !240, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !564, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !564, file: !14, line: 2376, baseType: !569, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!109, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !574, line: 32, flags: DIFlagFwdDecl)
!574 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!575 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !564, file: !14, line: 2377, baseType: !576, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !578)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !564, file: !14, line: 2378, baseType: !580, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!435, !563, !109, !240, !173}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !564, file: !14, line: 2380, baseType: !584, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !549}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !564, file: !14, line: 2381, baseType: !588, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !590)
!590 = !{!591, !592, !593, !597, !619, !645, !646, !647, !648, !652, !657, !658, !678, !734, !735, !736, !737, !738, !739, !740, !741, !749, !753, !780, !801, !802, !803, !804, !813, !836, !837, !840, !843, !844, !845, !846, !847, !848, !849, !854, !855, !983, !991, !992, !993, !995, !999, !1000, !1004, !1005, !1006, !1007, !1009, !1010, !1011, !1018, !1019, !1020, !1024}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !589, file: !6, line: 403, baseType: !5, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !589, file: !6, line: 406, baseType: !178, size: 128, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !589, file: !6, line: 409, baseType: !594, size: 448, offset: 192)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 448, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 56)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !589, file: !6, line: 417, baseType: !598, size: 768, offset: 640)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !599)
!599 = !{!600, !601, !602, !603, !606}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !598, file: !6, line: 46, baseType: !236, size: 512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !598, file: !6, line: 47, baseType: !588, size: 64, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !598, file: !6, line: 48, baseType: !245, size: 64, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !598, file: !6, line: 49, baseType: !604, size: 64, offset: 640)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !598, file: !6, line: 50, baseType: !607, size: 64, offset: 704)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !609, line: 26, size: 256, elements: !610)
!609 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !608, file: !609, line: 27, baseType: !7, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !608, file: !609, line: 28, baseType: !613, size: 192, offset: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !614, line: 43, size: 192, elements: !615)
!614 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!615 = !{!616, !618}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !613, file: !614, line: 44, baseType: !617, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !261, line: 23, baseType: !260)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !613, file: !614, line: 45, baseType: !178, size: 128, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !589, file: !6, line: 418, baseType: !620, size: 64, offset: 1408)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !622)
!622 = !{!623, !624, !629, !633, !637, !641}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !621, file: !6, line: 54, baseType: !358, size: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !621, file: !6, line: 55, baseType: !625, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!352, !620, !628, !320}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !621, file: !6, line: 57, baseType: !630, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!352, !620, !628, !240, !367}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !621, file: !6, line: 59, baseType: !634, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !588, !240}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !621, file: !6, line: 60, baseType: !638, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!109, !588}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !621, file: !6, line: 61, baseType: !642, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !588}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !589, file: !6, line: 419, baseType: !240, size: 64, offset: 1472)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !589, file: !6, line: 420, baseType: !240, size: 64, offset: 1536)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !589, file: !6, line: 421, baseType: !245, size: 64, offset: 1600)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !589, file: !6, line: 424, baseType: !649, size: 64, offset: 1664)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !589, file: !6, line: 425, baseType: !653, size: 64, offset: 1728)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !191, line: 20, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !193, line: 26, baseType: !109)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !589, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !589, file: !6, line: 435, baseType: !659, size: 256, offset: 1856)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !660, line: 66, size: 256, elements: !661)
!660 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!661 = !{!662, !671, !672, !677}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !659, file: !660, line: 67, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !664, line: 13, baseType: !665)
!664 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !179, line: 181, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 179, size: 64, elements: !667)
!667 = !{!668}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !666, file: !179, line: 180, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !191, line: 22, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !193, line: 30, baseType: !561)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !659, file: !660, line: 68, baseType: !617, size: 32, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !659, file: !660, line: 70, baseType: !673, size: 32, offset: 96)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !674, line: 15, size: 32, elements: !675)
!674 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !673, file: !674, line: 20, baseType: !272, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !659, file: !660, line: 72, baseType: !178, size: 128, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !589, file: !6, line: 437, baseType: !679, size: 64, offset: 2112)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !681, line: 69, size: 320, elements: !682)
!681 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!682 = !{!683, !684, !685, !705, !707, !711, !712}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !680, file: !681, line: 70, baseType: !240, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !680, file: !681, line: 71, baseType: !588, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !680, file: !681, line: 72, baseType: !686, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !681, line: 47, size: 256, elements: !689)
!689 = !{!690, !691, !697, !701}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !688, file: !681, line: 49, baseType: !7, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !688, file: !681, line: 51, baseType: !692, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!109, !240, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !688, file: !681, line: 53, baseType: !698, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!109, !320, !695}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !688, file: !681, line: 55, baseType: !702, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !173}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !680, file: !681, line: 73, baseType: !706, size: 16, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !680, file: !681, line: 74, baseType: !708, size: 8, offset: 208)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !191, line: 16, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !193, line: 20, baseType: !710)
!710 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !681, line: 75, baseType: !280, size: 8, offset: 216)
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !680, file: !681, line: 76, baseType: !713, size: 64, offset: 256)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !681, line: 76, size: 64, elements: !714)
!714 = !{!715, !716, !723}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !713, file: !681, line: 77, baseType: !173, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !713, file: !681, line: 78, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !681, line: 86, size: 128, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !719, file: !681, line: 87, baseType: !7, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !719, file: !681, line: 88, baseType: !320, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !713, file: !681, line: 79, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !681, line: 92, size: 256, elements: !727)
!727 = !{!728, !729, !730, !732, !733}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !726, file: !681, line: 94, baseType: !7, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !726, file: !681, line: 95, baseType: !7, size: 32, offset: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !726, file: !681, line: 96, baseType: !731, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !726, file: !681, line: 97, baseType: !686, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !726, file: !681, line: 98, baseType: !173, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !589, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !589, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !589, file: !6, line: 442, baseType: !649, size: 64, offset: 2240)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !589, file: !6, line: 443, baseType: !653, size: 64, offset: 2304)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !589, file: !6, line: 444, baseType: !221, size: 8, offset: 2368)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !589, file: !6, line: 451, baseType: !221, size: 8, offset: 2376)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !589, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !589, file: !6, line: 455, baseType: !742, size: 64, offset: 2432)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !744, line: 23, size: 96, elements: !745)
!744 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!745 = !{!746, !747, !748}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !743, file: !744, line: 24, baseType: !109, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !743, file: !744, line: 24, baseType: !109, size: 32, offset: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !743, file: !744, line: 24, baseType: !109, size: 32, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !589, file: !6, line: 458, baseType: !750, size: 64, offset: 2496)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!109}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !589, file: !6, line: 460, baseType: !754, size: 4032, align: 512, offset: 2560)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 4032, elements: !778)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !756)
!756 = !{!757, !758, !759}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !755, file: !6, line: 363, baseType: !173, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !755, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !755, file: !6, line: 367, baseType: !760, size: 448, offset: 128)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !760, file: !6, line: 320, baseType: !588, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !760, file: !6, line: 321, baseType: !764, size: 384, offset: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !765, line: 40, size: 384, elements: !766)
!765 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!766 = !{!767}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !764, file: !765, line: 41, baseType: !768, size: 384, align: 64)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 384, align: 64, elements: !776)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !770, line: 5, size: 192, align: 64, elements: !771)
!770 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!771 = !{!772, !773, !775}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !769, file: !770, line: 6, baseType: !370, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !769, file: !770, line: 7, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !769, file: !770, line: 8, baseType: !774, size: 64, offset: 128)
!776 = !{!777}
!777 = !DISubrange(count: 2)
!778 = !{!779}
!779 = !DISubrange(count: 7)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !589, file: !6, line: 463, baseType: !781, size: 192, offset: 6592)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !782, line: 8, size: 192, elements: !783)
!782 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!783 = !{!784, !785, !787}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !781, file: !782, line: 10, baseType: !7, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !781, file: !782, line: 11, baseType: !786, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !781, file: !782, line: 12, baseType: !788, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !790, line: 59, size: 48, elements: !791)
!790 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!791 = !{!792, !796, !797, !798, !799, !800}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !789, file: !790, line: 60, baseType: !793, size: 16)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !191, line: 18, baseType: !794)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !193, line: 23, baseType: !795)
!795 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !789, file: !790, line: 61, baseType: !793, size: 16, offset: 16)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !789, file: !790, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !789, file: !790, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !789, file: !790, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !789, file: !790, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !589, file: !6, line: 465, baseType: !370, size: 64, offset: 6784)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !589, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !589, file: !6, line: 470, baseType: !178, size: 128, offset: 6912)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !589, file: !6, line: 471, baseType: !805, size: 64, offset: 7040)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !807, line: 33, size: 96, elements: !808)
!807 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!808 = !{!809, !810, !811, !812}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !806, file: !807, line: 37, baseType: !109, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !806, file: !807, line: 43, baseType: !109, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !806, file: !807, line: 45, baseType: !290, size: 16, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !806, file: !807, line: 47, baseType: !290, size: 16, offset: 80)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !589, file: !6, line: 476, baseType: !814, size: 64, offset: 7104)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !816)
!816 = !{!817, !833, !834, !835}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !815, file: !6, line: 379, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !820, line: 204, baseType: !821)
!820 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !820, line: 197, size: 192, elements: !822)
!822 = !{!823, !825, !826, !827, !829, !831}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !821, file: !820, line: 198, baseType: !824, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !820, line: 21, baseType: !192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !821, file: !820, line: 199, baseType: !282, size: 8, offset: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !821, file: !820, line: 200, baseType: !282, size: 8, offset: 40)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !821, file: !820, line: 201, baseType: !828, size: 16, offset: 48)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !820, line: 17, baseType: !289)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !821, file: !820, line: 202, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !820, line: 16, baseType: !472)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !821, file: !820, line: 203, baseType: !832, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !820, line: 22, baseType: !472)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !815, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !815, file: !6, line: 381, baseType: !320, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !815, file: !6, line: 382, baseType: !320, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !589, file: !6, line: 477, baseType: !815, size: 256, offset: 7168)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !589, file: !6, line: 480, baseType: !838, size: 64, offset: 7424)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !589, file: !6, line: 483, baseType: !841, size: 64, offset: 7488)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !589, file: !6, line: 488, baseType: !320, size: 64, offset: 7552)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !589, file: !6, line: 492, baseType: !173, size: 64, offset: 7616)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !589, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !589, file: !6, line: 495, baseType: !173, size: 64, offset: 7744)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !589, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !589, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !589, file: !6, line: 500, baseType: !850, size: 64, offset: 7872)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !852, line: 45, baseType: !853)
!852 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !589, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !589, file: !6, line: 504, baseType: !856, size: 64, offset: 8000)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !859, line: 96, size: 192, elements: !860)
!859 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!860 = !{!861, !862, !943, !947}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !858, file: !859, line: 97, baseType: !7, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !858, file: !859, line: 98, baseType: !863, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !859, line: 24, size: 3072, elements: !865)
!865 = !{!866, !868, !869, !870, !871, !895, !896, !897, !898, !916, !928, !929, !940, !941, !942}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !864, file: !859, line: 26, baseType: !867, size: 128)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 128, elements: !776)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !864, file: !859, line: 27, baseType: !867, size: 128, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !864, file: !859, line: 28, baseType: !109, size: 32, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !864, file: !859, line: 31, baseType: !252, size: 32, align: 512, offset: 512)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !864, file: !859, line: 32, baseType: !872, size: 960, offset: 576)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !873, line: 206, size: 960, elements: !874)
!873 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!874 = !{!875, !884, !889, !891, !892, !894}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !872, file: !873, line: 207, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !179, line: 232, size: 128, align: 64, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !877, file: !179, line: 233, baseType: !876, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !877, file: !179, line: 234, baseType: !881, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !876}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !872, file: !873, line: 208, baseType: !885, size: 256, offset: 64)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, size: 256, elements: !887)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!887 = !{!888}
!888 = !DISubrange(count: 4)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !872, file: !873, line: 209, baseType: !890, size: 256, offset: 320)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 256, elements: !887)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !872, file: !873, line: 213, baseType: !356, size: 64, offset: 576)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !872, file: !873, line: 215, baseType: !893, size: 256, offset: 640)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 256, elements: !887)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !872, file: !873, line: 216, baseType: !280, size: 8, offset: 896)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !864, file: !859, line: 33, baseType: !370, size: 64, offset: 1536)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !864, file: !859, line: 34, baseType: !370, size: 64, offset: 1600)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !864, file: !859, line: 35, baseType: !221, size: 8, offset: 1664)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !864, file: !859, line: 36, baseType: !899, size: 320, offset: 1728)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !900, line: 11, size: 320, elements: !901)
!900 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!901 = !{!902, !909, !910, !915}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !899, file: !900, line: 16, baseType: !903, size: 128)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !179, line: 198, size: 128, elements: !904)
!904 = !{!905, !907}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !903, file: !179, line: 199, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !903, file: !179, line: 199, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !899, file: !900, line: 17, baseType: !370, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !899, file: !900, line: 18, baseType: !911, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !914}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !899, file: !900, line: 19, baseType: !190, size: 32, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !864, file: !859, line: 37, baseType: !917, size: 256, offset: 2048)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !918, line: 98, size: 256, elements: !919)
!918 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !917, file: !918, line: 99, baseType: !663, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !917, file: !918, line: 100, baseType: !178, size: 128, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !917, file: !918, line: 101, baseType: !923, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !918, line: 21, baseType: !924)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !927}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !864, file: !859, line: 38, baseType: !877, size: 128, align: 64, offset: 2304)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !864, file: !859, line: 39, baseType: !930, size: 64, offset: 2432)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !859, line: 49, size: 768, elements: !932)
!932 = !{!933, !934, !935, !936, !937, !938, !939}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !931, file: !859, line: 50, baseType: !252, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !931, file: !859, line: 51, baseType: !890, size: 256, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !931, file: !859, line: 53, baseType: !890, size: 256, offset: 320)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !931, file: !859, line: 54, baseType: !370, size: 64, offset: 576)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !931, file: !859, line: 55, baseType: !930, size: 64, offset: 640)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !931, file: !859, line: 56, baseType: !109, size: 32, offset: 704)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !931, file: !859, line: 57, baseType: !109, size: 32, offset: 736)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !864, file: !859, line: 40, baseType: !370, size: 64, offset: 2496)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !864, file: !859, line: 42, baseType: !109, size: 32, offset: 2560)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !864, file: !859, line: 43, baseType: !857, size: 64, offset: 2624)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !858, file: !859, line: 99, baseType: !944, offset: 128)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !945, line: 211, elements: !946)
!945 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!946 = !{}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !858, file: !859, line: 100, baseType: !948, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !859, line: 63, size: 3008, elements: !950)
!950 = !{!951, !952, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !982}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !949, file: !859, line: 64, baseType: !930, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !949, file: !859, line: 65, baseType: !953, size: 192, offset: 64)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !930, size: 192, elements: !321)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !949, file: !859, line: 67, baseType: !109, size: 32, offset: 256)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !949, file: !859, line: 68, baseType: !659, size: 256, offset: 320)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !949, file: !859, line: 69, baseType: !252, size: 32, offset: 576)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !949, file: !859, line: 70, baseType: !659, size: 256, offset: 640)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !949, file: !859, line: 71, baseType: !370, size: 64, offset: 896)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !949, file: !859, line: 72, baseType: !370, size: 64, offset: 960)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !949, file: !859, line: 73, baseType: !370, size: 64, offset: 1024)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !949, file: !859, line: 74, baseType: !370, size: 64, offset: 1088)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !949, file: !859, line: 75, baseType: !370, size: 64, offset: 1152)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !949, file: !859, line: 76, baseType: !370, size: 64, offset: 1216)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !949, file: !859, line: 77, baseType: !370, size: 64, offset: 1280)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !949, file: !859, line: 78, baseType: !370, size: 64, offset: 1344)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !949, file: !859, line: 79, baseType: !221, size: 8, offset: 1408)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !949, file: !859, line: 80, baseType: !370, size: 64, offset: 1472)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !949, file: !859, line: 81, baseType: !659, size: 256, offset: 1536)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !949, file: !859, line: 82, baseType: !608, size: 256, offset: 1792)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !949, file: !859, line: 84, baseType: !272, size: 32, offset: 2048)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !949, file: !859, line: 87, baseType: !370, size: 64, offset: 2112)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !949, file: !859, line: 88, baseType: !370, size: 64, offset: 2176)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !949, file: !859, line: 89, baseType: !974, size: 704, offset: 2240)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !918, line: 111, size: 704, elements: !975)
!975 = !{!976, !977, !978, !981}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !974, file: !918, line: 112, baseType: !917, size: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !974, file: !918, line: 113, baseType: !899, size: 320, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !974, file: !918, line: 116, baseType: !979, size: 64, offset: 576)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !918, line: 18, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !974, file: !918, line: 117, baseType: !109, size: 32, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !949, file: !859, line: 90, baseType: !857, size: 64, offset: 2944)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !589, file: !6, line: 515, baseType: !984, size: 64, offset: 8064)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !986, line: 117, size: 128, elements: !987)
!986 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !985, file: !986, line: 118, baseType: !655, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !985, file: !986, line: 119, baseType: !655, size: 32, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !985, file: !986, line: 120, baseType: !356, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !589, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !589, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !589, file: !6, line: 520, baseType: !994, size: 64, offset: 8192)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !589, file: !6, line: 523, baseType: !996, size: 64, offset: 8256)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !589, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !589, file: !6, line: 525, baseType: !1001, size: 64, offset: 8384)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !589, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !589, file: !6, line: 533, baseType: !173, size: 64, offset: 8512)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !589, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !589, file: !6, line: 535, baseType: !1008, size: 64, offset: 8640)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !589, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !589, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !589, file: !6, line: 540, baseType: !1012, size: 64, offset: 8768)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1014, line: 32, size: 64, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1013, file: !1014, line: 33, baseType: !655, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1013, file: !1014, line: 34, baseType: !655, size: 32, offset: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !589, file: !6, line: 563, baseType: !178, size: 128, offset: 8832)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !589, file: !6, line: 565, baseType: !178, size: 128, offset: 8960)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !589, file: !6, line: 568, baseType: !1021, size: 64, offset: 9088)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !589, file: !6, line: 570, baseType: !272, size: 32, offset: 9152)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !564, file: !14, line: 2382, baseType: !563, size: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !564, file: !14, line: 2383, baseType: !1027, size: 64, offset: 512)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !179, line: 194, size: 64, elements: !1028)
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1027, file: !179, line: 195, baseType: !906, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !564, file: !14, line: 2385, baseType: !1031, offset: 576)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !945, line: 206, elements: !946)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !564, file: !14, line: 2386, baseType: !1031, offset: 576)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !564, file: !14, line: 2387, baseType: !1031, offset: 576)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !564, file: !14, line: 2388, baseType: !1035, offset: 576)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1031, elements: !321)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !564, file: !14, line: 2390, baseType: !1031, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !564, file: !14, line: 2391, baseType: !1031, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !564, file: !14, line: 2392, baseType: !1031, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !564, file: !14, line: 2393, baseType: !1031, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !550, file: !14, line: 1197, baseType: !1041, size: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1044)
!1044 = !{!1045, !1049, !1053, !1054, !1058, !1064, !1068, !1069, !1070, !1074, !1078, !1082, !1083, !1084, !1090, !1094, !1095, !1102, !1103, !1104, !1105, !1109, !1113, !1162, !1178, !1179}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1043, file: !14, line: 2058, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!400, !549}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1043, file: !14, line: 2059, baseType: !1050, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !400}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1043, file: !14, line: 2060, baseType: !1050, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1043, file: !14, line: 2062, baseType: !1055, size: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !400, !109}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1043, file: !14, line: 2063, baseType: !1059, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!109, !400, !1062}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1043, file: !14, line: 2064, baseType: !1065, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!109, !400}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1043, file: !14, line: 2065, baseType: !1050, size: 64, offset: 384)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1043, file: !14, line: 2066, baseType: !584, size: 64, offset: 448)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1043, file: !14, line: 2067, baseType: !1071, size: 64, offset: 512)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!109, !549, !109}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1043, file: !14, line: 2068, baseType: !1075, size: 64, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!109, !549, !13}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1043, file: !14, line: 2069, baseType: !1079, size: 64, offset: 640)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!109, !549}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1043, file: !14, line: 2070, baseType: !1075, size: 64, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1043, file: !14, line: 2071, baseType: !1079, size: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1043, file: !14, line: 2072, baseType: !1085, size: 64, offset: 832)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!109, !435, !1088}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1043, file: !14, line: 2073, baseType: !1091, size: 64, offset: 896)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!109, !549, !786, !320}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1043, file: !14, line: 2074, baseType: !584, size: 64, offset: 960)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1043, file: !14, line: 2076, baseType: !1096, size: 64, offset: 1024)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!109, !1099, !435}
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1101, line: 66, flags: DIFlagFwdDecl)
!1101 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1043, file: !14, line: 2077, baseType: !1096, size: 64, offset: 1088)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1043, file: !14, line: 2078, baseType: !1096, size: 64, offset: 1152)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1043, file: !14, line: 2079, baseType: !1096, size: 64, offset: 1216)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1043, file: !14, line: 2081, baseType: !1106, size: 64, offset: 1280)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!352, !549, !109, !320, !367, !559}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1043, file: !14, line: 2082, baseType: !1110, size: 64, offset: 1344)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!352, !549, !109, !240, !367, !559}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1043, file: !14, line: 2083, baseType: !1114, size: 64, offset: 1408)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!1117, !400}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1145, !1146, !1147}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1119, file: !19, line: 297, baseType: !903, size: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1119, file: !19, line: 298, baseType: !178, size: 128, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1119, file: !19, line: 299, baseType: !178, size: 128, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1119, file: !19, line: 300, baseType: !178, size: 128, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1119, file: !19, line: 301, baseType: !659, size: 256, offset: 512)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1119, file: !19, line: 302, baseType: !252, size: 32, offset: 768)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1119, file: !19, line: 303, baseType: !272, size: 32, offset: 800)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1119, file: !19, line: 304, baseType: !549, size: 64, offset: 832)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1119, file: !19, line: 305, baseType: !1130, size: 64, offset: 896)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1131)
!1131 = !{!1132, !1144}
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !19, line: 69, baseType: !1133, size: 32)
!1133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1130, file: !19, line: 69, size: 32, elements: !1134)
!1134 = !{!1135, !1136, !1137}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1133, file: !19, line: 70, baseType: !406, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1133, file: !19, line: 71, baseType: !415, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1133, file: !19, line: 72, baseType: !1138, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1139, line: 24, baseType: !1140)
!1139 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1139, line: 22, size: 32, elements: !1141)
!1141 = !{!1142}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1140, file: !1139, line: 23, baseType: !1143, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1139, line: 20, baseType: !412)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1130, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1119, file: !19, line: 306, baseType: !559, size: 64, offset: 960)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1119, file: !19, line: 307, baseType: !370, size: 64, offset: 1024)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1119, file: !19, line: 308, baseType: !1148, size: 576, offset: 1088)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1149)
!1149 = !{!1150, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1161}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1148, file: !19, line: 206, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !561)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1148, file: !19, line: 207, baseType: !1151, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1148, file: !19, line: 208, baseType: !1151, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1148, file: !19, line: 209, baseType: !1151, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1148, file: !19, line: 210, baseType: !1151, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1148, file: !19, line: 211, baseType: !1151, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1148, file: !19, line: 212, baseType: !1151, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1148, file: !19, line: 213, baseType: !1159, size: 64, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1160, line: 8, baseType: !670)
!1160 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1148, file: !19, line: 214, baseType: !1159, size: 64, offset: 512)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1043, file: !14, line: 2085, baseType: !1163, size: 64, offset: 1472)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!356, !549, !1166}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1168, line: 15, size: 256, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1169 = !{!1170, !1172, !1173, !1174, !1175}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1167, file: !1168, line: 16, baseType: !1171, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !179, line: 154, baseType: !7)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1167, file: !1168, line: 19, baseType: !109, size: 32, offset: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1167, file: !1168, line: 26, baseType: !370, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1167, file: !1168, line: 33, baseType: !370, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1167, file: !1168, line: 36, baseType: !1176, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1043, file: !14, line: 2087, baseType: !1163, size: 64, offset: 1536)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1043, file: !14, line: 2089, baseType: !584, size: 64, offset: 1600)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !550, file: !14, line: 1198, baseType: !1181, size: 64, offset: 448)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1183)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1184)
!1184 = !{!1185, !1189, !1193, !1197, !1198, !1199, !1200, !1201, !1206, !1211, !1215}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1183, file: !19, line: 325, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!109, !1118}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1183, file: !19, line: 326, baseType: !1190, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!1118, !549, !109}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1183, file: !19, line: 327, baseType: !1194, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !1118}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1183, file: !19, line: 328, baseType: !1186, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1183, file: !19, line: 329, baseType: !1186, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1183, file: !19, line: 330, baseType: !1186, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1183, file: !19, line: 331, baseType: !1071, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1183, file: !19, line: 334, baseType: !1202, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!1205, !400}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1183, file: !19, line: 335, baseType: !1207, size: 64, offset: 512)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!109, !400, !1210}
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1183, file: !19, line: 337, baseType: !1212, size: 64, offset: 576)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!109, !400, !1205}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1183, file: !19, line: 339, baseType: !1216, size: 64, offset: 640)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!109, !549, !1219}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !550, file: !14, line: 1199, baseType: !1221, size: 64, offset: 512)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1223)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1224)
!1224 = !{!1225, !1236, !1237, !1241, !1242, !1243, !1258, !1281, !1285, !1286, !1309}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1223, file: !19, line: 431, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!109, !549, !109, !109, !1229}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1231)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1232, line: 8, size: 128, elements: !1233)
!1232 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1231, file: !1232, line: 9, baseType: !543, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1231, file: !1232, line: 10, baseType: !435, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1223, file: !19, line: 432, baseType: !1071, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1223, file: !19, line: 433, baseType: !1238, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!109, !549, !7}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1223, file: !19, line: 434, baseType: !1238, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1223, file: !19, line: 435, baseType: !1071, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1223, file: !19, line: 436, baseType: !1244, size: 64, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!109, !549, !109, !1247}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1248, file: !19, line: 418, baseType: !109, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1248, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1248, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1248, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1248, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1248, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1248, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1248, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1223, file: !19, line: 437, baseType: !1259, size: 64, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!109, !549, !1130, !1262}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1264)
!1264 = !{!1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1263, file: !19, line: 346, baseType: !109, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1263, file: !19, line: 347, baseType: !471, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1263, file: !19, line: 348, baseType: !471, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1263, file: !19, line: 349, baseType: !471, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1263, file: !19, line: 350, baseType: !471, size: 64, offset: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1263, file: !19, line: 351, baseType: !471, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1263, file: !19, line: 352, baseType: !471, size: 64, offset: 384)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1263, file: !19, line: 353, baseType: !669, size: 64, offset: 448)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1263, file: !19, line: 355, baseType: !669, size: 64, offset: 512)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1263, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1263, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1263, file: !19, line: 358, baseType: !471, size: 64, offset: 640)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1263, file: !19, line: 359, baseType: !471, size: 64, offset: 704)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1263, file: !19, line: 360, baseType: !471, size: 64, offset: 768)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1263, file: !19, line: 361, baseType: !669, size: 64, offset: 832)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1263, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1223, file: !19, line: 438, baseType: !1282, size: 64, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!109, !549, !1219, !1262}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1223, file: !19, line: 440, baseType: !1259, size: 64, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1223, file: !19, line: 441, baseType: !1287, size: 64, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!109, !549, !1290}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1292)
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1291, file: !19, line: 412, baseType: !7, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1291, file: !19, line: 413, baseType: !1295, size: 1344, offset: 64)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1296, size: 1344, elements: !321)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1308}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1296, file: !19, line: 398, baseType: !7, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1296, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1296, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1296, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1296, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1296, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1296, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1296, file: !19, line: 406, baseType: !473, size: 64, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1296, file: !19, line: 407, baseType: !1307, size: 64, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !179, line: 132, baseType: !471)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1296, file: !19, line: 408, baseType: !1307, size: 64, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1223, file: !19, line: 442, baseType: !1238, size: 64, offset: 640)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !550, file: !14, line: 1200, baseType: !1311, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1313)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !550, file: !14, line: 1201, baseType: !370, size: 64, offset: 640)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !550, file: !14, line: 1202, baseType: !370, size: 64, offset: 704)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !550, file: !14, line: 1203, baseType: !370, size: 64, offset: 768)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !550, file: !14, line: 1204, baseType: !435, size: 64, offset: 832)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !550, file: !14, line: 1205, baseType: !1319, size: 320, offset: 896)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1320, line: 48, size: 320, elements: !1321)
!1320 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1321 = !{!1322, !1323, !1324, !1325, !1326}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1319, file: !1320, line: 49, baseType: !663, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1319, file: !1320, line: 55, baseType: !663, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1319, file: !1320, line: 57, baseType: !673, size: 32, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1319, file: !1320, line: 59, baseType: !617, size: 32, offset: 160)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1319, file: !1320, line: 60, baseType: !178, size: 128, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !550, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !550, file: !14, line: 1207, baseType: !272, size: 32, offset: 1248)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !550, file: !14, line: 1209, baseType: !173, size: 64, offset: 1280)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !550, file: !14, line: 1211, baseType: !1331, size: 64, offset: 1344)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1334)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !550, file: !14, line: 1223, baseType: !1336, size: 64, offset: 1408)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !452, line: 34, size: 64, elements: !1337)
!1337 = !{!1338}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1336, file: !452, line: 35, baseType: !455, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !550, file: !14, line: 1224, baseType: !178, size: 128, offset: 1472)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !550, file: !14, line: 1225, baseType: !1341, size: 64, offset: 1600)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !550, file: !14, line: 1226, baseType: !1344, size: 64, offset: 1664)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !550, file: !14, line: 1227, baseType: !1347, size: 64, offset: 1728)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !550, file: !14, line: 1228, baseType: !1350, size: 64, offset: 1792)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !550, file: !14, line: 1229, baseType: !903, size: 128, offset: 1856)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !550, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !550, file: !14, line: 1231, baseType: !1355, size: 2496, offset: 2048)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1356)
!1356 = !{!1357, !1358, !1359, !1361, !1393}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1355, file: !19, line: 522, baseType: !7, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1355, file: !19, line: 523, baseType: !1319, size: 320, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1355, file: !19, line: 524, baseType: !1360, size: 192, offset: 384)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 192, elements: !321)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1355, file: !19, line: 525, baseType: !1362, size: 1728, offset: 576)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1363, size: 1728, elements: !321)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1364)
!1364 = !{!1365, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1363, file: !19, line: 223, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1368)
!1368 = !{!1369, !1370, !1383, !1384}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1367, file: !19, line: 446, baseType: !109, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1367, file: !19, line: 447, baseType: !1371, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1374)
!1374 = !{!1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1373, file: !19, line: 313, baseType: !1071, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1373, file: !19, line: 314, baseType: !1071, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1373, file: !19, line: 315, baseType: !1071, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1373, file: !19, line: 316, baseType: !1071, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1373, file: !19, line: 317, baseType: !1186, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1373, file: !19, line: 318, baseType: !1186, size: 64, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1373, file: !19, line: 319, baseType: !1186, size: 64, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1373, file: !19, line: 320, baseType: !1216, size: 64, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1367, file: !19, line: 448, baseType: !588, size: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1367, file: !19, line: 449, baseType: !1366, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1363, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1363, file: !19, line: 226, baseType: !178, size: 128, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1363, file: !19, line: 227, baseType: !370, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1363, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1363, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1363, file: !19, line: 230, baseType: !1151, size: 64, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1363, file: !19, line: 231, baseType: !1151, size: 64, offset: 448)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1363, file: !19, line: 232, baseType: !173, size: 64, offset: 512)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1355, file: !19, line: 526, baseType: !1394, size: 192, offset: 2304)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1371, size: 192, elements: !321)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !550, file: !14, line: 1233, baseType: !1396, size: 2368, offset: 4544)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1397)
!1397 = !{!1398, !1399, !1400}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1396, file: !14, line: 1185, baseType: !290, size: 16)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1396, file: !14, line: 1186, baseType: !290, size: 16, offset: 16)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1396, file: !14, line: 1187, baseType: !1401, size: 2304, offset: 64)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1402, size: 2304, elements: !321)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1403, line: 12, size: 768, elements: !1404)
!1403 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1404 = !{!1405, !1419, !1420, !3504, !3505}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1402, file: !1403, line: 13, baseType: !1406, size: 384)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1407, line: 17, size: 384, elements: !1408)
!1407 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1408 = !{!1409, !1410, !1411, !1418}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1406, file: !1407, line: 18, baseType: !109, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1406, file: !1407, line: 19, baseType: !109, size: 32, offset: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1406, file: !1407, line: 20, baseType: !1412, size: 192, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1413, line: 41, baseType: !1414)
!1413 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1413, line: 37, size: 192, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1414, file: !1413, line: 38, baseType: !252, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1414, file: !1413, line: 39, baseType: !178, size: 128, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1406, file: !1407, line: 22, baseType: !877, size: 128, align: 64, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1402, file: !1403, line: 14, baseType: !731, size: 64, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1402, file: !1403, line: 15, baseType: !1421, size: 64, offset: 448)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1422, line: 16, size: 64, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1423 = !{!1424}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1421, file: !1422, line: 17, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1101, line: 746, size: 58368, elements: !1427)
!1427 = !{!1428, !1436, !1437, !1438, !1444, !1445, !1446, !1447, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1518, !1529, !1624, !1628, !1631, !1662, !1663, !1664, !1665, !1676, !1678, !1679, !1680, !1681, !1682, !1683, !1694, !1695, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1712, !1713, !1720, !1721, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2678, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2726, !2732, !2733, !2734, !2735, !2736, !2740, !2743, !2750, !2755, !2758, !2761, !2764, !2768, !2906, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2944, !2945, !2946, !2955, !2963, !2964, !2965, !2966, !2967, !2972, !2973, !2974, !2977, !2978, !2981, !2984, !2987, !2995, !2998, !2999, !3085, !3086, !3087, !3088, !3089, !3095, !3096, !3097, !3098, !3101, !3102, !3105, !3108, !3109, !3112, !3113, !3114, !3117, !3118, !3119, !3120, !3121, !3122, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3154, !3155, !3161, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3173, !3245, !3247, !3248, !3249, !3250, !3251, !3252, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3281, !3282, !3283}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1426, file: !1101, line: 752, baseType: !1429, size: 192)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1430, line: 56, size: 192, elements: !1431)
!1430 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1431 = !{!1432, !1433, !1434, !1435}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1429, file: !1430, line: 57, baseType: !370, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1429, file: !1430, line: 58, baseType: !370, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1429, file: !1430, line: 59, baseType: !190, size: 32, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1429, file: !1430, line: 61, baseType: !190, size: 32, offset: 160)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1426, file: !1101, line: 754, baseType: !7, size: 32, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1426, file: !1101, line: 767, baseType: !173, size: 64, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1426, file: !1101, line: 768, baseType: !1439, size: 32, offset: 320)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1440, line: 113, baseType: !1441)
!1440 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1440, line: 111, size: 32, elements: !1442)
!1442 = !{!1443}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1441, file: !1440, line: 112, baseType: !272, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1426, file: !1101, line: 770, baseType: !7, size: 32, offset: 352)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1426, file: !1101, line: 771, baseType: !7, size: 32, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1426, file: !1101, line: 774, baseType: !109, size: 32, offset: 416)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1426, file: !1101, line: 775, baseType: !1448, size: 128, offset: 448)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1449, line: 58, size: 128, elements: !1450)
!1449 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1450 = !{!1451, !1457, !1462, !1463}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1448, file: !1449, line: 59, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1453, line: 60, size: 64, elements: !1454)
!1453 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1452, file: !1453, line: 61, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !1449, line: 60, baseType: !1458, size: 32, offset: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !1449, line: 60, size: 32, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1458, file: !1449, line: 61, baseType: !7, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1458, file: !1449, line: 62, baseType: !272, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1448, file: !1449, line: 65, baseType: !288, size: 16, offset: 96)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1448, file: !1449, line: 65, baseType: !288, size: 16, offset: 112)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1426, file: !1101, line: 776, baseType: !7, size: 32, offset: 576)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1426, file: !1101, line: 777, baseType: !370, size: 64, offset: 640)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1426, file: !1101, line: 778, baseType: !1425, size: 64, offset: 704)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1426, file: !1101, line: 787, baseType: !109, size: 32, offset: 768)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1426, file: !1101, line: 788, baseType: !109, size: 32, offset: 800)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1426, file: !1101, line: 790, baseType: !109, size: 32, offset: 832)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1426, file: !1101, line: 792, baseType: !109, size: 32, offset: 864)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1426, file: !1101, line: 793, baseType: !109, size: 32, offset: 896)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1426, file: !1101, line: 794, baseType: !109, size: 32, offset: 928)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1426, file: !1101, line: 795, baseType: !7, size: 32, offset: 960)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1426, file: !1101, line: 797, baseType: !1475, size: 2048, offset: 1024)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1101, line: 551, size: 2048, elements: !1476)
!1476 = !{!1477, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1497, !1500, !1501, !1502}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1475, file: !1101, line: 553, baseType: !1478, size: 128)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1101, line: 411, size: 128, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1478, file: !1101, line: 412, baseType: !370, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1478, file: !1101, line: 413, baseType: !190, size: 32, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1475, file: !1101, line: 554, baseType: !769, size: 192, align: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1475, file: !1101, line: 555, baseType: !471, size: 64, offset: 320)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1475, file: !1101, line: 556, baseType: !471, size: 64, offset: 384)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1475, file: !1101, line: 558, baseType: !178, size: 128, offset: 448)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1475, file: !1101, line: 559, baseType: !7, size: 32, offset: 576)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1475, file: !1101, line: 561, baseType: !471, size: 64, offset: 640)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1475, file: !1101, line: 562, baseType: !471, size: 64, offset: 704)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1475, file: !1101, line: 563, baseType: !471, size: 64, offset: 768)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1475, file: !1101, line: 564, baseType: !471, size: 64, offset: 832)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1475, file: !1101, line: 565, baseType: !669, size: 64, offset: 896)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1475, file: !1101, line: 566, baseType: !471, size: 64, offset: 960)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1475, file: !1101, line: 568, baseType: !471, size: 64, offset: 1024)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1475, file: !1101, line: 571, baseType: !109, size: 32, offset: 1088)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1475, file: !1101, line: 572, baseType: !1496, size: 64, offset: 1152)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1475, file: !1101, line: 574, baseType: !1498, size: 64, offset: 1216)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1101, line: 49, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1475, file: !1101, line: 576, baseType: !1498, size: 64, offset: 1280)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1475, file: !1101, line: 578, baseType: !370, size: 64, offset: 1344)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1475, file: !1101, line: 588, baseType: !1503, size: 512, align: 512, offset: 1536)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1101, line: 497, size: 512, align: 512, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1503, file: !1101, line: 498, baseType: !471, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1503, file: !1101, line: 499, baseType: !471, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1503, file: !1101, line: 500, baseType: !471, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1503, file: !1101, line: 501, baseType: !190, size: 32, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1503, file: !1101, line: 502, baseType: !190, size: 32, offset: 224)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1503, file: !1101, line: 503, baseType: !370, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1503, file: !1101, line: 504, baseType: !370, size: 64, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1503, file: !1101, line: 505, baseType: !370, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1503, file: !1101, line: 506, baseType: !1514, size: 64, align: 64, offset: 448)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1101, line: 445, size: 64, align: 64, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1514, file: !1101, line: 446, baseType: !7, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1514, file: !1101, line: 447, baseType: !7, size: 32, offset: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1426, file: !1101, line: 798, baseType: !1519, size: 384, offset: 3072)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1101, line: 592, size: 384, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1519, file: !1101, line: 593, baseType: !178, size: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1519, file: !1101, line: 594, baseType: !370, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1519, file: !1101, line: 595, baseType: !370, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1519, file: !1101, line: 596, baseType: !7, size: 32, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1519, file: !1101, line: 597, baseType: !290, size: 16, offset: 288)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1519, file: !1101, line: 598, baseType: !290, size: 16, offset: 304)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1519, file: !1101, line: 600, baseType: !1528, size: 64, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1426, file: !1101, line: 799, baseType: !1530, size: 1792, offset: 3456)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1101, line: 610, size: 1792, elements: !1531)
!1531 = !{!1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1621, !1622}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1530, file: !1101, line: 611, baseType: !769, size: 192, align: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1530, file: !1101, line: 618, baseType: !471, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1530, file: !1101, line: 619, baseType: !471, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1530, file: !1101, line: 620, baseType: !471, size: 64, offset: 320)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1530, file: !1101, line: 621, baseType: !471, size: 64, offset: 384)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1530, file: !1101, line: 622, baseType: !471, size: 64, offset: 448)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1530, file: !1101, line: 629, baseType: !669, size: 64, offset: 512)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1530, file: !1101, line: 630, baseType: !471, size: 64, offset: 576)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1530, file: !1101, line: 631, baseType: !7, size: 32, offset: 640)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1530, file: !1101, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1530, file: !1101, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1530, file: !1101, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1530, file: !1101, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1530, file: !1101, line: 662, baseType: !1546, size: 512, offset: 704)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1547)
!1547 = !{!1548, !1556, !1557, !1562, !1617, !1618, !1619, !1620}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1546, file: !25, line: 119, baseType: !1549, size: 256)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1550, line: 9, size: 256, elements: !1551)
!1550 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1549, file: !1550, line: 10, baseType: !769, size: 192, align: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1549, file: !1550, line: 11, baseType: !1554, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1555, line: 29, baseType: !669)
!1555 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1546, file: !25, line: 120, baseType: !1554, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1546, file: !25, line: 121, baseType: !1558, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!24, !1561}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1546, file: !25, line: 122, baseType: !1563, size: 64, offset: 384)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1565)
!1565 = !{!1566, !1591, !1592, !1595, !1600, !1601, !1612, !1616}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1564, file: !25, line: 160, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1569)
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1568, file: !25, line: 216, baseType: !617, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1568, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1568, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1568, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1568, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1568, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1568, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1568, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1568, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1568, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1568, file: !25, line: 227, baseType: !290, size: 16, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1568, file: !25, line: 228, baseType: !290, size: 16, offset: 208)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1568, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1568, file: !25, line: 235, baseType: !1554, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1568, file: !25, line: 236, baseType: !1561, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1568, file: !25, line: 237, baseType: !1554, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1568, file: !25, line: 238, baseType: !1561, size: 64, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1568, file: !25, line: 239, baseType: !1588, size: 4096, align: 512, offset: 512)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1564, size: 4096, align: 512, elements: !1589)
!1589 = !{!1590}
!1590 = !DISubrange(count: 8)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1564, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1564, file: !25, line: 162, baseType: !1593, size: 32, offset: 96)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !179, line: 32, baseType: !1594)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !354, line: 96, baseType: !109)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1564, file: !25, line: 163, baseType: !1596, size: 32, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !442, line: 274, baseType: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !442, line: 274, size: 32, elements: !1598)
!1598 = !{!1599}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1597, file: !442, line: 274, baseType: !446, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1564, file: !25, line: 164, baseType: !1561, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1564, file: !25, line: 165, baseType: !1602, size: 128, offset: 256)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1550, line: 14, size: 128, elements: !1603)
!1603 = !{!1604}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1602, file: !1550, line: 15, baseType: !1605, size: 128)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !770, line: 26, size: 128, elements: !1606)
!1606 = !{!1607, !1611}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1605, file: !770, line: 27, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !770, line: 12, size: 64, elements: !1609)
!1609 = !{!1610}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1608, file: !770, line: 13, baseType: !774, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1605, file: !770, line: 28, baseType: !774, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1564, file: !25, line: 166, baseType: !1613, size: 64, offset: 384)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!1554}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1564, file: !25, line: 167, baseType: !1554, size: 64, offset: 448)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1546, file: !25, line: 123, baseType: !280, size: 8, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1546, file: !25, line: 124, baseType: !280, size: 8, offset: 456)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1546, file: !25, line: 125, baseType: !280, size: 8, offset: 464)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1546, file: !25, line: 126, baseType: !280, size: 8, offset: 472)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1530, file: !1101, line: 671, baseType: !1546, size: 512, offset: 1216)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1530, file: !1101, line: 679, baseType: !1623, size: 64, offset: 1728)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1426, file: !1101, line: 800, baseType: !1625, size: 64, offset: 5248)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1627)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1101, line: 800, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1426, file: !1101, line: 809, baseType: !1629, size: 64, offset: 5312)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1101, line: 70, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1426, file: !1101, line: 825, baseType: !1632, size: 2048, align: 512, offset: 5632)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1101, line: 509, size: 2048, align: 512, elements: !1633)
!1633 = !{!1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1632, file: !1101, line: 511, baseType: !471, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1632, file: !1101, line: 512, baseType: !471, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1632, file: !1101, line: 513, baseType: !471, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1632, file: !1101, line: 514, baseType: !471, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1632, file: !1101, line: 515, baseType: !471, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1632, file: !1101, line: 516, baseType: !471, size: 64, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1632, file: !1101, line: 518, baseType: !471, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1632, file: !1101, line: 519, baseType: !471, size: 64, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1632, file: !1101, line: 520, baseType: !669, size: 64, offset: 512)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1632, file: !1101, line: 522, baseType: !471, size: 64, offset: 576)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1632, file: !1101, line: 523, baseType: !471, size: 64, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1632, file: !1101, line: 524, baseType: !669, size: 64, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1632, file: !1101, line: 526, baseType: !669, size: 64, offset: 768)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1632, file: !1101, line: 527, baseType: !471, size: 64, offset: 832)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1632, file: !1101, line: 529, baseType: !471, size: 64, offset: 896)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1632, file: !1101, line: 530, baseType: !471, size: 64, offset: 960)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1632, file: !1101, line: 531, baseType: !471, size: 64, offset: 1024)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1632, file: !1101, line: 532, baseType: !471, size: 64, offset: 1088)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1632, file: !1101, line: 533, baseType: !471, size: 64, offset: 1152)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1632, file: !1101, line: 535, baseType: !471, size: 64, offset: 1216)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1632, file: !1101, line: 536, baseType: !471, size: 64, offset: 1280)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1632, file: !1101, line: 537, baseType: !471, size: 64, offset: 1344)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1632, file: !1101, line: 538, baseType: !471, size: 64, offset: 1408)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1632, file: !1101, line: 539, baseType: !471, size: 64, offset: 1472)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1632, file: !1101, line: 540, baseType: !471, size: 64, offset: 1536)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1632, file: !1101, line: 541, baseType: !471, size: 64, offset: 1600)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1632, file: !1101, line: 542, baseType: !471, size: 64, offset: 1664)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1632, file: !1101, line: 543, baseType: !471, size: 64, offset: 1728)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1426, file: !1101, line: 833, baseType: !7, size: 32, offset: 7680)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1426, file: !1101, line: 836, baseType: !7, size: 32, offset: 7712)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1426, file: !1101, line: 837, baseType: !109, size: 32, offset: 7744)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1426, file: !1101, line: 838, baseType: !1666, size: 64, offset: 7808)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1668)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1669, line: 19, baseType: !1670)
!1669 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1669, line: 19, size: 64, elements: !1671)
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1670, file: !1669, line: 19, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 64, elements: !1674)
!1674 = !{!1675}
!1675 = !DISubrange(count: 1)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1426, file: !1101, line: 839, baseType: !1677, size: 64, offset: 7872)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1426, file: !1101, line: 840, baseType: !1668, size: 64, offset: 7936)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1426, file: !1101, line: 841, baseType: !173, size: 64, offset: 8000)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1426, file: !1101, line: 843, baseType: !290, size: 16, offset: 8064)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1426, file: !1101, line: 845, baseType: !290, size: 16, offset: 8080)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1426, file: !1101, line: 848, baseType: !109, size: 32, offset: 8096)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1426, file: !1101, line: 849, baseType: !1684, size: 32, offset: 8128)
!1684 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1101, line: 718, size: 32, elements: !1685)
!1685 = !{!1686, !1693}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1684, file: !1101, line: 724, baseType: !1687, size: 32)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1684, file: !1101, line: 719, size: 32, elements: !1688)
!1688 = !{!1689, !1690, !1691, !1692}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1687, file: !1101, line: 720, baseType: !280, size: 8)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1687, file: !1101, line: 721, baseType: !280, size: 8, offset: 8)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1687, file: !1101, line: 722, baseType: !280, size: 8, offset: 16)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1687, file: !1101, line: 723, baseType: !280, size: 8, offset: 24)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1684, file: !1101, line: 725, baseType: !190, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1426, file: !1101, line: 850, baseType: !178, size: 128, offset: 8192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1426, file: !1101, line: 851, baseType: !1696, size: 64, offset: 8320)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1101, line: 60, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1426, file: !1101, line: 855, baseType: !370, size: 64, offset: 8384)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1426, file: !1101, line: 856, baseType: !280, size: 8, offset: 8448)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1426, file: !1101, line: 857, baseType: !280, size: 8, offset: 8456)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1426, file: !1101, line: 858, baseType: !109, size: 32, offset: 8480)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1426, file: !1101, line: 859, baseType: !178, size: 128, offset: 8512)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1426, file: !1101, line: 860, baseType: !109, size: 32, offset: 8640)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1426, file: !1101, line: 861, baseType: !178, size: 128, offset: 8704)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1426, file: !1101, line: 873, baseType: !1706, size: 256, offset: 8832)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1101, line: 376, size: 256, elements: !1707)
!1707 = !{!1708, !1709, !1710, !1711}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1706, file: !1101, line: 381, baseType: !370, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1706, file: !1101, line: 384, baseType: !473, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1706, file: !1101, line: 389, baseType: !473, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1706, file: !1101, line: 392, baseType: !473, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1426, file: !1101, line: 875, baseType: !178, size: 128, offset: 9088)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1426, file: !1101, line: 877, baseType: !1714, size: 320, offset: 9216)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1715, line: 86, size: 320, elements: !1716)
!1715 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1716 = !{!1717, !1718, !1719}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1714, file: !1715, line: 87, baseType: !109, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1714, file: !1715, line: 88, baseType: !178, size: 128, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1714, file: !1715, line: 89, baseType: !178, size: 128, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1426, file: !1101, line: 878, baseType: !769, size: 192, align: 64, offset: 9536)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1426, file: !1101, line: 881, baseType: !1722, size: 64, offset: 9728)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1724)
!1724 = !{!1725, !2597}
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1723, file: !38, line: 734, baseType: !1726, size: 10240)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1723, file: !38, line: 734, size: 10240, elements: !1727)
!1727 = !{!1728, !1732, !1745, !2476, !2477, !2478, !2479, !2480, !2481, !2488, !2489, !2490, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2529, !2531, !2534, !2577, !2578, !2579, !2582, !2583, !2584, !2587, !2588, !2589, !2595, !2596}
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1726, file: !38, line: 739, baseType: !1729, size: 512, align: 512)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1726, file: !38, line: 739, size: 512, align: 512, elements: !1730)
!1730 = !{!1731}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1729, file: !38, line: 747, baseType: !272, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1726, file: !38, line: 750, baseType: !1733, size: 128, offset: 512)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1734, line: 218, size: 128, elements: !1735)
!1734 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1735 = !{!1736, !1743, !1744}
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1733, file: !1734, line: 219, baseType: !1737, size: 32)
!1737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1733, file: !1734, line: 219, size: 32, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1737, file: !1734, line: 220, baseType: !252, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1737, file: !1734, line: 221, baseType: !1741)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1734, line: 197, baseType: !1742)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1734, line: 197, elements: !946)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1733, file: !1734, line: 223, baseType: !7, size: 32, offset: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1733, file: !1734, line: 224, baseType: !173, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1726, file: !38, line: 752, baseType: !1746, size: 64, offset: 640)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!370, !1749, !370, !370, !370, !370}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1751)
!1751 = !{!1752, !1758, !1759, !1761, !1762, !1763, !1764, !1765, !1815, !2005, !2014, !2015, !2016, !2466, !2467, !2468, !2469, !2471, !2472, !2475}
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1750, file: !14, line: 995, baseType: !1753, size: 128)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1750, file: !14, line: 995, size: 128, elements: !1754)
!1754 = !{!1755, !1756, !1757}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1753, file: !14, line: 996, baseType: !1452, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1753, file: !14, line: 997, baseType: !877, size: 128, align: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1753, file: !14, line: 998, baseType: !7, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1750, file: !14, line: 1005, baseType: !252, size: 32, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1750, file: !14, line: 1006, baseType: !1760, size: 32, offset: 160)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !179, line: 156, baseType: !7)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1750, file: !14, line: 1007, baseType: !663, size: 64, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1750, file: !14, line: 1008, baseType: !659, size: 256, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1750, file: !14, line: 1009, baseType: !559, size: 64, offset: 512)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1750, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1750, file: !14, line: 1011, baseType: !1766, size: 256, offset: 640)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1767)
!1767 = !{!1768, !1789, !1811, !1812, !1813, !1814}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1766, file: !14, line: 949, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1770, line: 34, baseType: !1771)
!1770 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1770, line: 25, size: 64, elements: !1772)
!1772 = !{!1773}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1771, file: !1770, line: 26, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1775, line: 27, baseType: !1776)
!1775 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1775, line: 13, size: 64, elements: !1777)
!1777 = !{!1778, !1788}
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !1775, line: 14, baseType: !1779, size: 32)
!1779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1776, file: !1775, line: 14, size: 32, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1779, file: !1775, line: 15, baseType: !272, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, scope: !1779, file: !1775, line: 16, baseType: !1783, size: 32)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1779, file: !1775, line: 16, size: 32, elements: !1784)
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1783, file: !1775, line: 18, baseType: !280, size: 8)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1783, file: !1775, line: 19, baseType: !1787, size: 24, offset: 8)
!1787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 24, elements: !321)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1776, file: !1775, line: 26, baseType: !264, size: 32, offset: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1766, file: !14, line: 950, baseType: !1790, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1792)
!1792 = !{!1793, !1794, !1795, !1796, !1798, !1799, !1800, !1801}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1791, file: !30, line: 61, baseType: !1439, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1791, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1791, file: !30, line: 63, baseType: !252, size: 32, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1791, file: !30, line: 65, baseType: !1797, size: 256, offset: 128)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1027, size: 256, elements: !887)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1791, file: !30, line: 66, baseType: !1027, size: 64, offset: 384)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1791, file: !30, line: 68, baseType: !1412, size: 192, offset: 448)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1791, file: !30, line: 69, baseType: !877, size: 128, align: 64, offset: 640)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1791, file: !30, line: 70, baseType: !1802, offset: 768)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1803, elements: !1809)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1804)
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1803, file: !30, line: 55, baseType: !109, size: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1803, file: !30, line: 56, baseType: !1807, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1809 = !{!1810}
!1810 = !DISubrange(count: -1)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1766, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1766, file: !14, line: 952, baseType: !406, size: 32, offset: 160)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1766, file: !14, line: 952, baseType: !406, size: 32, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1766, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1750, file: !14, line: 1012, baseType: !1816, size: 64, offset: 896)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1819, line: 110, size: 1472, elements: !1820)
!1819 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1837, !1838, !1839, !1840, !1841, !1842, !1950, !1951, !1952, !1953, !1954, !1985, !1988, !1992, !2000}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1818, file: !1819, line: 111, baseType: !663, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1818, file: !1819, line: 112, baseType: !406, size: 32, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1818, file: !1819, line: 113, baseType: !415, size: 32, offset: 96)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1818, file: !1819, line: 114, baseType: !406, size: 32, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1818, file: !1819, line: 115, baseType: !415, size: 32, offset: 160)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1818, file: !1819, line: 116, baseType: !406, size: 32, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1818, file: !1819, line: 117, baseType: !415, size: 32, offset: 224)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1818, file: !1819, line: 118, baseType: !406, size: 32, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1818, file: !1819, line: 119, baseType: !415, size: 32, offset: 288)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1818, file: !1819, line: 120, baseType: !7, size: 32, offset: 320)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1818, file: !1819, line: 121, baseType: !1832, size: 64, offset: 384)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1833, line: 24, baseType: !1834)
!1833 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1833, line: 24, size: 64, elements: !1835)
!1835 = !{!1836}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1834, file: !1833, line: 24, baseType: !471, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1818, file: !1819, line: 122, baseType: !1832, size: 64, offset: 448)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1818, file: !1819, line: 123, baseType: !1832, size: 64, offset: 512)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1818, file: !1819, line: 124, baseType: !1832, size: 64, offset: 576)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1818, file: !1819, line: 125, baseType: !1832, size: 64, offset: 640)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1818, file: !1819, line: 127, baseType: !282, size: 8, offset: 704)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1818, file: !1819, line: 129, baseType: !1843, size: 64, offset: 768)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1845, line: 195, size: 1728, elements: !1846)
!1845 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1846 = !{!1847, !1848, !1851, !1856, !1857, !1860, !1861, !1866, !1867, !1868, !1869, !1872, !1873, !1874, !1875, !1876, !1914, !1935}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1844, file: !1845, line: 196, baseType: !1439, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1844, file: !1845, line: 197, baseType: !1849, size: 32, offset: 32)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1845, line: 28, baseType: !1850)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !179, line: 104, baseType: !655)
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !1845, line: 198, baseType: !1852, size: 192, offset: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1844, file: !1845, line: 198, size: 192, elements: !1853)
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1852, file: !1845, line: 199, baseType: !178, size: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1852, file: !1845, line: 200, baseType: !769, size: 192, align: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1844, file: !1845, line: 205, baseType: !1319, size: 320, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1844, file: !1845, line: 206, baseType: !1858, size: 64, offset: 576)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1845, line: 206, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1844, file: !1845, line: 207, baseType: !173, size: 64, offset: 640)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !1845, line: 208, baseType: !1862, size: 64, offset: 704)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1844, file: !1845, line: 208, size: 64, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1862, file: !1845, line: 209, baseType: !1159, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1862, file: !1845, line: 210, baseType: !1159, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1844, file: !1845, line: 212, baseType: !1159, size: 64, offset: 768)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1844, file: !1845, line: 213, baseType: !406, size: 32, offset: 832)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1844, file: !1845, line: 214, baseType: !415, size: 32, offset: 864)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1844, file: !1845, line: 215, baseType: !1870, size: 32, offset: 896)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1845, line: 31, baseType: !1871)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !179, line: 110, baseType: !190)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1844, file: !1845, line: 216, baseType: !290, size: 16, offset: 928)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1844, file: !1845, line: 217, baseType: !290, size: 16, offset: 944)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1844, file: !1845, line: 221, baseType: !795, size: 16, offset: 960)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1844, file: !1845, line: 228, baseType: !370, size: 64, offset: 1024)
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !1845, line: 245, baseType: !1877, size: 320, offset: 1088)
!1877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1844, file: !1845, line: 245, size: 320, elements: !1878)
!1878 = !{!1879, !1906}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1877, file: !1845, line: 246, baseType: !1880, size: 320)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1845, line: 114, size: 320, elements: !1881)
!1881 = !{!1882, !1883, !1895, !1898, !1905}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1880, file: !1845, line: 116, baseType: !370, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, scope: !1880, file: !1845, line: 117, baseType: !1884, size: 64, offset: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1880, file: !1845, line: 117, size: 64, elements: !1885)
!1885 = !{!1886, !1894}
!1886 = !DIDerivedType(tag: DW_TAG_member, scope: !1884, file: !1845, line: 118, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !1845, line: 118, size: 64, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1887, file: !1845, line: 120, baseType: !288, size: 16)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1887, file: !1845, line: 121, baseType: !1891, size: 48, offset: 16)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 48, elements: !1892)
!1892 = !{!1893}
!1893 = !DISubrange(count: 6)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1884, file: !1845, line: 127, baseType: !370, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1880, file: !1845, line: 129, baseType: !1896, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1845, line: 102, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1880, file: !1845, line: 130, baseType: !1899, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1845, line: 108, size: 192, elements: !1901)
!1901 = !{!1902, !1903, !1904}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1900, file: !1845, line: 109, baseType: !877, size: 128, align: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1900, file: !1845, line: 110, baseType: !1439, size: 32, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1900, file: !1845, line: 111, baseType: !221, size: 8, offset: 160)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1880, file: !1845, line: 131, baseType: !240, size: 64, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1877, file: !1845, line: 247, baseType: !1907, size: 320)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1877, file: !1845, line: 247, size: 320, elements: !1908)
!1908 = !{!1909, !1910, !1911, !1912, !1913}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1907, file: !1845, line: 248, baseType: !370, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1907, file: !1845, line: 249, baseType: !370, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1907, file: !1845, line: 250, baseType: !1896, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1907, file: !1845, line: 251, baseType: !1899, size: 64, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1907, file: !1845, line: 252, baseType: !320, size: 64, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !1845, line: 260, baseType: !1915, size: 256, offset: 1408)
!1915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1844, file: !1845, line: 260, size: 256, elements: !1916)
!1916 = !{!1917, !1923}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1915, file: !1845, line: 261, baseType: !1918, size: 256)
!1918 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1845, line: 134, size: 256, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1918, file: !1845, line: 135, baseType: !173, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1918, file: !1845, line: 136, baseType: !1922, size: 256)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 256, elements: !887)
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1915, file: !1845, line: 262, baseType: !1924, size: 256)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1915, file: !1845, line: 262, size: 256, elements: !1925)
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1924, file: !1845, line: 264, baseType: !178, size: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1924, file: !1845, line: 265, baseType: !1928, size: 128, offset: 128)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1929, line: 22, size: 128, elements: !1930)
!1929 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1930 = !{!1931, !1934}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1928, file: !1929, line: 23, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1929, line: 23, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1928, file: !1929, line: 24, baseType: !370, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1844, file: !1845, line: 280, baseType: !1936, size: 64, offset: 1664)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1845, line: 176, size: 192, elements: !1938)
!1938 = !{!1939, !1948, !1949}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1937, file: !1845, line: 177, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1845, line: 171, baseType: !1941)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!109, !1843, !1944, !1946, !1843}
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1897)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1918)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1937, file: !1845, line: 178, baseType: !1843, size: 64, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1937, file: !1845, line: 179, baseType: !1896, size: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1818, file: !1819, line: 130, baseType: !1843, size: 64, offset: 832)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1818, file: !1819, line: 131, baseType: !1843, size: 64, offset: 896)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1818, file: !1819, line: 132, baseType: !1843, size: 64, offset: 960)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1818, file: !1819, line: 135, baseType: !173, size: 64, offset: 1024)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1818, file: !1819, line: 137, baseType: !1955, size: 64, offset: 1088)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1957, line: 14, size: 1088, elements: !1958)
!1957 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1958 = !{!1959, !1960, !1969, !1970, !1971, !1972, !1973, !1974}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1956, file: !1957, line: 15, baseType: !1439, size: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1956, file: !1957, line: 17, baseType: !1961, size: 320, offset: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1962, line: 22, size: 320, elements: !1963)
!1962 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1963 = !{!1964, !1965, !1966, !1967}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1961, file: !1962, line: 23, baseType: !617, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1961, file: !1962, line: 24, baseType: !669, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1961, file: !1962, line: 26, baseType: !178, size: 128, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1961, file: !1962, line: 28, baseType: !1968, size: 64, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1956, file: !1957, line: 19, baseType: !370, size: 64, offset: 384)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1956, file: !1957, line: 20, baseType: !663, size: 64, offset: 448)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1956, file: !1957, line: 23, baseType: !903, size: 128, offset: 512)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1956, file: !1957, line: 24, baseType: !406, size: 32, offset: 640)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1956, file: !1957, line: 29, baseType: !663, size: 64, offset: 704)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1956, file: !1957, line: 36, baseType: !1975, size: 320, offset: 768)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1976, line: 15, size: 320, elements: !1977)
!1976 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1977 = !{!1978, !1979, !1980, !1981, !1982, !1983, !1984}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1975, file: !1976, line: 16, baseType: !617, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1975, file: !1976, line: 18, baseType: !109, size: 32, offset: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1975, file: !1976, line: 19, baseType: !109, size: 32, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1975, file: !1976, line: 20, baseType: !109, size: 32, offset: 96)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1975, file: !1976, line: 21, baseType: !109, size: 32, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1975, file: !1976, line: 22, baseType: !370, size: 64, offset: 192)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1975, file: !1976, line: 23, baseType: !370, size: 64, offset: 256)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1818, file: !1819, line: 138, baseType: !1986, size: 64, offset: 1152)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !407, line: 18, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1818, file: !1819, line: 139, baseType: !1989, size: 64, offset: 1216)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1991, line: 16, flags: DIFlagFwdDecl)
!1991 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1818, file: !1819, line: 140, baseType: !1993, size: 64, offset: 1280)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1819, line: 25, size: 64, elements: !1995)
!1995 = !{!1996, !1997, !1998}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1994, file: !1819, line: 26, baseType: !272, size: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1994, file: !1819, line: 27, baseType: !109, size: 32, offset: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1994, file: !1819, line: 28, baseType: !1999, offset: 64)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, elements: !1809)
!2000 = !DIDerivedType(tag: DW_TAG_member, scope: !1818, file: !1819, line: 142, baseType: !2001, size: 128, offset: 1344)
!2001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1818, file: !1819, line: 142, size: 128, elements: !2002)
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2001, file: !1819, line: 143, baseType: !109, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2001, file: !1819, line: 144, baseType: !877, size: 128, align: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1750, file: !14, line: 1013, baseType: !2006, size: 256, offset: 960)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2007)
!2007 = !{!2008, !2009, !2010, !2011, !2012, !2013}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2006, file: !14, line: 971, baseType: !370, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2006, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2006, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2006, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2006, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2006, file: !14, line: 976, baseType: !559, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1750, file: !14, line: 1014, baseType: !1231, size: 128, offset: 1216)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1750, file: !14, line: 1015, baseType: !400, size: 64, offset: 1344)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1750, file: !14, line: 1016, baseType: !2017, size: 64, offset: 1408)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2019)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2020)
!2020 = !{!2021, !2022, !2026, !2031, !2035, !2064, !2065, !2071, !2084, !2092, !2096, !2097, !2388, !2389, !2393, !2398, !2399, !2403, !2407, !2413, !2414, !2418, !2419, !2425, !2429, !2433, !2439, !2443, !2447, !2451, !2455, !2456, !2462}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2019, file: !14, line: 1915, baseType: !588, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2019, file: !14, line: 1916, baseType: !2023, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!559, !1749, !559, !109}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2019, file: !14, line: 1917, baseType: !2027, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!352, !1749, !320, !367, !2030}
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2019, file: !14, line: 1918, baseType: !2032, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!352, !1749, !240, !367, !2030}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2019, file: !14, line: 1919, baseType: !2036, size: 64, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!352, !2039, !2061}
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2041)
!2041 = !{!2042, !2043, !2044, !2048, !2049, !2050, !2051}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2040, file: !14, line: 374, baseType: !1749, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2040, file: !14, line: 375, baseType: !559, size: 64, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2040, file: !14, line: 376, baseType: !2045, size: 64, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !2039, !356}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2040, file: !14, line: 377, baseType: !173, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2040, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2040, file: !14, line: 379, baseType: !288, size: 16, offset: 288)
!2051 = !DIDerivedType(tag: DW_TAG_member, scope: !2040, file: !14, line: 380, baseType: !2052, size: 64, offset: 320)
!2052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2040, file: !14, line: 380, size: 64, elements: !2053)
!2053 = !{!2054, !2057}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2052, file: !14, line: 386, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2052, file: !14, line: 395, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!352, !173}
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2063, line: 17, flags: DIFlagFwdDecl)
!2063 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2019, file: !14, line: 1920, baseType: !2036, size: 64, offset: 320)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2019, file: !14, line: 1921, baseType: !2066, size: 64, offset: 384)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!109, !2039, !2069, !7}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2019, file: !14, line: 1923, baseType: !2072, size: 64, offset: 448)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!109, !1749, !2075}
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2077)
!2077 = !{!2078, !2083}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2076, file: !14, line: 1859, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2080)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!221, !2075, !240, !109, !559, !471, !7}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2076, file: !14, line: 1860, baseType: !559, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2019, file: !14, line: 1924, baseType: !2085, size: 64, offset: 512)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!2088, !1749, !2090}
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2089, line: 59, baseType: !7)
!2089 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !574, line: 31, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2019, file: !14, line: 1925, baseType: !2093, size: 64, offset: 576)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!356, !1749, !7, !370}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2019, file: !14, line: 1926, baseType: !2093, size: 64, offset: 640)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2019, file: !14, line: 1927, baseType: !2098, size: 64, offset: 704)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!109, !1749, !2101}
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2103)
!2103 = !{!2104, !2113, !2114, !2122, !2129, !2130, !2135, !2136, !2141, !2142, !2145, !2381, !2382, !2383, !2384, !2385, !2386}
!2104 = !DIDerivedType(tag: DW_TAG_member, scope: !2102, file: !38, line: 628, baseType: !2105, size: 128)
!2105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2102, file: !38, line: 628, size: 128, elements: !2106)
!2106 = !{!2107, !2112}
!2107 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !38, line: 629, baseType: !2108, size: 128)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2105, file: !38, line: 629, size: 128, elements: !2109)
!2109 = !{!2110, !2111}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2108, file: !38, line: 631, baseType: !370, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2108, file: !38, line: 632, baseType: !370, size: 64, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2105, file: !38, line: 635, baseType: !877, size: 128, align: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2102, file: !38, line: 639, baseType: !1722, size: 64, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2102, file: !38, line: 640, baseType: !2115, size: 64, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2116, line: 297, baseType: !2117)
!2116 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2116, line: 297, size: 64, elements: !2118)
!2118 = !{!2119}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2117, file: !2116, line: 297, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2121, line: 19, baseType: !370)
!2121 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2122 = !DIDerivedType(tag: DW_TAG_member, scope: !2102, file: !38, line: 646, baseType: !2123, size: 64, offset: 256)
!2123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2102, file: !38, line: 646, size: 64, elements: !2124)
!2124 = !{!2125, !2128}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2123, file: !38, line: 647, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2127)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !370)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2123, file: !38, line: 648, baseType: !2127, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2102, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2102, file: !38, line: 667, baseType: !2131, size: 64, offset: 384)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2133)
!2133 = !{!2134}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2132, file: !38, line: 580, baseType: !1319, size: 320)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2102, file: !38, line: 670, baseType: !221, size: 8, offset: 448)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2102, file: !38, line: 681, baseType: !2137, size: 256, offset: 512)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2102, file: !38, line: 678, size: 256, elements: !2138)
!2138 = !{!2139, !2140}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2137, file: !38, line: 679, baseType: !769, size: 192, align: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2137, file: !38, line: 680, baseType: !370, size: 64, offset: 192)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2102, file: !38, line: 689, baseType: !178, size: 128, offset: 768)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2102, file: !38, line: 691, baseType: !2143, size: 64, offset: 896)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2102, file: !38, line: 694, baseType: !2146, size: 64, offset: 960)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2148)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2149, line: 563, size: 1024, elements: !2150)
!2149 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2150 = !{!2151, !2155, !2156, !2160, !2164, !2168, !2345, !2349, !2353, !2357, !2358, !2359, !2363, !2367, !2373, !2377}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2148, file: !2149, line: 564, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !2101}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2148, file: !2149, line: 569, baseType: !2152, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2148, file: !2149, line: 571, baseType: !2157, size: 64, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!109, !2101, !370}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2148, file: !2149, line: 572, baseType: !2161, size: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!109, !2101}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2148, file: !2149, line: 578, baseType: !2165, size: 64, offset: 256)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!109, !2101, !370, !370, !370}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2148, file: !2149, line: 580, baseType: !2169, size: 64, offset: 320)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!2172, !2173}
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2149, line: 512, size: 896, elements: !2175)
!2175 = !{!2176, !2184, !2185, !2192, !2199, !2209, !2338, !2339, !2341, !2343}
!2176 = !DIDerivedType(tag: DW_TAG_member, scope: !2174, file: !2149, line: 513, baseType: !2177, size: 320)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2174, file: !2149, line: 513, size: 320, elements: !2178)
!2178 = !{!2179, !2180, !2181, !2182, !2183}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2177, file: !2149, line: 514, baseType: !2101, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2177, file: !2149, line: 515, baseType: !1171, size: 32, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2177, file: !2149, line: 516, baseType: !370, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2177, file: !2149, line: 517, baseType: !370, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2177, file: !2149, line: 518, baseType: !370, size: 64, offset: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2174, file: !2149, line: 520, baseType: !37, size: 32, offset: 320)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2174, file: !2149, line: 522, baseType: !2186, size: 64, offset: 384)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2121, line: 22, baseType: !2188)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2121, line: 22, size: 64, elements: !2189)
!2189 = !{!2190}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2188, file: !2121, line: 22, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2121, line: 15, baseType: !370)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2174, file: !2149, line: 524, baseType: !2193, size: 64, offset: 448)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2116, line: 372, baseType: !2195)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2116, line: 372, size: 64, elements: !2196)
!2196 = !{!2197}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2195, file: !2116, line: 372, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2121, line: 16, baseType: !370)
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !2174, file: !2149, line: 527, baseType: !2200, size: 64, offset: 512)
!2200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2174, file: !2149, line: 527, size: 64, elements: !2201)
!2201 = !{!2202, !2208}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2200, file: !2149, line: 528, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2121, line: 21, baseType: !2204)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2121, line: 21, size: 64, elements: !2205)
!2205 = !{!2206}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2204, file: !2121, line: 21, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2121, line: 14, baseType: !370)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2200, file: !2149, line: 529, baseType: !2187, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2174, file: !2149, line: 534, baseType: !2210, size: 64, offset: 576)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2212)
!2212 = !{!2213, !2214, !2332, !2337}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2211, file: !38, line: 75, baseType: !370, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2211, file: !38, line: 83, baseType: !2215, size: 320, offset: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2211, file: !38, line: 83, size: 320, elements: !2216)
!2216 = !{!2217, !2238, !2252, !2256, !2331}
!2217 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !38, line: 84, baseType: !2218, size: 320)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2215, file: !38, line: 84, size: 320, elements: !2219)
!2219 = !{!2220, !2231, !2232, !2237}
!2220 = !DIDerivedType(tag: DW_TAG_member, scope: !2218, file: !38, line: 90, baseType: !2221, size: 128)
!2221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2218, file: !38, line: 90, size: 128, elements: !2222)
!2222 = !{!2223, !2224, !2229, !2230}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2221, file: !38, line: 91, baseType: !178, size: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, scope: !2221, file: !38, line: 94, baseType: !2225, size: 128)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2221, file: !38, line: 94, size: 128, elements: !2226)
!2226 = !{!2227, !2228}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2225, file: !38, line: 96, baseType: !173, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2225, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2221, file: !38, line: 102, baseType: !178, size: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2221, file: !38, line: 103, baseType: !178, size: 128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2218, file: !38, line: 106, baseType: !396, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, scope: !2218, file: !38, line: 107, baseType: !2233, size: 64, offset: 192)
!2233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2218, file: !38, line: 107, size: 64, elements: !2234)
!2234 = !{!2235, !2236}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2233, file: !38, line: 108, baseType: !370, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2233, file: !38, line: 109, baseType: !370, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2218, file: !38, line: 117, baseType: !370, size: 64, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !38, line: 119, baseType: !2239, size: 320)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2215, file: !38, line: 119, size: 320, elements: !2240)
!2240 = !{!2241, !2242, !2245, !2246, !2247}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2239, file: !38, line: 124, baseType: !370, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2239, file: !38, line: 125, baseType: !2243, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2239, file: !38, line: 126, baseType: !370, size: 64, offset: 128)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2239, file: !38, line: 127, baseType: !370, size: 64, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_member, scope: !2239, file: !38, line: 128, baseType: !2248, size: 64, offset: 256)
!2248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2239, file: !38, line: 128, size: 64, elements: !2249)
!2249 = !{!2250, !2251}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2248, file: !38, line: 133, baseType: !370, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2248, file: !38, line: 138, baseType: !663, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !38, line: 141, baseType: !2253, size: 64)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2215, file: !38, line: 141, size: 64, elements: !2254)
!2254 = !{!2255}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2253, file: !38, line: 142, baseType: !370, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !38, line: 144, baseType: !2257, size: 128)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2215, file: !38, line: 144, size: 128, elements: !2258)
!2258 = !{!2259, !2330}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2257, file: !38, line: 146, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2262)
!2262 = !{!2263, !2273, !2294, !2295, !2296, !2297, !2298, !2312, !2313, !2314}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2261, file: !54, line: 127, baseType: !2264, size: 384)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2265)
!2265 = !{!2266, !2267, !2269, !2270, !2271, !2272}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2264, file: !54, line: 22, baseType: !370, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2264, file: !54, line: 23, baseType: !2268, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2264, file: !54, line: 24, baseType: !2268, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2264, file: !54, line: 25, baseType: !370, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2264, file: !54, line: 26, baseType: !370, size: 64, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2264, file: !54, line: 27, baseType: !370, size: 64, offset: 320)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2261, file: !54, line: 128, baseType: !2274, size: 128, offset: 384)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2275, line: 105, size: 128, elements: !2276)
!2275 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2276 = !{!2277, !2278}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2274, file: !2275, line: 110, baseType: !370, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2274, file: !2275, line: 118, baseType: !2279, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2275, line: 95, size: 448, elements: !2281)
!2281 = !{!2282, !2283, !2289, !2290, !2291, !2292, !2293}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2280, file: !2275, line: 96, baseType: !663, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2280, file: !2275, line: 97, baseType: !2284, size: 64, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2275, line: 60, baseType: !2286)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{null, !2288}
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2280, file: !2275, line: 98, baseType: !2284, size: 64, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2280, file: !2275, line: 99, baseType: !221, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2280, file: !2275, line: 100, baseType: !221, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2280, file: !2275, line: 101, baseType: !877, size: 128, align: 64, offset: 256)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2280, file: !2275, line: 102, baseType: !2288, size: 64, offset: 384)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2261, file: !54, line: 129, baseType: !608, size: 256, offset: 512)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2261, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2261, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2261, file: !54, line: 132, baseType: !370, size: 64, offset: 832)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2261, file: !54, line: 133, baseType: !2299, size: 64, offset: 896)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2301)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2302)
!2302 = !{!2303, !2307, !2308}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2301, file: !54, line: 83, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{null, !2210}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2301, file: !54, line: 89, baseType: !2169, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2301, file: !54, line: 100, baseType: !2309, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!109, !2260, !370, !370, !109}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2261, file: !54, line: 134, baseType: !173, size: 64, offset: 960)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2261, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2314 = !DIDerivedType(tag: DW_TAG_member, scope: !2261, file: !54, line: 136, baseType: !2315, size: 128, offset: 1088)
!2315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2261, file: !54, line: 136, size: 128, elements: !2316)
!2316 = !{!2317, !2323}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2315, file: !54, line: 137, baseType: !2318, size: 128)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2319, line: 6, size: 128, elements: !2320)
!2319 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2320 = !{!2321, !2322}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2318, file: !2319, line: 7, baseType: !471, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2318, file: !2319, line: 8, baseType: !471, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, scope: !2315, file: !54, line: 138, baseType: !2324)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2315, file: !54, line: 138, elements: !2325)
!2325 = !{!2326, !2328}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2324, file: !54, line: 138, baseType: !2327)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2324, file: !54, line: 138, elements: !946)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2324, file: !54, line: 138, baseType: !2329)
!2329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2318, elements: !1809)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2257, file: !38, line: 147, baseType: !173, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2215, file: !38, line: 161, baseType: !877, size: 128, align: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, scope: !2211, file: !38, line: 164, baseType: !2333, size: 32, offset: 384)
!2333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2211, file: !38, line: 164, size: 32, elements: !2334)
!2334 = !{!2335, !2336}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2333, file: !38, line: 169, baseType: !272, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2333, file: !38, line: 177, baseType: !7, size: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2211, file: !38, line: 181, baseType: !272, size: 32, offset: 416)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2174, file: !2149, line: 535, baseType: !2210, size: 64, offset: 640)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2174, file: !2149, line: 541, baseType: !2340, size: 64, offset: 704)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2174, file: !2149, line: 545, baseType: !2342, size: 64, offset: 768)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2174, file: !2149, line: 549, baseType: !2344, size: 64, offset: 832)
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2116, line: 520, baseType: !2210)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2148, file: !2149, line: 581, baseType: !2346, size: 64, offset: 384)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!2172, !2173, !7}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2148, file: !2149, line: 582, baseType: !2350, size: 64, offset: 448)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!2172, !2173, !370, !370}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2148, file: !2149, line: 584, baseType: !2354, size: 64, offset: 512)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!370, !2101}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2148, file: !2149, line: 588, baseType: !2169, size: 64, offset: 576)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2148, file: !2149, line: 591, baseType: !2169, size: 64, offset: 640)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2148, file: !2149, line: 597, baseType: !2360, size: 64, offset: 704)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!109, !2101, !370, !173, !109, !109}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2148, file: !2149, line: 603, baseType: !2364, size: 64, offset: 768)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!240, !2101}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2148, file: !2149, line: 613, baseType: !2368, size: 64, offset: 832)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!109, !2101, !2371}
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2148, file: !2149, line: 625, baseType: !2374, size: 64, offset: 896)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!2371, !2101, !370}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2148, file: !2149, line: 633, baseType: !2378, size: 64, offset: 960)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!2210, !2101, !370}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2102, file: !38, line: 697, baseType: !370, size: 64, offset: 1024)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2102, file: !38, line: 699, baseType: !1749, size: 64, offset: 1088)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2102, file: !38, line: 700, baseType: !173, size: 64, offset: 1152)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2102, file: !38, line: 711, baseType: !663, size: 64, offset: 1216)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2102, file: !38, line: 717, baseType: !2371, size: 64, offset: 1280)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2102, file: !38, line: 722, baseType: !2387, offset: 1344)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !946)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2019, file: !14, line: 1928, baseType: !370, size: 64, offset: 768)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2019, file: !14, line: 1929, baseType: !2390, size: 64, offset: 832)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!109, !400, !1749}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2019, file: !14, line: 1930, baseType: !2394, size: 64, offset: 896)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!109, !1749, !2397}
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !173)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2019, file: !14, line: 1931, baseType: !2390, size: 64, offset: 960)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2019, file: !14, line: 1932, baseType: !2400, size: 64, offset: 1024)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!109, !1749, !559, !559, !109}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2019, file: !14, line: 1933, baseType: !2404, size: 64, offset: 1088)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!109, !109, !1749, !109}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2019, file: !14, line: 1934, baseType: !2408, size: 64, offset: 1152)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!109, !1749, !109, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2019, file: !14, line: 1935, baseType: !1746, size: 64, offset: 1216)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2019, file: !14, line: 1936, baseType: !2415, size: 64, offset: 1280)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!109, !109}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2019, file: !14, line: 1937, baseType: !2408, size: 64, offset: 1344)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2019, file: !14, line: 1938, baseType: !2420, size: 64, offset: 1408)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!352, !2423, !1749, !2030, !367, !7}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1101, line: 59, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2019, file: !14, line: 1939, baseType: !2426, size: 64, offset: 1472)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!352, !1749, !2030, !2423, !367, !7}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2019, file: !14, line: 1940, baseType: !2430, size: 64, offset: 1536)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{null, !1749}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2019, file: !14, line: 1941, baseType: !2434, size: 64, offset: 1600)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!109, !1749, !109, !2437, !2438}
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2019, file: !14, line: 1942, baseType: !2440, size: 64, offset: 1664)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!356, !1749, !109, !559, !559}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2019, file: !14, line: 1944, baseType: !2444, size: 64, offset: 1728)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{null, !1099, !1749}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2019, file: !14, line: 1948, baseType: !2448, size: 64, offset: 1792)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!352, !1749, !559, !1749, !559, !367, !7}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2019, file: !14, line: 1950, baseType: !2452, size: 64, offset: 1856)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!559, !1749, !559, !1749, !559, !559, !7}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2019, file: !14, line: 1953, baseType: !2400, size: 64, offset: 1920)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2019, file: !14, line: 1954, baseType: !2457, size: 64, offset: 1984)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!109, !2460, !7}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2019, file: !14, line: 1955, baseType: !2463, size: 64, offset: 2048)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!109, !2460, !2069, !7}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1750, file: !14, line: 1018, baseType: !471, size: 64, offset: 1472)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1750, file: !14, line: 1020, baseType: !173, size: 64, offset: 1536)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1750, file: !14, line: 1023, baseType: !173, size: 64, offset: 1600)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1750, file: !14, line: 1027, baseType: !2470, size: 64, offset: 1664)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1750, file: !14, line: 1029, baseType: !396, size: 64, offset: 1728)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1750, file: !14, line: 1030, baseType: !2473, size: 32, offset: 1792)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2474, line: 8, baseType: !190)
!2474 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1750, file: !14, line: 1031, baseType: !2473, size: 32, offset: 1824)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1726, file: !38, line: 756, baseType: !370, size: 64, offset: 704)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1726, file: !38, line: 757, baseType: !370, size: 64, offset: 768)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1726, file: !38, line: 760, baseType: !370, size: 64, offset: 832)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1726, file: !38, line: 761, baseType: !370, size: 64, offset: 896)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1726, file: !38, line: 763, baseType: !370, size: 64, offset: 960)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1726, file: !38, line: 764, baseType: !2482, size: 64, offset: 1024)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2116, line: 299, baseType: !2484)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2116, line: 299, size: 64, elements: !2485)
!2485 = !{!2486}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2484, file: !2116, line: 299, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2121, line: 18, baseType: !370)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1726, file: !38, line: 773, baseType: !272, size: 32, offset: 1088)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1726, file: !38, line: 785, baseType: !272, size: 32, offset: 1120)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1726, file: !38, line: 795, baseType: !2491, size: 64, offset: 1152)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2493)
!2493 = !{!2494, !2495}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2492, file: !38, line: 727, baseType: !471, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2492, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1726, file: !38, line: 801, baseType: !370, size: 64, offset: 1216)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1726, file: !38, line: 804, baseType: !663, size: 64, offset: 1280)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1726, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1726, file: !38, line: 808, baseType: !252, size: 32, offset: 1376)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1726, file: !38, line: 823, baseType: !1319, size: 320, offset: 1408)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1726, file: !38, line: 825, baseType: !178, size: 128, offset: 1728)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1726, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1726, file: !38, line: 849, baseType: !370, size: 64, offset: 1920)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1726, file: !38, line: 850, baseType: !370, size: 64, offset: 1984)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1726, file: !38, line: 852, baseType: !370, size: 64, offset: 2048)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1726, file: !38, line: 853, baseType: !370, size: 64, offset: 2112)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1726, file: !38, line: 854, baseType: !665, size: 64, offset: 2176)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1726, file: !38, line: 855, baseType: !370, size: 64, offset: 2240)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1726, file: !38, line: 856, baseType: !370, size: 64, offset: 2304)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1726, file: !38, line: 857, baseType: !370, size: 64, offset: 2368)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1726, file: !38, line: 858, baseType: !370, size: 64, offset: 2432)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1726, file: !38, line: 865, baseType: !446, size: 32, offset: 2496)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1726, file: !38, line: 867, baseType: !252, size: 32, offset: 2528)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1726, file: !38, line: 869, baseType: !370, size: 64, offset: 2560)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1726, file: !38, line: 869, baseType: !370, size: 64, offset: 2624)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1726, file: !38, line: 869, baseType: !370, size: 64, offset: 2688)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1726, file: !38, line: 869, baseType: !370, size: 64, offset: 2752)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1726, file: !38, line: 870, baseType: !370, size: 64, offset: 2816)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1726, file: !38, line: 870, baseType: !370, size: 64, offset: 2880)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1726, file: !38, line: 870, baseType: !370, size: 64, offset: 2944)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1726, file: !38, line: 871, baseType: !370, size: 64, offset: 3008)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1726, file: !38, line: 871, baseType: !370, size: 64, offset: 3072)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1726, file: !38, line: 871, baseType: !370, size: 64, offset: 3136)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1726, file: !38, line: 871, baseType: !370, size: 64, offset: 3200)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1726, file: !38, line: 873, baseType: !2526, size: 3328, offset: 3264)
!2526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 3328, elements: !2527)
!2527 = !{!2528}
!2528 = !DISubrange(count: 52)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1726, file: !38, line: 875, baseType: !2530, size: 1280, offset: 6592)
!2530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1961, size: 1280, elements: !887)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1726, file: !38, line: 877, baseType: !2532, size: 64, offset: 7872)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1726, file: !38, line: 880, baseType: !2535, size: 1088, offset: 7936)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2536, line: 72, baseType: !2537)
!2536 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2536, line: 23, size: 1088, elements: !2538)
!2538 = !{!2539, !2540, !2541, !2542, !2543, !2546, !2547, !2548, !2549, !2574, !2575, !2576}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2537, file: !2536, line: 28, baseType: !471, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2537, file: !2536, line: 38, baseType: !665, size: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2537, file: !2536, line: 40, baseType: !370, size: 64, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2537, file: !2536, line: 43, baseType: !1319, size: 320, offset: 192)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2537, file: !2536, line: 44, baseType: !2544, size: 64, offset: 512)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2536, line: 44, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2537, file: !2536, line: 48, baseType: !370, size: 64, offset: 576)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2537, file: !2536, line: 59, baseType: !659, size: 256, offset: 640)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2537, file: !2536, line: 60, baseType: !173, size: 64, offset: 896)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2537, file: !2536, line: 61, baseType: !2550, size: 64, offset: 960)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2552)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2553, line: 13, size: 1216, elements: !2554)
!2553 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2552, file: !2553, line: 14, baseType: !173, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2552, file: !2553, line: 15, baseType: !370, size: 64, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2552, file: !2553, line: 17, baseType: !370, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2552, file: !2553, line: 17, baseType: !370, size: 64, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2552, file: !2553, line: 18, baseType: !370, size: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2552, file: !2553, line: 18, baseType: !370, size: 64, offset: 320)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2552, file: !2553, line: 19, baseType: !229, size: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2552, file: !2553, line: 21, baseType: !356, size: 64, offset: 448)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2552, file: !2553, line: 23, baseType: !356, size: 64, offset: 512)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2552, file: !2553, line: 24, baseType: !356, size: 64, offset: 576)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2552, file: !2553, line: 25, baseType: !356, size: 64, offset: 640)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2552, file: !2553, line: 26, baseType: !356, size: 64, offset: 704)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2552, file: !2553, line: 27, baseType: !356, size: 64, offset: 768)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2552, file: !2553, line: 28, baseType: !356, size: 64, offset: 832)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2552, file: !2553, line: 29, baseType: !356, size: 64, offset: 896)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2552, file: !2553, line: 30, baseType: !356, size: 64, offset: 960)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2552, file: !2553, line: 31, baseType: !356, size: 64, offset: 1024)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2552, file: !2553, line: 32, baseType: !356, size: 64, offset: 1088)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2552, file: !2553, line: 33, baseType: !356, size: 64, offset: 1152)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2537, file: !2536, line: 63, baseType: !272, size: 32, offset: 1024)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2537, file: !2536, line: 69, baseType: !288, size: 16, offset: 1056)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2537, file: !2536, line: 70, baseType: !793, size: 16, offset: 1072)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1726, file: !38, line: 882, baseType: !370, size: 64, offset: 9024)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1726, file: !38, line: 885, baseType: !252, size: 32, offset: 9088)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1726, file: !38, line: 886, baseType: !2580, size: 64, offset: 9152)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1726, file: !38, line: 901, baseType: !1986, size: 64, offset: 9216)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1726, file: !38, line: 904, baseType: !1749, size: 64, offset: 9280)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1726, file: !38, line: 906, baseType: !2585, size: 64, offset: 9344)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1726, file: !38, line: 930, baseType: !272, size: 32, offset: 9408)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1726, file: !38, line: 933, baseType: !272, size: 32, offset: 9440)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1726, file: !38, line: 935, baseType: !2590, size: 64, offset: 9472)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2591)
!2591 = !{!2592}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2590, file: !68, line: 104, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1726, file: !38, line: 940, baseType: !663, size: 64, offset: 9536)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1726, file: !38, line: 942, baseType: !917, size: 256, offset: 9600)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1723, file: !38, line: 986, baseType: !2598, offset: 10240)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, elements: !1809)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1426, file: !1101, line: 882, baseType: !1722, size: 64, offset: 9792)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1426, file: !1101, line: 884, baseType: !109, size: 32, offset: 9856)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1426, file: !1101, line: 885, baseType: !109, size: 32, offset: 9888)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1426, file: !1101, line: 886, baseType: !109, size: 32, offset: 9920)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1426, file: !1101, line: 888, baseType: !109, size: 32, offset: 9952)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1426, file: !1101, line: 890, baseType: !370, size: 64, offset: 9984)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1426, file: !1101, line: 893, baseType: !7, size: 32, offset: 10048)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1426, file: !1101, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1426, file: !1101, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1426, file: !1101, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1426, file: !1101, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1426, file: !1101, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1426, file: !1101, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1426, file: !1101, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1426, file: !1101, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1426, file: !1101, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1426, file: !1101, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1426, file: !1101, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1426, file: !1101, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1426, file: !1101, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1426, file: !1101, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1426, file: !1101, line: 969, baseType: !370, size: 64, offset: 10176)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1426, file: !1101, line: 971, baseType: !2622, size: 448, offset: 10240)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2623)
!2623 = !{!2624, !2625, !2630}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2622, file: !62, line: 26, baseType: !370, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2622, file: !62, line: 27, baseType: !2626, size: 64, offset: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!356, !2629}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, scope: !2622, file: !62, line: 28, baseType: !2631, size: 320, offset: 128)
!2631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2622, file: !62, line: 28, size: 320, elements: !2632)
!2632 = !{!2633, !2643, !2668}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2631, file: !62, line: 37, baseType: !2634, size: 320)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2631, file: !62, line: 30, size: 320, elements: !2635)
!2635 = !{!2636, !2638, !2639, !2640, !2641, !2642}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2634, file: !62, line: 31, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2634, file: !62, line: 32, baseType: !190, size: 32, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2634, file: !62, line: 33, baseType: !190, size: 32, offset: 96)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2634, file: !62, line: 34, baseType: !190, size: 32, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2634, file: !62, line: 35, baseType: !471, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2634, file: !62, line: 36, baseType: !2637, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2631, file: !62, line: 47, baseType: !2644, size: 192)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2631, file: !62, line: 39, size: 192, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2667}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2644, file: !62, line: 40, baseType: !1593, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2644, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, scope: !2644, file: !62, line: 42, baseType: !2649, size: 64, offset: 64)
!2649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2644, file: !62, line: 42, size: 64, elements: !2650)
!2650 = !{!2651, !2659}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2649, file: !62, line: 43, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2654, line: 7, size: 128, elements: !2655)
!2654 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2655 = !{!2656, !2658}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2653, file: !2654, line: 8, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !354, line: 93, baseType: !561)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2653, file: !2654, line: 9, baseType: !561, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2649, file: !62, line: 44, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2662, line: 7, size: 64, elements: !2663)
!2662 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2663 = !{!2664, !2666}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2661, file: !2662, line: 8, baseType: !2665, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2662, line: 5, baseType: !655)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2661, file: !2662, line: 9, baseType: !655, size: 32, offset: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2644, file: !62, line: 46, baseType: !471, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2631, file: !62, line: 55, baseType: !2669, size: 256)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2631, file: !62, line: 49, size: 256, elements: !2670)
!2670 = !{!2671, !2674, !2675, !2676, !2677}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2669, file: !62, line: 50, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2669, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2669, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2669, file: !62, line: 53, baseType: !370, size: 64, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2669, file: !62, line: 54, baseType: !370, size: 64, offset: 192)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1426, file: !1101, line: 973, baseType: !2679, size: 32, offset: 10688)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !179, line: 27, baseType: !2680)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !354, line: 28, baseType: !109)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1426, file: !1101, line: 974, baseType: !2679, size: 32, offset: 10720)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1426, file: !1101, line: 978, baseType: !370, size: 64, offset: 10752)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1426, file: !1101, line: 987, baseType: !1425, size: 64, offset: 10816)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1426, file: !1101, line: 990, baseType: !1425, size: 64, offset: 10880)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1426, file: !1101, line: 995, baseType: !178, size: 128, offset: 10944)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1426, file: !1101, line: 996, baseType: !178, size: 128, offset: 11072)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1426, file: !1101, line: 997, baseType: !1425, size: 64, offset: 11200)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1426, file: !1101, line: 1005, baseType: !178, size: 128, offset: 11264)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1426, file: !1101, line: 1006, baseType: !178, size: 128, offset: 11392)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1426, file: !1101, line: 1009, baseType: !1790, size: 64, offset: 11520)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1426, file: !1101, line: 1010, baseType: !2692, size: 512, offset: 11584)
!2692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !903, size: 512, elements: !887)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1426, file: !1101, line: 1011, baseType: !178, size: 128, offset: 12096)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1426, file: !1101, line: 1012, baseType: !178, size: 128, offset: 12224)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1426, file: !1101, line: 1014, baseType: !607, size: 64, offset: 12352)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1426, file: !1101, line: 1017, baseType: !786, size: 64, offset: 12416)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1426, file: !1101, line: 1020, baseType: !786, size: 64, offset: 12480)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1426, file: !1101, line: 1023, baseType: !173, size: 64, offset: 12544)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1426, file: !1101, line: 1025, baseType: !471, size: 64, offset: 12608)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1426, file: !1101, line: 1026, baseType: !471, size: 64, offset: 12672)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1426, file: !1101, line: 1031, baseType: !471, size: 64, offset: 12736)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1426, file: !1101, line: 1032, baseType: !2703, size: 192, offset: 12800)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1101, line: 324, size: 192, elements: !2704)
!2704 = !{!2705, !2706, !2707}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2703, file: !1101, line: 326, baseType: !471, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2703, file: !1101, line: 327, baseType: !471, size: 64, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2703, file: !1101, line: 328, baseType: !617, size: 32, offset: 128)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1426, file: !1101, line: 1041, baseType: !370, size: 64, offset: 12992)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1426, file: !1101, line: 1042, baseType: !370, size: 64, offset: 13056)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1426, file: !1101, line: 1045, baseType: !471, size: 64, offset: 13120)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1426, file: !1101, line: 1048, baseType: !471, size: 64, offset: 13184)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1426, file: !1101, line: 1051, baseType: !370, size: 64, offset: 13248)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1426, file: !1101, line: 1052, baseType: !370, size: 64, offset: 13312)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1426, file: !1101, line: 1055, baseType: !2715, size: 640, offset: 13376)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2716, line: 132, size: 640, elements: !2717)
!2716 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2717 = !{!2718, !2724, !2725}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2715, file: !2716, line: 133, baseType: !2719, size: 576)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2720, size: 576, elements: !321)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2716, line: 117, size: 192, elements: !2721)
!2721 = !{!2722, !2723}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2720, file: !2716, line: 118, baseType: !471, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2720, file: !2716, line: 119, baseType: !1602, size: 128, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2715, file: !2716, line: 134, baseType: !7, size: 32, offset: 576)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2715, file: !2716, line: 135, baseType: !7, size: 32, offset: 608)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1426, file: !1101, line: 1058, baseType: !2727, size: 448, offset: 14016)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2716, line: 144, size: 448, elements: !2728)
!2728 = !{!2729, !2730, !2731}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2727, file: !2716, line: 145, baseType: !877, size: 128, align: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2727, file: !2716, line: 146, baseType: !659, size: 256, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2727, file: !2716, line: 147, baseType: !7, size: 32, offset: 384)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1426, file: !1101, line: 1064, baseType: !1816, size: 64, offset: 14464)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1426, file: !1101, line: 1067, baseType: !1816, size: 64, offset: 14528)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1426, file: !1101, line: 1070, baseType: !1816, size: 64, offset: 14592)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1426, file: !1101, line: 1074, baseType: !1843, size: 64, offset: 14656)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1426, file: !1101, line: 1084, baseType: !2737, size: 128, offset: 14720)
!2737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 128, elements: !2738)
!2738 = !{!2739}
!2739 = !DISubrange(count: 16)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1426, file: !1101, line: 1086, baseType: !2741, size: 64, offset: 14848)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1101, line: 55, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1426, file: !1101, line: 1089, baseType: !2744, size: 64, offset: 14912)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2745, line: 12, size: 64, elements: !2746)
!2745 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2746 = !{!2747}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2744, file: !2745, line: 13, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2745, line: 8, flags: DIFlagFwdDecl)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1426, file: !1101, line: 1090, baseType: !2751, size: 128, offset: 14976)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2752, line: 13, size: 128, elements: !2753)
!2752 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2753 = !{!2754}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2751, file: !2752, line: 14, baseType: !178, size: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1426, file: !1101, line: 1097, baseType: !2756, size: 64, offset: 15104)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1101, line: 50, flags: DIFlagFwdDecl)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1426, file: !1101, line: 1100, baseType: !2759, size: 64, offset: 15168)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1101, line: 1100, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1426, file: !1101, line: 1103, baseType: !2762, size: 64, offset: 15232)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1101, line: 53, flags: DIFlagFwdDecl)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1426, file: !1101, line: 1107, baseType: !2765, size: 64, offset: 15296)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2767, line: 35, flags: DIFlagFwdDecl)
!2767 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1426, file: !1101, line: 1110, baseType: !2769, size: 64, offset: 15360)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2771, line: 93, size: 8768, elements: !2772)
!2771 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2772 = !{!2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2820, !2829, !2830, !2832, !2833, !2834, !2837, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2875, !2876, !2883, !2893, !2896, !2897, !2900, !2901, !2902, !2903, !2904, !2905}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2770, file: !2771, line: 94, baseType: !1439, size: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2770, file: !2771, line: 95, baseType: !272, size: 32, offset: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2770, file: !2771, line: 96, baseType: !109, size: 32, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2770, file: !2771, line: 97, baseType: !109, size: 32, offset: 96)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2770, file: !2771, line: 98, baseType: !178, size: 128, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2770, file: !2771, line: 100, baseType: !1412, size: 192, offset: 256)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2770, file: !2771, line: 103, baseType: !1425, size: 64, offset: 448)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2770, file: !2771, line: 106, baseType: !2781, size: 192, offset: 512)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1991, line: 32, size: 192, elements: !2782)
!2782 = !{!2783, !2784}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2781, file: !1991, line: 33, baseType: !178, size: 128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2781, file: !1991, line: 34, baseType: !2785, size: 64, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2786, line: 25, baseType: !2787)
!2786 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2786, line: 23, size: 64, elements: !2788)
!2788 = !{!2789}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2787, file: !2786, line: 24, baseType: !1673, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2770, file: !2771, line: 109, baseType: !1027, size: 64, offset: 704)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2770, file: !2771, line: 112, baseType: !109, size: 32, offset: 768)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2770, file: !2771, line: 114, baseType: !109, size: 32, offset: 800)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2770, file: !2771, line: 115, baseType: !1425, size: 64, offset: 832)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2770, file: !2771, line: 118, baseType: !109, size: 32, offset: 896)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2770, file: !2771, line: 119, baseType: !7, size: 32, offset: 928)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2770, file: !2771, line: 121, baseType: !2797, size: 64, offset: 960)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2771, line: 80, size: 448, elements: !2799)
!2799 = !{!2800, !2801, !2807}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2798, file: !2771, line: 81, baseType: !272, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2798, file: !2771, line: 82, baseType: !2802, size: 128, offset: 64)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2771, line: 75, size: 128, elements: !2803)
!2803 = !{!2804, !2805}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2802, file: !2771, line: 76, baseType: !1425, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2802, file: !2771, line: 77, baseType: !2806, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2798, file: !2771, line: 83, baseType: !608, size: 256, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2770, file: !2771, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2770, file: !2771, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2770, file: !2771, line: 138, baseType: !7, size: 32, offset: 1056)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2770, file: !2771, line: 139, baseType: !178, size: 128, offset: 1088)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2770, file: !2771, line: 142, baseType: !1546, size: 512, offset: 1216)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2770, file: !2771, line: 143, baseType: !1554, size: 64, offset: 1728)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2770, file: !2771, line: 150, baseType: !2815, size: 256, offset: 1792)
!2815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2816, size: 256, elements: !776)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2771, line: 38, size: 128, elements: !2817)
!2817 = !{!2818, !2819}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2816, file: !2771, line: 39, baseType: !471, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2816, file: !2771, line: 40, baseType: !471, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2770, file: !2771, line: 156, baseType: !2821, size: 192, offset: 2048)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2771, line: 66, size: 192, elements: !2822)
!2822 = !{!2823}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2821, file: !2771, line: 67, baseType: !2824, size: 192)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2771, line: 47, size: 192, elements: !2825)
!2825 = !{!2826, !2827, !2828}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2824, file: !2771, line: 48, baseType: !665, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2824, file: !2771, line: 49, baseType: !665, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2824, file: !2771, line: 50, baseType: !665, size: 64, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2770, file: !2771, line: 160, baseType: !2715, size: 640, offset: 2240)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2770, file: !2771, line: 163, baseType: !2831, size: 256, offset: 2880)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1790, size: 256, elements: !887)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2770, file: !2771, line: 169, baseType: !1790, size: 64, offset: 3136)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2770, file: !2771, line: 172, baseType: !109, size: 32, offset: 3200)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2770, file: !2771, line: 174, baseType: !2835, size: 64, offset: 3264)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2771, line: 174, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2770, file: !2771, line: 185, baseType: !2838, size: 64, offset: 3328)
!2838 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !442, line: 860, baseType: !2839)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 853, size: 64, elements: !2840)
!2840 = !{!2841, !2842}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2839, file: !442, line: 858, baseType: !441, size: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2839, file: !442, line: 859, baseType: !252, size: 32, offset: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2770, file: !2771, line: 186, baseType: !471, size: 64, offset: 3392)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2770, file: !2771, line: 186, baseType: !471, size: 64, offset: 3456)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2770, file: !2771, line: 186, baseType: !471, size: 64, offset: 3520)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2770, file: !2771, line: 186, baseType: !471, size: 64, offset: 3584)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2770, file: !2771, line: 187, baseType: !471, size: 64, offset: 3648)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2770, file: !2771, line: 188, baseType: !471, size: 64, offset: 3712)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2770, file: !2771, line: 189, baseType: !2703, size: 192, offset: 3776)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2770, file: !2771, line: 190, baseType: !370, size: 64, offset: 3968)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2770, file: !2771, line: 190, baseType: !370, size: 64, offset: 4032)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2770, file: !2771, line: 190, baseType: !370, size: 64, offset: 4096)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2770, file: !2771, line: 190, baseType: !370, size: 64, offset: 4160)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2770, file: !2771, line: 191, baseType: !370, size: 64, offset: 4224)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2770, file: !2771, line: 191, baseType: !370, size: 64, offset: 4288)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2770, file: !2771, line: 191, baseType: !370, size: 64, offset: 4352)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2770, file: !2771, line: 191, baseType: !370, size: 64, offset: 4416)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2770, file: !2771, line: 192, baseType: !370, size: 64, offset: 4480)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2770, file: !2771, line: 192, baseType: !370, size: 64, offset: 4544)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2770, file: !2771, line: 192, baseType: !370, size: 64, offset: 4608)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2770, file: !2771, line: 192, baseType: !370, size: 64, offset: 4672)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2770, file: !2771, line: 193, baseType: !370, size: 64, offset: 4736)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2770, file: !2771, line: 193, baseType: !370, size: 64, offset: 4800)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2770, file: !2771, line: 194, baseType: !2865, size: 448, offset: 4864)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2866, line: 12, size: 448, elements: !2867)
!2866 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873, !2874}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2865, file: !2866, line: 15, baseType: !471, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2865, file: !2866, line: 17, baseType: !471, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2865, file: !2866, line: 19, baseType: !471, size: 64, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2865, file: !2866, line: 21, baseType: !471, size: 64, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2865, file: !2866, line: 29, baseType: !471, size: 64, offset: 256)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2865, file: !2866, line: 35, baseType: !471, size: 64, offset: 320)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2865, file: !2866, line: 44, baseType: !471, size: 64, offset: 384)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2770, file: !2771, line: 202, baseType: !473, size: 64, offset: 5312)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2770, file: !2771, line: 213, baseType: !2877, size: 2048, offset: 5376)
!2877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2878, size: 2048, elements: !2738)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2879, line: 43, size: 128, elements: !2880)
!2879 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2880 = !{!2881, !2882}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2878, file: !2879, line: 44, baseType: !369, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2878, file: !2879, line: 45, baseType: !369, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2770, file: !2771, line: 216, baseType: !2884, size: 448, offset: 7424)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2771, line: 30, size: 448, elements: !2885)
!2885 = !{!2886, !2887, !2888, !2889, !2890, !2891, !2892}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2884, file: !2771, line: 31, baseType: !109, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2884, file: !2771, line: 32, baseType: !356, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2884, file: !2771, line: 33, baseType: !370, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2884, file: !2771, line: 34, baseType: !471, size: 64, offset: 192)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2884, file: !2771, line: 34, baseType: !471, size: 64, offset: 256)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2884, file: !2771, line: 35, baseType: !370, size: 64, offset: 320)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2884, file: !2771, line: 35, baseType: !370, size: 64, offset: 384)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2770, file: !2771, line: 219, baseType: !2894, size: 64, offset: 7872)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2771, line: 219, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2770, file: !2771, line: 222, baseType: !7, size: 32, offset: 7936)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2770, file: !2771, line: 223, baseType: !2898, size: 64, offset: 8000)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2771, line: 223, flags: DIFlagFwdDecl)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2770, file: !2771, line: 230, baseType: !221, size: 8, offset: 8064)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2770, file: !2771, line: 231, baseType: !795, size: 16, offset: 8080)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2770, file: !2771, line: 232, baseType: !795, size: 16, offset: 8096)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2770, file: !2771, line: 234, baseType: !1722, size: 64, offset: 8128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2770, file: !2771, line: 237, baseType: !659, size: 256, offset: 8192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2770, file: !2771, line: 243, baseType: !1319, size: 320, offset: 8448)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1426, file: !1101, line: 1111, baseType: !2907, size: 64, offset: 15424)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2771, line: 20, size: 16640, elements: !2909)
!2909 = !{!2910, !2911, !2912, !2913}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2908, file: !2771, line: 21, baseType: !252, size: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2908, file: !2771, line: 22, baseType: !1439, size: 32, offset: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2908, file: !2771, line: 23, baseType: !1412, size: 192, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2908, file: !2771, line: 24, baseType: !2914, size: 16384, offset: 256)
!2914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2915, size: 16384, elements: !325)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1991, line: 51, size: 256, elements: !2916)
!2916 = !{!2917}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2915, file: !1991, line: 52, baseType: !2918, size: 256)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1991, line: 37, size: 256, elements: !2919)
!2919 = !{!2920, !2927, !2928, !2932}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2918, file: !1991, line: 39, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2922, line: 83, baseType: !2923)
!2922 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2922, line: 82, baseType: !2925)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{null, !109}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2918, file: !1991, line: 40, baseType: !370, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2918, file: !1991, line: 46, baseType: !2929, size: 64, offset: 128)
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2922, line: 86, baseType: !2930)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2922, line: 85, baseType: !1022)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2918, file: !1991, line: 48, baseType: !2785, size: 64, offset: 192)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1426, file: !1101, line: 1112, baseType: !2785, size: 64, offset: 15488)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1426, file: !1101, line: 1113, baseType: !2785, size: 64, offset: 15552)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1426, file: !1101, line: 1115, baseType: !2785, size: 64, offset: 15616)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1426, file: !1101, line: 1116, baseType: !2781, size: 192, offset: 15680)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1426, file: !1101, line: 1117, baseType: !370, size: 64, offset: 15872)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1426, file: !1101, line: 1118, baseType: !367, size: 64, offset: 15936)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1426, file: !1101, line: 1119, baseType: !7, size: 32, offset: 16000)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1426, file: !1101, line: 1121, baseType: !876, size: 64, offset: 16064)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1426, file: !1101, line: 1125, baseType: !2942, size: 64, offset: 16128)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1101, line: 43, flags: DIFlagFwdDecl)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1426, file: !1101, line: 1127, baseType: !406, size: 32, offset: 16192)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1426, file: !1101, line: 1128, baseType: !7, size: 32, offset: 16224)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1426, file: !1101, line: 1130, baseType: !2947, size: 128, offset: 16256)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2948, line: 37, size: 128, elements: !2949)
!2948 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2949 = !{!2950, !2951, !2952}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2947, file: !2948, line: 38, baseType: !109, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2947, file: !2948, line: 39, baseType: !272, size: 32, offset: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2947, file: !2948, line: 40, baseType: !2953, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2948, line: 24, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1426, file: !1101, line: 1131, baseType: !2956, size: 256, offset: 16384)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2957, line: 12, size: 256, elements: !2958)
!2957 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2958 = !{!2959, !2960, !2961, !2962}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2956, file: !2957, line: 13, baseType: !320, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2956, file: !2957, line: 14, baseType: !370, size: 64, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2956, file: !2957, line: 15, baseType: !370, size: 64, offset: 128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2956, file: !2957, line: 16, baseType: !221, size: 8, offset: 192)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1426, file: !1101, line: 1134, baseType: !471, size: 64, offset: 16640)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1426, file: !1101, line: 1135, baseType: !471, size: 64, offset: 16704)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1426, file: !1101, line: 1138, baseType: !252, size: 32, offset: 16768)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1426, file: !1101, line: 1141, baseType: !617, size: 32, offset: 16800)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1426, file: !1101, line: 1143, baseType: !2968, size: 64, offset: 16832)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1101, line: 735, size: 64, elements: !2969)
!2969 = !{!2970}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2968, file: !1101, line: 736, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1426, file: !1101, line: 1147, baseType: !1605, size: 128, offset: 16896)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1426, file: !1101, line: 1149, baseType: !1425, size: 64, offset: 17024)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1426, file: !1101, line: 1151, baseType: !2975, size: 64, offset: 17088)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1101, line: 1151, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1426, file: !1101, line: 1188, baseType: !173, size: 64, offset: 17152)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1426, file: !1101, line: 1191, baseType: !2979, size: 64, offset: 17216)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1101, line: 44, flags: DIFlagFwdDecl)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1426, file: !1101, line: 1194, baseType: !2982, size: 64, offset: 17280)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1101, line: 45, flags: DIFlagFwdDecl)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1426, file: !1101, line: 1197, baseType: !2985, size: 64, offset: 17344)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1101, line: 61, flags: DIFlagFwdDecl)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1426, file: !1101, line: 1199, baseType: !2988, size: 64, offset: 17408)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2990, line: 99, size: 128, elements: !2991)
!2990 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2991 = !{!2992, !2993, !2994}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2989, file: !2990, line: 100, baseType: !663, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2989, file: !2990, line: 101, baseType: !272, size: 32, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2989, file: !2990, line: 103, baseType: !290, size: 16, offset: 96)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1426, file: !1101, line: 1202, baseType: !2996, size: 64, offset: 17472)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1101, line: 48, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1426, file: !1101, line: 1205, baseType: !370, size: 64, offset: 17536)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1426, file: !1101, line: 1206, baseType: !3000, size: 64, offset: 17600)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1991, line: 14, baseType: !3002)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1991, line: 12, size: 384, elements: !3003)
!3003 = !{!3004}
!3004 = !DIDerivedType(tag: DW_TAG_member, scope: !3002, file: !1991, line: 13, baseType: !3005, size: 384)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3002, file: !1991, line: 13, size: 384, elements: !3006)
!3006 = !{!3007, !3008, !3009, !3010}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3005, file: !1991, line: 13, baseType: !109, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3005, file: !1991, line: 13, baseType: !109, size: 32, offset: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3005, file: !1991, line: 13, baseType: !109, size: 32, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3005, file: !1991, line: 13, baseType: !3011, size: 256, offset: 128)
!3011 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3012, line: 37, size: 256, elements: !3013)
!3012 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3013 = !{!3014, !3019, !3032, !3038, !3047, !3074, !3079}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3011, file: !3012, line: 42, baseType: !3015, size: 64)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3011, file: !3012, line: 39, size: 64, elements: !3016)
!3016 = !{!3017, !3018}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3015, file: !3012, line: 40, baseType: !2680, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3015, file: !3012, line: 41, baseType: !412, size: 32, offset: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3011, file: !3012, line: 50, baseType: !3020, size: 192)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3011, file: !3012, line: 45, size: 192, elements: !3021)
!3021 = !{!3022, !3024, !3025, !3031}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3020, file: !3012, line: 46, baseType: !3023, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !354, line: 95, baseType: !109)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3020, file: !3012, line: 47, baseType: !109, size: 32, offset: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3020, file: !3012, line: 48, baseType: !3026, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3012, line: 11, baseType: !3027)
!3027 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3012, line: 8, size: 64, elements: !3028)
!3028 = !{!3029, !3030}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3027, file: !3012, line: 9, baseType: !109, size: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3027, file: !3012, line: 10, baseType: !173, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3020, file: !3012, line: 49, baseType: !109, size: 32, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3011, file: !3012, line: 57, baseType: !3033, size: 128)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3011, file: !3012, line: 53, size: 128, elements: !3034)
!3034 = !{!3035, !3036, !3037}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3033, file: !3012, line: 54, baseType: !2680, size: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3033, file: !3012, line: 55, baseType: !412, size: 32, offset: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3033, file: !3012, line: 56, baseType: !3026, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3011, file: !3012, line: 66, baseType: !3039, size: 256)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3011, file: !3012, line: 60, size: 256, elements: !3040)
!3040 = !{!3041, !3042, !3043, !3044, !3046}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3039, file: !3012, line: 61, baseType: !2680, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3039, file: !3012, line: 62, baseType: !412, size: 32, offset: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3039, file: !3012, line: 63, baseType: !109, size: 32, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3039, file: !3012, line: 64, baseType: !3045, size: 64, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !354, line: 94, baseType: !355)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3039, file: !3012, line: 65, baseType: !3045, size: 64, offset: 192)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3011, file: !3012, line: 105, baseType: !3048, size: 256)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3011, file: !3012, line: 69, size: 256, elements: !3049)
!3049 = !{!3050, !3051}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3048, file: !3012, line: 70, baseType: !173, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, scope: !3048, file: !3012, line: 79, baseType: !3052, size: 192, offset: 64)
!3052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3048, file: !3012, line: 79, size: 192, elements: !3053)
!3053 = !{!3054, !3055, !3056, !3063, !3068}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3052, file: !3012, line: 81, baseType: !109, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3052, file: !3012, line: 86, baseType: !795, size: 16)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3052, file: !3012, line: 92, baseType: !3057, size: 192)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3052, file: !3012, line: 88, size: 192, elements: !3058)
!3058 = !{!3059, !3061, !3062}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3057, file: !3012, line: 89, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 64, elements: !1589)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3057, file: !3012, line: 90, baseType: !173, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3057, file: !3012, line: 91, baseType: !173, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3052, file: !3012, line: 97, baseType: !3064, size: 96)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3052, file: !3012, line: 94, size: 96, elements: !3065)
!3065 = !{!3066, !3067}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3064, file: !3012, line: 95, baseType: !3060, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3064, file: !3012, line: 96, baseType: !192, size: 32, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3052, file: !3012, line: 103, baseType: !3069, size: 128)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3052, file: !3012, line: 99, size: 128, elements: !3070)
!3070 = !{!3071, !3072, !3073}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3069, file: !3012, line: 100, baseType: !370, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3069, file: !3012, line: 101, baseType: !192, size: 32, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3069, file: !3012, line: 102, baseType: !192, size: 32, offset: 96)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3011, file: !3012, line: 111, baseType: !3075, size: 128)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3011, file: !3012, line: 108, size: 128, elements: !3076)
!3076 = !{!3077, !3078}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3075, file: !3012, line: 109, baseType: !356, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3075, file: !3012, line: 110, baseType: !109, size: 32, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3011, file: !3012, line: 118, baseType: !3080, size: 128)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3011, file: !3012, line: 114, size: 128, elements: !3081)
!3081 = !{!3082, !3083, !3084}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3080, file: !3012, line: 115, baseType: !173, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3080, file: !3012, line: 116, baseType: !109, size: 32, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3080, file: !3012, line: 117, baseType: !7, size: 32, offset: 96)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1426, file: !1101, line: 1208, baseType: !2865, size: 448, offset: 17664)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1426, file: !1101, line: 1215, baseType: !471, size: 64, offset: 18112)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1426, file: !1101, line: 1217, baseType: !471, size: 64, offset: 18176)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1426, file: !1101, line: 1219, baseType: !471, size: 64, offset: 18240)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1426, file: !1101, line: 1223, baseType: !3090, size: 64, offset: 18304)
!3090 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3091, line: 99, baseType: !3092)
!3091 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3091, line: 99, size: 64, elements: !3093)
!3093 = !{!3094}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3092, file: !3091, line: 99, baseType: !1673, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1426, file: !1101, line: 1225, baseType: !441, size: 32, offset: 18368)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1426, file: !1101, line: 1226, baseType: !109, size: 32, offset: 18400)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1426, file: !1101, line: 1227, baseType: !109, size: 32, offset: 18432)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1426, file: !1101, line: 1231, baseType: !3099, size: 64, offset: 18496)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1101, line: 1231, flags: DIFlagFwdDecl)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1426, file: !1101, line: 1233, baseType: !178, size: 128, offset: 18560)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1426, file: !1101, line: 1240, baseType: !3103, size: 64, offset: 18688)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1101, line: 62, flags: DIFlagFwdDecl)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1426, file: !1101, line: 1242, baseType: !3106, size: 64, offset: 18752)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1101, line: 1242, flags: DIFlagFwdDecl)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1426, file: !1101, line: 1244, baseType: !178, size: 128, offset: 18816)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1426, file: !1101, line: 1245, baseType: !3110, size: 64, offset: 18944)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1101, line: 51, flags: DIFlagFwdDecl)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1426, file: !1101, line: 1246, baseType: !659, size: 256, offset: 19008)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1426, file: !1101, line: 1247, baseType: !7, size: 32, offset: 19264)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1426, file: !1101, line: 1250, baseType: !3115, size: 64, offset: 19328)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1101, line: 57, flags: DIFlagFwdDecl)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1426, file: !1101, line: 1251, baseType: !659, size: 256, offset: 19392)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1426, file: !1101, line: 1252, baseType: !178, size: 128, offset: 19648)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1426, file: !1101, line: 1259, baseType: !2371, size: 64, offset: 19776)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1426, file: !1101, line: 1260, baseType: !795, size: 16, offset: 19840)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1426, file: !1101, line: 1261, baseType: !795, size: 16, offset: 19856)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1426, file: !1101, line: 1314, baseType: !3123, size: 64, offset: 19904)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3125, line: 62, size: 256, align: 256, elements: !3126)
!3125 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3126 = !{!3127, !3128, !3129, !3130, !3131, !3132, !3133}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3124, file: !3125, line: 75, baseType: !192, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3124, file: !3125, line: 90, baseType: !192, size: 32, offset: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3124, file: !3125, line: 112, baseType: !472, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3124, file: !3125, line: 132, baseType: !192, size: 32, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3124, file: !3125, line: 140, baseType: !192, size: 32, offset: 160)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3124, file: !3125, line: 149, baseType: !192, size: 32, offset: 192)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3124, file: !3125, line: 154, baseType: !3134, offset: 224)
!3134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, elements: !1809)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1426, file: !1101, line: 1315, baseType: !190, size: 32, offset: 19968)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1426, file: !1101, line: 1316, baseType: !190, size: 32, offset: 20000)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1426, file: !1101, line: 1321, baseType: !370, size: 64, offset: 20032)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1426, file: !1101, line: 1325, baseType: !109, size: 32, offset: 20096)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1426, file: !1101, line: 1326, baseType: !109, size: 32, offset: 20128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1426, file: !1101, line: 1327, baseType: !109, size: 32, offset: 20160)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1426, file: !1101, line: 1328, baseType: !109, size: 32, offset: 20192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1426, file: !1101, line: 1329, baseType: !877, size: 128, align: 64, offset: 20224)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1426, file: !1101, line: 1332, baseType: !3144, size: 128, offset: 20352)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3145, line: 51, size: 128, elements: !3146)
!3145 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3146 = !{!3147, !3152, !3153}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3144, file: !3145, line: 60, baseType: !3148, size: 64)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3149, line: 7, size: 64, elements: !3150)
!3149 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3150 = !{!3151}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3148, file: !3149, line: 12, baseType: !1670, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3144, file: !3145, line: 63, baseType: !221, size: 8, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3144, file: !3145, line: 70, baseType: !221, size: 8, offset: 72)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1426, file: !1101, line: 1335, baseType: !2423, size: 64, offset: 20480)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1426, file: !1101, line: 1337, baseType: !3156, size: 128, offset: 20544)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3145, line: 39, size: 128, elements: !3157)
!3157 = !{!3158, !3159, !3160}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3156, file: !3145, line: 40, baseType: !2210, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3156, file: !3145, line: 42, baseType: !192, size: 32, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3156, file: !3145, line: 43, baseType: !192, size: 32, offset: 96)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1426, file: !1101, line: 1340, baseType: !3162, size: 64, offset: 20672)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1101, line: 69, flags: DIFlagFwdDecl)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1426, file: !1101, line: 1351, baseType: !109, size: 32, offset: 20736)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1426, file: !1101, line: 1352, baseType: !109, size: 32, offset: 20768)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1426, file: !1101, line: 1354, baseType: !370, size: 64, offset: 20800)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1426, file: !1101, line: 1364, baseType: !471, size: 64, offset: 20864)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1426, file: !1101, line: 1365, baseType: !471, size: 64, offset: 20928)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1426, file: !1101, line: 1412, baseType: !370, size: 64, offset: 20992)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1426, file: !1101, line: 1453, baseType: !3171, size: 64, offset: 21056)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1101, line: 1453, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1426, file: !1101, line: 1457, baseType: !3174, size: 64, offset: 21120)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3176)
!3176 = !{!3177, !3178, !3197, !3200, !3201, !3234, !3244}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3175, file: !68, line: 62, baseType: !67, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, scope: !3175, file: !68, line: 64, baseType: !3179, size: 192, offset: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3175, file: !68, line: 64, size: 192, elements: !3180)
!3180 = !{!3181, !3192}
!3181 = !DIDerivedType(tag: DW_TAG_member, scope: !3179, file: !68, line: 65, baseType: !3182, size: 192)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3179, file: !68, line: 65, size: 192, elements: !3183)
!3183 = !{!3184, !3191}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3182, file: !68, line: 66, baseType: !3185, size: 128)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3186, line: 50, size: 128, elements: !3187)
!3186 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3187 = !{!3188, !3189, !3190}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3185, file: !3186, line: 52, baseType: !370, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3185, file: !3186, line: 54, baseType: !7, size: 32, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3185, file: !3186, line: 55, baseType: !7, size: 32, offset: 96)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3182, file: !68, line: 67, baseType: !370, size: 64, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, scope: !3179, file: !68, line: 70, baseType: !3193, size: 192)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3179, file: !68, line: 70, size: 192, elements: !3194)
!3194 = !{!3195, !3196}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3193, file: !68, line: 71, baseType: !877, size: 128, align: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3193, file: !68, line: 72, baseType: !370, size: 64, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3175, file: !68, line: 76, baseType: !3198, size: 64, offset: 256)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3175, file: !68, line: 77, baseType: !370, size: 64, offset: 320)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3175, file: !68, line: 79, baseType: !3202, size: 64, offset: 384)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3186, line: 25, size: 256, elements: !3204)
!3204 = !{!3205, !3211, !3215}
!3205 = !DIDerivedType(tag: DW_TAG_member, scope: !3203, file: !3186, line: 26, baseType: !3206, size: 128)
!3206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3203, file: !3186, line: 26, size: 128, elements: !3207)
!3207 = !{!3208, !3210}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3206, file: !3186, line: 27, baseType: !3209, size: 128)
!3209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 128, elements: !2738)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3206, file: !3186, line: 28, baseType: !3209, size: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3203, file: !3186, line: 31, baseType: !3212, size: 64, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3214)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3186, line: 23, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, scope: !3203, file: !3186, line: 33, baseType: !3216, size: 64, offset: 192)
!3216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3203, file: !3186, line: 33, size: 64, elements: !3217)
!3217 = !{!3218, !3224, !3229}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3216, file: !3186, line: 38, baseType: !3219, size: 64)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3216, file: !3186, line: 34, size: 64, elements: !3220)
!3220 = !{!3221, !3222, !3223}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3219, file: !3186, line: 35, baseType: !655, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3219, file: !3186, line: 36, baseType: !280, size: 8, offset: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3219, file: !3186, line: 37, baseType: !280, size: 8, offset: 40)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3216, file: !3186, line: 42, baseType: !3225, size: 16)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3216, file: !3186, line: 39, size: 16, elements: !3226)
!3226 = !{!3227, !3228}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3225, file: !3186, line: 40, baseType: !280, size: 8)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3225, file: !3186, line: 41, baseType: !280, size: 8, offset: 8)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3216, file: !3186, line: 46, baseType: !3230, size: 16)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3216, file: !3186, line: 43, size: 16, elements: !3231)
!3231 = !{!3232, !3233}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3230, file: !3186, line: 44, baseType: !280, size: 8)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3230, file: !3186, line: 45, baseType: !280, size: 8, offset: 8)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3175, file: !68, line: 81, baseType: !3235, size: 64, offset: 448)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3237)
!3237 = !{!3238, !3239, !3240, !3241, !3242, !3243}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3236, file: !68, line: 86, baseType: !3198, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3236, file: !68, line: 87, baseType: !370, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3236, file: !68, line: 88, baseType: !370, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3236, file: !68, line: 89, baseType: !370, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3236, file: !68, line: 90, baseType: !221, size: 8, offset: 256)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3236, file: !68, line: 92, baseType: !3235, size: 64, offset: 320)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3175, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1426, file: !1101, line: 1463, baseType: !3246, offset: 21184)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1101, line: 739, elements: !946)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1426, file: !1101, line: 1470, baseType: !877, size: 128, align: 64, offset: 21184)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1426, file: !1101, line: 1471, baseType: !1439, size: 32, offset: 21312)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1426, file: !1101, line: 1472, baseType: !109, size: 32, offset: 21344)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1426, file: !1101, line: 1474, baseType: !1425, size: 64, offset: 21376)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1426, file: !1101, line: 1475, baseType: !899, size: 320, offset: 21440)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1426, file: !1101, line: 1478, baseType: !3253, size: 64, offset: 21760)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2063, line: 49, size: 512, elements: !3255)
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3262, !3263, !3264, !3266}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3254, file: !2063, line: 50, baseType: !3253, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3254, file: !2063, line: 51, baseType: !173, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3254, file: !2063, line: 52, baseType: !370, size: 64, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3254, file: !2063, line: 53, baseType: !370, size: 64, offset: 192)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3254, file: !2063, line: 54, baseType: !3261, size: 64, offset: 256)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3254, file: !2063, line: 56, baseType: !7, size: 32, offset: 320)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3254, file: !2063, line: 58, baseType: !7, size: 32, offset: 352)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3254, file: !2063, line: 59, baseType: !3265, size: 64, offset: 384)
!3265 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !179, line: 159, baseType: !471)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3254, file: !2063, line: 60, baseType: !229, size: 64, offset: 448)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1426, file: !1101, line: 1482, baseType: !1439, size: 32, offset: 21824)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1426, file: !1101, line: 1489, baseType: !173, size: 64, offset: 21888)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1426, file: !1101, line: 1504, baseType: !173, size: 64, offset: 21952)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1426, file: !1101, line: 1505, baseType: !472, size: 64, offset: 22016)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1426, file: !1101, line: 1506, baseType: !471, size: 64, offset: 22080)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1426, file: !1101, line: 1507, baseType: !472, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1426, file: !1101, line: 1508, baseType: !472, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1426, file: !1101, line: 1509, baseType: !472, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1426, file: !1101, line: 1510, baseType: !877, size: 128, align: 64, offset: 22208)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1426, file: !1101, line: 1511, baseType: !109, size: 32, offset: 22336)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1426, file: !1101, line: 1515, baseType: !3278, size: 64, offset: 22400)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1453, line: 56, size: 64, elements: !3279)
!3279 = !{!3280}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3278, file: !1453, line: 57, baseType: !1456, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1426, file: !1101, line: 1518, baseType: !3278, size: 64, offset: 22464)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1426, file: !1101, line: 1528, baseType: !877, size: 128, align: 64, offset: 22528)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1426, file: !1101, line: 1552, baseType: !3284, size: 35328, offset: 23040)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3285, line: 430, size: 35328, elements: !3286)
!3285 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3286 = !{!3287, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3316, !3317, !3318, !3319, !3320, !3321, !3324, !3325, !3326, !3327}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3284, file: !3285, line: 432, baseType: !3288, size: 192)
!3288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3289, size: 192, elements: !321)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3290, line: 16, size: 64, elements: !3291)
!3290 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3291 = !{!3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3289, file: !3290, line: 17, baseType: !288, size: 16)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3289, file: !3290, line: 18, baseType: !288, size: 16, offset: 16)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3289, file: !3290, line: 19, baseType: !288, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3289, file: !3290, line: 19, baseType: !288, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3289, file: !3290, line: 19, baseType: !288, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3289, file: !3290, line: 19, baseType: !288, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3289, file: !3290, line: 19, baseType: !288, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3289, file: !3290, line: 20, baseType: !288, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3289, file: !3290, line: 20, baseType: !288, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3289, file: !3290, line: 20, baseType: !288, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3289, file: !3290, line: 20, baseType: !288, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3289, file: !3290, line: 20, baseType: !288, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3289, file: !3290, line: 20, baseType: !288, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3284, file: !3285, line: 436, baseType: !370, size: 64, offset: 192)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3284, file: !3285, line: 440, baseType: !290, size: 16, offset: 256)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3284, file: !3285, line: 441, baseType: !290, size: 16, offset: 272)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3284, file: !3285, line: 442, baseType: !290, size: 16, offset: 288)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3284, file: !3285, line: 443, baseType: !290, size: 16, offset: 304)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3284, file: !3285, line: 447, baseType: !370, size: 64, offset: 320)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3284, file: !3285, line: 448, baseType: !370, size: 64, offset: 384)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3284, file: !3285, line: 459, baseType: !3313, size: 256, offset: 448)
!3313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3314, size: 256, elements: !887)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3285, line: 428, flags: DIFlagFwdDecl)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3284, file: !3285, line: 461, baseType: !370, size: 64, offset: 704)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3284, file: !3285, line: 463, baseType: !370, size: 64, offset: 768)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3284, file: !3285, line: 465, baseType: !370, size: 64, offset: 832)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3284, file: !3285, line: 466, baseType: !370, size: 64, offset: 896)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3284, file: !3285, line: 467, baseType: !370, size: 64, offset: 960)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3284, file: !3285, line: 473, baseType: !3322, size: 64, offset: 1024)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3285, line: 10, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3284, file: !3285, line: 480, baseType: !370, size: 64, offset: 1088)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3284, file: !3285, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3284, file: !3285, line: 491, baseType: !190, size: 32, offset: 1184)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3284, file: !3285, line: 501, baseType: !3328, size: 33792, offset: 1536)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3329, line: 448, size: 33792, elements: !3330)
!3329 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3330 = !{!3331, !3332, !3333, !3495, !3496, !3502, !3503}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3328, file: !3329, line: 461, baseType: !7, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3328, file: !3329, line: 468, baseType: !370, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3328, file: !3329, line: 476, baseType: !3334, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3329, line: 356, size: 33280, align: 512, elements: !3336)
!3336 = !{!3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3335, file: !3329, line: 358, baseType: !7, size: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3335, file: !3329, line: 361, baseType: !7, size: 32, offset: 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3335, file: !3329, line: 364, baseType: !471, size: 64, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3335, file: !3329, line: 367, baseType: !471, size: 64, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3335, file: !3329, line: 370, baseType: !471, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3335, file: !3329, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3335, file: !3329, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3335, file: !3329, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3335, file: !3329, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3335, file: !3329, line: 397, baseType: !3347, size: 32768, offset: 512)
!3347 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3329, line: 348, size: 32768, elements: !3348)
!3348 = !{!3349, !3364, !3401, !3478, !3491}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3347, file: !3329, line: 349, baseType: !3350, size: 896)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3329, line: 12, size: 896, elements: !3351)
!3351 = !{!3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3363}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3350, file: !3329, line: 13, baseType: !190, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3350, file: !3329, line: 14, baseType: !190, size: 32, offset: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3350, file: !3329, line: 15, baseType: !190, size: 32, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3350, file: !3329, line: 16, baseType: !190, size: 32, offset: 96)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3350, file: !3329, line: 17, baseType: !190, size: 32, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3350, file: !3329, line: 18, baseType: !190, size: 32, offset: 160)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3350, file: !3329, line: 19, baseType: !190, size: 32, offset: 192)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3350, file: !3329, line: 22, baseType: !3360, size: 640, offset: 224)
!3360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 640, elements: !3361)
!3361 = !{!3362}
!3362 = !DISubrange(count: 20)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3350, file: !3329, line: 25, baseType: !190, size: 32, offset: 864)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3347, file: !3329, line: 350, baseType: !3365, size: 4096, align: 128)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3329, line: 34, size: 4096, align: 128, elements: !3366)
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3386, !3387, !3388, !3390, !3392, !3396}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3365, file: !3329, line: 35, baseType: !288, size: 16)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3365, file: !3329, line: 36, baseType: !288, size: 16, offset: 16)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3365, file: !3329, line: 37, baseType: !288, size: 16, offset: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3365, file: !3329, line: 38, baseType: !288, size: 16, offset: 48)
!3371 = !DIDerivedType(tag: DW_TAG_member, scope: !3365, file: !3329, line: 39, baseType: !3372, size: 128, offset: 64)
!3372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3365, file: !3329, line: 39, size: 128, elements: !3373)
!3373 = !{!3374, !3379}
!3374 = !DIDerivedType(tag: DW_TAG_member, scope: !3372, file: !3329, line: 40, baseType: !3375, size: 128)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3372, file: !3329, line: 40, size: 128, elements: !3376)
!3376 = !{!3377, !3378}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3375, file: !3329, line: 41, baseType: !471, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3375, file: !3329, line: 42, baseType: !471, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, scope: !3372, file: !3329, line: 44, baseType: !3380, size: 128)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3372, file: !3329, line: 44, size: 128, elements: !3381)
!3381 = !{!3382, !3383, !3384, !3385}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3380, file: !3329, line: 45, baseType: !190, size: 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3380, file: !3329, line: 46, baseType: !190, size: 32, offset: 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3380, file: !3329, line: 47, baseType: !190, size: 32, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3380, file: !3329, line: 48, baseType: !190, size: 32, offset: 96)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3365, file: !3329, line: 51, baseType: !190, size: 32, offset: 192)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3365, file: !3329, line: 52, baseType: !190, size: 32, offset: 224)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3365, file: !3329, line: 55, baseType: !3389, size: 1024, offset: 256)
!3389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 1024, elements: !480)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3365, file: !3329, line: 58, baseType: !3391, size: 2048, offset: 1280)
!3391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 2048, elements: !325)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3365, file: !3329, line: 60, baseType: !3393, size: 384, offset: 3328)
!3393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 384, elements: !3394)
!3394 = !{!3395}
!3395 = !DISubrange(count: 12)
!3396 = !DIDerivedType(tag: DW_TAG_member, scope: !3365, file: !3329, line: 62, baseType: !3397, size: 384, offset: 3712)
!3397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3365, file: !3329, line: 62, size: 384, elements: !3398)
!3398 = !{!3399, !3400}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3397, file: !3329, line: 63, baseType: !3393, size: 384)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3397, file: !3329, line: 64, baseType: !3393, size: 384)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3347, file: !3329, line: 351, baseType: !3402, size: 1088)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3329, line: 79, size: 1088, elements: !3403)
!3403 = !{!3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3477}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3402, file: !3329, line: 80, baseType: !190, size: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3402, file: !3329, line: 81, baseType: !190, size: 32, offset: 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3402, file: !3329, line: 82, baseType: !190, size: 32, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3402, file: !3329, line: 83, baseType: !190, size: 32, offset: 96)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3402, file: !3329, line: 84, baseType: !190, size: 32, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3402, file: !3329, line: 85, baseType: !190, size: 32, offset: 160)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3402, file: !3329, line: 86, baseType: !190, size: 32, offset: 192)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3402, file: !3329, line: 88, baseType: !3360, size: 640, offset: 224)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3402, file: !3329, line: 89, baseType: !280, size: 8, offset: 864)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3402, file: !3329, line: 90, baseType: !280, size: 8, offset: 872)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3402, file: !3329, line: 91, baseType: !280, size: 8, offset: 880)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3402, file: !3329, line: 92, baseType: !280, size: 8, offset: 888)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3402, file: !3329, line: 93, baseType: !280, size: 8, offset: 896)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3402, file: !3329, line: 94, baseType: !280, size: 8, offset: 904)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3402, file: !3329, line: 95, baseType: !3419, size: 64, offset: 960)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3421, line: 11, size: 128, elements: !3422)
!3421 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3422 = !{!3423, !3424}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3420, file: !3421, line: 12, baseType: !356, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3420, file: !3421, line: 13, baseType: !3425, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3427, line: 103, size: 1344, elements: !3428)
!3427 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3457, !3458, !3459}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3426, file: !3427, line: 109, baseType: !370, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3426, file: !3427, line: 110, baseType: !370, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3426, file: !3427, line: 111, baseType: !370, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3426, file: !3427, line: 112, baseType: !370, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3426, file: !3427, line: 113, baseType: !370, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3426, file: !3427, line: 114, baseType: !370, size: 64, offset: 320)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3426, file: !3427, line: 117, baseType: !370, size: 64, offset: 384)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3426, file: !3427, line: 118, baseType: !370, size: 64, offset: 448)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3426, file: !3427, line: 119, baseType: !370, size: 64, offset: 512)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3426, file: !3427, line: 120, baseType: !370, size: 64, offset: 576)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3426, file: !3427, line: 121, baseType: !370, size: 64, offset: 640)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3426, file: !3427, line: 122, baseType: !370, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3426, file: !3427, line: 123, baseType: !370, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3426, file: !3427, line: 124, baseType: !370, size: 64, offset: 832)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3426, file: !3427, line: 125, baseType: !370, size: 64, offset: 896)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3426, file: !3427, line: 139, baseType: !370, size: 64, offset: 960)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3426, file: !3427, line: 142, baseType: !370, size: 64, offset: 1024)
!3446 = !DIDerivedType(tag: DW_TAG_member, scope: !3426, file: !3427, line: 144, baseType: !3447, size: 64, offset: 1088)
!3447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3426, file: !3427, line: 144, size: 64, elements: !3448)
!3448 = !{!3449, !3450, !3451}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3447, file: !3427, line: 146, baseType: !288, size: 16)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3447, file: !3427, line: 148, baseType: !471, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3447, file: !3427, line: 150, baseType: !3452, size: 64)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3427, line: 59, size: 64, elements: !3453)
!3453 = !{!3454, !3455, !3456}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3452, file: !3427, line: 61, baseType: !471, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3452, file: !3427, line: 63, baseType: !471, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3452, file: !3427, line: 65, baseType: !471, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3426, file: !3427, line: 153, baseType: !370, size: 64, offset: 1152)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3426, file: !3427, line: 154, baseType: !370, size: 64, offset: 1216)
!3459 = !DIDerivedType(tag: DW_TAG_member, scope: !3426, file: !3427, line: 156, baseType: !3460, size: 64, offset: 1280)
!3460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3426, file: !3427, line: 156, size: 64, elements: !3461)
!3461 = !{!3462, !3463, !3464}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3460, file: !3427, line: 158, baseType: !288, size: 16)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3460, file: !3427, line: 160, baseType: !471, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3460, file: !3427, line: 162, baseType: !3465, size: 64)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3427, line: 69, size: 64, elements: !3466)
!3466 = !{!3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3465, file: !3427, line: 71, baseType: !471, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3465, file: !3427, line: 73, baseType: !471, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3465, file: !3427, line: 75, baseType: !471, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3465, file: !3427, line: 77, baseType: !471, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3465, file: !3427, line: 80, baseType: !471, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3465, file: !3427, line: 83, baseType: !471, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3465, file: !3427, line: 86, baseType: !471, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3465, file: !3427, line: 88, baseType: !471, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3465, file: !3427, line: 93, baseType: !471, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3465, file: !3427, line: 100, baseType: !471, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3402, file: !3329, line: 96, baseType: !190, size: 32, offset: 1024)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3347, file: !3329, line: 352, baseType: !3479, size: 4608, align: 512)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3329, line: 333, size: 4608, align: 512, elements: !3480)
!3480 = !{!3481, !3482, !3489}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3479, file: !3329, line: 334, baseType: !3365, size: 4096, align: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3479, file: !3329, line: 335, baseType: !3483, size: 512, offset: 4096)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3329, line: 312, size: 512, elements: !3484)
!3484 = !{!3485, !3486, !3487}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3483, file: !3329, line: 313, baseType: !471, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3483, file: !3329, line: 314, baseType: !471, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3483, file: !3329, line: 315, baseType: !3488, size: 384, offset: 128)
!3488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 384, elements: !1892)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3479, file: !3329, line: 336, baseType: !3490, offset: 4608)
!3490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, elements: !1809)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3347, file: !3329, line: 353, baseType: !3492, size: 32768)
!3492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 32768, elements: !3493)
!3493 = !{!3494}
!3494 = !DISubrange(count: 4096)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3328, file: !3329, line: 484, baseType: !3334, size: 64, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3328, file: !3329, line: 491, baseType: !3497, size: 128, offset: 256)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3329, line: 404, size: 128, elements: !3498)
!3498 = !{!3499, !3500, !3501}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3497, file: !3329, line: 424, baseType: !471, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3497, file: !3329, line: 432, baseType: !7, size: 32, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3497, file: !3329, line: 440, baseType: !7, size: 32, offset: 96)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3328, file: !3329, line: 498, baseType: !3497, size: 128, offset: 384)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3328, file: !3329, line: 508, baseType: !3335, size: 33280, align: 512, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1402, file: !1403, line: 16, baseType: !1412, size: 192, offset: 512)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1402, file: !1403, line: 17, baseType: !272, size: 32, offset: 704)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !550, file: !14, line: 1240, baseType: !173, size: 64, offset: 6912)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !550, file: !14, line: 1243, baseType: !190, size: 32, offset: 6976)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !550, file: !14, line: 1245, baseType: !1159, size: 64, offset: 7040)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !550, file: !14, line: 1246, baseType: !1159, size: 64, offset: 7104)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !550, file: !14, line: 1248, baseType: !192, size: 32, offset: 7168)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !550, file: !14, line: 1249, baseType: !3512, size: 64, offset: 7232)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !550, file: !14, line: 1252, baseType: !3515, size: 256, offset: 7296)
!3515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 256, elements: !480)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !550, file: !14, line: 1253, baseType: !3517, size: 128, offset: 7552)
!3517 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3518, line: 21, baseType: !3519)
!3518 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3518, line: 19, size: 128, elements: !3520)
!3520 = !{!3521}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3519, file: !3518, line: 20, baseType: !3522, size: 128)
!3522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 128, elements: !2738)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !550, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !550, file: !14, line: 1261, baseType: !659, size: 256, offset: 7744)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !550, file: !14, line: 1267, baseType: !240, size: 64, offset: 8000)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !550, file: !14, line: 1269, baseType: !496, size: 64, offset: 8064)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !550, file: !14, line: 1271, baseType: !3528, size: 448, offset: 8128)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1168, line: 63, size: 448, elements: !3529)
!3529 = !{!3530, !3535, !3536, !3537, !3538, !3539, !3540}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3528, file: !1168, line: 64, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!370, !3534, !1166}
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3528, file: !1168, line: 66, baseType: !3531, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3528, file: !1168, line: 69, baseType: !356, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3528, file: !1168, line: 70, baseType: !109, size: 32, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3528, file: !1168, line: 71, baseType: !7, size: 32, offset: 224)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3528, file: !1168, line: 74, baseType: !178, size: 128, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3528, file: !1168, line: 85, baseType: !3541, size: 64, offset: 384)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !550, file: !14, line: 1274, baseType: !663, size: 64, offset: 8576)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !550, file: !14, line: 1280, baseType: !663, size: 64, offset: 8640)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !550, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !550, file: !14, line: 1286, baseType: !2473, size: 32, offset: 8736)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !550, file: !14, line: 1289, baseType: !979, size: 64, offset: 8768)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !550, file: !14, line: 1290, baseType: !1027, size: 64, offset: 8832)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !550, file: !14, line: 1297, baseType: !1986, size: 64, offset: 8896)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !550, file: !14, line: 1304, baseType: !3550, size: 64, offset: 8960)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3551, line: 49, size: 64, elements: !3552)
!3551 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3552 = !{!3553}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3550, file: !3551, line: 50, baseType: !3554, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3551, line: 41, size: 512, align: 512, elements: !3556)
!3556 = !{!3557, !3558, !3563}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3555, file: !3551, line: 43, baseType: !252, size: 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3555, file: !3551, line: 45, baseType: !3559, size: 192, offset: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3551, line: 29, size: 192, elements: !3560)
!3560 = !{!3561, !3562}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3559, file: !3551, line: 30, baseType: !178, size: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3559, file: !3551, line: 32, baseType: !356, size: 64, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3555, file: !3551, line: 46, baseType: !356, size: 64, offset: 256)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !550, file: !14, line: 1305, baseType: !3550, size: 64, offset: 9024)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !550, file: !14, line: 1306, baseType: !877, size: 128, align: 64, offset: 9088)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !550, file: !14, line: 1307, baseType: !917, size: 256, offset: 9216)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !550, file: !14, line: 1309, baseType: !659, size: 256, offset: 9472)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !550, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !550, file: !14, line: 1317, baseType: !252, size: 32, align: 512, offset: 10240)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !550, file: !14, line: 1318, baseType: !178, size: 128, offset: 10304)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !550, file: !14, line: 1320, baseType: !252, size: 32, offset: 10432)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !550, file: !14, line: 1321, baseType: !178, size: 128, offset: 10496)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !544, file: !545, line: 73, baseType: !109, size: 32, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !544, file: !545, line: 74, baseType: !3575, size: 64, offset: 192)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1833, line: 42, flags: DIFlagFwdDecl)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !498, file: !437, line: 141, baseType: !3579, size: 64, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!109, !1229, !221}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !498, file: !437, line: 142, baseType: !3583, size: 64, offset: 768)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!435, !435, !3586}
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !436, file: !437, line: 96, baseType: !549, size: 64, offset: 832)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !436, file: !437, line: 97, baseType: !370, size: 64, offset: 896)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !436, file: !437, line: 98, baseType: !173, size: 64, offset: 960)
!3591 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !437, line: 100, baseType: !3592, size: 128, offset: 1024)
!3592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !437, line: 100, size: 128, elements: !3593)
!3593 = !{!3594, !3595}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3592, file: !437, line: 101, baseType: !178, size: 128)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3592, file: !437, line: 102, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !436, file: !437, line: 104, baseType: !178, size: 128, offset: 1152)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !436, file: !437, line: 105, baseType: !178, size: 128, offset: 1280)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !436, file: !437, line: 113, baseType: !3600, size: 128, offset: 1408)
!3600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !437, line: 109, size: 128, elements: !3601)
!3601 = !{!3602, !3603, !3604}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3600, file: !437, line: 110, baseType: !903, size: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3600, file: !437, line: 111, baseType: !451, size: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3600, file: !437, line: 112, baseType: !877, size: 128, align: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !429, file: !14, line: 1968, baseType: !3606, size: 64, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!240, !435, !400, !3609}
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3611, line: 10, size: 128, elements: !3612)
!3611 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3612 = !{!3613, !3614}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3610, file: !3611, line: 11, baseType: !702, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3610, file: !3611, line: 12, baseType: !173, size: 64, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !429, file: !14, line: 1969, baseType: !3616, size: 64, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!109, !3575, !400, !109}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !429, file: !14, line: 1970, baseType: !3620, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!423, !400, !109, !221}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !429, file: !14, line: 1972, baseType: !3624, size: 64, offset: 256)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!109, !435, !320, !109}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !429, file: !14, line: 1974, baseType: !3628, size: 64, offset: 320)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!109, !3575, !400, !435, !362, !221}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !429, file: !14, line: 1976, baseType: !3632, size: 64, offset: 384)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!109, !435, !400, !435}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !429, file: !14, line: 1977, baseType: !3636, size: 64, offset: 448)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!109, !400, !435}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !429, file: !14, line: 1978, baseType: !3640, size: 64, offset: 512)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!109, !3575, !400, !435, !240}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !429, file: !14, line: 1980, baseType: !3644, size: 64, offset: 576)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!109, !3575, !400, !435, !362}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !429, file: !14, line: 1982, baseType: !3636, size: 64, offset: 640)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !429, file: !14, line: 1983, baseType: !3649, size: 64, offset: 704)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!109, !3575, !400, !435, !362, !554}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !429, file: !14, line: 1985, baseType: !3653, size: 64, offset: 768)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!109, !3575, !400, !435, !400, !435, !7}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !429, file: !14, line: 1987, baseType: !3657, size: 64, offset: 832)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!109, !3575, !435, !3660}
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3662)
!3662 = !{!3663, !3664, !3665, !3675, !3684, !3685, !3690, !3691, !3692}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3661, file: !14, line: 227, baseType: !7, size: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3661, file: !14, line: 228, baseType: !362, size: 16, offset: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, scope: !3661, file: !14, line: 241, baseType: !3666, size: 32, offset: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3661, file: !14, line: 241, size: 32, elements: !3667)
!3667 = !{!3668, !3669}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3666, file: !14, line: 242, baseType: !406, size: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3666, file: !14, line: 243, baseType: !3670, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3671, line: 16, baseType: !3672)
!3671 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3671, line: 14, size: 32, elements: !3673)
!3673 = !{!3674}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3672, file: !3671, line: 15, baseType: !411, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, scope: !3661, file: !14, line: 245, baseType: !3676, size: 32, offset: 96)
!3676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3661, file: !14, line: 245, size: 32, elements: !3677)
!3677 = !{!3678, !3679}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3676, file: !14, line: 246, baseType: !415, size: 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3676, file: !14, line: 247, baseType: !3680, size: 32)
!3680 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3671, line: 20, baseType: !3681)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3671, line: 18, size: 32, elements: !3682)
!3682 = !{!3683}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3681, file: !3671, line: 19, baseType: !419, size: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3661, file: !14, line: 249, baseType: !559, size: 64, offset: 128)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3661, file: !14, line: 250, baseType: !3686, size: 128, offset: 192)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1160, line: 13, size: 128, elements: !3687)
!3687 = !{!3688, !3689}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3686, file: !1160, line: 14, baseType: !1159, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3686, file: !1160, line: 15, baseType: !356, size: 64, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3661, file: !14, line: 251, baseType: !3686, size: 128, offset: 320)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3661, file: !14, line: 252, baseType: !3686, size: 128, offset: 448)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3661, file: !14, line: 259, baseType: !1749, size: 64, offset: 576)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !429, file: !14, line: 1988, baseType: !3694, size: 64, offset: 896)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!109, !3575, !1229, !3697, !190, !7}
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3699, line: 22, size: 1280, elements: !3700)
!3699 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3700 = !{!3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3698, file: !3699, line: 23, baseType: !190, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3698, file: !3699, line: 24, baseType: !362, size: 16, offset: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3698, file: !3699, line: 25, baseType: !7, size: 32, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3698, file: !3699, line: 26, baseType: !1871, size: 32, offset: 96)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3698, file: !3699, line: 27, baseType: !471, size: 64, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3698, file: !3699, line: 28, baseType: !471, size: 64, offset: 192)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3698, file: !3699, line: 41, baseType: !471, size: 64, offset: 256)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3698, file: !3699, line: 42, baseType: !554, size: 32, offset: 320)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3698, file: !3699, line: 43, baseType: !554, size: 32, offset: 352)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3698, file: !3699, line: 44, baseType: !406, size: 32, offset: 384)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3698, file: !3699, line: 45, baseType: !415, size: 32, offset: 416)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3698, file: !3699, line: 46, baseType: !559, size: 64, offset: 448)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3698, file: !3699, line: 47, baseType: !3686, size: 128, offset: 512)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3698, file: !3699, line: 48, baseType: !3686, size: 128, offset: 640)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3698, file: !3699, line: 49, baseType: !3686, size: 128, offset: 768)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3698, file: !3699, line: 50, baseType: !3686, size: 128, offset: 896)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3698, file: !3699, line: 51, baseType: !471, size: 64, offset: 1024)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3698, file: !3699, line: 52, baseType: !471, size: 64, offset: 1088)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3698, file: !3699, line: 53, baseType: !190, size: 32, offset: 1152)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3698, file: !3699, line: 54, baseType: !190, size: 32, offset: 1184)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3698, file: !3699, line: 55, baseType: !471, size: 64, offset: 1216)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !429, file: !14, line: 1990, baseType: !3723, size: 64, offset: 960)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!352, !435, !320, !367}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !429, file: !14, line: 1991, baseType: !3727, size: 64, offset: 1024)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!109, !400, !3730, !471, !471}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !429, file: !14, line: 1993, baseType: !3733, size: 64, offset: 1088)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!109, !400, !109}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !429, file: !14, line: 1994, baseType: !3737, size: 64, offset: 1152)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!109, !400, !435, !1749, !7, !362}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !429, file: !14, line: 1997, baseType: !3741, size: 64, offset: 1216)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!109, !3575, !400, !1749, !362}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !429, file: !14, line: 1999, baseType: !3745, size: 64, offset: 1280)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!423, !3575, !435, !109}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !429, file: !14, line: 2001, baseType: !3749, size: 64, offset: 1344)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!109, !3575, !435, !423, !109}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !429, file: !14, line: 2003, baseType: !3753, size: 64, offset: 1408)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!109, !3575, !435, !3756}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !429, file: !14, line: 2005, baseType: !3759, size: 64, offset: 1472)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!109, !435, !3756}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !429, file: !14, line: 2006, baseType: !3763, size: 64, offset: 1536)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!3766, !400}
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3768)
!3768 = !{!3769, !3776}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3767, file: !14, line: 3193, baseType: !3770, size: 128)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3771, line: 296, size: 128, elements: !3772)
!3771 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3772 = !{!3773, !3774, !3775}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3770, file: !3771, line: 297, baseType: !252, size: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3770, file: !3771, line: 299, baseType: !1171, size: 32, offset: 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3770, file: !3771, line: 300, baseType: !173, size: 64, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3767, file: !14, line: 3194, baseType: !190, size: 32, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !401, file: !14, line: 655, baseType: !549, size: 64, offset: 448)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !401, file: !14, line: 656, baseType: !396, size: 64, offset: 512)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !401, file: !14, line: 659, baseType: !173, size: 64, offset: 576)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !401, file: !14, line: 663, baseType: !370, size: 64, offset: 640)
!3781 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !14, line: 671, baseType: !3782, size: 32, offset: 704)
!3782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !14, line: 671, size: 32, elements: !3783)
!3783 = !{!3784, !3786}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3782, file: !14, line: 672, baseType: !3785, size: 32)
!3785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3782, file: !14, line: 673, baseType: !7, size: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !401, file: !14, line: 675, baseType: !554, size: 32, offset: 736)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !401, file: !14, line: 676, baseType: !559, size: 64, offset: 768)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !401, file: !14, line: 677, baseType: !3686, size: 128, offset: 832)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !401, file: !14, line: 678, baseType: !3686, size: 128, offset: 960)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !401, file: !14, line: 679, baseType: !3686, size: 128, offset: 1088)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !401, file: !14, line: 680, baseType: !252, size: 32, offset: 1216)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !401, file: !14, line: 681, baseType: !290, size: 16, offset: 1248)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !401, file: !14, line: 682, baseType: !280, size: 8, offset: 1264)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !401, file: !14, line: 683, baseType: !280, size: 8, offset: 1272)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !401, file: !14, line: 684, baseType: !1307, size: 64, offset: 1280)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !401, file: !14, line: 691, baseType: !370, size: 64, offset: 1344)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !401, file: !14, line: 692, baseType: !1319, size: 320, offset: 1408)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !401, file: !14, line: 694, baseType: !370, size: 64, offset: 1728)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !401, file: !14, line: 695, baseType: !370, size: 64, offset: 1792)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !401, file: !14, line: 697, baseType: !903, size: 128, offset: 1856)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !401, file: !14, line: 698, baseType: !178, size: 128, offset: 1984)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !401, file: !14, line: 707, baseType: !178, size: 128, offset: 2112)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !401, file: !14, line: 708, baseType: !178, size: 128, offset: 2240)
!3805 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !14, line: 709, baseType: !3806, size: 128, offset: 2368)
!3806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !14, line: 709, size: 128, elements: !3807)
!3807 = !{!3808, !3809}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3806, file: !14, line: 710, baseType: !1027, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3806, file: !14, line: 711, baseType: !877, size: 128, align: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !401, file: !14, line: 713, baseType: !665, size: 64, offset: 2496)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !401, file: !14, line: 714, baseType: !665, size: 64, offset: 2560)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !401, file: !14, line: 715, baseType: !272, size: 32, offset: 2624)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !401, file: !14, line: 716, baseType: !272, size: 32, offset: 2656)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !401, file: !14, line: 717, baseType: !272, size: 32, offset: 2688)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !401, file: !14, line: 719, baseType: !272, size: 32, offset: 2720)
!3816 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !14, line: 721, baseType: !3817, size: 64, offset: 2752)
!3817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !14, line: 721, size: 64, elements: !3818)
!3818 = !{!3819, !3820}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3817, file: !14, line: 722, baseType: !2017, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3817, file: !14, line: 723, baseType: !1050, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !401, file: !14, line: 725, baseType: !3822, size: 64, offset: 2816)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !401, file: !14, line: 726, baseType: !397, size: 1536, align: 64, offset: 2880)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !401, file: !14, line: 727, baseType: !178, size: 128, offset: 4416)
!3826 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !14, line: 728, baseType: !3827, size: 64, offset: 4544)
!3827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !14, line: 728, size: 64, elements: !3828)
!3828 = !{!3829, !3830, !3833, !3834}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3827, file: !14, line: 729, baseType: !2423, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3827, file: !14, line: 730, baseType: !3831, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3827, file: !14, line: 731, baseType: !320, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3827, file: !14, line: 732, baseType: !7, size: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !401, file: !14, line: 735, baseType: !192, size: 32, offset: 4608)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !401, file: !14, line: 738, baseType: !192, size: 32, offset: 4640)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !401, file: !14, line: 739, baseType: !3512, size: 64, offset: 4672)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !401, file: !14, line: 750, baseType: !173, size: 64, offset: 4736)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !397, file: !14, line: 474, baseType: !3770, size: 128, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !397, file: !14, line: 475, baseType: !1319, size: 320, offset: 192)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !397, file: !14, line: 476, baseType: !1171, size: 32, offset: 512)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !397, file: !14, line: 477, baseType: !272, size: 32, offset: 544)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !397, file: !14, line: 482, baseType: !1605, size: 128, offset: 576)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !397, file: !14, line: 483, baseType: !370, size: 64, offset: 704)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !397, file: !14, line: 484, baseType: !370, size: 64, offset: 768)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !397, file: !14, line: 485, baseType: !3847, size: 64, offset: 832)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3849)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3850)
!3850 = !{!3851, !3855, !3925, !3929, !3933, !3939, !3943, !3947, !3952, !3956, !3960, !3964, !3965, !3969, !3973, !3977, !3982, !3986, !3993, !3994}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3849, file: !14, line: 405, baseType: !3852, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!109, !2210, !1062}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3849, file: !14, line: 406, baseType: !3856, size: 64, offset: 64)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!109, !1749, !3859}
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3861)
!3861 = !{!3862, !3892, !3906}
!3862 = !DIDerivedType(tag: DW_TAG_member, scope: !3860, file: !38, line: 295, baseType: !3863, size: 512)
!3863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3860, file: !38, line: 295, size: 512, elements: !3864)
!3864 = !{!3865, !3891}
!3865 = !DIDerivedType(tag: DW_TAG_member, scope: !3863, file: !38, line: 296, baseType: !3866, size: 448)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3863, file: !38, line: 296, size: 448, elements: !3867)
!3867 = !{!3868, !3869, !3878, !3879, !3880, !3889, !3890}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3866, file: !38, line: 298, baseType: !370, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, scope: !3866, file: !38, line: 299, baseType: !3870, size: 128, offset: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3866, file: !38, line: 299, size: 128, elements: !3871)
!3871 = !{!3872, !3873}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3870, file: !38, line: 300, baseType: !178, size: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, scope: !3870, file: !38, line: 302, baseType: !3874, size: 128)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3870, file: !38, line: 302, size: 128, elements: !3875)
!3875 = !{!3876, !3877}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3874, file: !38, line: 303, baseType: !173, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3874, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3866, file: !38, line: 310, baseType: !396, size: 64, offset: 192)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3866, file: !38, line: 311, baseType: !370, size: 64, offset: 256)
!3880 = !DIDerivedType(tag: DW_TAG_member, scope: !3866, file: !38, line: 312, baseType: !3881, size: 64, offset: 320)
!3881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3866, file: !38, line: 312, size: 64, elements: !3882)
!3882 = !{!3883, !3884}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3881, file: !38, line: 313, baseType: !173, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3881, file: !38, line: 314, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3886)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3887)
!3887 = !{!3888}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3886, file: !38, line: 256, baseType: !370, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3866, file: !38, line: 316, baseType: !272, size: 32, offset: 384)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3866, file: !38, line: 317, baseType: !272, size: 32, offset: 416)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3863, file: !38, line: 323, baseType: !2211, size: 512, align: 128)
!3892 = !DIDerivedType(tag: DW_TAG_member, scope: !3860, file: !38, line: 325, baseType: !3893, size: 512, offset: 512)
!3893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3860, file: !38, line: 325, size: 512, elements: !3894)
!3894 = !{!3895, !3905}
!3895 = !DIDerivedType(tag: DW_TAG_member, scope: !3893, file: !38, line: 326, baseType: !3896, size: 320)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3893, file: !38, line: 326, size: 320, elements: !3897)
!3897 = !{!3898, !3899, !3900, !3901, !3902, !3903, !3904}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3896, file: !38, line: 327, baseType: !370, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3896, file: !38, line: 328, baseType: !370, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3896, file: !38, line: 329, baseType: !370, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3896, file: !38, line: 331, baseType: !272, size: 32, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3896, file: !38, line: 332, baseType: !272, size: 32, offset: 224)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3896, file: !38, line: 333, baseType: !272, size: 32, offset: 256)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3896, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3893, file: !38, line: 339, baseType: !2211, size: 512, align: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, scope: !3860, file: !38, line: 341, baseType: !3907, size: 512, offset: 1024)
!3907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3860, file: !38, line: 341, size: 512, elements: !3908)
!3908 = !{!3909, !3918, !3924}
!3909 = !DIDerivedType(tag: DW_TAG_member, scope: !3907, file: !38, line: 342, baseType: !3910, size: 384)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3907, file: !38, line: 342, size: 384, elements: !3911)
!3911 = !{!3912, !3913, !3914, !3915, !3916, !3917}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3910, file: !38, line: 343, baseType: !370, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3910, file: !38, line: 344, baseType: !370, size: 64, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3910, file: !38, line: 346, baseType: !173, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3910, file: !38, line: 347, baseType: !173, size: 64, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3910, file: !38, line: 348, baseType: !173, size: 64, offset: 256)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3910, file: !38, line: 349, baseType: !173, size: 64, offset: 320)
!3918 = !DIDerivedType(tag: DW_TAG_member, scope: !3907, file: !38, line: 352, baseType: !3919, size: 256)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3907, file: !38, line: 352, size: 256, elements: !3920)
!3920 = !{!3921, !3922, !3923}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3919, file: !38, line: 353, baseType: !370, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3919, file: !38, line: 354, baseType: !370, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3919, file: !38, line: 356, baseType: !178, size: 128, offset: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3907, file: !38, line: 359, baseType: !2211, size: 512, align: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3849, file: !14, line: 409, baseType: !3926, size: 64, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!109, !396, !1062}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3849, file: !14, line: 412, baseType: !3930, size: 64, offset: 192)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!221, !396, !3859}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3849, file: !14, line: 414, baseType: !3934, size: 64, offset: 256)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{null, !3937}
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3849, file: !14, line: 416, baseType: !3940, size: 64, offset: 320)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!109, !1749, !396, !559, !7, !3261, !2438}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3849, file: !14, line: 419, baseType: !3944, size: 64, offset: 384)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!109, !1749, !396, !559, !7, !7, !2210, !173}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3849, file: !14, line: 424, baseType: !3948, size: 64, offset: 448)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!3951, !396, !3951}
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !179, line: 131, baseType: !471)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3849, file: !14, line: 425, baseType: !3953, size: 64, offset: 512)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{null, !3859, !367, !367}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3849, file: !14, line: 426, baseType: !3957, size: 64, offset: 576)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!221, !3859, !1171}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3849, file: !14, line: 427, baseType: !3961, size: 64, offset: 640)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{null, !3859}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3849, file: !14, line: 428, baseType: !2036, size: 64, offset: 704)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3849, file: !14, line: 433, baseType: !3966, size: 64, offset: 768)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!109, !396, !3859, !3859, !74}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3849, file: !14, line: 435, baseType: !3970, size: 64, offset: 832)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!109, !3859}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3849, file: !14, line: 436, baseType: !3974, size: 64, offset: 896)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!221, !3859, !367, !367}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3849, file: !14, line: 438, baseType: !3978, size: 64, offset: 960)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{null, !3859, !3981, !3981}
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3849, file: !14, line: 439, baseType: !3983, size: 64, offset: 1024)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!109, !396, !2210}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3849, file: !14, line: 442, baseType: !3987, size: 64, offset: 1088)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!109, !3990, !1749, !3992}
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3849, file: !14, line: 444, baseType: !2430, size: 64, offset: 1152)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3849, file: !14, line: 445, baseType: !3995, size: 64, offset: 1216)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!109, !2039, !2061}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !397, file: !14, line: 486, baseType: !370, size: 64, offset: 896)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !397, file: !14, line: 487, baseType: !1319, size: 320, offset: 960)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !397, file: !14, line: 488, baseType: !2473, size: 32, offset: 1280)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !397, file: !14, line: 489, baseType: !252, size: 32, offset: 1312)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !397, file: !14, line: 490, baseType: !178, size: 128, offset: 1344)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !397, file: !14, line: 491, baseType: !173, size: 64, offset: 1472)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !387, file: !346, line: 180, baseType: !4005, size: 64, offset: 320)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!352, !1749, !245, !386, !320, !559, !367}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !387, file: !346, line: 182, baseType: !4005, size: 64, offset: 384)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !387, file: !346, line: 184, baseType: !4010, size: 64, offset: 448)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!109, !1749, !245, !386, !2101}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !375, file: !346, line: 90, baseType: !4014, size: 64, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !375, file: !346, line: 91, baseType: !4016, size: 64, offset: 256)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !336, file: !237, line: 120, baseType: !4018, size: 64, offset: 192)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!4021, !303}
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4023)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4024)
!4024 = !{!4025, !4026, !4030, !4034, !4040, !4044}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4023, file: !82, line: 40, baseType: !81, size: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4023, file: !82, line: 41, baseType: !4027, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!221}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4023, file: !82, line: 42, baseType: !4031, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!173}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4023, file: !82, line: 43, baseType: !4035, size: 64, offset: 192)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!229, !4038}
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4023, file: !82, line: 44, baseType: !4041, size: 64, offset: 256)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!229}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4023, file: !82, line: 45, baseType: !702, size: 64, offset: 320)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !336, file: !237, line: 121, baseType: !4046, size: 64, offset: 256)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!229, !303}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !336, file: !237, line: 122, baseType: !4050, size: 64, offset: 320)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{null, !303, !4053, !4054}
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !236, file: !237, line: 70, baseType: !4056, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !574, line: 190, size: 1152, elements: !4058)
!4058 = !{!4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4150, !4151, !4152, !4153, !4154, !4157}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4057, file: !574, line: 191, baseType: !272, size: 32)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4057, file: !574, line: 192, baseType: !272, size: 32, offset: 32)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4057, file: !574, line: 202, baseType: !4056, size: 64, offset: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4057, file: !574, line: 203, baseType: !240, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4057, file: !574, line: 205, baseType: !769, size: 192, align: 64, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4057, file: !574, line: 207, baseType: !229, size: 64, offset: 384)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4057, file: !574, line: 208, baseType: !7, size: 32, offset: 448)
!4066 = !DIDerivedType(tag: DW_TAG_member, scope: !4057, file: !574, line: 209, baseType: !4067, size: 256, offset: 512)
!4067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4057, file: !574, line: 209, size: 256, elements: !4068)
!4068 = !{!4069, !4078, !4082}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4067, file: !574, line: 210, baseType: !4070, size: 256)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !574, line: 153, size: 256, elements: !4071)
!4071 = !{!4072, !4073, !4074, !4077}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4070, file: !574, line: 154, baseType: !370, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4070, file: !574, line: 156, baseType: !1608, size: 64, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4070, file: !574, line: 162, baseType: !4075, size: 64, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !574, line: 162, flags: DIFlagFwdDecl)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4070, file: !574, line: 167, baseType: !370, size: 64, offset: 192)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4067, file: !574, line: 211, baseType: !4079, size: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !574, line: 170, size: 64, elements: !4080)
!4080 = !{!4081}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4079, file: !574, line: 171, baseType: !4056, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4067, file: !574, line: 212, baseType: !4083, size: 256)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !574, line: 174, size: 256, elements: !4084)
!4084 = !{!4085, !4145, !4148, !4149}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4083, file: !574, line: 175, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4088)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !574, line: 271, size: 768, elements: !4089)
!4089 = !{!4090, !4110, !4114, !4118, !4122, !4126, !4130, !4134, !4135, !4136, !4137, !4141}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4088, file: !574, line: 276, baseType: !4091, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!109, !4094}
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !574, line: 251, size: 1216, elements: !4096)
!4096 = !{!4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4095, file: !574, line: 253, baseType: !4056, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4095, file: !574, line: 254, baseType: !1749, size: 64, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4095, file: !574, line: 255, baseType: !1099, size: 64, offset: 128)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4095, file: !574, line: 256, baseType: !173, size: 64, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4095, file: !574, line: 259, baseType: !659, size: 256, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4095, file: !574, line: 260, baseType: !659, size: 256, offset: 512)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4095, file: !574, line: 261, baseType: !109, size: 32, offset: 768)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4095, file: !574, line: 262, baseType: !178, size: 128, offset: 832)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4095, file: !574, line: 263, baseType: !320, size: 64, offset: 960)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4095, file: !574, line: 265, baseType: !367, size: 64, offset: 1024)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4095, file: !574, line: 266, baseType: !221, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4095, file: !574, line: 267, baseType: !221, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4095, file: !574, line: 268, baseType: !2146, size: 64, offset: 1152)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4088, file: !574, line: 277, baseType: !4111, size: 64, offset: 64)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{null, !4094}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4088, file: !574, line: 290, baseType: !4115, size: 64, offset: 128)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!109, !1099, !173}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4088, file: !574, line: 292, baseType: !4119, size: 64, offset: 192)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!173, !1099, !2030}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4088, file: !574, line: 293, baseType: !4123, size: 64, offset: 256)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!173, !1099, !173, !2030}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4088, file: !574, line: 294, baseType: !4127, size: 64, offset: 320)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{null, !1099, !173}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4088, file: !574, line: 296, baseType: !4131, size: 64, offset: 384)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!352, !4094, !320, !367, !559}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4088, file: !574, line: 306, baseType: !367, size: 64, offset: 448)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4088, file: !574, line: 313, baseType: !221, size: 8, offset: 512)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4088, file: !574, line: 314, baseType: !4131, size: 64, offset: 576)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4088, file: !574, line: 317, baseType: !4138, size: 64, offset: 640)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!2088, !4094, !2090}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4088, file: !574, line: 320, baseType: !4142, size: 64, offset: 704)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!109, !4094, !2101}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4083, file: !574, line: 176, baseType: !4146, size: 64, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !574, line: 35, flags: DIFlagFwdDecl)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4083, file: !574, line: 177, baseType: !559, size: 64, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4083, file: !574, line: 178, baseType: !4056, size: 64, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4057, file: !574, line: 215, baseType: !173, size: 64, offset: 768)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4057, file: !574, line: 221, baseType: !471, size: 64, offset: 832)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4057, file: !574, line: 223, baseType: !290, size: 16, offset: 896)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4057, file: !574, line: 224, baseType: !362, size: 16, offset: 912)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4057, file: !574, line: 225, baseType: !4155, size: 64, offset: 960)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !574, line: 36, flags: DIFlagFwdDecl)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4057, file: !574, line: 227, baseType: !877, size: 128, align: 64, offset: 1024)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !236, file: !237, line: 71, baseType: !4159, size: 32, offset: 448)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4160, line: 19, size: 32, elements: !4161)
!4160 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4161 = !{!4162}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4159, file: !4160, line: 20, baseType: !1439, size: 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !236, file: !237, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !236, file: !237, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !236, file: !237, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !236, file: !237, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !236, file: !237, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !233, file: !94, line: 707, baseType: !4169, size: 64, offset: 512)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !233, file: !94, line: 709, baseType: !4171, size: 64, offset: 576)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !233, file: !94, line: 711, baseType: !240, size: 64, offset: 640)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !233, file: !94, line: 712, baseType: !4175, size: 64, offset: 704)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4177)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4178)
!4178 = !{!4179, !4180, !4181, !4185, !4190, !4194}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4177, file: !94, line: 90, baseType: !240, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4177, file: !94, line: 91, baseType: !372, size: 64, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4177, file: !94, line: 92, baseType: !4182, size: 64, offset: 128)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!109, !231, !315}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4177, file: !94, line: 93, baseType: !4186, size: 64, offset: 192)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!320, !231, !4189, !4053, !4054}
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4177, file: !94, line: 95, baseType: !4191, size: 64, offset: 256)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{null, !4169}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4177, file: !94, line: 97, baseType: !4195, size: 64, offset: 320)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4197)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4198)
!4198 = !{!4199, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4197, file: !101, line: 287, baseType: !4200, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!109, !4169}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4197, file: !101, line: 288, baseType: !4191, size: 64, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4197, file: !101, line: 289, baseType: !4200, size: 64, offset: 128)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4197, file: !101, line: 290, baseType: !4200, size: 64, offset: 192)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4197, file: !101, line: 291, baseType: !4200, size: 64, offset: 256)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4197, file: !101, line: 292, baseType: !4200, size: 64, offset: 320)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4197, file: !101, line: 293, baseType: !4200, size: 64, offset: 384)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4197, file: !101, line: 294, baseType: !4200, size: 64, offset: 448)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4197, file: !101, line: 295, baseType: !4200, size: 64, offset: 512)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4197, file: !101, line: 296, baseType: !4200, size: 64, offset: 576)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4197, file: !101, line: 297, baseType: !4200, size: 64, offset: 640)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4197, file: !101, line: 298, baseType: !4200, size: 64, offset: 704)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4197, file: !101, line: 299, baseType: !4200, size: 64, offset: 768)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4197, file: !101, line: 300, baseType: !4200, size: 64, offset: 832)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4197, file: !101, line: 301, baseType: !4200, size: 64, offset: 896)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4197, file: !101, line: 302, baseType: !4200, size: 64, offset: 960)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4197, file: !101, line: 303, baseType: !4200, size: 64, offset: 1024)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4197, file: !101, line: 304, baseType: !4200, size: 64, offset: 1088)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4197, file: !101, line: 305, baseType: !4200, size: 64, offset: 1152)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4197, file: !101, line: 306, baseType: !4200, size: 64, offset: 1216)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4197, file: !101, line: 307, baseType: !4200, size: 64, offset: 1280)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4197, file: !101, line: 308, baseType: !4200, size: 64, offset: 1344)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4197, file: !101, line: 309, baseType: !4200, size: 64, offset: 1408)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !233, file: !94, line: 714, baseType: !4226, size: 64, offset: 768)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4228)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4229, line: 80, size: 1344, elements: !4230)
!4229 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4230 = !{!4231, !4232, !4233, !4234, !4235, !4236, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4309}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4228, file: !4229, line: 81, baseType: !240, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4228, file: !4229, line: 82, baseType: !240, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4228, file: !4229, line: 83, baseType: !372, size: 64, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4228, file: !4229, line: 84, baseType: !372, size: 64, offset: 192)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4228, file: !4229, line: 85, baseType: !372, size: 64, offset: 256)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4228, file: !4229, line: 87, baseType: !4237, size: 64, offset: 320)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!109, !4169, !4240}
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4242)
!4242 = !{!4243, !4244, !4245, !4246, !4247, !4248, !4249, !4262, !4272, !4273, !4274, !4275, !4276, !4284, !4285, !4286, !4287, !4288, !4289}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4241, file: !88, line: 97, baseType: !240, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4241, file: !88, line: 98, baseType: !4226, size: 64, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4241, file: !88, line: 100, baseType: !588, size: 64, offset: 128)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4241, file: !88, line: 101, baseType: !240, size: 64, offset: 192)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4241, file: !88, line: 103, baseType: !221, size: 8, offset: 256)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4241, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4241, file: !88, line: 106, baseType: !4250, size: 64, offset: 320)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4252)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4253, line: 282, size: 1600, elements: !4254)
!4253 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4254 = !{!4255, !4256, !4257, !4261}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4252, file: !4253, line: 283, baseType: !3515, size: 256)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4252, file: !4253, line: 284, baseType: !3515, size: 256, offset: 256)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4252, file: !4253, line: 285, baseType: !4258, size: 1024, offset: 512)
!4258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 1024, elements: !4259)
!4259 = !{!4260}
!4260 = !DISubrange(count: 128)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4252, file: !4253, line: 286, baseType: !229, size: 64, offset: 1536)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4241, file: !88, line: 107, baseType: !4263, size: 64, offset: 384)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4265)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4253, line: 217, size: 256, elements: !4266)
!4266 = !{!4267, !4268, !4270, !4271}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4265, file: !4253, line: 218, baseType: !3522, size: 128)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4265, file: !4253, line: 219, baseType: !4269, size: 64, offset: 128)
!4269 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4253, line: 15, baseType: !370)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4265, file: !4253, line: 220, baseType: !192, size: 32, offset: 192)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4265, file: !4253, line: 221, baseType: !192, size: 32, offset: 224)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4241, file: !88, line: 109, baseType: !4200, size: 64, offset: 448)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4241, file: !88, line: 110, baseType: !4191, size: 64, offset: 512)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4241, file: !88, line: 111, baseType: !4200, size: 64, offset: 576)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4241, file: !88, line: 112, baseType: !4191, size: 64, offset: 640)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4241, file: !88, line: 113, baseType: !4277, size: 64, offset: 704)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!109, !4169, !4280}
!4280 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4281)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4282)
!4282 = !{!4283}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4281, file: !101, line: 59, baseType: !109, size: 32)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4241, file: !88, line: 114, baseType: !4200, size: 64, offset: 768)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4241, file: !88, line: 115, baseType: !372, size: 64, offset: 832)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4241, file: !88, line: 116, baseType: !372, size: 64, offset: 896)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4241, file: !88, line: 118, baseType: !4195, size: 64, offset: 960)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4241, file: !88, line: 119, baseType: !4191, size: 64, offset: 1024)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4241, file: !88, line: 121, baseType: !4290, size: 64, offset: 1088)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4228, file: !4229, line: 88, baseType: !4182, size: 64, offset: 384)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4228, file: !4229, line: 89, baseType: !4200, size: 64, offset: 448)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4228, file: !4229, line: 90, baseType: !4191, size: 64, offset: 512)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4228, file: !4229, line: 91, baseType: !4191, size: 64, offset: 576)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4228, file: !4229, line: 92, baseType: !4191, size: 64, offset: 640)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4228, file: !4229, line: 94, baseType: !4200, size: 64, offset: 704)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4228, file: !4229, line: 95, baseType: !4200, size: 64, offset: 768)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4228, file: !4229, line: 97, baseType: !4277, size: 64, offset: 832)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4228, file: !4229, line: 98, baseType: !4200, size: 64, offset: 896)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4228, file: !4229, line: 100, baseType: !4200, size: 64, offset: 960)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4228, file: !4229, line: 102, baseType: !4200, size: 64, offset: 1024)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4228, file: !4229, line: 103, baseType: !4191, size: 64, offset: 1088)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4228, file: !4229, line: 105, baseType: !4195, size: 64, offset: 1152)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4228, file: !4229, line: 107, baseType: !4306, size: 64, offset: 1216)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4308)
!4308 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4229, line: 107, flags: DIFlagFwdDecl)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4228, file: !4229, line: 109, baseType: !221, size: 8, offset: 1280)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !233, file: !94, line: 715, baseType: !4240, size: 64, offset: 832)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !233, file: !94, line: 717, baseType: !173, size: 64, offset: 896)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !233, file: !94, line: 719, baseType: !173, size: 64, offset: 960)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !233, file: !94, line: 721, baseType: !659, size: 256, offset: 1024)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !233, file: !94, line: 725, baseType: !4315, size: 448, offset: 1280)
!4315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4316)
!4316 = !{!4317, !4318, !4319, !4320}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4315, file: !94, line: 518, baseType: !178, size: 128)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4315, file: !94, line: 519, baseType: !178, size: 128, offset: 128)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4315, file: !94, line: 520, baseType: !178, size: 128, offset: 256)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4315, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !233, file: !94, line: 726, baseType: !4322, size: 2496, offset: 1728)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4323)
!4323 = !{!4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4406, !4410}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4322, file: !101, line: 664, baseType: !4280, size: 32)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4322, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4322, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4322, file: !101, line: 667, baseType: !221, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4322, file: !101, line: 668, baseType: !221, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4322, file: !101, line: 669, baseType: !221, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4322, file: !101, line: 670, baseType: !221, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4322, file: !101, line: 671, baseType: !221, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4322, file: !101, line: 672, baseType: !221, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4322, file: !101, line: 673, baseType: !221, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4322, file: !101, line: 674, baseType: !221, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4322, file: !101, line: 675, baseType: !190, size: 32, offset: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4322, file: !101, line: 676, baseType: !252, size: 32, offset: 96)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4322, file: !101, line: 678, baseType: !178, size: 128, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4322, file: !101, line: 679, baseType: !608, size: 256, offset: 256)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4322, file: !101, line: 680, baseType: !4340, size: 64, offset: 512)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4342, line: 43, size: 1536, elements: !4343)
!4342 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4343 = !{!4344, !4345, !4346, !4347, !4348, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4341, file: !4342, line: 44, baseType: !240, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4341, file: !4342, line: 45, baseType: !109, size: 32, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4341, file: !4342, line: 46, baseType: !178, size: 128, offset: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4341, file: !4342, line: 47, baseType: !252, size: 32, offset: 256)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4341, file: !4342, line: 48, baseType: !4349, size: 64, offset: 320)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4341, file: !4342, line: 49, baseType: !899, size: 320, offset: 384)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4341, file: !4342, line: 50, baseType: !370, size: 64, offset: 704)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4341, file: !4342, line: 51, baseType: !1554, size: 64, offset: 768)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4341, file: !4342, line: 52, baseType: !1554, size: 64, offset: 832)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4341, file: !4342, line: 53, baseType: !1554, size: 64, offset: 896)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4341, file: !4342, line: 54, baseType: !1554, size: 64, offset: 960)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4341, file: !4342, line: 55, baseType: !1554, size: 64, offset: 1024)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4341, file: !4342, line: 56, baseType: !370, size: 64, offset: 1088)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4341, file: !4342, line: 57, baseType: !370, size: 64, offset: 1152)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4341, file: !4342, line: 58, baseType: !370, size: 64, offset: 1216)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4341, file: !4342, line: 59, baseType: !370, size: 64, offset: 1280)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4341, file: !4342, line: 60, baseType: !370, size: 64, offset: 1344)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4341, file: !4342, line: 61, baseType: !4169, size: 64, offset: 1408)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4341, file: !4342, line: 62, baseType: !221, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4341, file: !4342, line: 63, baseType: !221, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4322, file: !101, line: 681, baseType: !221, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4322, file: !101, line: 682, baseType: !221, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4322, file: !101, line: 683, baseType: !221, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4322, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4322, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4322, file: !101, line: 690, baseType: !1546, size: 512, offset: 640)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4322, file: !101, line: 691, baseType: !471, size: 64, offset: 1152)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4322, file: !101, line: 692, baseType: !917, size: 256, offset: 1216)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4322, file: !101, line: 693, baseType: !1412, size: 192, offset: 1472)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4322, file: !101, line: 694, baseType: !4349, size: 64, offset: 1664)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4322, file: !101, line: 695, baseType: !272, size: 32, offset: 1728)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4322, file: !101, line: 696, baseType: !272, size: 32, offset: 1760)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4322, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4322, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4322, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4322, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4322, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4322, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4322, file: !101, line: 703, baseType: !221, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4322, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4322, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4322, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4322, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4322, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4322, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4322, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4322, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4322, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4322, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4322, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4322, file: !101, line: 715, baseType: !471, size: 64, offset: 2048)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4322, file: !101, line: 716, baseType: !471, size: 64, offset: 2112)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4322, file: !101, line: 717, baseType: !471, size: 64, offset: 2176)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4322, file: !101, line: 718, baseType: !471, size: 64, offset: 2240)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4322, file: !101, line: 720, baseType: !4401, size: 64, offset: 2304)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4403)
!4403 = !{!4404, !4405}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4402, file: !101, line: 633, baseType: !252, size: 32)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4402, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4322, file: !101, line: 721, baseType: !4407, size: 64, offset: 2368)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{null, !4169, !655}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4322, file: !101, line: 722, baseType: !4411, size: 64, offset: 2432)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !233, file: !94, line: 727, baseType: !4414, size: 64, offset: 4224)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4416)
!4416 = !{!4417, !4418, !4419, !4423, !4424, !4425}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4415, file: !101, line: 743, baseType: !4197, size: 1472)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4415, file: !101, line: 744, baseType: !4200, size: 64, offset: 1472)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4415, file: !101, line: 745, baseType: !4420, size: 64, offset: 1536)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{null, !4169, !221}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4415, file: !101, line: 746, baseType: !4200, size: 64, offset: 1600)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4415, file: !101, line: 747, baseType: !4191, size: 64, offset: 1664)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4415, file: !101, line: 748, baseType: !4191, size: 64, offset: 1728)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !233, file: !94, line: 736, baseType: !4427, size: 128, offset: 4288)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4428)
!4428 = !{!4429, !4433}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4427, file: !94, line: 531, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4432, line: 13, flags: DIFlagFwdDecl)
!4432 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4427, file: !94, line: 532, baseType: !4434, size: 64, offset: 64)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !233, file: !94, line: 738, baseType: !4437, size: 64, offset: 4416)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4439)
!4439 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !233, file: !94, line: 740, baseType: !4441, size: 64, offset: 4480)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !233, file: !94, line: 741, baseType: !471, size: 64, offset: 4544)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !233, file: !94, line: 746, baseType: !471, size: 64, offset: 4608)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !233, file: !94, line: 747, baseType: !4445, size: 64, offset: 4672)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4447)
!4447 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !233, file: !94, line: 749, baseType: !4449, size: 64, offset: 4736)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4451)
!4451 = !{!4452, !4453, !4454}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4450, file: !94, line: 433, baseType: !7, size: 32)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4450, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4450, file: !94, line: 435, baseType: !370, size: 64, offset: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !233, file: !94, line: 751, baseType: !178, size: 128, offset: 4800)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !233, file: !94, line: 762, baseType: !4457, size: 64, offset: 4928)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !233, file: !94, line: 770, baseType: !4460, offset: 4992)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4461, line: 5, elements: !946)
!4461 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !233, file: !94, line: 772, baseType: !4463, size: 64, offset: 4992)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4465, line: 18, flags: DIFlagFwdDecl)
!4465 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !233, file: !94, line: 773, baseType: !203, size: 64, offset: 5056)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !233, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !233, file: !94, line: 778, baseType: !554, size: 32, offset: 5152)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !233, file: !94, line: 779, baseType: !190, size: 32, offset: 5184)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !233, file: !94, line: 781, baseType: !252, size: 32, offset: 5216)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !233, file: !94, line: 782, baseType: !178, size: 128, offset: 5248)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !233, file: !94, line: 784, baseType: !4473, size: 64, offset: 5376)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4475)
!4475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4476, line: 52, size: 768, elements: !4477)
!4476 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4477 = !{!4478, !4479, !4480, !4481, !4482, !4486, !4490, !4491, !4492, !4493, !4497, !4501}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4475, file: !4476, line: 53, baseType: !240, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4475, file: !4476, line: 55, baseType: !372, size: 64, offset: 64)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4475, file: !4476, line: 56, baseType: !372, size: 64, offset: 128)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4475, file: !4476, line: 58, baseType: !4182, size: 64, offset: 192)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4475, file: !4476, line: 59, baseType: !4483, size: 64, offset: 256)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!320, !231, !4189}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4475, file: !4476, line: 61, baseType: !4487, size: 64, offset: 320)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{null, !4473}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4475, file: !4476, line: 62, baseType: !4191, size: 64, offset: 384)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4475, file: !4476, line: 64, baseType: !4200, size: 64, offset: 448)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4475, file: !4476, line: 66, baseType: !4021, size: 64, offset: 512)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4475, file: !4476, line: 67, baseType: !4494, size: 64, offset: 576)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!229, !231}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4475, file: !4476, line: 69, baseType: !4498, size: 64, offset: 640)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{null, !231, !4053, !4054}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4475, file: !4476, line: 71, baseType: !4195, size: 64, offset: 704)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !233, file: !94, line: 785, baseType: !372, size: 64, offset: 5440)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !233, file: !94, line: 787, baseType: !4191, size: 64, offset: 5504)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !233, file: !94, line: 788, baseType: !4505, size: 64, offset: 5568)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !233, file: !94, line: 789, baseType: !4508, size: 64, offset: 5632)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !233, file: !94, line: 791, baseType: !4511, size: 64, offset: 5696)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4513)
!4513 = !{!4514, !4515, !4516, !4517, !4518}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4512, file: !94, line: 598, baseType: !116, size: 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4512, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4512, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4512, file: !94, line: 601, baseType: !221, size: 8, offset: 96)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4512, file: !94, line: 602, baseType: !221, size: 8, offset: 104)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !233, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !233, file: !94, line: 795, baseType: !221, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !233, file: !94, line: 796, baseType: !221, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !233, file: !94, line: 797, baseType: !221, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !233, file: !94, line: 798, baseType: !221, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !233, file: !94, line: 799, baseType: !221, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !207, file: !200, line: 131, baseType: !218, size: 64, offset: 256)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !207, file: !200, line: 133, baseType: !4527, size: 64, offset: 320)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!141, !223}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !207, file: !200, line: 134, baseType: !4531, size: 64, offset: 384)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!221, !223, !240}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !207, file: !200, line: 136, baseType: !4535, size: 64, offset: 448)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!109, !223, !240, !7, !173, !367}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !207, file: !200, line: 141, baseType: !4539, size: 64, offset: 512)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!109, !223, !240, !994, !367}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !207, file: !200, line: 144, baseType: !4543, size: 64, offset: 576)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!240, !223}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !207, file: !200, line: 145, baseType: !4543, size: 64, offset: 640)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !207, file: !200, line: 146, baseType: !4548, size: 64, offset: 704)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!203, !223}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !207, file: !200, line: 148, baseType: !4552, size: 64, offset: 768)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!203, !223, !203}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !207, file: !200, line: 151, baseType: !4556, size: 64, offset: 832)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!203, !223, !240}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !207, file: !200, line: 153, baseType: !4560, size: 64, offset: 896)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!109, !223, !240, !240, !7, !7, !4563}
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !200, line: 94, size: 640, elements: !4565)
!4565 = !{!4566, !4567, !4568}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4564, file: !200, line: 95, baseType: !203, size: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4564, file: !200, line: 96, baseType: !7, size: 32, offset: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4564, file: !200, line: 97, baseType: !4569, size: 512, offset: 128)
!4569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 512, elements: !1589)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !207, file: !200, line: 158, baseType: !4552, size: 64, offset: 960)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !207, file: !200, line: 161, baseType: !4548, size: 64, offset: 1024)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !207, file: !200, line: 163, baseType: !210, size: 64, offset: 1088)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !207, file: !200, line: 164, baseType: !4574, size: 64, offset: 1152)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!109, !223, !4577}
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !200, line: 73, size: 128, elements: !4579)
!4579 = !{!4580, !4581, !4582}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4578, file: !200, line: 74, baseType: !7, size: 32)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4578, file: !200, line: 75, baseType: !7, size: 32, offset: 32)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4578, file: !200, line: 76, baseType: !223, size: 64, offset: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !207, file: !200, line: 166, baseType: !4584, size: 64, offset: 1216)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!173, !203, !109}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !207, file: !200, line: 167, baseType: !4588, size: 64, offset: 1280)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!109, !223, !7}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !207, file: !200, line: 168, baseType: !4592, size: 64, offset: 1344)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!109, !203}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !199, file: !200, line: 44, baseType: !4169, size: 64, offset: 128)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !199, file: !200, line: 45, baseType: !178, size: 128, offset: 192)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !199, file: !200, line: 46, baseType: !178, size: 128, offset: 320)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !200, line: 47, baseType: !280, size: 8, offset: 448)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !186, file: !187, line: 372, baseType: !178, size: 128, offset: 640)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !186, file: !187, line: 373, baseType: !178, size: 128, offset: 768)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !186, file: !187, line: 374, baseType: !4602, size: 32, offset: 896)
!4602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !187, line: 181, size: 32, elements: !4603)
!4603 = !{!4604, !4605, !4606, !4607, !4608, !4609}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !4602, file: !187, line: 182, baseType: !190, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4602, file: !187, line: 183, baseType: !190, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !4602, file: !187, line: 184, baseType: !190, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !4602, file: !187, line: 185, baseType: !190, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !4602, file: !187, line: 186, baseType: !190, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4602, file: !187, line: 187, baseType: !190, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !187, line: 375, baseType: !4611, size: 32, offset: 928)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !187, line: 192, size: 32, elements: !4612)
!4612 = !{!4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !4611, file: !187, line: 193, baseType: !190, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4611, file: !187, line: 194, baseType: !190, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !4611, file: !187, line: 195, baseType: !190, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !4611, file: !187, line: 196, baseType: !190, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4611, file: !187, line: 197, baseType: !190, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4611, file: !187, line: 198, baseType: !190, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !4611, file: !187, line: 199, baseType: !190, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !4611, file: !187, line: 200, baseType: !190, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !4611, file: !187, line: 201, baseType: !190, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !4611, file: !187, line: 202, baseType: !190, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !4611, file: !187, line: 203, baseType: !190, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !4611, file: !187, line: 204, baseType: !190, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !4611, file: !187, line: 205, baseType: !190, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !4611, file: !187, line: 206, baseType: !190, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4611, file: !187, line: 207, baseType: !190, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !186, file: !187, line: 376, baseType: !4629, size: 960, offset: 960)
!4629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !187, line: 238, size: 960, elements: !4630)
!4630 = !{!4631, !4633, !4634, !4642, !4644, !4645, !4646, !4651, !4654}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !4629, file: !187, line: 239, baseType: !4632, size: 64)
!4632 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !187, line: 220, baseType: !3060)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !4629, file: !187, line: 240, baseType: !109, size: 32, offset: 64)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4629, file: !187, line: 241, baseType: !4635, size: 32, offset: 96)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !187, line: 230, size: 32, elements: !4636)
!4636 = !{!4637, !4638, !4639, !4640, !4641}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !4635, file: !187, line: 231, baseType: !190, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4635, file: !187, line: 232, baseType: !190, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !4635, file: !187, line: 233, baseType: !190, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !4635, file: !187, line: 234, baseType: !190, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4635, file: !187, line: 235, baseType: !190, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4629, file: !187, line: 242, baseType: !4643, size: 64, offset: 128)
!4643 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !187, line: 221, baseType: !471)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !4629, file: !187, line: 243, baseType: !320, size: 64, offset: 192)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4629, file: !187, line: 244, baseType: !178, size: 128, offset: 256)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4629, file: !187, line: 245, baseType: !4647, size: 320, offset: 384)
!4647 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !187, line: 222, baseType: !4648)
!4648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 320, elements: !4649)
!4649 = !{!4650}
!4650 = !DISubrange(count: 40)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !4629, file: !187, line: 246, baseType: !4652, size: 160, offset: 704)
!4652 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !187, line: 223, baseType: !4653)
!4653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 160, elements: !3361)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !4629, file: !187, line: 247, baseType: !4655, size: 64, offset: 896)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !197, line: 908, size: 192, elements: !4657)
!4657 = !{!4658, !4660, !4665, !4671, !4678, !4684, !4690, !4698}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4656, file: !197, line: 909, baseType: !4659, size: 32)
!4659 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !197, line: 644, baseType: !190)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !4656, file: !197, line: 913, baseType: !4661, size: 128)
!4661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4656, file: !197, line: 910, size: 128, elements: !4662)
!4662 = !{!4663, !4664}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4661, file: !197, line: 911, baseType: !4659, size: 32)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4661, file: !197, line: 912, baseType: !471, size: 64, offset: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4656, file: !197, line: 919, baseType: !4666, size: 128)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4656, file: !197, line: 915, size: 128, elements: !4667)
!4667 = !{!4668, !4669, !4670}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4666, file: !197, line: 916, baseType: !4659, size: 32)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4666, file: !197, line: 917, baseType: !190, size: 32, offset: 32)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4666, file: !197, line: 918, baseType: !320, size: 64, offset: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4656, file: !197, line: 925, baseType: !4672, size: 128)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4656, file: !197, line: 921, size: 128, elements: !4673)
!4673 = !{!4674, !4675, !4676}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4672, file: !197, line: 922, baseType: !4659, size: 32)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4672, file: !197, line: 923, baseType: !190, size: 32, offset: 32)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4672, file: !197, line: 924, baseType: !4677, size: 64, offset: 64)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !4656, file: !197, line: 931, baseType: !4679, size: 128)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4656, file: !197, line: 927, size: 128, elements: !4680)
!4680 = !{!4681, !4682, !4683}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4679, file: !197, line: 928, baseType: !4659, size: 32)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4679, file: !197, line: 929, baseType: !190, size: 32, offset: 32)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !4679, file: !197, line: 930, baseType: !4655, size: 64, offset: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !4656, file: !197, line: 937, baseType: !4685, size: 128)
!4685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4656, file: !197, line: 933, size: 128, elements: !4686)
!4686 = !{!4687, !4688, !4689}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4685, file: !197, line: 934, baseType: !4659, size: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !4685, file: !197, line: 935, baseType: !4659, size: 32, offset: 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4685, file: !197, line: 936, baseType: !196, size: 64, offset: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !4656, file: !197, line: 944, baseType: !4691, size: 192)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4656, file: !197, line: 939, size: 192, elements: !4692)
!4692 = !{!4693, !4694, !4695, !4697}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4691, file: !197, line: 940, baseType: !4659, size: 32)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !4691, file: !197, line: 941, baseType: !190, size: 32, offset: 32)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !4691, file: !197, line: 942, baseType: !4696, size: 64, offset: 64)
!4696 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !197, line: 128, baseType: !471)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !4691, file: !197, line: 943, baseType: !190, size: 32, offset: 128)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !4656, file: !197, line: 950, baseType: !4699, size: 96)
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4656, file: !197, line: 946, size: 96, elements: !4700)
!4700 = !{!4701, !4702, !4703}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4699, file: !197, line: 947, baseType: !4659, size: 32)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !4699, file: !197, line: 948, baseType: !190, size: 32, offset: 32)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !4699, file: !197, line: 949, baseType: !190, size: 32, offset: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !186, file: !187, line: 377, baseType: !4705, size: 1408, offset: 1920)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !187, line: 280, size: 1408, elements: !4706)
!4706 = !{!4707, !4708, !4718, !4733}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4705, file: !187, line: 281, baseType: !109, size: 32)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4705, file: !187, line: 282, baseType: !4709, size: 32, offset: 32)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !187, line: 259, size: 32, elements: !4710)
!4710 = !{!4711, !4712, !4713, !4714, !4715, !4716, !4717}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !4709, file: !187, line: 260, baseType: !190, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !4709, file: !187, line: 261, baseType: !190, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !4709, file: !187, line: 262, baseType: !190, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !4709, file: !187, line: 263, baseType: !190, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !4709, file: !187, line: 264, baseType: !190, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !4709, file: !187, line: 265, baseType: !190, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4709, file: !187, line: 266, baseType: !190, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4705, file: !187, line: 283, baseType: !4719, size: 1280, offset: 64)
!4719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4720, size: 1280, elements: !4731)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !187, line: 269, size: 256, elements: !4721)
!4721 = !{!4722, !4728, !4729, !4730}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4720, file: !187, line: 274, baseType: !4723, size: 8)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4720, file: !187, line: 270, size: 8, elements: !4724)
!4724 = !{!4725, !4726, !4727}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4723, file: !187, line: 271, baseType: !280, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !4723, file: !187, line: 272, baseType: !280, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4723, file: !187, line: 273, baseType: !280, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4720, file: !187, line: 275, baseType: !109, size: 32, offset: 32)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4720, file: !187, line: 276, baseType: !109, size: 32, offset: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4720, file: !187, line: 277, baseType: !178, size: 128, offset: 128)
!4731 = !{!4732}
!4732 = !DISubrange(count: 5)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !4705, file: !187, line: 284, baseType: !280, size: 8, offset: 1344)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !186, file: !187, line: 378, baseType: !4735, size: 640, offset: 3328)
!4735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !187, line: 330, size: 640, elements: !4736)
!4736 = !{!4737, !4738, !4739, !4740, !4741, !4746, !4755, !4756, !4757}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !4735, file: !187, line: 331, baseType: !196, size: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !4735, file: !187, line: 332, baseType: !471, size: 64, offset: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !4735, file: !187, line: 333, baseType: !471, size: 64, offset: 128)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4735, file: !187, line: 334, baseType: !178, size: 128, offset: 192)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4735, file: !187, line: 335, baseType: !4742, size: 8, offset: 320)
!4742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !187, line: 320, size: 8, elements: !4743)
!4743 = !{!4744, !4745}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4742, file: !187, line: 321, baseType: !280, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !4742, file: !187, line: 322, baseType: !280, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4735, file: !187, line: 336, baseType: !4747, size: 128, offset: 384)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !187, line: 325, size: 128, elements: !4748)
!4748 = !{!4749, !4754}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4747, file: !187, line: 326, baseType: !4750, size: 64)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{null, !4753}
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4747, file: !187, line: 327, baseType: !4169, size: 64, offset: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !4735, file: !187, line: 337, baseType: !4340, size: 64, offset: 512)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !4735, file: !187, line: 338, baseType: !109, size: 32, offset: 576)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !4735, file: !187, line: 339, baseType: !109, size: 32, offset: 608)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !186, file: !187, line: 379, baseType: !4759, size: 192, offset: 3968)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !187, line: 312, size: 192, elements: !4760)
!4760 = !{!4761, !4762, !4766, !4767}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4759, file: !187, line: 313, baseType: !109, size: 32)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4759, file: !187, line: 314, baseType: !4763, size: 8, offset: 32)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !187, line: 298, size: 8, elements: !4764)
!4764 = !{!4765}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4763, file: !187, line: 299, baseType: !280, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !4759, file: !187, line: 315, baseType: !109, size: 32, offset: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4759, file: !187, line: 316, baseType: !4768, size: 64, offset: 128)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !187, line: 302, size: 64, elements: !4770)
!4770 = !{!4771, !4776, !4777, !4778}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4769, file: !187, line: 306, baseType: !4772, size: 8)
!4772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4769, file: !187, line: 303, size: 8, elements: !4773)
!4773 = !{!4774, !4775}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4772, file: !187, line: 304, baseType: !280, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4772, file: !187, line: 305, baseType: !280, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4769, file: !187, line: 307, baseType: !280, size: 8, offset: 8)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4769, file: !187, line: 308, baseType: !280, size: 8, offset: 16)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4769, file: !187, line: 309, baseType: !109, size: 32, offset: 32)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !186, file: !187, line: 380, baseType: !4780, size: 64, offset: 4160)
!4780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !187, line: 212, size: 64, elements: !4781)
!4781 = !{!4782}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4780, file: !187, line: 213, baseType: !4783, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4785, line: 131, flags: DIFlagFwdDecl)
!4785 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !186, file: !187, line: 381, baseType: !4787, size: 384, offset: 4224)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !187, line: 357, size: 384, elements: !4788)
!4788 = !{!4789, !4792, !4793, !4794}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4787, file: !187, line: 358, baseType: !4790, size: 64)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4656)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4787, file: !187, line: 359, baseType: !178, size: 128, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !4787, file: !187, line: 360, baseType: !4790, size: 64, offset: 192)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !4787, file: !187, line: 361, baseType: !178, size: 128, offset: 256)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !186, file: !187, line: 382, baseType: !4796, size: 64, offset: 4608)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !187, line: 124, size: 1216, elements: !4798)
!4798 = !{!4799, !4800, !4801, !4806, !4810, !4814, !4815, !4816}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4797, file: !187, line: 125, baseType: !4263, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4797, file: !187, line: 126, baseType: !178, size: 128, offset: 64)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4797, file: !187, line: 127, baseType: !4802, size: 64, offset: 192)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!221, !240, !4805}
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4797, file: !187, line: 128, baseType: !4807, size: 64, offset: 256)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!109, !185, !4263}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4797, file: !187, line: 129, baseType: !4811, size: 64, offset: 320)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{null, !185}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4797, file: !187, line: 130, baseType: !4191, size: 64, offset: 384)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4797, file: !187, line: 131, baseType: !4191, size: 64, offset: 448)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4797, file: !187, line: 132, baseType: !4817, size: 704, offset: 512)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !187, line: 110, size: 704, elements: !4818)
!4818 = !{!4819, !4820, !4824, !4825, !4826}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4817, file: !187, line: 111, baseType: !236, size: 512)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !4817, file: !187, line: 112, baseType: !4821, size: 64, offset: 512)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!109, !185}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !4817, file: !187, line: 113, baseType: !4811, size: 64, offset: 576)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4817, file: !187, line: 114, baseType: !221, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !4817, file: !187, line: 115, baseType: !221, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !186, file: !187, line: 383, baseType: !4828, size: 64, offset: 4672)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !187, line: 140, size: 256, elements: !4830)
!4830 = !{!4831, !4832, !4836, !4840}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4829, file: !187, line: 141, baseType: !185, size: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4829, file: !187, line: 142, baseType: !4833, size: 64, offset: 64)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!109, !185, !190}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4829, file: !187, line: 143, baseType: !4837, size: 64, offset: 128)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{null, !185, !190}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4829, file: !187, line: 144, baseType: !4811, size: 64, offset: 192)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !186, file: !187, line: 384, baseType: !4842, size: 64, offset: 4736)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4844)
!4844 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !187, line: 364, flags: DIFlagFwdDecl)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !186, file: !187, line: 385, baseType: !173, size: 64, offset: 4800)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !186, file: !187, line: 386, baseType: !233, size: 5824, offset: 4864)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !186, file: !187, line: 387, baseType: !7, size: 32, offset: 10688)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !186, file: !187, line: 388, baseType: !7, size: 32, offset: 10720)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !186, file: !187, line: 389, baseType: !178, size: 128, offset: 10752)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !186, file: !187, line: 390, baseType: !659, size: 256, offset: 10880)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !186, file: !187, line: 391, baseType: !4811, size: 64, offset: 11136)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !175, file: !3, line: 69, baseType: !4853, size: 608, offset: 192)
!4853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_link_irq", file: !3, line: 55, size: 608, elements: !4854)
!4854 = !{!4855, !4856, !4857, !4858, !4859, !4860, !4862, !4863}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4853, file: !3, line: 56, baseType: !190, size: 32)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !4853, file: !3, line: 57, baseType: !280, size: 8, offset: 32)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !4853, file: !3, line: 58, baseType: !280, size: 8, offset: 40)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !4853, file: !3, line: 59, baseType: !280, size: 8, offset: 48)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "possible_count", scope: !4853, file: !3, line: 60, baseType: !280, size: 8, offset: 56)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "possible", scope: !4853, file: !3, line: 61, baseType: !4861, size: 512, offset: 64)
!4861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 512, elements: !2738)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4853, file: !3, line: 62, baseType: !280, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4853, file: !3, line: 63, baseType: !280, size: 7, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !175, file: !3, line: 70, baseType: !109, size: 32, offset: 800)
!4865 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !197, line: 421, baseType: !190)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !182)
!4868 = !{!4869, !4872, !4877, !4882, !4887, !4892, !4897, !4900, !4911, !4913, !4915, !4917, !0, !4919, !4922, !4924, !4926, !4931, !4936, !4941, !4943, !4948, !4953, !4955, !4957, !4962, !4967, !4969, !4971, !4976, !4978, !4983, !4985, !4988, !4991, !4993, !5002, !5004, !5007, !5009, !5011, !5016, !5021}
!4869 = !DIGlobalVariableExpression(var: !4870, expr: !DIExpression())
!4870 = distinct !DIGlobalVariable(scope: null, file: !3, line: 613, type: !4871, isLocal: true, isDefinition: true)
!4871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 24, elements: !321)
!4872 = !DIGlobalVariableExpression(var: !4873, expr: !DIExpression())
!4873 = distinct !DIGlobalVariable(scope: null, file: !3, line: 613, type: !4874, isLocal: true, isDefinition: true)
!4874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 168, elements: !4875)
!4875 = !{!4876}
!4876 = !DISubrange(count: 21)
!4877 = !DIGlobalVariableExpression(var: !4878, expr: !DIExpression())
!4878 = distinct !DIGlobalVariable(scope: null, file: !3, line: 619, type: !4879, isLocal: true, isDefinition: true)
!4879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 176, elements: !4880)
!4880 = !{!4881}
!4881 = !DISubrange(count: 22)
!4882 = !DIGlobalVariableExpression(var: !4883, expr: !DIExpression())
!4883 = distinct !DIGlobalVariable(scope: null, file: !3, line: 625, type: !4884, isLocal: true, isDefinition: true)
!4884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 144, elements: !4885)
!4885 = !{!4886}
!4886 = !DISubrange(count: 18)
!4887 = !DIGlobalVariableExpression(var: !4888, expr: !DIExpression())
!4888 = distinct !DIGlobalVariable(scope: null, file: !3, line: 637, type: !4889, isLocal: true, isDefinition: true)
!4889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 184, elements: !4890)
!4890 = !{!4891}
!4891 = !DISubrange(count: 23)
!4892 = !DIGlobalVariableExpression(var: !4893, expr: !DIExpression())
!4893 = distinct !DIGlobalVariable(scope: null, file: !3, line: 676, type: !4894, isLocal: true, isDefinition: true)
!4894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 192, elements: !4895)
!4895 = !{!4896}
!4896 = !DISubrange(count: 24)
!4897 = !DIGlobalVariableExpression(var: !4898, expr: !DIExpression())
!4898 = distinct !DIGlobalVariable(scope: null, file: !3, line: 694, type: !4899, isLocal: true, isDefinition: true)
!4899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 40, elements: !4731)
!4900 = !DIGlobalVariableExpression(var: !4901, expr: !DIExpression())
!4901 = distinct !DIGlobalVariable(name: "__setup_acpi_irq_isa", scope: !2, file: !3, line: 859, type: !4902, isLocal: true, isDefinition: true, align: 64)
!4902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !4903, line: 324, size: 192, elements: !4904)
!4903 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4904 = !{!4905, !4906, !4910}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4902, file: !4903, line: 325, baseType: !240, size: 64)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !4902, file: !4903, line: 326, baseType: !4907, size: 64, offset: 64)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!109, !320}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !4902, file: !4903, line: 327, baseType: !109, size: 32, offset: 128)
!4911 = !DIGlobalVariableExpression(var: !4912, expr: !DIExpression())
!4912 = distinct !DIGlobalVariable(name: "__setup_acpi_irq_pci", scope: !2, file: !3, line: 871, type: !4902, isLocal: true, isDefinition: true, align: 64)
!4913 = !DIGlobalVariableExpression(var: !4914, expr: !DIExpression())
!4914 = distinct !DIGlobalVariable(name: "__setup_acpi_irq_nobalance_set", scope: !2, file: !3, line: 879, type: !4902, isLocal: true, isDefinition: true, align: 64)
!4915 = !DIGlobalVariableExpression(var: !4916, expr: !DIExpression())
!4916 = distinct !DIGlobalVariable(name: "__setup_acpi_irq_balance_set", scope: !2, file: !3, line: 887, type: !4902, isLocal: true, isDefinition: true, align: 64)
!4917 = !DIGlobalVariableExpression(var: !4918, expr: !DIExpression())
!4918 = distinct !DIGlobalVariable(name: "sci_penalty", scope: !2, file: !3, line: 75, type: !109, isLocal: true, isDefinition: true)
!4919 = !DIGlobalVariableExpression(var: !4920, expr: !DIExpression())
!4920 = distinct !DIGlobalVariable(name: "acpi_isa_irq_penalty", scope: !2, file: !3, line: 431, type: !4921, isLocal: true, isDefinition: true)
!4921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 512, elements: !2738)
!4922 = !DIGlobalVariableExpression(var: !4923, expr: !DIExpression())
!4923 = distinct !DIGlobalVariable(name: "acpi_link_lock", scope: !2, file: !3, line: 74, type: !659, isLocal: true, isDefinition: true)
!4924 = !DIGlobalVariableExpression(var: !4925, expr: !DIExpression())
!4925 = distinct !DIGlobalVariable(scope: null, file: !3, line: 553, type: !4871, isLocal: true, isDefinition: true)
!4926 = !DIGlobalVariableExpression(var: !4927, expr: !DIExpression())
!4927 = distinct !DIGlobalVariable(scope: null, file: !3, line: 553, type: !4928, isLocal: true, isDefinition: true)
!4928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 216, elements: !4929)
!4929 = !{!4930}
!4930 = !DISubrange(count: 27)
!4931 = !DIGlobalVariableExpression(var: !4932, expr: !DIExpression())
!4932 = distinct !DIGlobalVariable(scope: null, file: !3, line: 578, type: !4933, isLocal: true, isDefinition: true)
!4933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 368, elements: !4934)
!4934 = !{!4935}
!4935 = !DISubrange(count: 46)
!4936 = !DIGlobalVariableExpression(var: !4937, expr: !DIExpression())
!4937 = distinct !DIGlobalVariable(scope: null, file: !3, line: 585, type: !4938, isLocal: true, isDefinition: true)
!4938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 376, elements: !4939)
!4939 = !{!4940}
!4940 = !DISubrange(count: 47)
!4941 = !DIGlobalVariableExpression(var: !4942, expr: !DIExpression())
!4942 = distinct !DIGlobalVariable(scope: null, file: !3, line: 593, type: !4871, isLocal: true, isDefinition: true)
!4943 = !DIGlobalVariableExpression(var: !4944, expr: !DIExpression())
!4944 = distinct !DIGlobalVariable(scope: null, file: !3, line: 593, type: !4945, isLocal: true, isDefinition: true)
!4945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 152, elements: !4946)
!4946 = !{!4947}
!4947 = !DISubrange(count: 19)
!4948 = !DIGlobalVariableExpression(var: !4949, expr: !DIExpression())
!4949 = distinct !DIGlobalVariable(scope: null, file: !3, line: 333, type: !4950, isLocal: true, isDefinition: true)
!4950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 208, elements: !4951)
!4951 = !{!4952}
!4952 = !DISubrange(count: 26)
!4953 = !DIGlobalVariableExpression(var: !4954, expr: !DIExpression())
!4954 = distinct !DIGlobalVariable(scope: null, file: !3, line: 347, type: !4899, isLocal: true, isDefinition: true)
!4955 = !DIGlobalVariableExpression(var: !4956, expr: !DIExpression())
!4956 = distinct !DIGlobalVariable(scope: null, file: !3, line: 355, type: !4889, isLocal: true, isDefinition: true)
!4957 = !DIGlobalVariableExpression(var: !4958, expr: !DIExpression())
!4958 = distinct !DIGlobalVariable(scope: null, file: !3, line: 359, type: !4959, isLocal: true, isDefinition: true)
!4959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 280, elements: !4960)
!4960 = !{!4961}
!4961 = !DISubrange(count: 35)
!4962 = !DIGlobalVariableExpression(var: !4963, expr: !DIExpression())
!4963 = distinct !DIGlobalVariable(scope: null, file: !3, line: 376, type: !4964, isLocal: true, isDefinition: true)
!4964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 288, elements: !4965)
!4965 = !{!4966}
!4966 = !DISubrange(count: 36)
!4967 = !DIGlobalVariableExpression(var: !4968, expr: !DIExpression())
!4968 = distinct !DIGlobalVariable(scope: null, file: !163, line: 480, type: !4874, isLocal: true, isDefinition: true)
!4969 = !DIGlobalVariableExpression(var: !4970, expr: !DIExpression())
!4970 = distinct !DIGlobalVariable(scope: null, file: !3, line: 256, type: !4899, isLocal: true, isDefinition: true)
!4971 = !DIGlobalVariableExpression(var: !4972, expr: !DIExpression())
!4972 = distinct !DIGlobalVariable(scope: null, file: !3, line: 265, type: !4973, isLocal: true, isDefinition: true)
!4973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 136, elements: !4974)
!4974 = !{!4975}
!4975 = !DISubrange(count: 17)
!4976 = !DIGlobalVariableExpression(var: !4977, expr: !DIExpression())
!4977 = distinct !DIGlobalVariable(name: "sci_irq", scope: !2, file: !3, line: 75, type: !109, isLocal: true, isDefinition: true)
!4978 = !DIGlobalVariableExpression(var: !4979, expr: !DIExpression())
!4979 = distinct !DIGlobalVariable(name: "__setup_str_acpi_irq_isa", scope: !2, file: !3, line: 859, type: !4980, isLocal: true, isDefinition: true, align: 8)
!4980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 112, elements: !4981)
!4981 = !{!4982}
!4982 = !DISubrange(count: 14)
!4983 = !DIGlobalVariableExpression(var: !4984, expr: !DIExpression())
!4984 = distinct !DIGlobalVariable(name: "__setup_str_acpi_irq_pci", scope: !2, file: !3, line: 871, type: !4980, isLocal: true, isDefinition: true, align: 8)
!4985 = !DIGlobalVariableExpression(var: !4986, expr: !DIExpression())
!4986 = distinct !DIGlobalVariable(name: "__setup_str_acpi_irq_nobalance_set", scope: !2, file: !3, line: 879, type: !4987, isLocal: true, isDefinition: true, align: 8)
!4987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 152, elements: !4946)
!4988 = !DIGlobalVariableExpression(var: !4989, expr: !DIExpression())
!4989 = distinct !DIGlobalVariable(name: "__setup_str_acpi_irq_balance_set", scope: !2, file: !3, line: 887, type: !4990, isLocal: true, isDefinition: true, align: 8)
!4990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 136, elements: !4974)
!4991 = !DIGlobalVariableExpression(var: !4992, expr: !DIExpression())
!4992 = distinct !DIGlobalVariable(name: "acpi_irq_balance", scope: !2, file: !3, line: 526, type: !109, isLocal: true, isDefinition: true)
!4993 = !DIGlobalVariableExpression(var: !4994, expr: !DIExpression())
!4994 = distinct !DIGlobalVariable(name: "irqrouter_syscore_ops", scope: !2, file: !3, line: 889, type: !4995, isLocal: true, isDefinition: true)
!4995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscore_ops", file: !4996, line: 13, size: 320, elements: !4997)
!4996 = !DIFile(filename: "./include/linux/syscore_ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59d2685cd3ea081e18f1bbec40d890d")
!4997 = !{!4998, !4999, !5000, !5001}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4995, file: !4996, line: 14, baseType: !178, size: 128)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4995, file: !4996, line: 15, baseType: !750, size: 64, offset: 128)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4995, file: !4996, line: 16, baseType: !1021, size: 64, offset: 192)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4995, file: !4996, line: 17, baseType: !1021, size: 64, offset: 256)
!5002 = !DIGlobalVariableExpression(var: !5003, expr: !DIExpression())
!5003 = distinct !DIGlobalVariable(name: "pci_link_handler", scope: !2, file: !3, line: 45, type: !4797, isLocal: true, isDefinition: true)
!5004 = !DIGlobalVariableExpression(var: !5005, expr: !DIExpression())
!5005 = distinct !DIGlobalVariable(name: "link_device_ids", scope: !2, file: !3, line: 40, type: !5006, isLocal: true, isDefinition: true)
!5006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4264, size: 512, elements: !776)
!5007 = !DIGlobalVariableExpression(var: !5008, expr: !DIExpression())
!5008 = distinct !DIGlobalVariable(scope: null, file: !3, line: 717, type: !4945, isLocal: true, isDefinition: true)
!5009 = !DIGlobalVariableExpression(var: !5010, expr: !DIExpression())
!5010 = distinct !DIGlobalVariable(scope: null, file: !3, line: 718, type: !2737, isLocal: true, isDefinition: true)
!5011 = !DIGlobalVariableExpression(var: !5012, expr: !DIExpression())
!5012 = distinct !DIGlobalVariable(scope: null, file: !3, line: 729, type: !5013, isLocal: true, isDefinition: true)
!5013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 432, elements: !5014)
!5014 = !{!5015}
!5015 = !DISubrange(count: 54)
!5016 = !DIGlobalVariableExpression(var: !5017, expr: !DIExpression())
!5017 = distinct !DIGlobalVariable(scope: null, file: !3, line: 739, type: !5018, isLocal: true, isDefinition: true)
!5018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 328, elements: !5019)
!5019 = !{!5020}
!5020 = !DISubrange(count: 41)
!5021 = !DIGlobalVariableExpression(var: !5022, expr: !DIExpression())
!5022 = distinct !DIGlobalVariable(scope: null, file: !3, line: 160, type: !4899, isLocal: true, isDefinition: true)
!5023 = !{i32 7, !"Dwarf Version", i32 5}
!5024 = !{i32 2, !"Debug Info Version", i32 3}
!5025 = !{i32 1, !"wchar_size", i32 2}
!5026 = !{i32 8, !"cf-protection-branch", i32 1}
!5027 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5028 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5029 = !{i32 1, !"Code Model", i32 2}
!5030 = !{i32 1, !"override-stack-alignment", i32 8}
!5031 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5032 = distinct !DISubprogram(name: "acpi_irq_penalty_init", scope: !3, file: !3, line: 490, type: !751, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5033)
!5033 = !{!5034, !5035, !5036, !5039, !5044}
!5034 = !DILocalVariable(name: "link", scope: !5032, file: !3, line: 492, type: !174)
!5035 = !DILocalVariable(name: "i", scope: !5032, file: !3, line: 493, type: !109)
!5036 = !DILocalVariable(name: "__mptr", scope: !5037, file: !3, line: 498, type: !173)
!5037 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 498, column: 2)
!5038 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 498, column: 2)
!5039 = !DILocalVariable(name: "penalty", scope: !5040, file: !3, line: 505, type: !109)
!5040 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 504, column: 33)
!5041 = distinct !DILexicalBlock(scope: !5042, file: !3, line: 504, column: 7)
!5042 = distinct !DILexicalBlock(scope: !5043, file: !3, line: 498, column: 51)
!5043 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 498, column: 2)
!5044 = !DILocalVariable(name: "__mptr", scope: !5045, file: !3, line: 498, type: !173)
!5045 = distinct !DILexicalBlock(scope: !5043, file: !3, line: 498, column: 2)
!5046 = !DILocation(line: 492, column: 2, scope: !5032)
!5047 = !DILocation(line: 492, column: 24, scope: !5032)
!5048 = !DILocation(line: 493, column: 2, scope: !5032)
!5049 = !DILocation(line: 493, column: 6, scope: !5032)
!5050 = !DILocation(line: 498, column: 2, scope: !5037)
!5051 = !DILocation(line: 498, column: 2, scope: !5038)
!5052 = !DILocation(line: 498, column: 2, scope: !5043)
!5053 = !DILocation(line: 504, column: 7, scope: !5041)
!5054 = !DILocation(line: 504, column: 13, scope: !5041)
!5055 = !DILocation(line: 504, column: 17, scope: !5041)
!5056 = !DILocation(line: 504, column: 7, scope: !5042)
!5057 = !DILocation(line: 505, column: 4, scope: !5040)
!5058 = !DILocation(line: 505, column: 8, scope: !5040)
!5059 = !DILocation(line: 507, column: 8, scope: !5040)
!5060 = !DILocation(line: 507, column: 14, scope: !5040)
!5061 = !DILocation(line: 507, column: 18, scope: !5040)
!5062 = !DILocation(line: 506, column: 34, scope: !5040)
!5063 = !DILocation(line: 509, column: 11, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5040, file: !3, line: 509, column: 4)
!5065 = !DILocation(line: 509, column: 9, scope: !5064)
!5066 = !DILocation(line: 509, column: 16, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 509, column: 4)
!5068 = !DILocation(line: 509, column: 20, scope: !5067)
!5069 = !DILocation(line: 509, column: 26, scope: !5067)
!5070 = !DILocation(line: 509, column: 30, scope: !5067)
!5071 = !DILocation(line: 509, column: 18, scope: !5067)
!5072 = !DILocation(line: 509, column: 4, scope: !5064)
!5073 = !DILocation(line: 510, column: 9, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 510, column: 9)
!5075 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 509, column: 51)
!5076 = !DILocation(line: 510, column: 15, scope: !5074)
!5077 = !DILocation(line: 510, column: 19, scope: !5074)
!5078 = !DILocation(line: 510, column: 28, scope: !5074)
!5079 = !DILocation(line: 510, column: 31, scope: !5074)
!5080 = !DILocation(line: 510, column: 9, scope: !5075)
!5081 = !DILocation(line: 513, column: 10, scope: !5074)
!5082 = !DILocation(line: 511, column: 27, scope: !5074)
!5083 = !DILocation(line: 511, column: 33, scope: !5074)
!5084 = !DILocation(line: 512, column: 9, scope: !5074)
!5085 = !DILocation(line: 512, column: 18, scope: !5074)
!5086 = !DILocation(line: 511, column: 6, scope: !5074)
!5087 = !DILocation(line: 512, column: 22, scope: !5074)
!5088 = !DILocation(line: 514, column: 4, scope: !5075)
!5089 = !DILocation(line: 509, column: 47, scope: !5067)
!5090 = !DILocation(line: 509, column: 4, scope: !5067)
!5091 = distinct !{!5091, !5072, !5092, !5093, !5094}
!5092 = !DILocation(line: 514, column: 4, scope: !5064)
!5093 = !{!"llvm.loop.mustprogress"}
!5094 = !{!"llvm.loop.unroll.disable"}
!5095 = !DILocation(line: 516, column: 3, scope: !5041)
!5096 = !DILocation(line: 516, column: 3, scope: !5040)
!5097 = !DILocation(line: 516, column: 14, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 516, column: 14)
!5099 = !DILocation(line: 516, column: 20, scope: !5098)
!5100 = !DILocation(line: 516, column: 24, scope: !5098)
!5101 = !DILocation(line: 516, column: 31, scope: !5098)
!5102 = !DILocation(line: 517, column: 6, scope: !5098)
!5103 = !DILocation(line: 517, column: 12, scope: !5098)
!5104 = !DILocation(line: 517, column: 16, scope: !5098)
!5105 = !DILocation(line: 517, column: 23, scope: !5098)
!5106 = !DILocation(line: 516, column: 14, scope: !5041)
!5107 = !DILocation(line: 518, column: 25, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 517, column: 45)
!5109 = !DILocation(line: 518, column: 31, scope: !5108)
!5110 = !DILocation(line: 518, column: 35, scope: !5108)
!5111 = !DILocation(line: 518, column: 4, scope: !5108)
!5112 = !DILocation(line: 518, column: 43, scope: !5108)
!5113 = !DILocation(line: 520, column: 3, scope: !5108)
!5114 = !DILocation(line: 521, column: 2, scope: !5042)
!5115 = !DILocation(line: 498, column: 2, scope: !5045)
!5116 = distinct !{!5116, !5051, !5117, !5093, !5094}
!5117 = !DILocation(line: 521, column: 2, scope: !5038)
!5118 = !DILocation(line: 524, column: 1, scope: !5032)
!5119 = !DILocation(line: 523, column: 2, scope: !5032)
!5120 = distinct !DISubprogram(name: "acpi_pci_link_allocate_irq", scope: !3, file: !3, line: 606, type: !5121, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5124)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!109, !196, !109, !786, !786, !5123}
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!5124 = !{!5125, !5126, !5127, !5128, !5129, !5130, !5131}
!5125 = !DILocalVariable(name: "handle", arg: 1, scope: !5120, file: !3, line: 606, type: !196)
!5126 = !DILocalVariable(name: "index", arg: 2, scope: !5120, file: !3, line: 606, type: !109)
!5127 = !DILocalVariable(name: "triggering", arg: 3, scope: !5120, file: !3, line: 606, type: !786)
!5128 = !DILocalVariable(name: "polarity", arg: 4, scope: !5120, file: !3, line: 607, type: !786)
!5129 = !DILocalVariable(name: "name", arg: 5, scope: !5120, file: !3, line: 607, type: !5123)
!5130 = !DILocalVariable(name: "device", scope: !5120, file: !3, line: 609, type: !185)
!5131 = !DILocalVariable(name: "link", scope: !5120, file: !3, line: 610, type: !174)
!5132 = !DILocation(line: 606, column: 44, scope: !5120)
!5133 = !DILocation(line: 606, column: 56, scope: !5120)
!5134 = !DILocation(line: 606, column: 68, scope: !5120)
!5135 = !DILocation(line: 607, column: 16, scope: !5120)
!5136 = !DILocation(line: 607, column: 33, scope: !5120)
!5137 = !DILocation(line: 609, column: 2, scope: !5120)
!5138 = !DILocation(line: 609, column: 22, scope: !5120)
!5139 = !DILocation(line: 609, column: 51, scope: !5120)
!5140 = !DILocation(line: 609, column: 31, scope: !5120)
!5141 = !DILocation(line: 610, column: 2, scope: !5120)
!5142 = !DILocation(line: 610, column: 24, scope: !5120)
!5143 = !DILocation(line: 612, column: 7, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 612, column: 6)
!5145 = !DILocation(line: 612, column: 6, scope: !5120)
!5146 = !DILocation(line: 613, column: 3, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 612, column: 15)
!5148 = !DILocation(line: 614, column: 3, scope: !5147)
!5149 = !DILocation(line: 617, column: 26, scope: !5120)
!5150 = !DILocation(line: 617, column: 9, scope: !5120)
!5151 = !DILocation(line: 617, column: 7, scope: !5120)
!5152 = !DILocation(line: 618, column: 7, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 618, column: 6)
!5154 = !DILocation(line: 618, column: 6, scope: !5120)
!5155 = !DILocation(line: 619, column: 3, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 618, column: 13)
!5157 = !DILocation(line: 620, column: 3, scope: !5156)
!5158 = !DILocation(line: 624, column: 6, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 624, column: 6)
!5160 = !DILocation(line: 624, column: 6, scope: !5120)
!5161 = !DILocation(line: 625, column: 3, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 624, column: 13)
!5163 = !DILocation(line: 626, column: 3, scope: !5162)
!5164 = !DILocation(line: 629, column: 2, scope: !5120)
!5165 = !DILocation(line: 630, column: 29, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 630, column: 6)
!5167 = !DILocation(line: 630, column: 6, scope: !5166)
!5168 = !DILocation(line: 630, column: 6, scope: !5120)
!5169 = !DILocation(line: 631, column: 3, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 630, column: 36)
!5171 = !DILocation(line: 632, column: 3, scope: !5170)
!5172 = !DILocation(line: 635, column: 7, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 635, column: 6)
!5174 = !DILocation(line: 635, column: 13, scope: !5173)
!5175 = !DILocation(line: 635, column: 17, scope: !5173)
!5176 = !DILocation(line: 635, column: 6, scope: !5120)
!5177 = !DILocation(line: 636, column: 3, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5173, file: !3, line: 635, column: 25)
!5179 = !DILocation(line: 637, column: 3, scope: !5178)
!5180 = !DILocation(line: 638, column: 3, scope: !5178)
!5181 = !DILocation(line: 640, column: 2, scope: !5120)
!5182 = !DILocation(line: 640, column: 8, scope: !5120)
!5183 = !DILocation(line: 640, column: 14, scope: !5120)
!5184 = !DILocation(line: 641, column: 2, scope: !5120)
!5185 = !DILocation(line: 643, column: 6, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 643, column: 6)
!5187 = !DILocation(line: 643, column: 6, scope: !5120)
!5188 = !DILocation(line: 644, column: 17, scope: !5186)
!5189 = !DILocation(line: 644, column: 23, scope: !5186)
!5190 = !DILocation(line: 644, column: 27, scope: !5186)
!5191 = !DILocation(line: 644, column: 4, scope: !5186)
!5192 = !DILocation(line: 644, column: 15, scope: !5186)
!5193 = !DILocation(line: 644, column: 3, scope: !5186)
!5194 = !DILocation(line: 645, column: 6, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 645, column: 6)
!5196 = !DILocation(line: 645, column: 6, scope: !5120)
!5197 = !DILocation(line: 646, column: 15, scope: !5195)
!5198 = !DILocation(line: 646, column: 21, scope: !5195)
!5199 = !DILocation(line: 646, column: 25, scope: !5195)
!5200 = !DILocation(line: 646, column: 4, scope: !5195)
!5201 = !DILocation(line: 646, column: 13, scope: !5195)
!5202 = !DILocation(line: 646, column: 3, scope: !5195)
!5203 = !DILocation(line: 647, column: 6, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 647, column: 6)
!5205 = !DILocation(line: 647, column: 6, scope: !5120)
!5206 = !DILocation(line: 648, column: 11, scope: !5204)
!5207 = !DILocation(line: 648, column: 4, scope: !5204)
!5208 = !DILocation(line: 648, column: 9, scope: !5204)
!5209 = !DILocation(line: 648, column: 3, scope: !5204)
!5210 = !DILocation(line: 649, column: 2, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 649, column: 2)
!5212 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 649, column: 2)
!5213 = !DILocation(line: 649, column: 2, scope: !5212)
!5214 = !DILocation(line: 650, column: 9, scope: !5120)
!5215 = !DILocation(line: 650, column: 15, scope: !5120)
!5216 = !DILocation(line: 650, column: 19, scope: !5120)
!5217 = !DILocation(line: 650, column: 2, scope: !5120)
!5218 = !DILocation(line: 651, column: 1, scope: !5120)
!5219 = !DISubprogram(name: "acpi_fetch_acpi_dev", scope: !187, file: !187, line: 813, type: !5220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{!185, !196}
!5222 = !DISubprogram(name: "acpi_handle_printk", scope: !148, file: !148, line: 1180, type: !5223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{null, !240, !196, !240, null}
!5225 = distinct !DISubprogram(name: "acpi_driver_data", scope: !187, file: !187, line: 456, type: !5226, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5228)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!173, !185}
!5228 = !{!5229}
!5229 = !DILocalVariable(name: "d", arg: 1, scope: !5225, file: !187, line: 456, type: !185)
!5230 = !DILocation(line: 456, column: 58, scope: !5225)
!5231 = !DILocation(line: 458, column: 9, scope: !5225)
!5232 = !DILocation(line: 458, column: 12, scope: !5225)
!5233 = !DILocation(line: 458, column: 2, scope: !5225)
!5234 = !DISubprogram(name: "mutex_lock", scope: !660, file: !660, line: 227, type: !5235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5235 = !DISubroutineType(types: !5236)
!5236 = !{null, !5237}
!5237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!5238 = distinct !DISubprogram(name: "acpi_pci_link_allocate", scope: !3, file: !3, line: 528, type: !5239, scopeLine: 529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5241)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!109, !174}
!5241 = !{!5242, !5243, !5244, !5245}
!5242 = !DILocalVariable(name: "link", arg: 1, scope: !5238, file: !3, line: 528, type: !174)
!5243 = !DILocalVariable(name: "handle", scope: !5238, file: !3, line: 530, type: !196)
!5244 = !DILocalVariable(name: "irq", scope: !5238, file: !3, line: 531, type: !109)
!5245 = !DILocalVariable(name: "i", scope: !5238, file: !3, line: 532, type: !109)
!5246 = !DILocation(line: 528, column: 57, scope: !5238)
!5247 = !DILocation(line: 530, column: 2, scope: !5238)
!5248 = !DILocation(line: 530, column: 14, scope: !5238)
!5249 = !DILocation(line: 530, column: 23, scope: !5238)
!5250 = !DILocation(line: 530, column: 29, scope: !5238)
!5251 = !DILocation(line: 530, column: 37, scope: !5238)
!5252 = !DILocation(line: 531, column: 2, scope: !5238)
!5253 = !DILocation(line: 531, column: 6, scope: !5238)
!5254 = !DILocation(line: 532, column: 2, scope: !5238)
!5255 = !DILocation(line: 532, column: 6, scope: !5238)
!5256 = !DILocation(line: 534, column: 6, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 534, column: 6)
!5258 = !DILocation(line: 534, column: 12, scope: !5257)
!5259 = !DILocation(line: 534, column: 16, scope: !5257)
!5260 = !DILocation(line: 534, column: 6, scope: !5238)
!5261 = !DILocation(line: 535, column: 7, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 535, column: 7)
!5263 = distinct !DILexicalBlock(scope: !5257, file: !3, line: 534, column: 29)
!5264 = !DILocation(line: 535, column: 13, scope: !5262)
!5265 = !DILocation(line: 535, column: 20, scope: !5262)
!5266 = !DILocation(line: 535, column: 7, scope: !5263)
!5267 = !DILocation(line: 537, column: 22, scope: !5262)
!5268 = !DILocation(line: 537, column: 28, scope: !5262)
!5269 = !DILocation(line: 537, column: 34, scope: !5262)
!5270 = !DILocation(line: 537, column: 38, scope: !5262)
!5271 = !DILocation(line: 537, column: 4, scope: !5262)
!5272 = !DILocation(line: 538, column: 3, scope: !5263)
!5273 = !DILocation(line: 544, column: 9, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 544, column: 2)
!5275 = !DILocation(line: 544, column: 7, scope: !5274)
!5276 = !DILocation(line: 544, column: 14, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5274, file: !3, line: 544, column: 2)
!5278 = !DILocation(line: 544, column: 18, scope: !5277)
!5279 = !DILocation(line: 544, column: 24, scope: !5277)
!5280 = !DILocation(line: 544, column: 28, scope: !5277)
!5281 = !DILocation(line: 544, column: 16, scope: !5277)
!5282 = !DILocation(line: 544, column: 2, scope: !5274)
!5283 = !DILocation(line: 545, column: 7, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 545, column: 7)
!5285 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 544, column: 49)
!5286 = !DILocation(line: 545, column: 13, scope: !5284)
!5287 = !DILocation(line: 545, column: 17, scope: !5284)
!5288 = !DILocation(line: 545, column: 27, scope: !5284)
!5289 = !DILocation(line: 545, column: 33, scope: !5284)
!5290 = !DILocation(line: 545, column: 37, scope: !5284)
!5291 = !DILocation(line: 545, column: 46, scope: !5284)
!5292 = !DILocation(line: 545, column: 24, scope: !5284)
!5293 = !DILocation(line: 545, column: 7, scope: !5285)
!5294 = !DILocation(line: 546, column: 4, scope: !5284)
!5295 = !DILocation(line: 547, column: 2, scope: !5285)
!5296 = !DILocation(line: 544, column: 44, scope: !5277)
!5297 = !DILocation(line: 544, column: 2, scope: !5277)
!5298 = distinct !{!5298, !5282, !5299, !5093, !5094}
!5299 = !DILocation(line: 547, column: 2, scope: !5274)
!5300 = !DILocation(line: 551, column: 6, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 551, column: 6)
!5302 = !DILocation(line: 551, column: 11, scope: !5301)
!5303 = !DILocation(line: 551, column: 17, scope: !5301)
!5304 = !DILocation(line: 551, column: 21, scope: !5301)
!5305 = !DILocation(line: 551, column: 8, scope: !5301)
!5306 = !DILocation(line: 551, column: 6, scope: !5238)
!5307 = !DILocation(line: 552, column: 7, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 552, column: 7)
!5309 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 551, column: 37)
!5310 = !DILocation(line: 552, column: 7, scope: !5309)
!5311 = !DILocation(line: 553, column: 4, scope: !5308)
!5312 = !DILocation(line: 555, column: 3, scope: !5309)
!5313 = !DILocation(line: 555, column: 9, scope: !5309)
!5314 = !DILocation(line: 555, column: 13, scope: !5309)
!5315 = !DILocation(line: 555, column: 20, scope: !5309)
!5316 = !DILocation(line: 556, column: 2, scope: !5309)
!5317 = !DILocation(line: 561, column: 6, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 561, column: 6)
!5319 = !DILocation(line: 561, column: 12, scope: !5318)
!5320 = !DILocation(line: 561, column: 16, scope: !5318)
!5321 = !DILocation(line: 561, column: 6, scope: !5238)
!5322 = !DILocation(line: 562, column: 9, scope: !5318)
!5323 = !DILocation(line: 562, column: 15, scope: !5318)
!5324 = !DILocation(line: 562, column: 19, scope: !5318)
!5325 = !DILocation(line: 562, column: 7, scope: !5318)
!5326 = !DILocation(line: 562, column: 3, scope: !5318)
!5327 = !DILocation(line: 564, column: 9, scope: !5318)
!5328 = !DILocation(line: 564, column: 15, scope: !5318)
!5329 = !DILocation(line: 564, column: 19, scope: !5318)
!5330 = !DILocation(line: 564, column: 28, scope: !5318)
!5331 = !DILocation(line: 564, column: 34, scope: !5318)
!5332 = !DILocation(line: 564, column: 38, scope: !5318)
!5333 = !DILocation(line: 564, column: 53, scope: !5318)
!5334 = !DILocation(line: 564, column: 7, scope: !5318)
!5335 = !DILocation(line: 566, column: 6, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 566, column: 6)
!5337 = !DILocation(line: 566, column: 23, scope: !5336)
!5338 = !DILocation(line: 566, column: 27, scope: !5336)
!5339 = !DILocation(line: 566, column: 33, scope: !5336)
!5340 = !DILocation(line: 566, column: 37, scope: !5336)
!5341 = !DILocation(line: 566, column: 6, scope: !5238)
!5342 = !DILocation(line: 571, column: 13, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 571, column: 3)
!5344 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 566, column: 45)
!5345 = !DILocation(line: 571, column: 19, scope: !5343)
!5346 = !DILocation(line: 571, column: 23, scope: !5343)
!5347 = !DILocation(line: 571, column: 38, scope: !5343)
!5348 = !DILocation(line: 571, column: 10, scope: !5343)
!5349 = !DILocation(line: 571, column: 8, scope: !5343)
!5350 = !DILocation(line: 571, column: 44, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 571, column: 3)
!5352 = !DILocation(line: 571, column: 46, scope: !5351)
!5353 = !DILocation(line: 571, column: 3, scope: !5343)
!5354 = !DILocation(line: 572, column: 29, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5356, file: !3, line: 572, column: 8)
!5356 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 571, column: 57)
!5357 = !DILocation(line: 572, column: 8, scope: !5355)
!5358 = !DILocation(line: 573, column: 29, scope: !5355)
!5359 = !DILocation(line: 573, column: 35, scope: !5355)
!5360 = !DILocation(line: 573, column: 39, scope: !5355)
!5361 = !DILocation(line: 573, column: 48, scope: !5355)
!5362 = !DILocation(line: 573, column: 8, scope: !5355)
!5363 = !DILocation(line: 572, column: 34, scope: !5355)
!5364 = !DILocation(line: 572, column: 8, scope: !5356)
!5365 = !DILocation(line: 574, column: 11, scope: !5355)
!5366 = !DILocation(line: 574, column: 17, scope: !5355)
!5367 = !DILocation(line: 574, column: 21, scope: !5355)
!5368 = !DILocation(line: 574, column: 30, scope: !5355)
!5369 = !DILocation(line: 574, column: 9, scope: !5355)
!5370 = !DILocation(line: 574, column: 5, scope: !5355)
!5371 = !DILocation(line: 575, column: 3, scope: !5356)
!5372 = !DILocation(line: 571, column: 53, scope: !5351)
!5373 = !DILocation(line: 571, column: 3, scope: !5351)
!5374 = distinct !{!5374, !5353, !5375, !5093, !5094}
!5375 = !DILocation(line: 575, column: 3, scope: !5343)
!5376 = !DILocation(line: 576, column: 2, scope: !5344)
!5377 = !DILocation(line: 577, column: 27, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 577, column: 6)
!5379 = !DILocation(line: 577, column: 6, scope: !5378)
!5380 = !DILocation(line: 577, column: 32, scope: !5378)
!5381 = !DILocation(line: 577, column: 6, scope: !5238)
!5382 = !DILocation(line: 578, column: 3, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 577, column: 60)
!5384 = !DILocation(line: 580, column: 3, scope: !5383)
!5385 = !DILocation(line: 584, column: 24, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 584, column: 6)
!5387 = !DILocation(line: 584, column: 30, scope: !5386)
!5388 = !DILocation(line: 584, column: 6, scope: !5386)
!5389 = !DILocation(line: 584, column: 6, scope: !5238)
!5390 = !DILocation(line: 585, column: 3, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 584, column: 36)
!5392 = !DILocation(line: 587, column: 3, scope: !5391)
!5393 = !DILocation(line: 589, column: 7, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 589, column: 7)
!5395 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 588, column: 9)
!5396 = !DILocation(line: 589, column: 13, scope: !5394)
!5397 = !DILocation(line: 589, column: 17, scope: !5394)
!5398 = !DILocation(line: 589, column: 24, scope: !5394)
!5399 = !DILocation(line: 589, column: 7, scope: !5395)
!5400 = !DILocation(line: 590, column: 25, scope: !5394)
!5401 = !DILocation(line: 590, column: 31, scope: !5394)
!5402 = !DILocation(line: 590, column: 35, scope: !5394)
!5403 = !DILocation(line: 590, column: 4, scope: !5394)
!5404 = !DILocation(line: 590, column: 43, scope: !5394)
!5405 = !DILocation(line: 593, column: 3, scope: !5395)
!5406 = !DILocation(line: 597, column: 2, scope: !5238)
!5407 = !DILocation(line: 597, column: 8, scope: !5238)
!5408 = !DILocation(line: 597, column: 12, scope: !5238)
!5409 = !DILocation(line: 597, column: 24, scope: !5238)
!5410 = !DILocation(line: 598, column: 2, scope: !5238)
!5411 = !DILocation(line: 599, column: 1, scope: !5238)
!5412 = !DISubprogram(name: "mutex_unlock", scope: !660, file: !660, line: 246, type: !5235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5413 = distinct !DISubprogram(name: "acpi_pci_link_free_irq", scope: !3, file: !3, line: 657, type: !5414, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5416)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!109, !196}
!5416 = !{!5417, !5418, !5419}
!5417 = !DILocalVariable(name: "handle", arg: 1, scope: !5413, file: !3, line: 657, type: !196)
!5418 = !DILocalVariable(name: "device", scope: !5413, file: !3, line: 659, type: !185)
!5419 = !DILocalVariable(name: "link", scope: !5413, file: !3, line: 660, type: !174)
!5420 = !DILocation(line: 657, column: 40, scope: !5413)
!5421 = !DILocation(line: 659, column: 2, scope: !5413)
!5422 = !DILocation(line: 659, column: 22, scope: !5413)
!5423 = !DILocation(line: 659, column: 51, scope: !5413)
!5424 = !DILocation(line: 659, column: 31, scope: !5413)
!5425 = !DILocation(line: 660, column: 2, scope: !5413)
!5426 = !DILocation(line: 660, column: 24, scope: !5413)
!5427 = !DILocation(line: 662, column: 7, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 662, column: 6)
!5429 = !DILocation(line: 662, column: 6, scope: !5413)
!5430 = !DILocation(line: 663, column: 3, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5428, file: !3, line: 662, column: 15)
!5432 = !DILocation(line: 664, column: 3, scope: !5431)
!5433 = !DILocation(line: 667, column: 26, scope: !5413)
!5434 = !DILocation(line: 667, column: 9, scope: !5413)
!5435 = !DILocation(line: 667, column: 7, scope: !5413)
!5436 = !DILocation(line: 668, column: 7, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 668, column: 6)
!5438 = !DILocation(line: 668, column: 6, scope: !5413)
!5439 = !DILocation(line: 669, column: 3, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 668, column: 13)
!5441 = !DILocation(line: 670, column: 3, scope: !5440)
!5442 = !DILocation(line: 673, column: 2, scope: !5413)
!5443 = !DILocation(line: 674, column: 7, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 674, column: 6)
!5445 = !DILocation(line: 674, column: 13, scope: !5444)
!5446 = !DILocation(line: 674, column: 17, scope: !5444)
!5447 = !DILocation(line: 674, column: 6, scope: !5413)
!5448 = !DILocation(line: 675, column: 3, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5444, file: !3, line: 674, column: 30)
!5450 = !DILocation(line: 676, column: 3, scope: !5449)
!5451 = !DILocation(line: 677, column: 3, scope: !5449)
!5452 = !DILocation(line: 691, column: 2, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5454, file: !3, line: 691, column: 2)
!5454 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 691, column: 2)
!5455 = !DILocation(line: 691, column: 2, scope: !5454)
!5456 = !DILocation(line: 693, column: 6, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 693, column: 6)
!5458 = !DILocation(line: 693, column: 12, scope: !5457)
!5459 = !DILocation(line: 693, column: 19, scope: !5457)
!5460 = !DILocation(line: 693, column: 6, scope: !5413)
!5461 = !DILocation(line: 694, column: 24, scope: !5457)
!5462 = !DILocation(line: 694, column: 30, scope: !5457)
!5463 = !DILocation(line: 694, column: 38, scope: !5457)
!5464 = !DILocation(line: 694, column: 3, scope: !5457)
!5465 = !DILocation(line: 696, column: 2, scope: !5413)
!5466 = !DILocation(line: 697, column: 9, scope: !5413)
!5467 = !DILocation(line: 697, column: 15, scope: !5413)
!5468 = !DILocation(line: 697, column: 19, scope: !5413)
!5469 = !DILocation(line: 697, column: 2, scope: !5413)
!5470 = !DILocation(line: 698, column: 1, scope: !5413)
!5471 = !DISubprogram(name: "acpi_evaluate_object", scope: !5472, file: !5472, line: 549, type: !5473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5472 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!5473 = !DISubroutineType(types: !5474)
!5474 = !{!4865, !196, !5475, !5476, !5481}
!5475 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !197, line: 423, baseType: !320)
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !197, line: 956, size: 128, elements: !5478)
!5478 = !{!5479, !5480}
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5477, file: !197, line: 957, baseType: !190, size: 32)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5477, file: !197, line: 958, baseType: !4655, size: 64, offset: 64)
!5481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5482, size: 64)
!5482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !197, line: 978, size: 128, elements: !5483)
!5483 = !{!5484, !5486}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5482, file: !197, line: 979, baseType: !5485, size: 64)
!5485 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !197, line: 127, baseType: !471)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5482, file: !197, line: 980, baseType: !173, size: 64, offset: 64)
!5487 = distinct !DISubprogram(name: "acpi_penalize_isa_irq", scope: !3, file: !3, line: 825, type: !5488, scopeLine: 826, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5490)
!5488 = !DISubroutineType(types: !5489)
!5489 = !{null, !109, !109}
!5490 = !{!5491, !5492}
!5491 = !DILocalVariable(name: "irq", arg: 1, scope: !5487, file: !3, line: 825, type: !109)
!5492 = !DILocalVariable(name: "active", arg: 2, scope: !5487, file: !3, line: 825, type: !109)
!5493 = !DILocation(line: 825, column: 32, scope: !5487)
!5494 = !DILocation(line: 825, column: 41, scope: !5487)
!5495 = !DILocation(line: 827, column: 7, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 827, column: 6)
!5497 = !DILocation(line: 827, column: 11, scope: !5496)
!5498 = !DILocation(line: 827, column: 17, scope: !5496)
!5499 = !DILocation(line: 827, column: 21, scope: !5496)
!5500 = !DILocation(line: 827, column: 25, scope: !5496)
!5501 = !DILocation(line: 827, column: 6, scope: !5487)
!5502 = !DILocation(line: 829, column: 6, scope: !5496)
!5503 = !DILocation(line: 828, column: 24, scope: !5496)
!5504 = !DILocation(line: 828, column: 3, scope: !5496)
!5505 = !DILocation(line: 828, column: 29, scope: !5496)
!5506 = !DILocation(line: 830, column: 1, scope: !5487)
!5507 = distinct !DISubprogram(name: "acpi_isa_irq_available", scope: !3, file: !3, line: 832, type: !5508, scopeLine: 833, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5510)
!5508 = !DISubroutineType(types: !5509)
!5509 = !{!221, !109}
!5510 = !{!5511}
!5511 = !DILocalVariable(name: "irq", arg: 1, scope: !5507, file: !3, line: 832, type: !109)
!5512 = !DILocation(line: 832, column: 33, scope: !5507)
!5513 = !DILocation(line: 834, column: 9, scope: !5507)
!5514 = !DILocation(line: 834, column: 13, scope: !5507)
!5515 = !DILocation(line: 834, column: 18, scope: !5507)
!5516 = !DILocation(line: 834, column: 22, scope: !5507)
!5517 = !DILocation(line: 834, column: 26, scope: !5507)
!5518 = !DILocation(line: 834, column: 62, scope: !5507)
!5519 = !DILocation(line: 835, column: 28, scope: !5507)
!5520 = !DILocation(line: 835, column: 7, scope: !5507)
!5521 = !DILocation(line: 835, column: 33, scope: !5507)
!5522 = !DILocation(line: 0, scope: !5507)
!5523 = !DILocation(line: 834, column: 2, scope: !5507)
!5524 = distinct !DISubprogram(name: "acpi_irq_get_penalty", scope: !3, file: !3, line: 477, type: !2416, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5525)
!5525 = !{!5526, !5527}
!5526 = !DILocalVariable(name: "irq", arg: 1, scope: !5524, file: !3, line: 477, type: !109)
!5527 = !DILocalVariable(name: "penalty", scope: !5524, file: !3, line: 479, type: !109)
!5528 = !DILocation(line: 477, column: 37, scope: !5524)
!5529 = !DILocation(line: 479, column: 2, scope: !5524)
!5530 = !DILocation(line: 479, column: 6, scope: !5524)
!5531 = !DILocation(line: 481, column: 6, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 481, column: 6)
!5533 = !DILocation(line: 481, column: 13, scope: !5532)
!5534 = !DILocation(line: 481, column: 10, scope: !5532)
!5535 = !DILocation(line: 481, column: 6, scope: !5524)
!5536 = !DILocation(line: 482, column: 14, scope: !5532)
!5537 = !DILocation(line: 482, column: 11, scope: !5532)
!5538 = !DILocation(line: 482, column: 3, scope: !5532)
!5539 = !DILocation(line: 484, column: 6, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 484, column: 6)
!5541 = !DILocation(line: 484, column: 10, scope: !5540)
!5542 = !DILocation(line: 484, column: 6, scope: !5524)
!5543 = !DILocation(line: 485, column: 10, scope: !5540)
!5544 = !DILocation(line: 485, column: 41, scope: !5540)
!5545 = !DILocation(line: 485, column: 20, scope: !5540)
!5546 = !DILocation(line: 485, column: 18, scope: !5540)
!5547 = !DILocation(line: 485, column: 3, scope: !5540)
!5548 = !DILocation(line: 487, column: 9, scope: !5524)
!5549 = !DILocation(line: 487, column: 48, scope: !5524)
!5550 = !DILocation(line: 487, column: 19, scope: !5524)
!5551 = !DILocation(line: 487, column: 17, scope: !5524)
!5552 = !DILocation(line: 487, column: 2, scope: !5524)
!5553 = !DILocation(line: 488, column: 1, scope: !5524)
!5554 = distinct !DISubprogram(name: "acpi_penalize_sci_irq", scope: !3, file: !3, line: 838, type: !5555, scopeLine: 839, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5557)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{null, !109, !109, !109}
!5557 = !{!5558, !5559, !5560}
!5558 = !DILocalVariable(name: "irq", arg: 1, scope: !5554, file: !3, line: 838, type: !109)
!5559 = !DILocalVariable(name: "trigger", arg: 2, scope: !5554, file: !3, line: 838, type: !109)
!5560 = !DILocalVariable(name: "polarity", arg: 3, scope: !5554, file: !3, line: 838, type: !109)
!5561 = !DILocation(line: 838, column: 32, scope: !5554)
!5562 = !DILocation(line: 838, column: 41, scope: !5554)
!5563 = !DILocation(line: 838, column: 54, scope: !5554)
!5564 = !DILocation(line: 840, column: 12, scope: !5554)
!5565 = !DILocation(line: 840, column: 10, scope: !5554)
!5566 = !DILocation(line: 842, column: 6, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 842, column: 6)
!5568 = !DILocation(line: 842, column: 14, scope: !5567)
!5569 = !DILocation(line: 842, column: 41, scope: !5567)
!5570 = !DILocation(line: 843, column: 6, scope: !5567)
!5571 = !DILocation(line: 843, column: 15, scope: !5567)
!5572 = !DILocation(line: 842, column: 6, scope: !5554)
!5573 = !DILocation(line: 844, column: 15, scope: !5567)
!5574 = !DILocation(line: 844, column: 3, scope: !5567)
!5575 = !DILocation(line: 846, column: 15, scope: !5567)
!5576 = !DILocation(line: 847, column: 1, scope: !5554)
!5577 = distinct !DISubprogram(name: "acpi_irq_isa", scope: !3, file: !3, line: 854, type: !4908, scopeLine: 855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5578)
!5578 = !{!5579}
!5579 = !DILocalVariable(name: "str", arg: 1, scope: !5577, file: !3, line: 854, type: !320)
!5580 = !DILocation(line: 854, column: 38, scope: !5577)
!5581 = !DILocation(line: 856, column: 33, scope: !5577)
!5582 = !DILocation(line: 856, column: 9, scope: !5577)
!5583 = !DILocation(line: 856, column: 2, scope: !5577)
!5584 = distinct !DISubprogram(name: "acpi_irq_pci", scope: !3, file: !3, line: 866, type: !4908, scopeLine: 867, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5585)
!5585 = !{!5586}
!5586 = !DILocalVariable(name: "str", arg: 1, scope: !5584, file: !3, line: 866, type: !320)
!5587 = !DILocation(line: 866, column: 38, scope: !5584)
!5588 = !DILocation(line: 868, column: 33, scope: !5584)
!5589 = !DILocation(line: 868, column: 9, scope: !5584)
!5590 = !DILocation(line: 868, column: 2, scope: !5584)
!5591 = distinct !DISubprogram(name: "acpi_irq_nobalance_set", scope: !3, file: !3, line: 873, type: !4908, scopeLine: 874, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5592)
!5592 = !{!5593}
!5593 = !DILocalVariable(name: "str", arg: 1, scope: !5591, file: !3, line: 873, type: !320)
!5594 = !DILocation(line: 873, column: 48, scope: !5591)
!5595 = !DILocation(line: 875, column: 19, scope: !5591)
!5596 = !DILocation(line: 876, column: 2, scope: !5591)
!5597 = distinct !DISubprogram(name: "acpi_irq_balance_set", scope: !3, file: !3, line: 881, type: !4908, scopeLine: 882, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5598)
!5598 = !{!5599}
!5599 = !DILocalVariable(name: "str", arg: 1, scope: !5597, file: !3, line: 881, type: !320)
!5600 = !DILocation(line: 881, column: 46, scope: !5597)
!5601 = !DILocation(line: 883, column: 19, scope: !5597)
!5602 = !DILocation(line: 884, column: 2, scope: !5597)
!5603 = distinct !DISubprogram(name: "acpi_pci_link_init", scope: !3, file: !3, line: 893, type: !1022, scopeLine: 894, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5604 = !DILocation(line: 895, column: 6, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 895, column: 6)
!5606 = !DILocation(line: 895, column: 6, scope: !5603)
!5607 = !DILocation(line: 896, column: 3, scope: !5605)
!5608 = !DILocation(line: 898, column: 6, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 898, column: 6)
!5610 = !DILocation(line: 898, column: 23, scope: !5609)
!5611 = !DILocation(line: 898, column: 6, scope: !5603)
!5612 = !DILocation(line: 900, column: 7, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 900, column: 7)
!5614 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 898, column: 30)
!5615 = !DILocation(line: 900, column: 22, scope: !5613)
!5616 = !DILocation(line: 900, column: 7, scope: !5614)
!5617 = !DILocation(line: 901, column: 21, scope: !5613)
!5618 = !DILocation(line: 901, column: 4, scope: !5613)
!5619 = !DILocation(line: 903, column: 21, scope: !5613)
!5620 = !DILocation(line: 904, column: 2, scope: !5614)
!5621 = !DILocation(line: 905, column: 2, scope: !5603)
!5622 = !DILocation(line: 906, column: 2, scope: !5603)
!5623 = !DILocation(line: 907, column: 1, scope: !5603)
!5624 = !DISubprogram(name: "register_syscore_ops", scope: !4996, file: !4996, line: 20, type: !5625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5625 = !DISubroutineType(types: !5626)
!5626 = !{null, !5627}
!5627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!5628 = !DISubprogram(name: "acpi_scan_add_handler", scope: !187, file: !187, line: 563, type: !5629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5629 = !DISubroutineType(types: !5630)
!5630 = !{!109, !4796}
!5631 = distinct !DISubprogram(name: "acpi_pci_link_set", scope: !3, file: !3, line: 277, type: !5632, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5634)
!5632 = !DISubroutineType(types: !5633)
!5633 = !{!109, !174, !109}
!5634 = !{!5635, !5636, !5637, !6053, !6054, !6055, !6056, !6057, !6059, !6062, !6063, !6066, !6067}
!5635 = !DILocalVariable(name: "link", arg: 1, scope: !5631, file: !3, line: 277, type: !174)
!5636 = !DILocalVariable(name: "irq", arg: 2, scope: !5631, file: !3, line: 277, type: !109)
!5637 = !DILocalVariable(name: "resource", scope: !5631, file: !3, line: 282, type: !5638)
!5638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5639, size: 64)
!5639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5631, file: !3, line: 279, size: 1088, elements: !5640)
!5640 = !{!5641, !6052}
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !5639, file: !3, line: 280, baseType: !5642, size: 544)
!5642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !5643, line: 678, size: 544, elements: !5644)
!5643 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e234732d1e15cdbb059f7f7ffd573c0")
!5644 = !{!5645, !5646, !5647}
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5642, file: !5643, line: 679, baseType: !190, size: 32)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5642, file: !5643, line: 680, baseType: !190, size: 32, offset: 32)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5642, file: !5643, line: 681, baseType: !5648, size: 480, offset: 64)
!5648 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !5643, line: 639, size: 480, elements: !5649)
!5649 = !{!5650, !5669, !5686, !5692, !5700, !5705, !5711, !5716, !5723, !5727, !5735, !5743, !5749, !5789, !5807, !5825, !5837, !5858, !5866, !5886, !5902, !5922, !5944, !5959, !5972, !5984, !5997, !6011, !6022, !6034, !6043}
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5648, file: !5643, line: 640, baseType: !5651, size: 56)
!5651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !5643, line: 138, size: 56, elements: !5652)
!5652 = !{!5653, !5654, !5655, !5656, !5657, !5658, !5659}
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !5651, file: !5643, line: 139, baseType: !280, size: 8)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5651, file: !5643, line: 140, baseType: !280, size: 8, offset: 8)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5651, file: !5643, line: 141, baseType: !280, size: 8, offset: 16)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5651, file: !5643, line: 142, baseType: !280, size: 8, offset: 24)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5651, file: !5643, line: 143, baseType: !280, size: 8, offset: 32)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !5651, file: !5643, line: 144, baseType: !280, size: 8, offset: 40)
!5659 = !DIDerivedType(tag: DW_TAG_member, scope: !5651, file: !5643, line: 145, baseType: !5660, size: 8, offset: 48)
!5660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5651, file: !5643, line: 145, size: 8, elements: !5661)
!5661 = !{!5662, !5663}
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !5660, file: !5643, line: 146, baseType: !280, size: 8)
!5663 = !DIDerivedType(tag: DW_TAG_member, scope: !5660, file: !5643, line: 147, baseType: !5664)
!5664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5660, file: !5643, line: 147, elements: !5665)
!5665 = !{!5666, !5668}
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !5664, file: !5643, line: 147, baseType: !5667)
!5667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5664, file: !5643, line: 147, elements: !946)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5664, file: !5643, line: 147, baseType: !3490)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5648, file: !5643, line: 641, baseType: !5670, size: 40)
!5670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !5643, line: 151, size: 40, elements: !5671)
!5671 = !{!5672, !5673, !5674, !5675, !5676}
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5670, file: !5643, line: 152, baseType: !280, size: 8)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !5670, file: !5643, line: 153, baseType: !280, size: 8, offset: 8)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !5670, file: !5643, line: 154, baseType: !280, size: 8, offset: 16)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !5670, file: !5643, line: 155, baseType: !280, size: 8, offset: 24)
!5676 = !DIDerivedType(tag: DW_TAG_member, scope: !5670, file: !5643, line: 156, baseType: !5677, size: 8, offset: 32)
!5677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5670, file: !5643, line: 156, size: 8, elements: !5678)
!5678 = !{!5679, !5680}
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !5677, file: !5643, line: 157, baseType: !280, size: 8)
!5680 = !DIDerivedType(tag: DW_TAG_member, scope: !5677, file: !5643, line: 158, baseType: !5681)
!5681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5677, file: !5643, line: 158, elements: !5682)
!5682 = !{!5683, !5685}
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_channels", scope: !5681, file: !5643, line: 158, baseType: !5684)
!5684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5681, file: !5643, line: 158, elements: !946)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5681, file: !5643, line: 158, baseType: !3490)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !5648, file: !5643, line: 642, baseType: !5687, size: 24)
!5687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !5643, line: 162, size: 24, elements: !5688)
!5688 = !{!5689, !5690, !5691}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !5687, file: !5643, line: 163, baseType: !280, size: 8)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !5687, file: !5643, line: 164, baseType: !280, size: 8, offset: 8)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !5687, file: !5643, line: 165, baseType: !280, size: 8, offset: 16)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !5648, file: !5643, line: 643, baseType: !5693, size: 56)
!5693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !5643, line: 173, size: 56, elements: !5694)
!5694 = !{!5695, !5696, !5697, !5698, !5699}
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !5693, file: !5643, line: 174, baseType: !280, size: 8)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5693, file: !5643, line: 175, baseType: !280, size: 8, offset: 8)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5693, file: !5643, line: 176, baseType: !280, size: 8, offset: 16)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5693, file: !5643, line: 177, baseType: !288, size: 16, offset: 24)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5693, file: !5643, line: 178, baseType: !288, size: 16, offset: 40)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !5648, file: !5643, line: 644, baseType: !5701, size: 24)
!5701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !5643, line: 181, size: 24, elements: !5702)
!5702 = !{!5703, !5704}
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5701, file: !5643, line: 182, baseType: !288, size: 16)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5701, file: !5643, line: 183, baseType: !280, size: 8, offset: 16)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !5648, file: !5643, line: 645, baseType: !5706, size: 40)
!5706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !5643, line: 186, size: 40, elements: !5707)
!5707 = !{!5708, !5709, !5710}
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !5706, file: !5643, line: 187, baseType: !288, size: 16)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5706, file: !5643, line: 188, baseType: !288, size: 16, offset: 16)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5706, file: !5643, line: 189, baseType: !280, size: 8, offset: 32)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5648, file: !5643, line: 646, baseType: !5712, size: 16)
!5712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !5643, line: 201, size: 16, elements: !5713)
!5713 = !{!5714, !5715}
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !5712, file: !5643, line: 202, baseType: !288, size: 16)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !5712, file: !5643, line: 203, baseType: !3490, offset: 16)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !5648, file: !5643, line: 647, baseType: !5717, size: 152)
!5717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !5643, line: 208, size: 152, elements: !5718)
!5718 = !{!5719, !5720, !5721, !5722}
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !5717, file: !5643, line: 209, baseType: !288, size: 16)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !5717, file: !5643, line: 210, baseType: !280, size: 8, offset: 16)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !5717, file: !5643, line: 211, baseType: !3209, size: 128, offset: 24)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !5717, file: !5643, line: 212, baseType: !3490, offset: 152)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !5648, file: !5643, line: 648, baseType: !5724, size: 8)
!5724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !5643, line: 215, size: 8, elements: !5725)
!5725 = !{!5726}
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !5724, file: !5643, line: 216, baseType: !280, size: 8)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !5648, file: !5643, line: 649, baseType: !5728, size: 72)
!5728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !5643, line: 219, size: 72, elements: !5729)
!5729 = !{!5730, !5731, !5732, !5733, !5734}
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5728, file: !5643, line: 220, baseType: !280, size: 8)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5728, file: !5643, line: 221, baseType: !288, size: 16, offset: 8)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5728, file: !5643, line: 222, baseType: !288, size: 16, offset: 24)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5728, file: !5643, line: 223, baseType: !288, size: 16, offset: 40)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5728, file: !5643, line: 224, baseType: !288, size: 16, offset: 56)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !5648, file: !5643, line: 650, baseType: !5736, size: 136)
!5736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !5643, line: 227, size: 136, elements: !5737)
!5737 = !{!5738, !5739, !5740, !5741, !5742}
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5736, file: !5643, line: 228, baseType: !280, size: 8)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5736, file: !5643, line: 229, baseType: !190, size: 32, offset: 8)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5736, file: !5643, line: 230, baseType: !190, size: 32, offset: 40)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5736, file: !5643, line: 231, baseType: !190, size: 32, offset: 72)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5736, file: !5643, line: 232, baseType: !190, size: 32, offset: 104)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !5648, file: !5643, line: 651, baseType: !5744, size: 72)
!5744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !5643, line: 235, size: 72, elements: !5745)
!5745 = !{!5746, !5747, !5748}
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5744, file: !5643, line: 236, baseType: !280, size: 8)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5744, file: !5643, line: 237, baseType: !190, size: 32, offset: 8)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5744, file: !5643, line: 238, baseType: !190, size: 32, offset: 40)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !5648, file: !5643, line: 652, baseType: !5750, size: 240)
!5750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !5643, line: 312, size: 240, elements: !5751)
!5751 = !{!5752, !5753, !5754, !5755, !5756, !5757, !5775, !5783}
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5750, file: !5643, line: 313, baseType: !280, size: 8)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5750, file: !5643, line: 313, baseType: !280, size: 8, offset: 8)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5750, file: !5643, line: 313, baseType: !280, size: 8, offset: 16)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5750, file: !5643, line: 313, baseType: !280, size: 8, offset: 24)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5750, file: !5643, line: 313, baseType: !280, size: 8, offset: 32)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5750, file: !5643, line: 313, baseType: !5758, size: 32, offset: 40)
!5758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !5643, line: 255, size: 32, elements: !5759)
!5759 = !{!5760, !5767, !5774}
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !5758, file: !5643, line: 256, baseType: !5761, size: 32)
!5761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !5643, line: 241, size: 32, elements: !5762)
!5762 = !{!5763, !5764, !5765, !5766}
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5761, file: !5643, line: 242, baseType: !280, size: 8)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5761, file: !5643, line: 243, baseType: !280, size: 8, offset: 8)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !5761, file: !5643, line: 244, baseType: !280, size: 8, offset: 16)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !5761, file: !5643, line: 245, baseType: !280, size: 8, offset: 24)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !5758, file: !5643, line: 257, baseType: !5768, size: 32)
!5768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !5643, line: 248, size: 32, elements: !5769)
!5769 = !{!5770, !5771, !5772, !5773}
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !5768, file: !5643, line: 249, baseType: !280, size: 8)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !5768, file: !5643, line: 250, baseType: !280, size: 8, offset: 8)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !5768, file: !5643, line: 251, baseType: !280, size: 8, offset: 16)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5768, file: !5643, line: 252, baseType: !280, size: 8, offset: 24)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !5758, file: !5643, line: 261, baseType: !280, size: 8)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5750, file: !5643, line: 313, baseType: !5776, size: 80, offset: 72)
!5776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !5643, line: 285, size: 80, elements: !5777)
!5777 = !{!5778, !5779, !5780, !5781, !5782}
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5776, file: !5643, line: 286, baseType: !288, size: 16)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5776, file: !5643, line: 287, baseType: !288, size: 16, offset: 16)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5776, file: !5643, line: 288, baseType: !288, size: 16, offset: 32)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5776, file: !5643, line: 289, baseType: !288, size: 16, offset: 48)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5776, file: !5643, line: 290, baseType: !288, size: 16, offset: 64)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5750, file: !5643, line: 314, baseType: !5784, size: 88, offset: 152)
!5784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !5643, line: 269, size: 88, elements: !5785)
!5785 = !{!5786, !5787, !5788}
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5784, file: !5643, line: 270, baseType: !280, size: 8)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !5784, file: !5643, line: 271, baseType: !288, size: 16, offset: 8)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !5784, file: !5643, line: 272, baseType: !320, size: 64, offset: 24)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !5648, file: !5643, line: 653, baseType: !5790, size: 320)
!5790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !5643, line: 317, size: 320, elements: !5791)
!5791 = !{!5792, !5793, !5794, !5795, !5796, !5797, !5798, !5806}
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5790, file: !5643, line: 318, baseType: !280, size: 8)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5790, file: !5643, line: 318, baseType: !280, size: 8, offset: 8)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5790, file: !5643, line: 318, baseType: !280, size: 8, offset: 16)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5790, file: !5643, line: 318, baseType: !280, size: 8, offset: 24)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5790, file: !5643, line: 318, baseType: !280, size: 8, offset: 32)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5790, file: !5643, line: 318, baseType: !5758, size: 32, offset: 40)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5790, file: !5643, line: 318, baseType: !5799, size: 160, offset: 72)
!5799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !5643, line: 293, size: 160, elements: !5800)
!5800 = !{!5801, !5802, !5803, !5804, !5805}
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5799, file: !5643, line: 294, baseType: !190, size: 32)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5799, file: !5643, line: 295, baseType: !190, size: 32, offset: 32)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5799, file: !5643, line: 296, baseType: !190, size: 32, offset: 64)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5799, file: !5643, line: 297, baseType: !190, size: 32, offset: 96)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5799, file: !5643, line: 298, baseType: !190, size: 32, offset: 128)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5790, file: !5643, line: 319, baseType: !5784, size: 88, offset: 232)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !5648, file: !5643, line: 654, baseType: !5808, size: 480)
!5808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !5643, line: 322, size: 480, elements: !5809)
!5809 = !{!5810, !5811, !5812, !5813, !5814, !5815, !5816, !5824}
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5808, file: !5643, line: 323, baseType: !280, size: 8)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5808, file: !5643, line: 323, baseType: !280, size: 8, offset: 8)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5808, file: !5643, line: 323, baseType: !280, size: 8, offset: 16)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5808, file: !5643, line: 323, baseType: !280, size: 8, offset: 24)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5808, file: !5643, line: 323, baseType: !280, size: 8, offset: 32)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5808, file: !5643, line: 323, baseType: !5758, size: 32, offset: 40)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5808, file: !5643, line: 323, baseType: !5817, size: 320, offset: 72)
!5817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !5643, line: 301, size: 320, elements: !5818)
!5818 = !{!5819, !5820, !5821, !5822, !5823}
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5817, file: !5643, line: 302, baseType: !471, size: 64)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5817, file: !5643, line: 303, baseType: !471, size: 64, offset: 64)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5817, file: !5643, line: 304, baseType: !471, size: 64, offset: 128)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5817, file: !5643, line: 305, baseType: !471, size: 64, offset: 192)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5817, file: !5643, line: 306, baseType: !471, size: 64, offset: 256)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5808, file: !5643, line: 324, baseType: !5784, size: 88, offset: 392)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !5648, file: !5643, line: 655, baseType: !5826, size: 464)
!5826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !5643, line: 327, size: 464, elements: !5827)
!5827 = !{!5828, !5829, !5830, !5831, !5832, !5833, !5834, !5835, !5836}
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5826, file: !5643, line: 328, baseType: !280, size: 8)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5826, file: !5643, line: 328, baseType: !280, size: 8, offset: 8)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5826, file: !5643, line: 328, baseType: !280, size: 8, offset: 16)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5826, file: !5643, line: 328, baseType: !280, size: 8, offset: 24)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5826, file: !5643, line: 328, baseType: !280, size: 8, offset: 32)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5826, file: !5643, line: 328, baseType: !5758, size: 32, offset: 40)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !5826, file: !5643, line: 328, baseType: !280, size: 8, offset: 72)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5826, file: !5643, line: 329, baseType: !5817, size: 320, offset: 80)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !5826, file: !5643, line: 330, baseType: !471, size: 64, offset: 400)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !5648, file: !5643, line: 656, baseType: !5838, size: 168)
!5838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !5643, line: 333, size: 168, elements: !5839)
!5839 = !{!5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847}
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5838, file: !5643, line: 334, baseType: !280, size: 8)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5838, file: !5643, line: 335, baseType: !280, size: 8, offset: 8)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5838, file: !5643, line: 336, baseType: !280, size: 8, offset: 16)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5838, file: !5643, line: 337, baseType: !280, size: 8, offset: 24)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5838, file: !5643, line: 338, baseType: !280, size: 8, offset: 32)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !5838, file: !5643, line: 339, baseType: !280, size: 8, offset: 40)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5838, file: !5643, line: 340, baseType: !5784, size: 88, offset: 48)
!5847 = !DIDerivedType(tag: DW_TAG_member, scope: !5838, file: !5643, line: 341, baseType: !5848, size: 32, offset: 136)
!5848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5838, file: !5643, line: 341, size: 32, elements: !5849)
!5849 = !{!5850, !5851}
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !5848, file: !5643, line: 342, baseType: !190, size: 32)
!5851 = !DIDerivedType(tag: DW_TAG_member, scope: !5848, file: !5643, line: 343, baseType: !5852)
!5852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5848, file: !5643, line: 343, elements: !5853)
!5853 = !{!5854, !5856}
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !5852, file: !5643, line: 343, baseType: !5855)
!5855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5852, file: !5643, line: 343, elements: !946)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5852, file: !5643, line: 343, baseType: !5857)
!5857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, elements: !1809)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !5648, file: !5643, line: 657, baseType: !5859, size: 96)
!5859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !5643, line: 347, size: 96, elements: !5860)
!5860 = !{!5861, !5862, !5863, !5864, !5865}
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !5859, file: !5643, line: 348, baseType: !280, size: 8)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !5859, file: !5643, line: 349, baseType: !280, size: 8, offset: 8)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !5859, file: !5643, line: 350, baseType: !280, size: 8, offset: 16)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !5859, file: !5643, line: 351, baseType: !280, size: 8, offset: 24)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5859, file: !5643, line: 352, baseType: !471, size: 64, offset: 32)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !5648, file: !5643, line: 658, baseType: !5867, size: 352)
!5867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !5643, line: 355, size: 352, elements: !5868)
!5868 = !{!5869, !5870, !5871, !5872, !5873, !5874, !5875, !5876, !5877, !5878, !5879, !5880, !5881, !5882, !5883, !5885}
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5867, file: !5643, line: 356, baseType: !280, size: 8)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !5867, file: !5643, line: 357, baseType: !280, size: 8, offset: 8)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5867, file: !5643, line: 358, baseType: !280, size: 8, offset: 16)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5867, file: !5643, line: 359, baseType: !280, size: 8, offset: 24)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5867, file: !5643, line: 360, baseType: !280, size: 8, offset: 32)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5867, file: !5643, line: 361, baseType: !280, size: 8, offset: 40)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !5867, file: !5643, line: 362, baseType: !280, size: 8, offset: 48)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5867, file: !5643, line: 363, baseType: !280, size: 8, offset: 56)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5867, file: !5643, line: 364, baseType: !280, size: 8, offset: 64)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !5867, file: !5643, line: 365, baseType: !288, size: 16, offset: 72)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !5867, file: !5643, line: 366, baseType: !288, size: 16, offset: 88)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5867, file: !5643, line: 367, baseType: !288, size: 16, offset: 104)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5867, file: !5643, line: 368, baseType: !288, size: 16, offset: 120)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5867, file: !5643, line: 369, baseType: !5784, size: 88, offset: 136)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5867, file: !5643, line: 370, baseType: !5884, size: 64, offset: 224)
!5884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5867, file: !5643, line: 371, baseType: !4677, size: 64, offset: 288)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !5648, file: !5643, line: 659, baseType: !5887, size: 288)
!5887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !5643, line: 422, size: 288, elements: !5888)
!5888 = !{!5889, !5890, !5891, !5892, !5893, !5894, !5895, !5896, !5897, !5898, !5899, !5900, !5901}
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5887, file: !5643, line: 423, baseType: !280, size: 8)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5887, file: !5643, line: 423, baseType: !280, size: 8, offset: 8)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5887, file: !5643, line: 423, baseType: !280, size: 8, offset: 16)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5887, file: !5643, line: 423, baseType: !280, size: 8, offset: 24)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5887, file: !5643, line: 423, baseType: !280, size: 8, offset: 32)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5887, file: !5643, line: 423, baseType: !280, size: 8, offset: 40)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5887, file: !5643, line: 423, baseType: !288, size: 16, offset: 48)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5887, file: !5643, line: 423, baseType: !288, size: 16, offset: 64)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5887, file: !5643, line: 423, baseType: !5784, size: 88, offset: 80)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5887, file: !5643, line: 423, baseType: !4677, size: 64, offset: 168)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !5887, file: !5643, line: 423, baseType: !280, size: 8, offset: 232)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !5887, file: !5643, line: 424, baseType: !288, size: 16, offset: 240)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !5887, file: !5643, line: 425, baseType: !190, size: 32, offset: 256)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !5648, file: !5643, line: 660, baseType: !5903, size: 320)
!5903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !5643, line: 433, size: 320, elements: !5904)
!5904 = !{!5905, !5906, !5907, !5908, !5909, !5910, !5911, !5912, !5913, !5914, !5915, !5916, !5917, !5918, !5919, !5920, !5921}
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5903, file: !5643, line: 434, baseType: !280, size: 8)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5903, file: !5643, line: 434, baseType: !280, size: 8, offset: 8)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5903, file: !5643, line: 434, baseType: !280, size: 8, offset: 16)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5903, file: !5643, line: 434, baseType: !280, size: 8, offset: 24)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5903, file: !5643, line: 434, baseType: !280, size: 8, offset: 32)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5903, file: !5643, line: 434, baseType: !280, size: 8, offset: 40)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5903, file: !5643, line: 434, baseType: !288, size: 16, offset: 48)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5903, file: !5643, line: 434, baseType: !288, size: 16, offset: 64)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5903, file: !5643, line: 434, baseType: !5784, size: 88, offset: 80)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5903, file: !5643, line: 434, baseType: !4677, size: 64, offset: 168)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !5903, file: !5643, line: 434, baseType: !280, size: 8, offset: 232)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !5903, file: !5643, line: 435, baseType: !280, size: 8, offset: 240)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !5903, file: !5643, line: 436, baseType: !280, size: 8, offset: 248)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !5903, file: !5643, line: 437, baseType: !280, size: 8, offset: 256)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !5903, file: !5643, line: 438, baseType: !280, size: 8, offset: 264)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !5903, file: !5643, line: 439, baseType: !288, size: 16, offset: 272)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !5903, file: !5643, line: 440, baseType: !190, size: 32, offset: 288)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !5648, file: !5643, line: 661, baseType: !5923, size: 344)
!5923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !5643, line: 463, size: 344, elements: !5924)
!5924 = !{!5925, !5926, !5927, !5928, !5929, !5930, !5931, !5932, !5933, !5934, !5935, !5936, !5937, !5938, !5939, !5940, !5941, !5942, !5943}
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5923, file: !5643, line: 464, baseType: !280, size: 8)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5923, file: !5643, line: 464, baseType: !280, size: 8, offset: 8)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5923, file: !5643, line: 464, baseType: !280, size: 8, offset: 16)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5923, file: !5643, line: 464, baseType: !280, size: 8, offset: 24)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5923, file: !5643, line: 464, baseType: !280, size: 8, offset: 32)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5923, file: !5643, line: 464, baseType: !280, size: 8, offset: 40)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5923, file: !5643, line: 464, baseType: !288, size: 16, offset: 48)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5923, file: !5643, line: 464, baseType: !288, size: 16, offset: 64)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5923, file: !5643, line: 464, baseType: !5784, size: 88, offset: 80)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5923, file: !5643, line: 464, baseType: !4677, size: 64, offset: 168)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !5923, file: !5643, line: 464, baseType: !280, size: 8, offset: 232)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !5923, file: !5643, line: 465, baseType: !280, size: 8, offset: 240)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !5923, file: !5643, line: 466, baseType: !280, size: 8, offset: 248)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !5923, file: !5643, line: 467, baseType: !280, size: 8, offset: 256)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5923, file: !5643, line: 468, baseType: !280, size: 8, offset: 264)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !5923, file: !5643, line: 469, baseType: !280, size: 8, offset: 272)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !5923, file: !5643, line: 470, baseType: !288, size: 16, offset: 280)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !5923, file: !5643, line: 471, baseType: !288, size: 16, offset: 296)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !5923, file: !5643, line: 472, baseType: !190, size: 32, offset: 312)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "csi2_serial_bus", scope: !5648, file: !5643, line: 662, baseType: !5945, size: 248)
!5945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_csi2_serialbus", file: !5643, line: 518, size: 248, elements: !5946)
!5946 = !{!5947, !5948, !5949, !5950, !5951, !5952, !5953, !5954, !5955, !5956, !5957, !5958}
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5945, file: !5643, line: 519, baseType: !280, size: 8)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5945, file: !5643, line: 519, baseType: !280, size: 8, offset: 8)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5945, file: !5643, line: 519, baseType: !280, size: 8, offset: 16)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5945, file: !5643, line: 519, baseType: !280, size: 8, offset: 24)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5945, file: !5643, line: 519, baseType: !280, size: 8, offset: 32)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5945, file: !5643, line: 519, baseType: !280, size: 8, offset: 40)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5945, file: !5643, line: 519, baseType: !288, size: 16, offset: 48)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5945, file: !5643, line: 519, baseType: !288, size: 16, offset: 64)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5945, file: !5643, line: 519, baseType: !5784, size: 88, offset: 80)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5945, file: !5643, line: 519, baseType: !4677, size: 64, offset: 168)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "local_port_instance", scope: !5945, file: !5643, line: 519, baseType: !280, size: 8, offset: 232)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "phy_type", scope: !5945, file: !5643, line: 520, baseType: !280, size: 8, offset: 240)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !5648, file: !5643, line: 663, baseType: !5960, size: 232)
!5960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !5643, line: 407, size: 232, elements: !5961)
!5961 = !{!5962, !5963, !5964, !5965, !5966, !5967, !5968, !5969, !5970, !5971}
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5960, file: !5643, line: 408, baseType: !280, size: 8)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5960, file: !5643, line: 408, baseType: !280, size: 8, offset: 8)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5960, file: !5643, line: 408, baseType: !280, size: 8, offset: 16)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5960, file: !5643, line: 408, baseType: !280, size: 8, offset: 24)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5960, file: !5643, line: 408, baseType: !280, size: 8, offset: 32)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5960, file: !5643, line: 408, baseType: !280, size: 8, offset: 40)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5960, file: !5643, line: 408, baseType: !288, size: 16, offset: 48)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5960, file: !5643, line: 408, baseType: !288, size: 16, offset: 64)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5960, file: !5643, line: 408, baseType: !5784, size: 88, offset: 80)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5960, file: !5643, line: 408, baseType: !4677, size: 64, offset: 168)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !5648, file: !5643, line: 664, baseType: !5973, size: 288)
!5973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !5643, line: 523, size: 288, elements: !5974)
!5974 = !{!5975, !5976, !5977, !5978, !5979, !5980, !5981, !5982, !5983}
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5973, file: !5643, line: 524, baseType: !280, size: 8)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5973, file: !5643, line: 525, baseType: !280, size: 8, offset: 8)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5973, file: !5643, line: 526, baseType: !280, size: 8, offset: 16)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !5973, file: !5643, line: 527, baseType: !288, size: 16, offset: 24)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5973, file: !5643, line: 528, baseType: !288, size: 16, offset: 40)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5973, file: !5643, line: 529, baseType: !288, size: 16, offset: 56)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5973, file: !5643, line: 530, baseType: !5784, size: 88, offset: 72)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5973, file: !5643, line: 531, baseType: !5884, size: 64, offset: 160)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5973, file: !5643, line: 532, baseType: !4677, size: 64, offset: 224)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5648, file: !5643, line: 665, baseType: !5985, size: 312)
!5985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !5643, line: 535, size: 312, elements: !5986)
!5986 = !{!5987, !5988, !5989, !5990, !5991, !5992, !5993, !5994, !5995, !5996}
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5985, file: !5643, line: 536, baseType: !280, size: 8)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5985, file: !5643, line: 537, baseType: !280, size: 8, offset: 8)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5985, file: !5643, line: 538, baseType: !280, size: 8, offset: 16)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !5985, file: !5643, line: 539, baseType: !280, size: 8, offset: 24)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !5985, file: !5643, line: 540, baseType: !190, size: 32, offset: 32)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5985, file: !5643, line: 541, baseType: !288, size: 16, offset: 64)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5985, file: !5643, line: 542, baseType: !288, size: 16, offset: 80)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5985, file: !5643, line: 543, baseType: !5784, size: 88, offset: 96)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5985, file: !5643, line: 544, baseType: !5884, size: 64, offset: 184)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5985, file: !5643, line: 545, baseType: !4677, size: 64, offset: 248)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !5648, file: !5643, line: 666, baseType: !5998, size: 256)
!5998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !5643, line: 574, size: 256, elements: !5999)
!5999 = !{!6000, !6001, !6002, !6003, !6004, !6005, !6010}
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5998, file: !5643, line: 575, baseType: !280, size: 8)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5998, file: !5643, line: 576, baseType: !280, size: 8, offset: 8)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5998, file: !5643, line: 577, baseType: !288, size: 16, offset: 16)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5998, file: !5643, line: 578, baseType: !288, size: 16, offset: 32)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5998, file: !5643, line: 579, baseType: !5884, size: 64, offset: 48)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !5998, file: !5643, line: 580, baseType: !6006, size: 80, offset: 112)
!6006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !5643, line: 264, size: 80, elements: !6007)
!6007 = !{!6008, !6009}
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !6006, file: !5643, line: 265, baseType: !288, size: 16)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !6006, file: !5643, line: 266, baseType: !320, size: 64, offset: 16)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5998, file: !5643, line: 581, baseType: !4677, size: 64, offset: 192)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !5648, file: !5643, line: 667, baseType: !6012, size: 288)
!6012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !5643, line: 584, size: 288, elements: !6013)
!6013 = !{!6014, !6015, !6016, !6017, !6018, !6019, !6020, !6021}
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6012, file: !5643, line: 585, baseType: !280, size: 8)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6012, file: !5643, line: 586, baseType: !280, size: 8, offset: 8)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !6012, file: !5643, line: 587, baseType: !280, size: 8, offset: 16)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !6012, file: !5643, line: 588, baseType: !288, size: 16, offset: 24)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6012, file: !5643, line: 589, baseType: !288, size: 16, offset: 40)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6012, file: !5643, line: 590, baseType: !5784, size: 88, offset: 56)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !6012, file: !5643, line: 591, baseType: !6006, size: 80, offset: 144)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6012, file: !5643, line: 592, baseType: !4677, size: 64, offset: 224)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !5648, file: !5643, line: 668, baseType: !6023, size: 312)
!6023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !5643, line: 595, size: 312, elements: !6024)
!6024 = !{!6025, !6026, !6027, !6028, !6029, !6030, !6031, !6032, !6033}
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6023, file: !5643, line: 596, baseType: !280, size: 8)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6023, file: !5643, line: 597, baseType: !280, size: 8, offset: 8)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !6023, file: !5643, line: 598, baseType: !280, size: 8, offset: 16)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !6023, file: !5643, line: 599, baseType: !280, size: 8, offset: 24)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !6023, file: !5643, line: 600, baseType: !190, size: 32, offset: 32)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6023, file: !5643, line: 601, baseType: !288, size: 16, offset: 64)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6023, file: !5643, line: 602, baseType: !5784, size: 88, offset: 80)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !6023, file: !5643, line: 603, baseType: !6006, size: 80, offset: 168)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6023, file: !5643, line: 604, baseType: !4677, size: 64, offset: 248)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "clock_input", scope: !5648, file: !5643, line: 669, baseType: !6035, size: 160)
!6035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_clock_input", file: !5643, line: 548, size: 160, elements: !6036)
!6036 = !{!6037, !6038, !6039, !6040, !6041, !6042}
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6035, file: !5643, line: 549, baseType: !280, size: 8)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !6035, file: !5643, line: 550, baseType: !280, size: 8, offset: 8)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !6035, file: !5643, line: 551, baseType: !280, size: 8, offset: 16)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_divisor", scope: !6035, file: !5643, line: 552, baseType: !288, size: 16, offset: 24)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_numerator", scope: !6035, file: !5643, line: 553, baseType: !190, size: 32, offset: 40)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6035, file: !5643, line: 554, baseType: !5784, size: 88, offset: 72)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5648, file: !5643, line: 673, baseType: !6044, size: 72)
!6044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !5643, line: 309, size: 72, elements: !6045)
!6045 = !{!6046, !6047, !6048, !6049, !6050, !6051}
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !6044, file: !5643, line: 310, baseType: !280, size: 8)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6044, file: !5643, line: 310, baseType: !280, size: 8, offset: 8)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !6044, file: !5643, line: 310, baseType: !280, size: 8, offset: 16)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !6044, file: !5643, line: 310, baseType: !280, size: 8, offset: 24)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !6044, file: !5643, line: 310, baseType: !280, size: 8, offset: 32)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6044, file: !5643, line: 310, baseType: !5758, size: 32, offset: 40)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5639, file: !3, line: 281, baseType: !5642, size: 544, offset: 544)
!6053 = !DILocalVariable(name: "buffer", scope: !5631, file: !3, line: 283, type: !5482)
!6054 = !DILocalVariable(name: "handle", scope: !5631, file: !3, line: 284, type: !196)
!6055 = !DILocalVariable(name: "status", scope: !5631, file: !3, line: 285, type: !4865)
!6056 = !DILocalVariable(name: "result", scope: !5631, file: !3, line: 286, type: !109)
!6057 = !DILocalVariable(name: "_flags", scope: !6058, file: !3, line: 291, type: !370)
!6058 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 291, column: 44)
!6059 = !DILocalVariable(name: "__dummy", scope: !6060, file: !3, line: 291, type: !370)
!6060 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 291, column: 44)
!6061 = distinct !DILexicalBlock(scope: !6058, file: !3, line: 291, column: 44)
!6062 = !DILocalVariable(name: "__dummy2", scope: !6060, file: !3, line: 291, type: !370)
!6063 = !DILocalVariable(name: "__dummy", scope: !6064, file: !3, line: 291, type: !370)
!6064 = distinct !DILexicalBlock(scope: !6065, file: !3, line: 291, column: 44)
!6065 = distinct !DILexicalBlock(scope: !6058, file: !3, line: 291, column: 44)
!6066 = !DILocalVariable(name: "__dummy2", scope: !6064, file: !3, line: 291, type: !370)
!6067 = !DILabel(scope: !5631, name: "end", file: !3, line: 383)
!6068 = !DILocation(line: 277, column: 52, scope: !5631)
!6069 = !DILocation(line: 277, column: 62, scope: !5631)
!6070 = !DILocation(line: 279, column: 2, scope: !5631)
!6071 = !DILocation(line: 282, column: 5, scope: !5631)
!6072 = !DILocation(line: 283, column: 2, scope: !5631)
!6073 = !DILocation(line: 283, column: 21, scope: !5631)
!6074 = !DILocation(line: 284, column: 2, scope: !5631)
!6075 = !DILocation(line: 284, column: 14, scope: !5631)
!6076 = !DILocation(line: 284, column: 23, scope: !5631)
!6077 = !DILocation(line: 284, column: 29, scope: !5631)
!6078 = !DILocation(line: 284, column: 37, scope: !5631)
!6079 = !DILocation(line: 285, column: 2, scope: !5631)
!6080 = !DILocation(line: 285, column: 14, scope: !5631)
!6081 = !DILocation(line: 286, column: 2, scope: !5631)
!6082 = !DILocation(line: 286, column: 6, scope: !5631)
!6083 = !DILocation(line: 288, column: 7, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 288, column: 6)
!6085 = !DILocation(line: 288, column: 6, scope: !5631)
!6086 = !DILocation(line: 289, column: 3, scope: !6084)
!6087 = !DILocation(line: 291, column: 44, scope: !6058)
!6088 = !DILocation(line: 291, column: 44, scope: !6060)
!6089 = !DILocation(line: 291, column: 44, scope: !6061)
!6090 = !DILocation(line: 291, column: 44, scope: !6064)
!6091 = !DILocation(line: 291, column: 44, scope: !6065)
!6092 = !DILocation(line: 291, column: 44, scope: !5631)
!6093 = !DILocation(line: 291, column: 13, scope: !5631)
!6094 = !DILocation(line: 291, column: 11, scope: !5631)
!6095 = !DILocation(line: 292, column: 7, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 292, column: 6)
!6097 = !DILocation(line: 292, column: 6, scope: !5631)
!6098 = !DILocation(line: 293, column: 3, scope: !6096)
!6099 = !DILocation(line: 295, column: 9, scope: !5631)
!6100 = !DILocation(line: 295, column: 16, scope: !5631)
!6101 = !DILocation(line: 296, column: 19, scope: !5631)
!6102 = !DILocation(line: 296, column: 9, scope: !5631)
!6103 = !DILocation(line: 296, column: 17, scope: !5631)
!6104 = !DILocation(line: 298, column: 10, scope: !5631)
!6105 = !DILocation(line: 298, column: 16, scope: !5631)
!6106 = !DILocation(line: 298, column: 20, scope: !5631)
!6107 = !DILocation(line: 298, column: 2, scope: !5631)
!6108 = !DILocation(line: 300, column: 3, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 298, column: 35)
!6110 = !DILocation(line: 300, column: 13, scope: !6109)
!6111 = !DILocation(line: 300, column: 17, scope: !6109)
!6112 = !DILocation(line: 300, column: 22, scope: !6109)
!6113 = !DILocation(line: 301, column: 3, scope: !6109)
!6114 = !DILocation(line: 301, column: 13, scope: !6109)
!6115 = !DILocation(line: 301, column: 17, scope: !6109)
!6116 = !DILocation(line: 301, column: 24, scope: !6109)
!6117 = !DILocation(line: 302, column: 39, scope: !6109)
!6118 = !DILocation(line: 302, column: 45, scope: !6109)
!6119 = !DILocation(line: 302, column: 49, scope: !6109)
!6120 = !DILocation(line: 302, column: 3, scope: !6109)
!6121 = !DILocation(line: 302, column: 13, scope: !6109)
!6122 = !DILocation(line: 302, column: 17, scope: !6109)
!6123 = !DILocation(line: 302, column: 26, scope: !6109)
!6124 = !DILocation(line: 302, column: 37, scope: !6109)
!6125 = !DILocation(line: 304, column: 7, scope: !6109)
!6126 = !DILocation(line: 304, column: 13, scope: !6109)
!6127 = !DILocation(line: 304, column: 17, scope: !6109)
!6128 = !DILocation(line: 303, column: 3, scope: !6109)
!6129 = !DILocation(line: 303, column: 13, scope: !6109)
!6130 = !DILocation(line: 303, column: 17, scope: !6109)
!6131 = !DILocation(line: 303, column: 26, scope: !6109)
!6132 = !DILocation(line: 303, column: 35, scope: !6109)
!6133 = !DILocation(line: 305, column: 7, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6109, file: !3, line: 305, column: 7)
!6135 = !DILocation(line: 305, column: 13, scope: !6134)
!6136 = !DILocation(line: 305, column: 17, scope: !6134)
!6137 = !DILocation(line: 305, column: 28, scope: !6134)
!6138 = !DILocation(line: 305, column: 7, scope: !6109)
!6139 = !DILocation(line: 306, column: 4, scope: !6134)
!6140 = !DILocation(line: 306, column: 14, scope: !6134)
!6141 = !DILocation(line: 306, column: 18, scope: !6134)
!6142 = !DILocation(line: 306, column: 27, scope: !6134)
!6143 = !DILocation(line: 306, column: 37, scope: !6134)
!6144 = !DILocation(line: 309, column: 4, scope: !6134)
!6145 = !DILocation(line: 309, column: 14, scope: !6134)
!6146 = !DILocation(line: 309, column: 18, scope: !6134)
!6147 = !DILocation(line: 309, column: 27, scope: !6134)
!6148 = !DILocation(line: 309, column: 37, scope: !6134)
!6149 = !DILocation(line: 310, column: 3, scope: !6109)
!6150 = !DILocation(line: 310, column: 13, scope: !6109)
!6151 = !DILocation(line: 310, column: 17, scope: !6109)
!6152 = !DILocation(line: 310, column: 26, scope: !6109)
!6153 = !DILocation(line: 310, column: 42, scope: !6109)
!6154 = !DILocation(line: 311, column: 42, scope: !6109)
!6155 = !DILocation(line: 311, column: 3, scope: !6109)
!6156 = !DILocation(line: 311, column: 13, scope: !6109)
!6157 = !DILocation(line: 311, column: 17, scope: !6109)
!6158 = !DILocation(line: 311, column: 26, scope: !6109)
!6159 = !DILocation(line: 311, column: 40, scope: !6109)
!6160 = !DILocation(line: 312, column: 3, scope: !6109)
!6161 = !DILocation(line: 315, column: 3, scope: !6109)
!6162 = !DILocation(line: 315, column: 13, scope: !6109)
!6163 = !DILocation(line: 315, column: 17, scope: !6109)
!6164 = !DILocation(line: 315, column: 22, scope: !6109)
!6165 = !DILocation(line: 316, column: 3, scope: !6109)
!6166 = !DILocation(line: 316, column: 13, scope: !6109)
!6167 = !DILocation(line: 316, column: 17, scope: !6109)
!6168 = !DILocation(line: 316, column: 24, scope: !6109)
!6169 = !DILocation(line: 317, column: 3, scope: !6109)
!6170 = !DILocation(line: 317, column: 13, scope: !6109)
!6171 = !DILocation(line: 317, column: 17, scope: !6109)
!6172 = !DILocation(line: 317, column: 35, scope: !6109)
!6173 = !DILocation(line: 317, column: 53, scope: !6109)
!6174 = !DILocation(line: 320, column: 7, scope: !6109)
!6175 = !DILocation(line: 320, column: 13, scope: !6109)
!6176 = !DILocation(line: 320, column: 17, scope: !6109)
!6177 = !DILocation(line: 319, column: 3, scope: !6109)
!6178 = !DILocation(line: 319, column: 13, scope: !6109)
!6179 = !DILocation(line: 319, column: 17, scope: !6109)
!6180 = !DILocation(line: 319, column: 35, scope: !6109)
!6181 = !DILocation(line: 319, column: 46, scope: !6109)
!6182 = !DILocation(line: 322, column: 7, scope: !6109)
!6183 = !DILocation(line: 322, column: 13, scope: !6109)
!6184 = !DILocation(line: 322, column: 17, scope: !6109)
!6185 = !DILocation(line: 321, column: 3, scope: !6109)
!6186 = !DILocation(line: 321, column: 13, scope: !6109)
!6187 = !DILocation(line: 321, column: 17, scope: !6109)
!6188 = !DILocation(line: 321, column: 35, scope: !6109)
!6189 = !DILocation(line: 321, column: 44, scope: !6109)
!6190 = !DILocation(line: 323, column: 7, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6109, file: !3, line: 323, column: 7)
!6192 = !DILocation(line: 323, column: 13, scope: !6191)
!6193 = !DILocation(line: 323, column: 17, scope: !6191)
!6194 = !DILocation(line: 323, column: 28, scope: !6191)
!6195 = !DILocation(line: 323, column: 7, scope: !6109)
!6196 = !DILocation(line: 324, column: 4, scope: !6191)
!6197 = !DILocation(line: 324, column: 14, scope: !6191)
!6198 = !DILocation(line: 324, column: 18, scope: !6191)
!6199 = !DILocation(line: 324, column: 36, scope: !6191)
!6200 = !DILocation(line: 324, column: 46, scope: !6191)
!6201 = !DILocation(line: 327, column: 4, scope: !6191)
!6202 = !DILocation(line: 327, column: 14, scope: !6191)
!6203 = !DILocation(line: 327, column: 18, scope: !6191)
!6204 = !DILocation(line: 327, column: 36, scope: !6191)
!6205 = !DILocation(line: 327, column: 46, scope: !6191)
!6206 = !DILocation(line: 328, column: 3, scope: !6109)
!6207 = !DILocation(line: 328, column: 13, scope: !6109)
!6208 = !DILocation(line: 328, column: 17, scope: !6109)
!6209 = !DILocation(line: 328, column: 35, scope: !6109)
!6210 = !DILocation(line: 328, column: 51, scope: !6109)
!6211 = !DILocation(line: 329, column: 51, scope: !6109)
!6212 = !DILocation(line: 329, column: 3, scope: !6109)
!6213 = !DILocation(line: 329, column: 13, scope: !6109)
!6214 = !DILocation(line: 329, column: 17, scope: !6109)
!6215 = !DILocation(line: 329, column: 35, scope: !6109)
!6216 = !DILocation(line: 329, column: 49, scope: !6109)
!6217 = !DILocation(line: 331, column: 3, scope: !6109)
!6218 = !DILocation(line: 333, column: 3, scope: !6109)
!6219 = !DILocation(line: 335, column: 10, scope: !6109)
!6220 = !DILocation(line: 336, column: 3, scope: !6109)
!6221 = !DILocation(line: 339, column: 2, scope: !5631)
!6222 = !DILocation(line: 339, column: 12, scope: !5631)
!6223 = !DILocation(line: 339, column: 16, scope: !5631)
!6224 = !DILocation(line: 339, column: 21, scope: !5631)
!6225 = !DILocation(line: 340, column: 2, scope: !5631)
!6226 = !DILocation(line: 340, column: 12, scope: !5631)
!6227 = !DILocation(line: 340, column: 16, scope: !5631)
!6228 = !DILocation(line: 340, column: 23, scope: !5631)
!6229 = !DILocation(line: 343, column: 38, scope: !5631)
!6230 = !DILocation(line: 343, column: 44, scope: !5631)
!6231 = !DILocation(line: 343, column: 52, scope: !5631)
!6232 = !DILocation(line: 343, column: 11, scope: !5631)
!6233 = !DILocation(line: 343, column: 9, scope: !5631)
!6234 = !DILocation(line: 346, column: 6, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 346, column: 6)
!6236 = !DILocation(line: 346, column: 6, scope: !5631)
!6237 = !DILocation(line: 347, column: 32, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6235, file: !3, line: 346, column: 28)
!6239 = !DILocation(line: 347, column: 48, scope: !6238)
!6240 = !DILocation(line: 347, column: 3, scope: !6238)
!6241 = !DILocation(line: 348, column: 10, scope: !6238)
!6242 = !DILocation(line: 349, column: 3, scope: !6238)
!6243 = !DILocation(line: 353, column: 31, scope: !5631)
!6244 = !DILocation(line: 353, column: 37, scope: !5631)
!6245 = !DILocation(line: 353, column: 11, scope: !5631)
!6246 = !DILocation(line: 353, column: 9, scope: !5631)
!6247 = !DILocation(line: 354, column: 6, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 354, column: 6)
!6249 = !DILocation(line: 354, column: 6, scope: !5631)
!6250 = !DILocation(line: 355, column: 3, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6248, file: !3, line: 354, column: 14)
!6252 = !DILocation(line: 356, column: 3, scope: !6251)
!6253 = !DILocation(line: 358, column: 7, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 358, column: 6)
!6255 = !DILocation(line: 358, column: 13, scope: !6254)
!6256 = !DILocation(line: 358, column: 21, scope: !6254)
!6257 = !DILocation(line: 358, column: 28, scope: !6254)
!6258 = !DILocation(line: 358, column: 6, scope: !5631)
!6259 = !DILocation(line: 359, column: 3, scope: !6254)
!6260 = !DILocation(line: 362, column: 37, scope: !5631)
!6261 = !DILocation(line: 362, column: 11, scope: !5631)
!6262 = !DILocation(line: 362, column: 9, scope: !5631)
!6263 = !DILocation(line: 363, column: 6, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 363, column: 6)
!6265 = !DILocation(line: 363, column: 6, scope: !5631)
!6266 = !DILocation(line: 364, column: 3, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6264, file: !3, line: 363, column: 14)
!6268 = !DILocation(line: 371, column: 6, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 371, column: 6)
!6270 = !DILocation(line: 371, column: 12, scope: !6269)
!6271 = !DILocation(line: 371, column: 16, scope: !6269)
!6272 = !DILocation(line: 371, column: 26, scope: !6269)
!6273 = !DILocation(line: 371, column: 23, scope: !6269)
!6274 = !DILocation(line: 371, column: 6, scope: !5631)
!6275 = !DILocation(line: 376, column: 3, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6269, file: !3, line: 371, column: 31)
!6277 = !DILocation(line: 378, column: 22, scope: !6276)
!6278 = !DILocation(line: 378, column: 3, scope: !6276)
!6279 = !DILocation(line: 378, column: 9, scope: !6276)
!6280 = !DILocation(line: 378, column: 13, scope: !6276)
!6281 = !DILocation(line: 378, column: 20, scope: !6276)
!6282 = !DILocation(line: 379, column: 2, scope: !6276)
!6283 = !DILocation(line: 381, column: 2, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 381, column: 2)
!6285 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 381, column: 2)
!6286 = !DILocation(line: 381, column: 2, scope: !6285)
!6287 = !DILocation(line: 381, column: 2, scope: !5631)
!6288 = !DILocation(line: 383, column: 7, scope: !5631)
!6289 = !DILocation(line: 384, column: 8, scope: !5631)
!6290 = !DILocation(line: 384, column: 2, scope: !5631)
!6291 = !DILocation(line: 385, column: 9, scope: !5631)
!6292 = !DILocation(line: 385, column: 2, scope: !5631)
!6293 = !DILocation(line: 386, column: 1, scope: !5631)
!6294 = distinct !DISubprogram(name: "kzalloc", scope: !163, file: !163, line: 719, type: !6295, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6297)
!6295 = !DISubroutineType(types: !6296)
!6296 = !{!173, !367, !1171}
!6297 = !{!6298, !6299}
!6298 = !DILocalVariable(name: "size", arg: 1, scope: !6294, file: !163, line: 719, type: !367)
!6299 = !DILocalVariable(name: "flags", arg: 2, scope: !6294, file: !163, line: 719, type: !1171)
!6300 = !DILocation(line: 719, column: 52, scope: !6294)
!6301 = !DILocation(line: 719, column: 64, scope: !6294)
!6302 = !DILocation(line: 721, column: 17, scope: !6294)
!6303 = !DILocation(line: 721, column: 23, scope: !6294)
!6304 = !DILocation(line: 721, column: 29, scope: !6294)
!6305 = !DILocation(line: 721, column: 9, scope: !6294)
!6306 = !DILocation(line: 721, column: 2, scope: !6294)
!6307 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !6308, file: !6308, line: 65, type: !6309, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6308 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!6309 = !DISubroutineType(types: !6310)
!6310 = !{!370}
!6311 = !DILocation(line: 67, column: 9, scope: !6307)
!6312 = !DILocation(line: 67, column: 2, scope: !6307)
!6313 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !6308, file: !6308, line: 120, type: !6314, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6316)
!6314 = !DISubroutineType(types: !6315)
!6315 = !{!109, !370}
!6316 = !{!6317}
!6317 = !DILocalVariable(name: "flags", arg: 1, scope: !6313, file: !6308, line: 120, type: !370)
!6318 = !DILocation(line: 120, column: 67, scope: !6313)
!6319 = !DILocation(line: 122, column: 11, scope: !6313)
!6320 = !DILocation(line: 122, column: 17, scope: !6313)
!6321 = !DILocation(line: 122, column: 9, scope: !6313)
!6322 = !DILocation(line: 122, column: 2, scope: !6313)
!6323 = !DISubprogram(name: "acpi_set_current_resources", scope: !5472, file: !5472, line: 823, type: !6324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6324 = !DISubroutineType(types: !6325)
!6325 = !{!4865, !196, !5481}
!6326 = !DISubprogram(name: "acpi_evaluation_failure_warn", scope: !148, file: !148, line: 1182, type: !6327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6327 = !DISubroutineType(types: !6328)
!6328 = !{null, !196, !240, !4865}
!6329 = !DISubprogram(name: "acpi_bus_get_status", scope: !187, file: !187, line: 534, type: !4822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6330 = distinct !DISubprogram(name: "acpi_pci_link_get_current", scope: !3, file: !3, line: 228, type: !5239, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6331)
!6331 = !{!6332, !6333, !6334, !6335, !6336, !6337}
!6332 = !DILocalVariable(name: "link", arg: 1, scope: !6330, file: !3, line: 228, type: !174)
!6333 = !DILocalVariable(name: "handle", scope: !6330, file: !3, line: 230, type: !196)
!6334 = !DILocalVariable(name: "status", scope: !6330, file: !3, line: 231, type: !4865)
!6335 = !DILocalVariable(name: "result", scope: !6330, file: !3, line: 232, type: !109)
!6336 = !DILocalVariable(name: "irq", scope: !6330, file: !3, line: 233, type: !109)
!6337 = !DILabel(scope: !6330, name: "end", file: !3, line: 273)
!6338 = !DILocation(line: 228, column: 60, scope: !6330)
!6339 = !DILocation(line: 230, column: 2, scope: !6330)
!6340 = !DILocation(line: 230, column: 14, scope: !6330)
!6341 = !DILocation(line: 230, column: 23, scope: !6330)
!6342 = !DILocation(line: 230, column: 29, scope: !6330)
!6343 = !DILocation(line: 230, column: 37, scope: !6330)
!6344 = !DILocation(line: 231, column: 2, scope: !6330)
!6345 = !DILocation(line: 231, column: 14, scope: !6330)
!6346 = !DILocation(line: 232, column: 2, scope: !6330)
!6347 = !DILocation(line: 232, column: 6, scope: !6330)
!6348 = !DILocation(line: 233, column: 2, scope: !6330)
!6349 = !DILocation(line: 233, column: 6, scope: !6330)
!6350 = !DILocation(line: 235, column: 2, scope: !6330)
!6351 = !DILocation(line: 235, column: 8, scope: !6330)
!6352 = !DILocation(line: 235, column: 12, scope: !6330)
!6353 = !DILocation(line: 235, column: 19, scope: !6330)
!6354 = !DILocation(line: 238, column: 6, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6330, file: !3, line: 238, column: 6)
!6356 = !DILocation(line: 238, column: 6, scope: !6330)
!6357 = !DILocation(line: 240, column: 32, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6355, file: !3, line: 238, column: 19)
!6359 = !DILocation(line: 240, column: 38, scope: !6358)
!6360 = !DILocation(line: 240, column: 12, scope: !6358)
!6361 = !DILocation(line: 240, column: 10, scope: !6358)
!6362 = !DILocation(line: 241, column: 7, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 241, column: 7)
!6364 = !DILocation(line: 241, column: 7, scope: !6358)
!6365 = !DILocation(line: 242, column: 4, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6363, file: !3, line: 241, column: 15)
!6367 = !DILocation(line: 243, column: 4, scope: !6366)
!6368 = !DILocation(line: 246, column: 8, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 246, column: 7)
!6370 = !DILocation(line: 246, column: 14, scope: !6369)
!6371 = !DILocation(line: 246, column: 22, scope: !6369)
!6372 = !DILocation(line: 246, column: 29, scope: !6369)
!6373 = !DILocation(line: 246, column: 7, scope: !6358)
!6374 = !DILocation(line: 247, column: 4, scope: !6375)
!6375 = distinct !DILexicalBlock(scope: !6376, file: !3, line: 247, column: 4)
!6376 = distinct !DILexicalBlock(scope: !6377, file: !3, line: 247, column: 4)
!6377 = distinct !DILexicalBlock(scope: !6369, file: !3, line: 246, column: 38)
!6378 = !DILocation(line: 247, column: 4, scope: !6376)
!6379 = !DILocation(line: 248, column: 4, scope: !6377)
!6380 = !DILocation(line: 250, column: 2, scope: !6358)
!6381 = !DILocation(line: 256, column: 31, scope: !6330)
!6382 = !DILocation(line: 256, column: 11, scope: !6330)
!6383 = !DILocation(line: 256, column: 9, scope: !6330)
!6384 = !DILocation(line: 258, column: 6, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6330, file: !3, line: 258, column: 6)
!6386 = !DILocation(line: 258, column: 6, scope: !6330)
!6387 = !DILocation(line: 259, column: 32, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6385, file: !3, line: 258, column: 28)
!6389 = !DILocation(line: 259, column: 48, scope: !6388)
!6390 = !DILocation(line: 259, column: 3, scope: !6388)
!6391 = !DILocation(line: 260, column: 10, scope: !6388)
!6392 = !DILocation(line: 261, column: 3, scope: !6388)
!6393 = !DILocation(line: 264, column: 6, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6330, file: !3, line: 264, column: 6)
!6395 = !DILocation(line: 264, column: 18, scope: !6394)
!6396 = !DILocation(line: 264, column: 22, scope: !6394)
!6397 = !DILocation(line: 264, column: 6, scope: !6330)
!6398 = !DILocation(line: 265, column: 3, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6394, file: !3, line: 264, column: 27)
!6400 = !DILocation(line: 266, column: 10, scope: !6399)
!6401 = !DILocation(line: 267, column: 2, scope: !6399)
!6402 = !DILocation(line: 269, column: 21, scope: !6330)
!6403 = !DILocation(line: 269, column: 2, scope: !6330)
!6404 = !DILocation(line: 269, column: 8, scope: !6330)
!6405 = !DILocation(line: 269, column: 12, scope: !6330)
!6406 = !DILocation(line: 269, column: 19, scope: !6330)
!6407 = !DILocation(line: 271, column: 2, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 271, column: 2)
!6409 = distinct !DILexicalBlock(scope: !6330, file: !3, line: 271, column: 2)
!6410 = !DILocation(line: 271, column: 2, scope: !6409)
!6411 = !DILocation(line: 271, column: 2, scope: !6330)
!6412 = !DILocation(line: 273, column: 7, scope: !6330)
!6413 = !DILocation(line: 274, column: 9, scope: !6330)
!6414 = !DILocation(line: 274, column: 2, scope: !6330)
!6415 = !DILocation(line: 275, column: 1, scope: !6330)
!6416 = !DISubprogram(name: "kfree", scope: !163, file: !163, line: 227, type: !6417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6417 = !DISubroutineType(types: !6418)
!6418 = !{null, !229}
!6419 = distinct !DISubprogram(name: "kmalloc", scope: !163, file: !163, line: 591, type: !6295, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6420)
!6420 = !{!6421, !6422, !6423}
!6421 = !DILocalVariable(name: "size", arg: 1, scope: !6419, file: !163, line: 591, type: !367)
!6422 = !DILocalVariable(name: "flags", arg: 2, scope: !6419, file: !163, line: 591, type: !1171)
!6423 = !DILocalVariable(name: "index", scope: !6424, file: !163, line: 594, type: !7)
!6424 = distinct !DILexicalBlock(scope: !6425, file: !163, line: 593, column: 42)
!6425 = distinct !DILexicalBlock(scope: !6419, file: !163, line: 593, column: 6)
!6426 = !DILocation(line: 591, column: 61, scope: !6419)
!6427 = !DILocation(line: 591, column: 73, scope: !6419)
!6428 = !DILocation(line: 593, column: 27, scope: !6425)
!6429 = !DILocation(line: 593, column: 6, scope: !6425)
!6430 = !DILocation(line: 593, column: 33, scope: !6425)
!6431 = !DILocation(line: 593, column: 36, scope: !6425)
!6432 = !DILocation(line: 593, column: 6, scope: !6419)
!6433 = !DILocation(line: 594, column: 3, scope: !6424)
!6434 = !DILocation(line: 594, column: 16, scope: !6424)
!6435 = !DILocation(line: 596, column: 7, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6424, file: !163, line: 596, column: 7)
!6437 = !DILocation(line: 596, column: 12, scope: !6436)
!6438 = !DILocation(line: 596, column: 7, scope: !6424)
!6439 = !DILocation(line: 597, column: 25, scope: !6436)
!6440 = !DILocation(line: 597, column: 31, scope: !6436)
!6441 = !DILocation(line: 597, column: 11, scope: !6436)
!6442 = !DILocation(line: 597, column: 4, scope: !6436)
!6443 = !DILocation(line: 599, column: 11, scope: !6424)
!6444 = !DILocation(line: 599, column: 9, scope: !6424)
!6445 = !DILocation(line: 601, column: 33, scope: !6424)
!6446 = !DILocation(line: 601, column: 40, scope: !6424)
!6447 = !DILocation(line: 601, column: 20, scope: !6424)
!6448 = !DILocation(line: 601, column: 5, scope: !6424)
!6449 = !DILocation(line: 601, column: 51, scope: !6424)
!6450 = !DILocation(line: 602, column: 5, scope: !6424)
!6451 = !DILocation(line: 602, column: 12, scope: !6424)
!6452 = !DILocation(line: 600, column: 10, scope: !6424)
!6453 = !DILocation(line: 600, column: 3, scope: !6424)
!6454 = !DILocation(line: 603, column: 2, scope: !6425)
!6455 = !DILocation(line: 604, column: 19, scope: !6419)
!6456 = !DILocation(line: 604, column: 25, scope: !6419)
!6457 = !DILocation(line: 604, column: 9, scope: !6419)
!6458 = !DILocation(line: 604, column: 2, scope: !6419)
!6459 = !DILocation(line: 605, column: 1, scope: !6419)
!6460 = !DISubprogram(name: "kmalloc_large", scope: !163, file: !163, line: 531, type: !6295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6461 = distinct !DISubprogram(name: "__kmalloc_index", scope: !163, file: !163, line: 444, type: !6462, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6464)
!6462 = !DISubroutineType(types: !6463)
!6463 = !{!7, !367, !221}
!6464 = !{!6465, !6466}
!6465 = !DILocalVariable(name: "size", arg: 1, scope: !6461, file: !163, line: 444, type: !367)
!6466 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6461, file: !163, line: 445, type: !221)
!6467 = !DILocation(line: 444, column: 60, scope: !6461)
!6468 = !DILocation(line: 445, column: 16, scope: !6461)
!6469 = !DILocation(line: 447, column: 7, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 447, column: 6)
!6471 = !DILocation(line: 447, column: 6, scope: !6461)
!6472 = !DILocation(line: 448, column: 3, scope: !6470)
!6473 = !DILocation(line: 450, column: 6, scope: !6474)
!6474 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 450, column: 6)
!6475 = !DILocation(line: 450, column: 11, scope: !6474)
!6476 = !DILocation(line: 450, column: 6, scope: !6461)
!6477 = !DILocation(line: 451, column: 3, scope: !6474)
!6478 = !DILocation(line: 453, column: 32, scope: !6479)
!6479 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 453, column: 6)
!6480 = !DILocation(line: 453, column: 37, scope: !6479)
!6481 = !DILocation(line: 453, column: 42, scope: !6479)
!6482 = !DILocation(line: 453, column: 45, scope: !6479)
!6483 = !DILocation(line: 453, column: 50, scope: !6479)
!6484 = !DILocation(line: 453, column: 6, scope: !6461)
!6485 = !DILocation(line: 454, column: 3, scope: !6479)
!6486 = !DILocation(line: 455, column: 32, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 455, column: 6)
!6488 = !DILocation(line: 455, column: 37, scope: !6487)
!6489 = !DILocation(line: 455, column: 43, scope: !6487)
!6490 = !DILocation(line: 455, column: 46, scope: !6487)
!6491 = !DILocation(line: 455, column: 51, scope: !6487)
!6492 = !DILocation(line: 455, column: 6, scope: !6461)
!6493 = !DILocation(line: 456, column: 3, scope: !6487)
!6494 = !DILocation(line: 457, column: 6, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 457, column: 6)
!6496 = !DILocation(line: 457, column: 11, scope: !6495)
!6497 = !DILocation(line: 457, column: 6, scope: !6461)
!6498 = !DILocation(line: 457, column: 26, scope: !6495)
!6499 = !DILocation(line: 458, column: 6, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 458, column: 6)
!6501 = !DILocation(line: 458, column: 11, scope: !6500)
!6502 = !DILocation(line: 458, column: 6, scope: !6461)
!6503 = !DILocation(line: 458, column: 26, scope: !6500)
!6504 = !DILocation(line: 459, column: 6, scope: !6505)
!6505 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 459, column: 6)
!6506 = !DILocation(line: 459, column: 11, scope: !6505)
!6507 = !DILocation(line: 459, column: 6, scope: !6461)
!6508 = !DILocation(line: 459, column: 26, scope: !6505)
!6509 = !DILocation(line: 460, column: 6, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 460, column: 6)
!6511 = !DILocation(line: 460, column: 11, scope: !6510)
!6512 = !DILocation(line: 460, column: 6, scope: !6461)
!6513 = !DILocation(line: 460, column: 26, scope: !6510)
!6514 = !DILocation(line: 461, column: 6, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 461, column: 6)
!6516 = !DILocation(line: 461, column: 11, scope: !6515)
!6517 = !DILocation(line: 461, column: 6, scope: !6461)
!6518 = !DILocation(line: 461, column: 26, scope: !6515)
!6519 = !DILocation(line: 462, column: 6, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 462, column: 6)
!6521 = !DILocation(line: 462, column: 11, scope: !6520)
!6522 = !DILocation(line: 462, column: 6, scope: !6461)
!6523 = !DILocation(line: 462, column: 26, scope: !6520)
!6524 = !DILocation(line: 463, column: 6, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 463, column: 6)
!6526 = !DILocation(line: 463, column: 11, scope: !6525)
!6527 = !DILocation(line: 463, column: 6, scope: !6461)
!6528 = !DILocation(line: 463, column: 26, scope: !6525)
!6529 = !DILocation(line: 464, column: 6, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 464, column: 6)
!6531 = !DILocation(line: 464, column: 11, scope: !6530)
!6532 = !DILocation(line: 464, column: 6, scope: !6461)
!6533 = !DILocation(line: 464, column: 26, scope: !6530)
!6534 = !DILocation(line: 465, column: 6, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 465, column: 6)
!6536 = !DILocation(line: 465, column: 11, scope: !6535)
!6537 = !DILocation(line: 465, column: 6, scope: !6461)
!6538 = !DILocation(line: 465, column: 26, scope: !6535)
!6539 = !DILocation(line: 466, column: 6, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 466, column: 6)
!6541 = !DILocation(line: 466, column: 11, scope: !6540)
!6542 = !DILocation(line: 466, column: 6, scope: !6461)
!6543 = !DILocation(line: 466, column: 26, scope: !6540)
!6544 = !DILocation(line: 467, column: 6, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 467, column: 6)
!6546 = !DILocation(line: 467, column: 11, scope: !6545)
!6547 = !DILocation(line: 467, column: 6, scope: !6461)
!6548 = !DILocation(line: 467, column: 26, scope: !6545)
!6549 = !DILocation(line: 468, column: 6, scope: !6550)
!6550 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 468, column: 6)
!6551 = !DILocation(line: 468, column: 11, scope: !6550)
!6552 = !DILocation(line: 468, column: 6, scope: !6461)
!6553 = !DILocation(line: 468, column: 26, scope: !6550)
!6554 = !DILocation(line: 469, column: 6, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 469, column: 6)
!6556 = !DILocation(line: 469, column: 11, scope: !6555)
!6557 = !DILocation(line: 469, column: 6, scope: !6461)
!6558 = !DILocation(line: 469, column: 26, scope: !6555)
!6559 = !DILocation(line: 470, column: 6, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 470, column: 6)
!6561 = !DILocation(line: 470, column: 11, scope: !6560)
!6562 = !DILocation(line: 470, column: 6, scope: !6461)
!6563 = !DILocation(line: 470, column: 26, scope: !6560)
!6564 = !DILocation(line: 471, column: 6, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 471, column: 6)
!6566 = !DILocation(line: 471, column: 11, scope: !6565)
!6567 = !DILocation(line: 471, column: 6, scope: !6461)
!6568 = !DILocation(line: 471, column: 26, scope: !6565)
!6569 = !DILocation(line: 472, column: 6, scope: !6570)
!6570 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 472, column: 6)
!6571 = !DILocation(line: 472, column: 11, scope: !6570)
!6572 = !DILocation(line: 472, column: 6, scope: !6461)
!6573 = !DILocation(line: 472, column: 26, scope: !6570)
!6574 = !DILocation(line: 473, column: 6, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 473, column: 6)
!6576 = !DILocation(line: 473, column: 11, scope: !6575)
!6577 = !DILocation(line: 473, column: 6, scope: !6461)
!6578 = !DILocation(line: 473, column: 26, scope: !6575)
!6579 = !DILocation(line: 474, column: 6, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 474, column: 6)
!6581 = !DILocation(line: 474, column: 11, scope: !6580)
!6582 = !DILocation(line: 474, column: 6, scope: !6461)
!6583 = !DILocation(line: 474, column: 27, scope: !6580)
!6584 = !DILocation(line: 475, column: 6, scope: !6585)
!6585 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 475, column: 6)
!6586 = !DILocation(line: 475, column: 11, scope: !6585)
!6587 = !DILocation(line: 475, column: 6, scope: !6461)
!6588 = !DILocation(line: 475, column: 32, scope: !6585)
!6589 = !DILocation(line: 477, column: 50, scope: !6590)
!6590 = distinct !DILexicalBlock(scope: !6461, file: !163, line: 477, column: 6)
!6591 = !{i8 0, i8 2}
!6592 = !DILocation(line: 477, column: 6, scope: !6461)
!6593 = !DILocation(line: 478, column: 3, scope: !6590)
!6594 = !DILocation(line: 478, column: 3, scope: !6595)
!6595 = distinct !DILexicalBlock(scope: !6596, file: !163, line: 478, column: 3)
!6596 = distinct !DILexicalBlock(scope: !6590, file: !163, line: 478, column: 3)
!6597 = !{i32 -2141964453}
!6598 = !DILocation(line: 478, column: 3, scope: !6596)
!6599 = !DILocation(line: 480, column: 3, scope: !6590)
!6600 = !DILocation(line: 480, column: 3, scope: !6601)
!6601 = distinct !DILexicalBlock(scope: !6590, file: !163, line: 480, column: 3)
!6602 = !DILocation(line: 480, column: 3, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6601, file: !163, line: 480, column: 3)
!6604 = !DILocation(line: 480, column: 3, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6601, file: !163, line: 480, column: 3)
!6606 = !{i64 2153003046, i64 2153003075, i64 2153003121, i64 2153003179, i64 2153003233, i64 2153003287, i64 2153003342, i64 2153003373}
!6607 = !DILocation(line: 483, column: 2, scope: !6461)
!6608 = !DILocation(line: 484, column: 1, scope: !6461)
!6609 = !DISubprogram(name: "kmalloc_trace", scope: !163, file: !163, line: 525, type: !6610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6610 = !DISubroutineType(types: !6611)
!6611 = !{!173, !6612, !1171, !367}
!6612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6613, size: 64)
!6613 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6614, line: 11, flags: DIFlagFwdDecl)
!6614 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6615 = distinct !DISubprogram(name: "kmalloc_type", scope: !163, file: !163, line: 401, type: !6616, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6618)
!6616 = !DISubroutineType(types: !6617)
!6617 = !{!162, !1171, !370}
!6618 = !{!6619, !6620}
!6619 = !DILocalVariable(name: "flags", arg: 1, scope: !6615, file: !163, line: 401, type: !1171)
!6620 = !DILocalVariable(name: "caller", arg: 2, scope: !6615, file: !163, line: 401, type: !370)
!6621 = !DILocation(line: 401, column: 67, scope: !6615)
!6622 = !DILocation(line: 401, column: 88, scope: !6615)
!6623 = !DILocation(line: 407, column: 6, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6615, file: !163, line: 407, column: 6)
!6625 = !DILocation(line: 407, column: 6, scope: !6615)
!6626 = !DILocation(line: 413, column: 3, scope: !6624)
!6627 = !DILocation(line: 423, column: 38, scope: !6628)
!6628 = distinct !DILexicalBlock(scope: !6615, file: !163, line: 423, column: 6)
!6629 = !DILocation(line: 423, column: 44, scope: !6628)
!6630 = !DILocation(line: 423, column: 6, scope: !6615)
!6631 = !DILocation(line: 424, column: 3, scope: !6628)
!6632 = !DILocation(line: 426, column: 3, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6615, file: !163, line: 425, column: 6)
!6634 = !DILocation(line: 429, column: 1, scope: !6615)
!6635 = !DISubprogram(name: "__kmalloc", scope: !163, file: !163, line: 488, type: !6295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6636 = !DISubprogram(name: "__compiletime_assert_204", scope: !163, file: !163, line: 478, type: !1022, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6637 = distinct !DISubprogram(name: "native_save_fl", scope: !6308, file: !6308, line: 17, type: !6309, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6638)
!6638 = !{!6639}
!6639 = !DILocalVariable(name: "flags", scope: !6637, file: !6308, line: 19, type: !370)
!6640 = !DILocation(line: 19, column: 2, scope: !6637)
!6641 = !DILocation(line: 19, column: 16, scope: !6637)
!6642 = !DILocation(line: 26, column: 2, scope: !6637)
!6643 = !{i64 1901936, i64 1901957}
!6644 = !DILocation(line: 32, column: 9, scope: !6637)
!6645 = !DILocation(line: 33, column: 1, scope: !6637)
!6646 = !DILocation(line: 32, column: 2, scope: !6637)
!6647 = !DISubprogram(name: "acpi_walk_resources", scope: !5472, file: !5472, line: 819, type: !6648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6648 = !DISubroutineType(types: !6649)
!6649 = !{!4865, !196, !320, !6650, !173}
!6650 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_resource_callback", file: !5472, line: 791, baseType: !6651)
!6651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6652, size: 64)
!6652 = !DISubroutineType(types: !6653)
!6653 = !{!4865, !6654, !173}
!6654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5642, size: 64)
!6655 = distinct !DISubprogram(name: "acpi_pci_link_check_current", scope: !3, file: !3, line: 173, type: !6652, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6656)
!6656 = !{!6657, !6658, !6659, !6660, !6664}
!6657 = !DILocalVariable(name: "resource", arg: 1, scope: !6655, file: !3, line: 173, type: !6654)
!6658 = !DILocalVariable(name: "context", arg: 2, scope: !6655, file: !3, line: 174, type: !173)
!6659 = !DILocalVariable(name: "irq", scope: !6655, file: !3, line: 176, type: !786)
!6660 = !DILocalVariable(name: "p", scope: !6661, file: !3, line: 184, type: !6663)
!6661 = distinct !DILexicalBlock(scope: !6662, file: !3, line: 183, column: 3)
!6662 = distinct !DILexicalBlock(scope: !6655, file: !3, line: 178, column: 26)
!6663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 64)
!6664 = !DILocalVariable(name: "p", scope: !6665, file: !3, line: 198, type: !6666)
!6665 = distinct !DILexicalBlock(scope: !6662, file: !3, line: 197, column: 3)
!6666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5838, size: 64)
!6667 = !DILocation(line: 173, column: 70, scope: !6655)
!6668 = !DILocation(line: 174, column: 19, scope: !6655)
!6669 = !DILocation(line: 176, column: 2, scope: !6655)
!6670 = !DILocation(line: 176, column: 7, scope: !6655)
!6671 = !DILocation(line: 176, column: 13, scope: !6655)
!6672 = !DILocation(line: 178, column: 10, scope: !6655)
!6673 = !DILocation(line: 178, column: 20, scope: !6655)
!6674 = !DILocation(line: 178, column: 2, scope: !6655)
!6675 = !DILocation(line: 181, column: 3, scope: !6662)
!6676 = !DILocation(line: 184, column: 4, scope: !6661)
!6677 = !DILocation(line: 184, column: 30, scope: !6661)
!6678 = !DILocation(line: 184, column: 35, scope: !6661)
!6679 = !DILocation(line: 184, column: 45, scope: !6661)
!6680 = !DILocation(line: 185, column: 9, scope: !6681)
!6681 = distinct !DILexicalBlock(scope: !6661, file: !3, line: 185, column: 8)
!6682 = !DILocation(line: 185, column: 12, scope: !6681)
!6683 = !DILocation(line: 185, column: 8, scope: !6661)
!6684 = !DILocation(line: 190, column: 5, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6686, file: !3, line: 190, column: 5)
!6686 = distinct !DILexicalBlock(scope: !6687, file: !3, line: 190, column: 5)
!6687 = distinct !DILexicalBlock(scope: !6681, file: !3, line: 185, column: 29)
!6688 = !DILocation(line: 190, column: 5, scope: !6686)
!6689 = !DILocation(line: 191, column: 5, scope: !6687)
!6690 = !DILocation(line: 193, column: 11, scope: !6661)
!6691 = !DILocation(line: 193, column: 14, scope: !6661)
!6692 = !DILocation(line: 193, column: 5, scope: !6661)
!6693 = !DILocation(line: 193, column: 9, scope: !6661)
!6694 = !DILocation(line: 194, column: 4, scope: !6661)
!6695 = !DILocation(line: 195, column: 3, scope: !6662)
!6696 = !DILocation(line: 198, column: 4, scope: !6665)
!6697 = !DILocation(line: 198, column: 39, scope: !6665)
!6698 = !DILocation(line: 199, column: 9, scope: !6665)
!6699 = !DILocation(line: 199, column: 19, scope: !6665)
!6700 = !DILocation(line: 200, column: 9, scope: !6701)
!6701 = distinct !DILexicalBlock(scope: !6665, file: !3, line: 200, column: 8)
!6702 = !DILocation(line: 200, column: 12, scope: !6701)
!6703 = !DILocation(line: 200, column: 8, scope: !6665)
!6704 = !DILocation(line: 205, column: 5, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6706, file: !3, line: 205, column: 5)
!6706 = distinct !DILexicalBlock(scope: !6707, file: !3, line: 205, column: 5)
!6707 = distinct !DILexicalBlock(scope: !6701, file: !3, line: 200, column: 29)
!6708 = !DILocation(line: 205, column: 5, scope: !6706)
!6709 = !DILocation(line: 206, column: 5, scope: !6707)
!6710 = !DILocation(line: 208, column: 11, scope: !6665)
!6711 = !DILocation(line: 208, column: 14, scope: !6665)
!6712 = !DILocation(line: 208, column: 5, scope: !6665)
!6713 = !DILocation(line: 208, column: 9, scope: !6665)
!6714 = !DILocation(line: 209, column: 4, scope: !6665)
!6715 = !DILocation(line: 210, column: 3, scope: !6662)
!6716 = !DILocation(line: 213, column: 3, scope: !6717)
!6717 = distinct !DILexicalBlock(scope: !6718, file: !3, line: 213, column: 3)
!6718 = distinct !DILexicalBlock(scope: !6662, file: !3, line: 213, column: 3)
!6719 = !DILocation(line: 213, column: 3, scope: !6718)
!6720 = !DILocation(line: 215, column: 3, scope: !6662)
!6721 = !DILocation(line: 218, column: 2, scope: !6655)
!6722 = !DILocation(line: 219, column: 1, scope: !6655)
!6723 = distinct !DISubprogram(name: "acpi_irq_pci_sharing_penalty", scope: !3, file: !3, line: 451, type: !2416, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6724)
!6724 = !{!6725, !6726, !6727, !6728, !6729, !6732}
!6725 = !DILocalVariable(name: "irq", arg: 1, scope: !6723, file: !3, line: 451, type: !109)
!6726 = !DILocalVariable(name: "link", scope: !6723, file: !3, line: 453, type: !174)
!6727 = !DILocalVariable(name: "penalty", scope: !6723, file: !3, line: 454, type: !109)
!6728 = !DILocalVariable(name: "i", scope: !6723, file: !3, line: 455, type: !109)
!6729 = !DILocalVariable(name: "__mptr", scope: !6730, file: !3, line: 457, type: !173)
!6730 = distinct !DILexicalBlock(scope: !6731, file: !3, line: 457, column: 2)
!6731 = distinct !DILexicalBlock(scope: !6723, file: !3, line: 457, column: 2)
!6732 = !DILocalVariable(name: "__mptr", scope: !6733, file: !3, line: 457, type: !173)
!6733 = distinct !DILexicalBlock(scope: !6734, file: !3, line: 457, column: 2)
!6734 = distinct !DILexicalBlock(scope: !6731, file: !3, line: 457, column: 2)
!6735 = !DILocation(line: 451, column: 45, scope: !6723)
!6736 = !DILocation(line: 453, column: 2, scope: !6723)
!6737 = !DILocation(line: 453, column: 24, scope: !6723)
!6738 = !DILocation(line: 454, column: 2, scope: !6723)
!6739 = !DILocation(line: 454, column: 6, scope: !6723)
!6740 = !DILocation(line: 455, column: 2, scope: !6723)
!6741 = !DILocation(line: 455, column: 6, scope: !6723)
!6742 = !DILocation(line: 457, column: 2, scope: !6730)
!6743 = !DILocation(line: 457, column: 2, scope: !6731)
!6744 = !DILocation(line: 457, column: 2, scope: !6734)
!6745 = !DILocation(line: 462, column: 7, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 462, column: 7)
!6747 = distinct !DILexicalBlock(scope: !6734, file: !3, line: 457, column: 51)
!6748 = !DILocation(line: 462, column: 13, scope: !6746)
!6749 = !DILocation(line: 462, column: 17, scope: !6746)
!6750 = !DILocation(line: 462, column: 24, scope: !6746)
!6751 = !DILocation(line: 462, column: 27, scope: !6746)
!6752 = !DILocation(line: 462, column: 33, scope: !6746)
!6753 = !DILocation(line: 462, column: 37, scope: !6746)
!6754 = !DILocation(line: 462, column: 47, scope: !6746)
!6755 = !DILocation(line: 462, column: 44, scope: !6746)
!6756 = !DILocation(line: 462, column: 7, scope: !6747)
!6757 = !DILocation(line: 463, column: 12, scope: !6746)
!6758 = !DILocation(line: 463, column: 4, scope: !6746)
!6759 = !DILocation(line: 468, column: 10, scope: !6760)
!6760 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 468, column: 3)
!6761 = !DILocation(line: 468, column: 8, scope: !6760)
!6762 = !DILocation(line: 468, column: 15, scope: !6763)
!6763 = distinct !DILexicalBlock(scope: !6760, file: !3, line: 468, column: 3)
!6764 = !DILocation(line: 468, column: 19, scope: !6763)
!6765 = !DILocation(line: 468, column: 25, scope: !6763)
!6766 = !DILocation(line: 468, column: 29, scope: !6763)
!6767 = !DILocation(line: 468, column: 17, scope: !6763)
!6768 = !DILocation(line: 468, column: 3, scope: !6760)
!6769 = !DILocation(line: 469, column: 8, scope: !6770)
!6770 = distinct !DILexicalBlock(scope: !6763, file: !3, line: 469, column: 8)
!6771 = !DILocation(line: 469, column: 14, scope: !6770)
!6772 = !DILocation(line: 469, column: 18, scope: !6770)
!6773 = !DILocation(line: 469, column: 27, scope: !6770)
!6774 = !DILocation(line: 469, column: 33, scope: !6770)
!6775 = !DILocation(line: 469, column: 30, scope: !6770)
!6776 = !DILocation(line: 469, column: 8, scope: !6763)
!6777 = !DILocation(line: 471, column: 6, scope: !6770)
!6778 = !DILocation(line: 471, column: 12, scope: !6770)
!6779 = !DILocation(line: 471, column: 16, scope: !6770)
!6780 = !DILocation(line: 470, column: 42, scope: !6770)
!6781 = !DILocation(line: 470, column: 13, scope: !6770)
!6782 = !DILocation(line: 470, column: 5, scope: !6770)
!6783 = !DILocation(line: 468, column: 46, scope: !6763)
!6784 = !DILocation(line: 468, column: 3, scope: !6763)
!6785 = distinct !{!6785, !6768, !6786, !5093, !5094}
!6786 = !DILocation(line: 471, column: 16, scope: !6760)
!6787 = !DILocation(line: 472, column: 2, scope: !6747)
!6788 = !DILocation(line: 457, column: 2, scope: !6733)
!6789 = distinct !{!6789, !6743, !6790, !5093, !5094}
!6790 = !DILocation(line: 472, column: 2, scope: !6731)
!6791 = !DILocation(line: 474, column: 9, scope: !6723)
!6792 = !DILocation(line: 475, column: 1, scope: !6723)
!6793 = !DILocation(line: 474, column: 2, scope: !6723)
!6794 = distinct !DISubprogram(name: "acpi_irq_penalty_update", scope: !3, file: !3, line: 787, type: !6795, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6797)
!6795 = !DISubroutineType(types: !6796)
!6796 = !{!109, !320, !109}
!6797 = !{!6798, !6799, !6800, !6801, !6805, !6806}
!6798 = !DILocalVariable(name: "str", arg: 1, scope: !6794, file: !3, line: 787, type: !320)
!6799 = !DILocalVariable(name: "used", arg: 2, scope: !6794, file: !3, line: 787, type: !109)
!6800 = !DILocalVariable(name: "i", scope: !6794, file: !3, line: 789, type: !109)
!6801 = !DILocalVariable(name: "retval", scope: !6802, file: !3, line: 792, type: !109)
!6802 = distinct !DILexicalBlock(scope: !6803, file: !3, line: 791, column: 27)
!6803 = distinct !DILexicalBlock(scope: !6804, file: !3, line: 791, column: 2)
!6804 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 791, column: 2)
!6805 = !DILocalVariable(name: "irq", scope: !6802, file: !3, line: 793, type: !109)
!6806 = !DILocalVariable(name: "new_penalty", scope: !6802, file: !3, line: 794, type: !109)
!6807 = !DILocation(line: 787, column: 49, scope: !6794)
!6808 = !DILocation(line: 787, column: 58, scope: !6794)
!6809 = !DILocation(line: 789, column: 2, scope: !6794)
!6810 = !DILocation(line: 789, column: 6, scope: !6794)
!6811 = !DILocation(line: 791, column: 9, scope: !6804)
!6812 = !DILocation(line: 791, column: 7, scope: !6804)
!6813 = !DILocation(line: 791, column: 14, scope: !6803)
!6814 = !DILocation(line: 791, column: 16, scope: !6803)
!6815 = !DILocation(line: 791, column: 2, scope: !6804)
!6816 = !DILocation(line: 792, column: 3, scope: !6802)
!6817 = !DILocation(line: 792, column: 7, scope: !6802)
!6818 = !DILocation(line: 793, column: 3, scope: !6802)
!6819 = !DILocation(line: 793, column: 7, scope: !6802)
!6820 = !DILocation(line: 794, column: 3, scope: !6802)
!6821 = !DILocation(line: 794, column: 7, scope: !6802)
!6822 = !DILocation(line: 796, column: 12, scope: !6802)
!6823 = !DILocation(line: 796, column: 10, scope: !6802)
!6824 = !DILocation(line: 798, column: 8, scope: !6825)
!6825 = distinct !DILexicalBlock(scope: !6802, file: !3, line: 798, column: 7)
!6826 = !DILocation(line: 798, column: 7, scope: !6802)
!6827 = !DILocation(line: 799, column: 4, scope: !6825)
!6828 = !DILocation(line: 802, column: 8, scope: !6829)
!6829 = distinct !DILexicalBlock(scope: !6802, file: !3, line: 802, column: 7)
!6830 = !DILocation(line: 802, column: 12, scope: !6829)
!6831 = !DILocation(line: 802, column: 17, scope: !6829)
!6832 = !DILocation(line: 802, column: 21, scope: !6829)
!6833 = !DILocation(line: 802, column: 25, scope: !6829)
!6834 = !DILocation(line: 802, column: 7, scope: !6802)
!6835 = !DILocation(line: 803, column: 4, scope: !6829)
!6836 = !DILocation(line: 805, column: 7, scope: !6837)
!6837 = distinct !DILexicalBlock(scope: !6802, file: !3, line: 805, column: 7)
!6838 = !DILocation(line: 805, column: 7, scope: !6802)
!6839 = !DILocation(line: 806, column: 39, scope: !6837)
!6840 = !DILocation(line: 806, column: 18, scope: !6837)
!6841 = !DILocation(line: 806, column: 44, scope: !6837)
!6842 = !DILocation(line: 806, column: 16, scope: !6837)
!6843 = !DILocation(line: 806, column: 4, scope: !6837)
!6844 = !DILocation(line: 809, column: 16, scope: !6837)
!6845 = !DILocation(line: 811, column: 31, scope: !6802)
!6846 = !DILocation(line: 811, column: 24, scope: !6802)
!6847 = !DILocation(line: 811, column: 3, scope: !6802)
!6848 = !DILocation(line: 811, column: 29, scope: !6802)
!6849 = !DILocation(line: 812, column: 7, scope: !6850)
!6850 = distinct !DILexicalBlock(scope: !6802, file: !3, line: 812, column: 7)
!6851 = !DILocation(line: 812, column: 14, scope: !6850)
!6852 = !DILocation(line: 812, column: 7, scope: !6802)
!6853 = !DILocation(line: 813, column: 4, scope: !6850)
!6854 = !DILocation(line: 814, column: 2, scope: !6803)
!6855 = !DILocation(line: 814, column: 2, scope: !6802)
!6856 = !DILocation(line: 791, column: 23, scope: !6803)
!6857 = !DILocation(line: 791, column: 2, scope: !6803)
!6858 = distinct !{!6858, !6815, !6859, !5093, !5094}
!6859 = !DILocation(line: 814, column: 2, scope: !6804)
!6860 = !DILocation(line: 816, column: 1, scope: !6794)
!6861 = !DILocation(line: 815, column: 2, scope: !6794)
!6862 = !DISubprogram(name: "get_option", scope: !6863, file: !6863, line: 207, type: !6864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6863 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6864 = !DISubroutineType(types: !6865)
!6865 = !{!109, !5123, !786}
!6866 = distinct !DISubprogram(name: "irqrouter_resume", scope: !3, file: !3, line: 762, type: !1022, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6867)
!6867 = !{!6868, !6869, !6872}
!6868 = !DILocalVariable(name: "link", scope: !6866, file: !3, line: 764, type: !174)
!6869 = !DILocalVariable(name: "__mptr", scope: !6870, file: !3, line: 766, type: !173)
!6870 = distinct !DILexicalBlock(scope: !6871, file: !3, line: 766, column: 2)
!6871 = distinct !DILexicalBlock(scope: !6866, file: !3, line: 766, column: 2)
!6872 = !DILocalVariable(name: "__mptr", scope: !6873, file: !3, line: 766, type: !173)
!6873 = distinct !DILexicalBlock(scope: !6874, file: !3, line: 766, column: 2)
!6874 = distinct !DILexicalBlock(scope: !6871, file: !3, line: 766, column: 2)
!6875 = !DILocation(line: 764, column: 2, scope: !6866)
!6876 = !DILocation(line: 764, column: 24, scope: !6866)
!6877 = !DILocation(line: 766, column: 2, scope: !6870)
!6878 = !DILocation(line: 766, column: 2, scope: !6871)
!6879 = !DILocation(line: 766, column: 2, scope: !6874)
!6880 = !DILocation(line: 767, column: 24, scope: !6881)
!6881 = distinct !DILexicalBlock(scope: !6874, file: !3, line: 766, column: 51)
!6882 = !DILocation(line: 767, column: 3, scope: !6881)
!6883 = !DILocation(line: 768, column: 2, scope: !6881)
!6884 = !DILocation(line: 766, column: 2, scope: !6873)
!6885 = distinct !{!6885, !6878, !6886, !5093, !5094}
!6886 = !DILocation(line: 768, column: 2, scope: !6871)
!6887 = !DILocation(line: 769, column: 1, scope: !6866)
!6888 = distinct !DISubprogram(name: "acpi_pci_link_resume", scope: !3, file: !3, line: 754, type: !5239, scopeLine: 755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6889)
!6889 = !{!6890}
!6890 = !DILocalVariable(name: "link", arg: 1, scope: !6888, file: !3, line: 754, type: !174)
!6891 = !DILocation(line: 754, column: 55, scope: !6888)
!6892 = !DILocation(line: 756, column: 6, scope: !6893)
!6893 = distinct !DILexicalBlock(scope: !6888, file: !3, line: 756, column: 6)
!6894 = !DILocation(line: 756, column: 12, scope: !6893)
!6895 = !DILocation(line: 756, column: 19, scope: !6893)
!6896 = !DILocation(line: 756, column: 22, scope: !6893)
!6897 = !DILocation(line: 756, column: 28, scope: !6893)
!6898 = !DILocation(line: 756, column: 32, scope: !6893)
!6899 = !DILocation(line: 756, column: 39, scope: !6893)
!6900 = !DILocation(line: 756, column: 42, scope: !6893)
!6901 = !DILocation(line: 756, column: 48, scope: !6893)
!6902 = !DILocation(line: 756, column: 52, scope: !6893)
!6903 = !DILocation(line: 756, column: 6, scope: !6888)
!6904 = !DILocation(line: 757, column: 29, scope: !6893)
!6905 = !DILocation(line: 757, column: 35, scope: !6893)
!6906 = !DILocation(line: 757, column: 41, scope: !6893)
!6907 = !DILocation(line: 757, column: 45, scope: !6893)
!6908 = !DILocation(line: 757, column: 11, scope: !6893)
!6909 = !DILocation(line: 757, column: 3, scope: !6893)
!6910 = !DILocation(line: 759, column: 2, scope: !6888)
!6911 = !DILocation(line: 760, column: 1, scope: !6888)
!6912 = distinct !DISubprogram(name: "acpi_pci_link_add", scope: !3, file: !3, line: 704, type: !4808, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6913)
!6913 = !{!6914, !6915, !6916, !6917, !6918, !6919, !6920}
!6914 = !DILocalVariable(name: "device", arg: 1, scope: !6912, file: !3, line: 704, type: !185)
!6915 = !DILocalVariable(name: "not_used", arg: 2, scope: !6912, file: !3, line: 705, type: !4263)
!6916 = !DILocalVariable(name: "handle", scope: !6912, file: !3, line: 707, type: !196)
!6917 = !DILocalVariable(name: "link", scope: !6912, file: !3, line: 708, type: !174)
!6918 = !DILocalVariable(name: "result", scope: !6912, file: !3, line: 709, type: !109)
!6919 = !DILocalVariable(name: "i", scope: !6912, file: !3, line: 710, type: !109)
!6920 = !DILabel(scope: !6912, name: "end", file: !3, line: 743)
!6921 = !DILocation(line: 704, column: 50, scope: !6912)
!6922 = !DILocation(line: 705, column: 38, scope: !6912)
!6923 = !DILocation(line: 707, column: 2, scope: !6912)
!6924 = !DILocation(line: 707, column: 14, scope: !6912)
!6925 = !DILocation(line: 707, column: 23, scope: !6912)
!6926 = !DILocation(line: 707, column: 31, scope: !6912)
!6927 = !DILocation(line: 708, column: 2, scope: !6912)
!6928 = !DILocation(line: 708, column: 24, scope: !6912)
!6929 = !DILocation(line: 709, column: 2, scope: !6912)
!6930 = !DILocation(line: 709, column: 6, scope: !6912)
!6931 = !DILocation(line: 710, column: 2, scope: !6912)
!6932 = !DILocation(line: 710, column: 6, scope: !6912)
!6933 = !DILocation(line: 712, column: 9, scope: !6912)
!6934 = !DILocation(line: 712, column: 7, scope: !6912)
!6935 = !DILocation(line: 713, column: 7, scope: !6936)
!6936 = distinct !DILexicalBlock(scope: !6912, file: !3, line: 713, column: 6)
!6937 = !DILocation(line: 713, column: 6, scope: !6912)
!6938 = !DILocation(line: 714, column: 3, scope: !6936)
!6939 = !DILocation(line: 716, column: 17, scope: !6912)
!6940 = !DILocation(line: 716, column: 2, scope: !6912)
!6941 = !DILocation(line: 716, column: 8, scope: !6912)
!6942 = !DILocation(line: 716, column: 15, scope: !6912)
!6943 = !DILocation(line: 717, column: 9, scope: !6912)
!6944 = !DILocation(line: 717, column: 2, scope: !6912)
!6945 = !DILocation(line: 718, column: 9, scope: !6912)
!6946 = !DILocation(line: 718, column: 2, scope: !6912)
!6947 = !DILocation(line: 719, column: 24, scope: !6912)
!6948 = !DILocation(line: 719, column: 2, scope: !6912)
!6949 = !DILocation(line: 719, column: 10, scope: !6912)
!6950 = !DILocation(line: 719, column: 22, scope: !6912)
!6951 = !DILocation(line: 721, column: 2, scope: !6912)
!6952 = !DILocation(line: 722, column: 38, scope: !6912)
!6953 = !DILocation(line: 722, column: 11, scope: !6912)
!6954 = !DILocation(line: 722, column: 9, scope: !6912)
!6955 = !DILocation(line: 723, column: 6, scope: !6956)
!6956 = distinct !DILexicalBlock(scope: !6912, file: !3, line: 723, column: 6)
!6957 = !DILocation(line: 723, column: 6, scope: !6912)
!6958 = !DILocation(line: 724, column: 3, scope: !6956)
!6959 = !DILocation(line: 727, column: 28, scope: !6912)
!6960 = !DILocation(line: 727, column: 2, scope: !6912)
!6961 = !DILocation(line: 729, column: 2, scope: !6962)
!6962 = distinct !DILexicalBlock(scope: !6912, file: !3, line: 729, column: 2)
!6963 = !DILocation(line: 729, column: 2, scope: !6964)
!6964 = distinct !DILexicalBlock(scope: !6962, file: !3, line: 729, column: 2)
!6965 = !DILocation(line: 732, column: 9, scope: !6966)
!6966 = distinct !DILexicalBlock(scope: !6912, file: !3, line: 732, column: 2)
!6967 = !DILocation(line: 732, column: 7, scope: !6966)
!6968 = !DILocation(line: 732, column: 14, scope: !6969)
!6969 = distinct !DILexicalBlock(scope: !6966, file: !3, line: 732, column: 2)
!6970 = !DILocation(line: 732, column: 18, scope: !6969)
!6971 = !DILocation(line: 732, column: 24, scope: !6969)
!6972 = !DILocation(line: 732, column: 28, scope: !6969)
!6973 = !DILocation(line: 732, column: 16, scope: !6969)
!6974 = !DILocation(line: 732, column: 2, scope: !6966)
!6975 = !DILocation(line: 733, column: 7, scope: !6976)
!6976 = distinct !DILexicalBlock(scope: !6977, file: !3, line: 733, column: 7)
!6977 = distinct !DILexicalBlock(scope: !6969, file: !3, line: 732, column: 49)
!6978 = !DILocation(line: 733, column: 13, scope: !6976)
!6979 = !DILocation(line: 733, column: 17, scope: !6976)
!6980 = !DILocation(line: 733, column: 27, scope: !6976)
!6981 = !DILocation(line: 733, column: 33, scope: !6976)
!6982 = !DILocation(line: 733, column: 37, scope: !6976)
!6983 = !DILocation(line: 733, column: 46, scope: !6976)
!6984 = !DILocation(line: 733, column: 24, scope: !6976)
!6985 = !DILocation(line: 733, column: 7, scope: !6977)
!6986 = !DILocation(line: 734, column: 4, scope: !6987)
!6987 = distinct !DILexicalBlock(scope: !6988, file: !3, line: 734, column: 4)
!6988 = distinct !DILexicalBlock(scope: !6976, file: !3, line: 734, column: 4)
!6989 = !DILocation(line: 734, column: 4, scope: !6988)
!6990 = !DILocation(line: 734, column: 4, scope: !6976)
!6991 = !DILocation(line: 736, column: 2, scope: !6977)
!6992 = !DILocation(line: 732, column: 45, scope: !6969)
!6993 = !DILocation(line: 732, column: 2, scope: !6969)
!6994 = distinct !{!6994, !6974, !6995, !5093, !5094}
!6995 = !DILocation(line: 736, column: 2, scope: !6966)
!6996 = !DILocation(line: 738, column: 7, scope: !6997)
!6997 = distinct !DILexicalBlock(scope: !6912, file: !3, line: 738, column: 6)
!6998 = !DILocation(line: 738, column: 13, scope: !6997)
!6999 = !DILocation(line: 738, column: 21, scope: !6997)
!7000 = !DILocation(line: 738, column: 28, scope: !6997)
!7001 = !DILocation(line: 738, column: 6, scope: !6912)
!7002 = !DILocation(line: 739, column: 3, scope: !7003)
!7003 = distinct !DILexicalBlock(scope: !6997, file: !3, line: 739, column: 3)
!7004 = !DILocation(line: 739, column: 3, scope: !7005)
!7005 = distinct !DILexicalBlock(scope: !7003, file: !3, line: 739, column: 3)
!7006 = !DILocation(line: 739, column: 3, scope: !6997)
!7007 = !DILocation(line: 741, column: 17, scope: !6912)
!7008 = !DILocation(line: 741, column: 23, scope: !6912)
!7009 = !DILocation(line: 741, column: 2, scope: !6912)
!7010 = !DILocation(line: 743, column: 7, scope: !6912)
!7011 = !DILocation(line: 745, column: 23, scope: !6912)
!7012 = !DILocation(line: 745, column: 2, scope: !6912)
!7013 = !DILocation(line: 746, column: 2, scope: !6912)
!7014 = !DILocation(line: 748, column: 6, scope: !7015)
!7015 = distinct !DILexicalBlock(scope: !6912, file: !3, line: 748, column: 6)
!7016 = !DILocation(line: 748, column: 6, scope: !6912)
!7017 = !DILocation(line: 749, column: 9, scope: !7015)
!7018 = !DILocation(line: 749, column: 3, scope: !7015)
!7019 = !DILocation(line: 751, column: 9, scope: !6912)
!7020 = !DILocation(line: 751, column: 16, scope: !6912)
!7021 = !DILocation(line: 751, column: 22, scope: !6912)
!7022 = !DILocation(line: 751, column: 2, scope: !6912)
!7023 = !DILocation(line: 752, column: 1, scope: !6912)
!7024 = distinct !DISubprogram(name: "acpi_pci_link_remove", scope: !3, file: !3, line: 771, type: !4812, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7025)
!7025 = !{!7026, !7027}
!7026 = !DILocalVariable(name: "device", arg: 1, scope: !7024, file: !3, line: 771, type: !185)
!7027 = !DILocalVariable(name: "link", scope: !7024, file: !3, line: 773, type: !174)
!7028 = !DILocation(line: 771, column: 54, scope: !7024)
!7029 = !DILocation(line: 773, column: 2, scope: !7024)
!7030 = !DILocation(line: 773, column: 24, scope: !7024)
!7031 = !DILocation(line: 775, column: 26, scope: !7024)
!7032 = !DILocation(line: 775, column: 9, scope: !7024)
!7033 = !DILocation(line: 775, column: 7, scope: !7024)
!7034 = !DILocation(line: 777, column: 2, scope: !7024)
!7035 = !DILocation(line: 778, column: 12, scope: !7024)
!7036 = !DILocation(line: 778, column: 18, scope: !7024)
!7037 = !DILocation(line: 778, column: 2, scope: !7024)
!7038 = !DILocation(line: 779, column: 2, scope: !7024)
!7039 = !DILocation(line: 781, column: 8, scope: !7024)
!7040 = !DILocation(line: 781, column: 2, scope: !7024)
!7041 = !DILocation(line: 782, column: 1, scope: !7024)
!7042 = !DISubprogram(name: "strcpy", scope: !7043, file: !7043, line: 63, type: !7044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7043 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!7044 = !DISubroutineType(types: !7045)
!7045 = !{!320, !320, !240}
!7046 = distinct !DISubprogram(name: "acpi_pci_link_get_possible", scope: !3, file: !3, line: 155, type: !5239, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7047)
!7047 = !{!7048, !7049, !7050}
!7048 = !DILocalVariable(name: "link", arg: 1, scope: !7046, file: !3, line: 155, type: !174)
!7049 = !DILocalVariable(name: "handle", scope: !7046, file: !3, line: 157, type: !196)
!7050 = !DILocalVariable(name: "status", scope: !7046, file: !3, line: 158, type: !4865)
!7051 = !DILocation(line: 155, column: 61, scope: !7046)
!7052 = !DILocation(line: 157, column: 2, scope: !7046)
!7053 = !DILocation(line: 157, column: 14, scope: !7046)
!7054 = !DILocation(line: 157, column: 23, scope: !7046)
!7055 = !DILocation(line: 157, column: 29, scope: !7046)
!7056 = !DILocation(line: 157, column: 37, scope: !7046)
!7057 = !DILocation(line: 158, column: 2, scope: !7046)
!7058 = !DILocation(line: 158, column: 14, scope: !7046)
!7059 = !DILocation(line: 160, column: 31, scope: !7046)
!7060 = !DILocation(line: 161, column: 40, scope: !7046)
!7061 = !DILocation(line: 160, column: 11, scope: !7046)
!7062 = !DILocation(line: 160, column: 9, scope: !7046)
!7063 = !DILocation(line: 162, column: 6, scope: !7064)
!7064 = distinct !DILexicalBlock(scope: !7046, file: !3, line: 162, column: 6)
!7065 = !DILocation(line: 162, column: 6, scope: !7046)
!7066 = !DILocation(line: 163, column: 3, scope: !7067)
!7067 = distinct !DILexicalBlock(scope: !7068, file: !3, line: 163, column: 3)
!7068 = distinct !DILexicalBlock(scope: !7069, file: !3, line: 163, column: 3)
!7069 = distinct !DILexicalBlock(scope: !7064, file: !3, line: 162, column: 28)
!7070 = !DILocation(line: 163, column: 3, scope: !7068)
!7071 = !DILocation(line: 164, column: 3, scope: !7069)
!7072 = !DILocation(line: 167, column: 2, scope: !7073)
!7073 = distinct !DILexicalBlock(scope: !7074, file: !3, line: 167, column: 2)
!7074 = distinct !DILexicalBlock(scope: !7046, file: !3, line: 167, column: 2)
!7075 = !DILocation(line: 167, column: 2, scope: !7074)
!7076 = !DILocation(line: 170, column: 2, scope: !7046)
!7077 = !DILocation(line: 171, column: 1, scope: !7046)
!7078 = !DISubprogram(name: "_printk", scope: !7079, file: !7079, line: 153, type: !7080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7079 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!7080 = !DISubroutineType(types: !7081)
!7081 = !{!109, !240, null}
!7082 = distinct !DISubprogram(name: "list_add_tail", scope: !7083, file: !7083, line: 181, type: !7084, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7086)
!7083 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!7084 = !DISubroutineType(types: !7085)
!7085 = !{null, !182, !182}
!7086 = !{!7087, !7088}
!7087 = !DILocalVariable(name: "new", arg: 1, scope: !7082, file: !7083, line: 181, type: !182)
!7088 = !DILocalVariable(name: "head", arg: 2, scope: !7082, file: !7083, line: 181, type: !182)
!7089 = !DILocation(line: 181, column: 52, scope: !7082)
!7090 = !DILocation(line: 181, column: 75, scope: !7082)
!7091 = !DILocation(line: 183, column: 13, scope: !7082)
!7092 = !DILocation(line: 183, column: 18, scope: !7082)
!7093 = !DILocation(line: 183, column: 24, scope: !7082)
!7094 = !DILocation(line: 183, column: 30, scope: !7082)
!7095 = !DILocation(line: 183, column: 2, scope: !7082)
!7096 = !DILocation(line: 184, column: 1, scope: !7082)
!7097 = distinct !DISubprogram(name: "acpi_pci_link_check_possible", scope: !3, file: !3, line: 84, type: !6652, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7098)
!7098 = !{!7099, !7100, !7101, !7102, !7103, !7104, !7107}
!7099 = !DILocalVariable(name: "resource", arg: 1, scope: !7097, file: !3, line: 84, type: !6654)
!7100 = !DILocalVariable(name: "context", arg: 2, scope: !7097, file: !3, line: 85, type: !173)
!7101 = !DILocalVariable(name: "link", scope: !7097, file: !3, line: 87, type: !174)
!7102 = !DILocalVariable(name: "handle", scope: !7097, file: !3, line: 88, type: !196)
!7103 = !DILocalVariable(name: "i", scope: !7097, file: !3, line: 89, type: !190)
!7104 = !DILocalVariable(name: "p", scope: !7105, file: !3, line: 97, type: !6663)
!7105 = distinct !DILexicalBlock(scope: !7106, file: !3, line: 96, column: 3)
!7106 = distinct !DILexicalBlock(scope: !7097, file: !3, line: 91, column: 26)
!7107 = !DILocalVariable(name: "p", scope: !7108, file: !3, line: 122, type: !6666)
!7108 = distinct !DILexicalBlock(scope: !7106, file: !3, line: 121, column: 3)
!7109 = !DILocation(line: 84, column: 71, scope: !7097)
!7110 = !DILocation(line: 85, column: 13, scope: !7097)
!7111 = !DILocation(line: 87, column: 2, scope: !7097)
!7112 = !DILocation(line: 87, column: 24, scope: !7097)
!7113 = !DILocation(line: 87, column: 31, scope: !7097)
!7114 = !DILocation(line: 88, column: 2, scope: !7097)
!7115 = !DILocation(line: 88, column: 14, scope: !7097)
!7116 = !DILocation(line: 88, column: 23, scope: !7097)
!7117 = !DILocation(line: 88, column: 29, scope: !7097)
!7118 = !DILocation(line: 88, column: 37, scope: !7097)
!7119 = !DILocation(line: 89, column: 2, scope: !7097)
!7120 = !DILocation(line: 89, column: 6, scope: !7097)
!7121 = !DILocation(line: 91, column: 10, scope: !7097)
!7122 = !DILocation(line: 91, column: 20, scope: !7097)
!7123 = !DILocation(line: 91, column: 2, scope: !7097)
!7124 = !DILocation(line: 94, column: 3, scope: !7106)
!7125 = !DILocation(line: 97, column: 4, scope: !7105)
!7126 = !DILocation(line: 97, column: 30, scope: !7105)
!7127 = !DILocation(line: 97, column: 35, scope: !7105)
!7128 = !DILocation(line: 97, column: 45, scope: !7105)
!7129 = !DILocation(line: 98, column: 9, scope: !7130)
!7130 = distinct !DILexicalBlock(scope: !7105, file: !3, line: 98, column: 8)
!7131 = !DILocation(line: 98, column: 12, scope: !7130)
!7132 = !DILocation(line: 98, column: 8, scope: !7105)
!7133 = !DILocation(line: 99, column: 5, scope: !7134)
!7134 = distinct !DILexicalBlock(scope: !7135, file: !3, line: 99, column: 5)
!7135 = distinct !DILexicalBlock(scope: !7136, file: !3, line: 99, column: 5)
!7136 = distinct !DILexicalBlock(scope: !7130, file: !3, line: 98, column: 29)
!7137 = !DILocation(line: 99, column: 5, scope: !7135)
!7138 = !DILocation(line: 101, column: 5, scope: !7136)
!7139 = !DILocation(line: 103, column: 11, scope: !7140)
!7140 = distinct !DILexicalBlock(scope: !7105, file: !3, line: 103, column: 4)
!7141 = !DILocation(line: 103, column: 9, scope: !7140)
!7142 = !DILocation(line: 104, column: 10, scope: !7143)
!7143 = distinct !DILexicalBlock(scope: !7140, file: !3, line: 103, column: 4)
!7144 = !DILocation(line: 104, column: 14, scope: !7143)
!7145 = !DILocation(line: 104, column: 17, scope: !7143)
!7146 = !DILocation(line: 104, column: 12, scope: !7143)
!7147 = !DILocation(line: 105, column: 10, scope: !7143)
!7148 = !DILocation(line: 105, column: 13, scope: !7143)
!7149 = !DILocation(line: 105, column: 15, scope: !7143)
!7150 = !DILocation(line: 0, scope: !7143)
!7151 = !DILocation(line: 103, column: 4, scope: !7140)
!7152 = !DILocation(line: 106, column: 10, scope: !7153)
!7153 = distinct !DILexicalBlock(scope: !7154, file: !3, line: 106, column: 9)
!7154 = distinct !DILexicalBlock(scope: !7143, file: !3, line: 105, column: 51)
!7155 = !DILocation(line: 106, column: 13, scope: !7153)
!7156 = !DILocation(line: 106, column: 24, scope: !7153)
!7157 = !DILocation(line: 106, column: 9, scope: !7154)
!7158 = !DILocation(line: 107, column: 6, scope: !7159)
!7159 = distinct !DILexicalBlock(scope: !7160, file: !3, line: 107, column: 6)
!7160 = distinct !DILexicalBlock(scope: !7161, file: !3, line: 107, column: 6)
!7161 = distinct !DILexicalBlock(scope: !7153, file: !3, line: 106, column: 28)
!7162 = !DILocation(line: 107, column: 6, scope: !7160)
!7163 = !DILocation(line: 110, column: 6, scope: !7161)
!7164 = !DILocation(line: 112, column: 29, scope: !7154)
!7165 = !DILocation(line: 112, column: 32, scope: !7154)
!7166 = !DILocation(line: 112, column: 43, scope: !7154)
!7167 = !DILocation(line: 112, column: 5, scope: !7154)
!7168 = !DILocation(line: 112, column: 11, scope: !7154)
!7169 = !DILocation(line: 112, column: 15, scope: !7154)
!7170 = !DILocation(line: 112, column: 24, scope: !7154)
!7171 = !DILocation(line: 112, column: 27, scope: !7154)
!7172 = !DILocation(line: 113, column: 5, scope: !7154)
!7173 = !DILocation(line: 113, column: 11, scope: !7154)
!7174 = !DILocation(line: 113, column: 15, scope: !7154)
!7175 = !DILocation(line: 113, column: 29, scope: !7154)
!7176 = !DILocation(line: 114, column: 4, scope: !7154)
!7177 = !DILocation(line: 105, column: 47, scope: !7143)
!7178 = !DILocation(line: 103, column: 4, scope: !7143)
!7179 = distinct !{!7179, !7151, !7180, !5093, !5094}
!7180 = !DILocation(line: 114, column: 4, scope: !7140)
!7181 = !DILocation(line: 115, column: 27, scope: !7105)
!7182 = !DILocation(line: 115, column: 30, scope: !7105)
!7183 = !DILocation(line: 115, column: 4, scope: !7105)
!7184 = !DILocation(line: 115, column: 10, scope: !7105)
!7185 = !DILocation(line: 115, column: 14, scope: !7105)
!7186 = !DILocation(line: 115, column: 25, scope: !7105)
!7187 = !DILocation(line: 116, column: 25, scope: !7105)
!7188 = !DILocation(line: 116, column: 28, scope: !7105)
!7189 = !DILocation(line: 116, column: 4, scope: !7105)
!7190 = !DILocation(line: 116, column: 10, scope: !7105)
!7191 = !DILocation(line: 116, column: 14, scope: !7105)
!7192 = !DILocation(line: 116, column: 23, scope: !7105)
!7193 = !DILocation(line: 117, column: 4, scope: !7105)
!7194 = !DILocation(line: 117, column: 10, scope: !7105)
!7195 = !DILocation(line: 117, column: 14, scope: !7105)
!7196 = !DILocation(line: 117, column: 28, scope: !7105)
!7197 = !DILocation(line: 118, column: 4, scope: !7105)
!7198 = !DILocation(line: 119, column: 3, scope: !7106)
!7199 = !DILocation(line: 122, column: 4, scope: !7108)
!7200 = !DILocation(line: 122, column: 39, scope: !7108)
!7201 = !DILocation(line: 123, column: 9, scope: !7108)
!7202 = !DILocation(line: 123, column: 19, scope: !7108)
!7203 = !DILocation(line: 124, column: 9, scope: !7204)
!7204 = distinct !DILexicalBlock(scope: !7108, file: !3, line: 124, column: 8)
!7205 = !DILocation(line: 124, column: 12, scope: !7204)
!7206 = !DILocation(line: 124, column: 8, scope: !7108)
!7207 = !DILocation(line: 125, column: 5, scope: !7208)
!7208 = distinct !DILexicalBlock(scope: !7209, file: !3, line: 125, column: 5)
!7209 = distinct !DILexicalBlock(scope: !7210, file: !3, line: 125, column: 5)
!7210 = distinct !DILexicalBlock(scope: !7204, file: !3, line: 124, column: 29)
!7211 = !DILocation(line: 125, column: 5, scope: !7209)
!7212 = !DILocation(line: 127, column: 5, scope: !7210)
!7213 = !DILocation(line: 129, column: 11, scope: !7214)
!7214 = distinct !DILexicalBlock(scope: !7108, file: !3, line: 129, column: 4)
!7215 = !DILocation(line: 129, column: 9, scope: !7214)
!7216 = !DILocation(line: 130, column: 10, scope: !7217)
!7217 = distinct !DILexicalBlock(scope: !7214, file: !3, line: 129, column: 4)
!7218 = !DILocation(line: 130, column: 14, scope: !7217)
!7219 = !DILocation(line: 130, column: 17, scope: !7217)
!7220 = !DILocation(line: 130, column: 12, scope: !7217)
!7221 = !DILocation(line: 131, column: 10, scope: !7217)
!7222 = !DILocation(line: 131, column: 13, scope: !7217)
!7223 = !DILocation(line: 131, column: 15, scope: !7217)
!7224 = !DILocation(line: 0, scope: !7217)
!7225 = !DILocation(line: 129, column: 4, scope: !7214)
!7226 = !DILocation(line: 132, column: 10, scope: !7227)
!7227 = distinct !DILexicalBlock(scope: !7228, file: !3, line: 132, column: 9)
!7228 = distinct !DILexicalBlock(scope: !7217, file: !3, line: 131, column: 51)
!7229 = !DILocation(line: 132, column: 13, scope: !7227)
!7230 = !DILocation(line: 132, column: 24, scope: !7227)
!7231 = !DILocation(line: 132, column: 9, scope: !7228)
!7232 = !DILocation(line: 133, column: 6, scope: !7233)
!7233 = distinct !DILexicalBlock(scope: !7234, file: !3, line: 133, column: 6)
!7234 = distinct !DILexicalBlock(scope: !7235, file: !3, line: 133, column: 6)
!7235 = distinct !DILexicalBlock(scope: !7227, file: !3, line: 132, column: 28)
!7236 = !DILocation(line: 133, column: 6, scope: !7234)
!7237 = !DILocation(line: 136, column: 6, scope: !7235)
!7238 = !DILocation(line: 138, column: 29, scope: !7228)
!7239 = !DILocation(line: 138, column: 32, scope: !7228)
!7240 = !DILocation(line: 138, column: 43, scope: !7228)
!7241 = !DILocation(line: 138, column: 5, scope: !7228)
!7242 = !DILocation(line: 138, column: 11, scope: !7228)
!7243 = !DILocation(line: 138, column: 15, scope: !7228)
!7244 = !DILocation(line: 138, column: 24, scope: !7228)
!7245 = !DILocation(line: 138, column: 27, scope: !7228)
!7246 = !DILocation(line: 139, column: 5, scope: !7228)
!7247 = !DILocation(line: 139, column: 11, scope: !7228)
!7248 = !DILocation(line: 139, column: 15, scope: !7228)
!7249 = !DILocation(line: 139, column: 29, scope: !7228)
!7250 = !DILocation(line: 140, column: 4, scope: !7228)
!7251 = !DILocation(line: 131, column: 47, scope: !7217)
!7252 = !DILocation(line: 129, column: 4, scope: !7217)
!7253 = distinct !{!7253, !7225, !7254, !5093, !5094}
!7254 = !DILocation(line: 140, column: 4, scope: !7214)
!7255 = !DILocation(line: 141, column: 27, scope: !7108)
!7256 = !DILocation(line: 141, column: 30, scope: !7108)
!7257 = !DILocation(line: 141, column: 4, scope: !7108)
!7258 = !DILocation(line: 141, column: 10, scope: !7108)
!7259 = !DILocation(line: 141, column: 14, scope: !7108)
!7260 = !DILocation(line: 141, column: 25, scope: !7108)
!7261 = !DILocation(line: 142, column: 25, scope: !7108)
!7262 = !DILocation(line: 142, column: 28, scope: !7108)
!7263 = !DILocation(line: 142, column: 4, scope: !7108)
!7264 = !DILocation(line: 142, column: 10, scope: !7108)
!7265 = !DILocation(line: 142, column: 14, scope: !7108)
!7266 = !DILocation(line: 142, column: 23, scope: !7108)
!7267 = !DILocation(line: 143, column: 4, scope: !7108)
!7268 = !DILocation(line: 143, column: 10, scope: !7108)
!7269 = !DILocation(line: 143, column: 14, scope: !7108)
!7270 = !DILocation(line: 143, column: 28, scope: !7108)
!7271 = !DILocation(line: 144, column: 4, scope: !7108)
!7272 = !DILocation(line: 145, column: 3, scope: !7106)
!7273 = !DILocation(line: 147, column: 3, scope: !7274)
!7274 = distinct !DILexicalBlock(scope: !7275, file: !3, line: 147, column: 3)
!7275 = distinct !DILexicalBlock(scope: !7106, file: !3, line: 147, column: 3)
!7276 = !DILocation(line: 147, column: 3, scope: !7275)
!7277 = !DILocation(line: 149, column: 3, scope: !7106)
!7278 = !DILocation(line: 152, column: 2, scope: !7097)
!7279 = !DILocation(line: 153, column: 1, scope: !7097)
!7280 = distinct !DISubprogram(name: "__list_add", scope: !7083, file: !7083, line: 146, type: !7281, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7283)
!7281 = !DISubroutineType(types: !7282)
!7282 = !{null, !182, !182, !182}
!7283 = !{!7284, !7285, !7286}
!7284 = !DILocalVariable(name: "new", arg: 1, scope: !7280, file: !7083, line: 146, type: !182)
!7285 = !DILocalVariable(name: "prev", arg: 2, scope: !7280, file: !7083, line: 147, type: !182)
!7286 = !DILocalVariable(name: "next", arg: 3, scope: !7280, file: !7083, line: 148, type: !182)
!7287 = !DILocation(line: 146, column: 49, scope: !7280)
!7288 = !DILocation(line: 147, column: 28, scope: !7280)
!7289 = !DILocation(line: 148, column: 28, scope: !7280)
!7290 = !DILocation(line: 150, column: 24, scope: !7291)
!7291 = distinct !DILexicalBlock(scope: !7280, file: !7083, line: 150, column: 6)
!7292 = !DILocation(line: 150, column: 29, scope: !7291)
!7293 = !DILocation(line: 150, column: 35, scope: !7291)
!7294 = !DILocation(line: 150, column: 7, scope: !7291)
!7295 = !DILocation(line: 150, column: 6, scope: !7280)
!7296 = !DILocation(line: 151, column: 3, scope: !7291)
!7297 = !DILocation(line: 153, column: 15, scope: !7280)
!7298 = !DILocation(line: 153, column: 2, scope: !7280)
!7299 = !DILocation(line: 153, column: 8, scope: !7280)
!7300 = !DILocation(line: 153, column: 13, scope: !7280)
!7301 = !DILocation(line: 154, column: 14, scope: !7280)
!7302 = !DILocation(line: 154, column: 2, scope: !7280)
!7303 = !DILocation(line: 154, column: 7, scope: !7280)
!7304 = !DILocation(line: 154, column: 12, scope: !7280)
!7305 = !DILocation(line: 155, column: 14, scope: !7280)
!7306 = !DILocation(line: 155, column: 2, scope: !7280)
!7307 = !DILocation(line: 155, column: 7, scope: !7280)
!7308 = !DILocation(line: 155, column: 12, scope: !7280)
!7309 = !DILocation(line: 156, column: 2, scope: !7280)
!7310 = !DILocation(line: 156, column: 2, scope: !7311)
!7311 = distinct !DILexicalBlock(scope: !7280, file: !7083, line: 156, column: 2)
!7312 = !DILocation(line: 156, column: 2, scope: !7313)
!7313 = distinct !DILexicalBlock(scope: !7311, file: !7083, line: 156, column: 2)
!7314 = !DILocation(line: 156, column: 2, scope: !7315)
!7315 = distinct !DILexicalBlock(scope: !7311, file: !7083, line: 156, column: 2)
!7316 = !DILocation(line: 157, column: 1, scope: !7280)
!7317 = distinct !DISubprogram(name: "__list_add_valid", scope: !7083, file: !7083, line: 128, type: !7318, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7320)
!7318 = !DISubroutineType(types: !7319)
!7319 = !{!221, !182, !182, !182}
!7320 = !{!7321, !7322, !7323}
!7321 = !DILocalVariable(name: "new", arg: 1, scope: !7317, file: !7083, line: 128, type: !182)
!7322 = !DILocalVariable(name: "prev", arg: 2, scope: !7317, file: !7083, line: 129, type: !182)
!7323 = !DILocalVariable(name: "next", arg: 3, scope: !7317, file: !7083, line: 130, type: !182)
!7324 = !DILocation(line: 128, column: 55, scope: !7317)
!7325 = !DILocation(line: 129, column: 23, scope: !7317)
!7326 = !DILocation(line: 130, column: 23, scope: !7317)
!7327 = !DILocation(line: 132, column: 2, scope: !7317)
!7328 = distinct !DISubprogram(name: "list_del", scope: !7083, file: !7083, line: 227, type: !7329, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7331)
!7329 = !DISubroutineType(types: !7330)
!7330 = !{null, !182}
!7331 = !{!7332}
!7332 = !DILocalVariable(name: "entry", arg: 1, scope: !7328, file: !7083, line: 227, type: !182)
!7333 = !DILocation(line: 227, column: 47, scope: !7328)
!7334 = !DILocation(line: 229, column: 19, scope: !7328)
!7335 = !DILocation(line: 229, column: 2, scope: !7328)
!7336 = !DILocation(line: 230, column: 2, scope: !7328)
!7337 = !DILocation(line: 230, column: 9, scope: !7328)
!7338 = !DILocation(line: 230, column: 14, scope: !7328)
!7339 = !DILocation(line: 231, column: 2, scope: !7328)
!7340 = !DILocation(line: 231, column: 9, scope: !7328)
!7341 = !DILocation(line: 231, column: 14, scope: !7328)
!7342 = !DILocation(line: 232, column: 1, scope: !7328)
!7343 = distinct !DISubprogram(name: "__list_del_entry", scope: !7083, file: !7083, line: 213, type: !7329, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7344)
!7344 = !{!7345}
!7345 = !DILocalVariable(name: "entry", arg: 1, scope: !7343, file: !7083, line: 213, type: !182)
!7346 = !DILocation(line: 213, column: 55, scope: !7343)
!7347 = !DILocation(line: 215, column: 30, scope: !7348)
!7348 = distinct !DILexicalBlock(scope: !7343, file: !7083, line: 215, column: 6)
!7349 = !DILocation(line: 215, column: 7, scope: !7348)
!7350 = !DILocation(line: 215, column: 6, scope: !7343)
!7351 = !DILocation(line: 216, column: 3, scope: !7348)
!7352 = !DILocation(line: 218, column: 13, scope: !7343)
!7353 = !DILocation(line: 218, column: 20, scope: !7343)
!7354 = !DILocation(line: 218, column: 26, scope: !7343)
!7355 = !DILocation(line: 218, column: 33, scope: !7343)
!7356 = !DILocation(line: 218, column: 2, scope: !7343)
!7357 = !DILocation(line: 219, column: 1, scope: !7343)
!7358 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !7083, file: !7083, line: 134, type: !7359, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7361)
!7359 = !DISubroutineType(types: !7360)
!7360 = !{!221, !182}
!7361 = !{!7362}
!7362 = !DILocalVariable(name: "entry", arg: 1, scope: !7358, file: !7083, line: 134, type: !182)
!7363 = !DILocation(line: 134, column: 61, scope: !7358)
!7364 = !DILocation(line: 136, column: 2, scope: !7358)
!7365 = distinct !DISubprogram(name: "__list_del", scope: !7083, file: !7083, line: 193, type: !7084, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7366)
!7366 = !{!7367, !7368}
!7367 = !DILocalVariable(name: "prev", arg: 1, scope: !7365, file: !7083, line: 193, type: !182)
!7368 = !DILocalVariable(name: "next", arg: 2, scope: !7365, file: !7083, line: 193, type: !182)
!7369 = !DILocation(line: 193, column: 50, scope: !7365)
!7370 = !DILocation(line: 193, column: 75, scope: !7365)
!7371 = !DILocation(line: 195, column: 15, scope: !7365)
!7372 = !DILocation(line: 195, column: 2, scope: !7365)
!7373 = !DILocation(line: 195, column: 8, scope: !7365)
!7374 = !DILocation(line: 195, column: 13, scope: !7365)
!7375 = !DILocation(line: 196, column: 2, scope: !7365)
!7376 = !DILocation(line: 196, column: 2, scope: !7377)
!7377 = distinct !DILexicalBlock(scope: !7365, file: !7083, line: 196, column: 2)
!7378 = !DILocation(line: 196, column: 2, scope: !7379)
!7379 = distinct !DILexicalBlock(scope: !7377, file: !7083, line: 196, column: 2)
!7380 = !DILocation(line: 196, column: 2, scope: !7381)
!7381 = distinct !DILexicalBlock(scope: !7377, file: !7083, line: 196, column: 2)
!7382 = !DILocation(line: 197, column: 1, scope: !7365)
