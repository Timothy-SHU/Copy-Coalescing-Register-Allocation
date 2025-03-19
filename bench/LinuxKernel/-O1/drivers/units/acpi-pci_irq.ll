; ModuleID = 'drivers/acpi/pci_irq.c'
source_filename = "drivers/acpi/pci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i64, ptr }
%struct.prt_quirk = type { ptr, i32, i32, i32, i8, ptr, ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.acpi_prt_entry = type { %struct.acpi_pci_id, i8, ptr, i32 }
%struct.acpi_pci_id = type { i16, i16, i16, i16 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.acpi_pci_routing_table = type { i32, i32, i64, i32, %union.anon.16 }
%union.anon.16 = type { [4 x i8] }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.14, i32, i32, %struct.list_head }
%struct.anon.14 = type { i8 }
%struct.acpi_device_wakeup = type { ptr, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, ptr, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { ptr, ptr }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, ptr }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_dir = type { ptr }
%struct.acpi_device_data = type { ptr, %struct.list_head, ptr, %struct.list_head }
%struct.anon.17 = type { %struct.anon.18, [0 x i8] }
%struct.anon.18 = type {}
%struct.pci_sysdata = type { i32, i32, ptr, ptr, ptr }

@acpi_irq_model = external dso_local global i32, align 4
@.str = private unnamed_addr constant [20 x i8] c"PCI INT %c: no GSI\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [36 x i8] c"PCI INT %c: failed to register GSI\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [13 x i8] c" -> Link[%s]\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [37 x i8] c"can't derive routing for PCI INT %c\0A\00", align 1, !dbg !17
@__const.acpi_pci_irq_find_prt_entry.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !22
@prt_quirks = internal constant [3 x %struct.prt_quirk] [%struct.prt_quirk { ptr @medion_md9580, i32 0, i32 0, i32 9, i8 1, ptr @.str.6, ptr @.str.7 }, %struct.prt_quirk { ptr @dell_optiplex, i32 0, i32 0, i32 13, i8 1, ptr @.str.8, ptr @.str.9 }, %struct.prt_quirk { ptr @hp_t5710, i32 0, i32 0, i32 1, i8 1, ptr @.str.10, ptr @.str.11 }], align 16, !dbg !28
@.str.5 = private unnamed_addr constant [89 x i8] c"\014ACPI: PCI: Firmware reports %04x:%02x:%02x PCI INT %c connected to %s; changing to %s\0A\00", align 1, !dbg !4894
@medion_md9580 = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.12, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"MEDIONNB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"A555\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !4919
@.str.6 = private unnamed_addr constant [21 x i8] c"\\_SB_.PCI0.ISA_.LNKA\00", align 1, !dbg !4899
@.str.7 = private unnamed_addr constant [21 x i8] c"\\_SB_.PCI0.ISA_.LNKB\00", align 1, !dbg !4901
@dell_optiplex = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.13, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Computer Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"OptiPlex GX1 600S+\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !4947
@.str.8 = private unnamed_addr constant [11 x i8] c"\\_SB_.LNKB\00", align 1, !dbg !4903
@.str.9 = private unnamed_addr constant [11 x i8] c"\\_SB_.LNKA\00", align 1, !dbg !4908
@hp_t5710 = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.14, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"hp t5000 series\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"098Ch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !4954
@.str.10 = private unnamed_addr constant [16 x i8] c"\\_SB_.PCI0.LNK1\00", align 1, !dbg !4910
@.str.11 = private unnamed_addr constant [16 x i8] c"\\_SB_.PCI0.LNK3\00", align 1, !dbg !4912
@.str.12 = private unnamed_addr constant [23 x i8] c"Medion MD9580-F laptop\00", align 1, !dbg !4914
@.str.13 = private unnamed_addr constant [18 x i8] c"Dell Optiplex GX1\00", align 1, !dbg !4942
@.str.14 = private unnamed_addr constant [9 x i8] c"HP t5710\00", align 1, !dbg !4949
@noioapicquirk = external dso_local global i32, align 4
@noioapicreroute = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [41 x i8] c"PCI IRQ %d -> rerouted to legacy IRQ %d\0A\00", align 1, !dbg !4956
@.str.16 = private unnamed_addr constant [54 x i8] c"Cannot reroute IRQ %d to legacy IRQ: unknown mapping\0A\00", align 1, !dbg !4961
@.str.17 = private unnamed_addr constant [27 x i8] c"PCI INT %c: not connected\0A\00", align 1, !dbg !4966

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_pci_irq_enable(ptr noundef %dev) #0 align 16 !dbg !4991 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %gsi = alloca i32, align 4
  %pin = alloca i8, align 1
  %triggering = alloca i32, align 4
  %polarity = alloca i32, align 4
  %link = alloca ptr, align 8
  %link_desc = alloca [16 x i8], align 16
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5290, metadata !DIExpression()), !dbg !5312
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !5313
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5291, metadata !DIExpression()), !dbg !5314
  call void @llvm.lifetime.start.p0(i64 4, ptr %gsi) #15, !dbg !5315
  call void @llvm.dbg.declare(metadata ptr %gsi, metadata !5305, metadata !DIExpression()), !dbg !5316
  call void @llvm.lifetime.start.p0(i64 1, ptr %pin) #15, !dbg !5317
  call void @llvm.dbg.declare(metadata ptr %pin, metadata !5306, metadata !DIExpression()), !dbg !5318
  call void @llvm.lifetime.start.p0(i64 4, ptr %triggering) #15, !dbg !5319
  call void @llvm.dbg.declare(metadata ptr %triggering, metadata !5307, metadata !DIExpression()), !dbg !5320
  store i32 0, ptr %triggering, align 4, !dbg !5320
  call void @llvm.lifetime.start.p0(i64 4, ptr %polarity) #15, !dbg !5321
  call void @llvm.dbg.declare(metadata ptr %polarity, metadata !5308, metadata !DIExpression()), !dbg !5322
  %0 = load i32, ptr @acpi_irq_model, align 4, !dbg !5323
  %cmp = icmp eq i32 %0, 4, !dbg !5324
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5325

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr @acpi_irq_model, align 4, !dbg !5326
  %cmp2 = icmp eq i32 %1, 5, !dbg !5327
  br label %lor.end, !dbg !5325

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %3 = zext i1 %2 to i64, !dbg !5323
  %cond = select i1 %2, i32 0, i32 1, !dbg !5323
  store i32 %cond, ptr %polarity, align 4, !dbg !5322
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #15, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %link, metadata !5309, metadata !DIExpression()), !dbg !5329
  store ptr null, ptr %link, align 8, !dbg !5329
  call void @llvm.lifetime.start.p0(i64 16, ptr %link_desc) #15, !dbg !5330
  call void @llvm.dbg.declare(metadata ptr %link_desc, metadata !5310, metadata !DIExpression()), !dbg !5331
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !5332
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5311, metadata !DIExpression()), !dbg !5333
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5334
  %pin3 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 22, !dbg !5335
  %5 = load i8, ptr %pin3, align 1, !dbg !5335
  store i8 %5, ptr %pin, align 1, !dbg !5336
  %6 = load i8, ptr %pin, align 1, !dbg !5337
  %tobool = icmp ne i8 %6, 0, !dbg !5337
  br i1 %tobool, label %if.end, label %if.then, !dbg !5339

if.then:                                          ; preds = %lor.end
  store i32 0, ptr %retval, align 4, !dbg !5340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5340

if.end:                                           ; preds = %lor.end
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5342
  %irq_managed = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 43, !dbg !5344
  %bf.load = load i40, ptr %irq_managed, align 1, !dbg !5344
  %bf.lshr = lshr i40 %bf.load, 31, !dbg !5344
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5344
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5344
  %tobool4 = icmp ne i32 %bf.cast, 0, !dbg !5342
  br i1 %tobool4, label %land.lhs.true, label %if.end7, !dbg !5345

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5346
  %irq = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 39, !dbg !5347
  %9 = load i32, ptr %irq, align 4, !dbg !5347
  %cmp5 = icmp ugt i32 %9, 0, !dbg !5348
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !5349

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !5350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5350

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5351
  %11 = load i8, ptr %pin, align 1, !dbg !5352
  %conv = zext i8 %11 to i32, !dbg !5352
  %call = call ptr @acpi_pci_irq_lookup(ptr noundef %10, i32 noundef %conv) #16, !dbg !5353
  store ptr %call, ptr %entry1, align 8, !dbg !5354
  %12 = load ptr, ptr %entry1, align 8, !dbg !5355
  %tobool8 = icmp ne ptr %12, null, !dbg !5355
  br i1 %tobool8, label %if.end18, label %if.then9, !dbg !5357

if.then9:                                         ; preds = %if.end7
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5358
  %class = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 11, !dbg !5361
  %14 = load i32, ptr %class, align 4, !dbg !5361
  %shr = lshr i32 %14, 8, !dbg !5362
  %cmp10 = icmp eq i32 %shr, 257, !dbg !5363
  br i1 %cmp10, label %land.lhs.true12, label %if.end17, !dbg !5364

land.lhs.true12:                                  ; preds = %if.then9
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5365
  %class13 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 11, !dbg !5366
  %16 = load i32, ptr %class13, align 4, !dbg !5366
  %and = and i32 %16, 5, !dbg !5367
  %cmp14 = icmp eq i32 %and, 0, !dbg !5368
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !5369

if.then16:                                        ; preds = %land.lhs.true12
  store i32 0, ptr %retval, align 4, !dbg !5370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5370

if.end17:                                         ; preds = %land.lhs.true12, %if.then9
  br label %if.end18, !dbg !5371

if.end18:                                         ; preds = %if.end17, %if.end7
  %17 = load ptr, ptr %entry1, align 8, !dbg !5372
  %tobool19 = icmp ne ptr %17, null, !dbg !5372
  br i1 %tobool19, label %if.then20, label %if.else28, !dbg !5374

if.then20:                                        ; preds = %if.end18
  %18 = load ptr, ptr %entry1, align 8, !dbg !5375
  %link21 = getelementptr inbounds %struct.acpi_prt_entry, ptr %18, i32 0, i32 2, !dbg !5378
  %19 = load ptr, ptr %link21, align 8, !dbg !5378
  %tobool22 = icmp ne ptr %19, null, !dbg !5375
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !5379

if.then23:                                        ; preds = %if.then20
  %20 = load ptr, ptr %entry1, align 8, !dbg !5380
  %link24 = getelementptr inbounds %struct.acpi_prt_entry, ptr %20, i32 0, i32 2, !dbg !5381
  %21 = load ptr, ptr %link24, align 8, !dbg !5381
  %22 = load ptr, ptr %entry1, align 8, !dbg !5382
  %index = getelementptr inbounds %struct.acpi_prt_entry, ptr %22, i32 0, i32 3, !dbg !5383
  %23 = load i32, ptr %index, align 8, !dbg !5383
  %call25 = call i32 @acpi_pci_link_allocate_irq(ptr noundef %21, i32 noundef %23, ptr noundef %triggering, ptr noundef %polarity, ptr noundef %link) #16, !dbg !5384
  store i32 %call25, ptr %gsi, align 4, !dbg !5385
  br label %if.end27, !dbg !5386

if.else:                                          ; preds = %if.then20
  %24 = load ptr, ptr %entry1, align 8, !dbg !5387
  %index26 = getelementptr inbounds %struct.acpi_prt_entry, ptr %24, i32 0, i32 3, !dbg !5388
  %25 = load i32, ptr %index26, align 8, !dbg !5388
  store i32 %25, ptr %gsi, align 4, !dbg !5389
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then23
  br label %if.end29, !dbg !5390

if.else28:                                        ; preds = %if.end18
  store i32 -1, ptr %gsi, align 4, !dbg !5391
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.end27
  %26 = load i32, ptr %gsi, align 4, !dbg !5392
  %cmp30 = icmp slt i32 %26, 0, !dbg !5394
  br i1 %cmp30, label %if.then32, label %if.end44, !dbg !5395

if.then32:                                        ; preds = %if.end29
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !5396
  %28 = load i8, ptr %pin, align 1, !dbg !5399
  %call33 = call zeroext i1 @acpi_pci_irq_valid(ptr noundef %27, i8 noundef zeroext %28) #16, !dbg !5400
  br i1 %call33, label %if.end35, label %if.then34, !dbg !5401

if.then34:                                        ; preds = %if.then32
  %29 = load ptr, ptr %entry1, align 8, !dbg !5402
  call void @kfree(ptr noundef %29) #16, !dbg !5404
  store i32 0, ptr %retval, align 4, !dbg !5405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5405

if.end35:                                         ; preds = %if.then32
  %30 = load ptr, ptr %dev.addr, align 8, !dbg !5406
  %call36 = call i32 @acpi_isa_register_gsi(ptr noundef %30) #16, !dbg !5408
  %tobool37 = icmp ne i32 %call36, 0, !dbg !5408
  br i1 %tobool37, label %if.then38, label %if.end43, !dbg !5409

if.then38:                                        ; preds = %if.end35
  br label %do.body, !dbg !5410

do.body:                                          ; preds = %if.then38
  br label %do.cond, !dbg !5412

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5412

do.end:                                           ; preds = %do.cond
  %31 = load ptr, ptr %dev.addr, align 8, !dbg !5410
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 37, !dbg !5410
  %32 = load i8, ptr %pin, align 1, !dbg !5410
  %conv40 = zext i8 %32 to i32, !dbg !5410
  %call41 = call zeroext i8 @pin_name(i32 noundef %conv40) #16, !dbg !5410
  %conv42 = zext i8 %call41 to i32, !dbg !5410
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev39, ptr noundef @.str, i32 noundef %conv42) #17, !dbg !5410
  br label %if.end43, !dbg !5414

if.end43:                                         ; preds = %do.end, %if.end35
  %33 = load ptr, ptr %entry1, align 8, !dbg !5415
  call void @kfree(ptr noundef %33) #16, !dbg !5416
  store i32 0, ptr %retval, align 4, !dbg !5417
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5417

if.end44:                                         ; preds = %if.end29
  %34 = load ptr, ptr %dev.addr, align 8, !dbg !5418
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 37, !dbg !5419
  %35 = load i32, ptr %gsi, align 4, !dbg !5420
  %36 = load i32, ptr %triggering, align 4, !dbg !5421
  %37 = load i32, ptr %polarity, align 4, !dbg !5422
  %call46 = call i32 @acpi_register_gsi(ptr noundef %dev45, i32 noundef %35, i32 noundef %36, i32 noundef %37) #16, !dbg !5423
  store i32 %call46, ptr %rc, align 4, !dbg !5424
  %38 = load i32, ptr %rc, align 4, !dbg !5425
  %cmp47 = icmp slt i32 %38, 0, !dbg !5427
  br i1 %cmp47, label %if.then49, label %if.end57, !dbg !5428

if.then49:                                        ; preds = %if.end44
  br label %do.body50, !dbg !5429

do.body50:                                        ; preds = %if.then49
  br label %do.cond51, !dbg !5432

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !5432

do.end52:                                         ; preds = %do.cond51
  %39 = load ptr, ptr %dev.addr, align 8, !dbg !5429
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 37, !dbg !5429
  %40 = load i8, ptr %pin, align 1, !dbg !5429
  %conv54 = zext i8 %40 to i32, !dbg !5429
  %call55 = call zeroext i8 @pin_name(i32 noundef %conv54) #16, !dbg !5429
  %conv56 = zext i8 %call55 to i32, !dbg !5429
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev53, ptr noundef @.str.1, i32 noundef %conv56) #17, !dbg !5429
  %41 = load ptr, ptr %entry1, align 8, !dbg !5434
  call void @kfree(ptr noundef %41) #16, !dbg !5435
  %42 = load i32, ptr %rc, align 4, !dbg !5436
  store i32 %42, ptr %retval, align 4, !dbg !5437
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5437

if.end57:                                         ; preds = %if.end44
  %43 = load i32, ptr %rc, align 4, !dbg !5438
  %44 = load ptr, ptr %dev.addr, align 8, !dbg !5439
  %irq58 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 39, !dbg !5440
  store i32 %43, ptr %irq58, align 4, !dbg !5441
  %45 = load ptr, ptr %dev.addr, align 8, !dbg !5442
  %irq_managed59 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 43, !dbg !5443
  %bf.load60 = load i40, ptr %irq_managed59, align 1, !dbg !5444
  %bf.clear61 = and i40 %bf.load60, -2147483649, !dbg !5444
  %bf.set = or i40 %bf.clear61, 2147483648, !dbg !5444
  store i40 %bf.set, ptr %irq_managed59, align 1, !dbg !5444
  %46 = load ptr, ptr %link, align 8, !dbg !5445
  %tobool62 = icmp ne ptr %46, null, !dbg !5445
  br i1 %tobool62, label %if.then63, label %if.else65, !dbg !5447

if.then63:                                        ; preds = %if.end57
  %arraydecay = getelementptr inbounds [16 x i8], ptr %link_desc, i64 0, i64 0, !dbg !5448
  %47 = load ptr, ptr %link, align 8, !dbg !5449
  %call64 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 16, ptr noundef @.str.2, ptr noundef %47) #16, !dbg !5450
  br label %if.end66, !dbg !5450

if.else65:                                        ; preds = %if.end57
  %arrayidx = getelementptr [16 x i8], ptr %link_desc, i64 0, i64 0, !dbg !5451
  store i8 0, ptr %arrayidx, align 16, !dbg !5452
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.then63
  %48 = load ptr, ptr %entry1, align 8, !dbg !5453
  call void @kfree(ptr noundef %48) #16, !dbg !5454
  store i32 0, ptr %retval, align 4, !dbg !5455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5455

cleanup:                                          ; preds = %if.end66, %do.end52, %if.end43, %if.then34, %if.then16, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !5456
  call void @llvm.lifetime.end.p0(i64 16, ptr %link_desc) #15, !dbg !5456
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #15, !dbg !5456
  call void @llvm.lifetime.end.p0(i64 4, ptr %polarity) #15, !dbg !5456
  call void @llvm.lifetime.end.p0(i64 4, ptr %triggering) #15, !dbg !5456
  call void @llvm.lifetime.end.p0(i64 1, ptr %pin) #15, !dbg !5456
  call void @llvm.lifetime.end.p0(i64 4, ptr %gsi) #15, !dbg !5456
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !5456
  %49 = load i32, ptr %retval, align 4, !dbg !5456
  ret i32 %49, !dbg !5456
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_pci_irq_lookup(ptr noundef %dev, i32 noundef %pin) #0 align 16 !dbg !5457 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %pin.addr = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %bridge = alloca ptr, align 8
  %bridge_pin = alloca i8, align 1
  %orig_pin = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5461, metadata !DIExpression()), !dbg !5468
  store i32 %pin, ptr %pin.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pin.addr, metadata !5462, metadata !DIExpression()), !dbg !5469
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !5470
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5463, metadata !DIExpression()), !dbg !5471
  store ptr null, ptr %entry1, align 8, !dbg !5471
  call void @llvm.lifetime.start.p0(i64 8, ptr %bridge) #15, !dbg !5472
  call void @llvm.dbg.declare(metadata ptr %bridge, metadata !5464, metadata !DIExpression()), !dbg !5473
  call void @llvm.lifetime.start.p0(i64 1, ptr %bridge_pin) #15, !dbg !5474
  call void @llvm.dbg.declare(metadata ptr %bridge_pin, metadata !5465, metadata !DIExpression()), !dbg !5475
  call void @llvm.lifetime.start.p0(i64 1, ptr %orig_pin) #15, !dbg !5474
  call void @llvm.dbg.declare(metadata ptr %orig_pin, metadata !5466, metadata !DIExpression()), !dbg !5476
  %0 = load i32, ptr %pin.addr, align 4, !dbg !5477
  %conv = trunc i32 %0 to i8, !dbg !5477
  store i8 %conv, ptr %orig_pin, align 1, !dbg !5476
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5478
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5467, metadata !DIExpression()), !dbg !5479
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5480
  %2 = load i32, ptr %pin.addr, align 4, !dbg !5481
  %call = call i32 @acpi_pci_irq_find_prt_entry(ptr noundef %1, i32 noundef %2, ptr noundef %entry1) #16, !dbg !5482
  store i32 %call, ptr %ret, align 4, !dbg !5483
  %3 = load i32, ptr %ret, align 4, !dbg !5484
  %tobool = icmp ne i32 %3, 0, !dbg !5484
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5486

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %entry1, align 8, !dbg !5487
  %tobool2 = icmp ne ptr %4, null, !dbg !5487
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5488

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5489
  %6 = load ptr, ptr %entry1, align 8, !dbg !5491
  %call3 = call i32 @acpi_reroute_boot_interrupt(ptr noundef %5, ptr noundef %6) #16, !dbg !5492
  %7 = load ptr, ptr %entry1, align 8, !dbg !5493
  store ptr %7, ptr %retval, align 8, !dbg !5494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5494

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5495
  %bus = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 1, !dbg !5496
  %9 = load ptr, ptr %bus, align 8, !dbg !5496
  %self = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 4, !dbg !5497
  %10 = load ptr, ptr %self, align 8, !dbg !5497
  store ptr %10, ptr %bridge, align 8, !dbg !5498
  br label %while.cond, !dbg !5499

while.cond:                                       ; preds = %if.end21, %if.end
  %11 = load ptr, ptr %bridge, align 8, !dbg !5500
  %tobool4 = icmp ne ptr %11, null, !dbg !5499
  br i1 %tobool4, label %while.body, label %while.end, !dbg !5499

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5501
  %13 = load i32, ptr %pin.addr, align 4, !dbg !5503
  %conv5 = trunc i32 %13 to i8, !dbg !5503
  %call6 = call zeroext i8 @pci_swizzle_interrupt_pin(ptr noundef %12, i8 noundef zeroext %conv5) #16, !dbg !5504
  %conv7 = zext i8 %call6 to i32, !dbg !5504
  store i32 %conv7, ptr %pin.addr, align 4, !dbg !5505
  %14 = load ptr, ptr %bridge, align 8, !dbg !5506
  %class = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 11, !dbg !5508
  %15 = load i32, ptr %class, align 4, !dbg !5508
  %shr = lshr i32 %15, 8, !dbg !5509
  %cmp = icmp eq i32 %shr, 1543, !dbg !5510
  br i1 %cmp, label %if.then9, label %if.end15, !dbg !5511

if.then9:                                         ; preds = %while.body
  %16 = load ptr, ptr %bridge, align 8, !dbg !5512
  %pin10 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 22, !dbg !5514
  %17 = load i8, ptr %pin10, align 1, !dbg !5514
  store i8 %17, ptr %bridge_pin, align 1, !dbg !5515
  %18 = load i8, ptr %bridge_pin, align 1, !dbg !5516
  %tobool11 = icmp ne i8 %18, 0, !dbg !5516
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5518

if.then12:                                        ; preds = %if.then9
  store ptr null, ptr %retval, align 8, !dbg !5519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5519

if.end13:                                         ; preds = %if.then9
  %19 = load i8, ptr %bridge_pin, align 1, !dbg !5521
  %conv14 = zext i8 %19 to i32, !dbg !5521
  store i32 %conv14, ptr %pin.addr, align 4, !dbg !5522
  br label %if.end15, !dbg !5523

if.end15:                                         ; preds = %if.end13, %while.body
  %20 = load ptr, ptr %bridge, align 8, !dbg !5524
  %21 = load i32, ptr %pin.addr, align 4, !dbg !5525
  %call16 = call i32 @acpi_pci_irq_find_prt_entry(ptr noundef %20, i32 noundef %21, ptr noundef %entry1) #16, !dbg !5526
  store i32 %call16, ptr %ret, align 4, !dbg !5527
  %22 = load i32, ptr %ret, align 4, !dbg !5528
  %tobool17 = icmp ne i32 %22, 0, !dbg !5528
  br i1 %tobool17, label %if.end21, label %land.lhs.true18, !dbg !5530

land.lhs.true18:                                  ; preds = %if.end15
  %23 = load ptr, ptr %entry1, align 8, !dbg !5531
  %tobool19 = icmp ne ptr %23, null, !dbg !5531
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5532

if.then20:                                        ; preds = %land.lhs.true18
  %24 = load ptr, ptr %entry1, align 8, !dbg !5533
  store ptr %24, ptr %retval, align 8, !dbg !5535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5535

if.end21:                                         ; preds = %land.lhs.true18, %if.end15
  %25 = load ptr, ptr %bridge, align 8, !dbg !5536
  store ptr %25, ptr %dev.addr, align 8, !dbg !5537
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !5538
  %bus22 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 1, !dbg !5539
  %27 = load ptr, ptr %bus22, align 8, !dbg !5539
  %self23 = getelementptr inbounds %struct.pci_bus, ptr %27, i32 0, i32 4, !dbg !5540
  %28 = load ptr, ptr %self23, align 8, !dbg !5540
  store ptr %28, ptr %bridge, align 8, !dbg !5541
  br label %while.cond, !dbg !5499, !llvm.loop !5542

while.end:                                        ; preds = %while.cond
  br label %do.body, !dbg !5546

do.body:                                          ; preds = %while.end
  br label %do.cond, !dbg !5548

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5548

do.end:                                           ; preds = %do.cond
  %29 = load ptr, ptr %dev.addr, align 8, !dbg !5546
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 37, !dbg !5546
  %30 = load i8, ptr %orig_pin, align 1, !dbg !5546
  %conv25 = zext i8 %30 to i32, !dbg !5546
  %call26 = call zeroext i8 @pin_name(i32 noundef %conv25) #16, !dbg !5546
  %conv27 = zext i8 %call26 to i32, !dbg !5546
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24, ptr noundef @.str.3, i32 noundef %conv27) #17, !dbg !5546
  store ptr null, ptr %retval, align 8, !dbg !5550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5550

cleanup:                                          ; preds = %do.end, %if.then20, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5551
  call void @llvm.lifetime.end.p0(i64 1, ptr %orig_pin) #15, !dbg !5551
  call void @llvm.lifetime.end.p0(i64 1, ptr %bridge_pin) #15, !dbg !5551
  call void @llvm.lifetime.end.p0(i64 8, ptr %bridge) #15, !dbg !5551
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !5551
  %31 = load ptr, ptr %retval, align 8, !dbg !5551
  ret ptr %31, !dbg !5551
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5552 dso_local i32 @acpi_pci_link_allocate_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_pci_irq_valid(ptr noundef %dev, i8 noundef zeroext %pin) #4 align 16 !dbg !5557 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  %pin.addr = alloca i8, align 1
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5561, metadata !DIExpression()), !dbg !5563
  store i8 %pin, ptr %pin.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %pin.addr, metadata !5562, metadata !DIExpression()), !dbg !5564
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5565
  %irq = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 39, !dbg !5567
  %1 = load i32, ptr %irq, align 4, !dbg !5567
  %cmp = icmp eq i32 %1, 255, !dbg !5568
  br i1 %cmp, label %if.then, label %if.end, !dbg !5569

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5570
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 39, !dbg !5572
  store i32 -2147483648, ptr %irq1, align 4, !dbg !5573
  br label %do.body, !dbg !5574

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5576

do.end:                                           ; preds = %do.body
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5574
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 37, !dbg !5574
  %4 = load i8, ptr %pin.addr, align 1, !dbg !5574
  %conv = zext i8 %4 to i32, !dbg !5574
  %call = call zeroext i8 @pin_name(i32 noundef %conv) #16, !dbg !5574
  %conv3 = zext i8 %call to i32, !dbg !5574
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef @.str.17, i32 noundef %conv3) #17, !dbg !5574
  store i1 false, ptr %retval, align 1, !dbg !5578
  br label %return, !dbg !5578

if.end:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5579
  br label %return, !dbg !5579

return:                                           ; preds = %if.end, %do.end
  %5 = load i1, ptr %retval, align 1, !dbg !5580
  ret i1 %5, !dbg !5580
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5581 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_isa_register_gsi(ptr noundef %dev) #4 align 16 !dbg !5584 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5586, metadata !DIExpression()), !dbg !5587
  ret i32 -19, !dbg !5588
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5589 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @pin_name(i32 noundef %pin) #4 align 16 !dbg !5593 {
entry:
  %pin.addr = alloca i32, align 4
  store i32 %pin, ptr %pin.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pin.addr, metadata !5597, metadata !DIExpression()), !dbg !5598
  %0 = load i32, ptr %pin.addr, align 4, !dbg !5599
  %add = add i32 65, %0, !dbg !5600
  %sub = sub i32 %add, 1, !dbg !5601
  %conv = trunc i32 %sub to i8, !dbg !5602
  ret i8 %conv, !dbg !5603
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5604 dso_local i32 @acpi_register_gsi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5607 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_pci_irq_disable(ptr noundef %dev) #0 align 16 !dbg !5611 {
entry:
  %dev.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %gsi = alloca i32, align 4
  %pin = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5613, metadata !DIExpression()), !dbg !5617
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !5618
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5614, metadata !DIExpression()), !dbg !5619
  call void @llvm.lifetime.start.p0(i64 4, ptr %gsi) #15, !dbg !5620
  call void @llvm.dbg.declare(metadata ptr %gsi, metadata !5615, metadata !DIExpression()), !dbg !5621
  call void @llvm.lifetime.start.p0(i64 1, ptr %pin) #15, !dbg !5622
  call void @llvm.dbg.declare(metadata ptr %pin, metadata !5616, metadata !DIExpression()), !dbg !5623
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5624
  %pin2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 22, !dbg !5625
  %1 = load i8, ptr %pin2, align 1, !dbg !5625
  store i8 %1, ptr %pin, align 1, !dbg !5626
  %2 = load i8, ptr %pin, align 1, !dbg !5627
  %tobool = icmp ne i8 %2, 0, !dbg !5627
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5629

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5630
  %irq_managed = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 43, !dbg !5631
  %bf.load = load i40, ptr %irq_managed, align 1, !dbg !5631
  %bf.lshr = lshr i40 %bf.load, 31, !dbg !5631
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5631
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5631
  %tobool3 = icmp ne i32 %bf.cast, 0, !dbg !5630
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !5632

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5633
  %irq = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 39, !dbg !5634
  %5 = load i32, ptr %irq, align 4, !dbg !5634
  %cmp = icmp ule i32 %5, 0, !dbg !5635
  br i1 %cmp, label %if.then, label %if.end, !dbg !5636

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5637

if.end:                                           ; preds = %lor.lhs.false4
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5638
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 37, !dbg !5640
  %power = getelementptr inbounds %struct.device, ptr %dev5, i32 0, i32 11, !dbg !5641
  %is_prepared = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 1, !dbg !5642
  %bf.load6 = load i16, ptr %is_prepared, align 4, !dbg !5642
  %bf.lshr7 = lshr i16 %bf.load6, 3, !dbg !5642
  %bf.clear8 = and i16 %bf.lshr7, 1, !dbg !5642
  %bf.cast9 = trunc i16 %bf.clear8 to i1, !dbg !5642
  br i1 %bf.cast9, label %if.then10, label %if.end11, !dbg !5643

if.then10:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5644

if.end11:                                         ; preds = %if.end
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5645
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 37, !dbg !5647
  %power13 = getelementptr inbounds %struct.device, ptr %dev12, i32 0, i32 11, !dbg !5648
  %runtime_status = getelementptr inbounds %struct.dev_pm_info, ptr %power13, i32 0, i32 18, !dbg !5649
  %8 = load i32, ptr %runtime_status, align 4, !dbg !5649
  %cmp14 = icmp eq i32 %8, 3, !dbg !5650
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !5651

if.then15:                                        ; preds = %if.end11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5652

if.end16:                                         ; preds = %if.end11
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5653
  %10 = load i8, ptr %pin, align 1, !dbg !5654
  %conv = zext i8 %10 to i32, !dbg !5654
  %call = call ptr @acpi_pci_irq_lookup(ptr noundef %9, i32 noundef %conv) #16, !dbg !5655
  store ptr %call, ptr %entry1, align 8, !dbg !5656
  %11 = load ptr, ptr %entry1, align 8, !dbg !5657
  %tobool17 = icmp ne ptr %11, null, !dbg !5657
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5659

if.then18:                                        ; preds = %if.end16
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5660

if.end19:                                         ; preds = %if.end16
  %12 = load ptr, ptr %entry1, align 8, !dbg !5661
  %link = getelementptr inbounds %struct.acpi_prt_entry, ptr %12, i32 0, i32 2, !dbg !5663
  %13 = load ptr, ptr %link, align 8, !dbg !5663
  %tobool20 = icmp ne ptr %13, null, !dbg !5661
  br i1 %tobool20, label %if.then21, label %if.else, !dbg !5664

if.then21:                                        ; preds = %if.end19
  %14 = load ptr, ptr %entry1, align 8, !dbg !5665
  %link22 = getelementptr inbounds %struct.acpi_prt_entry, ptr %14, i32 0, i32 2, !dbg !5666
  %15 = load ptr, ptr %link22, align 8, !dbg !5666
  %call23 = call i32 @acpi_pci_link_free_irq(ptr noundef %15) #16, !dbg !5667
  store i32 %call23, ptr %gsi, align 4, !dbg !5668
  br label %if.end24, !dbg !5669

if.else:                                          ; preds = %if.end19
  %16 = load ptr, ptr %entry1, align 8, !dbg !5670
  %index = getelementptr inbounds %struct.acpi_prt_entry, ptr %16, i32 0, i32 3, !dbg !5671
  %17 = load i32, ptr %index, align 8, !dbg !5671
  store i32 %17, ptr %gsi, align 4, !dbg !5672
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  %18 = load ptr, ptr %entry1, align 8, !dbg !5673
  call void @kfree(ptr noundef %18) #16, !dbg !5674
  %19 = load i32, ptr %gsi, align 4, !dbg !5675
  %cmp25 = icmp sge i32 %19, 0, !dbg !5677
  br i1 %cmp25, label %if.then27, label %if.end31, !dbg !5678

if.then27:                                        ; preds = %if.end24
  %20 = load i32, ptr %gsi, align 4, !dbg !5679
  call void @acpi_unregister_gsi(i32 noundef %20) #16, !dbg !5681
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !5682
  %irq_managed28 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 43, !dbg !5683
  %bf.load29 = load i40, ptr %irq_managed28, align 1, !dbg !5684
  %bf.clear30 = and i40 %bf.load29, -2147483649, !dbg !5684
  %bf.set = or i40 %bf.clear30, 0, !dbg !5684
  store i40 %bf.set, ptr %irq_managed28, align 1, !dbg !5684
  br label %if.end31, !dbg !5685

if.end31:                                         ; preds = %if.then27, %if.end24
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5686
  br label %cleanup, !dbg !5686

cleanup:                                          ; preds = %if.end31, %if.then18, %if.then15, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %pin) #15, !dbg !5686
  call void @llvm.lifetime.end.p0(i64 4, ptr %gsi) #15, !dbg !5686
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !5686
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5686

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5687 dso_local i32 @acpi_pci_link_free_irq(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5690 dso_local void @acpi_unregister_gsi(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_pci_irq_find_prt_entry(ptr noundef %dev, i32 noundef %pin, ptr noundef %entry_ptr) #0 align 16 !dbg !5693 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pin.addr = alloca i32, align 4
  %entry_ptr.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %entry1 = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5698, metadata !DIExpression()), !dbg !5715
  store i32 %pin, ptr %pin.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pin.addr, metadata !5699, metadata !DIExpression()), !dbg !5716
  store ptr %entry_ptr, ptr %entry_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry_ptr.addr, metadata !5700, metadata !DIExpression()), !dbg !5717
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !5718
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5701, metadata !DIExpression()), !dbg !5719
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #15, !dbg !5720
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !5703, metadata !DIExpression()), !dbg !5721
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_pci_irq_find_prt_entry.buffer, i64 16, i1 false), !dbg !5721
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !5722
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5708, metadata !DIExpression()), !dbg !5723
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #15, !dbg !5724
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !5709, metadata !DIExpression()), !dbg !5725
  store ptr null, ptr %handle, align 8, !dbg !5725
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5726
  %bus = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1, !dbg !5727
  %1 = load ptr, ptr %bus, align 8, !dbg !5727
  %bridge = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 19, !dbg !5728
  %2 = load ptr, ptr %bridge, align 8, !dbg !5728
  %tobool = icmp ne ptr %2, null, !dbg !5726
  br i1 %tobool, label %if.then, label %if.end, !dbg !5729

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !5730
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !5710, metadata !DIExpression()), !dbg !5730
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5730
  %bus2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1, !dbg !5730
  %4 = load ptr, ptr %bus2, align 8, !dbg !5730
  %bridge3 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 19, !dbg !5730
  %5 = load ptr, ptr %bridge3, align 8, !dbg !5730
  %fwnode = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 24, !dbg !5730
  %6 = load ptr, ptr %fwnode, align 8, !dbg !5730
  store ptr %6, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !5730
  %7 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !5730
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %7) #16, !dbg !5730
  br i1 %call, label %cond.true, label %cond.false, !dbg !5730

cond.true:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5731
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5713, metadata !DIExpression()), !dbg !5731
  %8 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !5731
  store ptr %8, ptr %__mptr, align 8, !dbg !5731
  %9 = load ptr, ptr %__mptr, align 8, !dbg !5731
  %add.ptr = getelementptr i8, ptr %9, i64 -16, !dbg !5731
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !5731
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5730
  %10 = load ptr, ptr %tmp4, align 8, !dbg !5731
  br label %cond.end, !dbg !5730

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !5730

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ null, %cond.false ], !dbg !5730
  store ptr %cond, ptr %tmp, align 8, !dbg !5730
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !5732
  %11 = load ptr, ptr %tmp, align 8, !dbg !5730
  %call5 = call ptr @acpi_device_handle(ptr noundef %11) #16, !dbg !5732
  store ptr %call5, ptr %handle, align 8, !dbg !5733
  br label %if.end, !dbg !5734

if.end:                                           ; preds = %cond.end, %entry
  %12 = load ptr, ptr %handle, align 8, !dbg !5735
  %tobool6 = icmp ne ptr %12, null, !dbg !5735
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5737

if.then7:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !5738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5738

if.end8:                                          ; preds = %if.end
  %13 = load ptr, ptr %handle, align 8, !dbg !5739
  %call9 = call i32 @acpi_get_irq_routing_table(ptr noundef %13, ptr noundef %buffer) #16, !dbg !5740
  store i32 %call9, ptr %status, align 4, !dbg !5741
  %14 = load i32, ptr %status, align 4, !dbg !5742
  %tobool10 = icmp ne i32 %14, 0, !dbg !5742
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5744

if.then11:                                        ; preds = %if.end8
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !5745
  %15 = load ptr, ptr %pointer, align 8, !dbg !5745
  call void @kfree(ptr noundef %15) #16, !dbg !5747
  store i32 -19, ptr %retval, align 4, !dbg !5748
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5748

if.end12:                                         ; preds = %if.end8
  %pointer13 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !5749
  %16 = load ptr, ptr %pointer13, align 8, !dbg !5749
  store ptr %16, ptr %entry1, align 8, !dbg !5750
  br label %while.cond, !dbg !5751

while.cond:                                       ; preds = %if.end18, %if.end12
  %17 = load ptr, ptr %entry1, align 8, !dbg !5752
  %tobool14 = icmp ne ptr %17, null, !dbg !5752
  br i1 %tobool14, label %land.rhs, label %land.end, !dbg !5753

land.rhs:                                         ; preds = %while.cond
  %18 = load ptr, ptr %entry1, align 8, !dbg !5754
  %length = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %18, i32 0, i32 0, !dbg !5755
  %19 = load i32, ptr %length, align 8, !dbg !5755
  %cmp = icmp ugt i32 %19, 0, !dbg !5756
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !5757
  br i1 %20, label %while.body, label %while.end, !dbg !5751

while.body:                                       ; preds = %land.end
  %21 = load ptr, ptr %handle, align 8, !dbg !5758
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !5761
  %23 = load i32, ptr %pin.addr, align 4, !dbg !5762
  %24 = load ptr, ptr %entry1, align 8, !dbg !5763
  %25 = load ptr, ptr %entry_ptr.addr, align 8, !dbg !5764
  %call15 = call i32 @acpi_pci_irq_check_entry(ptr noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %24, ptr noundef %25) #16, !dbg !5765
  %tobool16 = icmp ne i32 %call15, 0, !dbg !5765
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !5766

if.then17:                                        ; preds = %while.body
  br label %while.end, !dbg !5767

if.end18:                                         ; preds = %while.body
  %26 = load ptr, ptr %entry1, align 8, !dbg !5768
  %27 = ptrtoint ptr %26 to i64, !dbg !5769
  %28 = load ptr, ptr %entry1, align 8, !dbg !5770
  %length19 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %28, i32 0, i32 0, !dbg !5771
  %29 = load i32, ptr %length19, align 8, !dbg !5771
  %conv = zext i32 %29 to i64, !dbg !5770
  %add = add i64 %27, %conv, !dbg !5772
  %30 = inttoptr i64 %add to ptr, !dbg !5773
  store ptr %30, ptr %entry1, align 8, !dbg !5774
  br label %while.cond, !dbg !5751, !llvm.loop !5775

while.end:                                        ; preds = %if.then17, %land.end
  %pointer20 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !5777
  %31 = load ptr, ptr %pointer20, align 8, !dbg !5777
  call void @kfree(ptr noundef %31) #16, !dbg !5778
  store i32 0, ptr %retval, align 4, !dbg !5779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5779

cleanup:                                          ; preds = %while.end, %if.then11, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #15, !dbg !5780
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !5780
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #15, !dbg !5780
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !5780
  %32 = load i32, ptr %retval, align 4, !dbg !5780
  ret i32 %32, !dbg !5780
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_reroute_boot_interrupt(ptr noundef %dev, ptr noundef %entry1) #0 align 16 !dbg !5781 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5785, metadata !DIExpression()), !dbg !5787
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5786, metadata !DIExpression()), !dbg !5788
  %0 = load i32, ptr @noioapicquirk, align 4, !dbg !5789
  %tobool = icmp ne i32 %0, 0, !dbg !5789
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5791

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @noioapicreroute, align 4, !dbg !5792
  %tobool2 = icmp ne i32 %1, 0, !dbg !5792
  br i1 %tobool2, label %if.then, label %if.else, !dbg !5793

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !5794
  br label %return, !dbg !5794

if.else:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5796
  %bus = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 1, !dbg !5798
  %3 = load ptr, ptr %bus, align 8, !dbg !5798
  %call = call i32 @bridge_has_boot_interrupt_variant(ptr noundef %3) #16, !dbg !5799
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ], !dbg !5800

sw.bb:                                            ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !5801
  br label %return, !dbg !5801

sw.bb3:                                           ; preds = %if.else
  br label %do.body, !dbg !5803

do.body:                                          ; preds = %sw.bb3
  br label %do.end, !dbg !5805

do.end:                                           ; preds = %do.body
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5803
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 37, !dbg !5803
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !5803
  %index = getelementptr inbounds %struct.acpi_prt_entry, ptr %5, i32 0, i32 3, !dbg !5803
  %6 = load i32, ptr %index, align 8, !dbg !5803
  %7 = load ptr, ptr %entry.addr, align 8, !dbg !5803
  %index5 = getelementptr inbounds %struct.acpi_prt_entry, ptr %7, i32 0, i32 3, !dbg !5803
  %8 = load i32, ptr %index5, align 8, !dbg !5803
  %rem = urem i32 %8, 4, !dbg !5803
  %add = add i32 %rem, 16, !dbg !5803
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef @.str.15, i32 noundef %6, i32 noundef %add) #17, !dbg !5803
  %9 = load ptr, ptr %entry.addr, align 8, !dbg !5807
  %index6 = getelementptr inbounds %struct.acpi_prt_entry, ptr %9, i32 0, i32 3, !dbg !5808
  %10 = load i32, ptr %index6, align 8, !dbg !5808
  %rem7 = urem i32 %10, 4, !dbg !5809
  %add8 = add i32 %rem7, 16, !dbg !5810
  %11 = load ptr, ptr %entry.addr, align 8, !dbg !5811
  %index9 = getelementptr inbounds %struct.acpi_prt_entry, ptr %11, i32 0, i32 3, !dbg !5812
  store i32 %add8, ptr %index9, align 8, !dbg !5813
  store i32 1, ptr %retval, align 4, !dbg !5814
  br label %return, !dbg !5814

sw.default:                                       ; preds = %if.else
  br label %do.body10, !dbg !5815

do.body10:                                        ; preds = %sw.default
  br label %do.end11, !dbg !5817

do.end11:                                         ; preds = %do.body10
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5815
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37, !dbg !5815
  %13 = load ptr, ptr %entry.addr, align 8, !dbg !5815
  %index13 = getelementptr inbounds %struct.acpi_prt_entry, ptr %13, i32 0, i32 3, !dbg !5815
  %14 = load i32, ptr %index13, align 8, !dbg !5815
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev12, ptr noundef @.str.16, i32 noundef %14) #17, !dbg !5815
  store i32 -1, ptr %retval, align 4, !dbg !5819
  br label %return, !dbg !5819

return:                                           ; preds = %do.end11, %do.end, %sw.bb, %if.then
  %15 = load i32, ptr %retval, align 4, !dbg !5820
  ret i32 %15, !dbg !5820
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5821 dso_local zeroext i8 @pci_swizzle_interrupt_pin(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_device_handle(ptr noundef %adev) #4 align 16 !dbg !5826 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !5830, metadata !DIExpression()), !dbg !5831
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !5832
  %tobool = icmp ne ptr %0, null, !dbg !5832
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5832

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !5833
  %handle = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !5834
  %2 = load ptr, ptr %handle, align 8, !dbg !5834
  br label %cond.end, !dbg !5832

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5832

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ null, %cond.false ], !dbg !5832
  ret ptr %cond, !dbg !5835
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5836 dso_local zeroext i1 @is_acpi_device_node(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5837 dso_local i32 @acpi_get_irq_routing_table(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_pci_irq_check_entry(ptr noundef %handle, ptr noundef %dev, i32 noundef %pin, ptr noundef %prt, ptr noundef %entry_ptr) #0 align 16 !dbg !5842 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %pin.addr = alloca i32, align 4
  %prt.addr = alloca ptr, align 8
  %entry_ptr.addr = alloca ptr, align 8
  %segment = alloca i32, align 4
  %bus1 = alloca i32, align 4
  %device = alloca i32, align 4
  %entry6 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !5846, metadata !DIExpression()), !dbg !5855
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5847, metadata !DIExpression()), !dbg !5856
  store i32 %pin, ptr %pin.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pin.addr, metadata !5848, metadata !DIExpression()), !dbg !5857
  store ptr %prt, ptr %prt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prt.addr, metadata !5849, metadata !DIExpression()), !dbg !5858
  store ptr %entry_ptr, ptr %entry_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry_ptr.addr, metadata !5850, metadata !DIExpression()), !dbg !5859
  call void @llvm.lifetime.start.p0(i64 4, ptr %segment) #15, !dbg !5860
  call void @llvm.dbg.declare(metadata ptr %segment, metadata !5851, metadata !DIExpression()), !dbg !5861
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5862
  %bus = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1, !dbg !5863
  %1 = load ptr, ptr %bus, align 8, !dbg !5863
  %call = call i32 @pci_domain_nr(ptr noundef %1) #16, !dbg !5864
  store i32 %call, ptr %segment, align 4, !dbg !5861
  call void @llvm.lifetime.start.p0(i64 4, ptr %bus1) #15, !dbg !5865
  call void @llvm.dbg.declare(metadata ptr %bus1, metadata !5852, metadata !DIExpression()), !dbg !5866
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5867
  %bus2 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 1, !dbg !5868
  %3 = load ptr, ptr %bus2, align 8, !dbg !5868
  %number = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 12, !dbg !5869
  %4 = load i8, ptr %number, align 8, !dbg !5869
  %conv = zext i8 %4 to i32, !dbg !5867
  store i32 %conv, ptr %bus1, align 4, !dbg !5866
  call void @llvm.lifetime.start.p0(i64 4, ptr %device) #15, !dbg !5870
  call void @llvm.dbg.declare(metadata ptr %device, metadata !5853, metadata !DIExpression()), !dbg !5871
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5872
  %bus3 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 1, !dbg !5873
  %6 = load ptr, ptr %bus3, align 8, !dbg !5873
  %call4 = call zeroext i1 @pci_ari_enabled(ptr noundef %6) #16, !dbg !5874
  br i1 %call4, label %cond.true, label %cond.false, !dbg !5874

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5874

cond.false:                                       ; preds = %entry
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5875
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 6, !dbg !5875
  %8 = load i32, ptr %devfn, align 8, !dbg !5875
  %shr = lshr i32 %8, 3, !dbg !5875
  %and = and i32 %shr, 31, !dbg !5875
  br label %cond.end, !dbg !5874

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %and, %cond.false ], !dbg !5874
  store i32 %cond, ptr %device, align 4, !dbg !5871
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry6) #15, !dbg !5876
  call void @llvm.dbg.declare(metadata ptr %entry6, metadata !5854, metadata !DIExpression()), !dbg !5877
  %9 = load ptr, ptr %prt.addr, align 8, !dbg !5878
  %address = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %9, i32 0, i32 2, !dbg !5880
  %10 = load i64, ptr %address, align 8, !dbg !5880
  %shr7 = lshr i64 %10, 16, !dbg !5881
  %and8 = and i64 %shr7, 65535, !dbg !5882
  %11 = load i32, ptr %device, align 4, !dbg !5883
  %conv9 = sext i32 %11 to i64, !dbg !5883
  %cmp = icmp ne i64 %and8, %conv9, !dbg !5884
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5885

lor.lhs.false:                                    ; preds = %cond.end
  %12 = load ptr, ptr %prt.addr, align 8, !dbg !5886
  %pin11 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %12, i32 0, i32 1, !dbg !5887
  %13 = load i32, ptr %pin11, align 4, !dbg !5887
  %add = add i32 %13, 1, !dbg !5888
  %14 = load i32, ptr %pin.addr, align 4, !dbg !5889
  %cmp12 = icmp ne i32 %add, %14, !dbg !5890
  br i1 %cmp12, label %if.then, label %if.end, !dbg !5891

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 -19, ptr %retval, align 4, !dbg !5892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5892

if.end:                                           ; preds = %lor.lhs.false
  %call14 = call noalias ptr @kzalloc(i64 noundef 32, i32 noundef 3264) #18, !dbg !5893
  store ptr %call14, ptr %entry6, align 8, !dbg !5894
  %15 = load ptr, ptr %entry6, align 8, !dbg !5895
  %tobool = icmp ne ptr %15, null, !dbg !5895
  br i1 %tobool, label %if.end16, label %if.then15, !dbg !5897

if.then15:                                        ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !5898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5898

if.end16:                                         ; preds = %if.end
  %16 = load i32, ptr %segment, align 4, !dbg !5899
  %conv17 = trunc i32 %16 to i16, !dbg !5899
  %17 = load ptr, ptr %entry6, align 8, !dbg !5900
  %id = getelementptr inbounds %struct.acpi_prt_entry, ptr %17, i32 0, i32 0, !dbg !5901
  %segment18 = getelementptr inbounds %struct.acpi_pci_id, ptr %id, i32 0, i32 0, !dbg !5902
  store i16 %conv17, ptr %segment18, align 8, !dbg !5903
  %18 = load i32, ptr %bus1, align 4, !dbg !5904
  %conv19 = trunc i32 %18 to i16, !dbg !5904
  %19 = load ptr, ptr %entry6, align 8, !dbg !5905
  %id20 = getelementptr inbounds %struct.acpi_prt_entry, ptr %19, i32 0, i32 0, !dbg !5906
  %bus21 = getelementptr inbounds %struct.acpi_pci_id, ptr %id20, i32 0, i32 1, !dbg !5907
  store i16 %conv19, ptr %bus21, align 2, !dbg !5908
  %20 = load ptr, ptr %prt.addr, align 8, !dbg !5909
  %address22 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %20, i32 0, i32 2, !dbg !5910
  %21 = load i64, ptr %address22, align 8, !dbg !5910
  %shr23 = lshr i64 %21, 16, !dbg !5911
  %and24 = and i64 %shr23, 65535, !dbg !5912
  %conv25 = trunc i64 %and24 to i16, !dbg !5913
  %22 = load ptr, ptr %entry6, align 8, !dbg !5914
  %id26 = getelementptr inbounds %struct.acpi_prt_entry, ptr %22, i32 0, i32 0, !dbg !5915
  %device27 = getelementptr inbounds %struct.acpi_pci_id, ptr %id26, i32 0, i32 2, !dbg !5916
  store i16 %conv25, ptr %device27, align 4, !dbg !5917
  %23 = load ptr, ptr %prt.addr, align 8, !dbg !5918
  %pin28 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %23, i32 0, i32 1, !dbg !5919
  %24 = load i32, ptr %pin28, align 4, !dbg !5919
  %add29 = add i32 %24, 1, !dbg !5920
  %conv30 = trunc i32 %add29 to i8, !dbg !5918
  %25 = load ptr, ptr %entry6, align 8, !dbg !5921
  %pin31 = getelementptr inbounds %struct.acpi_prt_entry, ptr %25, i32 0, i32 1, !dbg !5922
  store i8 %conv30, ptr %pin31, align 8, !dbg !5923
  %26 = load ptr, ptr %entry6, align 8, !dbg !5924
  %27 = load ptr, ptr %prt.addr, align 8, !dbg !5925
  call void @do_prt_fixups(ptr noundef %26, ptr noundef %27) #16, !dbg !5926
  %28 = load ptr, ptr %prt.addr, align 8, !dbg !5927
  %source_index = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %28, i32 0, i32 3, !dbg !5928
  %29 = load i32, ptr %source_index, align 8, !dbg !5928
  %30 = load ptr, ptr %entry6, align 8, !dbg !5929
  %index = getelementptr inbounds %struct.acpi_prt_entry, ptr %30, i32 0, i32 3, !dbg !5930
  store i32 %29, ptr %index, align 8, !dbg !5931
  %31 = load ptr, ptr %prt.addr, align 8, !dbg !5932
  %32 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %31, i32 0, i32 4, !dbg !5934
  %source = getelementptr inbounds %struct.anon.17, ptr %32, i32 0, i32 1, !dbg !5934
  %arrayidx = getelementptr [0 x i8], ptr %source, i64 0, i64 0, !dbg !5932
  %33 = load i8, ptr %arrayidx, align 4, !dbg !5932
  %tobool32 = icmp ne i8 %33, 0, !dbg !5932
  br i1 %tobool32, label %if.then33, label %if.end36, !dbg !5935

if.then33:                                        ; preds = %if.end16
  %34 = load ptr, ptr %handle.addr, align 8, !dbg !5936
  %35 = load ptr, ptr %prt.addr, align 8, !dbg !5937
  %36 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %35, i32 0, i32 4, !dbg !5938
  %source34 = getelementptr inbounds %struct.anon.17, ptr %36, i32 0, i32 1, !dbg !5938
  %arraydecay = getelementptr inbounds [0 x i8], ptr %source34, i64 0, i64 0, !dbg !5937
  %37 = load ptr, ptr %entry6, align 8, !dbg !5939
  %link = getelementptr inbounds %struct.acpi_prt_entry, ptr %37, i32 0, i32 2, !dbg !5940
  %call35 = call i32 @acpi_get_handle(ptr noundef %34, ptr noundef %arraydecay, ptr noundef %link) #16, !dbg !5941
  br label %if.end36, !dbg !5941

if.end36:                                         ; preds = %if.then33, %if.end16
  store i32 0, ptr %tmp, align 4, !dbg !5942
  %38 = load i32, ptr %tmp, align 4, !dbg !5945
  %39 = load ptr, ptr %entry6, align 8, !dbg !5946
  %40 = load ptr, ptr %entry_ptr.addr, align 8, !dbg !5947
  store ptr %39, ptr %40, align 8, !dbg !5948
  store i32 0, ptr %retval, align 4, !dbg !5949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5949

cleanup:                                          ; preds = %if.end36, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry6) #15, !dbg !5950
  call void @llvm.lifetime.end.p0(i64 4, ptr %device) #15, !dbg !5950
  call void @llvm.lifetime.end.p0(i64 4, ptr %bus1) #15, !dbg !5950
  call void @llvm.lifetime.end.p0(i64 4, ptr %segment) #15, !dbg !5950
  %41 = load i32, ptr %retval, align 4, !dbg !5950
  ret i32 %41, !dbg !5950
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_domain_nr(ptr noundef %bus) #4 align 16 !dbg !5951 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5954, metadata !DIExpression()), !dbg !5955
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5956
  %call = call ptr @to_pci_sysdata(ptr noundef %0) #16, !dbg !5957
  %domain = getelementptr inbounds %struct.pci_sysdata, ptr %call, i32 0, i32 0, !dbg !5958
  %1 = load i32, ptr %domain, align 8, !dbg !5958
  ret i32 %1, !dbg !5959
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_ari_enabled(ptr noundef %bus) #4 align 16 !dbg !5960 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5964, metadata !DIExpression()), !dbg !5965
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5966
  %self = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4, !dbg !5967
  %1 = load ptr, ptr %self, align 8, !dbg !5967
  %tobool = icmp ne ptr %1, null, !dbg !5966
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5968

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !5969
  %self1 = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 4, !dbg !5970
  %3 = load ptr, ptr %self1, align 8, !dbg !5970
  %ari_enabled = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 43, !dbg !5971
  %bf.load = load i40, ptr %ari_enabled, align 1, !dbg !5971
  %bf.lshr = lshr i40 %bf.load, 14, !dbg !5971
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5971
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5971
  %tobool2 = icmp ne i32 %bf.cast, 0, !dbg !5968
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !5972
  ret i1 %4, !dbg !5973
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5974 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5978, metadata !DIExpression()), !dbg !5980
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5979, metadata !DIExpression()), !dbg !5981
  %0 = load i64, ptr %size.addr, align 8, !dbg !5982
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5983
  %or = or i32 %1, 256, !dbg !5984
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5985
  ret ptr %call, !dbg !5986
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_prt_fixups(ptr noundef %entry1, ptr noundef %prt) #0 align 16 !dbg !5987 {
entry:
  %entry.addr = alloca ptr, align 8
  %prt.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %quirk = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5991, metadata !DIExpression()), !dbg !5996
  store ptr %prt, ptr %prt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prt.addr, metadata !5992, metadata !DIExpression()), !dbg !5997
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5998
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5993, metadata !DIExpression()), !dbg !5999
  call void @llvm.lifetime.start.p0(i64 8, ptr %quirk) #15, !dbg !6000
  call void @llvm.dbg.declare(metadata ptr %quirk, metadata !5994, metadata !DIExpression()), !dbg !6001
  store i32 0, ptr %i, align 4, !dbg !6002
  br label %for.cond, !dbg !6004

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6005
  %conv = sext i32 %0 to i64, !dbg !6005
  %cmp = icmp ult i64 %conv, 3, !dbg !6007
  br i1 %cmp, label %for.body, label %for.end, !dbg !6008

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !6009
  %idxprom = sext i32 %1 to i64, !dbg !6011
  %arrayidx = getelementptr [3 x %struct.prt_quirk], ptr @prt_quirks, i64 0, i64 %idxprom, !dbg !6011
  store ptr %arrayidx, ptr %quirk, align 8, !dbg !6012
  %2 = load ptr, ptr %quirk, align 8, !dbg !6013
  %system = getelementptr inbounds %struct.prt_quirk, ptr %2, i32 0, i32 0, !dbg !6015
  %3 = load ptr, ptr %system, align 8, !dbg !6015
  %call = call i32 @dmi_check_system(ptr noundef %3) #16, !dbg !6016
  %tobool = icmp ne i32 %call, 0, !dbg !6016
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6017

land.lhs.true:                                    ; preds = %for.body
  %4 = load ptr, ptr %entry.addr, align 8, !dbg !6018
  %id = getelementptr inbounds %struct.acpi_prt_entry, ptr %4, i32 0, i32 0, !dbg !6019
  %segment = getelementptr inbounds %struct.acpi_pci_id, ptr %id, i32 0, i32 0, !dbg !6020
  %5 = load i16, ptr %segment, align 8, !dbg !6020
  %conv3 = zext i16 %5 to i32, !dbg !6018
  %6 = load ptr, ptr %quirk, align 8, !dbg !6021
  %segment4 = getelementptr inbounds %struct.prt_quirk, ptr %6, i32 0, i32 1, !dbg !6022
  %7 = load i32, ptr %segment4, align 8, !dbg !6022
  %cmp5 = icmp eq i32 %conv3, %7, !dbg !6023
  br i1 %cmp5, label %land.lhs.true7, label %if.end, !dbg !6024

land.lhs.true7:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %entry.addr, align 8, !dbg !6025
  %id8 = getelementptr inbounds %struct.acpi_prt_entry, ptr %8, i32 0, i32 0, !dbg !6026
  %bus = getelementptr inbounds %struct.acpi_pci_id, ptr %id8, i32 0, i32 1, !dbg !6027
  %9 = load i16, ptr %bus, align 2, !dbg !6027
  %conv9 = zext i16 %9 to i32, !dbg !6025
  %10 = load ptr, ptr %quirk, align 8, !dbg !6028
  %bus10 = getelementptr inbounds %struct.prt_quirk, ptr %10, i32 0, i32 2, !dbg !6029
  %11 = load i32, ptr %bus10, align 4, !dbg !6029
  %cmp11 = icmp eq i32 %conv9, %11, !dbg !6030
  br i1 %cmp11, label %land.lhs.true13, label %if.end, !dbg !6031

land.lhs.true13:                                  ; preds = %land.lhs.true7
  %12 = load ptr, ptr %entry.addr, align 8, !dbg !6032
  %id14 = getelementptr inbounds %struct.acpi_prt_entry, ptr %12, i32 0, i32 0, !dbg !6033
  %device = getelementptr inbounds %struct.acpi_pci_id, ptr %id14, i32 0, i32 2, !dbg !6034
  %13 = load i16, ptr %device, align 4, !dbg !6034
  %conv15 = zext i16 %13 to i32, !dbg !6032
  %14 = load ptr, ptr %quirk, align 8, !dbg !6035
  %device16 = getelementptr inbounds %struct.prt_quirk, ptr %14, i32 0, i32 3, !dbg !6036
  %15 = load i32, ptr %device16, align 8, !dbg !6036
  %cmp17 = icmp eq i32 %conv15, %15, !dbg !6037
  br i1 %cmp17, label %land.lhs.true19, label %if.end, !dbg !6038

land.lhs.true19:                                  ; preds = %land.lhs.true13
  %16 = load ptr, ptr %entry.addr, align 8, !dbg !6039
  %pin = getelementptr inbounds %struct.acpi_prt_entry, ptr %16, i32 0, i32 1, !dbg !6040
  %17 = load i8, ptr %pin, align 8, !dbg !6040
  %conv20 = zext i8 %17 to i32, !dbg !6039
  %18 = load ptr, ptr %quirk, align 8, !dbg !6041
  %pin21 = getelementptr inbounds %struct.prt_quirk, ptr %18, i32 0, i32 4, !dbg !6042
  %19 = load i8, ptr %pin21, align 4, !dbg !6042
  %conv22 = zext i8 %19 to i32, !dbg !6041
  %cmp23 = icmp eq i32 %conv20, %conv22, !dbg !6043
  br i1 %cmp23, label %land.lhs.true25, label %if.end, !dbg !6044

land.lhs.true25:                                  ; preds = %land.lhs.true19
  %20 = load ptr, ptr %prt.addr, align 8, !dbg !6045
  %21 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %20, i32 0, i32 4, !dbg !6046
  %source = getelementptr inbounds %struct.anon.17, ptr %21, i32 0, i32 1, !dbg !6046
  %arraydecay = getelementptr inbounds [0 x i8], ptr %source, i64 0, i64 0, !dbg !6045
  %22 = load ptr, ptr %quirk, align 8, !dbg !6047
  %source26 = getelementptr inbounds %struct.prt_quirk, ptr %22, i32 0, i32 5, !dbg !6048
  %23 = load ptr, ptr %source26, align 8, !dbg !6048
  %call27 = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef %23) #16, !dbg !6049
  %tobool28 = icmp ne i32 %call27, 0, !dbg !6049
  br i1 %tobool28, label %if.end, label %land.lhs.true29, !dbg !6050

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %24 = load ptr, ptr %prt.addr, align 8, !dbg !6051
  %25 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %24, i32 0, i32 4, !dbg !6052
  %source30 = getelementptr inbounds %struct.anon.17, ptr %25, i32 0, i32 1, !dbg !6052
  %arraydecay31 = getelementptr inbounds [0 x i8], ptr %source30, i64 0, i64 0, !dbg !6051
  %call32 = call i64 @strlen(ptr noundef %arraydecay31) #16, !dbg !6053
  %26 = load ptr, ptr %quirk, align 8, !dbg !6054
  %actual_source = getelementptr inbounds %struct.prt_quirk, ptr %26, i32 0, i32 6, !dbg !6055
  %27 = load ptr, ptr %actual_source, align 8, !dbg !6055
  %call33 = call i64 @strlen(ptr noundef %27) #16, !dbg !6056
  %cmp34 = icmp uge i64 %call32, %call33, !dbg !6057
  br i1 %cmp34, label %if.then, label %if.end, !dbg !6058

if.then:                                          ; preds = %land.lhs.true29
  br label %do.body, !dbg !6059

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6062

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6062

do.end:                                           ; preds = %do.cond
  %28 = load ptr, ptr %entry.addr, align 8, !dbg !6059
  %id36 = getelementptr inbounds %struct.acpi_prt_entry, ptr %28, i32 0, i32 0, !dbg !6059
  %segment37 = getelementptr inbounds %struct.acpi_pci_id, ptr %id36, i32 0, i32 0, !dbg !6059
  %29 = load i16, ptr %segment37, align 8, !dbg !6059
  %conv38 = zext i16 %29 to i32, !dbg !6059
  %30 = load ptr, ptr %entry.addr, align 8, !dbg !6059
  %id39 = getelementptr inbounds %struct.acpi_prt_entry, ptr %30, i32 0, i32 0, !dbg !6059
  %bus40 = getelementptr inbounds %struct.acpi_pci_id, ptr %id39, i32 0, i32 1, !dbg !6059
  %31 = load i16, ptr %bus40, align 2, !dbg !6059
  %conv41 = zext i16 %31 to i32, !dbg !6059
  %32 = load ptr, ptr %entry.addr, align 8, !dbg !6059
  %id42 = getelementptr inbounds %struct.acpi_prt_entry, ptr %32, i32 0, i32 0, !dbg !6059
  %device43 = getelementptr inbounds %struct.acpi_pci_id, ptr %id42, i32 0, i32 2, !dbg !6059
  %33 = load i16, ptr %device43, align 4, !dbg !6059
  %conv44 = zext i16 %33 to i32, !dbg !6059
  %34 = load ptr, ptr %entry.addr, align 8, !dbg !6059
  %pin45 = getelementptr inbounds %struct.acpi_prt_entry, ptr %34, i32 0, i32 1, !dbg !6059
  %35 = load i8, ptr %pin45, align 8, !dbg !6059
  %conv46 = zext i8 %35 to i32, !dbg !6059
  %call47 = call zeroext i8 @pin_name(i32 noundef %conv46) #16, !dbg !6059
  %conv48 = zext i8 %call47 to i32, !dbg !6059
  %36 = load ptr, ptr %prt.addr, align 8, !dbg !6059
  %37 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %36, i32 0, i32 4, !dbg !6059
  %source49 = getelementptr inbounds %struct.anon.17, ptr %37, i32 0, i32 1, !dbg !6059
  %arraydecay50 = getelementptr inbounds [0 x i8], ptr %source49, i64 0, i64 0, !dbg !6059
  %38 = load ptr, ptr %quirk, align 8, !dbg !6059
  %actual_source51 = getelementptr inbounds %struct.prt_quirk, ptr %38, i32 0, i32 6, !dbg !6059
  %39 = load ptr, ptr %actual_source51, align 8, !dbg !6059
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %conv38, i32 noundef %conv41, i32 noundef %conv44, i32 noundef %conv48, ptr noundef %arraydecay50, ptr noundef %39) #17, !dbg !6059
  store i32 %call52, ptr %tmp, align 4, !dbg !6062
  %40 = load i32, ptr %tmp, align 4, !dbg !6059
  %41 = load ptr, ptr %prt.addr, align 8, !dbg !6064
  %42 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %41, i32 0, i32 4, !dbg !6065
  %source53 = getelementptr inbounds %struct.anon.17, ptr %42, i32 0, i32 1, !dbg !6065
  %arraydecay54 = getelementptr inbounds [0 x i8], ptr %source53, i64 0, i64 0, !dbg !6064
  %43 = load ptr, ptr %quirk, align 8, !dbg !6066
  %actual_source55 = getelementptr inbounds %struct.prt_quirk, ptr %43, i32 0, i32 6, !dbg !6067
  %44 = load ptr, ptr %actual_source55, align 8, !dbg !6067
  %call56 = call ptr @strcpy(ptr noundef %arraydecay54, ptr noundef %44) #16, !dbg !6068
  br label %if.end, !dbg !6069

if.end:                                           ; preds = %do.end, %land.lhs.true29, %land.lhs.true25, %land.lhs.true19, %land.lhs.true13, %land.lhs.true7, %land.lhs.true, %for.body
  br label %for.inc, !dbg !6070

for.inc:                                          ; preds = %if.end
  %45 = load i32, ptr %i, align 4, !dbg !6071
  %inc = add i32 %45, 1, !dbg !6071
  store i32 %inc, ptr %i, align 4, !dbg !6071
  br label %for.cond, !dbg !6072, !llvm.loop !6073

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %quirk) #15, !dbg !6075
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6075
  ret void, !dbg !6075
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6076 dso_local i32 @acpi_get_handle(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_pci_sysdata(ptr noundef %bus) #4 align 16 !dbg !6080 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6094, metadata !DIExpression()), !dbg !6095
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6096
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10, !dbg !6097
  %1 = load ptr, ptr %sysdata, align 8, !dbg !6097
  ret ptr %1, !dbg !6098
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6099 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6101, metadata !DIExpression()), !dbg !6106
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6102, metadata !DIExpression()), !dbg !6107
  %0 = load i64, ptr %size.addr, align 8, !dbg !6108
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6109
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6110

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6111
  %tobool = icmp ne i64 %2, 0, !dbg !6111
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6112

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6113
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6103, metadata !DIExpression()), !dbg !6114
  %3 = load i64, ptr %size.addr, align 8, !dbg !6115
  %cmp = icmp ugt i64 %3, 8192, !dbg !6117
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6118

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6119
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6120
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !6121
  store ptr %call, ptr %retval, align 8, !dbg !6122
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6122

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6123
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !6123
  store i32 %call2, ptr %index, align 4, !dbg !6124
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6125
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6126
  %9 = ptrtoint ptr %8 to i64, !dbg !6126
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !6127
  %idxprom = zext i32 %call3 to i64, !dbg !6128
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6128
  %10 = load i32, ptr %index, align 4, !dbg !6129
  %idxprom4 = zext i32 %10 to i64, !dbg !6128
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6128
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6128
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6130
  %13 = load i64, ptr %size.addr, align 8, !dbg !6131
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !6132
  store ptr %call6, ptr %retval, align 8, !dbg !6133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6133

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6134
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6135
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6136
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !6137
  store ptr %call8, ptr %retval, align 8, !dbg !6138
  br label %return, !dbg !6138

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6139
  ret ptr %16, !dbg !6139
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6140 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !6141 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6145, metadata !DIExpression()), !dbg !6147
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6146, metadata !DIExpression()), !dbg !6148
  %0 = load i64, ptr %size.addr, align 8, !dbg !6149
  %tobool = icmp ne i64 %0, 0, !dbg !6149
  br i1 %tobool, label %if.end, label %if.then, !dbg !6151

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6152
  br label %return, !dbg !6152

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6153
  %cmp = icmp ule i64 %1, 8, !dbg !6155
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6156

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6157
  br label %return, !dbg !6157

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6158
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6160
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6161

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6162
  %cmp4 = icmp ule i64 %3, 96, !dbg !6163
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6164

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6165
  br label %return, !dbg !6165

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6166
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6168
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6169

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6170
  %cmp9 = icmp ule i64 %5, 192, !dbg !6171
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6172

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6173
  br label %return, !dbg !6173

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6174
  %cmp12 = icmp ule i64 %6, 8, !dbg !6176
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6177

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6178
  br label %return, !dbg !6178

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6179
  %cmp15 = icmp ule i64 %7, 16, !dbg !6181
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6182

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6183
  br label %return, !dbg !6183

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6184
  %cmp18 = icmp ule i64 %8, 32, !dbg !6186
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6187

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6188
  br label %return, !dbg !6188

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6189
  %cmp21 = icmp ule i64 %9, 64, !dbg !6191
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6192

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6193
  br label %return, !dbg !6193

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6194
  %cmp24 = icmp ule i64 %10, 128, !dbg !6196
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6197

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6198
  br label %return, !dbg !6198

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6199
  %cmp27 = icmp ule i64 %11, 256, !dbg !6201
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6202

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6203
  br label %return, !dbg !6203

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6204
  %cmp30 = icmp ule i64 %12, 512, !dbg !6206
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6207

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6208
  br label %return, !dbg !6208

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6209
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6211
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6212

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6213
  br label %return, !dbg !6213

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6214
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6216
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6217

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6218
  br label %return, !dbg !6218

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6219
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6221
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6222

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6223
  br label %return, !dbg !6223

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6224
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6226
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6227

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6228
  br label %return, !dbg !6228

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6229
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6231
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6232

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6233
  br label %return, !dbg !6233

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6234
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6236
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6237

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6238
  br label %return, !dbg !6238

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6239
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6241
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6242

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6243
  br label %return, !dbg !6243

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6244
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6246
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6247

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6248
  br label %return, !dbg !6248

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6249
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6251
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6252

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6253
  br label %return, !dbg !6253

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6254
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6256
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6257

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6258
  br label %return, !dbg !6258

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6259
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6261
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6262

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6263
  br label %return, !dbg !6263

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6264
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6266
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6267

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6268
  br label %return, !dbg !6268

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6269, !range !6271, !noundef !972
  %tobool69 = trunc i8 %25 to i1, !dbg !6269
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6272

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6273

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #20, !dbg !6274, !srcloc !6277
  unreachable, !dbg !6274

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6278

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6279

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6280

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6282

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6280

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #15, !dbg !6284, !srcloc !6286
  br label %do.end75, !dbg !6284

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6280

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6287
  br label %return, !dbg !6287

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6288
  ret i32 %26, !dbg !6288
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6289 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !6295 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6299, metadata !DIExpression()), !dbg !6301
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6300, metadata !DIExpression()), !dbg !6302
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6303
  %and = and i32 %0, 17, !dbg !6303
  %cmp = icmp eq i32 %and, 0, !dbg !6303
  %lnot = xor i1 %cmp, true, !dbg !6303
  %lnot1 = xor i1 %lnot, true, !dbg !6303
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6303
  %conv = sext i32 %lnot.ext to i64, !dbg !6303
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6303
  %tobool = icmp ne i64 %expval, 0, !dbg !6303
  br i1 %tobool, label %if.then, label %if.end, !dbg !6305

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6306
  br label %return, !dbg !6306

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6307
  %and2 = and i32 %1, 1, !dbg !6309
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6309
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6310

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6311
  br label %return, !dbg !6311

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6312
  br label %return, !dbg !6312

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6314
  ret i32 %2, !dbg !6314
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6315 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6316 dso_local void @__compiletime_assert_204() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6317 dso_local i32 @dmi_check_system(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6319 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6323 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6326 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6330 dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bridge_has_boot_interrupt_variant(ptr noundef %bus) #0 align 16 !dbg !6333 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %bus_it = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6335, metadata !DIExpression()), !dbg !6337
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus_it) #15, !dbg !6338
  call void @llvm.dbg.declare(metadata ptr %bus_it, metadata !6336, metadata !DIExpression()), !dbg !6339
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6340
  store ptr %0, ptr %bus_it, align 8, !dbg !6342
  br label %for.cond, !dbg !6343

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %bus_it, align 8, !dbg !6344
  %tobool = icmp ne ptr %1, null, !dbg !6346
  br i1 %tobool, label %for.body, label %for.end, !dbg !6346

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %bus_it, align 8, !dbg !6347
  %self = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 4, !dbg !6350
  %3 = load ptr, ptr %self, align 8, !dbg !6350
  %tobool1 = icmp ne ptr %3, null, !dbg !6347
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6351

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4, !dbg !6352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6352

if.end:                                           ; preds = %for.body
  %4 = load ptr, ptr %bus_it, align 8, !dbg !6353
  %self2 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 4, !dbg !6355
  %5 = load ptr, ptr %self2, align 8, !dbg !6355
  %irq_reroute_variant = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 43, !dbg !6356
  %bf.load = load i40, ptr %irq_reroute_variant, align 1, !dbg !6356
  %bf.lshr = lshr i40 %bf.load, 10, !dbg !6356
  %bf.clear = and i40 %bf.lshr, 3, !dbg !6356
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !6356
  %tobool3 = icmp ne i32 %bf.cast, 0, !dbg !6353
  br i1 %tobool3, label %if.then4, label %if.end11, !dbg !6357

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %bus_it, align 8, !dbg !6358
  %self5 = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 4, !dbg !6359
  %7 = load ptr, ptr %self5, align 8, !dbg !6359
  %irq_reroute_variant6 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 43, !dbg !6360
  %bf.load7 = load i40, ptr %irq_reroute_variant6, align 1, !dbg !6360
  %bf.lshr8 = lshr i40 %bf.load7, 10, !dbg !6360
  %bf.clear9 = and i40 %bf.lshr8, 3, !dbg !6360
  %bf.cast10 = trunc i40 %bf.clear9 to i32, !dbg !6360
  store i32 %bf.cast10, ptr %retval, align 4, !dbg !6361
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6361

if.end11:                                         ; preds = %if.end
  br label %for.inc, !dbg !6362

for.inc:                                          ; preds = %if.end11
  %8 = load ptr, ptr %bus_it, align 8, !dbg !6363
  %parent = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1, !dbg !6364
  %9 = load ptr, ptr %parent, align 8, !dbg !6364
  store ptr %9, ptr %bus_it, align 8, !dbg !6365
  br label %for.cond, !dbg !6366, !llvm.loop !6367

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !6369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6369

cleanup:                                          ; preds = %for.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus_it) #15, !dbg !6370
  %10 = load i32, ptr %retval, align 4, !dbg !6370
  ret i32 %10, !dbg !6370
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6371 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!30}
!llvm.module.flags = !{!4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989}
!llvm.ident = !{!4990}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 446, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/pci_irq.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8dd3579eccdf66ad3093e8563de4b077")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 20)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 455, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 36)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 464, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 13)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 336, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 37)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !24, line: 480, type: !25, isLocal: true, isDefinition: true)
!24 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 21)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "prt_quirks", scope: !30, file: !2, line: 96, type: !4971, isLocal: true, isDefinition: true)
!30 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.pci_irq.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22pci_irq\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/pci_irq.ll drivers/acpi/pci_irq.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !203, globals: !4893, splitDebugInlining: false, nameTableKind: None)
!31 = !{!32, !40, !45, !51, !56, !64, !80, !88, !94, !101, !108, !114, !120, !127, !135, !143, !149, !158, !163, !168, !174, !184, !189, !198}
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !33, line: 312, baseType: !34, size: 32, elements: !35)
!33 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !{!36, !37, !38, !39}
!36 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!37 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!38 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!39 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !41, line: 2052, baseType: !34, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!42 = !{!43, !44}
!43 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!44 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !46, line: 54, baseType: !34, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!47 = !{!48, !49, !50}
!48 = !DIEnumerator(name: "USRQUOTA", value: 0)
!49 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!50 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !52, line: 65, baseType: !34, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!53 = !{!54, !55}
!54 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!55 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !57, line: 9, baseType: !34, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!58 = !{!59, !60, !61, !62, !63}
!59 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!60 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!61 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!62 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!63 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !65, line: 1325, baseType: !34, size: 32, elements: !66)
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !81, line: 68, baseType: !34, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!82 = !{!83, !84, !85, !86, !87}
!83 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!84 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!85 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!86 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!87 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !89, line: 16, baseType: !34, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!90 = !{!91, !92, !93}
!91 = !DIEnumerator(name: "TT_NONE", value: 0)
!92 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!93 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !95, line: 51, baseType: !34, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!96 = !{!97, !98, !99, !100}
!97 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!98 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!99 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!100 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !102, line: 15, baseType: !34, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!103 = !{!104, !105, !106, !107}
!104 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!105 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!106 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!107 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !109, line: 26, baseType: !34, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!112 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!113 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !115, line: 45, baseType: !34, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!116 = !{!117, !118, !119}
!117 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!118 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!119 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !121, line: 487, baseType: !34, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!122 = !{!123, !124, !125, !126}
!123 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!124 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!125 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!126 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !128, line: 620, baseType: !34, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!131 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!132 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!133 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!134 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !128, line: 597, baseType: !136, size: 32, elements: !137)
!136 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!137 = !{!138, !139, !140, !141, !142}
!138 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!139 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!140 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!141 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!142 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !144, line: 30, baseType: !34, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!145 = !{!146, !147, !148}
!146 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!147 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!148 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !121, line: 547, baseType: !34, size: 32, elements: !150)
!150 = !{!151, !152, !153, !154, !155, !156, !157}
!151 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!152 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!153 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!154 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!155 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!156 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!157 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !121, line: 564, baseType: !34, size: 32, elements: !159)
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!161 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!162 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !121, line: 577, baseType: !34, size: 32, elements: !164)
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!166 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!167 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !121, line: 503, baseType: !34, size: 32, elements: !169)
!169 = !{!170, !171, !172, !173}
!170 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!171 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!172 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!173 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_irq_model_id", file: !175, line: 91, baseType: !34, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!176 = !{!177, !178, !179, !180, !181, !182, !183}
!177 = !DIEnumerator(name: "ACPI_IRQ_MODEL_PIC", value: 0)
!178 = !DIEnumerator(name: "ACPI_IRQ_MODEL_IOAPIC", value: 1)
!179 = !DIEnumerator(name: "ACPI_IRQ_MODEL_IOSAPIC", value: 2)
!180 = !DIEnumerator(name: "ACPI_IRQ_MODEL_PLATFORM", value: 3)
!181 = !DIEnumerator(name: "ACPI_IRQ_MODEL_GIC", value: 4)
!182 = !DIEnumerator(name: "ACPI_IRQ_MODEL_LPIC", value: 5)
!183 = !DIEnumerator(name: "ACPI_IRQ_MODEL_COUNT", value: 6)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !185, line: 10, baseType: !34, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!186 = !{!187, !188}
!187 = !DIEnumerator(name: "false", value: 0)
!188 = !DIEnumerator(name: "true", value: 1)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !24, line: 364, baseType: !34, size: 32, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !197}
!191 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!192 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!193 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!194 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!195 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!196 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!197 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_irq_reroute_variant", file: !199, line: 250, baseType: !34, size: 32, elements: !200)
!199 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!200 = !{!201, !202}
!201 = !DIEnumerator(name: "INTEL_IRQ_REROUTE_VARIANT", value: 1)
!202 = !DIEnumerator(name: "MAX_IRQ_REROUTE_VARIANTS", value: 3)
!203 = !{!204, !209, !214, !215, !4874, !399, !1197, !136}
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !205, line: 17, baseType: !206)
!205 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !207, line: 21, baseType: !208)
!207 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!208 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !210, line: 127, baseType: !211)
!210 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !205, line: 23, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !207, line: 31, baseType: !213)
!213 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !217, line: 367, size: 11200, elements: !218)
!217 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!218 = !{!219, !222, !223, !225, !4622, !4623, !4624, !4633, !4651, !4726, !4756, !4780, !4801, !4808, !4817, !4849, !4863, !4867, !4868, !4869, !4870, !4871, !4872, !4873}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !216, file: !217, line: 368, baseType: !220, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !205, line: 21, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !207, line: 27, baseType: !34)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !216, file: !217, line: 369, baseType: !136, size: 32, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !216, file: !217, line: 370, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !210, line: 424, baseType: !214)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !216, file: !217, line: 371, baseType: !226, size: 512, offset: 128)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !227, line: 41, size: 512, elements: !228)
!227 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!228 = !{!229, !231, !4618, !4619, !4620, !4621}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !226, file: !227, line: 42, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !226, file: !227, line: 43, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !227, line: 125, size: 1408, elements: !235)
!235 = !{!236, !240, !244, !253, !4548, !4549, !4553, !4557, !4561, !4565, !4569, !4570, !4574, !4578, !4582, !4593, !4594, !4595, !4596, !4606, !4610, !4614}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !234, file: !227, line: 126, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!230, !230}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !234, file: !227, line: 127, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !230}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !234, file: !227, line: 128, baseType: !245, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !251}
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !249, line: 35, baseType: !250)
!249 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!250 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !234, file: !227, line: 129, baseType: !254, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !251, !259}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !121, line: 705, size: 5824, elements: !262)
!262 = !{!263, !4191, !4193, !4196, !4197, !4248, !4333, !4334, !4335, !4336, !4337, !4344, !4436, !4449, !4459, !4463, !4465, !4466, !4467, !4471, !4478, !4479, !4482, !4485, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4525, !4526, !4527, !4530, !4533, !4542, !4543, !4544, !4545, !4546, !4547}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !261, file: !121, line: 706, baseType: !264, size: 512)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !265, line: 64, size: 512, elements: !266)
!265 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!266 = !{!267, !270, !276, !278, !362, !4078, !4181, !4186, !4187, !4188, !4189, !4190}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !265, line: 65, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !264, file: !265, line: 66, baseType: !271, size: 128, offset: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !249, line: 190, size: 128, elements: !272)
!272 = !{!273, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !249, line: 191, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !271, file: !249, line: 191, baseType: !274, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !264, file: !265, line: 67, baseType: !277, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !264, file: !265, line: 68, baseType: !279, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !265, line: 168, size: 768, elements: !281)
!281 = !{!282, !283, !321, !322}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !280, file: !265, line: 169, baseType: !271, size: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !280, file: !265, line: 170, baseType: !284, size: 32, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !285, line: 29, baseType: !286)
!285 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !285, line: 17, size: 32, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, scope: !286, file: !285, line: 18, baseType: !289, size: 32)
!289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !286, file: !285, line: 18, size: 32, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !289, file: !285, line: 19, baseType: !292, size: 32)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !293, line: 14, size: 32, elements: !294)
!293 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !292, file: !293, line: 15, baseType: !296, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !297, line: 44, baseType: !298)
!297 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !297, line: 14, size: 32, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !297, line: 15, baseType: !301, size: 32)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !297, line: 15, size: 32, elements: !302)
!302 = !{!303, !308, !313}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !301, file: !297, line: 16, baseType: !304, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !249, line: 174, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 172, size: 32, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !305, file: !249, line: 173, baseType: !136, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !297, line: 24, baseType: !309, size: 16)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !301, file: !297, line: 24, size: 16, elements: !310)
!310 = !{!311, !312}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !309, file: !297, line: 25, baseType: !204, size: 8)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !309, file: !297, line: 26, baseType: !204, size: 8, offset: 8)
!313 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !297, line: 28, baseType: !314, size: 32)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !301, file: !297, line: 28, size: 32, elements: !315)
!315 = !{!316, !320}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !314, file: !297, line: 29, baseType: !317, size: 16)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !205, line: 19, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !207, line: 24, baseType: !319)
!319 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !314, file: !297, line: 30, baseType: !317, size: 16, offset: 16)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !280, file: !265, line: 171, baseType: !264, size: 512, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !280, file: !265, line: 172, baseType: !323, size: 64, offset: 704)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !265, line: 133, size: 192, elements: !326)
!326 = !{!327, !334, !339}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !325, file: !265, line: 134, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!136, !332}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !265, line: 135, baseType: !335, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!268, !332}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !325, file: !265, line: 136, baseType: !340, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!136, !332, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !265, line: 125, size: 20736, elements: !346)
!346 = !{!347, !352, !356, !357, !361}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !345, file: !265, line: 126, baseType: !348, size: 192)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 192, elements: !350)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!350 = !{!351}
!351 = !DISubrange(count: 3)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !345, file: !265, line: 127, baseType: !353, size: 4096, offset: 192)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 4096, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !345, file: !265, line: 128, baseType: !136, size: 32, offset: 4288)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !345, file: !265, line: 129, baseType: !358, size: 16384, offset: 4320)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 2048)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !345, file: !265, line: 130, baseType: !136, size: 32, offset: 20704)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !264, file: !265, line: 69, baseType: !363, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !265, line: 116, size: 384, elements: !366)
!366 = !{!367, !371, !400, !4040, !4068, !4072}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !365, file: !265, line: 117, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !277}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !365, file: !265, line: 118, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !375, line: 254, size: 128, elements: !376)
!375 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!376 = !{!377, !392}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !374, file: !375, line: 255, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!381, !277, !386, !349}
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !249, line: 66, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !383, line: 73, baseType: !384)
!383 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !383, line: 15, baseType: !385)
!385 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !375, line: 30, size: 128, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !387, file: !375, line: 31, baseType: !268, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !387, file: !375, line: 32, baseType: !391, size: 16, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !249, line: 24, baseType: !319)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !374, file: !375, line: 256, baseType: !393, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!381, !277, !386, !268, !396}
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !249, line: 61, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !383, line: 72, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !383, line: 16, baseType: !399)
!399 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !365, file: !265, line: 119, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !375, line: 84, size: 320, elements: !405)
!405 = !{!406, !407, !411, !4036, !4038}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !404, file: !375, line: 85, baseType: !268, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !404, file: !375, line: 86, baseType: !408, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!391, !277, !386, !136}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !404, file: !375, line: 88, baseType: !412, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!391, !277, !415, !136}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !375, line: 175, size: 512, elements: !417)
!417 = !{!418, !419, !420, !421, !4027, !4031, !4032}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !416, file: !375, line: 176, baseType: !387, size: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !416, file: !375, line: 177, baseType: !396, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !416, file: !375, line: 178, baseType: !214, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !416, file: !375, line: 179, baseType: !422, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !41, line: 472, size: 1536, align: 64, elements: !427)
!427 = !{!428, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !4021, !4022, !4023, !4024, !4025, !4026}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !426, file: !41, line: 473, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !41, line: 641, size: 4800, elements: !431)
!431 = !{!432, !433, !434, !442, !443, !450, !451, !454, !455, !3800, !3801, !3802, !3803, !3804, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3844, !3847, !3848, !3849, !3858, !3859, !3860, !3861}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !430, file: !41, line: 642, baseType: !391, size: 16)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !430, file: !41, line: 643, baseType: !319, size: 16, offset: 16)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !430, file: !41, line: 644, baseType: !435, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !436, line: 23, baseType: !437)
!436 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 21, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !437, file: !436, line: 22, baseType: !440, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !249, line: 37, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !383, line: 49, baseType: !34)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !430, file: !41, line: 645, baseType: !271, size: 128, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !430, file: !41, line: 646, baseType: !444, size: 32, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !436, line: 28, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 26, size: 32, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !445, file: !436, line: 27, baseType: !448, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !249, line: 38, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !383, line: 50, baseType: !34)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !430, file: !41, line: 647, baseType: !34, size: 32, offset: 224)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !430, file: !41, line: 650, baseType: !452, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !41, line: 607, flags: DIFlagFwdDecl)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !430, file: !41, line: 651, baseType: !452, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !430, file: !41, line: 654, baseType: !456, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !41, line: 1966, size: 2048, align: 512, elements: !459)
!459 = !{!460, !3628, !3638, !3642, !3646, !3650, !3654, !3658, !3662, !3666, !3670, !3671, !3675, !3679, !3716, !3745, !3749, !3755, !3759, !3763, !3767, !3771, !3775, !3781, !3785}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !458, file: !41, line: 1967, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!464, !429, !464, !34}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !466, line: 82, size: 1536, elements: !467)
!466 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!467 = !{!468, !469, !479, !487, !488, !503, !504, !508, !521, !3611, !3612, !3613, !3614, !3620, !3621, !3622}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !465, file: !466, line: 84, baseType: !34, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !465, file: !466, line: 85, baseType: !470, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !471, line: 275, baseType: !472)
!471 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !471, line: 275, size: 32, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !472, file: !471, line: 275, baseType: !475, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !471, line: 69, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !471, line: 64, size: 32, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !476, file: !471, line: 65, baseType: !34, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !465, file: !466, line: 86, baseType: !480, size: 128, offset: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !481, line: 38, size: 128, elements: !482)
!481 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!482 = !{!483, !485}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !480, file: !481, line: 39, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !480, file: !481, line: 39, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !465, file: !466, line: 87, baseType: !464, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !465, file: !466, line: 88, baseType: !489, size: 128, offset: 256)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !466, line: 49, size: 128, elements: !490)
!490 = !{!491, !500}
!491 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !466, line: 50, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !466, line: 50, size: 64, elements: !493)
!493 = !{!494, !499}
!494 = !DIDerivedType(tag: DW_TAG_member, scope: !492, file: !466, line: 51, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !492, file: !466, line: 51, size: 64, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !495, file: !466, line: 52, baseType: !220, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !495, file: !466, line: 52, baseType: !220, size: 32, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !492, file: !466, line: 54, baseType: !211, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !489, file: !466, line: 56, baseType: !501, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !465, file: !466, line: 89, baseType: !429, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !465, file: !466, line: 91, baseType: !505, size: 256, offset: 448)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 256, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !465, file: !466, line: 94, baseType: !509, size: 64, offset: 704)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !510, line: 25, size: 64, elements: !511)
!510 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, scope: !509, file: !510, line: 26, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !510, line: 26, size: 64, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !513, file: !510, line: 28, baseType: !212, size: 64, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !513, file: !510, line: 30, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !513, file: !510, line: 30, size: 64, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !517, file: !510, line: 31, baseType: !284, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !517, file: !510, line: 32, baseType: !136, size: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !465, file: !466, line: 95, baseType: !522, size: 64, offset: 768)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !466, line: 128, size: 1024, align: 512, elements: !525)
!525 = !{!526, !530, !531, !538, !544, !548, !552, !556, !557, !561, !565, !3601, !3605}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !524, file: !466, line: 129, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!136, !464, !34}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !524, file: !466, line: 130, baseType: !527, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !524, file: !466, line: 131, baseType: !532, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!136, !535, !537}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !524, file: !466, line: 132, baseType: !539, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!136, !535, !34, !268, !542}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !524, file: !466, line: 134, baseType: !545, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!136, !535}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !524, file: !466, line: 135, baseType: !549, size: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!136, !464}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !524, file: !466, line: 136, baseType: !553, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !464}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !524, file: !466, line: 137, baseType: !553, size: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !524, file: !466, line: 138, baseType: !558, size: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !464, !429}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !524, file: !466, line: 139, baseType: !562, size: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!349, !464, !349, !136}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !524, file: !466, line: 140, baseType: !566, size: 64, offset: 640)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!569, !3600}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !571, line: 70, size: 256, elements: !572)
!571 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!572 = !{!573, !574, !3596, !3597}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !570, file: !571, line: 71, baseType: !464, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !570, file: !571, line: 72, baseType: !575, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !41, line: 1190, size: 10752, elements: !577)
!577 = !{!578, !579, !582, !583, !584, !588, !1066, !1206, !1246, !1336, !1340, !1341, !1342, !1343, !1344, !1353, !1354, !1355, !1356, !1361, !1365, !1366, !1369, !1372, !1375, !1378, !1379, !1380, !1421, !3529, !3530, !3531, !3532, !3533, !3534, !3537, !3539, !3546, !3547, !3548, !3549, !3550, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !576, file: !41, line: 1191, baseType: !271, size: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !576, file: !41, line: 1192, baseType: !580, size: 32, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !249, line: 21, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !249, line: 18, baseType: !220)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !576, file: !41, line: 1193, baseType: !208, size: 8, offset: 160)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !576, file: !41, line: 1194, baseType: !399, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !576, file: !41, line: 1195, baseType: !585, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !249, line: 52, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !383, line: 88, baseType: !587)
!587 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !576, file: !41, line: 1196, baseType: !589, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !41, line: 2366, size: 576, elements: !591)
!591 = !{!592, !593, !594, !601, !605, !609, !613, !1051, !1052, !1056, !1058, !1059, !1060, !1062, !1063, !1064, !1065}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !590, file: !41, line: 2367, baseType: !268, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !590, file: !41, line: 2368, baseType: !136, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !590, file: !41, line: 2376, baseType: !595, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!136, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !600, line: 32, flags: DIFlagFwdDecl)
!600 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!601 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !590, file: !41, line: 2377, baseType: !602, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !41, line: 75, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !590, file: !41, line: 2378, baseType: !606, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!464, !589, !136, !268, !214}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !590, file: !41, line: 2380, baseType: !610, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !575}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !590, file: !41, line: 2381, baseType: !614, size: 64, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !33, line: 402, size: 9216, align: 512, elements: !616)
!616 = !{!617, !618, !619, !623, !645, !671, !672, !673, !674, !678, !683, !684, !704, !760, !761, !762, !763, !764, !765, !766, !767, !775, !779, !806, !827, !828, !829, !830, !839, !862, !863, !866, !869, !870, !871, !872, !873, !874, !875, !880, !881, !1009, !1017, !1018, !1019, !1021, !1025, !1026, !1030, !1031, !1032, !1033, !1035, !1036, !1037, !1044, !1045, !1046, !1050}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !615, file: !33, line: 403, baseType: !32, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !615, file: !33, line: 406, baseType: !271, size: 128, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !615, file: !33, line: 409, baseType: !620, size: 448, offset: 192)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: 56)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !615, file: !33, line: 417, baseType: !624, size: 768, offset: 640)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !33, line: 45, size: 768, elements: !625)
!625 = !{!626, !627, !628, !629, !632}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !624, file: !33, line: 46, baseType: !264, size: 512)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !624, file: !33, line: 47, baseType: !614, size: 64, offset: 512)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !624, file: !33, line: 48, baseType: !277, size: 64, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !624, file: !33, line: 49, baseType: !630, size: 64, offset: 640)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !33, line: 49, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !624, file: !33, line: 50, baseType: !633, size: 64, offset: 704)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !635, line: 26, size: 256, elements: !636)
!635 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !634, file: !635, line: 27, baseType: !34, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !634, file: !635, line: 28, baseType: !639, size: 192, offset: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !640, line: 43, size: 192, elements: !641)
!640 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!641 = !{!642, !644}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !639, file: !640, line: 44, baseType: !643, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !293, line: 23, baseType: !292)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !639, file: !640, line: 45, baseType: !271, size: 128, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !615, file: !33, line: 418, baseType: !646, size: 64, offset: 1408)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !33, line: 53, size: 448, elements: !648)
!648 = !{!649, !650, !655, !659, !663, !667}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !647, file: !33, line: 54, baseType: !387, size: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !647, file: !33, line: 55, baseType: !651, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!381, !646, !654, !349}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !647, file: !33, line: 57, baseType: !656, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!381, !646, !654, !268, !396}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !647, file: !33, line: 59, baseType: !660, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !614, !268}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !647, file: !33, line: 60, baseType: !664, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!136, !614}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !647, file: !33, line: 61, baseType: !668, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !614}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !615, file: !33, line: 419, baseType: !268, size: 64, offset: 1472)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !615, file: !33, line: 420, baseType: !268, size: 64, offset: 1536)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !615, file: !33, line: 421, baseType: !277, size: 64, offset: 1600)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !615, file: !33, line: 424, baseType: !675, size: 64, offset: 1664)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !33, line: 424, flags: DIFlagFwdDecl)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !615, file: !33, line: 425, baseType: !679, size: 64, offset: 1728)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !205, line: 20, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !207, line: 26, baseType: !136)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !615, file: !33, line: 426, baseType: !34, size: 32, offset: 1792)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !615, file: !33, line: 435, baseType: !685, size: 256, offset: 1856)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !686, line: 66, size: 256, elements: !687)
!686 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!687 = !{!688, !697, !698, !703}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !685, file: !686, line: 67, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !690, line: 13, baseType: !691)
!690 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !249, line: 181, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 179, size: 64, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !692, file: !249, line: 180, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !205, line: 22, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !207, line: 30, baseType: !587)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !685, file: !686, line: 68, baseType: !643, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !685, file: !686, line: 70, baseType: !699, size: 32, offset: 96)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !700, line: 15, size: 32, elements: !701)
!700 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !699, file: !700, line: 20, baseType: !304, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !685, file: !686, line: 72, baseType: !271, size: 128, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !615, file: !33, line: 437, baseType: !705, size: 64, offset: 2112)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !707, line: 69, size: 320, elements: !708)
!707 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!708 = !{!709, !710, !711, !731, !733, !737, !738}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !706, file: !707, line: 70, baseType: !268, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !706, file: !707, line: 71, baseType: !614, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !706, file: !707, line: 72, baseType: !712, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !707, line: 47, size: 256, elements: !715)
!715 = !{!716, !717, !723, !727}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !714, file: !707, line: 49, baseType: !34, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !714, file: !707, line: 51, baseType: !718, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!136, !268, !721}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !714, file: !707, line: 53, baseType: !724, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!136, !349, !721}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !714, file: !707, line: 55, baseType: !728, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !214}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !706, file: !707, line: 73, baseType: !732, size: 16, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !706, file: !707, line: 74, baseType: !734, size: 8, offset: 208)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !205, line: 16, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !207, line: 20, baseType: !736)
!736 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !706, file: !707, line: 75, baseType: !204, size: 8, offset: 216)
!738 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !707, line: 76, baseType: !739, size: 64, offset: 256)
!739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !707, line: 76, size: 64, elements: !740)
!740 = !{!741, !742, !749}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !739, file: !707, line: 77, baseType: !214, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !739, file: !707, line: 78, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !707, line: 86, size: 128, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !745, file: !707, line: 87, baseType: !34, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !745, file: !707, line: 88, baseType: !349, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !739, file: !707, line: 79, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !707, line: 92, size: 256, elements: !753)
!753 = !{!754, !755, !756, !758, !759}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !752, file: !707, line: 94, baseType: !34, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !752, file: !707, line: 95, baseType: !34, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !752, file: !707, line: 96, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !752, file: !707, line: 97, baseType: !712, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !752, file: !707, line: 98, baseType: !214, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !615, file: !33, line: 438, baseType: !34, size: 32, offset: 2176)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !615, file: !33, line: 441, baseType: !34, size: 32, offset: 2208)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !615, file: !33, line: 442, baseType: !675, size: 64, offset: 2240)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !615, file: !33, line: 443, baseType: !679, size: 64, offset: 2304)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !615, file: !33, line: 444, baseType: !248, size: 8, offset: 2368)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !615, file: !33, line: 451, baseType: !248, size: 8, offset: 2376)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !615, file: !33, line: 454, baseType: !34, size: 32, offset: 2400)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !615, file: !33, line: 455, baseType: !768, size: 64, offset: 2432)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !770, line: 23, size: 96, elements: !771)
!770 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!771 = !{!772, !773, !774}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !769, file: !770, line: 24, baseType: !136, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !769, file: !770, line: 24, baseType: !136, size: 32, offset: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !769, file: !770, line: 24, baseType: !136, size: 32, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !615, file: !33, line: 458, baseType: !776, size: 64, offset: 2496)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!136}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !615, file: !33, line: 460, baseType: !780, size: 4032, align: 512, offset: 2560)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 4032, elements: !804)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !33, line: 362, size: 576, elements: !782)
!782 = !{!783, !784, !785}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !781, file: !33, line: 363, baseType: !214, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !781, file: !33, line: 364, baseType: !34, size: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !781, file: !33, line: 367, baseType: !786, size: 448, offset: 128)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !33, line: 319, size: 448, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !786, file: !33, line: 320, baseType: !614, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !786, file: !33, line: 321, baseType: !790, size: 384, offset: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !791, line: 40, size: 384, elements: !792)
!791 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !790, file: !791, line: 41, baseType: !794, size: 384, align: 64)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 384, align: 64, elements: !802)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !796, line: 5, size: 192, align: 64, elements: !797)
!796 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!797 = !{!798, !799, !801}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !795, file: !796, line: 6, baseType: !399, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !795, file: !796, line: 7, baseType: !800, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !795, file: !796, line: 8, baseType: !800, size: 64, offset: 128)
!802 = !{!803}
!803 = !DISubrange(count: 2)
!804 = !{!805}
!805 = !DISubrange(count: 7)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !615, file: !33, line: 463, baseType: !807, size: 192, offset: 6592)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !808, line: 8, size: 192, elements: !809)
!808 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!809 = !{!810, !811, !813}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !807, file: !808, line: 10, baseType: !34, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !807, file: !808, line: 11, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !807, file: !808, line: 12, baseType: !814, size: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !816, line: 59, size: 48, elements: !817)
!816 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!817 = !{!818, !822, !823, !824, !825, !826}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !815, file: !816, line: 60, baseType: !819, size: 16)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !205, line: 18, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !207, line: 23, baseType: !821)
!821 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !815, file: !816, line: 61, baseType: !819, size: 16, offset: 16)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !815, file: !816, line: 63, baseType: !34, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !815, file: !816, line: 64, baseType: !34, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !815, file: !816, line: 65, baseType: !34, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !815, file: !816, line: 66, baseType: !34, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !615, file: !33, line: 465, baseType: !399, size: 64, offset: 6784)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !615, file: !33, line: 469, baseType: !34, size: 32, offset: 6848)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !615, file: !33, line: 470, baseType: !271, size: 128, offset: 6912)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !615, file: !33, line: 471, baseType: !831, size: 64, offset: 7040)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !833, line: 33, size: 96, elements: !834)
!833 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!834 = !{!835, !836, !837, !838}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !832, file: !833, line: 37, baseType: !136, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !832, file: !833, line: 43, baseType: !136, size: 32, offset: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !832, file: !833, line: 45, baseType: !319, size: 16, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !832, file: !833, line: 47, baseType: !319, size: 16, offset: 80)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !615, file: !33, line: 476, baseType: !840, size: 64, offset: 7104)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !33, line: 378, size: 256, elements: !842)
!842 = !{!843, !859, !860, !861}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !841, file: !33, line: 379, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !846, line: 204, baseType: !847)
!846 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !846, line: 197, size: 192, elements: !848)
!848 = !{!849, !851, !852, !853, !855, !857}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !847, file: !846, line: 198, baseType: !850, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !846, line: 21, baseType: !221)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !847, file: !846, line: 199, baseType: !208, size: 8, offset: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !847, file: !846, line: 200, baseType: !208, size: 8, offset: 40)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !847, file: !846, line: 201, baseType: !854, size: 16, offset: 48)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !846, line: 17, baseType: !318)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !847, file: !846, line: 202, baseType: !856, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !846, line: 16, baseType: !212)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !847, file: !846, line: 203, baseType: !858, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !846, line: 22, baseType: !212)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !841, file: !33, line: 380, baseType: !34, size: 32, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !841, file: !33, line: 381, baseType: !349, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !841, file: !33, line: 382, baseType: !349, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !615, file: !33, line: 477, baseType: !841, size: 256, offset: 7168)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !615, file: !33, line: 480, baseType: !864, size: 64, offset: 7424)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !33, line: 480, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !615, file: !33, line: 483, baseType: !867, size: 64, offset: 7488)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !33, line: 483, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !615, file: !33, line: 488, baseType: !349, size: 64, offset: 7552)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !615, file: !33, line: 492, baseType: !214, size: 64, offset: 7616)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !615, file: !33, line: 493, baseType: !34, size: 32, offset: 7680)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !615, file: !33, line: 495, baseType: !214, size: 64, offset: 7744)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !615, file: !33, line: 496, baseType: !34, size: 32, offset: 7808)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !615, file: !33, line: 499, baseType: !34, size: 32, offset: 7840)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !615, file: !33, line: 500, baseType: !876, size: 64, offset: 7872)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !878, line: 45, baseType: !879)
!878 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !615, file: !33, line: 503, baseType: !34, size: 32, offset: 7936)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !615, file: !33, line: 504, baseType: !882, size: 64, offset: 8000)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !885, line: 96, size: 192, elements: !886)
!885 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!886 = !{!887, !888, !969, !973}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !884, file: !885, line: 97, baseType: !34, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !884, file: !885, line: 98, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !885, line: 24, size: 3072, elements: !891)
!891 = !{!892, !894, !895, !896, !897, !921, !922, !923, !924, !942, !954, !955, !966, !967, !968}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !890, file: !885, line: 26, baseType: !893, size: 128)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 128, elements: !802)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !890, file: !885, line: 27, baseType: !893, size: 128, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !890, file: !885, line: 28, baseType: !136, size: 32, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !890, file: !885, line: 31, baseType: !284, size: 32, align: 512, offset: 512)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !890, file: !885, line: 32, baseType: !898, size: 960, offset: 576)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !899, line: 206, size: 960, elements: !900)
!899 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!900 = !{!901, !910, !915, !917, !918, !920}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !898, file: !899, line: 207, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !249, line: 232, size: 128, align: 64, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !903, file: !249, line: 233, baseType: !902, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !903, file: !249, line: 234, baseType: !907, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !902}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !898, file: !899, line: 208, baseType: !911, size: 256, offset: 64)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !912, size: 256, elements: !913)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!913 = !{!914}
!914 = !DISubrange(count: 4)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !898, file: !899, line: 209, baseType: !916, size: 256, offset: 320)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 256, elements: !913)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !898, file: !899, line: 213, baseType: !385, size: 64, offset: 576)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !898, file: !899, line: 215, baseType: !919, size: 256, offset: 640)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 256, elements: !913)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !898, file: !899, line: 216, baseType: !204, size: 8, offset: 896)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !890, file: !885, line: 33, baseType: !399, size: 64, offset: 1536)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !890, file: !885, line: 34, baseType: !399, size: 64, offset: 1600)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !890, file: !885, line: 35, baseType: !248, size: 8, offset: 1664)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !890, file: !885, line: 36, baseType: !925, size: 320, offset: 1728)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !926, line: 11, size: 320, elements: !927)
!926 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!927 = !{!928, !935, !936, !941}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !925, file: !926, line: 16, baseType: !929, size: 128)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !249, line: 198, size: 128, elements: !930)
!930 = !{!931, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !929, file: !249, line: 199, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !929, file: !249, line: 199, baseType: !934, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !925, file: !926, line: 17, baseType: !399, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !925, file: !926, line: 18, baseType: !937, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{null, !940}
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !925, file: !926, line: 19, baseType: !220, size: 32, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !890, file: !885, line: 37, baseType: !943, size: 256, offset: 2048)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !944, line: 98, size: 256, elements: !945)
!944 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !943, file: !944, line: 99, baseType: !689, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !943, file: !944, line: 100, baseType: !271, size: 128, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !943, file: !944, line: 101, baseType: !949, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !944, line: 21, baseType: !950)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !953}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !890, file: !885, line: 38, baseType: !903, size: 128, align: 64, offset: 2304)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !890, file: !885, line: 39, baseType: !956, size: 64, offset: 2432)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !885, line: 49, size: 768, elements: !958)
!958 = !{!959, !960, !961, !962, !963, !964, !965}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !957, file: !885, line: 50, baseType: !284, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !957, file: !885, line: 51, baseType: !916, size: 256, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !957, file: !885, line: 53, baseType: !916, size: 256, offset: 320)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !957, file: !885, line: 54, baseType: !399, size: 64, offset: 576)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !957, file: !885, line: 55, baseType: !956, size: 64, offset: 640)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !957, file: !885, line: 56, baseType: !136, size: 32, offset: 704)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !957, file: !885, line: 57, baseType: !136, size: 32, offset: 736)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !890, file: !885, line: 40, baseType: !399, size: 64, offset: 2496)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !890, file: !885, line: 42, baseType: !136, size: 32, offset: 2560)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !890, file: !885, line: 43, baseType: !883, size: 64, offset: 2624)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !884, file: !885, line: 99, baseType: !970, offset: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !971, line: 211, elements: !972)
!971 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!972 = !{}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !884, file: !885, line: 100, baseType: !974, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !885, line: 63, size: 3008, elements: !976)
!976 = !{!977, !978, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1008}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !975, file: !885, line: 64, baseType: !956, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !975, file: !885, line: 65, baseType: !979, size: 192, offset: 64)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !956, size: 192, elements: !350)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !975, file: !885, line: 67, baseType: !136, size: 32, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !975, file: !885, line: 68, baseType: !685, size: 256, offset: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !975, file: !885, line: 69, baseType: !284, size: 32, offset: 576)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !975, file: !885, line: 70, baseType: !685, size: 256, offset: 640)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !975, file: !885, line: 71, baseType: !399, size: 64, offset: 896)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !975, file: !885, line: 72, baseType: !399, size: 64, offset: 960)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !975, file: !885, line: 73, baseType: !399, size: 64, offset: 1024)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !975, file: !885, line: 74, baseType: !399, size: 64, offset: 1088)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !975, file: !885, line: 75, baseType: !399, size: 64, offset: 1152)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !975, file: !885, line: 76, baseType: !399, size: 64, offset: 1216)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !975, file: !885, line: 77, baseType: !399, size: 64, offset: 1280)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !975, file: !885, line: 78, baseType: !399, size: 64, offset: 1344)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !975, file: !885, line: 79, baseType: !248, size: 8, offset: 1408)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !975, file: !885, line: 80, baseType: !399, size: 64, offset: 1472)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !975, file: !885, line: 81, baseType: !685, size: 256, offset: 1536)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !975, file: !885, line: 82, baseType: !634, size: 256, offset: 1792)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !975, file: !885, line: 84, baseType: !304, size: 32, offset: 2048)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !975, file: !885, line: 87, baseType: !399, size: 64, offset: 2112)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !975, file: !885, line: 88, baseType: !399, size: 64, offset: 2176)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !975, file: !885, line: 89, baseType: !1000, size: 704, offset: 2240)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !944, line: 111, size: 704, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1007}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1000, file: !944, line: 112, baseType: !943, size: 256)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1000, file: !944, line: 113, baseType: !925, size: 320, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1000, file: !944, line: 116, baseType: !1005, size: 64, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !944, line: 18, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1000, file: !944, line: 117, baseType: !136, size: 32, offset: 640)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !975, file: !885, line: 90, baseType: !883, size: 64, offset: 2944)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !615, file: !33, line: 515, baseType: !1010, size: 64, offset: 8064)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1012, line: 117, size: 128, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1013 = !{!1014, !1015, !1016}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1011, file: !1012, line: 118, baseType: !681, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1011, file: !1012, line: 119, baseType: !681, size: 32, offset: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1011, file: !1012, line: 120, baseType: !385, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !615, file: !33, line: 516, baseType: !34, size: 32, offset: 8128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !615, file: !33, line: 519, baseType: !34, size: 32, offset: 8160)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !615, file: !33, line: 520, baseType: !1020, size: 64, offset: 8192)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !615, file: !33, line: 523, baseType: !1022, size: 64, offset: 8256)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !33, line: 523, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !615, file: !33, line: 524, baseType: !34, size: 32, offset: 8320)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !615, file: !33, line: 525, baseType: !1027, size: 64, offset: 8384)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !33, line: 525, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !615, file: !33, line: 526, baseType: !34, size: 32, offset: 8448)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !615, file: !33, line: 533, baseType: !214, size: 64, offset: 8512)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !615, file: !33, line: 534, baseType: !34, size: 32, offset: 8576)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !615, file: !33, line: 535, baseType: !1034, size: 64, offset: 8640)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !615, file: !33, line: 536, baseType: !34, size: 32, offset: 8704)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !615, file: !33, line: 539, baseType: !136, size: 32, offset: 8736)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !615, file: !33, line: 540, baseType: !1038, size: 64, offset: 8768)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1040, line: 32, size: 64, elements: !1041)
!1040 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1039, file: !1040, line: 33, baseType: !681, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1039, file: !1040, line: 34, baseType: !681, size: 32, offset: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !615, file: !33, line: 563, baseType: !271, size: 128, offset: 8832)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !615, file: !33, line: 565, baseType: !271, size: 128, offset: 8960)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !615, file: !33, line: 568, baseType: !1047, size: 64, offset: 9088)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !615, file: !33, line: 570, baseType: !304, size: 32, offset: 9152)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !590, file: !41, line: 2382, baseType: !589, size: 64, offset: 448)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !590, file: !41, line: 2383, baseType: !1053, size: 64, offset: 512)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !249, line: 194, size: 64, elements: !1054)
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1053, file: !249, line: 195, baseType: !932, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !590, file: !41, line: 2385, baseType: !1057, offset: 576)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !971, line: 206, elements: !972)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !590, file: !41, line: 2386, baseType: !1057, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !590, file: !41, line: 2387, baseType: !1057, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !590, file: !41, line: 2388, baseType: !1061, offset: 576)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1057, elements: !350)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !590, file: !41, line: 2390, baseType: !1057, offset: 576)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !590, file: !41, line: 2391, baseType: !1057, offset: 576)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !590, file: !41, line: 2392, baseType: !1057, offset: 576)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !590, file: !41, line: 2393, baseType: !1057, offset: 576)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !576, file: !41, line: 1197, baseType: !1067, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1069)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !41, line: 2057, size: 1664, elements: !1070)
!1070 = !{!1071, !1075, !1079, !1080, !1084, !1090, !1094, !1095, !1096, !1100, !1104, !1108, !1109, !1110, !1116, !1120, !1121, !1128, !1129, !1130, !1131, !1135, !1139, !1188, !1204, !1205}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1069, file: !41, line: 2058, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!429, !575}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1069, file: !41, line: 2059, baseType: !1076, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null, !429}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1069, file: !41, line: 2060, baseType: !1076, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1069, file: !41, line: 2062, baseType: !1081, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !429, !136}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1069, file: !41, line: 2063, baseType: !1085, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!136, !429, !1088}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !41, line: 309, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1069, file: !41, line: 2064, baseType: !1091, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!136, !429}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1069, file: !41, line: 2065, baseType: !1076, size: 64, offset: 384)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1069, file: !41, line: 2066, baseType: !610, size: 64, offset: 448)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1069, file: !41, line: 2067, baseType: !1097, size: 64, offset: 512)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!136, !575, !136}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1069, file: !41, line: 2068, baseType: !1101, size: 64, offset: 576)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!136, !575, !40}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1069, file: !41, line: 2069, baseType: !1105, size: 64, offset: 640)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!136, !575}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1069, file: !41, line: 2070, baseType: !1101, size: 64, offset: 704)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1069, file: !41, line: 2071, baseType: !1105, size: 64, offset: 768)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1069, file: !41, line: 2072, baseType: !1111, size: 64, offset: 832)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!136, !464, !1114}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !41, line: 62, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1069, file: !41, line: 2073, baseType: !1117, size: 64, offset: 896)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!136, !575, !812, !349}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1069, file: !41, line: 2074, baseType: !610, size: 64, offset: 960)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1069, file: !41, line: 2076, baseType: !1122, size: 64, offset: 1024)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!136, !1125, !464}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1127, line: 66, flags: DIFlagFwdDecl)
!1127 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1069, file: !41, line: 2077, baseType: !1122, size: 64, offset: 1088)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1069, file: !41, line: 2078, baseType: !1122, size: 64, offset: 1152)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1069, file: !41, line: 2079, baseType: !1122, size: 64, offset: 1216)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1069, file: !41, line: 2081, baseType: !1132, size: 64, offset: 1280)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!381, !575, !136, !349, !396, !585}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1069, file: !41, line: 2082, baseType: !1136, size: 64, offset: 1344)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!381, !575, !136, !268, !396, !585}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1069, file: !41, line: 2083, baseType: !1140, size: 64, offset: 1408)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!1143, !429}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !46, line: 296, size: 1664, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1171, !1172, !1173}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1145, file: !46, line: 297, baseType: !929, size: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1145, file: !46, line: 298, baseType: !271, size: 128, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1145, file: !46, line: 299, baseType: !271, size: 128, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1145, file: !46, line: 300, baseType: !271, size: 128, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1145, file: !46, line: 301, baseType: !685, size: 256, offset: 512)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1145, file: !46, line: 302, baseType: !284, size: 32, offset: 768)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1145, file: !46, line: 303, baseType: !304, size: 32, offset: 800)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1145, file: !46, line: 304, baseType: !575, size: 64, offset: 832)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1145, file: !46, line: 305, baseType: !1156, size: 64, offset: 896)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !46, line: 68, size: 64, elements: !1157)
!1157 = !{!1158, !1170}
!1158 = !DIDerivedType(tag: DW_TAG_member, scope: !1156, file: !46, line: 69, baseType: !1159, size: 32)
!1159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1156, file: !46, line: 69, size: 32, elements: !1160)
!1160 = !{!1161, !1162, !1163}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1159, file: !46, line: 70, baseType: !435, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1159, file: !46, line: 71, baseType: !444, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1159, file: !46, line: 72, baseType: !1164, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1165, line: 24, baseType: !1166)
!1165 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1165, line: 22, size: 32, elements: !1167)
!1167 = !{!1168}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1166, file: !1165, line: 23, baseType: !1169, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1165, line: 20, baseType: !441)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1156, file: !46, line: 74, baseType: !45, size: 32, offset: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1145, file: !46, line: 306, baseType: !585, size: 64, offset: 960)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1145, file: !46, line: 307, baseType: !399, size: 64, offset: 1024)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1145, file: !46, line: 308, baseType: !1174, size: 576, offset: 1088)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !46, line: 205, size: 576, elements: !1175)
!1175 = !{!1176, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1187}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1174, file: !46, line: 206, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !46, line: 66, baseType: !587)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1174, file: !46, line: 207, baseType: !1177, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1174, file: !46, line: 208, baseType: !1177, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1174, file: !46, line: 209, baseType: !1177, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1174, file: !46, line: 210, baseType: !1177, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1174, file: !46, line: 211, baseType: !1177, size: 64, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1174, file: !46, line: 212, baseType: !1177, size: 64, offset: 384)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1174, file: !46, line: 213, baseType: !1185, size: 64, offset: 448)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1186, line: 8, baseType: !696)
!1186 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1174, file: !46, line: 214, baseType: !1185, size: 64, offset: 512)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1069, file: !41, line: 2085, baseType: !1189, size: 64, offset: 1472)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!385, !575, !1192}
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1194, line: 15, size: 256, elements: !1195)
!1194 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1195 = !{!1196, !1198, !1199, !1200, !1201}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1193, file: !1194, line: 16, baseType: !1197, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !249, line: 154, baseType: !34)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1193, file: !1194, line: 19, baseType: !136, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1193, file: !1194, line: 26, baseType: !399, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1193, file: !1194, line: 33, baseType: !399, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1193, file: !1194, line: 36, baseType: !1202, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !65, line: 33, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1069, file: !41, line: 2087, baseType: !1189, size: 64, offset: 1536)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1069, file: !41, line: 2089, baseType: !610, size: 64, offset: 1600)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !576, file: !41, line: 1198, baseType: !1207, size: 64, offset: 448)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1209)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !46, line: 324, size: 704, elements: !1210)
!1210 = !{!1211, !1215, !1219, !1223, !1224, !1225, !1226, !1227, !1232, !1237, !1241}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1209, file: !46, line: 325, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!136, !1144}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1209, file: !46, line: 326, baseType: !1216, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!1144, !575, !136}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1209, file: !46, line: 327, baseType: !1220, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !1144}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1209, file: !46, line: 328, baseType: !1212, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1209, file: !46, line: 329, baseType: !1212, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1209, file: !46, line: 330, baseType: !1212, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1209, file: !46, line: 331, baseType: !1097, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1209, file: !46, line: 334, baseType: !1228, size: 64, offset: 448)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!1231, !429}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1209, file: !46, line: 335, baseType: !1233, size: 64, offset: 512)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!136, !429, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1209, file: !46, line: 337, baseType: !1238, size: 64, offset: 576)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!136, !429, !1231}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1209, file: !46, line: 339, baseType: !1242, size: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!136, !575, !1245}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !576, file: !41, line: 1199, baseType: !1247, size: 64, offset: 512)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1249)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !46, line: 430, size: 704, elements: !1250)
!1250 = !{!1251, !1262, !1263, !1267, !1268, !1269, !1284, !1307, !1311, !1312, !1335}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1249, file: !46, line: 431, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!136, !575, !136, !136, !1255}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1257)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1258, line: 8, size: 128, elements: !1259)
!1258 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1257, file: !1258, line: 9, baseType: !569, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1257, file: !1258, line: 10, baseType: !464, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1249, file: !46, line: 432, baseType: !1097, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1249, file: !46, line: 433, baseType: !1264, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!136, !575, !34}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1249, file: !46, line: 434, baseType: !1264, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1249, file: !46, line: 435, baseType: !1097, size: 64, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1249, file: !46, line: 436, baseType: !1270, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!136, !575, !136, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !46, line: 417, size: 256, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1274, file: !46, line: 418, baseType: !136, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1274, file: !46, line: 419, baseType: !34, size: 32, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1274, file: !46, line: 420, baseType: !34, size: 32, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1274, file: !46, line: 422, baseType: !34, size: 32, offset: 96)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1274, file: !46, line: 423, baseType: !34, size: 32, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1274, file: !46, line: 424, baseType: !34, size: 32, offset: 160)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1274, file: !46, line: 425, baseType: !34, size: 32, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1274, file: !46, line: 426, baseType: !34, size: 32, offset: 224)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1249, file: !46, line: 437, baseType: !1285, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!136, !575, !1156, !1288}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !46, line: 345, size: 960, elements: !1290)
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1289, file: !46, line: 346, baseType: !136, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1289, file: !46, line: 347, baseType: !211, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1289, file: !46, line: 348, baseType: !211, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1289, file: !46, line: 349, baseType: !211, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1289, file: !46, line: 350, baseType: !211, size: 64, offset: 256)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1289, file: !46, line: 351, baseType: !211, size: 64, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1289, file: !46, line: 352, baseType: !211, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1289, file: !46, line: 353, baseType: !695, size: 64, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1289, file: !46, line: 355, baseType: !695, size: 64, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1289, file: !46, line: 356, baseType: !136, size: 32, offset: 576)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1289, file: !46, line: 357, baseType: !136, size: 32, offset: 608)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1289, file: !46, line: 358, baseType: !211, size: 64, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1289, file: !46, line: 359, baseType: !211, size: 64, offset: 704)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1289, file: !46, line: 360, baseType: !211, size: 64, offset: 768)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1289, file: !46, line: 361, baseType: !695, size: 64, offset: 832)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1289, file: !46, line: 362, baseType: !136, size: 32, offset: 896)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1249, file: !46, line: 438, baseType: !1308, size: 64, offset: 448)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!136, !575, !1245, !1288}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1249, file: !46, line: 440, baseType: !1285, size: 64, offset: 512)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1249, file: !46, line: 441, baseType: !1313, size: 64, offset: 576)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!136, !575, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !46, line: 411, size: 1408, elements: !1318)
!1318 = !{!1319, !1320}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1317, file: !46, line: 412, baseType: !34, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1317, file: !46, line: 413, baseType: !1321, size: 1344, offset: 64)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1322, size: 1344, elements: !350)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !46, line: 397, size: 448, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1334}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1322, file: !46, line: 398, baseType: !34, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1322, file: !46, line: 399, baseType: !34, size: 32, offset: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1322, file: !46, line: 401, baseType: !34, size: 32, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1322, file: !46, line: 402, baseType: !34, size: 32, offset: 96)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1322, file: !46, line: 403, baseType: !34, size: 32, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1322, file: !46, line: 404, baseType: !34, size: 32, offset: 160)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1322, file: !46, line: 405, baseType: !34, size: 32, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1322, file: !46, line: 406, baseType: !213, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1322, file: !46, line: 407, baseType: !1333, size: 64, offset: 320)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !249, line: 132, baseType: !211)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1322, file: !46, line: 408, baseType: !1333, size: 64, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1249, file: !46, line: 442, baseType: !1264, size: 64, offset: 640)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !576, file: !41, line: 1200, baseType: !1337, size: 64, offset: 576)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1339)
!1339 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !41, line: 54, flags: DIFlagFwdDecl)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !576, file: !41, line: 1201, baseType: !399, size: 64, offset: 640)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !576, file: !41, line: 1202, baseType: !399, size: 64, offset: 704)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !576, file: !41, line: 1203, baseType: !399, size: 64, offset: 768)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !576, file: !41, line: 1204, baseType: !464, size: 64, offset: 832)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !576, file: !41, line: 1205, baseType: !1345, size: 320, offset: 896)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1346, line: 48, size: 320, elements: !1347)
!1346 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1347 = !{!1348, !1349, !1350, !1351, !1352}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1345, file: !1346, line: 49, baseType: !689, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1345, file: !1346, line: 55, baseType: !689, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1345, file: !1346, line: 57, baseType: !699, size: 32, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1345, file: !1346, line: 59, baseType: !643, size: 32, offset: 160)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1345, file: !1346, line: 60, baseType: !271, size: 128, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !576, file: !41, line: 1206, baseType: !136, size: 32, offset: 1216)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !576, file: !41, line: 1207, baseType: !304, size: 32, offset: 1248)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !576, file: !41, line: 1209, baseType: !214, size: 64, offset: 1280)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !576, file: !41, line: 1211, baseType: !1357, size: 64, offset: 1344)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !41, line: 1211, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !576, file: !41, line: 1223, baseType: !1362, size: 64, offset: 1408)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !481, line: 34, size: 64, elements: !1363)
!1363 = !{!1364}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1362, file: !481, line: 35, baseType: !484, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !576, file: !41, line: 1224, baseType: !271, size: 128, offset: 1472)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !576, file: !41, line: 1225, baseType: !1367, size: 64, offset: 1600)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !41, line: 1225, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !576, file: !41, line: 1226, baseType: !1370, size: 64, offset: 1664)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !41, line: 1226, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !576, file: !41, line: 1227, baseType: !1373, size: 64, offset: 1728)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !41, line: 50, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !576, file: !41, line: 1228, baseType: !1376, size: 64, offset: 1792)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !41, line: 1228, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !576, file: !41, line: 1229, baseType: !929, size: 128, offset: 1856)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !576, file: !41, line: 1230, baseType: !34, size: 32, offset: 1984)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !576, file: !41, line: 1231, baseType: !1381, size: 2496, offset: 2048)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !46, line: 521, size: 2496, elements: !1382)
!1382 = !{!1383, !1384, !1385, !1387, !1419}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1381, file: !46, line: 522, baseType: !34, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1381, file: !46, line: 523, baseType: !1345, size: 320, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1381, file: !46, line: 524, baseType: !1386, size: 192, offset: 384)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 192, elements: !350)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1381, file: !46, line: 525, baseType: !1388, size: 1728, offset: 576)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1389, size: 1728, elements: !350)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !46, line: 222, size: 576, elements: !1390)
!1390 = !{!1391, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1389, file: !46, line: 223, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !46, line: 445, size: 256, elements: !1394)
!1394 = !{!1395, !1396, !1409, !1410}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1393, file: !46, line: 446, baseType: !136, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1393, file: !46, line: 447, baseType: !1397, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1399)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !46, line: 312, size: 512, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1399, file: !46, line: 313, baseType: !1097, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1399, file: !46, line: 314, baseType: !1097, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1399, file: !46, line: 315, baseType: !1097, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1399, file: !46, line: 316, baseType: !1097, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1399, file: !46, line: 317, baseType: !1212, size: 64, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1399, file: !46, line: 318, baseType: !1212, size: 64, offset: 320)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1399, file: !46, line: 319, baseType: !1212, size: 64, offset: 384)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1399, file: !46, line: 320, baseType: !1242, size: 64, offset: 448)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1393, file: !46, line: 448, baseType: !614, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1393, file: !46, line: 449, baseType: !1392, size: 64, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1389, file: !46, line: 224, baseType: !136, size: 32, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1389, file: !46, line: 226, baseType: !271, size: 128, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1389, file: !46, line: 227, baseType: !399, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1389, file: !46, line: 228, baseType: !34, size: 32, offset: 320)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1389, file: !46, line: 229, baseType: !34, size: 32, offset: 352)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1389, file: !46, line: 230, baseType: !1177, size: 64, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1389, file: !46, line: 231, baseType: !1177, size: 64, offset: 448)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1389, file: !46, line: 232, baseType: !214, size: 64, offset: 512)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1381, file: !46, line: 526, baseType: !1420, size: 192, offset: 2304)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1397, size: 192, elements: !350)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !576, file: !41, line: 1233, baseType: !1422, size: 2368, offset: 4544)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !41, line: 1184, size: 2368, elements: !1423)
!1423 = !{!1424, !1425, !1426}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1422, file: !41, line: 1185, baseType: !319, size: 16)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1422, file: !41, line: 1186, baseType: !319, size: 16, offset: 16)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1422, file: !41, line: 1187, baseType: !1427, size: 2304, offset: 64)
!1427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1428, size: 2304, elements: !350)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1429, line: 12, size: 768, elements: !1430)
!1429 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1430 = !{!1431, !1445, !1446, !3527, !3528}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1428, file: !1429, line: 13, baseType: !1432, size: 384)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1433, line: 17, size: 384, elements: !1434)
!1433 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1434 = !{!1435, !1436, !1437, !1444}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1432, file: !1433, line: 18, baseType: !136, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1432, file: !1433, line: 19, baseType: !136, size: 32, offset: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1432, file: !1433, line: 20, baseType: !1438, size: 192, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1439, line: 41, baseType: !1440)
!1439 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1439, line: 37, size: 192, elements: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1440, file: !1439, line: 38, baseType: !284, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1440, file: !1439, line: 39, baseType: !271, size: 128, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1432, file: !1433, line: 22, baseType: !903, size: 128, align: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1428, file: !1429, line: 14, baseType: !757, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1428, file: !1429, line: 15, baseType: !1447, size: 64, offset: 448)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1448, line: 16, size: 64, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1449 = !{!1450}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1447, file: !1448, line: 17, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1127, line: 746, size: 58368, elements: !1453)
!1453 = !{!1454, !1462, !1463, !1464, !1470, !1471, !1472, !1473, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1544, !1555, !1650, !1654, !1657, !1688, !1689, !1690, !1691, !1702, !1704, !1705, !1706, !1707, !1708, !1709, !1720, !1721, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1738, !1739, !1746, !1747, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2704, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2752, !2758, !2759, !2760, !2761, !2762, !2766, !2769, !2776, !2781, !2784, !2787, !2790, !2793, !2931, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2969, !2970, !2971, !2980, !2988, !2989, !2990, !2991, !2992, !2997, !2998, !2999, !3002, !3003, !3006, !3009, !3012, !3020, !3023, !3024, !3110, !3111, !3112, !3113, !3114, !3120, !3121, !3122, !3123, !3126, !3127, !3130, !3133, !3134, !3137, !3138, !3139, !3142, !3143, !3144, !3145, !3146, !3147, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3179, !3180, !3186, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3198, !3270, !3272, !3273, !3274, !3275, !3276, !3277, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3306, !3307, !3308}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1452, file: !1127, line: 752, baseType: !1455, size: 192)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1456, line: 56, size: 192, elements: !1457)
!1456 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1457 = !{!1458, !1459, !1460, !1461}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1455, file: !1456, line: 57, baseType: !399, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1455, file: !1456, line: 58, baseType: !399, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1455, file: !1456, line: 59, baseType: !220, size: 32, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1455, file: !1456, line: 61, baseType: !220, size: 32, offset: 160)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1452, file: !1127, line: 754, baseType: !34, size: 32, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1452, file: !1127, line: 767, baseType: !214, size: 64, offset: 256)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1452, file: !1127, line: 768, baseType: !1465, size: 32, offset: 320)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1466, line: 113, baseType: !1467)
!1466 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1466, line: 111, size: 32, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1467, file: !1466, line: 112, baseType: !304, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1452, file: !1127, line: 770, baseType: !34, size: 32, offset: 352)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1452, file: !1127, line: 771, baseType: !34, size: 32, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1452, file: !1127, line: 774, baseType: !136, size: 32, offset: 416)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1452, file: !1127, line: 775, baseType: !1474, size: 128, offset: 448)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1475, line: 58, size: 128, elements: !1476)
!1475 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1476 = !{!1477, !1483, !1488, !1489}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1474, file: !1475, line: 59, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1479, line: 60, size: 64, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1480 = !{!1481}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1478, file: !1479, line: 61, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !1475, line: 60, baseType: !1484, size: 32, offset: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1474, file: !1475, line: 60, size: 32, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1484, file: !1475, line: 61, baseType: !34, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1484, file: !1475, line: 62, baseType: !304, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1474, file: !1475, line: 65, baseType: !317, size: 16, offset: 96)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1474, file: !1475, line: 65, baseType: !317, size: 16, offset: 112)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1452, file: !1127, line: 776, baseType: !34, size: 32, offset: 576)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1452, file: !1127, line: 777, baseType: !399, size: 64, offset: 640)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1452, file: !1127, line: 778, baseType: !1451, size: 64, offset: 704)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1452, file: !1127, line: 787, baseType: !136, size: 32, offset: 768)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1452, file: !1127, line: 788, baseType: !136, size: 32, offset: 800)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1452, file: !1127, line: 790, baseType: !136, size: 32, offset: 832)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1452, file: !1127, line: 792, baseType: !136, size: 32, offset: 864)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1452, file: !1127, line: 793, baseType: !136, size: 32, offset: 896)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1452, file: !1127, line: 794, baseType: !136, size: 32, offset: 928)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1452, file: !1127, line: 795, baseType: !34, size: 32, offset: 960)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1452, file: !1127, line: 797, baseType: !1501, size: 2048, offset: 1024)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1127, line: 551, size: 2048, elements: !1502)
!1502 = !{!1503, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1523, !1526, !1527, !1528}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1501, file: !1127, line: 553, baseType: !1504, size: 128)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1127, line: 411, size: 128, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1504, file: !1127, line: 412, baseType: !399, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1504, file: !1127, line: 413, baseType: !220, size: 32, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1501, file: !1127, line: 554, baseType: !795, size: 192, align: 64, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1501, file: !1127, line: 555, baseType: !211, size: 64, offset: 320)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1501, file: !1127, line: 556, baseType: !211, size: 64, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1501, file: !1127, line: 558, baseType: !271, size: 128, offset: 448)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1501, file: !1127, line: 559, baseType: !34, size: 32, offset: 576)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1501, file: !1127, line: 561, baseType: !211, size: 64, offset: 640)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1501, file: !1127, line: 562, baseType: !211, size: 64, offset: 704)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1501, file: !1127, line: 563, baseType: !211, size: 64, offset: 768)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1501, file: !1127, line: 564, baseType: !211, size: 64, offset: 832)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1501, file: !1127, line: 565, baseType: !695, size: 64, offset: 896)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1501, file: !1127, line: 566, baseType: !211, size: 64, offset: 960)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1501, file: !1127, line: 568, baseType: !211, size: 64, offset: 1024)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1501, file: !1127, line: 571, baseType: !136, size: 32, offset: 1088)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1501, file: !1127, line: 572, baseType: !1522, size: 64, offset: 1152)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1501, file: !1127, line: 574, baseType: !1524, size: 64, offset: 1216)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1127, line: 49, flags: DIFlagFwdDecl)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1501, file: !1127, line: 576, baseType: !1524, size: 64, offset: 1280)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1501, file: !1127, line: 578, baseType: !399, size: 64, offset: 1344)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1501, file: !1127, line: 588, baseType: !1529, size: 512, align: 512, offset: 1536)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1127, line: 497, size: 512, align: 512, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1529, file: !1127, line: 498, baseType: !211, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1529, file: !1127, line: 499, baseType: !211, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1529, file: !1127, line: 500, baseType: !211, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1529, file: !1127, line: 501, baseType: !220, size: 32, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1529, file: !1127, line: 502, baseType: !220, size: 32, offset: 224)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1529, file: !1127, line: 503, baseType: !399, size: 64, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1529, file: !1127, line: 504, baseType: !399, size: 64, offset: 320)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1529, file: !1127, line: 505, baseType: !399, size: 64, offset: 384)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1529, file: !1127, line: 506, baseType: !1540, size: 64, align: 64, offset: 448)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1127, line: 445, size: 64, align: 64, elements: !1541)
!1541 = !{!1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1540, file: !1127, line: 446, baseType: !34, size: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1540, file: !1127, line: 447, baseType: !34, size: 32, offset: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1452, file: !1127, line: 798, baseType: !1545, size: 384, offset: 3072)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1127, line: 592, size: 384, elements: !1546)
!1546 = !{!1547, !1548, !1549, !1550, !1551, !1552, !1553}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1545, file: !1127, line: 593, baseType: !271, size: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1545, file: !1127, line: 594, baseType: !399, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1545, file: !1127, line: 595, baseType: !399, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1545, file: !1127, line: 596, baseType: !34, size: 32, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1545, file: !1127, line: 597, baseType: !319, size: 16, offset: 288)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1545, file: !1127, line: 598, baseType: !319, size: 16, offset: 304)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1545, file: !1127, line: 600, baseType: !1554, size: 64, offset: 320)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1452, file: !1127, line: 799, baseType: !1556, size: 1792, offset: 3456)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1127, line: 610, size: 1792, elements: !1557)
!1557 = !{!1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1647, !1648}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1556, file: !1127, line: 611, baseType: !795, size: 192, align: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1556, file: !1127, line: 618, baseType: !211, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1556, file: !1127, line: 619, baseType: !211, size: 64, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1556, file: !1127, line: 620, baseType: !211, size: 64, offset: 320)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1556, file: !1127, line: 621, baseType: !211, size: 64, offset: 384)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1556, file: !1127, line: 622, baseType: !211, size: 64, offset: 448)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1556, file: !1127, line: 629, baseType: !695, size: 64, offset: 512)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1556, file: !1127, line: 630, baseType: !211, size: 64, offset: 576)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1556, file: !1127, line: 631, baseType: !34, size: 32, offset: 640)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1556, file: !1127, line: 653, baseType: !34, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1556, file: !1127, line: 654, baseType: !34, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1556, file: !1127, line: 655, baseType: !34, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1556, file: !1127, line: 656, baseType: !34, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1556, file: !1127, line: 662, baseType: !1572, size: 512, offset: 704)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !52, line: 118, size: 512, elements: !1573)
!1573 = !{!1574, !1582, !1583, !1588, !1643, !1644, !1645, !1646}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1572, file: !52, line: 119, baseType: !1575, size: 256)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1576, line: 9, size: 256, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1575, file: !1576, line: 10, baseType: !795, size: 192, align: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1575, file: !1576, line: 11, baseType: !1580, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1581, line: 29, baseType: !695)
!1581 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1572, file: !52, line: 120, baseType: !1580, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1572, file: !52, line: 121, baseType: !1584, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!51, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1572, file: !52, line: 122, baseType: !1589, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !52, line: 159, size: 512, align: 512, elements: !1591)
!1591 = !{!1592, !1617, !1618, !1621, !1626, !1627, !1638, !1642}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1590, file: !52, line: 160, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !52, line: 215, size: 4608, align: 512, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1594, file: !52, line: 216, baseType: !643, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1594, file: !52, line: 217, baseType: !34, size: 32, offset: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1594, file: !52, line: 218, baseType: !34, size: 32, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1594, file: !52, line: 219, baseType: !34, size: 32, offset: 96)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1594, file: !52, line: 220, baseType: !34, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1594, file: !52, line: 221, baseType: !34, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1594, file: !52, line: 222, baseType: !34, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1594, file: !52, line: 223, baseType: !34, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1594, file: !52, line: 224, baseType: !34, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1594, file: !52, line: 226, baseType: !34, size: 32, offset: 160)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1594, file: !52, line: 227, baseType: !319, size: 16, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1594, file: !52, line: 228, baseType: !319, size: 16, offset: 208)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1594, file: !52, line: 229, baseType: !34, size: 32, offset: 224)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1594, file: !52, line: 235, baseType: !1580, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1594, file: !52, line: 236, baseType: !1587, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1594, file: !52, line: 237, baseType: !1580, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1594, file: !52, line: 238, baseType: !1587, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1594, file: !52, line: 239, baseType: !1614, size: 4096, align: 512, offset: 512)
!1614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1590, size: 4096, align: 512, elements: !1615)
!1615 = !{!1616}
!1616 = !DISubrange(count: 8)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1590, file: !52, line: 161, baseType: !34, size: 32, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1590, file: !52, line: 162, baseType: !1619, size: 32, offset: 96)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !249, line: 32, baseType: !1620)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !383, line: 96, baseType: !136)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1590, file: !52, line: 163, baseType: !1622, size: 32, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !471, line: 274, baseType: !1623)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !471, line: 274, size: 32, elements: !1624)
!1624 = !{!1625}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1623, file: !471, line: 274, baseType: !475, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1590, file: !52, line: 164, baseType: !1587, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1590, file: !52, line: 165, baseType: !1628, size: 128, offset: 256)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1576, line: 14, size: 128, elements: !1629)
!1629 = !{!1630}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1628, file: !1576, line: 15, baseType: !1631, size: 128)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !796, line: 26, size: 128, elements: !1632)
!1632 = !{!1633, !1637}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1631, file: !796, line: 27, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !796, line: 12, size: 64, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1634, file: !796, line: 13, baseType: !800, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1631, file: !796, line: 28, baseType: !800, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1590, file: !52, line: 166, baseType: !1639, size: 64, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!1580}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1590, file: !52, line: 167, baseType: !1580, size: 64, offset: 448)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1572, file: !52, line: 123, baseType: !204, size: 8, offset: 448)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1572, file: !52, line: 124, baseType: !204, size: 8, offset: 456)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1572, file: !52, line: 125, baseType: !204, size: 8, offset: 464)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1572, file: !52, line: 126, baseType: !204, size: 8, offset: 472)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1556, file: !1127, line: 671, baseType: !1572, size: 512, offset: 1216)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1556, file: !1127, line: 679, baseType: !1649, size: 64, offset: 1728)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1452, file: !1127, line: 800, baseType: !1651, size: 64, offset: 5248)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1653)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1127, line: 800, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1452, file: !1127, line: 809, baseType: !1655, size: 64, offset: 5312)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1127, line: 70, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1452, file: !1127, line: 825, baseType: !1658, size: 2048, align: 512, offset: 5632)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1127, line: 509, size: 2048, align: 512, elements: !1659)
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1658, file: !1127, line: 511, baseType: !211, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1658, file: !1127, line: 512, baseType: !211, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1658, file: !1127, line: 513, baseType: !211, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1658, file: !1127, line: 514, baseType: !211, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1658, file: !1127, line: 515, baseType: !211, size: 64, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1658, file: !1127, line: 516, baseType: !211, size: 64, offset: 320)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1658, file: !1127, line: 518, baseType: !211, size: 64, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1658, file: !1127, line: 519, baseType: !211, size: 64, offset: 448)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1658, file: !1127, line: 520, baseType: !695, size: 64, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1658, file: !1127, line: 522, baseType: !211, size: 64, offset: 576)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1658, file: !1127, line: 523, baseType: !211, size: 64, offset: 640)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1658, file: !1127, line: 524, baseType: !695, size: 64, offset: 704)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1658, file: !1127, line: 526, baseType: !695, size: 64, offset: 768)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1658, file: !1127, line: 527, baseType: !211, size: 64, offset: 832)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1658, file: !1127, line: 529, baseType: !211, size: 64, offset: 896)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1658, file: !1127, line: 530, baseType: !211, size: 64, offset: 960)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1658, file: !1127, line: 531, baseType: !211, size: 64, offset: 1024)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1658, file: !1127, line: 532, baseType: !211, size: 64, offset: 1088)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1658, file: !1127, line: 533, baseType: !211, size: 64, offset: 1152)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1658, file: !1127, line: 535, baseType: !211, size: 64, offset: 1216)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1658, file: !1127, line: 536, baseType: !211, size: 64, offset: 1280)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1658, file: !1127, line: 537, baseType: !211, size: 64, offset: 1344)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1658, file: !1127, line: 538, baseType: !211, size: 64, offset: 1408)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1658, file: !1127, line: 539, baseType: !211, size: 64, offset: 1472)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1658, file: !1127, line: 540, baseType: !211, size: 64, offset: 1536)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1658, file: !1127, line: 541, baseType: !211, size: 64, offset: 1600)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1658, file: !1127, line: 542, baseType: !211, size: 64, offset: 1664)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1658, file: !1127, line: 543, baseType: !211, size: 64, offset: 1728)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1452, file: !1127, line: 833, baseType: !34, size: 32, offset: 7680)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1452, file: !1127, line: 836, baseType: !34, size: 32, offset: 7712)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1452, file: !1127, line: 837, baseType: !136, size: 32, offset: 7744)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1452, file: !1127, line: 838, baseType: !1692, size: 64, offset: 7808)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1695, line: 19, baseType: !1696)
!1695 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1695, line: 19, size: 64, elements: !1697)
!1697 = !{!1698}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1696, file: !1695, line: 19, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 64, elements: !1700)
!1700 = !{!1701}
!1701 = !DISubrange(count: 1)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1452, file: !1127, line: 839, baseType: !1703, size: 64, offset: 7872)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1452, file: !1127, line: 840, baseType: !1694, size: 64, offset: 7936)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1452, file: !1127, line: 841, baseType: !214, size: 64, offset: 8000)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1452, file: !1127, line: 843, baseType: !319, size: 16, offset: 8064)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1452, file: !1127, line: 845, baseType: !319, size: 16, offset: 8080)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1452, file: !1127, line: 848, baseType: !136, size: 32, offset: 8096)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1452, file: !1127, line: 849, baseType: !1710, size: 32, offset: 8128)
!1710 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1127, line: 718, size: 32, elements: !1711)
!1711 = !{!1712, !1719}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1710, file: !1127, line: 724, baseType: !1713, size: 32)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1710, file: !1127, line: 719, size: 32, elements: !1714)
!1714 = !{!1715, !1716, !1717, !1718}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1713, file: !1127, line: 720, baseType: !204, size: 8)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1713, file: !1127, line: 721, baseType: !204, size: 8, offset: 8)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1713, file: !1127, line: 722, baseType: !204, size: 8, offset: 16)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1713, file: !1127, line: 723, baseType: !204, size: 8, offset: 24)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1710, file: !1127, line: 725, baseType: !220, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1452, file: !1127, line: 850, baseType: !271, size: 128, offset: 8192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1452, file: !1127, line: 851, baseType: !1722, size: 64, offset: 8320)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1127, line: 60, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1452, file: !1127, line: 855, baseType: !399, size: 64, offset: 8384)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1452, file: !1127, line: 856, baseType: !204, size: 8, offset: 8448)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1452, file: !1127, line: 857, baseType: !204, size: 8, offset: 8456)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1452, file: !1127, line: 858, baseType: !136, size: 32, offset: 8480)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1452, file: !1127, line: 859, baseType: !271, size: 128, offset: 8512)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1452, file: !1127, line: 860, baseType: !136, size: 32, offset: 8640)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1452, file: !1127, line: 861, baseType: !271, size: 128, offset: 8704)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1452, file: !1127, line: 873, baseType: !1732, size: 256, offset: 8832)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1127, line: 376, size: 256, elements: !1733)
!1733 = !{!1734, !1735, !1736, !1737}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1732, file: !1127, line: 381, baseType: !399, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1732, file: !1127, line: 384, baseType: !213, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1732, file: !1127, line: 389, baseType: !213, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1732, file: !1127, line: 392, baseType: !213, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1452, file: !1127, line: 875, baseType: !271, size: 128, offset: 9088)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1452, file: !1127, line: 877, baseType: !1740, size: 320, offset: 9216)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1741, line: 86, size: 320, elements: !1742)
!1741 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1742 = !{!1743, !1744, !1745}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1740, file: !1741, line: 87, baseType: !136, size: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1740, file: !1741, line: 88, baseType: !271, size: 128, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1740, file: !1741, line: 89, baseType: !271, size: 128, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1452, file: !1127, line: 878, baseType: !795, size: 192, align: 64, offset: 9536)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1452, file: !1127, line: 881, baseType: !1748, size: 64, offset: 9728)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !65, line: 733, size: 10240, elements: !1750)
!1750 = !{!1751, !2623}
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !65, line: 734, baseType: !1752, size: 10240)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !65, line: 734, size: 10240, elements: !1753)
!1753 = !{!1754, !1758, !1771, !2502, !2503, !2504, !2505, !2506, !2507, !2514, !2515, !2516, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2555, !2557, !2560, !2603, !2604, !2605, !2608, !2609, !2610, !2613, !2614, !2615, !2621, !2622}
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !65, line: 739, baseType: !1755, size: 512, align: 512)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1752, file: !65, line: 739, size: 512, align: 512, elements: !1756)
!1756 = !{!1757}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1755, file: !65, line: 747, baseType: !304, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1752, file: !65, line: 750, baseType: !1759, size: 128, offset: 512)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1760, line: 218, size: 128, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1761 = !{!1762, !1769, !1770}
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !1760, line: 219, baseType: !1763, size: 32)
!1763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1759, file: !1760, line: 219, size: 32, elements: !1764)
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1763, file: !1760, line: 220, baseType: !284, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1763, file: !1760, line: 221, baseType: !1767)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1760, line: 197, baseType: !1768)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1760, line: 197, elements: !972)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1759, file: !1760, line: 223, baseType: !34, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1759, file: !1760, line: 224, baseType: !214, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1752, file: !65, line: 752, baseType: !1772, size: 64, offset: 640)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!399, !1775, !399, !399, !399, !399}
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !41, line: 994, size: 1856, align: 64, elements: !1777)
!1777 = !{!1778, !1784, !1785, !1787, !1788, !1789, !1790, !1791, !1841, !2031, !2040, !2041, !2042, !2492, !2493, !2494, !2495, !2497, !2498, !2501}
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !41, line: 995, baseType: !1779, size: 128)
!1779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1776, file: !41, line: 995, size: 128, elements: !1780)
!1780 = !{!1781, !1782, !1783}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1779, file: !41, line: 996, baseType: !1478, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1779, file: !41, line: 997, baseType: !903, size: 128, align: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1779, file: !41, line: 998, baseType: !34, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1776, file: !41, line: 1005, baseType: !284, size: 32, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1776, file: !41, line: 1006, baseType: !1786, size: 32, offset: 160)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !249, line: 156, baseType: !34)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1776, file: !41, line: 1007, baseType: !689, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1776, file: !41, line: 1008, baseType: !685, size: 256, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1776, file: !41, line: 1009, baseType: !585, size: 64, offset: 512)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1776, file: !41, line: 1010, baseType: !34, size: 32, offset: 576)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1776, file: !41, line: 1011, baseType: !1792, size: 256, offset: 640)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !41, line: 948, size: 256, elements: !1793)
!1793 = !{!1794, !1815, !1837, !1838, !1839, !1840}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1792, file: !41, line: 949, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1796, line: 34, baseType: !1797)
!1796 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1796, line: 25, size: 64, elements: !1798)
!1798 = !{!1799}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1797, file: !1796, line: 26, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1801, line: 27, baseType: !1802)
!1801 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1801, line: 13, size: 64, elements: !1803)
!1803 = !{!1804, !1814}
!1804 = !DIDerivedType(tag: DW_TAG_member, scope: !1802, file: !1801, line: 14, baseType: !1805, size: 32)
!1805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1802, file: !1801, line: 14, size: 32, elements: !1806)
!1806 = !{!1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1805, file: !1801, line: 15, baseType: !304, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1805, file: !1801, line: 16, baseType: !1809, size: 32)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !1801, line: 16, size: 32, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1809, file: !1801, line: 18, baseType: !204, size: 8)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1809, file: !1801, line: 19, baseType: !1813, size: 24, offset: 8)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 24, elements: !350)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1802, file: !1801, line: 26, baseType: !296, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1792, file: !41, line: 950, baseType: !1816, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !57, line: 59, size: 768, elements: !1818)
!1818 = !{!1819, !1820, !1821, !1822, !1824, !1825, !1826, !1827}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1817, file: !57, line: 61, baseType: !1465, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1817, file: !57, line: 62, baseType: !34, size: 32, offset: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1817, file: !57, line: 63, baseType: !284, size: 32, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1817, file: !57, line: 65, baseType: !1823, size: 256, offset: 128)
!1823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1053, size: 256, elements: !913)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1817, file: !57, line: 66, baseType: !1053, size: 64, offset: 384)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1817, file: !57, line: 68, baseType: !1438, size: 192, offset: 448)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1817, file: !57, line: 69, baseType: !903, size: 128, align: 64, offset: 640)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1817, file: !57, line: 70, baseType: !1828, offset: 768)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1829, elements: !1835)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !57, line: 54, size: 128, elements: !1830)
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1829, file: !57, line: 55, baseType: !136, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1829, file: !57, line: 56, baseType: !1833, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !57, line: 56, flags: DIFlagFwdDecl)
!1835 = !{!1836}
!1836 = !DISubrange(count: -1)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1792, file: !41, line: 951, baseType: !56, size: 32, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1792, file: !41, line: 952, baseType: !435, size: 32, offset: 160)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1792, file: !41, line: 952, baseType: !435, size: 32, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1792, file: !41, line: 953, baseType: !136, size: 32, offset: 224)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1776, file: !41, line: 1012, baseType: !1842, size: 64, offset: 896)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1844)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1845, line: 110, size: 1472, elements: !1846)
!1845 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1863, !1864, !1865, !1866, !1867, !1868, !1976, !1977, !1978, !1979, !1980, !2011, !2014, !2018, !2026}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1844, file: !1845, line: 111, baseType: !689, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1844, file: !1845, line: 112, baseType: !435, size: 32, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1844, file: !1845, line: 113, baseType: !444, size: 32, offset: 96)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1844, file: !1845, line: 114, baseType: !435, size: 32, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1844, file: !1845, line: 115, baseType: !444, size: 32, offset: 160)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1844, file: !1845, line: 116, baseType: !435, size: 32, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1844, file: !1845, line: 117, baseType: !444, size: 32, offset: 224)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1844, file: !1845, line: 118, baseType: !435, size: 32, offset: 256)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1844, file: !1845, line: 119, baseType: !444, size: 32, offset: 288)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1844, file: !1845, line: 120, baseType: !34, size: 32, offset: 320)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1844, file: !1845, line: 121, baseType: !1858, size: 64, offset: 384)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1859, line: 24, baseType: !1860)
!1859 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1859, line: 24, size: 64, elements: !1861)
!1861 = !{!1862}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1860, file: !1859, line: 24, baseType: !211, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1844, file: !1845, line: 122, baseType: !1858, size: 64, offset: 448)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1844, file: !1845, line: 123, baseType: !1858, size: 64, offset: 512)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1844, file: !1845, line: 124, baseType: !1858, size: 64, offset: 576)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1844, file: !1845, line: 125, baseType: !1858, size: 64, offset: 640)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1844, file: !1845, line: 127, baseType: !208, size: 8, offset: 704)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1844, file: !1845, line: 129, baseType: !1869, size: 64, offset: 768)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1871, line: 195, size: 1728, elements: !1872)
!1871 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1872 = !{!1873, !1874, !1877, !1882, !1883, !1886, !1887, !1892, !1893, !1894, !1895, !1898, !1899, !1900, !1901, !1902, !1940, !1961}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1870, file: !1871, line: 196, baseType: !1465, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1870, file: !1871, line: 197, baseType: !1875, size: 32, offset: 32)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1871, line: 28, baseType: !1876)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !249, line: 104, baseType: !681)
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1870, file: !1871, line: 198, baseType: !1878, size: 192, offset: 64)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1870, file: !1871, line: 198, size: 192, elements: !1879)
!1879 = !{!1880, !1881}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1878, file: !1871, line: 199, baseType: !271, size: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1878, file: !1871, line: 200, baseType: !795, size: 192, align: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1870, file: !1871, line: 205, baseType: !1345, size: 320, offset: 256)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1870, file: !1871, line: 206, baseType: !1884, size: 64, offset: 576)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1871, line: 206, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1870, file: !1871, line: 207, baseType: !214, size: 64, offset: 640)
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1870, file: !1871, line: 208, baseType: !1888, size: 64, offset: 704)
!1888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1870, file: !1871, line: 208, size: 64, elements: !1889)
!1889 = !{!1890, !1891}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1888, file: !1871, line: 209, baseType: !1185, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1888, file: !1871, line: 210, baseType: !1185, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1870, file: !1871, line: 212, baseType: !1185, size: 64, offset: 768)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1870, file: !1871, line: 213, baseType: !435, size: 32, offset: 832)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1870, file: !1871, line: 214, baseType: !444, size: 32, offset: 864)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1870, file: !1871, line: 215, baseType: !1896, size: 32, offset: 896)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1871, line: 31, baseType: !1897)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !249, line: 110, baseType: !220)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1870, file: !1871, line: 216, baseType: !319, size: 16, offset: 928)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1870, file: !1871, line: 217, baseType: !319, size: 16, offset: 944)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1870, file: !1871, line: 221, baseType: !821, size: 16, offset: 960)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1870, file: !1871, line: 228, baseType: !399, size: 64, offset: 1024)
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1870, file: !1871, line: 245, baseType: !1903, size: 320, offset: 1088)
!1903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1870, file: !1871, line: 245, size: 320, elements: !1904)
!1904 = !{!1905, !1932}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1903, file: !1871, line: 246, baseType: !1906, size: 320)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1871, line: 114, size: 320, elements: !1907)
!1907 = !{!1908, !1909, !1921, !1924, !1931}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1906, file: !1871, line: 116, baseType: !399, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1906, file: !1871, line: 117, baseType: !1910, size: 64, offset: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1906, file: !1871, line: 117, size: 64, elements: !1911)
!1911 = !{!1912, !1920}
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1910, file: !1871, line: 118, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1910, file: !1871, line: 118, size: 64, elements: !1914)
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1913, file: !1871, line: 120, baseType: !317, size: 16)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1913, file: !1871, line: 121, baseType: !1917, size: 48, offset: 16)
!1917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1918)
!1918 = !{!1919}
!1919 = !DISubrange(count: 6)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1910, file: !1871, line: 127, baseType: !399, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1906, file: !1871, line: 129, baseType: !1922, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1871, line: 102, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1906, file: !1871, line: 130, baseType: !1925, size: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1871, line: 108, size: 192, elements: !1927)
!1927 = !{!1928, !1929, !1930}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1926, file: !1871, line: 109, baseType: !903, size: 128, align: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1926, file: !1871, line: 110, baseType: !1465, size: 32, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1926, file: !1871, line: 111, baseType: !248, size: 8, offset: 160)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1906, file: !1871, line: 131, baseType: !268, size: 64, offset: 256)
!1932 = !DIDerivedType(tag: DW_TAG_member, scope: !1903, file: !1871, line: 247, baseType: !1933, size: 320)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1903, file: !1871, line: 247, size: 320, elements: !1934)
!1934 = !{!1935, !1936, !1937, !1938, !1939}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1933, file: !1871, line: 248, baseType: !399, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1933, file: !1871, line: 249, baseType: !399, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1933, file: !1871, line: 250, baseType: !1922, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1933, file: !1871, line: 251, baseType: !1925, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1933, file: !1871, line: 252, baseType: !349, size: 64, offset: 256)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !1870, file: !1871, line: 260, baseType: !1941, size: 256, offset: 1408)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1870, file: !1871, line: 260, size: 256, elements: !1942)
!1942 = !{!1943, !1949}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1941, file: !1871, line: 261, baseType: !1944, size: 256)
!1944 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1871, line: 134, size: 256, elements: !1945)
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1944, file: !1871, line: 135, baseType: !214, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1944, file: !1871, line: 136, baseType: !1948, size: 256)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 256, elements: !913)
!1949 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !1871, line: 262, baseType: !1950, size: 256)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1941, file: !1871, line: 262, size: 256, elements: !1951)
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1950, file: !1871, line: 264, baseType: !271, size: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1950, file: !1871, line: 265, baseType: !1954, size: 128, offset: 128)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1955, line: 22, size: 128, elements: !1956)
!1955 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1956 = !{!1957, !1960}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1954, file: !1955, line: 23, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1955, line: 23, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1954, file: !1955, line: 24, baseType: !399, size: 64, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1870, file: !1871, line: 280, baseType: !1962, size: 64, offset: 1664)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1871, line: 176, size: 192, elements: !1964)
!1964 = !{!1965, !1974, !1975}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1963, file: !1871, line: 177, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1871, line: 171, baseType: !1967)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!136, !1869, !1970, !1972, !1869}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1923)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1944)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1963, file: !1871, line: 178, baseType: !1869, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1963, file: !1871, line: 179, baseType: !1922, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1844, file: !1845, line: 130, baseType: !1869, size: 64, offset: 832)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1844, file: !1845, line: 131, baseType: !1869, size: 64, offset: 896)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1844, file: !1845, line: 132, baseType: !1869, size: 64, offset: 960)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1844, file: !1845, line: 135, baseType: !214, size: 64, offset: 1024)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1844, file: !1845, line: 137, baseType: !1981, size: 64, offset: 1088)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1983, line: 14, size: 1088, elements: !1984)
!1983 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1984 = !{!1985, !1986, !1995, !1996, !1997, !1998, !1999, !2000}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1982, file: !1983, line: 15, baseType: !1465, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1982, file: !1983, line: 17, baseType: !1987, size: 320, offset: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1988, line: 22, size: 320, elements: !1989)
!1988 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1989 = !{!1990, !1991, !1992, !1993}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1987, file: !1988, line: 23, baseType: !643, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1987, file: !1988, line: 24, baseType: !695, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1987, file: !1988, line: 26, baseType: !271, size: 128, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1987, file: !1988, line: 28, baseType: !1994, size: 64, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1982, file: !1983, line: 19, baseType: !399, size: 64, offset: 384)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1982, file: !1983, line: 20, baseType: !689, size: 64, offset: 448)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1982, file: !1983, line: 23, baseType: !929, size: 128, offset: 512)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1982, file: !1983, line: 24, baseType: !435, size: 32, offset: 640)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1982, file: !1983, line: 29, baseType: !689, size: 64, offset: 704)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1982, file: !1983, line: 36, baseType: !2001, size: 320, offset: 768)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2002, line: 15, size: 320, elements: !2003)
!2002 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2003 = !{!2004, !2005, !2006, !2007, !2008, !2009, !2010}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2001, file: !2002, line: 16, baseType: !643, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2001, file: !2002, line: 18, baseType: !136, size: 32, offset: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2001, file: !2002, line: 19, baseType: !136, size: 32, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2001, file: !2002, line: 20, baseType: !136, size: 32, offset: 96)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2001, file: !2002, line: 21, baseType: !136, size: 32, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2001, file: !2002, line: 22, baseType: !399, size: 64, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2001, file: !2002, line: 23, baseType: !399, size: 64, offset: 256)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1844, file: !1845, line: 138, baseType: !2012, size: 64, offset: 1152)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !65, line: 901, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1844, file: !1845, line: 139, baseType: !2015, size: 64, offset: 1216)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2017, line: 16, flags: DIFlagFwdDecl)
!2017 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1844, file: !1845, line: 140, baseType: !2019, size: 64, offset: 1280)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1845, line: 25, size: 64, elements: !2021)
!2021 = !{!2022, !2023, !2024}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2020, file: !1845, line: 26, baseType: !304, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2020, file: !1845, line: 27, baseType: !136, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2020, file: !1845, line: 28, baseType: !2025, offset: 64)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, elements: !1835)
!2026 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !1845, line: 142, baseType: !2027, size: 128, offset: 1344)
!2027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1844, file: !1845, line: 142, size: 128, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2027, file: !1845, line: 143, baseType: !136, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2027, file: !1845, line: 144, baseType: !903, size: 128, align: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1776, file: !41, line: 1013, baseType: !2032, size: 256, offset: 960)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !41, line: 970, size: 256, elements: !2033)
!2033 = !{!2034, !2035, !2036, !2037, !2038, !2039}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2032, file: !41, line: 971, baseType: !399, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2032, file: !41, line: 972, baseType: !34, size: 32, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2032, file: !41, line: 973, baseType: !34, size: 32, offset: 96)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2032, file: !41, line: 974, baseType: !34, size: 32, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2032, file: !41, line: 975, baseType: !34, size: 32, offset: 160)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2032, file: !41, line: 976, baseType: !585, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1776, file: !41, line: 1014, baseType: !1257, size: 128, offset: 1216)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1776, file: !41, line: 1015, baseType: !429, size: 64, offset: 1344)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1776, file: !41, line: 1016, baseType: !2043, size: 64, offset: 1408)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2045)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !41, line: 1914, size: 2112, elements: !2046)
!2046 = !{!2047, !2048, !2052, !2057, !2061, !2090, !2091, !2097, !2110, !2118, !2122, !2123, !2414, !2415, !2419, !2424, !2425, !2429, !2433, !2439, !2440, !2444, !2445, !2451, !2455, !2459, !2465, !2469, !2473, !2477, !2481, !2482, !2488}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2045, file: !41, line: 1915, baseType: !614, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2045, file: !41, line: 1916, baseType: !2049, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!585, !1775, !585, !136}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2045, file: !41, line: 1917, baseType: !2053, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!381, !1775, !349, !396, !2056}
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2045, file: !41, line: 1918, baseType: !2058, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!381, !1775, !268, !396, !2056}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2045, file: !41, line: 1919, baseType: !2062, size: 64, offset: 256)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!381, !2065, !2087}
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !41, line: 373, size: 384, elements: !2067)
!2067 = !{!2068, !2069, !2070, !2074, !2075, !2076, !2077}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2066, file: !41, line: 374, baseType: !1775, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2066, file: !41, line: 375, baseType: !585, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2066, file: !41, line: 376, baseType: !2071, size: 64, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{null, !2065, !385}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2066, file: !41, line: 377, baseType: !214, size: 64, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2066, file: !41, line: 378, baseType: !136, size: 32, offset: 256)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2066, file: !41, line: 379, baseType: !317, size: 16, offset: 288)
!2077 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !41, line: 380, baseType: !2078, size: 64, offset: 320)
!2078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2066, file: !41, line: 380, size: 64, elements: !2079)
!2079 = !{!2080, !2083}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2078, file: !41, line: 386, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !41, line: 386, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2078, file: !41, line: 395, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!381, !214}
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2089, line: 17, flags: DIFlagFwdDecl)
!2089 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2045, file: !41, line: 1920, baseType: !2062, size: 64, offset: 320)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2045, file: !41, line: 1921, baseType: !2092, size: 64, offset: 384)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!136, !2065, !2095, !34}
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !41, line: 53, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2045, file: !41, line: 1923, baseType: !2098, size: 64, offset: 448)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!136, !1775, !2101}
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !41, line: 1858, size: 128, elements: !2103)
!2103 = !{!2104, !2109}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2102, file: !41, line: 1859, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !41, line: 1855, baseType: !2106)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!248, !2101, !268, !136, !585, !211, !34}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2102, file: !41, line: 1860, baseType: !585, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2045, file: !41, line: 1924, baseType: !2111, size: 64, offset: 512)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!2114, !1775, !2116}
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2115, line: 59, baseType: !34)
!2115 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !600, line: 31, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2045, file: !41, line: 1925, baseType: !2119, size: 64, offset: 576)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!385, !1775, !34, !399}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2045, file: !41, line: 1926, baseType: !2119, size: 64, offset: 640)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2045, file: !41, line: 1927, baseType: !2124, size: 64, offset: 704)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!136, !1775, !2127}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !65, line: 625, size: 1344, elements: !2129)
!2129 = !{!2130, !2139, !2140, !2148, !2155, !2156, !2161, !2162, !2167, !2168, !2171, !2407, !2408, !2409, !2410, !2411, !2412}
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !2128, file: !65, line: 628, baseType: !2131, size: 128)
!2131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2128, file: !65, line: 628, size: 128, elements: !2132)
!2132 = !{!2133, !2138}
!2133 = !DIDerivedType(tag: DW_TAG_member, scope: !2131, file: !65, line: 629, baseType: !2134, size: 128)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2131, file: !65, line: 629, size: 128, elements: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2134, file: !65, line: 631, baseType: !399, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2134, file: !65, line: 632, baseType: !399, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2131, file: !65, line: 635, baseType: !903, size: 128, align: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2128, file: !65, line: 639, baseType: !1748, size: 64, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2128, file: !65, line: 640, baseType: !2141, size: 64, offset: 192)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2142, line: 297, baseType: !2143)
!2142 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2142, line: 297, size: 64, elements: !2144)
!2144 = !{!2145}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2143, file: !2142, line: 297, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2147, line: 19, baseType: !399)
!2147 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2148 = !DIDerivedType(tag: DW_TAG_member, scope: !2128, file: !65, line: 646, baseType: !2149, size: 64, offset: 256)
!2149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2128, file: !65, line: 646, size: 64, elements: !2150)
!2150 = !{!2151, !2154}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2149, file: !65, line: 647, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2153)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !65, line: 542, baseType: !399)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2149, file: !65, line: 648, baseType: !2153, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2128, file: !65, line: 666, baseType: !136, size: 32, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2128, file: !65, line: 667, baseType: !2157, size: 64, offset: 384)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !65, line: 579, size: 320, elements: !2159)
!2159 = !{!2160}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2158, file: !65, line: 580, baseType: !1345, size: 320)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2128, file: !65, line: 670, baseType: !248, size: 8, offset: 448)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2128, file: !65, line: 681, baseType: !2163, size: 256, offset: 512)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2128, file: !65, line: 678, size: 256, elements: !2164)
!2164 = !{!2165, !2166}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2163, file: !65, line: 679, baseType: !795, size: 192, align: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2163, file: !65, line: 680, baseType: !399, size: 64, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2128, file: !65, line: 689, baseType: !271, size: 128, offset: 768)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2128, file: !65, line: 691, baseType: !2169, size: 64, offset: 896)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !65, line: 691, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2128, file: !65, line: 694, baseType: !2172, size: 64, offset: 960)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2174)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2175, line: 563, size: 1024, elements: !2176)
!2175 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2176 = !{!2177, !2181, !2182, !2186, !2190, !2194, !2371, !2375, !2379, !2383, !2384, !2385, !2389, !2393, !2399, !2403}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2174, file: !2175, line: 564, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !2127}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2174, file: !2175, line: 569, baseType: !2178, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2174, file: !2175, line: 571, baseType: !2183, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!136, !2127, !399}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2174, file: !2175, line: 572, baseType: !2187, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!136, !2127}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2174, file: !2175, line: 578, baseType: !2191, size: 64, offset: 256)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!136, !2127, !399, !399, !399}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2174, file: !2175, line: 580, baseType: !2195, size: 64, offset: 320)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!2198, !2199}
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !65, line: 1184, baseType: !34)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2175, line: 512, size: 896, elements: !2201)
!2201 = !{!2202, !2210, !2211, !2218, !2225, !2235, !2364, !2365, !2367, !2369}
!2202 = !DIDerivedType(tag: DW_TAG_member, scope: !2200, file: !2175, line: 513, baseType: !2203, size: 320)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2200, file: !2175, line: 513, size: 320, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208, !2209}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2203, file: !2175, line: 514, baseType: !2127, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2203, file: !2175, line: 515, baseType: !1197, size: 32, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2203, file: !2175, line: 516, baseType: !399, size: 64, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2203, file: !2175, line: 517, baseType: !399, size: 64, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2203, file: !2175, line: 518, baseType: !399, size: 64, offset: 256)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2200, file: !2175, line: 520, baseType: !64, size: 32, offset: 320)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2200, file: !2175, line: 522, baseType: !2212, size: 64, offset: 384)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2147, line: 22, baseType: !2214)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2147, line: 22, size: 64, elements: !2215)
!2215 = !{!2216}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2214, file: !2147, line: 22, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2147, line: 15, baseType: !399)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2200, file: !2175, line: 524, baseType: !2219, size: 64, offset: 448)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2142, line: 372, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2142, line: 372, size: 64, elements: !2222)
!2222 = !{!2223}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2221, file: !2142, line: 372, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2147, line: 16, baseType: !399)
!2225 = !DIDerivedType(tag: DW_TAG_member, scope: !2200, file: !2175, line: 527, baseType: !2226, size: 64, offset: 512)
!2226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2200, file: !2175, line: 527, size: 64, elements: !2227)
!2227 = !{!2228, !2234}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2226, file: !2175, line: 528, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2147, line: 21, baseType: !2230)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2147, line: 21, size: 64, elements: !2231)
!2231 = !{!2232}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2230, file: !2147, line: 21, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2147, line: 14, baseType: !399)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2226, file: !2175, line: 529, baseType: !2213, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2200, file: !2175, line: 534, baseType: !2236, size: 64, offset: 576)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !65, line: 74, size: 512, align: 128, elements: !2238)
!2238 = !{!2239, !2240, !2358, !2363}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2237, file: !65, line: 75, baseType: !399, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, scope: !2237, file: !65, line: 83, baseType: !2241, size: 320, offset: 64)
!2241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2237, file: !65, line: 83, size: 320, elements: !2242)
!2242 = !{!2243, !2264, !2278, !2282, !2357}
!2243 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !65, line: 84, baseType: !2244, size: 320)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2241, file: !65, line: 84, size: 320, elements: !2245)
!2245 = !{!2246, !2257, !2258, !2263}
!2246 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !65, line: 90, baseType: !2247, size: 128)
!2247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2244, file: !65, line: 90, size: 128, elements: !2248)
!2248 = !{!2249, !2250, !2255, !2256}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2247, file: !65, line: 91, baseType: !271, size: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, scope: !2247, file: !65, line: 94, baseType: !2251, size: 128)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2247, file: !65, line: 94, size: 128, elements: !2252)
!2252 = !{!2253, !2254}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2251, file: !65, line: 96, baseType: !214, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2251, file: !65, line: 98, baseType: !34, size: 32, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2247, file: !65, line: 102, baseType: !271, size: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2247, file: !65, line: 103, baseType: !271, size: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2244, file: !65, line: 106, baseType: !425, size: 64, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !65, line: 107, baseType: !2259, size: 64, offset: 192)
!2259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2244, file: !65, line: 107, size: 64, elements: !2260)
!2260 = !{!2261, !2262}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2259, file: !65, line: 108, baseType: !399, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2259, file: !65, line: 109, baseType: !399, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2244, file: !65, line: 117, baseType: !399, size: 64, offset: 256)
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !65, line: 119, baseType: !2265, size: 320)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2241, file: !65, line: 119, size: 320, elements: !2266)
!2266 = !{!2267, !2268, !2271, !2272, !2273}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2265, file: !65, line: 124, baseType: !399, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2265, file: !65, line: 125, baseType: !2269, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !65, line: 125, flags: DIFlagFwdDecl)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2265, file: !65, line: 126, baseType: !399, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2265, file: !65, line: 127, baseType: !399, size: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, scope: !2265, file: !65, line: 128, baseType: !2274, size: 64, offset: 256)
!2274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2265, file: !65, line: 128, size: 64, elements: !2275)
!2275 = !{!2276, !2277}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2274, file: !65, line: 133, baseType: !399, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2274, file: !65, line: 138, baseType: !689, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !65, line: 141, baseType: !2279, size: 64)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2241, file: !65, line: 141, size: 64, elements: !2280)
!2280 = !{!2281}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2279, file: !65, line: 142, baseType: !399, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !65, line: 144, baseType: !2283, size: 128)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2241, file: !65, line: 144, size: 128, elements: !2284)
!2284 = !{!2285, !2356}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2283, file: !65, line: 146, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !81, line: 126, size: 1216, elements: !2288)
!2288 = !{!2289, !2299, !2320, !2321, !2322, !2323, !2324, !2338, !2339, !2340}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2287, file: !81, line: 127, baseType: !2290, size: 384)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !81, line: 21, size: 384, elements: !2291)
!2291 = !{!2292, !2293, !2295, !2296, !2297, !2298}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2290, file: !81, line: 22, baseType: !399, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2290, file: !81, line: 23, baseType: !2294, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2290, file: !81, line: 24, baseType: !2294, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2290, file: !81, line: 25, baseType: !399, size: 64, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2290, file: !81, line: 26, baseType: !399, size: 64, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2290, file: !81, line: 27, baseType: !399, size: 64, offset: 320)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2287, file: !81, line: 128, baseType: !2300, size: 128, offset: 384)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2301, line: 105, size: 128, elements: !2302)
!2301 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2300, file: !2301, line: 110, baseType: !399, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2300, file: !2301, line: 118, baseType: !2305, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2301, line: 95, size: 448, elements: !2307)
!2307 = !{!2308, !2309, !2315, !2316, !2317, !2318, !2319}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2306, file: !2301, line: 96, baseType: !689, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2306, file: !2301, line: 97, baseType: !2310, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2301, line: 60, baseType: !2312)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{null, !2314}
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2306, file: !2301, line: 98, baseType: !2310, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2306, file: !2301, line: 99, baseType: !248, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2306, file: !2301, line: 100, baseType: !248, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2306, file: !2301, line: 101, baseType: !903, size: 128, align: 64, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2306, file: !2301, line: 102, baseType: !2314, size: 64, offset: 384)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2287, file: !81, line: 129, baseType: !634, size: 256, offset: 512)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2287, file: !81, line: 130, baseType: !80, size: 32, offset: 768)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2287, file: !81, line: 131, baseType: !34, size: 32, offset: 800)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2287, file: !81, line: 132, baseType: !399, size: 64, offset: 832)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2287, file: !81, line: 133, baseType: !2325, size: 64, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2327)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !81, line: 77, size: 192, elements: !2328)
!2328 = !{!2329, !2333, !2334}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2327, file: !81, line: 83, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{null, !2236}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2327, file: !81, line: 89, baseType: !2195, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2327, file: !81, line: 100, baseType: !2335, size: 64, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!136, !2286, !399, !399, !136}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2287, file: !81, line: 134, baseType: !214, size: 64, offset: 960)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2287, file: !81, line: 135, baseType: !136, size: 32, offset: 1024)
!2340 = !DIDerivedType(tag: DW_TAG_member, scope: !2287, file: !81, line: 136, baseType: !2341, size: 128, offset: 1088)
!2341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2287, file: !81, line: 136, size: 128, elements: !2342)
!2342 = !{!2343, !2349}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2341, file: !81, line: 137, baseType: !2344, size: 128)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2345, line: 6, size: 128, elements: !2346)
!2345 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2346 = !{!2347, !2348}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2344, file: !2345, line: 7, baseType: !211, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2344, file: !2345, line: 8, baseType: !211, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, scope: !2341, file: !81, line: 138, baseType: !2350)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2341, file: !81, line: 138, elements: !2351)
!2351 = !{!2352, !2354}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2350, file: !81, line: 138, baseType: !2353)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2350, file: !81, line: 138, elements: !972)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2350, file: !81, line: 138, baseType: !2355)
!2355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2344, elements: !1835)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2283, file: !65, line: 147, baseType: !214, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2241, file: !65, line: 161, baseType: !903, size: 128, align: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, scope: !2237, file: !65, line: 164, baseType: !2359, size: 32, offset: 384)
!2359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2237, file: !65, line: 164, size: 32, elements: !2360)
!2360 = !{!2361, !2362}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2359, file: !65, line: 169, baseType: !304, size: 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2359, file: !65, line: 177, baseType: !34, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2237, file: !65, line: 181, baseType: !304, size: 32, offset: 416)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2200, file: !2175, line: 535, baseType: !2236, size: 64, offset: 640)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2200, file: !2175, line: 541, baseType: !2366, size: 64, offset: 704)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2200, file: !2175, line: 545, baseType: !2368, size: 64, offset: 768)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2200, file: !2175, line: 549, baseType: !2370, size: 64, offset: 832)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2142, line: 520, baseType: !2236)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2174, file: !2175, line: 581, baseType: !2372, size: 64, offset: 384)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!2198, !2199, !34}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2174, file: !2175, line: 582, baseType: !2376, size: 64, offset: 448)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!2198, !2199, !399, !399}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2174, file: !2175, line: 584, baseType: !2380, size: 64, offset: 512)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!399, !2127}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2174, file: !2175, line: 588, baseType: !2195, size: 64, offset: 576)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2174, file: !2175, line: 591, baseType: !2195, size: 64, offset: 640)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2174, file: !2175, line: 597, baseType: !2386, size: 64, offset: 704)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!136, !2127, !399, !214, !136, !136}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2174, file: !2175, line: 603, baseType: !2390, size: 64, offset: 768)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!268, !2127}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2174, file: !2175, line: 613, baseType: !2394, size: 64, offset: 832)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!136, !2127, !2397}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !65, line: 717, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2174, file: !2175, line: 625, baseType: !2400, size: 64, offset: 896)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!2397, !2127, !399}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2174, file: !2175, line: 633, baseType: !2404, size: 64, offset: 960)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!2236, !2127, !399}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2128, file: !65, line: 697, baseType: !399, size: 64, offset: 1024)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2128, file: !65, line: 699, baseType: !1775, size: 64, offset: 1088)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2128, file: !65, line: 700, baseType: !214, size: 64, offset: 1152)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2128, file: !65, line: 711, baseType: !689, size: 64, offset: 1216)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2128, file: !65, line: 717, baseType: !2397, size: 64, offset: 1280)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2128, file: !65, line: 722, baseType: !2413, offset: 1344)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !65, line: 570, elements: !972)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2045, file: !41, line: 1928, baseType: !399, size: 64, offset: 768)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2045, file: !41, line: 1929, baseType: !2416, size: 64, offset: 832)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!136, !429, !1775}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2045, file: !41, line: 1930, baseType: !2420, size: 64, offset: 896)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!136, !1775, !2423}
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !41, line: 1061, baseType: !214)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2045, file: !41, line: 1931, baseType: !2416, size: 64, offset: 960)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2045, file: !41, line: 1932, baseType: !2426, size: 64, offset: 1024)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!136, !1775, !585, !585, !136}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2045, file: !41, line: 1933, baseType: !2430, size: 64, offset: 1088)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!136, !136, !1775, !136}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2045, file: !41, line: 1934, baseType: !2434, size: 64, offset: 1152)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!136, !1775, !136, !2437}
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !41, line: 1063, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2045, file: !41, line: 1935, baseType: !1772, size: 64, offset: 1216)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2045, file: !41, line: 1936, baseType: !2441, size: 64, offset: 1280)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!136, !136}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2045, file: !41, line: 1937, baseType: !2434, size: 64, offset: 1344)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2045, file: !41, line: 1938, baseType: !2446, size: 64, offset: 1408)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!381, !2449, !1775, !2056, !396, !34}
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1127, line: 59, flags: DIFlagFwdDecl)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2045, file: !41, line: 1939, baseType: !2452, size: 64, offset: 1472)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!381, !1775, !2056, !2449, !396, !34}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2045, file: !41, line: 1940, baseType: !2456, size: 64, offset: 1536)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !1775}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2045, file: !41, line: 1941, baseType: !2460, size: 64, offset: 1600)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!136, !1775, !136, !2463, !2464}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2045, file: !41, line: 1942, baseType: !2466, size: 64, offset: 1664)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!385, !1775, !136, !585, !585}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2045, file: !41, line: 1944, baseType: !2470, size: 64, offset: 1728)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{null, !1125, !1775}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2045, file: !41, line: 1948, baseType: !2474, size: 64, offset: 1792)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!381, !1775, !585, !1775, !585, !396, !34}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2045, file: !41, line: 1950, baseType: !2478, size: 64, offset: 1856)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!585, !1775, !585, !1775, !585, !585, !34}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2045, file: !41, line: 1953, baseType: !2426, size: 64, offset: 1920)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2045, file: !41, line: 1954, baseType: !2483, size: 64, offset: 1984)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!136, !2486, !34}
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !41, line: 1911, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2045, file: !41, line: 1955, baseType: !2489, size: 64, offset: 2048)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!136, !2486, !2095, !34}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1776, file: !41, line: 1018, baseType: !211, size: 64, offset: 1472)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1776, file: !41, line: 1020, baseType: !214, size: 64, offset: 1536)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1776, file: !41, line: 1023, baseType: !214, size: 64, offset: 1600)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1776, file: !41, line: 1027, baseType: !2496, size: 64, offset: 1664)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1776, file: !41, line: 1029, baseType: !425, size: 64, offset: 1728)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1776, file: !41, line: 1030, baseType: !2499, size: 32, offset: 1792)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2500, line: 8, baseType: !220)
!2500 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1776, file: !41, line: 1031, baseType: !2499, size: 32, offset: 1824)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1752, file: !65, line: 756, baseType: !399, size: 64, offset: 704)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1752, file: !65, line: 757, baseType: !399, size: 64, offset: 768)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1752, file: !65, line: 760, baseType: !399, size: 64, offset: 832)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1752, file: !65, line: 761, baseType: !399, size: 64, offset: 896)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1752, file: !65, line: 763, baseType: !399, size: 64, offset: 960)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1752, file: !65, line: 764, baseType: !2508, size: 64, offset: 1024)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2142, line: 299, baseType: !2510)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2142, line: 299, size: 64, elements: !2511)
!2511 = !{!2512}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2510, file: !2142, line: 299, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2147, line: 18, baseType: !399)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1752, file: !65, line: 773, baseType: !304, size: 32, offset: 1088)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1752, file: !65, line: 785, baseType: !304, size: 32, offset: 1120)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1752, file: !65, line: 795, baseType: !2517, size: 64, offset: 1152)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !65, line: 726, size: 128, elements: !2519)
!2519 = !{!2520, !2521}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2518, file: !65, line: 727, baseType: !211, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2518, file: !65, line: 728, baseType: !136, size: 32, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1752, file: !65, line: 801, baseType: !399, size: 64, offset: 1216)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1752, file: !65, line: 804, baseType: !689, size: 64, offset: 1280)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1752, file: !65, line: 806, baseType: !136, size: 32, offset: 1344)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1752, file: !65, line: 808, baseType: !284, size: 32, offset: 1376)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1752, file: !65, line: 823, baseType: !1345, size: 320, offset: 1408)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1752, file: !65, line: 825, baseType: !271, size: 128, offset: 1728)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1752, file: !65, line: 845, baseType: !136, size: 32, offset: 1856)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1752, file: !65, line: 849, baseType: !399, size: 64, offset: 1920)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1752, file: !65, line: 850, baseType: !399, size: 64, offset: 1984)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1752, file: !65, line: 852, baseType: !399, size: 64, offset: 2048)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1752, file: !65, line: 853, baseType: !399, size: 64, offset: 2112)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1752, file: !65, line: 854, baseType: !691, size: 64, offset: 2176)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1752, file: !65, line: 855, baseType: !399, size: 64, offset: 2240)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1752, file: !65, line: 856, baseType: !399, size: 64, offset: 2304)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1752, file: !65, line: 857, baseType: !399, size: 64, offset: 2368)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1752, file: !65, line: 858, baseType: !399, size: 64, offset: 2432)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1752, file: !65, line: 865, baseType: !475, size: 32, offset: 2496)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1752, file: !65, line: 867, baseType: !284, size: 32, offset: 2528)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1752, file: !65, line: 869, baseType: !399, size: 64, offset: 2560)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1752, file: !65, line: 869, baseType: !399, size: 64, offset: 2624)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1752, file: !65, line: 869, baseType: !399, size: 64, offset: 2688)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1752, file: !65, line: 869, baseType: !399, size: 64, offset: 2752)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1752, file: !65, line: 870, baseType: !399, size: 64, offset: 2816)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1752, file: !65, line: 870, baseType: !399, size: 64, offset: 2880)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1752, file: !65, line: 870, baseType: !399, size: 64, offset: 2944)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1752, file: !65, line: 871, baseType: !399, size: 64, offset: 3008)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1752, file: !65, line: 871, baseType: !399, size: 64, offset: 3072)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1752, file: !65, line: 871, baseType: !399, size: 64, offset: 3136)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1752, file: !65, line: 871, baseType: !399, size: 64, offset: 3200)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1752, file: !65, line: 873, baseType: !2552, size: 3328, offset: 3264)
!2552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 3328, elements: !2553)
!2553 = !{!2554}
!2554 = !DISubrange(count: 52)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1752, file: !65, line: 875, baseType: !2556, size: 1280, offset: 6592)
!2556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1987, size: 1280, elements: !913)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1752, file: !65, line: 877, baseType: !2558, size: 64, offset: 7872)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !65, line: 877, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1752, file: !65, line: 880, baseType: !2561, size: 1088, offset: 7936)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2562, line: 72, baseType: !2563)
!2562 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2562, line: 23, size: 1088, elements: !2564)
!2564 = !{!2565, !2566, !2567, !2568, !2569, !2572, !2573, !2574, !2575, !2600, !2601, !2602}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2563, file: !2562, line: 28, baseType: !211, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2563, file: !2562, line: 38, baseType: !691, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2563, file: !2562, line: 40, baseType: !399, size: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2563, file: !2562, line: 43, baseType: !1345, size: 320, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2563, file: !2562, line: 44, baseType: !2570, size: 64, offset: 512)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2562, line: 44, flags: DIFlagFwdDecl)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2563, file: !2562, line: 48, baseType: !399, size: 64, offset: 576)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2563, file: !2562, line: 59, baseType: !685, size: 256, offset: 640)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2563, file: !2562, line: 60, baseType: !214, size: 64, offset: 896)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2563, file: !2562, line: 61, baseType: !2576, size: 64, offset: 960)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2578)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2579, line: 13, size: 1216, elements: !2580)
!2579 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2578, file: !2579, line: 14, baseType: !214, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2578, file: !2579, line: 15, baseType: !399, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2578, file: !2579, line: 17, baseType: !399, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2578, file: !2579, line: 17, baseType: !399, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2578, file: !2579, line: 18, baseType: !399, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2578, file: !2579, line: 18, baseType: !399, size: 64, offset: 320)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2578, file: !2579, line: 19, baseType: !257, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2578, file: !2579, line: 21, baseType: !385, size: 64, offset: 448)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2578, file: !2579, line: 23, baseType: !385, size: 64, offset: 512)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2578, file: !2579, line: 24, baseType: !385, size: 64, offset: 576)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2578, file: !2579, line: 25, baseType: !385, size: 64, offset: 640)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2578, file: !2579, line: 26, baseType: !385, size: 64, offset: 704)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2578, file: !2579, line: 27, baseType: !385, size: 64, offset: 768)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2578, file: !2579, line: 28, baseType: !385, size: 64, offset: 832)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2578, file: !2579, line: 29, baseType: !385, size: 64, offset: 896)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2578, file: !2579, line: 30, baseType: !385, size: 64, offset: 960)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2578, file: !2579, line: 31, baseType: !385, size: 64, offset: 1024)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2578, file: !2579, line: 32, baseType: !385, size: 64, offset: 1088)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2578, file: !2579, line: 33, baseType: !385, size: 64, offset: 1152)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2563, file: !2562, line: 63, baseType: !304, size: 32, offset: 1024)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2563, file: !2562, line: 69, baseType: !317, size: 16, offset: 1056)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2563, file: !2562, line: 70, baseType: !819, size: 16, offset: 1072)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1752, file: !65, line: 882, baseType: !399, size: 64, offset: 9024)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1752, file: !65, line: 885, baseType: !284, size: 32, offset: 9088)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1752, file: !65, line: 886, baseType: !2606, size: 64, offset: 9152)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !65, line: 732, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1752, file: !65, line: 901, baseType: !2012, size: 64, offset: 9216)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1752, file: !65, line: 904, baseType: !1775, size: 64, offset: 9280)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1752, file: !65, line: 906, baseType: !2611, size: 64, offset: 9344)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !65, line: 906, flags: DIFlagFwdDecl)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1752, file: !65, line: 930, baseType: !304, size: 32, offset: 9408)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1752, file: !65, line: 933, baseType: !304, size: 32, offset: 9440)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1752, file: !65, line: 935, baseType: !2616, size: 64, offset: 9472)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !95, line: 103, size: 64, elements: !2617)
!2617 = !{!2618}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2616, file: !95, line: 104, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !95, line: 101, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1752, file: !65, line: 940, baseType: !689, size: 64, offset: 9536)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1752, file: !65, line: 942, baseType: !943, size: 256, offset: 9600)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1749, file: !65, line: 986, baseType: !2624, offset: 10240)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, elements: !1835)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1452, file: !1127, line: 882, baseType: !1748, size: 64, offset: 9792)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1452, file: !1127, line: 884, baseType: !136, size: 32, offset: 9856)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1452, file: !1127, line: 885, baseType: !136, size: 32, offset: 9888)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1452, file: !1127, line: 886, baseType: !136, size: 32, offset: 9920)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1452, file: !1127, line: 888, baseType: !136, size: 32, offset: 9952)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1452, file: !1127, line: 890, baseType: !399, size: 64, offset: 9984)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1452, file: !1127, line: 893, baseType: !34, size: 32, offset: 10048)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1452, file: !1127, line: 896, baseType: !34, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1452, file: !1127, line: 897, baseType: !34, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1452, file: !1127, line: 898, baseType: !34, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1452, file: !1127, line: 899, baseType: !34, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1452, file: !1127, line: 919, baseType: !34, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1452, file: !1127, line: 922, baseType: !34, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1452, file: !1127, line: 923, baseType: !34, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1452, file: !1127, line: 925, baseType: !34, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1452, file: !1127, line: 939, baseType: !34, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1452, file: !1127, line: 941, baseType: !34, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1452, file: !1127, line: 944, baseType: !34, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1452, file: !1127, line: 956, baseType: !34, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1452, file: !1127, line: 962, baseType: !34, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1452, file: !1127, line: 966, baseType: !34, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1452, file: !1127, line: 969, baseType: !399, size: 64, offset: 10176)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1452, file: !1127, line: 971, baseType: !2648, size: 448, offset: 10240)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !89, line: 25, size: 448, elements: !2649)
!2649 = !{!2650, !2651, !2656}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2648, file: !89, line: 26, baseType: !399, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2648, file: !89, line: 27, baseType: !2652, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!385, !2655}
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, scope: !2648, file: !89, line: 28, baseType: !2657, size: 320, offset: 128)
!2657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2648, file: !89, line: 28, size: 320, elements: !2658)
!2658 = !{!2659, !2669, !2694}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2657, file: !89, line: 37, baseType: !2660, size: 320)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !89, line: 30, size: 320, elements: !2661)
!2661 = !{!2662, !2664, !2665, !2666, !2667, !2668}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2660, file: !89, line: 31, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2660, file: !89, line: 32, baseType: !220, size: 32, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2660, file: !89, line: 33, baseType: !220, size: 32, offset: 96)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2660, file: !89, line: 34, baseType: !220, size: 32, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2660, file: !89, line: 35, baseType: !211, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2660, file: !89, line: 36, baseType: !2663, size: 64, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2657, file: !89, line: 47, baseType: !2670, size: 192)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !89, line: 39, size: 192, elements: !2671)
!2671 = !{!2672, !2673, !2674, !2693}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2670, file: !89, line: 40, baseType: !1619, size: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2670, file: !89, line: 41, baseType: !88, size: 32, offset: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, scope: !2670, file: !89, line: 42, baseType: !2675, size: 64, offset: 64)
!2675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2670, file: !89, line: 42, size: 64, elements: !2676)
!2676 = !{!2677, !2685}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2675, file: !89, line: 43, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2680, line: 7, size: 128, elements: !2681)
!2680 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2681 = !{!2682, !2684}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2679, file: !2680, line: 8, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !383, line: 93, baseType: !587)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2679, file: !2680, line: 9, baseType: !587, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2675, file: !89, line: 44, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2688, line: 7, size: 64, elements: !2689)
!2688 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2689 = !{!2690, !2692}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2687, file: !2688, line: 8, baseType: !2691, size: 32)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2688, line: 5, baseType: !681)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2687, file: !2688, line: 9, baseType: !681, size: 32, offset: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2670, file: !89, line: 46, baseType: !211, size: 64, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2657, file: !89, line: 55, baseType: !2695, size: 256)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !89, line: 49, size: 256, elements: !2696)
!2696 = !{!2697, !2700, !2701, !2702, !2703}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2695, file: !89, line: 50, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !89, line: 14, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2695, file: !89, line: 51, baseType: !136, size: 32, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2695, file: !89, line: 52, baseType: !136, size: 32, offset: 96)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2695, file: !89, line: 53, baseType: !399, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2695, file: !89, line: 54, baseType: !399, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1452, file: !1127, line: 973, baseType: !2705, size: 32, offset: 10688)
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !249, line: 27, baseType: !2706)
!2706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !383, line: 28, baseType: !136)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1452, file: !1127, line: 974, baseType: !2705, size: 32, offset: 10720)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1452, file: !1127, line: 978, baseType: !399, size: 64, offset: 10752)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1452, file: !1127, line: 987, baseType: !1451, size: 64, offset: 10816)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1452, file: !1127, line: 990, baseType: !1451, size: 64, offset: 10880)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1452, file: !1127, line: 995, baseType: !271, size: 128, offset: 10944)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1452, file: !1127, line: 996, baseType: !271, size: 128, offset: 11072)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1452, file: !1127, line: 997, baseType: !1451, size: 64, offset: 11200)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1452, file: !1127, line: 1005, baseType: !271, size: 128, offset: 11264)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1452, file: !1127, line: 1006, baseType: !271, size: 128, offset: 11392)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1452, file: !1127, line: 1009, baseType: !1816, size: 64, offset: 11520)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1452, file: !1127, line: 1010, baseType: !2718, size: 512, offset: 11584)
!2718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !929, size: 512, elements: !913)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1452, file: !1127, line: 1011, baseType: !271, size: 128, offset: 12096)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1452, file: !1127, line: 1012, baseType: !271, size: 128, offset: 12224)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1452, file: !1127, line: 1014, baseType: !633, size: 64, offset: 12352)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1452, file: !1127, line: 1017, baseType: !812, size: 64, offset: 12416)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1452, file: !1127, line: 1020, baseType: !812, size: 64, offset: 12480)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1452, file: !1127, line: 1023, baseType: !214, size: 64, offset: 12544)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1452, file: !1127, line: 1025, baseType: !211, size: 64, offset: 12608)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1452, file: !1127, line: 1026, baseType: !211, size: 64, offset: 12672)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1452, file: !1127, line: 1031, baseType: !211, size: 64, offset: 12736)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1452, file: !1127, line: 1032, baseType: !2729, size: 192, offset: 12800)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1127, line: 324, size: 192, elements: !2730)
!2730 = !{!2731, !2732, !2733}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2729, file: !1127, line: 326, baseType: !211, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2729, file: !1127, line: 327, baseType: !211, size: 64, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2729, file: !1127, line: 328, baseType: !643, size: 32, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1452, file: !1127, line: 1041, baseType: !399, size: 64, offset: 12992)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1452, file: !1127, line: 1042, baseType: !399, size: 64, offset: 13056)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1452, file: !1127, line: 1045, baseType: !211, size: 64, offset: 13120)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1452, file: !1127, line: 1048, baseType: !211, size: 64, offset: 13184)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1452, file: !1127, line: 1051, baseType: !399, size: 64, offset: 13248)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1452, file: !1127, line: 1052, baseType: !399, size: 64, offset: 13312)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1452, file: !1127, line: 1055, baseType: !2741, size: 640, offset: 13376)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2742, line: 132, size: 640, elements: !2743)
!2742 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2743 = !{!2744, !2750, !2751}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2741, file: !2742, line: 133, baseType: !2745, size: 576)
!2745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2746, size: 576, elements: !350)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2742, line: 117, size: 192, elements: !2747)
!2747 = !{!2748, !2749}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2746, file: !2742, line: 118, baseType: !211, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2746, file: !2742, line: 119, baseType: !1628, size: 128, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2741, file: !2742, line: 134, baseType: !34, size: 32, offset: 576)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2741, file: !2742, line: 135, baseType: !34, size: 32, offset: 608)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1452, file: !1127, line: 1058, baseType: !2753, size: 448, offset: 14016)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2742, line: 144, size: 448, elements: !2754)
!2754 = !{!2755, !2756, !2757}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2753, file: !2742, line: 145, baseType: !903, size: 128, align: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2753, file: !2742, line: 146, baseType: !685, size: 256, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2753, file: !2742, line: 147, baseType: !34, size: 32, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1452, file: !1127, line: 1064, baseType: !1842, size: 64, offset: 14464)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1452, file: !1127, line: 1067, baseType: !1842, size: 64, offset: 14528)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1452, file: !1127, line: 1070, baseType: !1842, size: 64, offset: 14592)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1452, file: !1127, line: 1074, baseType: !1869, size: 64, offset: 14656)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1452, file: !1127, line: 1084, baseType: !2763, size: 128, offset: 14720)
!2763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2764)
!2764 = !{!2765}
!2765 = !DISubrange(count: 16)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1452, file: !1127, line: 1086, baseType: !2767, size: 64, offset: 14848)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1127, line: 55, flags: DIFlagFwdDecl)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1452, file: !1127, line: 1089, baseType: !2770, size: 64, offset: 14912)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2771, line: 12, size: 64, elements: !2772)
!2771 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2772 = !{!2773}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2770, file: !2771, line: 13, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2771, line: 8, flags: DIFlagFwdDecl)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1452, file: !1127, line: 1090, baseType: !2777, size: 128, offset: 14976)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2778, line: 13, size: 128, elements: !2779)
!2778 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2779 = !{!2780}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2777, file: !2778, line: 14, baseType: !271, size: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1452, file: !1127, line: 1097, baseType: !2782, size: 64, offset: 15104)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1127, line: 50, flags: DIFlagFwdDecl)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1452, file: !1127, line: 1100, baseType: !2785, size: 64, offset: 15168)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1127, line: 1100, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1452, file: !1127, line: 1103, baseType: !2788, size: 64, offset: 15232)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1127, line: 53, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1452, file: !1127, line: 1107, baseType: !2791, size: 64, offset: 15296)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1127, line: 56, flags: DIFlagFwdDecl)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1452, file: !1127, line: 1110, baseType: !2794, size: 64, offset: 15360)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2796, line: 93, size: 8768, elements: !2797)
!2796 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2797 = !{!2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2845, !2854, !2855, !2857, !2858, !2859, !2862, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2900, !2901, !2908, !2918, !2921, !2922, !2925, !2926, !2927, !2928, !2929, !2930}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2795, file: !2796, line: 94, baseType: !1465, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2795, file: !2796, line: 95, baseType: !304, size: 32, offset: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2795, file: !2796, line: 96, baseType: !136, size: 32, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2795, file: !2796, line: 97, baseType: !136, size: 32, offset: 96)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2795, file: !2796, line: 98, baseType: !271, size: 128, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2795, file: !2796, line: 100, baseType: !1438, size: 192, offset: 256)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2795, file: !2796, line: 103, baseType: !1451, size: 64, offset: 448)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2795, file: !2796, line: 106, baseType: !2806, size: 192, offset: 512)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2017, line: 32, size: 192, elements: !2807)
!2807 = !{!2808, !2809}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2806, file: !2017, line: 33, baseType: !271, size: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2806, file: !2017, line: 34, baseType: !2810, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2811, line: 25, baseType: !2812)
!2811 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2811, line: 23, size: 64, elements: !2813)
!2813 = !{!2814}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2812, file: !2811, line: 24, baseType: !1699, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2795, file: !2796, line: 109, baseType: !1053, size: 64, offset: 704)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2795, file: !2796, line: 112, baseType: !136, size: 32, offset: 768)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2795, file: !2796, line: 114, baseType: !136, size: 32, offset: 800)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2795, file: !2796, line: 115, baseType: !1451, size: 64, offset: 832)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2795, file: !2796, line: 118, baseType: !136, size: 32, offset: 896)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2795, file: !2796, line: 119, baseType: !34, size: 32, offset: 928)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2795, file: !2796, line: 121, baseType: !2822, size: 64, offset: 960)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2796, line: 80, size: 448, elements: !2824)
!2824 = !{!2825, !2826, !2832}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2823, file: !2796, line: 81, baseType: !304, size: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2823, file: !2796, line: 82, baseType: !2827, size: 128, offset: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2796, line: 75, size: 128, elements: !2828)
!2828 = !{!2829, !2830}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2827, file: !2796, line: 76, baseType: !1451, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2827, file: !2796, line: 77, baseType: !2831, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2823, file: !2796, line: 83, baseType: !634, size: 256, offset: 192)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2795, file: !2796, line: 132, baseType: !34, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2795, file: !2796, line: 133, baseType: !34, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2795, file: !2796, line: 138, baseType: !34, size: 32, offset: 1056)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2795, file: !2796, line: 139, baseType: !271, size: 128, offset: 1088)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2795, file: !2796, line: 142, baseType: !1572, size: 512, offset: 1216)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2795, file: !2796, line: 143, baseType: !1580, size: 64, offset: 1728)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2795, file: !2796, line: 150, baseType: !2840, size: 256, offset: 1792)
!2840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2841, size: 256, elements: !802)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2796, line: 38, size: 128, elements: !2842)
!2842 = !{!2843, !2844}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2841, file: !2796, line: 39, baseType: !211, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2841, file: !2796, line: 40, baseType: !211, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2795, file: !2796, line: 156, baseType: !2846, size: 192, offset: 2048)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2796, line: 66, size: 192, elements: !2847)
!2847 = !{!2848}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2846, file: !2796, line: 67, baseType: !2849, size: 192)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2796, line: 47, size: 192, elements: !2850)
!2850 = !{!2851, !2852, !2853}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2849, file: !2796, line: 48, baseType: !691, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2849, file: !2796, line: 49, baseType: !691, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2849, file: !2796, line: 50, baseType: !691, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2795, file: !2796, line: 160, baseType: !2741, size: 640, offset: 2240)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2795, file: !2796, line: 163, baseType: !2856, size: 256, offset: 2880)
!2856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 256, elements: !913)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2795, file: !2796, line: 169, baseType: !1816, size: 64, offset: 3136)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2795, file: !2796, line: 172, baseType: !136, size: 32, offset: 3200)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2795, file: !2796, line: 174, baseType: !2860, size: 64, offset: 3264)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2796, line: 174, flags: DIFlagFwdDecl)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2795, file: !2796, line: 185, baseType: !2863, size: 64, offset: 3328)
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !471, line: 860, baseType: !2864)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 853, size: 64, elements: !2865)
!2865 = !{!2866, !2867}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2864, file: !471, line: 858, baseType: !470, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2864, file: !471, line: 859, baseType: !284, size: 32, offset: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2795, file: !2796, line: 186, baseType: !211, size: 64, offset: 3392)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2795, file: !2796, line: 186, baseType: !211, size: 64, offset: 3456)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2795, file: !2796, line: 186, baseType: !211, size: 64, offset: 3520)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2795, file: !2796, line: 186, baseType: !211, size: 64, offset: 3584)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2795, file: !2796, line: 187, baseType: !211, size: 64, offset: 3648)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2795, file: !2796, line: 188, baseType: !211, size: 64, offset: 3712)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2795, file: !2796, line: 189, baseType: !2729, size: 192, offset: 3776)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2795, file: !2796, line: 190, baseType: !399, size: 64, offset: 3968)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2795, file: !2796, line: 190, baseType: !399, size: 64, offset: 4032)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2795, file: !2796, line: 190, baseType: !399, size: 64, offset: 4096)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2795, file: !2796, line: 190, baseType: !399, size: 64, offset: 4160)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2795, file: !2796, line: 191, baseType: !399, size: 64, offset: 4224)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2795, file: !2796, line: 191, baseType: !399, size: 64, offset: 4288)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2795, file: !2796, line: 191, baseType: !399, size: 64, offset: 4352)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2795, file: !2796, line: 191, baseType: !399, size: 64, offset: 4416)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2795, file: !2796, line: 192, baseType: !399, size: 64, offset: 4480)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2795, file: !2796, line: 192, baseType: !399, size: 64, offset: 4544)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2795, file: !2796, line: 192, baseType: !399, size: 64, offset: 4608)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2795, file: !2796, line: 192, baseType: !399, size: 64, offset: 4672)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2795, file: !2796, line: 193, baseType: !399, size: 64, offset: 4736)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2795, file: !2796, line: 193, baseType: !399, size: 64, offset: 4800)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2795, file: !2796, line: 194, baseType: !2890, size: 448, offset: 4864)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2891, line: 12, size: 448, elements: !2892)
!2891 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2892 = !{!2893, !2894, !2895, !2896, !2897, !2898, !2899}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2890, file: !2891, line: 15, baseType: !211, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2890, file: !2891, line: 17, baseType: !211, size: 64, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2890, file: !2891, line: 19, baseType: !211, size: 64, offset: 128)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2890, file: !2891, line: 21, baseType: !211, size: 64, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2890, file: !2891, line: 29, baseType: !211, size: 64, offset: 256)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2890, file: !2891, line: 35, baseType: !211, size: 64, offset: 320)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2890, file: !2891, line: 44, baseType: !211, size: 64, offset: 384)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2795, file: !2796, line: 202, baseType: !213, size: 64, offset: 5312)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2795, file: !2796, line: 213, baseType: !2902, size: 2048, offset: 5376)
!2902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2903, size: 2048, elements: !2764)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2904, line: 43, size: 128, elements: !2905)
!2904 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2905 = !{!2906, !2907}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2903, file: !2904, line: 44, baseType: !398, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2903, file: !2904, line: 45, baseType: !398, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2795, file: !2796, line: 216, baseType: !2909, size: 448, offset: 7424)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2796, line: 30, size: 448, elements: !2910)
!2910 = !{!2911, !2912, !2913, !2914, !2915, !2916, !2917}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2909, file: !2796, line: 31, baseType: !136, size: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2909, file: !2796, line: 32, baseType: !385, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2909, file: !2796, line: 33, baseType: !399, size: 64, offset: 128)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2909, file: !2796, line: 34, baseType: !211, size: 64, offset: 192)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2909, file: !2796, line: 34, baseType: !211, size: 64, offset: 256)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2909, file: !2796, line: 35, baseType: !399, size: 64, offset: 320)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2909, file: !2796, line: 35, baseType: !399, size: 64, offset: 384)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2795, file: !2796, line: 219, baseType: !2919, size: 64, offset: 7872)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2796, line: 219, flags: DIFlagFwdDecl)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2795, file: !2796, line: 222, baseType: !34, size: 32, offset: 7936)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2795, file: !2796, line: 223, baseType: !2923, size: 64, offset: 8000)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2796, line: 223, flags: DIFlagFwdDecl)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2795, file: !2796, line: 230, baseType: !248, size: 8, offset: 8064)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2795, file: !2796, line: 231, baseType: !821, size: 16, offset: 8080)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2795, file: !2796, line: 232, baseType: !821, size: 16, offset: 8096)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2795, file: !2796, line: 234, baseType: !1748, size: 64, offset: 8128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2795, file: !2796, line: 237, baseType: !685, size: 256, offset: 8192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2795, file: !2796, line: 243, baseType: !1345, size: 320, offset: 8448)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1452, file: !1127, line: 1111, baseType: !2932, size: 64, offset: 15424)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2796, line: 20, size: 16640, elements: !2934)
!2934 = !{!2935, !2936, !2937, !2938}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2933, file: !2796, line: 21, baseType: !284, size: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2933, file: !2796, line: 22, baseType: !1465, size: 32, offset: 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2933, file: !2796, line: 23, baseType: !1438, size: 192, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2933, file: !2796, line: 24, baseType: !2939, size: 16384, offset: 256)
!2939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2940, size: 16384, elements: !354)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2017, line: 51, size: 256, elements: !2941)
!2941 = !{!2942}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2940, file: !2017, line: 52, baseType: !2943, size: 256)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2017, line: 37, size: 256, elements: !2944)
!2944 = !{!2945, !2952, !2953, !2957}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2943, file: !2017, line: 39, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2947, line: 83, baseType: !2948)
!2947 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2947, line: 82, baseType: !2950)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{null, !136}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2943, file: !2017, line: 40, baseType: !399, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2943, file: !2017, line: 46, baseType: !2954, size: 64, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2947, line: 86, baseType: !2955)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2947, line: 85, baseType: !1048)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2943, file: !2017, line: 48, baseType: !2810, size: 64, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1452, file: !1127, line: 1112, baseType: !2810, size: 64, offset: 15488)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1452, file: !1127, line: 1113, baseType: !2810, size: 64, offset: 15552)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1452, file: !1127, line: 1115, baseType: !2810, size: 64, offset: 15616)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1452, file: !1127, line: 1116, baseType: !2806, size: 192, offset: 15680)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1452, file: !1127, line: 1117, baseType: !399, size: 64, offset: 15872)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1452, file: !1127, line: 1118, baseType: !396, size: 64, offset: 15936)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1452, file: !1127, line: 1119, baseType: !34, size: 32, offset: 16000)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1452, file: !1127, line: 1121, baseType: !902, size: 64, offset: 16064)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1452, file: !1127, line: 1125, baseType: !2967, size: 64, offset: 16128)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1127, line: 43, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1452, file: !1127, line: 1127, baseType: !435, size: 32, offset: 16192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1452, file: !1127, line: 1128, baseType: !34, size: 32, offset: 16224)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1452, file: !1127, line: 1130, baseType: !2972, size: 128, offset: 16256)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2973, line: 37, size: 128, elements: !2974)
!2973 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2974 = !{!2975, !2976, !2977}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2972, file: !2973, line: 38, baseType: !136, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2972, file: !2973, line: 39, baseType: !304, size: 32, offset: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2972, file: !2973, line: 40, baseType: !2978, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2973, line: 24, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1452, file: !1127, line: 1131, baseType: !2981, size: 256, offset: 16384)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2982, line: 12, size: 256, elements: !2983)
!2982 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2983 = !{!2984, !2985, !2986, !2987}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2981, file: !2982, line: 13, baseType: !349, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2981, file: !2982, line: 14, baseType: !399, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2981, file: !2982, line: 15, baseType: !399, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2981, file: !2982, line: 16, baseType: !248, size: 8, offset: 192)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1452, file: !1127, line: 1134, baseType: !211, size: 64, offset: 16640)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1452, file: !1127, line: 1135, baseType: !211, size: 64, offset: 16704)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1452, file: !1127, line: 1138, baseType: !284, size: 32, offset: 16768)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1452, file: !1127, line: 1141, baseType: !643, size: 32, offset: 16800)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1452, file: !1127, line: 1143, baseType: !2993, size: 64, offset: 16832)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1127, line: 735, size: 64, elements: !2994)
!2994 = !{!2995}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2993, file: !1127, line: 736, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1452, file: !1127, line: 1147, baseType: !1631, size: 128, offset: 16896)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1452, file: !1127, line: 1149, baseType: !1451, size: 64, offset: 17024)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1452, file: !1127, line: 1151, baseType: !3000, size: 64, offset: 17088)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1127, line: 1151, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1452, file: !1127, line: 1188, baseType: !214, size: 64, offset: 17152)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1452, file: !1127, line: 1191, baseType: !3004, size: 64, offset: 17216)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1127, line: 44, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1452, file: !1127, line: 1194, baseType: !3007, size: 64, offset: 17280)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1127, line: 45, flags: DIFlagFwdDecl)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1452, file: !1127, line: 1197, baseType: !3010, size: 64, offset: 17344)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1127, line: 61, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1452, file: !1127, line: 1199, baseType: !3013, size: 64, offset: 17408)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3015, line: 99, size: 128, elements: !3016)
!3015 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3016 = !{!3017, !3018, !3019}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3014, file: !3015, line: 100, baseType: !689, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3014, file: !3015, line: 101, baseType: !304, size: 32, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3014, file: !3015, line: 103, baseType: !319, size: 16, offset: 96)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1452, file: !1127, line: 1202, baseType: !3021, size: 64, offset: 17472)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1127, line: 48, flags: DIFlagFwdDecl)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1452, file: !1127, line: 1205, baseType: !399, size: 64, offset: 17536)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1452, file: !1127, line: 1206, baseType: !3025, size: 64, offset: 17600)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2017, line: 14, baseType: !3027)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2017, line: 12, size: 384, elements: !3028)
!3028 = !{!3029}
!3029 = !DIDerivedType(tag: DW_TAG_member, scope: !3027, file: !2017, line: 13, baseType: !3030, size: 384)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3027, file: !2017, line: 13, size: 384, elements: !3031)
!3031 = !{!3032, !3033, !3034, !3035}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3030, file: !2017, line: 13, baseType: !136, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3030, file: !2017, line: 13, baseType: !136, size: 32, offset: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3030, file: !2017, line: 13, baseType: !136, size: 32, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3030, file: !2017, line: 13, baseType: !3036, size: 256, offset: 128)
!3036 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3037, line: 37, size: 256, elements: !3038)
!3037 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3038 = !{!3039, !3044, !3057, !3063, !3072, !3099, !3104}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3036, file: !3037, line: 42, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3036, file: !3037, line: 39, size: 64, elements: !3041)
!3041 = !{!3042, !3043}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3040, file: !3037, line: 40, baseType: !2706, size: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3040, file: !3037, line: 41, baseType: !441, size: 32, offset: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3036, file: !3037, line: 50, baseType: !3045, size: 192)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3036, file: !3037, line: 45, size: 192, elements: !3046)
!3046 = !{!3047, !3049, !3050, !3056}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3045, file: !3037, line: 46, baseType: !3048, size: 32)
!3048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !383, line: 95, baseType: !136)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3045, file: !3037, line: 47, baseType: !136, size: 32, offset: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3045, file: !3037, line: 48, baseType: !3051, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3037, line: 11, baseType: !3052)
!3052 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3037, line: 8, size: 64, elements: !3053)
!3053 = !{!3054, !3055}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3052, file: !3037, line: 9, baseType: !136, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3052, file: !3037, line: 10, baseType: !214, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3045, file: !3037, line: 49, baseType: !136, size: 32, offset: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3036, file: !3037, line: 57, baseType: !3058, size: 128)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3036, file: !3037, line: 53, size: 128, elements: !3059)
!3059 = !{!3060, !3061, !3062}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3058, file: !3037, line: 54, baseType: !2706, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3058, file: !3037, line: 55, baseType: !441, size: 32, offset: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3058, file: !3037, line: 56, baseType: !3051, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3036, file: !3037, line: 66, baseType: !3064, size: 256)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3036, file: !3037, line: 60, size: 256, elements: !3065)
!3065 = !{!3066, !3067, !3068, !3069, !3071}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3064, file: !3037, line: 61, baseType: !2706, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3064, file: !3037, line: 62, baseType: !441, size: 32, offset: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3064, file: !3037, line: 63, baseType: !136, size: 32, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3064, file: !3037, line: 64, baseType: !3070, size: 64, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !383, line: 94, baseType: !384)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3064, file: !3037, line: 65, baseType: !3070, size: 64, offset: 192)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3036, file: !3037, line: 105, baseType: !3073, size: 256)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3036, file: !3037, line: 69, size: 256, elements: !3074)
!3074 = !{!3075, !3076}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3073, file: !3037, line: 70, baseType: !214, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, scope: !3073, file: !3037, line: 79, baseType: !3077, size: 192, offset: 64)
!3077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3073, file: !3037, line: 79, size: 192, elements: !3078)
!3078 = !{!3079, !3080, !3081, !3088, !3093}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3077, file: !3037, line: 81, baseType: !136, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3077, file: !3037, line: 86, baseType: !821, size: 16)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3077, file: !3037, line: 92, baseType: !3082, size: 192)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3077, file: !3037, line: 88, size: 192, elements: !3083)
!3083 = !{!3084, !3086, !3087}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3082, file: !3037, line: 89, baseType: !3085, size: 64)
!3085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1615)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3082, file: !3037, line: 90, baseType: !214, size: 64, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3082, file: !3037, line: 91, baseType: !214, size: 64, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3077, file: !3037, line: 97, baseType: !3089, size: 96)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3077, file: !3037, line: 94, size: 96, elements: !3090)
!3090 = !{!3091, !3092}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3089, file: !3037, line: 95, baseType: !3085, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3089, file: !3037, line: 96, baseType: !221, size: 32, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3077, file: !3037, line: 103, baseType: !3094, size: 128)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3077, file: !3037, line: 99, size: 128, elements: !3095)
!3095 = !{!3096, !3097, !3098}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3094, file: !3037, line: 100, baseType: !399, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3094, file: !3037, line: 101, baseType: !221, size: 32, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3094, file: !3037, line: 102, baseType: !221, size: 32, offset: 96)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3036, file: !3037, line: 111, baseType: !3100, size: 128)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3036, file: !3037, line: 108, size: 128, elements: !3101)
!3101 = !{!3102, !3103}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3100, file: !3037, line: 109, baseType: !385, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3100, file: !3037, line: 110, baseType: !136, size: 32, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3036, file: !3037, line: 118, baseType: !3105, size: 128)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3036, file: !3037, line: 114, size: 128, elements: !3106)
!3106 = !{!3107, !3108, !3109}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3105, file: !3037, line: 115, baseType: !214, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3105, file: !3037, line: 116, baseType: !136, size: 32, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3105, file: !3037, line: 117, baseType: !34, size: 32, offset: 96)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1452, file: !1127, line: 1208, baseType: !2890, size: 448, offset: 17664)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1452, file: !1127, line: 1215, baseType: !211, size: 64, offset: 18112)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1452, file: !1127, line: 1217, baseType: !211, size: 64, offset: 18176)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1452, file: !1127, line: 1219, baseType: !211, size: 64, offset: 18240)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1452, file: !1127, line: 1223, baseType: !3115, size: 64, offset: 18304)
!3115 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3116, line: 99, baseType: !3117)
!3116 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3116, line: 99, size: 64, elements: !3118)
!3118 = !{!3119}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3117, file: !3116, line: 99, baseType: !1699, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1452, file: !1127, line: 1225, baseType: !470, size: 32, offset: 18368)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1452, file: !1127, line: 1226, baseType: !136, size: 32, offset: 18400)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1452, file: !1127, line: 1227, baseType: !136, size: 32, offset: 18432)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1452, file: !1127, line: 1231, baseType: !3124, size: 64, offset: 18496)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1127, line: 1231, flags: DIFlagFwdDecl)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1452, file: !1127, line: 1233, baseType: !271, size: 128, offset: 18560)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1452, file: !1127, line: 1240, baseType: !3128, size: 64, offset: 18688)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1127, line: 62, flags: DIFlagFwdDecl)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1452, file: !1127, line: 1242, baseType: !3131, size: 64, offset: 18752)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1127, line: 1242, flags: DIFlagFwdDecl)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1452, file: !1127, line: 1244, baseType: !271, size: 128, offset: 18816)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1452, file: !1127, line: 1245, baseType: !3135, size: 64, offset: 18944)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1127, line: 51, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1452, file: !1127, line: 1246, baseType: !685, size: 256, offset: 19008)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1452, file: !1127, line: 1247, baseType: !34, size: 32, offset: 19264)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1452, file: !1127, line: 1250, baseType: !3140, size: 64, offset: 19328)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1127, line: 57, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1452, file: !1127, line: 1251, baseType: !685, size: 256, offset: 19392)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1452, file: !1127, line: 1252, baseType: !271, size: 128, offset: 19648)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1452, file: !1127, line: 1259, baseType: !2397, size: 64, offset: 19776)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1452, file: !1127, line: 1260, baseType: !821, size: 16, offset: 19840)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1452, file: !1127, line: 1261, baseType: !821, size: 16, offset: 19856)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1452, file: !1127, line: 1314, baseType: !3148, size: 64, offset: 19904)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3150, line: 62, size: 256, align: 256, elements: !3151)
!3150 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3151 = !{!3152, !3153, !3154, !3155, !3156, !3157, !3158}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3149, file: !3150, line: 75, baseType: !221, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3149, file: !3150, line: 90, baseType: !221, size: 32, offset: 32)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3149, file: !3150, line: 112, baseType: !212, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3149, file: !3150, line: 132, baseType: !221, size: 32, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3149, file: !3150, line: 140, baseType: !221, size: 32, offset: 160)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3149, file: !3150, line: 149, baseType: !221, size: 32, offset: 192)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3149, file: !3150, line: 154, baseType: !3159, offset: 224)
!3159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1835)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1452, file: !1127, line: 1315, baseType: !220, size: 32, offset: 19968)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1452, file: !1127, line: 1316, baseType: !220, size: 32, offset: 20000)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1452, file: !1127, line: 1321, baseType: !399, size: 64, offset: 20032)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1452, file: !1127, line: 1325, baseType: !136, size: 32, offset: 20096)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1452, file: !1127, line: 1326, baseType: !136, size: 32, offset: 20128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1452, file: !1127, line: 1327, baseType: !136, size: 32, offset: 20160)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1452, file: !1127, line: 1328, baseType: !136, size: 32, offset: 20192)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1452, file: !1127, line: 1329, baseType: !903, size: 128, align: 64, offset: 20224)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1452, file: !1127, line: 1332, baseType: !3169, size: 128, offset: 20352)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3170, line: 51, size: 128, elements: !3171)
!3170 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3171 = !{!3172, !3177, !3178}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3169, file: !3170, line: 60, baseType: !3173, size: 64)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3174, line: 7, size: 64, elements: !3175)
!3174 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3175 = !{!3176}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3173, file: !3174, line: 12, baseType: !1696, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3169, file: !3170, line: 63, baseType: !248, size: 8, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3169, file: !3170, line: 70, baseType: !248, size: 8, offset: 72)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1452, file: !1127, line: 1335, baseType: !2449, size: 64, offset: 20480)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1452, file: !1127, line: 1337, baseType: !3181, size: 128, offset: 20544)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3170, line: 39, size: 128, elements: !3182)
!3182 = !{!3183, !3184, !3185}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3181, file: !3170, line: 40, baseType: !2236, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3181, file: !3170, line: 42, baseType: !221, size: 32, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3181, file: !3170, line: 43, baseType: !221, size: 32, offset: 96)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1452, file: !1127, line: 1340, baseType: !3187, size: 64, offset: 20672)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1127, line: 69, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1452, file: !1127, line: 1351, baseType: !136, size: 32, offset: 20736)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1452, file: !1127, line: 1352, baseType: !136, size: 32, offset: 20768)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1452, file: !1127, line: 1354, baseType: !399, size: 64, offset: 20800)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1452, file: !1127, line: 1364, baseType: !211, size: 64, offset: 20864)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1452, file: !1127, line: 1365, baseType: !211, size: 64, offset: 20928)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1452, file: !1127, line: 1412, baseType: !399, size: 64, offset: 20992)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1452, file: !1127, line: 1453, baseType: !3196, size: 64, offset: 21056)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1127, line: 1453, flags: DIFlagFwdDecl)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1452, file: !1127, line: 1457, baseType: !3199, size: 64, offset: 21120)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !95, line: 61, size: 576, elements: !3201)
!3201 = !{!3202, !3203, !3222, !3225, !3226, !3259, !3269}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3200, file: !95, line: 62, baseType: !94, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, scope: !3200, file: !95, line: 64, baseType: !3204, size: 192, offset: 64)
!3204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3200, file: !95, line: 64, size: 192, elements: !3205)
!3205 = !{!3206, !3217}
!3206 = !DIDerivedType(tag: DW_TAG_member, scope: !3204, file: !95, line: 65, baseType: !3207, size: 192)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3204, file: !95, line: 65, size: 192, elements: !3208)
!3208 = !{!3209, !3216}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3207, file: !95, line: 66, baseType: !3210, size: 128)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3211, line: 50, size: 128, elements: !3212)
!3211 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3212 = !{!3213, !3214, !3215}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3210, file: !3211, line: 52, baseType: !399, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3210, file: !3211, line: 54, baseType: !34, size: 32, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3210, file: !3211, line: 55, baseType: !34, size: 32, offset: 96)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3207, file: !95, line: 67, baseType: !399, size: 64, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !3204, file: !95, line: 70, baseType: !3218, size: 192)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3204, file: !95, line: 70, size: 192, elements: !3219)
!3219 = !{!3220, !3221}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3218, file: !95, line: 71, baseType: !903, size: 128, align: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3218, file: !95, line: 72, baseType: !399, size: 64, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3200, file: !95, line: 76, baseType: !3223, size: 64, offset: 256)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !95, line: 76, flags: DIFlagFwdDecl)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3200, file: !95, line: 77, baseType: !399, size: 64, offset: 320)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3200, file: !95, line: 79, baseType: !3227, size: 64, offset: 384)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3211, line: 25, size: 256, elements: !3229)
!3229 = !{!3230, !3236, !3240}
!3230 = !DIDerivedType(tag: DW_TAG_member, scope: !3228, file: !3211, line: 26, baseType: !3231, size: 128)
!3231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3228, file: !3211, line: 26, size: 128, elements: !3232)
!3232 = !{!3233, !3235}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3231, file: !3211, line: 27, baseType: !3234, size: 128)
!3234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 128, elements: !2764)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3231, file: !3211, line: 28, baseType: !3234, size: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3228, file: !3211, line: 31, baseType: !3237, size: 64, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3239)
!3239 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3211, line: 23, flags: DIFlagFwdDecl)
!3240 = !DIDerivedType(tag: DW_TAG_member, scope: !3228, file: !3211, line: 33, baseType: !3241, size: 64, offset: 192)
!3241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3228, file: !3211, line: 33, size: 64, elements: !3242)
!3242 = !{!3243, !3249, !3254}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3241, file: !3211, line: 38, baseType: !3244, size: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3241, file: !3211, line: 34, size: 64, elements: !3245)
!3245 = !{!3246, !3247, !3248}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3244, file: !3211, line: 35, baseType: !681, size: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3244, file: !3211, line: 36, baseType: !204, size: 8, offset: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3244, file: !3211, line: 37, baseType: !204, size: 8, offset: 40)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3241, file: !3211, line: 42, baseType: !3250, size: 16)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3241, file: !3211, line: 39, size: 16, elements: !3251)
!3251 = !{!3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3250, file: !3211, line: 40, baseType: !204, size: 8)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3250, file: !3211, line: 41, baseType: !204, size: 8, offset: 8)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3241, file: !3211, line: 46, baseType: !3255, size: 16)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3241, file: !3211, line: 43, size: 16, elements: !3256)
!3256 = !{!3257, !3258}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3255, file: !3211, line: 44, baseType: !204, size: 8)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3255, file: !3211, line: 45, baseType: !204, size: 8, offset: 8)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3200, file: !95, line: 81, baseType: !3260, size: 64, offset: 448)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !95, line: 85, size: 384, elements: !3262)
!3262 = !{!3263, !3264, !3265, !3266, !3267, !3268}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3261, file: !95, line: 86, baseType: !3223, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3261, file: !95, line: 87, baseType: !399, size: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3261, file: !95, line: 88, baseType: !399, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3261, file: !95, line: 89, baseType: !399, size: 64, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3261, file: !95, line: 90, baseType: !248, size: 8, offset: 256)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3261, file: !95, line: 92, baseType: !3260, size: 64, offset: 320)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3200, file: !95, line: 82, baseType: !34, size: 32, offset: 512)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1452, file: !1127, line: 1463, baseType: !3271, offset: 21184)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1127, line: 739, elements: !972)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1452, file: !1127, line: 1470, baseType: !903, size: 128, align: 64, offset: 21184)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1452, file: !1127, line: 1471, baseType: !1465, size: 32, offset: 21312)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1452, file: !1127, line: 1472, baseType: !136, size: 32, offset: 21344)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1452, file: !1127, line: 1474, baseType: !1451, size: 64, offset: 21376)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1452, file: !1127, line: 1475, baseType: !925, size: 320, offset: 21440)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1452, file: !1127, line: 1478, baseType: !3278, size: 64, offset: 21760)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2089, line: 49, size: 512, elements: !3280)
!3280 = !{!3281, !3282, !3283, !3284, !3285, !3287, !3288, !3289, !3291}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3279, file: !2089, line: 50, baseType: !3278, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3279, file: !2089, line: 51, baseType: !214, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3279, file: !2089, line: 52, baseType: !399, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3279, file: !2089, line: 53, baseType: !399, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3279, file: !2089, line: 54, baseType: !3286, size: 64, offset: 256)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3279, file: !2089, line: 56, baseType: !34, size: 32, offset: 320)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3279, file: !2089, line: 58, baseType: !34, size: 32, offset: 352)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3279, file: !2089, line: 59, baseType: !3290, size: 64, offset: 384)
!3290 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !249, line: 159, baseType: !211)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3279, file: !2089, line: 60, baseType: !257, size: 64, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1452, file: !1127, line: 1482, baseType: !1465, size: 32, offset: 21824)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1452, file: !1127, line: 1489, baseType: !214, size: 64, offset: 21888)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1452, file: !1127, line: 1504, baseType: !214, size: 64, offset: 21952)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1452, file: !1127, line: 1505, baseType: !212, size: 64, offset: 22016)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1452, file: !1127, line: 1506, baseType: !211, size: 64, offset: 22080)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1452, file: !1127, line: 1507, baseType: !212, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1452, file: !1127, line: 1508, baseType: !212, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1452, file: !1127, line: 1509, baseType: !212, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1452, file: !1127, line: 1510, baseType: !903, size: 128, align: 64, offset: 22208)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1452, file: !1127, line: 1511, baseType: !136, size: 32, offset: 22336)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1452, file: !1127, line: 1515, baseType: !3303, size: 64, offset: 22400)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1479, line: 56, size: 64, elements: !3304)
!3304 = !{!3305}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3303, file: !1479, line: 57, baseType: !1482, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1452, file: !1127, line: 1518, baseType: !3303, size: 64, offset: 22464)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1452, file: !1127, line: 1528, baseType: !903, size: 128, align: 64, offset: 22528)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1452, file: !1127, line: 1552, baseType: !3309, size: 35328, offset: 23040)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3310, line: 430, size: 35328, elements: !3311)
!3310 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3311 = !{!3312, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3341, !3342, !3343, !3344, !3345, !3346, !3349, !3350, !3351, !3352}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3309, file: !3310, line: 432, baseType: !3313, size: 192)
!3313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3314, size: 192, elements: !350)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3315, line: 16, size: 64, elements: !3316)
!3315 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3314, file: !3315, line: 17, baseType: !317, size: 16)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3314, file: !3315, line: 18, baseType: !317, size: 16, offset: 16)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3314, file: !3315, line: 19, baseType: !317, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3314, file: !3315, line: 19, baseType: !317, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3314, file: !3315, line: 19, baseType: !317, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3314, file: !3315, line: 19, baseType: !317, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3314, file: !3315, line: 19, baseType: !317, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3314, file: !3315, line: 20, baseType: !317, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3314, file: !3315, line: 20, baseType: !317, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3314, file: !3315, line: 20, baseType: !317, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3314, file: !3315, line: 20, baseType: !317, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3314, file: !3315, line: 20, baseType: !317, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3314, file: !3315, line: 20, baseType: !317, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3309, file: !3310, line: 436, baseType: !399, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3309, file: !3310, line: 440, baseType: !319, size: 16, offset: 256)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3309, file: !3310, line: 441, baseType: !319, size: 16, offset: 272)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3309, file: !3310, line: 442, baseType: !319, size: 16, offset: 288)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3309, file: !3310, line: 443, baseType: !319, size: 16, offset: 304)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3309, file: !3310, line: 447, baseType: !399, size: 64, offset: 320)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3309, file: !3310, line: 448, baseType: !399, size: 64, offset: 384)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3309, file: !3310, line: 459, baseType: !3338, size: 256, offset: 448)
!3338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3339, size: 256, elements: !913)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3310, line: 428, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3309, file: !3310, line: 461, baseType: !399, size: 64, offset: 704)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3309, file: !3310, line: 463, baseType: !399, size: 64, offset: 768)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3309, file: !3310, line: 465, baseType: !399, size: 64, offset: 832)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3309, file: !3310, line: 466, baseType: !399, size: 64, offset: 896)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3309, file: !3310, line: 467, baseType: !399, size: 64, offset: 960)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3309, file: !3310, line: 473, baseType: !3347, size: 64, offset: 1024)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3310, line: 10, flags: DIFlagFwdDecl)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3309, file: !3310, line: 480, baseType: !399, size: 64, offset: 1088)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3309, file: !3310, line: 482, baseType: !34, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3309, file: !3310, line: 491, baseType: !220, size: 32, offset: 1184)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3309, file: !3310, line: 501, baseType: !3353, size: 33792, offset: 1536)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3354, line: 448, size: 33792, elements: !3355)
!3354 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3355 = !{!3356, !3357, !3358, !3518, !3519, !3525, !3526}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3353, file: !3354, line: 461, baseType: !34, size: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3353, file: !3354, line: 468, baseType: !399, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3353, file: !3354, line: 476, baseType: !3359, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3354, line: 356, size: 33280, align: 512, elements: !3361)
!3361 = !{!3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3360, file: !3354, line: 358, baseType: !34, size: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3360, file: !3354, line: 361, baseType: !34, size: 32, offset: 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3360, file: !3354, line: 364, baseType: !211, size: 64, offset: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3360, file: !3354, line: 367, baseType: !211, size: 64, offset: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3360, file: !3354, line: 370, baseType: !211, size: 64, offset: 192)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3360, file: !3354, line: 373, baseType: !34, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3360, file: !3354, line: 376, baseType: !34, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3360, file: !3354, line: 391, baseType: !34, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3360, file: !3354, line: 394, baseType: !34, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3360, file: !3354, line: 397, baseType: !3372, size: 32768, offset: 512)
!3372 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3354, line: 348, size: 32768, elements: !3373)
!3373 = !{!3374, !3387, !3424, !3501, !3514}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3372, file: !3354, line: 349, baseType: !3375, size: 896)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3354, line: 12, size: 896, elements: !3376)
!3376 = !{!3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3386}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3375, file: !3354, line: 13, baseType: !220, size: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3375, file: !3354, line: 14, baseType: !220, size: 32, offset: 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3375, file: !3354, line: 15, baseType: !220, size: 32, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3375, file: !3354, line: 16, baseType: !220, size: 32, offset: 96)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3375, file: !3354, line: 17, baseType: !220, size: 32, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3375, file: !3354, line: 18, baseType: !220, size: 32, offset: 160)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3375, file: !3354, line: 19, baseType: !220, size: 32, offset: 192)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3375, file: !3354, line: 22, baseType: !3385, size: 640, offset: 224)
!3385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 640, elements: !5)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3375, file: !3354, line: 25, baseType: !220, size: 32, offset: 864)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3372, file: !3354, line: 350, baseType: !3388, size: 4096, align: 128)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3354, line: 34, size: 4096, align: 128, elements: !3389)
!3389 = !{!3390, !3391, !3392, !3393, !3394, !3409, !3410, !3411, !3413, !3415, !3419}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3388, file: !3354, line: 35, baseType: !317, size: 16)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3388, file: !3354, line: 36, baseType: !317, size: 16, offset: 16)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3388, file: !3354, line: 37, baseType: !317, size: 16, offset: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3388, file: !3354, line: 38, baseType: !317, size: 16, offset: 48)
!3394 = !DIDerivedType(tag: DW_TAG_member, scope: !3388, file: !3354, line: 39, baseType: !3395, size: 128, offset: 64)
!3395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3388, file: !3354, line: 39, size: 128, elements: !3396)
!3396 = !{!3397, !3402}
!3397 = !DIDerivedType(tag: DW_TAG_member, scope: !3395, file: !3354, line: 40, baseType: !3398, size: 128)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3395, file: !3354, line: 40, size: 128, elements: !3399)
!3399 = !{!3400, !3401}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3398, file: !3354, line: 41, baseType: !211, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3398, file: !3354, line: 42, baseType: !211, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, scope: !3395, file: !3354, line: 44, baseType: !3403, size: 128)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3395, file: !3354, line: 44, size: 128, elements: !3404)
!3404 = !{!3405, !3406, !3407, !3408}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3403, file: !3354, line: 45, baseType: !220, size: 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3403, file: !3354, line: 46, baseType: !220, size: 32, offset: 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3403, file: !3354, line: 47, baseType: !220, size: 32, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3403, file: !3354, line: 48, baseType: !220, size: 32, offset: 96)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3388, file: !3354, line: 51, baseType: !220, size: 32, offset: 192)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3388, file: !3354, line: 52, baseType: !220, size: 32, offset: 224)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3388, file: !3354, line: 55, baseType: !3412, size: 1024, offset: 256)
!3412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 1024, elements: !506)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3388, file: !3354, line: 58, baseType: !3414, size: 2048, offset: 1280)
!3414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2048, elements: !354)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3388, file: !3354, line: 60, baseType: !3416, size: 384, offset: 3328)
!3416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 384, elements: !3417)
!3417 = !{!3418}
!3418 = !DISubrange(count: 12)
!3419 = !DIDerivedType(tag: DW_TAG_member, scope: !3388, file: !3354, line: 62, baseType: !3420, size: 384, offset: 3712)
!3420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3388, file: !3354, line: 62, size: 384, elements: !3421)
!3421 = !{!3422, !3423}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3420, file: !3354, line: 63, baseType: !3416, size: 384)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3420, file: !3354, line: 64, baseType: !3416, size: 384)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3372, file: !3354, line: 351, baseType: !3425, size: 1088)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3354, line: 79, size: 1088, elements: !3426)
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3500}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3425, file: !3354, line: 80, baseType: !220, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3425, file: !3354, line: 81, baseType: !220, size: 32, offset: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3425, file: !3354, line: 82, baseType: !220, size: 32, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3425, file: !3354, line: 83, baseType: !220, size: 32, offset: 96)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3425, file: !3354, line: 84, baseType: !220, size: 32, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3425, file: !3354, line: 85, baseType: !220, size: 32, offset: 160)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3425, file: !3354, line: 86, baseType: !220, size: 32, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3425, file: !3354, line: 88, baseType: !3385, size: 640, offset: 224)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3425, file: !3354, line: 89, baseType: !204, size: 8, offset: 864)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3425, file: !3354, line: 90, baseType: !204, size: 8, offset: 872)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3425, file: !3354, line: 91, baseType: !204, size: 8, offset: 880)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3425, file: !3354, line: 92, baseType: !204, size: 8, offset: 888)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3425, file: !3354, line: 93, baseType: !204, size: 8, offset: 896)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3425, file: !3354, line: 94, baseType: !204, size: 8, offset: 904)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3425, file: !3354, line: 95, baseType: !3442, size: 64, offset: 960)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3444, line: 11, size: 128, elements: !3445)
!3444 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3445 = !{!3446, !3447}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3443, file: !3444, line: 12, baseType: !385, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3443, file: !3444, line: 13, baseType: !3448, size: 64, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3450, line: 103, size: 1344, elements: !3451)
!3450 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3451 = !{!3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3480, !3481, !3482}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3449, file: !3450, line: 109, baseType: !399, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3449, file: !3450, line: 110, baseType: !399, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3449, file: !3450, line: 111, baseType: !399, size: 64, offset: 128)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3449, file: !3450, line: 112, baseType: !399, size: 64, offset: 192)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3449, file: !3450, line: 113, baseType: !399, size: 64, offset: 256)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3449, file: !3450, line: 114, baseType: !399, size: 64, offset: 320)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3449, file: !3450, line: 117, baseType: !399, size: 64, offset: 384)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3449, file: !3450, line: 118, baseType: !399, size: 64, offset: 448)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3449, file: !3450, line: 119, baseType: !399, size: 64, offset: 512)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3449, file: !3450, line: 120, baseType: !399, size: 64, offset: 576)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3449, file: !3450, line: 121, baseType: !399, size: 64, offset: 640)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3449, file: !3450, line: 122, baseType: !399, size: 64, offset: 704)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3449, file: !3450, line: 123, baseType: !399, size: 64, offset: 768)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3449, file: !3450, line: 124, baseType: !399, size: 64, offset: 832)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3449, file: !3450, line: 125, baseType: !399, size: 64, offset: 896)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3449, file: !3450, line: 139, baseType: !399, size: 64, offset: 960)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3449, file: !3450, line: 142, baseType: !399, size: 64, offset: 1024)
!3469 = !DIDerivedType(tag: DW_TAG_member, scope: !3449, file: !3450, line: 144, baseType: !3470, size: 64, offset: 1088)
!3470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3449, file: !3450, line: 144, size: 64, elements: !3471)
!3471 = !{!3472, !3473, !3474}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3470, file: !3450, line: 146, baseType: !317, size: 16)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3470, file: !3450, line: 148, baseType: !211, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3470, file: !3450, line: 150, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3450, line: 59, size: 64, elements: !3476)
!3476 = !{!3477, !3478, !3479}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3475, file: !3450, line: 61, baseType: !211, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3475, file: !3450, line: 63, baseType: !211, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3475, file: !3450, line: 65, baseType: !211, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3449, file: !3450, line: 153, baseType: !399, size: 64, offset: 1152)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3449, file: !3450, line: 154, baseType: !399, size: 64, offset: 1216)
!3482 = !DIDerivedType(tag: DW_TAG_member, scope: !3449, file: !3450, line: 156, baseType: !3483, size: 64, offset: 1280)
!3483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3449, file: !3450, line: 156, size: 64, elements: !3484)
!3484 = !{!3485, !3486, !3487}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3483, file: !3450, line: 158, baseType: !317, size: 16)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3483, file: !3450, line: 160, baseType: !211, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3483, file: !3450, line: 162, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3450, line: 69, size: 64, elements: !3489)
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3488, file: !3450, line: 71, baseType: !211, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3488, file: !3450, line: 73, baseType: !211, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3488, file: !3450, line: 75, baseType: !211, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3488, file: !3450, line: 77, baseType: !211, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3488, file: !3450, line: 80, baseType: !211, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3488, file: !3450, line: 83, baseType: !211, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3488, file: !3450, line: 86, baseType: !211, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3488, file: !3450, line: 88, baseType: !211, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3488, file: !3450, line: 93, baseType: !211, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3488, file: !3450, line: 100, baseType: !211, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3425, file: !3354, line: 96, baseType: !220, size: 32, offset: 1024)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3372, file: !3354, line: 352, baseType: !3502, size: 4608, align: 512)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3354, line: 333, size: 4608, align: 512, elements: !3503)
!3503 = !{!3504, !3505, !3512}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3502, file: !3354, line: 334, baseType: !3388, size: 4096, align: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3502, file: !3354, line: 335, baseType: !3506, size: 512, offset: 4096)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3354, line: 312, size: 512, elements: !3507)
!3507 = !{!3508, !3509, !3510}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3506, file: !3354, line: 313, baseType: !211, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3506, file: !3354, line: 314, baseType: !211, size: 64, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3506, file: !3354, line: 315, baseType: !3511, size: 384, offset: 128)
!3511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 384, elements: !1918)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3502, file: !3354, line: 336, baseType: !3513, offset: 4608)
!3513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, elements: !1835)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3372, file: !3354, line: 353, baseType: !3515, size: 32768)
!3515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 32768, elements: !3516)
!3516 = !{!3517}
!3517 = !DISubrange(count: 4096)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3353, file: !3354, line: 484, baseType: !3359, size: 64, offset: 192)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3353, file: !3354, line: 491, baseType: !3520, size: 128, offset: 256)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3354, line: 404, size: 128, elements: !3521)
!3521 = !{!3522, !3523, !3524}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3520, file: !3354, line: 424, baseType: !211, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3520, file: !3354, line: 432, baseType: !34, size: 32, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3520, file: !3354, line: 440, baseType: !34, size: 32, offset: 96)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3353, file: !3354, line: 498, baseType: !3520, size: 128, offset: 384)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3353, file: !3354, line: 508, baseType: !3360, size: 33280, align: 512, offset: 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1428, file: !1429, line: 16, baseType: !1438, size: 192, offset: 512)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1428, file: !1429, line: 17, baseType: !304, size: 32, offset: 704)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !576, file: !41, line: 1240, baseType: !214, size: 64, offset: 6912)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !576, file: !41, line: 1243, baseType: !220, size: 32, offset: 6976)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !576, file: !41, line: 1245, baseType: !1185, size: 64, offset: 7040)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !576, file: !41, line: 1246, baseType: !1185, size: 64, offset: 7104)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !576, file: !41, line: 1248, baseType: !221, size: 32, offset: 7168)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !576, file: !41, line: 1249, baseType: !3535, size: 64, offset: 7232)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !41, line: 634, flags: DIFlagFwdDecl)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !576, file: !41, line: 1252, baseType: !3538, size: 256, offset: 7296)
!3538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !506)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !576, file: !41, line: 1253, baseType: !3540, size: 128, offset: 7552)
!3540 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3541, line: 21, baseType: !3542)
!3541 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3541, line: 19, size: 128, elements: !3543)
!3543 = !{!3544}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3542, file: !3541, line: 20, baseType: !3545, size: 128)
!3545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 128, elements: !2764)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !576, file: !41, line: 1255, baseType: !34, size: 32, offset: 7680)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !576, file: !41, line: 1261, baseType: !685, size: 256, offset: 7744)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !576, file: !41, line: 1267, baseType: !268, size: 64, offset: 8000)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !576, file: !41, line: 1269, baseType: !522, size: 64, offset: 8064)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !576, file: !41, line: 1271, baseType: !3551, size: 448, offset: 8128)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1194, line: 63, size: 448, elements: !3552)
!3552 = !{!3553, !3558, !3559, !3560, !3561, !3562, !3563}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3551, file: !1194, line: 64, baseType: !3554, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!399, !3557, !1192}
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3551, file: !1194, line: 66, baseType: !3554, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3551, file: !1194, line: 69, baseType: !385, size: 64, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3551, file: !1194, line: 70, baseType: !136, size: 32, offset: 192)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3551, file: !1194, line: 71, baseType: !34, size: 32, offset: 224)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3551, file: !1194, line: 74, baseType: !271, size: 128, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3551, file: !1194, line: 85, baseType: !3564, size: 64, offset: 384)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !576, file: !41, line: 1274, baseType: !689, size: 64, offset: 8576)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !576, file: !41, line: 1280, baseType: !689, size: 64, offset: 8640)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !576, file: !41, line: 1283, baseType: !136, size: 32, offset: 8704)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !576, file: !41, line: 1286, baseType: !2499, size: 32, offset: 8736)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !576, file: !41, line: 1289, baseType: !1005, size: 64, offset: 8768)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !576, file: !41, line: 1290, baseType: !1053, size: 64, offset: 8832)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !576, file: !41, line: 1297, baseType: !2012, size: 64, offset: 8896)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !576, file: !41, line: 1304, baseType: !3573, size: 64, offset: 8960)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3574, line: 49, size: 64, elements: !3575)
!3574 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3575 = !{!3576}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3573, file: !3574, line: 50, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3574, line: 41, size: 512, align: 512, elements: !3579)
!3579 = !{!3580, !3581, !3586}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3578, file: !3574, line: 43, baseType: !284, size: 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3578, file: !3574, line: 45, baseType: !3582, size: 192, offset: 64)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3574, line: 29, size: 192, elements: !3583)
!3583 = !{!3584, !3585}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3582, file: !3574, line: 30, baseType: !271, size: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3582, file: !3574, line: 32, baseType: !385, size: 64, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3578, file: !3574, line: 46, baseType: !385, size: 64, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !576, file: !41, line: 1305, baseType: !3573, size: 64, offset: 9024)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !576, file: !41, line: 1306, baseType: !903, size: 128, align: 64, offset: 9088)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !576, file: !41, line: 1307, baseType: !943, size: 256, offset: 9216)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !576, file: !41, line: 1309, baseType: !685, size: 256, offset: 9472)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !576, file: !41, line: 1314, baseType: !136, size: 32, offset: 9728)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !576, file: !41, line: 1317, baseType: !284, size: 32, align: 512, offset: 10240)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !576, file: !41, line: 1318, baseType: !271, size: 128, offset: 10304)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !576, file: !41, line: 1320, baseType: !284, size: 32, offset: 10432)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !576, file: !41, line: 1321, baseType: !271, size: 128, offset: 10496)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !570, file: !571, line: 73, baseType: !136, size: 32, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !570, file: !571, line: 74, baseType: !3598, size: 64, offset: 192)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1859, line: 42, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !524, file: !466, line: 141, baseType: !3602, size: 64, offset: 704)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!136, !1255, !248}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !524, file: !466, line: 142, baseType: !3606, size: 64, offset: 768)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!464, !464, !3609}
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !465, file: !466, line: 96, baseType: !575, size: 64, offset: 832)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !465, file: !466, line: 97, baseType: !399, size: 64, offset: 896)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !465, file: !466, line: 98, baseType: !214, size: 64, offset: 960)
!3614 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !466, line: 100, baseType: !3615, size: 128, offset: 1024)
!3615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !466, line: 100, size: 128, elements: !3616)
!3616 = !{!3617, !3618}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3615, file: !466, line: 101, baseType: !271, size: 128)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3615, file: !466, line: 102, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !465, file: !466, line: 104, baseType: !271, size: 128, offset: 1152)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !465, file: !466, line: 105, baseType: !271, size: 128, offset: 1280)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !465, file: !466, line: 113, baseType: !3623, size: 128, offset: 1408)
!3623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !466, line: 109, size: 128, elements: !3624)
!3624 = !{!3625, !3626, !3627}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3623, file: !466, line: 110, baseType: !929, size: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3623, file: !466, line: 111, baseType: !480, size: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3623, file: !466, line: 112, baseType: !903, size: 128, align: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !458, file: !41, line: 1968, baseType: !3629, size: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!268, !464, !429, !3632}
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3634, line: 10, size: 128, elements: !3635)
!3634 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3635 = !{!3636, !3637}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3633, file: !3634, line: 11, baseType: !728, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3633, file: !3634, line: 12, baseType: !214, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !458, file: !41, line: 1969, baseType: !3639, size: 64, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!136, !3598, !429, !136}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !458, file: !41, line: 1970, baseType: !3643, size: 64, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!452, !429, !136, !248}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !458, file: !41, line: 1972, baseType: !3647, size: 64, offset: 256)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!136, !464, !349, !136}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !458, file: !41, line: 1974, baseType: !3651, size: 64, offset: 320)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!136, !3598, !429, !464, !391, !248}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !458, file: !41, line: 1976, baseType: !3655, size: 64, offset: 384)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!136, !464, !429, !464}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !458, file: !41, line: 1977, baseType: !3659, size: 64, offset: 448)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!136, !429, !464}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !458, file: !41, line: 1978, baseType: !3663, size: 64, offset: 512)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!136, !3598, !429, !464, !268}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !458, file: !41, line: 1980, baseType: !3667, size: 64, offset: 576)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!136, !3598, !429, !464, !391}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !458, file: !41, line: 1982, baseType: !3659, size: 64, offset: 640)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !458, file: !41, line: 1983, baseType: !3672, size: 64, offset: 704)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!136, !3598, !429, !464, !391, !580}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !458, file: !41, line: 1985, baseType: !3676, size: 64, offset: 768)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!136, !3598, !429, !464, !429, !464, !34}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !458, file: !41, line: 1987, baseType: !3680, size: 64, offset: 832)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!136, !3598, !464, !3683}
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !41, line: 226, size: 640, elements: !3685)
!3685 = !{!3686, !3687, !3688, !3698, !3707, !3708, !3713, !3714, !3715}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3684, file: !41, line: 227, baseType: !34, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3684, file: !41, line: 228, baseType: !391, size: 16, offset: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, scope: !3684, file: !41, line: 241, baseType: !3689, size: 32, offset: 64)
!3689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3684, file: !41, line: 241, size: 32, elements: !3690)
!3690 = !{!3691, !3692}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3689, file: !41, line: 242, baseType: !435, size: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3689, file: !41, line: 243, baseType: !3693, size: 32)
!3693 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3694, line: 16, baseType: !3695)
!3694 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3694, line: 14, size: 32, elements: !3696)
!3696 = !{!3697}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3695, file: !3694, line: 15, baseType: !440, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, scope: !3684, file: !41, line: 245, baseType: !3699, size: 32, offset: 96)
!3699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3684, file: !41, line: 245, size: 32, elements: !3700)
!3700 = !{!3701, !3702}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3699, file: !41, line: 246, baseType: !444, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3699, file: !41, line: 247, baseType: !3703, size: 32)
!3703 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3694, line: 20, baseType: !3704)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3694, line: 18, size: 32, elements: !3705)
!3705 = !{!3706}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3704, file: !3694, line: 19, baseType: !448, size: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3684, file: !41, line: 249, baseType: !585, size: 64, offset: 128)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3684, file: !41, line: 250, baseType: !3709, size: 128, offset: 192)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1186, line: 13, size: 128, elements: !3710)
!3710 = !{!3711, !3712}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3709, file: !1186, line: 14, baseType: !1185, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3709, file: !1186, line: 15, baseType: !385, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3684, file: !41, line: 251, baseType: !3709, size: 128, offset: 320)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3684, file: !41, line: 252, baseType: !3709, size: 128, offset: 448)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3684, file: !41, line: 259, baseType: !1775, size: 64, offset: 576)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !458, file: !41, line: 1988, baseType: !3717, size: 64, offset: 896)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!136, !3598, !1255, !3720, !220, !34}
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3722, line: 22, size: 1280, elements: !3723)
!3722 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3723 = !{!3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3721, file: !3722, line: 23, baseType: !220, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3721, file: !3722, line: 24, baseType: !391, size: 16, offset: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3721, file: !3722, line: 25, baseType: !34, size: 32, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3721, file: !3722, line: 26, baseType: !1897, size: 32, offset: 96)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3721, file: !3722, line: 27, baseType: !211, size: 64, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3721, file: !3722, line: 28, baseType: !211, size: 64, offset: 192)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3721, file: !3722, line: 41, baseType: !211, size: 64, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3721, file: !3722, line: 42, baseType: !580, size: 32, offset: 320)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3721, file: !3722, line: 43, baseType: !580, size: 32, offset: 352)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3721, file: !3722, line: 44, baseType: !435, size: 32, offset: 384)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3721, file: !3722, line: 45, baseType: !444, size: 32, offset: 416)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3721, file: !3722, line: 46, baseType: !585, size: 64, offset: 448)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3721, file: !3722, line: 47, baseType: !3709, size: 128, offset: 512)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3721, file: !3722, line: 48, baseType: !3709, size: 128, offset: 640)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3721, file: !3722, line: 49, baseType: !3709, size: 128, offset: 768)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3721, file: !3722, line: 50, baseType: !3709, size: 128, offset: 896)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3721, file: !3722, line: 51, baseType: !211, size: 64, offset: 1024)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3721, file: !3722, line: 52, baseType: !211, size: 64, offset: 1088)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3721, file: !3722, line: 53, baseType: !220, size: 32, offset: 1152)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3721, file: !3722, line: 54, baseType: !220, size: 32, offset: 1184)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3721, file: !3722, line: 55, baseType: !211, size: 64, offset: 1216)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !458, file: !41, line: 1990, baseType: !3746, size: 64, offset: 960)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!381, !464, !349, !396}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !458, file: !41, line: 1991, baseType: !3750, size: 64, offset: 1024)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!136, !429, !3753, !211, !211}
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !41, line: 55, flags: DIFlagFwdDecl)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !458, file: !41, line: 1993, baseType: !3756, size: 64, offset: 1088)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!136, !429, !136}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !458, file: !41, line: 1994, baseType: !3760, size: 64, offset: 1152)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!136, !429, !464, !1775, !34, !391}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !458, file: !41, line: 1997, baseType: !3764, size: 64, offset: 1216)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!136, !3598, !429, !1775, !391}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !458, file: !41, line: 1999, baseType: !3768, size: 64, offset: 1280)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!452, !3598, !464, !136}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !458, file: !41, line: 2001, baseType: !3772, size: 64, offset: 1344)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!136, !3598, !464, !452, !136}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !458, file: !41, line: 2003, baseType: !3776, size: 64, offset: 1408)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!136, !3598, !464, !3779}
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !41, line: 76, flags: DIFlagFwdDecl)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !458, file: !41, line: 2005, baseType: !3782, size: 64, offset: 1472)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!136, !464, !3779}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !458, file: !41, line: 2006, baseType: !3786, size: 64, offset: 1536)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!3789, !429}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !41, line: 3192, size: 192, elements: !3791)
!3791 = !{!3792, !3799}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3790, file: !41, line: 3193, baseType: !3793, size: 128)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3794, line: 296, size: 128, elements: !3795)
!3794 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3795 = !{!3796, !3797, !3798}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3793, file: !3794, line: 297, baseType: !284, size: 32)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3793, file: !3794, line: 299, baseType: !1197, size: 32, offset: 32)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3793, file: !3794, line: 300, baseType: !214, size: 64, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3790, file: !41, line: 3194, baseType: !220, size: 32, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !430, file: !41, line: 655, baseType: !575, size: 64, offset: 448)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !430, file: !41, line: 656, baseType: !425, size: 64, offset: 512)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !430, file: !41, line: 659, baseType: !214, size: 64, offset: 576)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !430, file: !41, line: 663, baseType: !399, size: 64, offset: 640)
!3804 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !41, line: 671, baseType: !3805, size: 32, offset: 704)
!3805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !41, line: 671, size: 32, elements: !3806)
!3806 = !{!3807, !3809}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3805, file: !41, line: 672, baseType: !3808, size: 32)
!3808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3805, file: !41, line: 673, baseType: !34, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !430, file: !41, line: 675, baseType: !580, size: 32, offset: 736)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !430, file: !41, line: 676, baseType: !585, size: 64, offset: 768)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !430, file: !41, line: 677, baseType: !3709, size: 128, offset: 832)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !430, file: !41, line: 678, baseType: !3709, size: 128, offset: 960)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !430, file: !41, line: 679, baseType: !3709, size: 128, offset: 1088)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !430, file: !41, line: 680, baseType: !284, size: 32, offset: 1216)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !430, file: !41, line: 681, baseType: !319, size: 16, offset: 1248)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !430, file: !41, line: 682, baseType: !204, size: 8, offset: 1264)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !430, file: !41, line: 683, baseType: !204, size: 8, offset: 1272)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !430, file: !41, line: 684, baseType: !1333, size: 64, offset: 1280)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !430, file: !41, line: 691, baseType: !399, size: 64, offset: 1344)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !430, file: !41, line: 692, baseType: !1345, size: 320, offset: 1408)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !430, file: !41, line: 694, baseType: !399, size: 64, offset: 1728)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !430, file: !41, line: 695, baseType: !399, size: 64, offset: 1792)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !430, file: !41, line: 697, baseType: !929, size: 128, offset: 1856)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !430, file: !41, line: 698, baseType: !271, size: 128, offset: 1984)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !430, file: !41, line: 707, baseType: !271, size: 128, offset: 2112)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !430, file: !41, line: 708, baseType: !271, size: 128, offset: 2240)
!3828 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !41, line: 709, baseType: !3829, size: 128, offset: 2368)
!3829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !41, line: 709, size: 128, elements: !3830)
!3830 = !{!3831, !3832}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3829, file: !41, line: 710, baseType: !1053, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3829, file: !41, line: 711, baseType: !903, size: 128, align: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !430, file: !41, line: 713, baseType: !691, size: 64, offset: 2496)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !430, file: !41, line: 714, baseType: !691, size: 64, offset: 2560)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !430, file: !41, line: 715, baseType: !304, size: 32, offset: 2624)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !430, file: !41, line: 716, baseType: !304, size: 32, offset: 2656)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !430, file: !41, line: 717, baseType: !304, size: 32, offset: 2688)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !430, file: !41, line: 719, baseType: !304, size: 32, offset: 2720)
!3839 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !41, line: 721, baseType: !3840, size: 64, offset: 2752)
!3840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !41, line: 721, size: 64, elements: !3841)
!3841 = !{!3842, !3843}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3840, file: !41, line: 722, baseType: !2043, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3840, file: !41, line: 723, baseType: !1076, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !430, file: !41, line: 725, baseType: !3845, size: 64, offset: 2816)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !41, line: 725, flags: DIFlagFwdDecl)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !430, file: !41, line: 726, baseType: !426, size: 1536, align: 64, offset: 2880)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !430, file: !41, line: 727, baseType: !271, size: 128, offset: 4416)
!3849 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !41, line: 728, baseType: !3850, size: 64, offset: 4544)
!3850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !41, line: 728, size: 64, elements: !3851)
!3851 = !{!3852, !3853, !3856, !3857}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3850, file: !41, line: 729, baseType: !2449, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3850, file: !41, line: 730, baseType: !3854, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !41, line: 730, flags: DIFlagFwdDecl)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3850, file: !41, line: 731, baseType: !349, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3850, file: !41, line: 732, baseType: !34, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !430, file: !41, line: 735, baseType: !221, size: 32, offset: 4608)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !430, file: !41, line: 738, baseType: !221, size: 32, offset: 4640)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !430, file: !41, line: 739, baseType: !3535, size: 64, offset: 4672)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !430, file: !41, line: 750, baseType: !214, size: 64, offset: 4736)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !426, file: !41, line: 474, baseType: !3793, size: 128, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !426, file: !41, line: 475, baseType: !1345, size: 320, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !426, file: !41, line: 476, baseType: !1197, size: 32, offset: 512)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !426, file: !41, line: 477, baseType: !304, size: 32, offset: 544)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !426, file: !41, line: 482, baseType: !1631, size: 128, offset: 576)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !426, file: !41, line: 483, baseType: !399, size: 64, offset: 704)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !426, file: !41, line: 484, baseType: !399, size: 64, offset: 768)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !426, file: !41, line: 485, baseType: !3870, size: 64, offset: 832)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3872)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !41, line: 404, size: 1280, elements: !3873)
!3873 = !{!3874, !3878, !3948, !3952, !3956, !3962, !3966, !3970, !3975, !3979, !3983, !3987, !3988, !3992, !3996, !4000, !4005, !4009, !4016, !4017}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3872, file: !41, line: 405, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!136, !2236, !1088}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3872, file: !41, line: 406, baseType: !3879, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!136, !1775, !3882}
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !65, line: 293, size: 1536, elements: !3884)
!3884 = !{!3885, !3915, !3929}
!3885 = !DIDerivedType(tag: DW_TAG_member, scope: !3883, file: !65, line: 295, baseType: !3886, size: 512)
!3886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3883, file: !65, line: 295, size: 512, elements: !3887)
!3887 = !{!3888, !3914}
!3888 = !DIDerivedType(tag: DW_TAG_member, scope: !3886, file: !65, line: 296, baseType: !3889, size: 448)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3886, file: !65, line: 296, size: 448, elements: !3890)
!3890 = !{!3891, !3892, !3901, !3902, !3903, !3912, !3913}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3889, file: !65, line: 298, baseType: !399, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, scope: !3889, file: !65, line: 299, baseType: !3893, size: 128, offset: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3889, file: !65, line: 299, size: 128, elements: !3894)
!3894 = !{!3895, !3896}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3893, file: !65, line: 300, baseType: !271, size: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, scope: !3893, file: !65, line: 302, baseType: !3897, size: 128)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3893, file: !65, line: 302, size: 128, elements: !3898)
!3898 = !{!3899, !3900}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3897, file: !65, line: 303, baseType: !214, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3897, file: !65, line: 305, baseType: !34, size: 32, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3889, file: !65, line: 310, baseType: !425, size: 64, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3889, file: !65, line: 311, baseType: !399, size: 64, offset: 256)
!3903 = !DIDerivedType(tag: DW_TAG_member, scope: !3889, file: !65, line: 312, baseType: !3904, size: 64, offset: 320)
!3904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3889, file: !65, line: 312, size: 64, elements: !3905)
!3905 = !{!3906, !3907}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3904, file: !65, line: 313, baseType: !214, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3904, file: !65, line: 314, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !65, line: 257, baseType: !3909)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 255, size: 64, elements: !3910)
!3910 = !{!3911}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3909, file: !65, line: 256, baseType: !399, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3889, file: !65, line: 316, baseType: !304, size: 32, offset: 384)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3889, file: !65, line: 317, baseType: !304, size: 32, offset: 416)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3886, file: !65, line: 323, baseType: !2237, size: 512, align: 128)
!3915 = !DIDerivedType(tag: DW_TAG_member, scope: !3883, file: !65, line: 325, baseType: !3916, size: 512, offset: 512)
!3916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3883, file: !65, line: 325, size: 512, elements: !3917)
!3917 = !{!3918, !3928}
!3918 = !DIDerivedType(tag: DW_TAG_member, scope: !3916, file: !65, line: 326, baseType: !3919, size: 320)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3916, file: !65, line: 326, size: 320, elements: !3920)
!3920 = !{!3921, !3922, !3923, !3924, !3925, !3926, !3927}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3919, file: !65, line: 327, baseType: !399, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3919, file: !65, line: 328, baseType: !399, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3919, file: !65, line: 329, baseType: !399, size: 64, offset: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3919, file: !65, line: 331, baseType: !304, size: 32, offset: 192)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3919, file: !65, line: 332, baseType: !304, size: 32, offset: 224)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3919, file: !65, line: 333, baseType: !304, size: 32, offset: 256)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3919, file: !65, line: 335, baseType: !34, size: 32, offset: 288)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3916, file: !65, line: 339, baseType: !2237, size: 512, align: 128)
!3929 = !DIDerivedType(tag: DW_TAG_member, scope: !3883, file: !65, line: 341, baseType: !3930, size: 512, offset: 1024)
!3930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3883, file: !65, line: 341, size: 512, elements: !3931)
!3931 = !{!3932, !3941, !3947}
!3932 = !DIDerivedType(tag: DW_TAG_member, scope: !3930, file: !65, line: 342, baseType: !3933, size: 384)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3930, file: !65, line: 342, size: 384, elements: !3934)
!3934 = !{!3935, !3936, !3937, !3938, !3939, !3940}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3933, file: !65, line: 343, baseType: !399, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3933, file: !65, line: 344, baseType: !399, size: 64, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3933, file: !65, line: 346, baseType: !214, size: 64, offset: 128)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3933, file: !65, line: 347, baseType: !214, size: 64, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3933, file: !65, line: 348, baseType: !214, size: 64, offset: 256)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3933, file: !65, line: 349, baseType: !214, size: 64, offset: 320)
!3941 = !DIDerivedType(tag: DW_TAG_member, scope: !3930, file: !65, line: 352, baseType: !3942, size: 256)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3930, file: !65, line: 352, size: 256, elements: !3943)
!3943 = !{!3944, !3945, !3946}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3942, file: !65, line: 353, baseType: !399, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3942, file: !65, line: 354, baseType: !399, size: 64, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3942, file: !65, line: 356, baseType: !271, size: 128, offset: 128)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3930, file: !65, line: 359, baseType: !2237, size: 512, align: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3872, file: !41, line: 409, baseType: !3949, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!136, !425, !1088}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3872, file: !41, line: 412, baseType: !3953, size: 64, offset: 192)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!248, !425, !3882}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3872, file: !41, line: 414, baseType: !3957, size: 64, offset: 256)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{null, !3960}
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !41, line: 310, flags: DIFlagFwdDecl)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3872, file: !41, line: 416, baseType: !3963, size: 64, offset: 320)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!136, !1775, !425, !585, !34, !3286, !2464}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3872, file: !41, line: 419, baseType: !3967, size: 64, offset: 384)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!136, !1775, !425, !585, !34, !34, !2236, !214}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3872, file: !41, line: 424, baseType: !3971, size: 64, offset: 448)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!3974, !425, !3974}
!3974 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !249, line: 131, baseType: !211)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3872, file: !41, line: 425, baseType: !3976, size: 64, offset: 512)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{null, !3882, !396, !396}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3872, file: !41, line: 426, baseType: !3980, size: 64, offset: 576)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!248, !3882, !1197}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3872, file: !41, line: 427, baseType: !3984, size: 64, offset: 640)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{null, !3882}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3872, file: !41, line: 428, baseType: !2062, size: 64, offset: 704)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3872, file: !41, line: 433, baseType: !3989, size: 64, offset: 768)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!136, !425, !3882, !3882, !101}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3872, file: !41, line: 435, baseType: !3993, size: 64, offset: 832)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!136, !3882}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3872, file: !41, line: 436, baseType: !3997, size: 64, offset: 896)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!248, !3882, !396, !396}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3872, file: !41, line: 438, baseType: !4001, size: 64, offset: 960)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{null, !3882, !4004, !4004}
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3872, file: !41, line: 439, baseType: !4006, size: 64, offset: 1024)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!136, !425, !2236}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3872, file: !41, line: 442, baseType: !4010, size: 64, offset: 1088)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!136, !4013, !1775, !4015}
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !41, line: 66, flags: DIFlagFwdDecl)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3872, file: !41, line: 444, baseType: !2456, size: 64, offset: 1152)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3872, file: !41, line: 445, baseType: !4018, size: 64, offset: 1216)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!136, !2065, !2087}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !41, line: 486, baseType: !399, size: 64, offset: 896)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !426, file: !41, line: 487, baseType: !1345, size: 320, offset: 960)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !426, file: !41, line: 488, baseType: !2499, size: 32, offset: 1280)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !426, file: !41, line: 489, baseType: !284, size: 32, offset: 1312)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !426, file: !41, line: 490, baseType: !271, size: 128, offset: 1344)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !426, file: !41, line: 491, baseType: !214, size: 64, offset: 1472)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !416, file: !375, line: 180, baseType: !4028, size: 64, offset: 320)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!381, !1775, !277, !415, !349, !585, !396}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !416, file: !375, line: 182, baseType: !4028, size: 64, offset: 384)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !416, file: !375, line: 184, baseType: !4033, size: 64, offset: 448)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!136, !1775, !277, !415, !2127}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !404, file: !375, line: 90, baseType: !4037, size: 64, offset: 192)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !404, file: !375, line: 91, baseType: !4039, size: 64, offset: 256)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !365, file: !265, line: 120, baseType: !4041, size: 64, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!4044, !332}
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4046)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !109, line: 39, size: 384, elements: !4047)
!4047 = !{!4048, !4049, !4053, !4057, !4063, !4067}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4046, file: !109, line: 40, baseType: !108, size: 32)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4046, file: !109, line: 41, baseType: !4050, size: 64, offset: 64)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!248}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4046, file: !109, line: 42, baseType: !4054, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!214}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4046, file: !109, line: 43, baseType: !4058, size: 64, offset: 192)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!257, !4061}
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !109, line: 19, flags: DIFlagFwdDecl)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4046, file: !109, line: 44, baseType: !4064, size: 64, offset: 256)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!257}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4046, file: !109, line: 45, baseType: !728, size: 64, offset: 320)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !365, file: !265, line: 121, baseType: !4069, size: 64, offset: 256)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!257, !332}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !365, file: !265, line: 122, baseType: !4073, size: 64, offset: 320)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{null, !332, !4076, !4077}
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !264, file: !265, line: 70, baseType: !4079, size: 64, offset: 384)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !600, line: 190, size: 1152, elements: !4081)
!4081 = !{!4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4173, !4174, !4175, !4176, !4177, !4180}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4080, file: !600, line: 191, baseType: !304, size: 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4080, file: !600, line: 192, baseType: !304, size: 32, offset: 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4080, file: !600, line: 202, baseType: !4079, size: 64, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4080, file: !600, line: 203, baseType: !268, size: 64, offset: 128)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4080, file: !600, line: 205, baseType: !795, size: 192, align: 64, offset: 192)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4080, file: !600, line: 207, baseType: !257, size: 64, offset: 384)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4080, file: !600, line: 208, baseType: !34, size: 32, offset: 448)
!4089 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !600, line: 209, baseType: !4090, size: 256, offset: 512)
!4090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4080, file: !600, line: 209, size: 256, elements: !4091)
!4091 = !{!4092, !4101, !4105}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4090, file: !600, line: 210, baseType: !4093, size: 256)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !600, line: 153, size: 256, elements: !4094)
!4094 = !{!4095, !4096, !4097, !4100}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4093, file: !600, line: 154, baseType: !399, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4093, file: !600, line: 156, baseType: !1634, size: 64, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4093, file: !600, line: 162, baseType: !4098, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !600, line: 162, flags: DIFlagFwdDecl)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4093, file: !600, line: 167, baseType: !399, size: 64, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4090, file: !600, line: 211, baseType: !4102, size: 64)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !600, line: 170, size: 64, elements: !4103)
!4103 = !{!4104}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4102, file: !600, line: 171, baseType: !4079, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4090, file: !600, line: 212, baseType: !4106, size: 256)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !600, line: 174, size: 256, elements: !4107)
!4107 = !{!4108, !4168, !4171, !4172}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4106, file: !600, line: 175, baseType: !4109, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4111)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !600, line: 271, size: 768, elements: !4112)
!4112 = !{!4113, !4133, !4137, !4141, !4145, !4149, !4153, !4157, !4158, !4159, !4160, !4164}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4111, file: !600, line: 276, baseType: !4114, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!136, !4117}
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !600, line: 251, size: 1216, elements: !4119)
!4119 = !{!4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4118, file: !600, line: 253, baseType: !4079, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4118, file: !600, line: 254, baseType: !1775, size: 64, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4118, file: !600, line: 255, baseType: !1125, size: 64, offset: 128)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4118, file: !600, line: 256, baseType: !214, size: 64, offset: 192)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4118, file: !600, line: 259, baseType: !685, size: 256, offset: 256)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4118, file: !600, line: 260, baseType: !685, size: 256, offset: 512)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4118, file: !600, line: 261, baseType: !136, size: 32, offset: 768)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4118, file: !600, line: 262, baseType: !271, size: 128, offset: 832)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4118, file: !600, line: 263, baseType: !349, size: 64, offset: 960)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4118, file: !600, line: 265, baseType: !396, size: 64, offset: 1024)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4118, file: !600, line: 266, baseType: !248, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4118, file: !600, line: 267, baseType: !248, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4118, file: !600, line: 268, baseType: !2172, size: 64, offset: 1152)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4111, file: !600, line: 277, baseType: !4134, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{null, !4117}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4111, file: !600, line: 290, baseType: !4138, size: 64, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!136, !1125, !214}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4111, file: !600, line: 292, baseType: !4142, size: 64, offset: 192)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!214, !1125, !2056}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4111, file: !600, line: 293, baseType: !4146, size: 64, offset: 256)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!214, !1125, !214, !2056}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4111, file: !600, line: 294, baseType: !4150, size: 64, offset: 320)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{null, !1125, !214}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4111, file: !600, line: 296, baseType: !4154, size: 64, offset: 384)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!381, !4117, !349, !396, !585}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4111, file: !600, line: 306, baseType: !396, size: 64, offset: 448)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4111, file: !600, line: 313, baseType: !248, size: 8, offset: 512)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4111, file: !600, line: 314, baseType: !4154, size: 64, offset: 576)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4111, file: !600, line: 317, baseType: !4161, size: 64, offset: 640)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!2114, !4117, !2116}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4111, file: !600, line: 320, baseType: !4165, size: 64, offset: 704)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!136, !4117, !2127}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4106, file: !600, line: 176, baseType: !4169, size: 64, offset: 64)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !600, line: 35, flags: DIFlagFwdDecl)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4106, file: !600, line: 177, baseType: !585, size: 64, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4106, file: !600, line: 178, baseType: !4079, size: 64, offset: 192)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4080, file: !600, line: 215, baseType: !214, size: 64, offset: 768)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4080, file: !600, line: 221, baseType: !211, size: 64, offset: 832)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4080, file: !600, line: 223, baseType: !319, size: 16, offset: 896)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4080, file: !600, line: 224, baseType: !391, size: 16, offset: 912)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4080, file: !600, line: 225, baseType: !4178, size: 64, offset: 960)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !600, line: 36, flags: DIFlagFwdDecl)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4080, file: !600, line: 227, baseType: !903, size: 128, align: 64, offset: 1024)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !264, file: !265, line: 71, baseType: !4182, size: 32, offset: 448)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4183, line: 19, size: 32, elements: !4184)
!4183 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4184 = !{!4185}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4182, file: !4183, line: 20, baseType: !1465, size: 32)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !264, file: !265, line: 73, baseType: !34, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !264, file: !265, line: 74, baseType: !34, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !264, file: !265, line: 75, baseType: !34, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !264, file: !265, line: 76, baseType: !34, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !264, file: !265, line: 77, baseType: !34, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !261, file: !121, line: 707, baseType: !4192, size: 64, offset: 512)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !261, file: !121, line: 709, baseType: !4194, size: 64, offset: 576)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !121, line: 37, flags: DIFlagFwdDecl)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !261, file: !121, line: 711, baseType: !268, size: 64, offset: 640)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !261, file: !121, line: 712, baseType: !4198, size: 64, offset: 704)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4200)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !121, line: 89, size: 384, elements: !4201)
!4201 = !{!4202, !4203, !4204, !4208, !4213, !4217}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4200, file: !121, line: 90, baseType: !268, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4200, file: !121, line: 91, baseType: !401, size: 64, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4200, file: !121, line: 92, baseType: !4205, size: 64, offset: 128)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!136, !259, !344}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4200, file: !121, line: 93, baseType: !4209, size: 64, offset: 192)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!349, !259, !4212, !4076, !4077}
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4200, file: !121, line: 95, baseType: !4214, size: 64, offset: 256)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !4192}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4200, file: !121, line: 97, baseType: !4218, size: 64, offset: 320)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4220)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !128, line: 286, size: 1472, elements: !4221)
!4221 = !{!4222, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4220, file: !128, line: 287, baseType: !4223, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!136, !4192}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4220, file: !128, line: 288, baseType: !4214, size: 64, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4220, file: !128, line: 289, baseType: !4223, size: 64, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4220, file: !128, line: 290, baseType: !4223, size: 64, offset: 192)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4220, file: !128, line: 291, baseType: !4223, size: 64, offset: 256)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4220, file: !128, line: 292, baseType: !4223, size: 64, offset: 320)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4220, file: !128, line: 293, baseType: !4223, size: 64, offset: 384)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4220, file: !128, line: 294, baseType: !4223, size: 64, offset: 448)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4220, file: !128, line: 295, baseType: !4223, size: 64, offset: 512)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4220, file: !128, line: 296, baseType: !4223, size: 64, offset: 576)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4220, file: !128, line: 297, baseType: !4223, size: 64, offset: 640)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4220, file: !128, line: 298, baseType: !4223, size: 64, offset: 704)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4220, file: !128, line: 299, baseType: !4223, size: 64, offset: 768)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4220, file: !128, line: 300, baseType: !4223, size: 64, offset: 832)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4220, file: !128, line: 301, baseType: !4223, size: 64, offset: 896)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4220, file: !128, line: 302, baseType: !4223, size: 64, offset: 960)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4220, file: !128, line: 303, baseType: !4223, size: 64, offset: 1024)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4220, file: !128, line: 304, baseType: !4223, size: 64, offset: 1088)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4220, file: !128, line: 305, baseType: !4223, size: 64, offset: 1152)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4220, file: !128, line: 306, baseType: !4223, size: 64, offset: 1216)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4220, file: !128, line: 307, baseType: !4223, size: 64, offset: 1280)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4220, file: !128, line: 308, baseType: !4223, size: 64, offset: 1344)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4220, file: !128, line: 309, baseType: !4223, size: 64, offset: 1408)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !261, file: !121, line: 714, baseType: !4249, size: 64, offset: 768)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4251)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4252, line: 80, size: 1344, elements: !4253)
!4252 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4253 = !{!4254, !4255, !4256, !4257, !4258, !4259, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4332}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4251, file: !4252, line: 81, baseType: !268, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4251, file: !4252, line: 82, baseType: !268, size: 64, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4251, file: !4252, line: 83, baseType: !401, size: 64, offset: 128)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4251, file: !4252, line: 84, baseType: !401, size: 64, offset: 192)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4251, file: !4252, line: 85, baseType: !401, size: 64, offset: 256)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4251, file: !4252, line: 87, baseType: !4260, size: 64, offset: 320)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!136, !4192, !4263}
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !115, line: 96, size: 1152, elements: !4265)
!4265 = !{!4266, !4267, !4268, !4269, !4270, !4271, !4272, !4285, !4295, !4296, !4297, !4298, !4299, !4307, !4308, !4309, !4310, !4311, !4312}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4264, file: !115, line: 97, baseType: !268, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4264, file: !115, line: 98, baseType: !4249, size: 64, offset: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4264, file: !115, line: 100, baseType: !614, size: 64, offset: 128)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4264, file: !115, line: 101, baseType: !268, size: 64, offset: 192)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4264, file: !115, line: 103, baseType: !248, size: 8, offset: 256)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4264, file: !115, line: 104, baseType: !114, size: 32, offset: 288)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4264, file: !115, line: 106, baseType: !4273, size: 64, offset: 320)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4275)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4276, line: 282, size: 1600, elements: !4277)
!4276 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4277 = !{!4278, !4279, !4280, !4284}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4275, file: !4276, line: 283, baseType: !3538, size: 256)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4275, file: !4276, line: 284, baseType: !3538, size: 256, offset: 256)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4275, file: !4276, line: 285, baseType: !4281, size: 1024, offset: 512)
!4281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4282)
!4282 = !{!4283}
!4283 = !DISubrange(count: 128)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4275, file: !4276, line: 286, baseType: !257, size: 64, offset: 1536)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4264, file: !115, line: 107, baseType: !4286, size: 64, offset: 384)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4288)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4276, line: 217, size: 256, elements: !4289)
!4289 = !{!4290, !4291, !4293, !4294}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4288, file: !4276, line: 218, baseType: !3545, size: 128)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4288, file: !4276, line: 219, baseType: !4292, size: 64, offset: 128)
!4292 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4276, line: 15, baseType: !399)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4288, file: !4276, line: 220, baseType: !221, size: 32, offset: 192)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4288, file: !4276, line: 221, baseType: !221, size: 32, offset: 224)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4264, file: !115, line: 109, baseType: !4223, size: 64, offset: 448)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4264, file: !115, line: 110, baseType: !4214, size: 64, offset: 512)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4264, file: !115, line: 111, baseType: !4223, size: 64, offset: 576)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4264, file: !115, line: 112, baseType: !4214, size: 64, offset: 640)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4264, file: !115, line: 113, baseType: !4300, size: 64, offset: 704)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!136, !4192, !4303}
!4303 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !128, line: 60, baseType: !4304)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !128, line: 58, size: 32, elements: !4305)
!4305 = !{!4306}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4304, file: !128, line: 59, baseType: !136, size: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4264, file: !115, line: 114, baseType: !4223, size: 64, offset: 768)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4264, file: !115, line: 115, baseType: !401, size: 64, offset: 832)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4264, file: !115, line: 116, baseType: !401, size: 64, offset: 896)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4264, file: !115, line: 118, baseType: !4218, size: 64, offset: 960)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4264, file: !115, line: 119, baseType: !4214, size: 64, offset: 1024)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4264, file: !115, line: 121, baseType: !4313, size: 64, offset: 1088)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !115, line: 121, flags: DIFlagFwdDecl)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4251, file: !4252, line: 88, baseType: !4205, size: 64, offset: 384)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4251, file: !4252, line: 89, baseType: !4223, size: 64, offset: 448)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4251, file: !4252, line: 90, baseType: !4214, size: 64, offset: 512)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4251, file: !4252, line: 91, baseType: !4214, size: 64, offset: 576)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4251, file: !4252, line: 92, baseType: !4214, size: 64, offset: 640)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4251, file: !4252, line: 94, baseType: !4223, size: 64, offset: 704)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4251, file: !4252, line: 95, baseType: !4223, size: 64, offset: 768)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4251, file: !4252, line: 97, baseType: !4300, size: 64, offset: 832)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4251, file: !4252, line: 98, baseType: !4223, size: 64, offset: 896)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4251, file: !4252, line: 100, baseType: !4223, size: 64, offset: 960)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4251, file: !4252, line: 102, baseType: !4223, size: 64, offset: 1024)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4251, file: !4252, line: 103, baseType: !4214, size: 64, offset: 1088)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4251, file: !4252, line: 105, baseType: !4218, size: 64, offset: 1152)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4251, file: !4252, line: 107, baseType: !4329, size: 64, offset: 1216)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4331)
!4331 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4252, line: 107, flags: DIFlagFwdDecl)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4251, file: !4252, line: 109, baseType: !248, size: 8, offset: 1280)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !261, file: !121, line: 715, baseType: !4263, size: 64, offset: 832)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !261, file: !121, line: 717, baseType: !214, size: 64, offset: 896)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !261, file: !121, line: 719, baseType: !214, size: 64, offset: 960)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !261, file: !121, line: 721, baseType: !685, size: 256, offset: 1024)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !261, file: !121, line: 725, baseType: !4338, size: 448, offset: 1280)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !121, line: 517, size: 448, elements: !4339)
!4339 = !{!4340, !4341, !4342, !4343}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4338, file: !121, line: 518, baseType: !271, size: 128)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4338, file: !121, line: 519, baseType: !271, size: 128, offset: 128)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4338, file: !121, line: 520, baseType: !271, size: 128, offset: 256)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4338, file: !121, line: 521, baseType: !120, size: 32, offset: 384)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !261, file: !121, line: 726, baseType: !4345, size: 2496, offset: 1728)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !128, line: 663, size: 2496, elements: !4346)
!4346 = !{!4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4429, !4433}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4345, file: !128, line: 664, baseType: !4303, size: 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4345, file: !128, line: 665, baseType: !34, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4345, file: !128, line: 666, baseType: !34, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4345, file: !128, line: 667, baseType: !248, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4345, file: !128, line: 668, baseType: !248, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4345, file: !128, line: 669, baseType: !248, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4345, file: !128, line: 670, baseType: !248, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4345, file: !128, line: 671, baseType: !248, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4345, file: !128, line: 672, baseType: !248, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4345, file: !128, line: 673, baseType: !248, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4345, file: !128, line: 674, baseType: !248, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4345, file: !128, line: 675, baseType: !220, size: 32, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4345, file: !128, line: 676, baseType: !284, size: 32, offset: 96)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4345, file: !128, line: 678, baseType: !271, size: 128, offset: 128)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4345, file: !128, line: 679, baseType: !634, size: 256, offset: 256)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4345, file: !128, line: 680, baseType: !4363, size: 64, offset: 512)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4365, line: 43, size: 1536, elements: !4366)
!4365 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4366 = !{!4367, !4368, !4369, !4370, !4371, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4364, file: !4365, line: 44, baseType: !268, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4364, file: !4365, line: 45, baseType: !136, size: 32, offset: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4364, file: !4365, line: 46, baseType: !271, size: 128, offset: 128)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4364, file: !4365, line: 47, baseType: !284, size: 32, offset: 256)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4364, file: !4365, line: 48, baseType: !4372, size: 64, offset: 320)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !128, line: 629, flags: DIFlagFwdDecl)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4364, file: !4365, line: 49, baseType: !925, size: 320, offset: 384)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4364, file: !4365, line: 50, baseType: !399, size: 64, offset: 704)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4364, file: !4365, line: 51, baseType: !1580, size: 64, offset: 768)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4364, file: !4365, line: 52, baseType: !1580, size: 64, offset: 832)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4364, file: !4365, line: 53, baseType: !1580, size: 64, offset: 896)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4364, file: !4365, line: 54, baseType: !1580, size: 64, offset: 960)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4364, file: !4365, line: 55, baseType: !1580, size: 64, offset: 1024)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4364, file: !4365, line: 56, baseType: !399, size: 64, offset: 1088)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4364, file: !4365, line: 57, baseType: !399, size: 64, offset: 1152)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4364, file: !4365, line: 58, baseType: !399, size: 64, offset: 1216)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4364, file: !4365, line: 59, baseType: !399, size: 64, offset: 1280)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4364, file: !4365, line: 60, baseType: !399, size: 64, offset: 1344)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4364, file: !4365, line: 61, baseType: !4192, size: 64, offset: 1408)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4364, file: !4365, line: 62, baseType: !248, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4364, file: !4365, line: 63, baseType: !248, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4345, file: !128, line: 681, baseType: !248, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4345, file: !128, line: 682, baseType: !248, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4345, file: !128, line: 683, baseType: !248, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4345, file: !128, line: 684, baseType: !34, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4345, file: !128, line: 685, baseType: !34, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4345, file: !128, line: 690, baseType: !1572, size: 512, offset: 640)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4345, file: !128, line: 691, baseType: !211, size: 64, offset: 1152)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4345, file: !128, line: 692, baseType: !943, size: 256, offset: 1216)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4345, file: !128, line: 693, baseType: !1438, size: 192, offset: 1472)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4345, file: !128, line: 694, baseType: !4372, size: 64, offset: 1664)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4345, file: !128, line: 695, baseType: !304, size: 32, offset: 1728)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4345, file: !128, line: 696, baseType: !304, size: 32, offset: 1760)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4345, file: !128, line: 697, baseType: !34, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4345, file: !128, line: 698, baseType: !34, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4345, file: !128, line: 699, baseType: !34, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4345, file: !128, line: 700, baseType: !34, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4345, file: !128, line: 701, baseType: !34, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4345, file: !128, line: 702, baseType: !34, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4345, file: !128, line: 703, baseType: !248, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4345, file: !128, line: 704, baseType: !34, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4345, file: !128, line: 705, baseType: !34, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4345, file: !128, line: 706, baseType: !34, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4345, file: !128, line: 707, baseType: !34, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4345, file: !128, line: 708, baseType: !34, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4345, file: !128, line: 709, baseType: !34, size: 32, offset: 1824)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4345, file: !128, line: 710, baseType: !127, size: 32, offset: 1856)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4345, file: !128, line: 711, baseType: !135, size: 32, offset: 1888)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4345, file: !128, line: 712, baseType: !135, size: 32, offset: 1920)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4345, file: !128, line: 713, baseType: !136, size: 32, offset: 1952)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4345, file: !128, line: 714, baseType: !136, size: 32, offset: 1984)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4345, file: !128, line: 715, baseType: !211, size: 64, offset: 2048)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4345, file: !128, line: 716, baseType: !211, size: 64, offset: 2112)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4345, file: !128, line: 717, baseType: !211, size: 64, offset: 2176)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4345, file: !128, line: 718, baseType: !211, size: 64, offset: 2240)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4345, file: !128, line: 720, baseType: !4424, size: 64, offset: 2304)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !128, line: 632, size: 64, elements: !4426)
!4426 = !{!4427, !4428}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4425, file: !128, line: 633, baseType: !284, size: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4425, file: !128, line: 634, baseType: !34, size: 32, offset: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4345, file: !128, line: 721, baseType: !4430, size: 64, offset: 2368)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{null, !4192, !681}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4345, file: !128, line: 722, baseType: !4434, size: 64, offset: 2432)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !128, line: 722, flags: DIFlagFwdDecl)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !261, file: !121, line: 727, baseType: !4437, size: 64, offset: 4224)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !128, line: 742, size: 1792, elements: !4439)
!4439 = !{!4440, !4441, !4442, !4446, !4447, !4448}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4438, file: !128, line: 743, baseType: !4220, size: 1472)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4438, file: !128, line: 744, baseType: !4223, size: 64, offset: 1472)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4438, file: !128, line: 745, baseType: !4443, size: 64, offset: 1536)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{null, !4192, !248}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4438, file: !128, line: 746, baseType: !4223, size: 64, offset: 1600)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4438, file: !128, line: 747, baseType: !4214, size: 64, offset: 1664)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4438, file: !128, line: 748, baseType: !4214, size: 64, offset: 1728)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !261, file: !121, line: 736, baseType: !4450, size: 128, offset: 4288)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !121, line: 529, size: 128, elements: !4451)
!4451 = !{!4452, !4456}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4450, file: !121, line: 531, baseType: !4453, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4455, line: 13, flags: DIFlagFwdDecl)
!4455 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4450, file: !121, line: 532, baseType: !4457, size: 64, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !121, line: 49, flags: DIFlagFwdDecl)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !261, file: !121, line: 738, baseType: !4460, size: 64, offset: 4416)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4462)
!4462 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !121, line: 738, flags: DIFlagFwdDecl)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !261, file: !121, line: 740, baseType: !4464, size: 64, offset: 4480)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !261, file: !121, line: 741, baseType: !211, size: 64, offset: 4544)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !261, file: !121, line: 746, baseType: !211, size: 64, offset: 4608)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !261, file: !121, line: 747, baseType: !4468, size: 64, offset: 4672)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4470)
!4470 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !121, line: 747, flags: DIFlagFwdDecl)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !261, file: !121, line: 749, baseType: !4472, size: 64, offset: 4736)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !121, line: 428, size: 128, elements: !4474)
!4474 = !{!4475, !4476, !4477}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4473, file: !121, line: 433, baseType: !34, size: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4473, file: !121, line: 434, baseType: !34, size: 32, offset: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4473, file: !121, line: 435, baseType: !399, size: 64, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !261, file: !121, line: 751, baseType: !271, size: 128, offset: 4800)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !261, file: !121, line: 762, baseType: !4480, size: 64, offset: 4928)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !121, line: 762, flags: DIFlagFwdDecl)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !261, file: !121, line: 770, baseType: !4483, offset: 4992)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4484, line: 5, elements: !972)
!4484 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !261, file: !121, line: 772, baseType: !4486, size: 64, offset: 4992)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4488, line: 18, flags: DIFlagFwdDecl)
!4488 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !261, file: !121, line: 773, baseType: !230, size: 64, offset: 5056)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !261, file: !121, line: 776, baseType: !136, size: 32, offset: 5120)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !261, file: !121, line: 778, baseType: !580, size: 32, offset: 5152)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !261, file: !121, line: 779, baseType: !220, size: 32, offset: 5184)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !261, file: !121, line: 781, baseType: !284, size: 32, offset: 5216)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !261, file: !121, line: 782, baseType: !271, size: 128, offset: 5248)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !261, file: !121, line: 784, baseType: !4496, size: 64, offset: 5376)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4498)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4499, line: 52, size: 768, elements: !4500)
!4499 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4500 = !{!4501, !4502, !4503, !4504, !4505, !4509, !4513, !4514, !4515, !4516, !4520, !4524}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4498, file: !4499, line: 53, baseType: !268, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4498, file: !4499, line: 55, baseType: !401, size: 64, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4498, file: !4499, line: 56, baseType: !401, size: 64, offset: 128)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4498, file: !4499, line: 58, baseType: !4205, size: 64, offset: 192)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4498, file: !4499, line: 59, baseType: !4506, size: 64, offset: 256)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!349, !259, !4212}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4498, file: !4499, line: 61, baseType: !4510, size: 64, offset: 320)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{null, !4496}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4498, file: !4499, line: 62, baseType: !4214, size: 64, offset: 384)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4498, file: !4499, line: 64, baseType: !4223, size: 64, offset: 448)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4498, file: !4499, line: 66, baseType: !4044, size: 64, offset: 512)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4498, file: !4499, line: 67, baseType: !4517, size: 64, offset: 576)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!257, !259}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4498, file: !4499, line: 69, baseType: !4521, size: 64, offset: 640)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{null, !259, !4076, !4077}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4498, file: !4499, line: 71, baseType: !4218, size: 64, offset: 704)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !261, file: !121, line: 785, baseType: !401, size: 64, offset: 5440)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !261, file: !121, line: 787, baseType: !4214, size: 64, offset: 5504)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !261, file: !121, line: 788, baseType: !4528, size: 64, offset: 5568)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !121, line: 46, flags: DIFlagFwdDecl)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !261, file: !121, line: 789, baseType: !4531, size: 64, offset: 5632)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !121, line: 48, flags: DIFlagFwdDecl)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !261, file: !121, line: 791, baseType: !4534, size: 64, offset: 5696)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !121, line: 597, size: 128, elements: !4536)
!4536 = !{!4537, !4538, !4539, !4540, !4541}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4535, file: !121, line: 598, baseType: !149, size: 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4535, file: !121, line: 599, baseType: !158, size: 32, offset: 32)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4535, file: !121, line: 600, baseType: !163, size: 32, offset: 64)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4535, file: !121, line: 601, baseType: !248, size: 8, offset: 96)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4535, file: !121, line: 602, baseType: !248, size: 8, offset: 104)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !261, file: !121, line: 793, baseType: !168, size: 32, offset: 5760)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !261, file: !121, line: 795, baseType: !248, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !261, file: !121, line: 796, baseType: !248, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !261, file: !121, line: 797, baseType: !248, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !261, file: !121, line: 798, baseType: !248, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !261, file: !121, line: 799, baseType: !248, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !234, file: !227, line: 131, baseType: !245, size: 64, offset: 256)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !234, file: !227, line: 133, baseType: !4550, size: 64, offset: 320)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!143, !251}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !234, file: !227, line: 134, baseType: !4554, size: 64, offset: 384)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!248, !251, !268}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !234, file: !227, line: 136, baseType: !4558, size: 64, offset: 448)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!136, !251, !268, !34, !214, !396}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !234, file: !227, line: 141, baseType: !4562, size: 64, offset: 512)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!136, !251, !268, !1020, !396}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !234, file: !227, line: 144, baseType: !4566, size: 64, offset: 576)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!268, !251}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !234, file: !227, line: 145, baseType: !4566, size: 64, offset: 640)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !234, file: !227, line: 146, baseType: !4571, size: 64, offset: 704)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!230, !251}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !234, file: !227, line: 148, baseType: !4575, size: 64, offset: 768)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!230, !251, !230}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !234, file: !227, line: 151, baseType: !4579, size: 64, offset: 832)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!230, !251, !268}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !234, file: !227, line: 153, baseType: !4583, size: 64, offset: 896)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!136, !251, !268, !268, !34, !34, !4586}
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !227, line: 94, size: 640, elements: !4588)
!4588 = !{!4589, !4590, !4591}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4587, file: !227, line: 95, baseType: !230, size: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4587, file: !227, line: 96, baseType: !34, size: 32, offset: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4587, file: !227, line: 97, baseType: !4592, size: 512, offset: 128)
!4592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 512, elements: !1615)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !234, file: !227, line: 158, baseType: !4575, size: 64, offset: 960)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !234, file: !227, line: 161, baseType: !4571, size: 64, offset: 1024)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !234, file: !227, line: 163, baseType: !237, size: 64, offset: 1088)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !234, file: !227, line: 164, baseType: !4597, size: 64, offset: 1152)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!136, !251, !4600}
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !227, line: 73, size: 128, elements: !4602)
!4602 = !{!4603, !4604, !4605}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4601, file: !227, line: 74, baseType: !34, size: 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4601, file: !227, line: 75, baseType: !34, size: 32, offset: 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4601, file: !227, line: 76, baseType: !251, size: 64, offset: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !234, file: !227, line: 166, baseType: !4607, size: 64, offset: 1216)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!214, !230, !136}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !234, file: !227, line: 167, baseType: !4611, size: 64, offset: 1280)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!136, !251, !34}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !234, file: !227, line: 168, baseType: !4615, size: 64, offset: 1344)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!136, !230}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !226, file: !227, line: 44, baseType: !4192, size: 64, offset: 128)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !226, file: !227, line: 45, baseType: !271, size: 128, offset: 192)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !226, file: !227, line: 46, baseType: !271, size: 128, offset: 320)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !226, file: !227, line: 47, baseType: !204, size: 8, offset: 448)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !216, file: !217, line: 372, baseType: !271, size: 128, offset: 640)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !216, file: !217, line: 373, baseType: !271, size: 128, offset: 768)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !216, file: !217, line: 374, baseType: !4625, size: 32, offset: 896)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !217, line: 181, size: 32, elements: !4626)
!4626 = !{!4627, !4628, !4629, !4630, !4631, !4632}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !4625, file: !217, line: 182, baseType: !220, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4625, file: !217, line: 183, baseType: !220, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !4625, file: !217, line: 184, baseType: !220, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !4625, file: !217, line: 185, baseType: !220, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !4625, file: !217, line: 186, baseType: !220, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4625, file: !217, line: 187, baseType: !220, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !217, line: 375, baseType: !4634, size: 32, offset: 928)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !217, line: 192, size: 32, elements: !4635)
!4635 = !{!4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !4634, file: !217, line: 193, baseType: !220, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4634, file: !217, line: 194, baseType: !220, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !4634, file: !217, line: 195, baseType: !220, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !4634, file: !217, line: 196, baseType: !220, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4634, file: !217, line: 197, baseType: !220, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4634, file: !217, line: 198, baseType: !220, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !4634, file: !217, line: 199, baseType: !220, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !4634, file: !217, line: 200, baseType: !220, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !4634, file: !217, line: 201, baseType: !220, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !4634, file: !217, line: 202, baseType: !220, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !4634, file: !217, line: 203, baseType: !220, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !4634, file: !217, line: 204, baseType: !220, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !4634, file: !217, line: 205, baseType: !220, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !4634, file: !217, line: 206, baseType: !220, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4634, file: !217, line: 207, baseType: !220, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !216, file: !217, line: 376, baseType: !4652, size: 960, offset: 960)
!4652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !217, line: 238, size: 960, elements: !4653)
!4653 = !{!4654, !4656, !4657, !4665, !4667, !4668, !4669, !4674, !4676}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !4652, file: !217, line: 239, baseType: !4655, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !217, line: 220, baseType: !3085)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !4652, file: !217, line: 240, baseType: !136, size: 32, offset: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4652, file: !217, line: 241, baseType: !4658, size: 32, offset: 96)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !217, line: 230, size: 32, elements: !4659)
!4659 = !{!4660, !4661, !4662, !4663, !4664}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !4658, file: !217, line: 231, baseType: !220, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4658, file: !217, line: 232, baseType: !220, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !4658, file: !217, line: 233, baseType: !220, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !4658, file: !217, line: 234, baseType: !220, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4658, file: !217, line: 235, baseType: !220, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4652, file: !217, line: 242, baseType: !4666, size: 64, offset: 128)
!4666 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !217, line: 221, baseType: !211)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !4652, file: !217, line: 243, baseType: !349, size: 64, offset: 192)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4652, file: !217, line: 244, baseType: !271, size: 128, offset: 256)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4652, file: !217, line: 245, baseType: !4670, size: 320, offset: 384)
!4670 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !217, line: 222, baseType: !4671)
!4671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !4672)
!4672 = !{!4673}
!4673 = !DISubrange(count: 40)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !4652, file: !217, line: 246, baseType: !4675, size: 160, offset: 704)
!4675 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !217, line: 223, baseType: !3)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !4652, file: !217, line: 247, baseType: !4677, size: 64, offset: 896)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !210, line: 908, size: 192, elements: !4679)
!4679 = !{!4680, !4682, !4687, !4693, !4700, !4706, !4712, !4720}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4678, file: !210, line: 909, baseType: !4681, size: 32)
!4681 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !210, line: 644, baseType: !220)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !4678, file: !210, line: 913, baseType: !4683, size: 128)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4678, file: !210, line: 910, size: 128, elements: !4684)
!4684 = !{!4685, !4686}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4683, file: !210, line: 911, baseType: !4681, size: 32)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4683, file: !210, line: 912, baseType: !211, size: 64, offset: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4678, file: !210, line: 919, baseType: !4688, size: 128)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4678, file: !210, line: 915, size: 128, elements: !4689)
!4689 = !{!4690, !4691, !4692}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4688, file: !210, line: 916, baseType: !4681, size: 32)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4688, file: !210, line: 917, baseType: !220, size: 32, offset: 32)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4688, file: !210, line: 918, baseType: !349, size: 64, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4678, file: !210, line: 925, baseType: !4694, size: 128)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4678, file: !210, line: 921, size: 128, elements: !4695)
!4695 = !{!4696, !4697, !4698}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4694, file: !210, line: 922, baseType: !4681, size: 32)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4694, file: !210, line: 923, baseType: !220, size: 32, offset: 32)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4694, file: !210, line: 924, baseType: !4699, size: 64, offset: 64)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !4678, file: !210, line: 931, baseType: !4701, size: 128)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4678, file: !210, line: 927, size: 128, elements: !4702)
!4702 = !{!4703, !4704, !4705}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4701, file: !210, line: 928, baseType: !4681, size: 32)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4701, file: !210, line: 929, baseType: !220, size: 32, offset: 32)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !4701, file: !210, line: 930, baseType: !4677, size: 64, offset: 64)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !4678, file: !210, line: 937, baseType: !4707, size: 128)
!4707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4678, file: !210, line: 933, size: 128, elements: !4708)
!4708 = !{!4709, !4710, !4711}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4707, file: !210, line: 934, baseType: !4681, size: 32)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !4707, file: !210, line: 935, baseType: !4681, size: 32, offset: 32)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4707, file: !210, line: 936, baseType: !224, size: 64, offset: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !4678, file: !210, line: 944, baseType: !4713, size: 192)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4678, file: !210, line: 939, size: 192, elements: !4714)
!4714 = !{!4715, !4716, !4717, !4719}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4713, file: !210, line: 940, baseType: !4681, size: 32)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !4713, file: !210, line: 941, baseType: !220, size: 32, offset: 32)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !4713, file: !210, line: 942, baseType: !4718, size: 64, offset: 64)
!4718 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !210, line: 128, baseType: !211)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !4713, file: !210, line: 943, baseType: !220, size: 32, offset: 128)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !4678, file: !210, line: 950, baseType: !4721, size: 96)
!4721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4678, file: !210, line: 946, size: 96, elements: !4722)
!4722 = !{!4723, !4724, !4725}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4721, file: !210, line: 947, baseType: !4681, size: 32)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !4721, file: !210, line: 948, baseType: !220, size: 32, offset: 32)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !4721, file: !210, line: 949, baseType: !220, size: 32, offset: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !216, file: !217, line: 377, baseType: !4727, size: 1408, offset: 1920)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !217, line: 280, size: 1408, elements: !4728)
!4728 = !{!4729, !4730, !4740, !4755}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4727, file: !217, line: 281, baseType: !136, size: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4727, file: !217, line: 282, baseType: !4731, size: 32, offset: 32)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !217, line: 259, size: 32, elements: !4732)
!4732 = !{!4733, !4734, !4735, !4736, !4737, !4738, !4739}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !4731, file: !217, line: 260, baseType: !220, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !4731, file: !217, line: 261, baseType: !220, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !4731, file: !217, line: 262, baseType: !220, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !4731, file: !217, line: 263, baseType: !220, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !4731, file: !217, line: 264, baseType: !220, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !4731, file: !217, line: 265, baseType: !220, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4731, file: !217, line: 266, baseType: !220, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4727, file: !217, line: 283, baseType: !4741, size: 1280, offset: 64)
!4741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4742, size: 1280, elements: !4753)
!4742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !217, line: 269, size: 256, elements: !4743)
!4743 = !{!4744, !4750, !4751, !4752}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4742, file: !217, line: 274, baseType: !4745, size: 8)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4742, file: !217, line: 270, size: 8, elements: !4746)
!4746 = !{!4747, !4748, !4749}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4745, file: !217, line: 271, baseType: !204, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !4745, file: !217, line: 272, baseType: !204, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4745, file: !217, line: 273, baseType: !204, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4742, file: !217, line: 275, baseType: !136, size: 32, offset: 32)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4742, file: !217, line: 276, baseType: !136, size: 32, offset: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4742, file: !217, line: 277, baseType: !271, size: 128, offset: 128)
!4753 = !{!4754}
!4754 = !DISubrange(count: 5)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !4727, file: !217, line: 284, baseType: !204, size: 8, offset: 1344)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !216, file: !217, line: 378, baseType: !4757, size: 640, offset: 3328)
!4757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !217, line: 330, size: 640, elements: !4758)
!4758 = !{!4759, !4760, !4761, !4762, !4763, !4768, !4777, !4778, !4779}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !4757, file: !217, line: 331, baseType: !224, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !4757, file: !217, line: 332, baseType: !211, size: 64, offset: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !4757, file: !217, line: 333, baseType: !211, size: 64, offset: 128)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4757, file: !217, line: 334, baseType: !271, size: 128, offset: 192)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4757, file: !217, line: 335, baseType: !4764, size: 8, offset: 320)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !217, line: 320, size: 8, elements: !4765)
!4765 = !{!4766, !4767}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4764, file: !217, line: 321, baseType: !204, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !4764, file: !217, line: 322, baseType: !204, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4757, file: !217, line: 336, baseType: !4769, size: 128, offset: 384)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !217, line: 325, size: 128, elements: !4770)
!4770 = !{!4771, !4776}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4769, file: !217, line: 326, baseType: !4772, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{null, !4775}
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4769, file: !217, line: 327, baseType: !4192, size: 64, offset: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !4757, file: !217, line: 337, baseType: !4363, size: 64, offset: 512)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !4757, file: !217, line: 338, baseType: !136, size: 32, offset: 576)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !4757, file: !217, line: 339, baseType: !136, size: 32, offset: 608)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !216, file: !217, line: 379, baseType: !4781, size: 192, offset: 3968)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !217, line: 312, size: 192, elements: !4782)
!4782 = !{!4783, !4784, !4788, !4789}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4781, file: !217, line: 313, baseType: !136, size: 32)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4781, file: !217, line: 314, baseType: !4785, size: 8, offset: 32)
!4785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !217, line: 298, size: 8, elements: !4786)
!4786 = !{!4787}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4785, file: !217, line: 299, baseType: !204, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !4781, file: !217, line: 315, baseType: !136, size: 32, offset: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4781, file: !217, line: 316, baseType: !4790, size: 64, offset: 128)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !217, line: 302, size: 64, elements: !4792)
!4792 = !{!4793, !4798, !4799, !4800}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4791, file: !217, line: 306, baseType: !4794, size: 8)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4791, file: !217, line: 303, size: 8, elements: !4795)
!4795 = !{!4796, !4797}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4794, file: !217, line: 304, baseType: !204, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4794, file: !217, line: 305, baseType: !204, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4791, file: !217, line: 307, baseType: !204, size: 8, offset: 8)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4791, file: !217, line: 308, baseType: !204, size: 8, offset: 16)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4791, file: !217, line: 309, baseType: !136, size: 32, offset: 32)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !216, file: !217, line: 380, baseType: !4802, size: 64, offset: 4160)
!4802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !217, line: 212, size: 64, elements: !4803)
!4803 = !{!4804}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4802, file: !217, line: 213, baseType: !4805, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4807, line: 131, flags: DIFlagFwdDecl)
!4807 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !216, file: !217, line: 381, baseType: !4809, size: 384, offset: 4224)
!4809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !217, line: 357, size: 384, elements: !4810)
!4810 = !{!4811, !4814, !4815, !4816}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4809, file: !217, line: 358, baseType: !4812, size: 64)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4678)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4809, file: !217, line: 359, baseType: !271, size: 128, offset: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !4809, file: !217, line: 360, baseType: !4812, size: 64, offset: 192)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !4809, file: !217, line: 361, baseType: !271, size: 128, offset: 256)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !216, file: !217, line: 382, baseType: !4818, size: 64, offset: 4608)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !217, line: 124, size: 1216, elements: !4820)
!4820 = !{!4821, !4822, !4823, !4828, !4832, !4836, !4837, !4838}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4819, file: !217, line: 125, baseType: !4286, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4819, file: !217, line: 126, baseType: !271, size: 128, offset: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4819, file: !217, line: 127, baseType: !4824, size: 64, offset: 192)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!248, !268, !4827}
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4819, file: !217, line: 128, baseType: !4829, size: 64, offset: 256)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!136, !215, !4286}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4819, file: !217, line: 129, baseType: !4833, size: 64, offset: 320)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{null, !215}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4819, file: !217, line: 130, baseType: !4214, size: 64, offset: 384)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4819, file: !217, line: 131, baseType: !4214, size: 64, offset: 448)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4819, file: !217, line: 132, baseType: !4839, size: 704, offset: 512)
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !217, line: 110, size: 704, elements: !4840)
!4840 = !{!4841, !4842, !4846, !4847, !4848}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4839, file: !217, line: 111, baseType: !264, size: 512)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !4839, file: !217, line: 112, baseType: !4843, size: 64, offset: 512)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!136, !215}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !4839, file: !217, line: 113, baseType: !4833, size: 64, offset: 576)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4839, file: !217, line: 114, baseType: !248, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !4839, file: !217, line: 115, baseType: !248, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !216, file: !217, line: 383, baseType: !4850, size: 64, offset: 4672)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !217, line: 140, size: 256, elements: !4852)
!4852 = !{!4853, !4854, !4858, !4862}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4851, file: !217, line: 141, baseType: !215, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4851, file: !217, line: 142, baseType: !4855, size: 64, offset: 64)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{!136, !215, !220}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4851, file: !217, line: 143, baseType: !4859, size: 64, offset: 128)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{null, !215, !220}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4851, file: !217, line: 144, baseType: !4833, size: 64, offset: 192)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !216, file: !217, line: 384, baseType: !4864, size: 64, offset: 4736)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4866)
!4866 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !217, line: 364, flags: DIFlagFwdDecl)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !216, file: !217, line: 385, baseType: !214, size: 64, offset: 4800)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !216, file: !217, line: 386, baseType: !261, size: 5824, offset: 4864)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !216, file: !217, line: 387, baseType: !34, size: 32, offset: 10688)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !216, file: !217, line: 388, baseType: !34, size: 32, offset: 10720)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !216, file: !217, line: 389, baseType: !271, size: 128, offset: 10752)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !216, file: !217, line: 390, baseType: !685, size: 256, offset: 10880)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !216, file: !217, line: 391, baseType: !4833, size: 64, offset: 11136)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_routing_table", file: !4876, line: 697, size: 192, elements: !4877)
!4876 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e234732d1e15cdbb059f7f7ffd573c0")
!4877 = !{!4878, !4879, !4880, !4881, !4882}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4875, file: !4876, line: 698, baseType: !220, size: 32)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4875, file: !4876, line: 699, baseType: !220, size: 32, offset: 32)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4875, file: !4876, line: 700, baseType: !211, size: 64, offset: 64)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "source_index", scope: !4875, file: !4876, line: 701, baseType: !220, size: 32, offset: 128)
!4882 = !DIDerivedType(tag: DW_TAG_member, scope: !4875, file: !4876, line: 702, baseType: !4883, size: 32, offset: 160)
!4883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4875, file: !4876, line: 702, size: 32, elements: !4884)
!4884 = !{!4885, !4887}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4883, file: !4876, line: 703, baseType: !4886, size: 32)
!4886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !913)
!4887 = !DIDerivedType(tag: DW_TAG_member, scope: !4883, file: !4876, line: 704, baseType: !4888)
!4888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4883, file: !4876, line: 704, elements: !4889)
!4889 = !{!4890, !4892}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_source", scope: !4888, file: !4876, line: 704, baseType: !4891)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4888, file: !4876, line: 704, elements: !972)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4888, file: !4876, line: 704, baseType: !3159)
!4893 = !{!0, !7, !12, !17, !22, !4894, !4899, !4901, !4903, !4908, !4910, !4912, !28, !4914, !4919, !4942, !4947, !4949, !4954, !4956, !4961, !4966}
!4894 = !DIGlobalVariableExpression(var: !4895, expr: !DIExpression())
!4895 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !4896, isLocal: true, isDefinition: true)
!4896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 712, elements: !4897)
!4897 = !{!4898}
!4898 = !DISubrange(count: 89)
!4899 = !DIGlobalVariableExpression(var: !4900, expr: !DIExpression())
!4900 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !25, isLocal: true, isDefinition: true)
!4901 = !DIGlobalVariableExpression(var: !4902, expr: !DIExpression())
!4902 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !25, isLocal: true, isDefinition: true)
!4903 = !DIGlobalVariableExpression(var: !4904, expr: !DIExpression())
!4904 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !4905, isLocal: true, isDefinition: true)
!4905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !4906)
!4906 = !{!4907}
!4907 = !DISubrange(count: 11)
!4908 = !DIGlobalVariableExpression(var: !4909, expr: !DIExpression())
!4909 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !4905, isLocal: true, isDefinition: true)
!4910 = !DIGlobalVariableExpression(var: !4911, expr: !DIExpression())
!4911 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !2763, isLocal: true, isDefinition: true)
!4912 = !DIGlobalVariableExpression(var: !4913, expr: !DIExpression())
!4913 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !2763, isLocal: true, isDefinition: true)
!4914 = !DIGlobalVariableExpression(var: !4915, expr: !DIExpression())
!4915 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !4916, isLocal: true, isDefinition: true)
!4916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !4917)
!4917 = !{!4918}
!4918 = !DISubrange(count: 23)
!4919 = !DIGlobalVariableExpression(var: !4920, expr: !DIExpression())
!4920 = distinct !DIGlobalVariable(name: "medion_md9580", scope: !30, file: !2, line: 43, type: !4921, isLocal: true, isDefinition: true)
!4921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4922, size: 5504, elements: !802)
!4922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4923)
!4923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !4276, line: 587, size: 2752, elements: !4924)
!4924 = !{!4925, !4930, !4931, !4941}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4923, file: !4276, line: 588, baseType: !4926, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!136, !4929}
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !4923, file: !4276, line: 589, baseType: !268, size: 64, offset: 64)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !4923, file: !4276, line: 590, baseType: !4932, size: 2560, offset: 128)
!4932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4933, size: 2560, elements: !913)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !4276, line: 581, size: 640, elements: !4934)
!4934 = !{!4935, !4936, !4937}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4933, file: !4276, line: 582, baseType: !208, size: 7, flags: DIFlagBitField, extraData: i64 0)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !4933, file: !4276, line: 583, baseType: !208, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !4933, file: !4276, line: 584, baseType: !4938, size: 632, offset: 8)
!4938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !4939)
!4939 = !{!4940}
!4940 = !DISubrange(count: 79)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4923, file: !4276, line: 591, baseType: !214, size: 64, offset: 2688)
!4942 = !DIGlobalVariableExpression(var: !4943, expr: !DIExpression())
!4943 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !4944, isLocal: true, isDefinition: true)
!4944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !4945)
!4945 = !{!4946}
!4946 = !DISubrange(count: 18)
!4947 = !DIGlobalVariableExpression(var: !4948, expr: !DIExpression())
!4948 = distinct !DIGlobalVariable(name: "dell_optiplex", scope: !30, file: !2, line: 55, type: !4921, isLocal: true, isDefinition: true)
!4949 = !DIGlobalVariableExpression(var: !4950, expr: !DIExpression())
!4950 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !4951, isLocal: true, isDefinition: true)
!4951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !4952)
!4952 = !{!4953}
!4953 = !DISubrange(count: 9)
!4954 = !DIGlobalVariableExpression(var: !4955, expr: !DIExpression())
!4955 = distinct !DIGlobalVariable(name: "hp_t5710", scope: !30, file: !2, line: 67, type: !4921, isLocal: true, isDefinition: true)
!4956 = !DIGlobalVariableExpression(var: !4957, expr: !DIExpression())
!4957 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !4958, isLocal: true, isDefinition: true)
!4958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !4959)
!4959 = !{!4960}
!4960 = !DISubrange(count: 41)
!4961 = !DIGlobalVariableExpression(var: !4962, expr: !DIExpression())
!4962 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !4963, isLocal: true, isDefinition: true)
!4963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !4964)
!4964 = !{!4965}
!4965 = !DISubrange(count: 54)
!4966 = !DIGlobalVariableExpression(var: !4967, expr: !DIExpression())
!4967 = distinct !DIGlobalVariable(scope: null, file: !2, line: 375, type: !4968, isLocal: true, isDefinition: true)
!4968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !4969)
!4969 = !{!4970}
!4970 = !DISubrange(count: 27)
!4971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4972, size: 960, elements: !350)
!4972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4973)
!4973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prt_quirk", file: !2, line: 79, size: 320, elements: !4974)
!4974 = !{!4975, !4976, !4977, !4978, !4979, !4980, !4981}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4973, file: !2, line: 80, baseType: !4929, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !4973, file: !2, line: 81, baseType: !34, size: 32, offset: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4973, file: !2, line: 82, baseType: !34, size: 32, offset: 96)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4973, file: !2, line: 83, baseType: !34, size: 32, offset: 128)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4973, file: !2, line: 84, baseType: !208, size: 8, offset: 160)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4973, file: !2, line: 85, baseType: !268, size: 64, offset: 192)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "actual_source", scope: !4973, file: !2, line: 86, baseType: !268, size: 64, offset: 256)
!4982 = !{i32 7, !"Dwarf Version", i32 5}
!4983 = !{i32 2, !"Debug Info Version", i32 3}
!4984 = !{i32 1, !"wchar_size", i32 2}
!4985 = !{i32 8, !"cf-protection-branch", i32 1}
!4986 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4987 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4988 = !{i32 1, !"Code Model", i32 2}
!4989 = !{i32 1, !"override-stack-alignment", i32 8}
!4990 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4991 = distinct !DISubprogram(name: "acpi_pci_irq_enable", scope: !2, file: !2, line: 383, type: !4992, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !5289)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!136, !4994}
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !199, line: 322, size: 16640, elements: !4996)
!4996 = !{!4997, !4998, !5068, !5069, !5070, !5071, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5175, !5176, !5177, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5252, !5253, !5254, !5256, !5257, !5259, !5260, !5261, !5262, !5268, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4995, file: !199, line: 323, baseType: !271, size: 128)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4995, file: !199, line: 324, baseType: !4999, size: 64, offset: 128)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !199, line: 647, size: 8256, elements: !5001)
!5001 = !{!5002, !5003, !5004, !5005, !5006, !5007, !5008, !5023, !5024, !5025, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5059, !5060, !5062, !5063, !5064, !5065, !5066, !5067}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5000, file: !199, line: 648, baseType: !271, size: 128)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5000, file: !199, line: 649, baseType: !4999, size: 64, offset: 128)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5000, file: !199, line: 650, baseType: !271, size: 128, offset: 192)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !5000, file: !199, line: 651, baseType: !271, size: 128, offset: 320)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !5000, file: !199, line: 652, baseType: !4994, size: 64, offset: 448)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !5000, file: !199, line: 653, baseType: !271, size: 128, offset: 512)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !5000, file: !199, line: 655, baseType: !5009, size: 256, offset: 640)
!5009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5010, size: 256, elements: !913)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !5012, line: 21, size: 512, elements: !5013)
!5012 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!5013 = !{!5014, !5016, !5017, !5018, !5019, !5020, !5021, !5022}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5011, file: !5012, line: 22, baseType: !5015, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !249, line: 164, baseType: !3290)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5011, file: !5012, line: 23, baseType: !5015, size: 64, offset: 64)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5011, file: !5012, line: 24, baseType: !268, size: 64, offset: 128)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5011, file: !5012, line: 25, baseType: !399, size: 64, offset: 192)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5011, file: !5012, line: 26, baseType: !399, size: 64, offset: 256)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5011, file: !5012, line: 27, baseType: !5010, size: 64, offset: 320)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !5011, file: !5012, line: 27, baseType: !5010, size: 64, offset: 384)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !5011, file: !5012, line: 27, baseType: !5010, size: 64, offset: 448)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5000, file: !199, line: 656, baseType: !271, size: 128, offset: 896)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !5000, file: !199, line: 657, baseType: !5011, size: 512, offset: 1024)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5000, file: !199, line: 659, baseType: !5026, size: 64, offset: 1536)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !199, line: 773, size: 320, elements: !5028)
!5028 = !{!5029, !5033, !5037, !5041, !5045}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !5027, file: !199, line: 774, baseType: !5030, size: 64)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!136, !4999}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !5027, file: !199, line: 775, baseType: !5034, size: 64, offset: 64)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{null, !4999}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !5027, file: !199, line: 776, baseType: !5038, size: 64, offset: 128)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{!214, !4999, !34, !136}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5027, file: !199, line: 777, baseType: !5042, size: 64, offset: 192)
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DISubroutineType(types: !5044)
!5044 = !{!136, !4999, !34, !136, !136, !2663}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5027, file: !199, line: 778, baseType: !5046, size: 64, offset: 256)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!136, !4999, !34, !136, !136, !220}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !5000, file: !199, line: 660, baseType: !214, size: 64, offset: 1600)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !5000, file: !199, line: 661, baseType: !4805, size: 64, offset: 1664)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !5000, file: !199, line: 663, baseType: !208, size: 8, offset: 1728)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !5000, file: !199, line: 664, baseType: !208, size: 8, offset: 1736)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !5000, file: !199, line: 665, baseType: !208, size: 8, offset: 1744)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !5000, file: !199, line: 666, baseType: !208, size: 8, offset: 1752)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5000, file: !199, line: 671, baseType: !5056, size: 384, offset: 1760)
!5056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !5057)
!5057 = !{!5058}
!5058 = !DISubrange(count: 48)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !5000, file: !199, line: 673, baseType: !319, size: 16, offset: 2144)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5000, file: !199, line: 674, baseType: !5061, size: 16, offset: 2160)
!5061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !199, line: 255, baseType: !319)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !5000, file: !199, line: 675, baseType: !4192, size: 64, offset: 2176)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5000, file: !199, line: 676, baseType: !261, size: 5824, offset: 2240)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !5000, file: !199, line: 677, baseType: !415, size: 64, offset: 8064)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !5000, file: !199, line: 678, baseType: !415, size: 64, offset: 8128)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !5000, file: !199, line: 679, baseType: !34, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !5000, file: !199, line: 680, baseType: !34, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4995, file: !199, line: 325, baseType: !4999, size: 64, offset: 192)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4995, file: !199, line: 327, baseType: !214, size: 64, offset: 256)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4995, file: !199, line: 328, baseType: !4805, size: 64, offset: 320)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4995, file: !199, line: 329, baseType: !5072, size: 64, offset: 384)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !199, line: 76, size: 832, elements: !5074)
!5074 = !{!5075, !5076, !5077, !5080, !5081}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5073, file: !199, line: 77, baseType: !4999, size: 64)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5073, file: !199, line: 78, baseType: !271, size: 128, offset: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !5073, file: !199, line: 79, baseType: !5078, size: 64, offset: 192)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !199, line: 79, flags: DIFlagFwdDecl)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !5073, file: !199, line: 80, baseType: !208, size: 8, offset: 256)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5073, file: !199, line: 81, baseType: !264, size: 512, offset: 320)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4995, file: !199, line: 331, baseType: !34, size: 32, offset: 448)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4995, file: !199, line: 332, baseType: !319, size: 16, offset: 480)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4995, file: !199, line: 333, baseType: !319, size: 16, offset: 496)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4995, file: !199, line: 334, baseType: !319, size: 16, offset: 512)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4995, file: !199, line: 335, baseType: !319, size: 16, offset: 528)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4995, file: !199, line: 336, baseType: !34, size: 32, offset: 544)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4995, file: !199, line: 337, baseType: !204, size: 8, offset: 576)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4995, file: !199, line: 338, baseType: !204, size: 8, offset: 584)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !4995, file: !199, line: 344, baseType: !5091, size: 64, offset: 640)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !199, line: 319, flags: DIFlagFwdDecl)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !4995, file: !199, line: 345, baseType: !4994, size: 64, offset: 704)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !4995, file: !199, line: 347, baseType: !220, size: 32, offset: 768)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4995, file: !199, line: 348, baseType: !204, size: 8, offset: 800)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4995, file: !199, line: 349, baseType: !204, size: 8, offset: 808)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4995, file: !199, line: 350, baseType: !204, size: 8, offset: 816)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4995, file: !199, line: 351, baseType: !204, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4995, file: !199, line: 352, baseType: !204, size: 8, offset: 832)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4995, file: !199, line: 353, baseType: !204, size: 8, offset: 840)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4995, file: !199, line: 354, baseType: !317, size: 16, offset: 848)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4995, file: !199, line: 355, baseType: !1034, size: 64, offset: 896)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4995, file: !199, line: 357, baseType: !5104, size: 64, offset: 960)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !199, line: 918, size: 2368, elements: !5106)
!5106 = !{!5107, !5108, !5109, !5122, !5126, !5130, !5134, !5136, !5137, !5141, !5142, !5146, !5166, !5167, !5168, !5169, !5174}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5105, file: !199, line: 919, baseType: !271, size: 128)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5105, file: !199, line: 920, baseType: !268, size: 64, offset: 128)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5105, file: !199, line: 921, baseType: !5110, size: 64, offset: 192)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5112)
!5112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4276, line: 44, size: 320, elements: !5113)
!5113 = !{!5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5112, file: !4276, line: 45, baseType: !221, size: 32)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5112, file: !4276, line: 45, baseType: !221, size: 32, offset: 32)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !5112, file: !4276, line: 46, baseType: !221, size: 32, offset: 64)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !5112, file: !4276, line: 46, baseType: !221, size: 32, offset: 96)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5112, file: !4276, line: 47, baseType: !221, size: 32, offset: 128)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !5112, file: !4276, line: 47, baseType: !221, size: 32, offset: 160)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5112, file: !4276, line: 48, baseType: !4292, size: 64, offset: 192)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !5112, file: !4276, line: 49, baseType: !221, size: 32, offset: 256)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5105, file: !199, line: 922, baseType: !5123, size: 64, offset: 256)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!136, !4994, !5110}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5105, file: !199, line: 923, baseType: !5127, size: 64, offset: 320)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{null, !4994}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5105, file: !199, line: 924, baseType: !5131, size: 64, offset: 384)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DISubroutineType(types: !5133)
!5133 = !{!136, !4994, !4303}
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5105, file: !199, line: 925, baseType: !5135, size: 64, offset: 448)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5105, file: !199, line: 926, baseType: !5127, size: 64, offset: 512)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !5105, file: !199, line: 927, baseType: !5138, size: 64, offset: 576)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!136, !4994, !136}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !5105, file: !199, line: 928, baseType: !5138, size: 64, offset: 640)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !5105, file: !199, line: 929, baseType: !5143, size: 64, offset: 704)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!220, !4994}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !5105, file: !199, line: 930, baseType: !5147, size: 64, offset: 768)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5149)
!5149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !199, line: 837, size: 448, elements: !5150)
!5150 = !{!5151, !5157, !5161, !5162, !5163, !5164, !5165}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !5149, file: !199, line: 839, baseType: !5152, size: 64)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!5155, !4994, !5156}
!5155 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !199, line: 814, baseType: !34)
!5156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !199, line: 196, baseType: !34)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !5149, file: !199, line: 843, baseType: !5158, size: 64, offset: 64)
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = !DISubroutineType(types: !5160)
!5160 = !{!5155, !4994}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !5149, file: !199, line: 846, baseType: !5158, size: 64, offset: 128)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !5149, file: !199, line: 849, baseType: !5127, size: 64, offset: 192)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !5149, file: !199, line: 850, baseType: !5127, size: 64, offset: 256)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5149, file: !199, line: 853, baseType: !5127, size: 64, offset: 320)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !5149, file: !199, line: 856, baseType: !5127, size: 64, offset: 384)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5105, file: !199, line: 931, baseType: !401, size: 64, offset: 832)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5105, file: !199, line: 932, baseType: !401, size: 64, offset: 896)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5105, file: !199, line: 933, baseType: !4264, size: 1152, offset: 960)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !5105, file: !199, line: 934, baseType: !5170, size: 192, offset: 2112)
!5170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !199, line: 801, size: 192, elements: !5171)
!5171 = !{!5172, !5173}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5170, file: !199, line: 802, baseType: !284, size: 32)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5170, file: !199, line: 803, baseType: !271, size: 128, offset: 64)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !5105, file: !199, line: 935, baseType: !248, size: 8, offset: 2304)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4995, file: !199, line: 358, baseType: !211, size: 64, offset: 1024)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4995, file: !199, line: 364, baseType: !4473, size: 128, offset: 1088)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4995, file: !199, line: 366, baseType: !5178, size: 32, offset: 1216)
!5178 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !199, line: 171, baseType: !136)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4995, file: !199, line: 369, baseType: !204, size: 8, offset: 1248)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4995, file: !199, line: 370, baseType: !34, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4995, file: !199, line: 371, baseType: !34, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4995, file: !199, line: 373, baseType: !34, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4995, file: !199, line: 374, baseType: !34, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4995, file: !199, line: 375, baseType: !34, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4995, file: !199, line: 376, baseType: !34, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4995, file: !199, line: 377, baseType: !34, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4995, file: !199, line: 378, baseType: !34, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4995, file: !199, line: 379, baseType: !34, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4995, file: !199, line: 380, baseType: !34, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4995, file: !199, line: 382, baseType: !34, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4995, file: !199, line: 383, baseType: !34, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4995, file: !199, line: 384, baseType: !34, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4995, file: !199, line: 385, baseType: !34, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4995, file: !199, line: 388, baseType: !34, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4995, file: !199, line: 390, baseType: !34, size: 32, offset: 1280)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4995, file: !199, line: 391, baseType: !34, size: 32, offset: 1312)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4995, file: !199, line: 394, baseType: !5198, size: 64, offset: 1344)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !199, line: 316, flags: DIFlagFwdDecl)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4995, file: !199, line: 395, baseType: !317, size: 16, offset: 1408)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4995, file: !199, line: 396, baseType: !34, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !4995, file: !199, line: 399, baseType: !34, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4995, file: !199, line: 400, baseType: !34, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4995, file: !199, line: 402, baseType: !5156, size: 32, offset: 1440)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4995, file: !199, line: 403, baseType: !261, size: 5824, offset: 1472)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4995, file: !199, line: 405, baseType: !136, size: 32, offset: 7296)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4995, file: !199, line: 411, baseType: !34, size: 32, offset: 7328)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4995, file: !199, line: 412, baseType: !5209, size: 5632, offset: 7360)
!5209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5011, size: 5632, elements: !4906)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !4995, file: !199, line: 413, baseType: !5011, size: 512, offset: 12992)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4995, file: !199, line: 415, baseType: !248, size: 8, offset: 13504)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4995, file: !199, line: 417, baseType: !34, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4995, file: !199, line: 418, baseType: !34, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4995, file: !199, line: 419, baseType: !34, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4995, file: !199, line: 420, baseType: !34, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4995, file: !199, line: 421, baseType: !34, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4995, file: !199, line: 423, baseType: !34, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4995, file: !199, line: 424, baseType: !34, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4995, file: !199, line: 425, baseType: !34, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4995, file: !199, line: 426, baseType: !34, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4995, file: !199, line: 427, baseType: !34, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4995, file: !199, line: 428, baseType: !34, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4995, file: !199, line: 429, baseType: !34, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4995, file: !199, line: 430, baseType: !34, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4995, file: !199, line: 431, baseType: !34, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4995, file: !199, line: 432, baseType: !34, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4995, file: !199, line: 433, baseType: !34, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4995, file: !199, line: 434, baseType: !34, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4995, file: !199, line: 435, baseType: !34, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !4995, file: !199, line: 436, baseType: !34, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4995, file: !199, line: 437, baseType: !34, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4995, file: !199, line: 438, baseType: !34, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4995, file: !199, line: 439, baseType: !34, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4995, file: !199, line: 440, baseType: !34, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4995, file: !199, line: 441, baseType: !34, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4995, file: !199, line: 442, baseType: !34, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4995, file: !199, line: 443, baseType: !34, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4995, file: !199, line: 451, baseType: !34, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4995, file: !199, line: 457, baseType: !34, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4995, file: !199, line: 458, baseType: !34, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4995, file: !199, line: 459, baseType: !34, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4995, file: !199, line: 460, baseType: !34, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4995, file: !199, line: 461, baseType: !34, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4995, file: !199, line: 462, baseType: !34, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4995, file: !199, line: 463, baseType: !34, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4995, file: !199, line: 464, baseType: !34, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4995, file: !199, line: 465, baseType: !34, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !4995, file: !199, line: 466, baseType: !34, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4995, file: !199, line: 467, baseType: !34, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4995, file: !199, line: 468, baseType: !5251, size: 16, offset: 13552)
!5251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !199, line: 222, baseType: !319)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4995, file: !199, line: 469, baseType: !304, size: 32, offset: 13568)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !4995, file: !199, line: 471, baseType: !284, size: 32, offset: 13600)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4995, file: !199, line: 472, baseType: !5255, size: 512, offset: 13632)
!5255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 512, elements: !2764)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4995, file: !199, line: 473, baseType: !1053, size: 64, offset: 14144)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4995, file: !199, line: 474, baseType: !5258, size: 704, offset: 14208)
!5258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 704, elements: !4906)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4995, file: !199, line: 475, baseType: !5258, size: 704, offset: 14912)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !4995, file: !199, line: 487, baseType: !214, size: 64, offset: 15616)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !4995, file: !199, line: 488, baseType: !643, size: 32, offset: 15680)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4995, file: !199, line: 490, baseType: !5263, size: 320, offset: 15744)
!5263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !199, line: 309, size: 320, elements: !5264)
!5264 = !{!5265, !5266, !5267}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5263, file: !199, line: 310, baseType: !685, size: 256)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5263, file: !199, line: 311, baseType: !34, size: 32, offset: 256)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !5263, file: !199, line: 312, baseType: !204, size: 8, offset: 288)
!5268 = !DIDerivedType(tag: DW_TAG_member, scope: !4995, file: !199, line: 497, baseType: !5269, size: 64, offset: 16064)
!5269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4995, file: !199, line: 497, size: 64, elements: !5270)
!5270 = !{!5271, !5274}
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !5269, file: !199, line: 498, baseType: !5272, size: 64)
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5273 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !199, line: 317, flags: DIFlagFwdDecl)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !5269, file: !199, line: 499, baseType: !4994, size: 64)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4995, file: !199, line: 501, baseType: !317, size: 16, offset: 16128)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4995, file: !199, line: 502, baseType: !204, size: 8, offset: 16144)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !4995, file: !199, line: 505, baseType: !317, size: 16, offset: 16160)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !4995, file: !199, line: 506, baseType: !220, size: 32, offset: 16192)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !4995, file: !199, line: 507, baseType: !34, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !4995, file: !199, line: 510, baseType: !317, size: 16, offset: 16240)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !4995, file: !199, line: 511, baseType: !317, size: 16, offset: 16256)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4995, file: !199, line: 519, baseType: !317, size: 16, offset: 16272)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4995, file: !199, line: 520, baseType: !3290, size: 64, offset: 16320)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4995, file: !199, line: 521, baseType: !396, size: 64, offset: 16384)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4995, file: !199, line: 526, baseType: !268, size: 64, offset: 16448)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4995, file: !199, line: 528, baseType: !399, size: 64, offset: 16512)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !4995, file: !199, line: 531, baseType: !5288, size: 56, offset: 16576)
!5288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 56, elements: !804)
!5289 = !{!5290, !5291, !5305, !5306, !5307, !5308, !5309, !5310, !5311}
!5290 = !DILocalVariable(name: "dev", arg: 1, scope: !4991, file: !2, line: 383, type: !4994)
!5291 = !DILocalVariable(name: "entry", scope: !4991, file: !2, line: 385, type: !5292)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_prt_entry", file: !2, line: 26, size: 256, elements: !5294)
!5294 = !{!5295, !5302, !5303, !5304}
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5293, file: !2, line: 27, baseType: !5296, size: 64)
!5296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_id", file: !210, line: 1221, size: 64, elements: !5297)
!5297 = !{!5298, !5299, !5300, !5301}
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !5296, file: !210, line: 1222, baseType: !317, size: 16)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5296, file: !210, line: 1223, baseType: !317, size: 16, offset: 16)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5296, file: !210, line: 1224, baseType: !317, size: 16, offset: 32)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !5296, file: !210, line: 1225, baseType: !317, size: 16, offset: 48)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !5293, file: !2, line: 28, baseType: !204, size: 8, offset: 64)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !5293, file: !2, line: 29, baseType: !224, size: 64, offset: 128)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5293, file: !2, line: 30, baseType: !220, size: 32, offset: 192)
!5305 = !DILocalVariable(name: "gsi", scope: !4991, file: !2, line: 386, type: !136)
!5306 = !DILocalVariable(name: "pin", scope: !4991, file: !2, line: 387, type: !204)
!5307 = !DILocalVariable(name: "triggering", scope: !4991, file: !2, line: 388, type: !136)
!5308 = !DILocalVariable(name: "polarity", scope: !4991, file: !2, line: 397, type: !136)
!5309 = !DILocalVariable(name: "link", scope: !4991, file: !2, line: 400, type: !349)
!5310 = !DILocalVariable(name: "link_desc", scope: !4991, file: !2, line: 401, type: !2763)
!5311 = !DILocalVariable(name: "rc", scope: !4991, file: !2, line: 402, type: !136)
!5312 = !DILocation(line: 383, column: 41, scope: !4991)
!5313 = !DILocation(line: 385, column: 2, scope: !4991)
!5314 = !DILocation(line: 385, column: 25, scope: !4991)
!5315 = !DILocation(line: 386, column: 2, scope: !4991)
!5316 = !DILocation(line: 386, column: 6, scope: !4991)
!5317 = !DILocation(line: 387, column: 2, scope: !4991)
!5318 = !DILocation(line: 387, column: 5, scope: !4991)
!5319 = !DILocation(line: 388, column: 2, scope: !4991)
!5320 = !DILocation(line: 388, column: 6, scope: !4991)
!5321 = !DILocation(line: 397, column: 2, scope: !4991)
!5322 = !DILocation(line: 397, column: 6, scope: !4991)
!5323 = !DILocation(line: 397, column: 17, scope: !4991)
!5324 = !DILocation(line: 397, column: 32, scope: !4991)
!5325 = !DILocation(line: 397, column: 54, scope: !4991)
!5326 = !DILocation(line: 398, column: 10, scope: !4991)
!5327 = !DILocation(line: 398, column: 25, scope: !4991)
!5328 = !DILocation(line: 400, column: 2, scope: !4991)
!5329 = !DILocation(line: 400, column: 8, scope: !4991)
!5330 = !DILocation(line: 401, column: 2, scope: !4991)
!5331 = !DILocation(line: 401, column: 7, scope: !4991)
!5332 = !DILocation(line: 402, column: 2, scope: !4991)
!5333 = !DILocation(line: 402, column: 6, scope: !4991)
!5334 = !DILocation(line: 404, column: 8, scope: !4991)
!5335 = !DILocation(line: 404, column: 13, scope: !4991)
!5336 = !DILocation(line: 404, column: 6, scope: !4991)
!5337 = !DILocation(line: 405, column: 7, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !4991, file: !2, line: 405, column: 6)
!5339 = !DILocation(line: 405, column: 6, scope: !4991)
!5340 = !DILocation(line: 407, column: 3, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5338, file: !2, line: 405, column: 12)
!5342 = !DILocation(line: 410, column: 6, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !4991, file: !2, line: 410, column: 6)
!5344 = !DILocation(line: 410, column: 11, scope: !5343)
!5345 = !DILocation(line: 410, column: 23, scope: !5343)
!5346 = !DILocation(line: 410, column: 26, scope: !5343)
!5347 = !DILocation(line: 410, column: 31, scope: !5343)
!5348 = !DILocation(line: 410, column: 35, scope: !5343)
!5349 = !DILocation(line: 410, column: 6, scope: !4991)
!5350 = !DILocation(line: 411, column: 3, scope: !5343)
!5351 = !DILocation(line: 413, column: 30, scope: !4991)
!5352 = !DILocation(line: 413, column: 35, scope: !4991)
!5353 = !DILocation(line: 413, column: 10, scope: !4991)
!5354 = !DILocation(line: 413, column: 8, scope: !4991)
!5355 = !DILocation(line: 414, column: 7, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !4991, file: !2, line: 414, column: 6)
!5357 = !DILocation(line: 414, column: 6, scope: !4991)
!5358 = !DILocation(line: 419, column: 7, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5360, file: !2, line: 419, column: 7)
!5360 = distinct !DILexicalBlock(scope: !5356, file: !2, line: 414, column: 14)
!5361 = !DILocation(line: 419, column: 12, scope: !5359)
!5362 = !DILocation(line: 419, column: 18, scope: !5359)
!5363 = !DILocation(line: 419, column: 23, scope: !5359)
!5364 = !DILocation(line: 419, column: 48, scope: !5359)
!5365 = !DILocation(line: 420, column: 6, scope: !5359)
!5366 = !DILocation(line: 420, column: 11, scope: !5359)
!5367 = !DILocation(line: 420, column: 17, scope: !5359)
!5368 = !DILocation(line: 420, column: 25, scope: !5359)
!5369 = !DILocation(line: 419, column: 7, scope: !5360)
!5370 = !DILocation(line: 421, column: 4, scope: !5359)
!5371 = !DILocation(line: 422, column: 2, scope: !5360)
!5372 = !DILocation(line: 424, column: 6, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !4991, file: !2, line: 424, column: 6)
!5374 = !DILocation(line: 424, column: 6, scope: !4991)
!5375 = !DILocation(line: 425, column: 7, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5377, file: !2, line: 425, column: 7)
!5377 = distinct !DILexicalBlock(scope: !5373, file: !2, line: 424, column: 13)
!5378 = !DILocation(line: 425, column: 14, scope: !5376)
!5379 = !DILocation(line: 425, column: 7, scope: !5377)
!5380 = !DILocation(line: 426, column: 37, scope: !5376)
!5381 = !DILocation(line: 426, column: 44, scope: !5376)
!5382 = !DILocation(line: 427, column: 9, scope: !5376)
!5383 = !DILocation(line: 427, column: 16, scope: !5376)
!5384 = !DILocation(line: 426, column: 10, scope: !5376)
!5385 = !DILocation(line: 426, column: 8, scope: !5376)
!5386 = !DILocation(line: 426, column: 4, scope: !5376)
!5387 = !DILocation(line: 431, column: 10, scope: !5376)
!5388 = !DILocation(line: 431, column: 17, scope: !5376)
!5389 = !DILocation(line: 431, column: 8, scope: !5376)
!5390 = !DILocation(line: 432, column: 2, scope: !5377)
!5391 = !DILocation(line: 433, column: 7, scope: !5373)
!5392 = !DILocation(line: 435, column: 6, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !4991, file: !2, line: 435, column: 6)
!5394 = !DILocation(line: 435, column: 10, scope: !5393)
!5395 = !DILocation(line: 435, column: 6, scope: !4991)
!5396 = !DILocation(line: 440, column: 27, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5398, file: !2, line: 440, column: 7)
!5398 = distinct !DILexicalBlock(scope: !5393, file: !2, line: 435, column: 15)
!5399 = !DILocation(line: 440, column: 32, scope: !5397)
!5400 = !DILocation(line: 440, column: 8, scope: !5397)
!5401 = !DILocation(line: 440, column: 7, scope: !5398)
!5402 = !DILocation(line: 441, column: 10, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5397, file: !2, line: 440, column: 38)
!5404 = !DILocation(line: 441, column: 4, scope: !5403)
!5405 = !DILocation(line: 442, column: 4, scope: !5403)
!5406 = !DILocation(line: 445, column: 29, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5398, file: !2, line: 445, column: 7)
!5408 = !DILocation(line: 445, column: 7, scope: !5407)
!5409 = !DILocation(line: 445, column: 7, scope: !5398)
!5410 = !DILocation(line: 446, column: 4, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5407, file: !2, line: 446, column: 4)
!5412 = !DILocation(line: 446, column: 4, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5411, file: !2, line: 446, column: 4)
!5414 = !DILocation(line: 446, column: 4, scope: !5407)
!5415 = !DILocation(line: 449, column: 9, scope: !5398)
!5416 = !DILocation(line: 449, column: 3, scope: !5398)
!5417 = !DILocation(line: 450, column: 3, scope: !5398)
!5418 = !DILocation(line: 453, column: 26, scope: !4991)
!5419 = !DILocation(line: 453, column: 31, scope: !4991)
!5420 = !DILocation(line: 453, column: 36, scope: !4991)
!5421 = !DILocation(line: 453, column: 41, scope: !4991)
!5422 = !DILocation(line: 453, column: 53, scope: !4991)
!5423 = !DILocation(line: 453, column: 7, scope: !4991)
!5424 = !DILocation(line: 453, column: 5, scope: !4991)
!5425 = !DILocation(line: 454, column: 6, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !4991, file: !2, line: 454, column: 6)
!5427 = !DILocation(line: 454, column: 9, scope: !5426)
!5428 = !DILocation(line: 454, column: 6, scope: !4991)
!5429 = !DILocation(line: 455, column: 3, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5431, file: !2, line: 455, column: 3)
!5431 = distinct !DILexicalBlock(scope: !5426, file: !2, line: 454, column: 14)
!5432 = !DILocation(line: 455, column: 3, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5430, file: !2, line: 455, column: 3)
!5434 = !DILocation(line: 457, column: 9, scope: !5431)
!5435 = !DILocation(line: 457, column: 3, scope: !5431)
!5436 = !DILocation(line: 458, column: 10, scope: !5431)
!5437 = !DILocation(line: 458, column: 3, scope: !5431)
!5438 = !DILocation(line: 460, column: 13, scope: !4991)
!5439 = !DILocation(line: 460, column: 2, scope: !4991)
!5440 = !DILocation(line: 460, column: 7, scope: !4991)
!5441 = !DILocation(line: 460, column: 11, scope: !4991)
!5442 = !DILocation(line: 461, column: 2, scope: !4991)
!5443 = !DILocation(line: 461, column: 7, scope: !4991)
!5444 = !DILocation(line: 461, column: 19, scope: !4991)
!5445 = !DILocation(line: 463, column: 6, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !4991, file: !2, line: 463, column: 6)
!5447 = !DILocation(line: 463, column: 6, scope: !4991)
!5448 = !DILocation(line: 464, column: 12, scope: !5446)
!5449 = !DILocation(line: 464, column: 58, scope: !5446)
!5450 = !DILocation(line: 464, column: 3, scope: !5446)
!5451 = !DILocation(line: 466, column: 3, scope: !5446)
!5452 = !DILocation(line: 466, column: 16, scope: !5446)
!5453 = !DILocation(line: 473, column: 8, scope: !4991)
!5454 = !DILocation(line: 473, column: 2, scope: !4991)
!5455 = !DILocation(line: 474, column: 2, scope: !4991)
!5456 = !DILocation(line: 475, column: 1, scope: !4991)
!5457 = distinct !DISubprogram(name: "acpi_pci_irq_lookup", scope: !2, file: !2, line: 291, type: !5458, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !5460)
!5458 = !DISubroutineType(types: !5459)
!5459 = !{!5292, !4994, !136}
!5460 = !{!5461, !5462, !5463, !5464, !5465, !5466, !5467}
!5461 = !DILocalVariable(name: "dev", arg: 1, scope: !5457, file: !2, line: 291, type: !4994)
!5462 = !DILocalVariable(name: "pin", arg: 2, scope: !5457, file: !2, line: 291, type: !136)
!5463 = !DILocalVariable(name: "entry", scope: !5457, file: !2, line: 293, type: !5292)
!5464 = !DILocalVariable(name: "bridge", scope: !5457, file: !2, line: 294, type: !4994)
!5465 = !DILocalVariable(name: "bridge_pin", scope: !5457, file: !2, line: 295, type: !204)
!5466 = !DILocalVariable(name: "orig_pin", scope: !5457, file: !2, line: 295, type: !204)
!5467 = !DILocalVariable(name: "ret", scope: !5457, file: !2, line: 296, type: !136)
!5468 = !DILocation(line: 291, column: 67, scope: !5457)
!5469 = !DILocation(line: 291, column: 76, scope: !5457)
!5470 = !DILocation(line: 293, column: 2, scope: !5457)
!5471 = !DILocation(line: 293, column: 25, scope: !5457)
!5472 = !DILocation(line: 294, column: 2, scope: !5457)
!5473 = !DILocation(line: 294, column: 18, scope: !5457)
!5474 = !DILocation(line: 295, column: 2, scope: !5457)
!5475 = !DILocation(line: 295, column: 5, scope: !5457)
!5476 = !DILocation(line: 295, column: 17, scope: !5457)
!5477 = !DILocation(line: 295, column: 28, scope: !5457)
!5478 = !DILocation(line: 296, column: 2, scope: !5457)
!5479 = !DILocation(line: 296, column: 6, scope: !5457)
!5480 = !DILocation(line: 298, column: 36, scope: !5457)
!5481 = !DILocation(line: 298, column: 41, scope: !5457)
!5482 = !DILocation(line: 298, column: 8, scope: !5457)
!5483 = !DILocation(line: 298, column: 6, scope: !5457)
!5484 = !DILocation(line: 299, column: 7, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5457, file: !2, line: 299, column: 6)
!5486 = !DILocation(line: 299, column: 11, scope: !5485)
!5487 = !DILocation(line: 299, column: 14, scope: !5485)
!5488 = !DILocation(line: 299, column: 6, scope: !5457)
!5489 = !DILocation(line: 301, column: 31, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5485, file: !2, line: 299, column: 21)
!5491 = !DILocation(line: 301, column: 36, scope: !5490)
!5492 = !DILocation(line: 301, column: 3, scope: !5490)
!5493 = !DILocation(line: 304, column: 10, scope: !5490)
!5494 = !DILocation(line: 304, column: 3, scope: !5490)
!5495 = !DILocation(line: 311, column: 11, scope: !5457)
!5496 = !DILocation(line: 311, column: 16, scope: !5457)
!5497 = !DILocation(line: 311, column: 21, scope: !5457)
!5498 = !DILocation(line: 311, column: 9, scope: !5457)
!5499 = !DILocation(line: 312, column: 2, scope: !5457)
!5500 = !DILocation(line: 312, column: 9, scope: !5457)
!5501 = !DILocation(line: 313, column: 35, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5457, file: !2, line: 312, column: 17)
!5503 = !DILocation(line: 313, column: 40, scope: !5502)
!5504 = !DILocation(line: 313, column: 9, scope: !5502)
!5505 = !DILocation(line: 313, column: 7, scope: !5502)
!5506 = !DILocation(line: 315, column: 8, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5502, file: !2, line: 315, column: 7)
!5508 = !DILocation(line: 315, column: 16, scope: !5507)
!5509 = !DILocation(line: 315, column: 22, scope: !5507)
!5510 = !DILocation(line: 315, column: 28, scope: !5507)
!5511 = !DILocation(line: 315, column: 7, scope: !5502)
!5512 = !DILocation(line: 317, column: 17, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5507, file: !2, line: 315, column: 57)
!5514 = !DILocation(line: 317, column: 25, scope: !5513)
!5515 = !DILocation(line: 317, column: 15, scope: !5513)
!5516 = !DILocation(line: 318, column: 9, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5513, file: !2, line: 318, column: 8)
!5518 = !DILocation(line: 318, column: 8, scope: !5513)
!5519 = !DILocation(line: 320, column: 5, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5517, file: !2, line: 318, column: 21)
!5521 = !DILocation(line: 322, column: 10, scope: !5513)
!5522 = !DILocation(line: 322, column: 8, scope: !5513)
!5523 = !DILocation(line: 323, column: 3, scope: !5513)
!5524 = !DILocation(line: 325, column: 37, scope: !5502)
!5525 = !DILocation(line: 325, column: 45, scope: !5502)
!5526 = !DILocation(line: 325, column: 9, scope: !5502)
!5527 = !DILocation(line: 325, column: 7, scope: !5502)
!5528 = !DILocation(line: 326, column: 8, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5502, file: !2, line: 326, column: 7)
!5530 = !DILocation(line: 326, column: 12, scope: !5529)
!5531 = !DILocation(line: 326, column: 15, scope: !5529)
!5532 = !DILocation(line: 326, column: 7, scope: !5502)
!5533 = !DILocation(line: 329, column: 11, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5529, file: !2, line: 326, column: 22)
!5535 = !DILocation(line: 329, column: 4, scope: !5534)
!5536 = !DILocation(line: 332, column: 9, scope: !5502)
!5537 = !DILocation(line: 332, column: 7, scope: !5502)
!5538 = !DILocation(line: 333, column: 12, scope: !5502)
!5539 = !DILocation(line: 333, column: 17, scope: !5502)
!5540 = !DILocation(line: 333, column: 22, scope: !5502)
!5541 = !DILocation(line: 333, column: 10, scope: !5502)
!5542 = distinct !{!5542, !5499, !5543, !5544, !5545}
!5543 = !DILocation(line: 334, column: 2, scope: !5457)
!5544 = !{!"llvm.loop.mustprogress"}
!5545 = !{!"llvm.loop.unroll.disable"}
!5546 = !DILocation(line: 336, column: 2, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5457, file: !2, line: 336, column: 2)
!5548 = !DILocation(line: 336, column: 2, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5547, file: !2, line: 336, column: 2)
!5550 = !DILocation(line: 338, column: 2, scope: !5457)
!5551 = !DILocation(line: 339, column: 1, scope: !5457)
!5552 = !DISubprogram(name: "acpi_pci_link_allocate_irq", scope: !5553, file: !5553, line: 53, type: !5554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5553 = !DIFile(filename: "./include/acpi/acpi_drivers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6273b05386994a65b3932c7b24a17050")
!5554 = !DISubroutineType(types: !5555)
!5555 = !{!136, !224, !136, !812, !812, !5556}
!5556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!5557 = distinct !DISubprogram(name: "acpi_pci_irq_valid", scope: !2, file: !2, line: 366, type: !5558, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !5560)
!5558 = !DISubroutineType(types: !5559)
!5559 = !{!248, !4994, !204}
!5560 = !{!5561, !5562}
!5561 = !DILocalVariable(name: "dev", arg: 1, scope: !5557, file: !2, line: 366, type: !4994)
!5562 = !DILocalVariable(name: "pin", arg: 2, scope: !5557, file: !2, line: 366, type: !204)
!5563 = !DILocation(line: 366, column: 55, scope: !5557)
!5564 = !DILocation(line: 366, column: 63, scope: !5557)
!5565 = !DILocation(line: 373, column: 6, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5557, file: !2, line: 373, column: 6)
!5567 = !DILocation(line: 373, column: 11, scope: !5566)
!5568 = !DILocation(line: 373, column: 15, scope: !5566)
!5569 = !DILocation(line: 373, column: 6, scope: !5557)
!5570 = !DILocation(line: 374, column: 3, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5566, file: !2, line: 373, column: 24)
!5572 = !DILocation(line: 374, column: 8, scope: !5571)
!5573 = !DILocation(line: 374, column: 12, scope: !5571)
!5574 = !DILocation(line: 375, column: 3, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5571, file: !2, line: 375, column: 3)
!5576 = !DILocation(line: 375, column: 3, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5575, file: !2, line: 375, column: 3)
!5578 = !DILocation(line: 377, column: 3, scope: !5571)
!5579 = !DILocation(line: 380, column: 2, scope: !5557)
!5580 = !DILocation(line: 381, column: 1, scope: !5557)
!5581 = !DISubprogram(name: "kfree", scope: !24, file: !24, line: 227, type: !5582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5582 = !DISubroutineType(types: !5583)
!5583 = !{null, !257}
!5584 = distinct !DISubprogram(name: "acpi_isa_register_gsi", scope: !2, file: !2, line: 360, type: !4992, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !5585)
!5585 = !{!5586}
!5586 = !DILocalVariable(name: "dev", arg: 1, scope: !5584, file: !2, line: 360, type: !4994)
!5587 = !DILocation(line: 360, column: 57, scope: !5584)
!5588 = !DILocation(line: 362, column: 2, scope: !5584)
!5589 = !DISubprogram(name: "_dev_warn", scope: !5590, file: !5590, line: 52, type: !5591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5590 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5591 = !DISubroutineType(types: !5592)
!5592 = !{null, !259, !268, null}
!5593 = distinct !DISubprogram(name: "pin_name", scope: !2, file: !2, line: 33, type: !5594, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !5596)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{!4, !136}
!5596 = !{!5597}
!5597 = !DILocalVariable(name: "pin", arg: 1, scope: !5593, file: !2, line: 33, type: !136)
!5598 = !DILocation(line: 33, column: 33, scope: !5593)
!5599 = !DILocation(line: 35, column: 15, scope: !5593)
!5600 = !DILocation(line: 35, column: 13, scope: !5593)
!5601 = !DILocation(line: 35, column: 19, scope: !5593)
!5602 = !DILocation(line: 35, column: 9, scope: !5593)
!5603 = !DILocation(line: 35, column: 2, scope: !5593)
!5604 = !DISubprogram(name: "acpi_register_gsi", scope: !175, file: !175, line: 347, type: !5605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5605 = !DISubroutineType(types: !5606)
!5606 = !{!136, !4192, !220, !136, !136}
!5607 = !DISubprogram(name: "snprintf", scope: !5608, file: !5608, line: 12, type: !5609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5608 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5609 = !DISubroutineType(types: !5610)
!5610 = !{!136, !349, !396, !268, null}
!5611 = distinct !DISubprogram(name: "acpi_pci_irq_disable", scope: !2, file: !2, line: 477, type: !5128, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !5612)
!5612 = !{!5613, !5614, !5615, !5616}
!5613 = !DILocalVariable(name: "dev", arg: 1, scope: !5611, file: !2, line: 477, type: !4994)
!5614 = !DILocalVariable(name: "entry", scope: !5611, file: !2, line: 479, type: !5292)
!5615 = !DILocalVariable(name: "gsi", scope: !5611, file: !2, line: 480, type: !136)
!5616 = !DILocalVariable(name: "pin", scope: !5611, file: !2, line: 481, type: !204)
!5617 = !DILocation(line: 477, column: 43, scope: !5611)
!5618 = !DILocation(line: 479, column: 2, scope: !5611)
!5619 = !DILocation(line: 479, column: 25, scope: !5611)
!5620 = !DILocation(line: 480, column: 2, scope: !5611)
!5621 = !DILocation(line: 480, column: 6, scope: !5611)
!5622 = !DILocation(line: 481, column: 2, scope: !5611)
!5623 = !DILocation(line: 481, column: 5, scope: !5611)
!5624 = !DILocation(line: 483, column: 8, scope: !5611)
!5625 = !DILocation(line: 483, column: 13, scope: !5611)
!5626 = !DILocation(line: 483, column: 6, scope: !5611)
!5627 = !DILocation(line: 484, column: 7, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5611, file: !2, line: 484, column: 6)
!5629 = !DILocation(line: 484, column: 11, scope: !5628)
!5630 = !DILocation(line: 484, column: 15, scope: !5628)
!5631 = !DILocation(line: 484, column: 20, scope: !5628)
!5632 = !DILocation(line: 484, column: 32, scope: !5628)
!5633 = !DILocation(line: 484, column: 35, scope: !5628)
!5634 = !DILocation(line: 484, column: 40, scope: !5628)
!5635 = !DILocation(line: 484, column: 44, scope: !5628)
!5636 = !DILocation(line: 484, column: 6, scope: !5611)
!5637 = !DILocation(line: 485, column: 3, scope: !5628)
!5638 = !DILocation(line: 488, column: 6, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5611, file: !2, line: 488, column: 6)
!5640 = !DILocation(line: 488, column: 11, scope: !5639)
!5641 = !DILocation(line: 488, column: 15, scope: !5639)
!5642 = !DILocation(line: 488, column: 21, scope: !5639)
!5643 = !DILocation(line: 488, column: 6, scope: !5611)
!5644 = !DILocation(line: 489, column: 3, scope: !5639)
!5645 = !DILocation(line: 491, column: 6, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5611, file: !2, line: 491, column: 6)
!5647 = !DILocation(line: 491, column: 11, scope: !5646)
!5648 = !DILocation(line: 491, column: 15, scope: !5646)
!5649 = !DILocation(line: 491, column: 21, scope: !5646)
!5650 = !DILocation(line: 491, column: 36, scope: !5646)
!5651 = !DILocation(line: 491, column: 6, scope: !5611)
!5652 = !DILocation(line: 492, column: 3, scope: !5646)
!5653 = !DILocation(line: 495, column: 30, scope: !5611)
!5654 = !DILocation(line: 495, column: 35, scope: !5611)
!5655 = !DILocation(line: 495, column: 10, scope: !5611)
!5656 = !DILocation(line: 495, column: 8, scope: !5611)
!5657 = !DILocation(line: 496, column: 7, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5611, file: !2, line: 496, column: 6)
!5659 = !DILocation(line: 496, column: 6, scope: !5611)
!5660 = !DILocation(line: 497, column: 3, scope: !5658)
!5661 = !DILocation(line: 499, column: 6, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5611, file: !2, line: 499, column: 6)
!5663 = !DILocation(line: 499, column: 13, scope: !5662)
!5664 = !DILocation(line: 499, column: 6, scope: !5611)
!5665 = !DILocation(line: 500, column: 32, scope: !5662)
!5666 = !DILocation(line: 500, column: 39, scope: !5662)
!5667 = !DILocation(line: 500, column: 9, scope: !5662)
!5668 = !DILocation(line: 500, column: 7, scope: !5662)
!5669 = !DILocation(line: 500, column: 3, scope: !5662)
!5670 = !DILocation(line: 502, column: 9, scope: !5662)
!5671 = !DILocation(line: 502, column: 16, scope: !5662)
!5672 = !DILocation(line: 502, column: 7, scope: !5662)
!5673 = !DILocation(line: 504, column: 8, scope: !5611)
!5674 = !DILocation(line: 504, column: 2, scope: !5611)
!5675 = !DILocation(line: 512, column: 6, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5611, file: !2, line: 512, column: 6)
!5677 = !DILocation(line: 512, column: 10, scope: !5676)
!5678 = !DILocation(line: 512, column: 6, scope: !5611)
!5679 = !DILocation(line: 513, column: 23, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5676, file: !2, line: 512, column: 16)
!5681 = !DILocation(line: 513, column: 3, scope: !5680)
!5682 = !DILocation(line: 514, column: 3, scope: !5680)
!5683 = !DILocation(line: 514, column: 8, scope: !5680)
!5684 = !DILocation(line: 514, column: 20, scope: !5680)
!5685 = !DILocation(line: 515, column: 2, scope: !5680)
!5686 = !DILocation(line: 516, column: 1, scope: !5611)
!5687 = !DISubprogram(name: "acpi_pci_link_free_irq", scope: !5553, file: !5553, line: 55, type: !5688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5688 = !DISubroutineType(types: !5689)
!5689 = !{!136, !224}
!5690 = !DISubprogram(name: "acpi_unregister_gsi", scope: !175, file: !175, line: 374, type: !5691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{null, !220}
!5693 = distinct !DISubprogram(name: "acpi_pci_irq_find_prt_entry", scope: !2, file: !2, line: 199, type: !5694, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !5697)
!5694 = !DISubroutineType(types: !5695)
!5695 = !{!136, !4994, !136, !5696}
!5696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5292, size: 64)
!5697 = !{!5698, !5699, !5700, !5701, !5703, !5708, !5709, !5710, !5713}
!5698 = !DILocalVariable(name: "dev", arg: 1, scope: !5693, file: !2, line: 199, type: !4994)
!5699 = !DILocalVariable(name: "pin", arg: 2, scope: !5693, file: !2, line: 200, type: !136)
!5700 = !DILocalVariable(name: "entry_ptr", arg: 3, scope: !5693, file: !2, line: 200, type: !5696)
!5701 = !DILocalVariable(name: "status", scope: !5693, file: !2, line: 202, type: !5702)
!5702 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !210, line: 421, baseType: !220)
!5703 = !DILocalVariable(name: "buffer", scope: !5693, file: !2, line: 203, type: !5704)
!5704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !210, line: 978, size: 128, elements: !5705)
!5705 = !{!5706, !5707}
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5704, file: !210, line: 979, baseType: !209, size: 64)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5704, file: !210, line: 980, baseType: !214, size: 64, offset: 64)
!5708 = !DILocalVariable(name: "entry", scope: !5693, file: !2, line: 204, type: !4874)
!5709 = !DILocalVariable(name: "handle", scope: !5693, file: !2, line: 205, type: !224)
!5710 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !5711, file: !2, line: 208, type: !230)
!5711 = distinct !DILexicalBlock(scope: !5712, file: !2, line: 208, column: 12)
!5712 = distinct !DILexicalBlock(scope: !5693, file: !2, line: 207, column: 6)
!5713 = !DILocalVariable(name: "__mptr", scope: !5714, file: !2, line: 208, type: !214)
!5714 = distinct !DILexicalBlock(scope: !5711, file: !2, line: 208, column: 12)
!5715 = !DILocation(line: 199, column: 56, scope: !5693)
!5716 = !DILocation(line: 200, column: 10, scope: !5693)
!5717 = !DILocation(line: 200, column: 39, scope: !5693)
!5718 = !DILocation(line: 202, column: 2, scope: !5693)
!5719 = !DILocation(line: 202, column: 14, scope: !5693)
!5720 = !DILocation(line: 203, column: 2, scope: !5693)
!5721 = !DILocation(line: 203, column: 21, scope: !5693)
!5722 = !DILocation(line: 204, column: 2, scope: !5693)
!5723 = !DILocation(line: 204, column: 33, scope: !5693)
!5724 = !DILocation(line: 205, column: 2, scope: !5693)
!5725 = !DILocation(line: 205, column: 14, scope: !5693)
!5726 = !DILocation(line: 207, column: 6, scope: !5712)
!5727 = !DILocation(line: 207, column: 11, scope: !5712)
!5728 = !DILocation(line: 207, column: 16, scope: !5712)
!5729 = !DILocation(line: 207, column: 6, scope: !5693)
!5730 = !DILocation(line: 208, column: 12, scope: !5711)
!5731 = !DILocation(line: 208, column: 12, scope: !5714)
!5732 = !DILocation(line: 208, column: 12, scope: !5712)
!5733 = !DILocation(line: 208, column: 10, scope: !5712)
!5734 = !DILocation(line: 208, column: 3, scope: !5712)
!5735 = !DILocation(line: 210, column: 7, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5693, file: !2, line: 210, column: 6)
!5737 = !DILocation(line: 210, column: 6, scope: !5693)
!5738 = !DILocation(line: 211, column: 3, scope: !5736)
!5739 = !DILocation(line: 214, column: 38, scope: !5693)
!5740 = !DILocation(line: 214, column: 11, scope: !5693)
!5741 = !DILocation(line: 214, column: 9, scope: !5693)
!5742 = !DILocation(line: 215, column: 6, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5693, file: !2, line: 215, column: 6)
!5744 = !DILocation(line: 215, column: 6, scope: !5693)
!5745 = !DILocation(line: 216, column: 16, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5743, file: !2, line: 215, column: 28)
!5747 = !DILocation(line: 216, column: 3, scope: !5746)
!5748 = !DILocation(line: 217, column: 3, scope: !5746)
!5749 = !DILocation(line: 220, column: 17, scope: !5693)
!5750 = !DILocation(line: 220, column: 8, scope: !5693)
!5751 = !DILocation(line: 221, column: 2, scope: !5693)
!5752 = !DILocation(line: 221, column: 9, scope: !5693)
!5753 = !DILocation(line: 221, column: 15, scope: !5693)
!5754 = !DILocation(line: 221, column: 19, scope: !5693)
!5755 = !DILocation(line: 221, column: 26, scope: !5693)
!5756 = !DILocation(line: 221, column: 33, scope: !5693)
!5757 = !DILocation(line: 0, scope: !5693)
!5758 = !DILocation(line: 222, column: 33, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5760, file: !2, line: 222, column: 7)
!5760 = distinct !DILexicalBlock(scope: !5693, file: !2, line: 221, column: 39)
!5761 = !DILocation(line: 222, column: 41, scope: !5759)
!5762 = !DILocation(line: 222, column: 46, scope: !5759)
!5763 = !DILocation(line: 223, column: 8, scope: !5759)
!5764 = !DILocation(line: 223, column: 15, scope: !5759)
!5765 = !DILocation(line: 222, column: 8, scope: !5759)
!5766 = !DILocation(line: 222, column: 7, scope: !5760)
!5767 = !DILocation(line: 224, column: 4, scope: !5759)
!5768 = !DILocation(line: 226, column: 23, scope: !5760)
!5769 = !DILocation(line: 226, column: 8, scope: !5760)
!5770 = !DILocation(line: 226, column: 31, scope: !5760)
!5771 = !DILocation(line: 226, column: 38, scope: !5760)
!5772 = !DILocation(line: 226, column: 29, scope: !5760)
!5773 = !DILocation(line: 225, column: 11, scope: !5760)
!5774 = !DILocation(line: 225, column: 9, scope: !5760)
!5775 = distinct !{!5775, !5751, !5776, !5544, !5545}
!5776 = !DILocation(line: 227, column: 2, scope: !5693)
!5777 = !DILocation(line: 229, column: 15, scope: !5693)
!5778 = !DILocation(line: 229, column: 2, scope: !5693)
!5779 = !DILocation(line: 230, column: 2, scope: !5693)
!5780 = !DILocation(line: 231, column: 1, scope: !5693)
!5781 = distinct !DISubprogram(name: "acpi_reroute_boot_interrupt", scope: !2, file: !2, line: 260, type: !5782, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !5784)
!5782 = !DISubroutineType(types: !5783)
!5783 = !{!136, !4994, !5292}
!5784 = !{!5785, !5786}
!5785 = !DILocalVariable(name: "dev", arg: 1, scope: !5781, file: !2, line: 260, type: !4994)
!5786 = !DILocalVariable(name: "entry", arg: 2, scope: !5781, file: !2, line: 261, type: !5292)
!5787 = !DILocation(line: 260, column: 56, scope: !5781)
!5788 = !DILocation(line: 261, column: 35, scope: !5781)
!5789 = !DILocation(line: 263, column: 6, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5781, file: !2, line: 263, column: 6)
!5791 = !DILocation(line: 263, column: 20, scope: !5790)
!5792 = !DILocation(line: 263, column: 23, scope: !5790)
!5793 = !DILocation(line: 263, column: 6, scope: !5781)
!5794 = !DILocation(line: 264, column: 3, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5790, file: !2, line: 263, column: 40)
!5796 = !DILocation(line: 266, column: 45, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5790, file: !2, line: 265, column: 9)
!5798 = !DILocation(line: 266, column: 50, scope: !5797)
!5799 = !DILocation(line: 266, column: 11, scope: !5797)
!5800 = !DILocation(line: 266, column: 3, scope: !5797)
!5801 = !DILocation(line: 269, column: 4, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5797, file: !2, line: 266, column: 56)
!5803 = !DILocation(line: 277, column: 4, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5802, file: !2, line: 277, column: 4)
!5805 = !DILocation(line: 277, column: 4, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5804, file: !2, line: 277, column: 4)
!5807 = !DILocation(line: 280, column: 20, scope: !5802)
!5808 = !DILocation(line: 280, column: 27, scope: !5802)
!5809 = !DILocation(line: 280, column: 33, scope: !5802)
!5810 = !DILocation(line: 280, column: 38, scope: !5802)
!5811 = !DILocation(line: 280, column: 4, scope: !5802)
!5812 = !DILocation(line: 280, column: 11, scope: !5802)
!5813 = !DILocation(line: 280, column: 17, scope: !5802)
!5814 = !DILocation(line: 281, column: 4, scope: !5802)
!5815 = !DILocation(line: 283, column: 4, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5802, file: !2, line: 283, column: 4)
!5817 = !DILocation(line: 283, column: 4, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5816, file: !2, line: 283, column: 4)
!5819 = !DILocation(line: 285, column: 4, scope: !5802)
!5820 = !DILocation(line: 288, column: 1, scope: !5781)
!5821 = !DISubprogram(name: "pci_swizzle_interrupt_pin", scope: !199, file: !199, line: 1144, type: !5822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5822 = !DISubroutineType(types: !5823)
!5823 = !{!204, !5824, !204}
!5824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5825, size: 64)
!5825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4995)
!5826 = distinct !DISubprogram(name: "acpi_device_handle", scope: !175, file: !175, line: 40, type: !5827, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !5829)
!5827 = !DISubroutineType(types: !5828)
!5828 = !{!224, !215}
!5829 = !{!5830}
!5830 = !DILocalVariable(name: "adev", arg: 1, scope: !5826, file: !175, line: 40, type: !215)
!5831 = !DILocation(line: 40, column: 66, scope: !5826)
!5832 = !DILocation(line: 42, column: 9, scope: !5826)
!5833 = !DILocation(line: 42, column: 16, scope: !5826)
!5834 = !DILocation(line: 42, column: 22, scope: !5826)
!5835 = !DILocation(line: 42, column: 2, scope: !5826)
!5836 = !DISubprogram(name: "is_acpi_device_node", scope: !217, file: !217, line: 410, type: !246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5837 = !DISubprogram(name: "acpi_get_irq_routing_table", scope: !5838, file: !5838, line: 827, type: !5839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5838 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!5839 = !DISubroutineType(types: !5840)
!5840 = !{!5702, !224, !5841}
!5841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5704, size: 64)
!5842 = distinct !DISubprogram(name: "acpi_pci_irq_check_entry", scope: !2, file: !2, line: 136, type: !5843, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !5845)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{!136, !224, !4994, !136, !4874, !5696}
!5845 = !{!5846, !5847, !5848, !5849, !5850, !5851, !5852, !5853, !5854}
!5846 = !DILocalVariable(name: "handle", arg: 1, scope: !5842, file: !2, line: 136, type: !224)
!5847 = !DILocalVariable(name: "dev", arg: 2, scope: !5842, file: !2, line: 136, type: !4994)
!5848 = !DILocalVariable(name: "pin", arg: 3, scope: !5842, file: !2, line: 137, type: !136)
!5849 = !DILocalVariable(name: "prt", arg: 4, scope: !5842, file: !2, line: 137, type: !4874)
!5850 = !DILocalVariable(name: "entry_ptr", arg: 5, scope: !5842, file: !2, line: 138, type: !5696)
!5851 = !DILocalVariable(name: "segment", scope: !5842, file: !2, line: 140, type: !136)
!5852 = !DILocalVariable(name: "bus", scope: !5842, file: !2, line: 141, type: !136)
!5853 = !DILocalVariable(name: "device", scope: !5842, file: !2, line: 142, type: !136)
!5854 = !DILocalVariable(name: "entry", scope: !5842, file: !2, line: 143, type: !5292)
!5855 = !DILocation(line: 136, column: 49, scope: !5842)
!5856 = !DILocation(line: 136, column: 73, scope: !5842)
!5857 = !DILocation(line: 137, column: 11, scope: !5842)
!5858 = !DILocation(line: 137, column: 47, scope: !5842)
!5859 = !DILocation(line: 138, column: 31, scope: !5842)
!5860 = !DILocation(line: 140, column: 2, scope: !5842)
!5861 = !DILocation(line: 140, column: 6, scope: !5842)
!5862 = !DILocation(line: 140, column: 30, scope: !5842)
!5863 = !DILocation(line: 140, column: 35, scope: !5842)
!5864 = !DILocation(line: 140, column: 16, scope: !5842)
!5865 = !DILocation(line: 141, column: 2, scope: !5842)
!5866 = !DILocation(line: 141, column: 6, scope: !5842)
!5867 = !DILocation(line: 141, column: 12, scope: !5842)
!5868 = !DILocation(line: 141, column: 17, scope: !5842)
!5869 = !DILocation(line: 141, column: 22, scope: !5842)
!5870 = !DILocation(line: 142, column: 2, scope: !5842)
!5871 = !DILocation(line: 142, column: 6, scope: !5842)
!5872 = !DILocation(line: 142, column: 31, scope: !5842)
!5873 = !DILocation(line: 142, column: 36, scope: !5842)
!5874 = !DILocation(line: 142, column: 15, scope: !5842)
!5875 = !DILocation(line: 142, column: 47, scope: !5842)
!5876 = !DILocation(line: 143, column: 2, scope: !5842)
!5877 = !DILocation(line: 143, column: 25, scope: !5842)
!5878 = !DILocation(line: 145, column: 8, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5842, file: !2, line: 145, column: 6)
!5880 = !DILocation(line: 145, column: 13, scope: !5879)
!5881 = !DILocation(line: 145, column: 21, scope: !5879)
!5882 = !DILocation(line: 145, column: 28, scope: !5879)
!5883 = !DILocation(line: 145, column: 41, scope: !5879)
!5884 = !DILocation(line: 145, column: 38, scope: !5879)
!5885 = !DILocation(line: 145, column: 48, scope: !5879)
!5886 = !DILocation(line: 146, column: 6, scope: !5879)
!5887 = !DILocation(line: 146, column: 11, scope: !5879)
!5888 = !DILocation(line: 146, column: 15, scope: !5879)
!5889 = !DILocation(line: 146, column: 22, scope: !5879)
!5890 = !DILocation(line: 146, column: 19, scope: !5879)
!5891 = !DILocation(line: 145, column: 6, scope: !5842)
!5892 = !DILocation(line: 147, column: 3, scope: !5879)
!5893 = !DILocation(line: 149, column: 10, scope: !5842)
!5894 = !DILocation(line: 149, column: 8, scope: !5842)
!5895 = !DILocation(line: 150, column: 7, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5842, file: !2, line: 150, column: 6)
!5897 = !DILocation(line: 150, column: 6, scope: !5842)
!5898 = !DILocation(line: 151, column: 3, scope: !5896)
!5899 = !DILocation(line: 158, column: 22, scope: !5842)
!5900 = !DILocation(line: 158, column: 2, scope: !5842)
!5901 = !DILocation(line: 158, column: 9, scope: !5842)
!5902 = !DILocation(line: 158, column: 12, scope: !5842)
!5903 = !DILocation(line: 158, column: 20, scope: !5842)
!5904 = !DILocation(line: 159, column: 18, scope: !5842)
!5905 = !DILocation(line: 159, column: 2, scope: !5842)
!5906 = !DILocation(line: 159, column: 9, scope: !5842)
!5907 = !DILocation(line: 159, column: 12, scope: !5842)
!5908 = !DILocation(line: 159, column: 16, scope: !5842)
!5909 = !DILocation(line: 160, column: 22, scope: !5842)
!5910 = !DILocation(line: 160, column: 27, scope: !5842)
!5911 = !DILocation(line: 160, column: 35, scope: !5842)
!5912 = !DILocation(line: 160, column: 42, scope: !5842)
!5913 = !DILocation(line: 160, column: 21, scope: !5842)
!5914 = !DILocation(line: 160, column: 2, scope: !5842)
!5915 = !DILocation(line: 160, column: 9, scope: !5842)
!5916 = !DILocation(line: 160, column: 12, scope: !5842)
!5917 = !DILocation(line: 160, column: 19, scope: !5842)
!5918 = !DILocation(line: 161, column: 15, scope: !5842)
!5919 = !DILocation(line: 161, column: 20, scope: !5842)
!5920 = !DILocation(line: 161, column: 24, scope: !5842)
!5921 = !DILocation(line: 161, column: 2, scope: !5842)
!5922 = !DILocation(line: 161, column: 9, scope: !5842)
!5923 = !DILocation(line: 161, column: 13, scope: !5842)
!5924 = !DILocation(line: 163, column: 16, scope: !5842)
!5925 = !DILocation(line: 163, column: 23, scope: !5842)
!5926 = !DILocation(line: 163, column: 2, scope: !5842)
!5927 = !DILocation(line: 165, column: 17, scope: !5842)
!5928 = !DILocation(line: 165, column: 22, scope: !5842)
!5929 = !DILocation(line: 165, column: 2, scope: !5842)
!5930 = !DILocation(line: 165, column: 9, scope: !5842)
!5931 = !DILocation(line: 165, column: 15, scope: !5842)
!5932 = !DILocation(line: 180, column: 6, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5842, file: !2, line: 180, column: 6)
!5934 = !DILocation(line: 180, column: 11, scope: !5933)
!5935 = !DILocation(line: 180, column: 6, scope: !5842)
!5936 = !DILocation(line: 181, column: 19, scope: !5933)
!5937 = !DILocation(line: 181, column: 27, scope: !5933)
!5938 = !DILocation(line: 181, column: 32, scope: !5933)
!5939 = !DILocation(line: 181, column: 41, scope: !5933)
!5940 = !DILocation(line: 181, column: 48, scope: !5933)
!5941 = !DILocation(line: 181, column: 3, scope: !5933)
!5942 = !DILocation(line: 190, column: 2, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 190, column: 2)
!5944 = distinct !DILexicalBlock(scope: !5842, file: !2, line: 190, column: 2)
!5945 = !DILocation(line: 190, column: 2, scope: !5944)
!5946 = !DILocation(line: 194, column: 15, scope: !5842)
!5947 = !DILocation(line: 194, column: 3, scope: !5842)
!5948 = !DILocation(line: 194, column: 13, scope: !5842)
!5949 = !DILocation(line: 196, column: 2, scope: !5842)
!5950 = !DILocation(line: 197, column: 1, scope: !5842)
!5951 = distinct !DISubprogram(name: "pci_domain_nr", scope: !5952, file: !5952, line: 44, type: !5031, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !5953)
!5952 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0155599d2137220fade7406d4b759f43")
!5953 = !{!5954}
!5954 = !DILocalVariable(name: "bus", arg: 1, scope: !5951, file: !5952, line: 44, type: !4999)
!5955 = !DILocation(line: 44, column: 49, scope: !5951)
!5956 = !DILocation(line: 46, column: 24, scope: !5951)
!5957 = !DILocation(line: 46, column: 9, scope: !5951)
!5958 = !DILocation(line: 46, column: 30, scope: !5951)
!5959 = !DILocation(line: 46, column: 2, scope: !5951)
!5960 = distinct !DISubprogram(name: "pci_ari_enabled", scope: !199, file: !199, line: 2619, type: !5961, scopeLine: 2620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !5963)
!5961 = !DISubroutineType(types: !5962)
!5962 = !{!248, !4999}
!5963 = !{!5964}
!5964 = !DILocalVariable(name: "bus", arg: 1, scope: !5960, file: !199, line: 2619, type: !4999)
!5965 = !DILocation(line: 2619, column: 52, scope: !5960)
!5966 = !DILocation(line: 2621, column: 9, scope: !5960)
!5967 = !DILocation(line: 2621, column: 14, scope: !5960)
!5968 = !DILocation(line: 2621, column: 19, scope: !5960)
!5969 = !DILocation(line: 2621, column: 22, scope: !5960)
!5970 = !DILocation(line: 2621, column: 27, scope: !5960)
!5971 = !DILocation(line: 2621, column: 33, scope: !5960)
!5972 = !DILocation(line: 0, scope: !5960)
!5973 = !DILocation(line: 2621, column: 2, scope: !5960)
!5974 = distinct !DISubprogram(name: "kzalloc", scope: !24, file: !24, line: 719, type: !5975, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !5977)
!5975 = !DISubroutineType(types: !5976)
!5976 = !{!214, !396, !1197}
!5977 = !{!5978, !5979}
!5978 = !DILocalVariable(name: "size", arg: 1, scope: !5974, file: !24, line: 719, type: !396)
!5979 = !DILocalVariable(name: "flags", arg: 2, scope: !5974, file: !24, line: 719, type: !1197)
!5980 = !DILocation(line: 719, column: 52, scope: !5974)
!5981 = !DILocation(line: 719, column: 64, scope: !5974)
!5982 = !DILocation(line: 721, column: 17, scope: !5974)
!5983 = !DILocation(line: 721, column: 23, scope: !5974)
!5984 = !DILocation(line: 721, column: 29, scope: !5974)
!5985 = !DILocation(line: 721, column: 9, scope: !5974)
!5986 = !DILocation(line: 721, column: 2, scope: !5974)
!5987 = distinct !DISubprogram(name: "do_prt_fixups", scope: !2, file: !2, line: 108, type: !5988, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !5990)
!5988 = !DISubroutineType(types: !5989)
!5989 = !{null, !5292, !4874}
!5990 = !{!5991, !5992, !5993, !5994}
!5991 = !DILocalVariable(name: "entry", arg: 1, scope: !5987, file: !2, line: 108, type: !5292)
!5992 = !DILocalVariable(name: "prt", arg: 2, scope: !5987, file: !2, line: 109, type: !4874)
!5993 = !DILocalVariable(name: "i", scope: !5987, file: !2, line: 111, type: !136)
!5994 = !DILocalVariable(name: "quirk", scope: !5987, file: !2, line: 112, type: !5995)
!5995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!5996 = !DILocation(line: 108, column: 50, scope: !5987)
!5997 = !DILocation(line: 109, column: 37, scope: !5987)
!5998 = !DILocation(line: 111, column: 2, scope: !5987)
!5999 = !DILocation(line: 111, column: 6, scope: !5987)
!6000 = !DILocation(line: 112, column: 2, scope: !5987)
!6001 = !DILocation(line: 112, column: 26, scope: !5987)
!6002 = !DILocation(line: 114, column: 9, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5987, file: !2, line: 114, column: 2)
!6004 = !DILocation(line: 114, column: 7, scope: !6003)
!6005 = !DILocation(line: 114, column: 14, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !6003, file: !2, line: 114, column: 2)
!6007 = !DILocation(line: 114, column: 16, scope: !6006)
!6008 = !DILocation(line: 114, column: 2, scope: !6003)
!6009 = !DILocation(line: 115, column: 23, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !6006, file: !2, line: 114, column: 47)
!6011 = !DILocation(line: 115, column: 12, scope: !6010)
!6012 = !DILocation(line: 115, column: 9, scope: !6010)
!6013 = !DILocation(line: 118, column: 24, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !6010, file: !2, line: 118, column: 7)
!6015 = !DILocation(line: 118, column: 31, scope: !6014)
!6016 = !DILocation(line: 118, column: 7, scope: !6014)
!6017 = !DILocation(line: 118, column: 39, scope: !6014)
!6018 = !DILocation(line: 119, column: 7, scope: !6014)
!6019 = !DILocation(line: 119, column: 14, scope: !6014)
!6020 = !DILocation(line: 119, column: 17, scope: !6014)
!6021 = !DILocation(line: 119, column: 28, scope: !6014)
!6022 = !DILocation(line: 119, column: 35, scope: !6014)
!6023 = !DILocation(line: 119, column: 25, scope: !6014)
!6024 = !DILocation(line: 119, column: 43, scope: !6014)
!6025 = !DILocation(line: 120, column: 7, scope: !6014)
!6026 = !DILocation(line: 120, column: 14, scope: !6014)
!6027 = !DILocation(line: 120, column: 17, scope: !6014)
!6028 = !DILocation(line: 120, column: 24, scope: !6014)
!6029 = !DILocation(line: 120, column: 31, scope: !6014)
!6030 = !DILocation(line: 120, column: 21, scope: !6014)
!6031 = !DILocation(line: 120, column: 35, scope: !6014)
!6032 = !DILocation(line: 121, column: 7, scope: !6014)
!6033 = !DILocation(line: 121, column: 14, scope: !6014)
!6034 = !DILocation(line: 121, column: 17, scope: !6014)
!6035 = !DILocation(line: 121, column: 27, scope: !6014)
!6036 = !DILocation(line: 121, column: 34, scope: !6014)
!6037 = !DILocation(line: 121, column: 24, scope: !6014)
!6038 = !DILocation(line: 121, column: 41, scope: !6014)
!6039 = !DILocation(line: 122, column: 7, scope: !6014)
!6040 = !DILocation(line: 122, column: 14, scope: !6014)
!6041 = !DILocation(line: 122, column: 21, scope: !6014)
!6042 = !DILocation(line: 122, column: 28, scope: !6014)
!6043 = !DILocation(line: 122, column: 18, scope: !6014)
!6044 = !DILocation(line: 122, column: 32, scope: !6014)
!6045 = !DILocation(line: 123, column: 15, scope: !6014)
!6046 = !DILocation(line: 123, column: 20, scope: !6014)
!6047 = !DILocation(line: 123, column: 28, scope: !6014)
!6048 = !DILocation(line: 123, column: 35, scope: !6014)
!6049 = !DILocation(line: 123, column: 8, scope: !6014)
!6050 = !DILocation(line: 123, column: 43, scope: !6014)
!6051 = !DILocation(line: 124, column: 14, scope: !6014)
!6052 = !DILocation(line: 124, column: 19, scope: !6014)
!6053 = !DILocation(line: 124, column: 7, scope: !6014)
!6054 = !DILocation(line: 124, column: 37, scope: !6014)
!6055 = !DILocation(line: 124, column: 44, scope: !6014)
!6056 = !DILocation(line: 124, column: 30, scope: !6014)
!6057 = !DILocation(line: 124, column: 27, scope: !6014)
!6058 = !DILocation(line: 118, column: 7, scope: !6010)
!6059 = !DILocation(line: 125, column: 4, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6061, file: !2, line: 125, column: 4)
!6061 = distinct !DILexicalBlock(scope: !6014, file: !2, line: 124, column: 60)
!6062 = !DILocation(line: 125, column: 4, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6060, file: !2, line: 125, column: 4)
!6064 = !DILocation(line: 131, column: 11, scope: !6061)
!6065 = !DILocation(line: 131, column: 16, scope: !6061)
!6066 = !DILocation(line: 131, column: 24, scope: !6061)
!6067 = !DILocation(line: 131, column: 31, scope: !6061)
!6068 = !DILocation(line: 131, column: 4, scope: !6061)
!6069 = !DILocation(line: 132, column: 3, scope: !6061)
!6070 = !DILocation(line: 133, column: 2, scope: !6010)
!6071 = !DILocation(line: 114, column: 43, scope: !6006)
!6072 = !DILocation(line: 114, column: 2, scope: !6006)
!6073 = distinct !{!6073, !6008, !6074, !5544, !5545}
!6074 = !DILocation(line: 133, column: 2, scope: !6003)
!6075 = !DILocation(line: 134, column: 1, scope: !5987)
!6076 = !DISubprogram(name: "acpi_get_handle", scope: !5838, file: !5838, line: 527, type: !6077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6077 = !DISubroutineType(types: !6078)
!6078 = !{!5702, !224, !268, !6079}
!6079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!6080 = distinct !DISubprogram(name: "to_pci_sysdata", scope: !5952, file: !5952, line: 36, type: !6081, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !6093)
!6081 = !DISubroutineType(types: !6082)
!6082 = !{!6083, !6091}
!6083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6084, size: 64)
!6084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sysdata", file: !5952, line: 15, size: 256, elements: !6085)
!6085 = !{!6086, !6087, !6088, !6089, !6090}
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !6084, file: !5952, line: 16, baseType: !136, size: 32)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6084, file: !5952, line: 17, baseType: !136, size: 32, offset: 32)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "companion", scope: !6084, file: !5952, line: 19, baseType: !215, size: 64, offset: 64)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !6084, file: !5952, line: 22, baseType: !214, size: 64, offset: 128)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !6084, file: !5952, line: 25, baseType: !214, size: 64, offset: 192)
!6091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6092, size: 64)
!6092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5000)
!6093 = !{!6094}
!6094 = !DILocalVariable(name: "bus", arg: 1, scope: !6080, file: !5952, line: 36, type: !6091)
!6095 = !DILocation(line: 36, column: 72, scope: !6080)
!6096 = !DILocation(line: 38, column: 9, scope: !6080)
!6097 = !DILocation(line: 38, column: 14, scope: !6080)
!6098 = !DILocation(line: 38, column: 2, scope: !6080)
!6099 = distinct !DISubprogram(name: "kmalloc", scope: !24, file: !24, line: 591, type: !5975, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !6100)
!6100 = !{!6101, !6102, !6103}
!6101 = !DILocalVariable(name: "size", arg: 1, scope: !6099, file: !24, line: 591, type: !396)
!6102 = !DILocalVariable(name: "flags", arg: 2, scope: !6099, file: !24, line: 591, type: !1197)
!6103 = !DILocalVariable(name: "index", scope: !6104, file: !24, line: 594, type: !34)
!6104 = distinct !DILexicalBlock(scope: !6105, file: !24, line: 593, column: 42)
!6105 = distinct !DILexicalBlock(scope: !6099, file: !24, line: 593, column: 6)
!6106 = !DILocation(line: 591, column: 61, scope: !6099)
!6107 = !DILocation(line: 591, column: 73, scope: !6099)
!6108 = !DILocation(line: 593, column: 27, scope: !6105)
!6109 = !DILocation(line: 593, column: 6, scope: !6105)
!6110 = !DILocation(line: 593, column: 33, scope: !6105)
!6111 = !DILocation(line: 593, column: 36, scope: !6105)
!6112 = !DILocation(line: 593, column: 6, scope: !6099)
!6113 = !DILocation(line: 594, column: 3, scope: !6104)
!6114 = !DILocation(line: 594, column: 16, scope: !6104)
!6115 = !DILocation(line: 596, column: 7, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6104, file: !24, line: 596, column: 7)
!6117 = !DILocation(line: 596, column: 12, scope: !6116)
!6118 = !DILocation(line: 596, column: 7, scope: !6104)
!6119 = !DILocation(line: 597, column: 25, scope: !6116)
!6120 = !DILocation(line: 597, column: 31, scope: !6116)
!6121 = !DILocation(line: 597, column: 11, scope: !6116)
!6122 = !DILocation(line: 597, column: 4, scope: !6116)
!6123 = !DILocation(line: 599, column: 11, scope: !6104)
!6124 = !DILocation(line: 599, column: 9, scope: !6104)
!6125 = !DILocation(line: 601, column: 33, scope: !6104)
!6126 = !DILocation(line: 601, column: 40, scope: !6104)
!6127 = !DILocation(line: 601, column: 20, scope: !6104)
!6128 = !DILocation(line: 601, column: 5, scope: !6104)
!6129 = !DILocation(line: 601, column: 51, scope: !6104)
!6130 = !DILocation(line: 602, column: 5, scope: !6104)
!6131 = !DILocation(line: 602, column: 12, scope: !6104)
!6132 = !DILocation(line: 600, column: 10, scope: !6104)
!6133 = !DILocation(line: 600, column: 3, scope: !6104)
!6134 = !DILocation(line: 603, column: 2, scope: !6105)
!6135 = !DILocation(line: 604, column: 19, scope: !6099)
!6136 = !DILocation(line: 604, column: 25, scope: !6099)
!6137 = !DILocation(line: 604, column: 9, scope: !6099)
!6138 = !DILocation(line: 604, column: 2, scope: !6099)
!6139 = !DILocation(line: 605, column: 1, scope: !6099)
!6140 = !DISubprogram(name: "kmalloc_large", scope: !24, file: !24, line: 531, type: !5975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6141 = distinct !DISubprogram(name: "__kmalloc_index", scope: !24, file: !24, line: 444, type: !6142, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !6144)
!6142 = !DISubroutineType(types: !6143)
!6143 = !{!34, !396, !248}
!6144 = !{!6145, !6146}
!6145 = !DILocalVariable(name: "size", arg: 1, scope: !6141, file: !24, line: 444, type: !396)
!6146 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6141, file: !24, line: 445, type: !248)
!6147 = !DILocation(line: 444, column: 60, scope: !6141)
!6148 = !DILocation(line: 445, column: 16, scope: !6141)
!6149 = !DILocation(line: 447, column: 7, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 447, column: 6)
!6151 = !DILocation(line: 447, column: 6, scope: !6141)
!6152 = !DILocation(line: 448, column: 3, scope: !6150)
!6153 = !DILocation(line: 450, column: 6, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 450, column: 6)
!6155 = !DILocation(line: 450, column: 11, scope: !6154)
!6156 = !DILocation(line: 450, column: 6, scope: !6141)
!6157 = !DILocation(line: 451, column: 3, scope: !6154)
!6158 = !DILocation(line: 453, column: 32, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 453, column: 6)
!6160 = !DILocation(line: 453, column: 37, scope: !6159)
!6161 = !DILocation(line: 453, column: 42, scope: !6159)
!6162 = !DILocation(line: 453, column: 45, scope: !6159)
!6163 = !DILocation(line: 453, column: 50, scope: !6159)
!6164 = !DILocation(line: 453, column: 6, scope: !6141)
!6165 = !DILocation(line: 454, column: 3, scope: !6159)
!6166 = !DILocation(line: 455, column: 32, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 455, column: 6)
!6168 = !DILocation(line: 455, column: 37, scope: !6167)
!6169 = !DILocation(line: 455, column: 43, scope: !6167)
!6170 = !DILocation(line: 455, column: 46, scope: !6167)
!6171 = !DILocation(line: 455, column: 51, scope: !6167)
!6172 = !DILocation(line: 455, column: 6, scope: !6141)
!6173 = !DILocation(line: 456, column: 3, scope: !6167)
!6174 = !DILocation(line: 457, column: 6, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 457, column: 6)
!6176 = !DILocation(line: 457, column: 11, scope: !6175)
!6177 = !DILocation(line: 457, column: 6, scope: !6141)
!6178 = !DILocation(line: 457, column: 26, scope: !6175)
!6179 = !DILocation(line: 458, column: 6, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 458, column: 6)
!6181 = !DILocation(line: 458, column: 11, scope: !6180)
!6182 = !DILocation(line: 458, column: 6, scope: !6141)
!6183 = !DILocation(line: 458, column: 26, scope: !6180)
!6184 = !DILocation(line: 459, column: 6, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 459, column: 6)
!6186 = !DILocation(line: 459, column: 11, scope: !6185)
!6187 = !DILocation(line: 459, column: 6, scope: !6141)
!6188 = !DILocation(line: 459, column: 26, scope: !6185)
!6189 = !DILocation(line: 460, column: 6, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 460, column: 6)
!6191 = !DILocation(line: 460, column: 11, scope: !6190)
!6192 = !DILocation(line: 460, column: 6, scope: !6141)
!6193 = !DILocation(line: 460, column: 26, scope: !6190)
!6194 = !DILocation(line: 461, column: 6, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 461, column: 6)
!6196 = !DILocation(line: 461, column: 11, scope: !6195)
!6197 = !DILocation(line: 461, column: 6, scope: !6141)
!6198 = !DILocation(line: 461, column: 26, scope: !6195)
!6199 = !DILocation(line: 462, column: 6, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 462, column: 6)
!6201 = !DILocation(line: 462, column: 11, scope: !6200)
!6202 = !DILocation(line: 462, column: 6, scope: !6141)
!6203 = !DILocation(line: 462, column: 26, scope: !6200)
!6204 = !DILocation(line: 463, column: 6, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 463, column: 6)
!6206 = !DILocation(line: 463, column: 11, scope: !6205)
!6207 = !DILocation(line: 463, column: 6, scope: !6141)
!6208 = !DILocation(line: 463, column: 26, scope: !6205)
!6209 = !DILocation(line: 464, column: 6, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 464, column: 6)
!6211 = !DILocation(line: 464, column: 11, scope: !6210)
!6212 = !DILocation(line: 464, column: 6, scope: !6141)
!6213 = !DILocation(line: 464, column: 26, scope: !6210)
!6214 = !DILocation(line: 465, column: 6, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 465, column: 6)
!6216 = !DILocation(line: 465, column: 11, scope: !6215)
!6217 = !DILocation(line: 465, column: 6, scope: !6141)
!6218 = !DILocation(line: 465, column: 26, scope: !6215)
!6219 = !DILocation(line: 466, column: 6, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 466, column: 6)
!6221 = !DILocation(line: 466, column: 11, scope: !6220)
!6222 = !DILocation(line: 466, column: 6, scope: !6141)
!6223 = !DILocation(line: 466, column: 26, scope: !6220)
!6224 = !DILocation(line: 467, column: 6, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 467, column: 6)
!6226 = !DILocation(line: 467, column: 11, scope: !6225)
!6227 = !DILocation(line: 467, column: 6, scope: !6141)
!6228 = !DILocation(line: 467, column: 26, scope: !6225)
!6229 = !DILocation(line: 468, column: 6, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 468, column: 6)
!6231 = !DILocation(line: 468, column: 11, scope: !6230)
!6232 = !DILocation(line: 468, column: 6, scope: !6141)
!6233 = !DILocation(line: 468, column: 26, scope: !6230)
!6234 = !DILocation(line: 469, column: 6, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 469, column: 6)
!6236 = !DILocation(line: 469, column: 11, scope: !6235)
!6237 = !DILocation(line: 469, column: 6, scope: !6141)
!6238 = !DILocation(line: 469, column: 26, scope: !6235)
!6239 = !DILocation(line: 470, column: 6, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 470, column: 6)
!6241 = !DILocation(line: 470, column: 11, scope: !6240)
!6242 = !DILocation(line: 470, column: 6, scope: !6141)
!6243 = !DILocation(line: 470, column: 26, scope: !6240)
!6244 = !DILocation(line: 471, column: 6, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 471, column: 6)
!6246 = !DILocation(line: 471, column: 11, scope: !6245)
!6247 = !DILocation(line: 471, column: 6, scope: !6141)
!6248 = !DILocation(line: 471, column: 26, scope: !6245)
!6249 = !DILocation(line: 472, column: 6, scope: !6250)
!6250 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 472, column: 6)
!6251 = !DILocation(line: 472, column: 11, scope: !6250)
!6252 = !DILocation(line: 472, column: 6, scope: !6141)
!6253 = !DILocation(line: 472, column: 26, scope: !6250)
!6254 = !DILocation(line: 473, column: 6, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 473, column: 6)
!6256 = !DILocation(line: 473, column: 11, scope: !6255)
!6257 = !DILocation(line: 473, column: 6, scope: !6141)
!6258 = !DILocation(line: 473, column: 26, scope: !6255)
!6259 = !DILocation(line: 474, column: 6, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 474, column: 6)
!6261 = !DILocation(line: 474, column: 11, scope: !6260)
!6262 = !DILocation(line: 474, column: 6, scope: !6141)
!6263 = !DILocation(line: 474, column: 27, scope: !6260)
!6264 = !DILocation(line: 475, column: 6, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 475, column: 6)
!6266 = !DILocation(line: 475, column: 11, scope: !6265)
!6267 = !DILocation(line: 475, column: 6, scope: !6141)
!6268 = !DILocation(line: 475, column: 32, scope: !6265)
!6269 = !DILocation(line: 477, column: 50, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6141, file: !24, line: 477, column: 6)
!6271 = !{i8 0, i8 2}
!6272 = !DILocation(line: 477, column: 6, scope: !6141)
!6273 = !DILocation(line: 478, column: 3, scope: !6270)
!6274 = !DILocation(line: 478, column: 3, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6276, file: !24, line: 478, column: 3)
!6276 = distinct !DILexicalBlock(scope: !6270, file: !24, line: 478, column: 3)
!6277 = !{i32 -2141970461}
!6278 = !DILocation(line: 478, column: 3, scope: !6276)
!6279 = !DILocation(line: 480, column: 3, scope: !6270)
!6280 = !DILocation(line: 480, column: 3, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6270, file: !24, line: 480, column: 3)
!6282 = !DILocation(line: 480, column: 3, scope: !6283)
!6283 = distinct !DILexicalBlock(scope: !6281, file: !24, line: 480, column: 3)
!6284 = !DILocation(line: 480, column: 3, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6281, file: !24, line: 480, column: 3)
!6286 = !{i64 2152997038, i64 2152997067, i64 2152997113, i64 2152997171, i64 2152997225, i64 2152997279, i64 2152997334, i64 2152997365}
!6287 = !DILocation(line: 483, column: 2, scope: !6141)
!6288 = !DILocation(line: 484, column: 1, scope: !6141)
!6289 = !DISubprogram(name: "kmalloc_trace", scope: !24, file: !24, line: 525, type: !6290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6290 = !DISubroutineType(types: !6291)
!6291 = !{!214, !6292, !1197, !396}
!6292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6293, size: 64)
!6293 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6294, line: 11, flags: DIFlagFwdDecl)
!6294 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6295 = distinct !DISubprogram(name: "kmalloc_type", scope: !24, file: !24, line: 401, type: !6296, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !6298)
!6296 = !DISubroutineType(types: !6297)
!6297 = !{!189, !1197, !399}
!6298 = !{!6299, !6300}
!6299 = !DILocalVariable(name: "flags", arg: 1, scope: !6295, file: !24, line: 401, type: !1197)
!6300 = !DILocalVariable(name: "caller", arg: 2, scope: !6295, file: !24, line: 401, type: !399)
!6301 = !DILocation(line: 401, column: 67, scope: !6295)
!6302 = !DILocation(line: 401, column: 88, scope: !6295)
!6303 = !DILocation(line: 407, column: 6, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6295, file: !24, line: 407, column: 6)
!6305 = !DILocation(line: 407, column: 6, scope: !6295)
!6306 = !DILocation(line: 413, column: 3, scope: !6304)
!6307 = !DILocation(line: 423, column: 38, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6295, file: !24, line: 423, column: 6)
!6309 = !DILocation(line: 423, column: 44, scope: !6308)
!6310 = !DILocation(line: 423, column: 6, scope: !6295)
!6311 = !DILocation(line: 424, column: 3, scope: !6308)
!6312 = !DILocation(line: 426, column: 3, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6295, file: !24, line: 425, column: 6)
!6314 = !DILocation(line: 429, column: 1, scope: !6295)
!6315 = !DISubprogram(name: "__kmalloc", scope: !24, file: !24, line: 488, type: !5975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6316 = !DISubprogram(name: "__compiletime_assert_204", scope: !24, file: !24, line: 478, type: !1048, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6317 = !DISubprogram(name: "dmi_check_system", scope: !6318, file: !6318, line: 100, type: !4927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6318 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!6319 = !DISubprogram(name: "strcmp", scope: !6320, file: !6320, line: 88, type: !6321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6320 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6321 = !DISubroutineType(types: !6322)
!6322 = !{!136, !268, !268}
!6323 = !DISubprogram(name: "strlen", scope: !6320, file: !6320, line: 128, type: !6324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6324 = !DISubroutineType(types: !6325)
!6325 = !{!399, !268}
!6326 = !DISubprogram(name: "_printk", scope: !6327, file: !6327, line: 153, type: !6328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6327 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6328 = !DISubroutineType(types: !6329)
!6329 = !{!136, !268, null}
!6330 = !DISubprogram(name: "strcpy", scope: !6320, file: !6320, line: 63, type: !6331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6331 = !DISubroutineType(types: !6332)
!6332 = !{!349, !349, !268}
!6333 = distinct !DISubprogram(name: "bridge_has_boot_interrupt_variant", scope: !2, file: !2, line: 240, type: !5031, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !6334)
!6334 = !{!6335, !6336}
!6335 = !DILocalVariable(name: "bus", arg: 1, scope: !6333, file: !2, line: 240, type: !4999)
!6336 = !DILocalVariable(name: "bus_it", scope: !6333, file: !2, line: 242, type: !4999)
!6337 = !DILocation(line: 240, column: 62, scope: !6333)
!6338 = !DILocation(line: 242, column: 2, scope: !6333)
!6339 = !DILocation(line: 242, column: 18, scope: !6333)
!6340 = !DILocation(line: 244, column: 16, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6333, file: !2, line: 244, column: 2)
!6342 = !DILocation(line: 244, column: 14, scope: !6341)
!6343 = !DILocation(line: 244, column: 7, scope: !6341)
!6344 = !DILocation(line: 244, column: 22, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6341, file: !2, line: 244, column: 2)
!6346 = !DILocation(line: 244, column: 2, scope: !6341)
!6347 = !DILocation(line: 245, column: 8, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6349, file: !2, line: 245, column: 7)
!6349 = distinct !DILexicalBlock(scope: !6345, file: !2, line: 244, column: 56)
!6350 = !DILocation(line: 245, column: 16, scope: !6348)
!6351 = !DILocation(line: 245, column: 7, scope: !6349)
!6352 = !DILocation(line: 246, column: 4, scope: !6348)
!6353 = !DILocation(line: 247, column: 7, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6349, file: !2, line: 247, column: 7)
!6355 = !DILocation(line: 247, column: 15, scope: !6354)
!6356 = !DILocation(line: 247, column: 21, scope: !6354)
!6357 = !DILocation(line: 247, column: 7, scope: !6349)
!6358 = !DILocation(line: 248, column: 11, scope: !6354)
!6359 = !DILocation(line: 248, column: 19, scope: !6354)
!6360 = !DILocation(line: 248, column: 25, scope: !6354)
!6361 = !DILocation(line: 248, column: 4, scope: !6354)
!6362 = !DILocation(line: 249, column: 2, scope: !6349)
!6363 = !DILocation(line: 244, column: 40, scope: !6345)
!6364 = !DILocation(line: 244, column: 48, scope: !6345)
!6365 = !DILocation(line: 244, column: 38, scope: !6345)
!6366 = !DILocation(line: 244, column: 2, scope: !6345)
!6367 = distinct !{!6367, !6346, !6368, !5544, !5545}
!6368 = !DILocation(line: 249, column: 2, scope: !6341)
!6369 = !DILocation(line: 250, column: 2, scope: !6333)
!6370 = !DILocation(line: 251, column: 1, scope: !6333)
!6371 = !DISubprogram(name: "_dev_info", scope: !5590, file: !5590, line: 56, type: !5591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
