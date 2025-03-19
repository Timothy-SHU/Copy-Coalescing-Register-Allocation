; ModuleID = 'drivers/acpi/acpi_platform.c'
source_filename = "drivers/acpi/acpi_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_create_platform_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_create_platform_device ; .previous"

%struct.acpi_device_id = type { [16 x i8], i64, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i64, i64, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource_entry = type { %struct.list_head, ptr, i64, %struct.resource }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.pdev_archdata = type {}

@forbidden_id_list = internal constant [7 x %struct.acpi_device_id] [%struct.acpi_device_id { [16 x i8] c"ACPI0009\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ACPI000A\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"PNP0000\00\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"PNP0100\00\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"PNP0200\00\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"SMB0001\00\00\00\00\00\00\00\00\00", i64 1, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1, !dbg !5185
@.str.1 = private unnamed_addr constant [38 x i8] c"platform device creation failed: %ld\0A\00", align 1, !dbg !5188
@__UNIQUE_ID___addressable_acpi_create_platform_device292 = internal global ptr @acpi_create_platform_device, section ".discard.addressable", align 8, !dbg !5193
@acpi_platform_notifier = internal global %struct.notifier_block { ptr @acpi_platform_device_remove_notify, ptr null, i32 0 }, align 8, !dbg !5200
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5195
@pci_bus_type = external dso_local global %struct.bus_type, align 8
@platform_bus_type = external dso_local global %struct.bus_type, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_create_platform_device292], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_create_platform_device(ptr noundef %adev, ptr noundef %properties) #0 align 16 !dbg !5223 {
entry:
  %retval = alloca ptr, align 8
  %adev.addr = alloca ptr, align 8
  %properties.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %pdev = alloca ptr, align 8
  %pdevinfo = alloca %struct.platform_device_info, align 8
  %match = alloca ptr, align 8
  %rentry = alloca ptr, align 8
  %resource_list = alloca %struct.list_head, align 8
  %resources = alloca ptr, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %has_resources = alloca i8, align 1
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr26 = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !5252, metadata !DIExpression()), !dbg !5290
  store ptr %properties, ptr %properties.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %properties.addr, metadata !5253, metadata !DIExpression()), !dbg !5291
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #17, !dbg !5292
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5254, metadata !DIExpression()), !dbg !5293
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !5294
  %call = call ptr @acpi_dev_parent(ptr noundef %0) #18, !dbg !5295
  store ptr %call, ptr %parent, align 8, !dbg !5293
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdev) #17, !dbg !5296
  call void @llvm.dbg.declare(metadata ptr %pdev, metadata !5255, metadata !DIExpression()), !dbg !5297
  store ptr null, ptr %pdev, align 8, !dbg !5297
  call void @llvm.lifetime.start.p0(i64 88, ptr %pdevinfo) #17, !dbg !5298
  call void @llvm.dbg.declare(metadata ptr %pdevinfo, metadata !5256, metadata !DIExpression()), !dbg !5299
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #17, !dbg !5300
  call void @llvm.dbg.declare(metadata ptr %match, metadata !5272, metadata !DIExpression()), !dbg !5301
  call void @llvm.lifetime.start.p0(i64 8, ptr %rentry) #17, !dbg !5302
  call void @llvm.dbg.declare(metadata ptr %rentry, metadata !5273, metadata !DIExpression()), !dbg !5303
  call void @llvm.lifetime.start.p0(i64 16, ptr %resource_list) #17, !dbg !5304
  call void @llvm.dbg.declare(metadata ptr %resource_list, metadata !5274, metadata !DIExpression()), !dbg !5305
  call void @llvm.lifetime.start.p0(i64 8, ptr %resources) #17, !dbg !5306
  call void @llvm.dbg.declare(metadata ptr %resources, metadata !5275, metadata !DIExpression()), !dbg !5307
  store ptr null, ptr %resources, align 8, !dbg !5307
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #17, !dbg !5308
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5276, metadata !DIExpression()), !dbg !5309
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !5310
  %physical_node_count = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 19, !dbg !5312
  %2 = load i32, ptr %physical_node_count, align 8, !dbg !5312
  %tobool = icmp ne i32 %2, 0, !dbg !5310
  br i1 %tobool, label %if.then, label %if.end, !dbg !5313

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !5314

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %adev.addr, align 8, !dbg !5315
  %call1 = call ptr @acpi_match_acpi_device(ptr noundef @forbidden_id_list, ptr noundef %3) #18, !dbg !5316
  store ptr %call1, ptr %match, align 8, !dbg !5317
  %4 = load ptr, ptr %match, align 8, !dbg !5318
  %tobool2 = icmp ne ptr %4, null, !dbg !5318
  br i1 %tobool2, label %if.then3, label %if.end13, !dbg !5319

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %match, align 8, !dbg !5320
  %driver_data = getelementptr inbounds %struct.acpi_device_id, ptr %5, i32 0, i32 1, !dbg !5321
  %6 = load i64, ptr %driver_data, align 8, !dbg !5321
  %and = and i64 %6, 1, !dbg !5322
  %tobool4 = icmp ne i64 %and, 0, !dbg !5322
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5323

if.then5:                                         ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 1, ptr %has_resources) #17, !dbg !5324
  call void @llvm.dbg.declare(metadata ptr %has_resources, metadata !5277, metadata !DIExpression()), !dbg !5325
  store i8 0, ptr %has_resources, align 1, !dbg !5325
  %7 = load ptr, ptr %adev.addr, align 8, !dbg !5326
  %handle = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 2, !dbg !5327
  %8 = load ptr, ptr %handle, align 8, !dbg !5327
  %call6 = call i32 @acpi_walk_resources(ptr noundef %8, ptr noundef @.str, ptr noundef @acpi_platform_resource_count, ptr noundef %has_resources) #18, !dbg !5328
  %9 = load i8, ptr %has_resources, align 1, !dbg !5329, !range !5331, !noundef !967
  %tobool7 = trunc i8 %9 to i1, !dbg !5329
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !5332

if.then8:                                         ; preds = %if.then5
  %call9 = call ptr @ERR_PTR(i64 noundef -22) #18, !dbg !5333
  store ptr %call9, ptr %retval, align 8, !dbg !5334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5334

if.end10:                                         ; preds = %if.then5
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5335
  br label %cleanup, !dbg !5335

cleanup:                                          ; preds = %if.end10, %if.then8
  call void @llvm.lifetime.end.p0(i64 1, ptr %has_resources) #17, !dbg !5335
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup54 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end12, !dbg !5336

if.else:                                          ; preds = %if.then3
  %call11 = call ptr @ERR_PTR(i64 noundef -22) #18, !dbg !5337
  store ptr %call11, ptr %retval, align 8, !dbg !5339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !5339

if.end12:                                         ; preds = %cleanup.cont
  br label %if.end13, !dbg !5340

if.end13:                                         ; preds = %if.end12, %if.end
  call void @INIT_LIST_HEAD(ptr noundef %resource_list) #18, !dbg !5341
  %10 = load ptr, ptr %adev.addr, align 8, !dbg !5342
  %call14 = call i32 @acpi_dev_get_resources(ptr noundef %10, ptr noundef %resource_list, ptr noundef null, ptr noundef null) #18, !dbg !5343
  store i32 %call14, ptr %count, align 4, !dbg !5344
  %11 = load i32, ptr %count, align 4, !dbg !5345
  %cmp = icmp slt i32 %11, 0, !dbg !5347
  br i1 %cmp, label %if.then15, label %if.end16, !dbg !5348

if.then15:                                        ; preds = %if.end13
  store ptr null, ptr %retval, align 8, !dbg !5349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !5349

if.end16:                                         ; preds = %if.end13
  %12 = load i32, ptr %count, align 4, !dbg !5350
  %cmp17 = icmp sgt i32 %12, 0, !dbg !5351
  br i1 %cmp17, label %if.then18, label %if.end31, !dbg !5352

if.then18:                                        ; preds = %if.end16
  %13 = load i32, ptr %count, align 4, !dbg !5353
  %conv = sext i32 %13 to i64, !dbg !5353
  %call19 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 64, i32 noundef 3264) #19, !dbg !5354
  store ptr %call19, ptr %resources, align 8, !dbg !5355
  %14 = load ptr, ptr %resources, align 8, !dbg !5356
  %tobool20 = icmp ne ptr %14, null, !dbg !5356
  br i1 %tobool20, label %if.end23, label %if.then21, !dbg !5358

if.then21:                                        ; preds = %if.then18
  call void @acpi_dev_free_resource_list(ptr noundef %resource_list) #18, !dbg !5359
  %call22 = call ptr @ERR_PTR(i64 noundef -12) #18, !dbg !5361
  store ptr %call22, ptr %retval, align 8, !dbg !5362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !5362

if.end23:                                         ; preds = %if.then18
  store i32 0, ptr %count, align 4, !dbg !5363
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5364
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5282, metadata !DIExpression()), !dbg !5364
  %next = getelementptr inbounds %struct.list_head, ptr %resource_list, i32 0, i32 0, !dbg !5364
  %15 = load ptr, ptr %next, align 8, !dbg !5364
  store ptr %15, ptr %__mptr, align 8, !dbg !5364
  %16 = load ptr, ptr %__mptr, align 8, !dbg !5364
  %add.ptr = getelementptr i8, ptr %16, i64 0, !dbg !5364
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5364
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5365
  %17 = load ptr, ptr %tmp, align 8, !dbg !5364
  store ptr %17, ptr %rentry, align 8, !dbg !5365
  br label %for.cond, !dbg !5365

for.cond:                                         ; preds = %for.inc, %if.end23
  %18 = load ptr, ptr %rentry, align 8, !dbg !5366
  %node = getelementptr inbounds %struct.resource_entry, ptr %18, i32 0, i32 0, !dbg !5366
  %cmp24 = icmp eq ptr %node, %resource_list, !dbg !5366
  %lnot = xor i1 %cmp24, true, !dbg !5366
  br i1 %lnot, label %for.body, label %for.end, !dbg !5365

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %adev.addr, align 8, !dbg !5367
  %20 = load ptr, ptr %rentry, align 8, !dbg !5368
  %res = getelementptr inbounds %struct.resource_entry, ptr %20, i32 0, i32 1, !dbg !5369
  %21 = load ptr, ptr %res, align 8, !dbg !5369
  %22 = load ptr, ptr %resources, align 8, !dbg !5370
  %23 = load i32, ptr %count, align 4, !dbg !5371
  %inc = add i32 %23, 1, !dbg !5371
  store i32 %inc, ptr %count, align 4, !dbg !5371
  %idxprom = sext i32 %23 to i64, !dbg !5370
  %arrayidx = getelementptr %struct.resource, ptr %22, i64 %idxprom, !dbg !5370
  call void @acpi_platform_fill_resource(ptr noundef %19, ptr noundef %21, ptr noundef %arrayidx) #18, !dbg !5372
  br label %for.inc, !dbg !5372

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr26) #17, !dbg !5373
  call void @llvm.dbg.declare(metadata ptr %__mptr26, metadata !5287, metadata !DIExpression()), !dbg !5373
  %24 = load ptr, ptr %rentry, align 8, !dbg !5373
  %node27 = getelementptr inbounds %struct.resource_entry, ptr %24, i32 0, i32 0, !dbg !5373
  %next28 = getelementptr inbounds %struct.list_head, ptr %node27, i32 0, i32 0, !dbg !5373
  %25 = load ptr, ptr %next28, align 8, !dbg !5373
  store ptr %25, ptr %__mptr26, align 8, !dbg !5373
  %26 = load ptr, ptr %__mptr26, align 8, !dbg !5373
  %add.ptr30 = getelementptr i8, ptr %26, i64 0, !dbg !5373
  store ptr %add.ptr30, ptr %tmp29, align 8, !dbg !5373
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr26) #17, !dbg !5366
  %27 = load ptr, ptr %tmp29, align 8, !dbg !5373
  store ptr %27, ptr %rentry, align 8, !dbg !5366
  br label %for.cond, !dbg !5366, !llvm.loop !5374

for.end:                                          ; preds = %for.cond
  call void @acpi_dev_free_resource_list(ptr noundef %resource_list) #18, !dbg !5378
  br label %if.end31, !dbg !5379

if.end31:                                         ; preds = %for.end, %if.end16
  call void @llvm.memset.p0.i64(ptr align 8 %pdevinfo, i8 0, i64 88, i1 false), !dbg !5380
  %28 = load ptr, ptr %parent, align 8, !dbg !5381
  %tobool32 = icmp ne ptr %28, null, !dbg !5381
  br i1 %tobool32, label %cond.true, label %cond.false, !dbg !5381

cond.true:                                        ; preds = %if.end31
  %29 = load ptr, ptr %parent, align 8, !dbg !5382
  %call33 = call ptr @acpi_get_first_physical_node(ptr noundef %29) #18, !dbg !5383
  br label %cond.end, !dbg !5381

cond.false:                                       ; preds = %if.end31
  br label %cond.end, !dbg !5381

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call33, %cond.true ], [ null, %cond.false ], !dbg !5381
  %parent34 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 0, !dbg !5384
  store ptr %cond, ptr %parent34, align 8, !dbg !5385
  %30 = load ptr, ptr %adev.addr, align 8, !dbg !5386
  %dev = getelementptr inbounds %struct.acpi_device, ptr %30, i32 0, i32 18, !dbg !5387
  %call35 = call ptr @dev_name(ptr noundef %dev) #18, !dbg !5388
  %name = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 3, !dbg !5389
  store ptr %call35, ptr %name, align 8, !dbg !5390
  %id = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 4, !dbg !5391
  store i32 -1, ptr %id, align 8, !dbg !5392
  %31 = load ptr, ptr %resources, align 8, !dbg !5393
  %res36 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 5, !dbg !5394
  store ptr %31, ptr %res36, align 8, !dbg !5395
  %32 = load i32, ptr %count, align 4, !dbg !5396
  %num_res = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 6, !dbg !5397
  store i32 %32, ptr %num_res, align 8, !dbg !5398
  %33 = load ptr, ptr %adev.addr, align 8, !dbg !5399
  %call37 = call ptr @acpi_fwnode_handle(ptr noundef %33) #18, !dbg !5400
  %fwnode = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 1, !dbg !5401
  store ptr %call37, ptr %fwnode, align 8, !dbg !5402
  %34 = load ptr, ptr %properties.addr, align 8, !dbg !5403
  %properties38 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 10, !dbg !5404
  store ptr %34, ptr %properties38, align 8, !dbg !5405
  %35 = load ptr, ptr %adev.addr, align 8, !dbg !5406
  %call39 = call zeroext i1 @acpi_dma_supported(ptr noundef %35) #18, !dbg !5408
  br i1 %call39, label %if.then40, label %if.else41, !dbg !5409

if.then40:                                        ; preds = %cond.end
  %dma_mask = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 9, !dbg !5410
  store i64 4294967295, ptr %dma_mask, align 8, !dbg !5411
  br label %if.end43, !dbg !5412

if.else41:                                        ; preds = %cond.end
  %dma_mask42 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 9, !dbg !5413
  store i64 0, ptr %dma_mask42, align 8, !dbg !5414
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.then40
  %call44 = call ptr @platform_device_register_full(ptr noundef %pdevinfo) #18, !dbg !5415
  store ptr %call44, ptr %pdev, align 8, !dbg !5416
  %36 = load ptr, ptr %pdev, align 8, !dbg !5417
  %call45 = call zeroext i1 @IS_ERR(ptr noundef %36) #18, !dbg !5419
  br i1 %call45, label %if.then46, label %if.else49, !dbg !5420

if.then46:                                        ; preds = %if.end43
  br label %do.body, !dbg !5421

do.body:                                          ; preds = %if.then46
  br label %do.cond, !dbg !5423

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5423

do.end:                                           ; preds = %do.cond
  %37 = load ptr, ptr %adev.addr, align 8, !dbg !5421
  %dev47 = getelementptr inbounds %struct.acpi_device, ptr %37, i32 0, i32 18, !dbg !5421
  %38 = load ptr, ptr %pdev, align 8, !dbg !5421
  %call48 = call i64 @PTR_ERR(ptr noundef %38) #18, !dbg !5421
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef @.str.1, i64 noundef %call48) #20, !dbg !5421
  br label %if.end53, !dbg !5425

if.else49:                                        ; preds = %if.end43
  %39 = load ptr, ptr %pdev, align 8, !dbg !5426
  %dev50 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3, !dbg !5428
  %40 = load ptr, ptr %adev.addr, align 8, !dbg !5429
  %handle51 = getelementptr inbounds %struct.acpi_device, ptr %40, i32 0, i32 2, !dbg !5430
  %41 = load ptr, ptr %handle51, align 8, !dbg !5430
  %call52 = call i32 @acpi_get_node(ptr noundef %41) #18, !dbg !5431
  call void @set_dev_node(ptr noundef %dev50, i32 noundef %call52) #18, !dbg !5432
  br label %if.end53

if.end53:                                         ; preds = %if.else49, %do.end
  %42 = load ptr, ptr %resources, align 8, !dbg !5433
  call void @kfree(ptr noundef %42) #18, !dbg !5434
  %43 = load ptr, ptr %pdev, align 8, !dbg !5435
  store ptr %43, ptr %retval, align 8, !dbg !5436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !5436

cleanup54:                                        ; preds = %if.end53, %if.then21, %if.then15, %if.else, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #17, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %resources) #17, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 16, ptr %resource_list) #17, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %rentry) #17, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #17, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 88, ptr %pdevinfo) #17, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdev) #17, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #17, !dbg !5437
  %44 = load ptr, ptr %retval, align 8, !dbg !5437
  ret ptr %44, !dbg !5437
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_dev_parent(ptr noundef %adev) #3 align 16 !dbg !5438 {
entry:
  %retval = alloca ptr, align 8
  %adev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !5442, metadata !DIExpression()), !dbg !5446
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !5447
  %dev = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 18, !dbg !5448
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1, !dbg !5449
  %1 = load ptr, ptr %parent, align 8, !dbg !5449
  %tobool = icmp ne ptr %1, null, !dbg !5447
  br i1 %tobool, label %if.then, label %if.end, !dbg !5450

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5451
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5443, metadata !DIExpression()), !dbg !5451
  %2 = load ptr, ptr %adev.addr, align 8, !dbg !5451
  %dev1 = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 18, !dbg !5451
  %parent2 = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 1, !dbg !5451
  %3 = load ptr, ptr %parent2, align 8, !dbg !5451
  store ptr %3, ptr %__mptr, align 8, !dbg !5451
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5451
  %add.ptr = getelementptr i8, ptr %4, i64 -608, !dbg !5451
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5451
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5452
  %5 = load ptr, ptr %tmp, align 8, !dbg !5451
  store ptr %5, ptr %retval, align 8, !dbg !5453
  br label %return, !dbg !5453

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5454
  br label %return, !dbg !5454

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !5455
  ret ptr %6, !dbg !5455
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5456 dso_local ptr @acpi_match_acpi_device(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5461 dso_local i32 @acpi_walk_resources(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_platform_resource_count(ptr noundef %ares, ptr noundef %data) #0 align 16 !dbg !5880 {
entry:
  %ares.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %has_resources = alloca ptr, align 8
  store ptr %ares, ptr %ares.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ares.addr, metadata !5884, metadata !DIExpression()), !dbg !5887
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5885, metadata !DIExpression()), !dbg !5888
  call void @llvm.lifetime.start.p0(i64 8, ptr %has_resources) #17, !dbg !5889
  call void @llvm.dbg.declare(metadata ptr %has_resources, metadata !5886, metadata !DIExpression()), !dbg !5890
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5891
  store ptr %0, ptr %has_resources, align 8, !dbg !5890
  %1 = load ptr, ptr %has_resources, align 8, !dbg !5892
  store i8 1, ptr %1, align 1, !dbg !5893
  call void @llvm.lifetime.end.p0(i64 8, ptr %has_resources) #17, !dbg !5894
  ret i32 16387, !dbg !5895
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !5896 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5901, metadata !DIExpression()), !dbg !5902
  %0 = load i64, ptr %error.addr, align 8, !dbg !5903
  %1 = inttoptr i64 %0 to ptr, !dbg !5904
  ret ptr %1, !dbg !5905
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !5906 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5911, metadata !DIExpression()), !dbg !5912
  br label %do.body, !dbg !5913

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5914

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5916

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5914

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5918
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5918
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5918
  store volatile ptr %0, ptr %next, align 8, !dbg !5918
  br label %do.end3, !dbg !5918

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5914

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5920

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5921

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5923

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5921

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5925
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5925
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5925
  store volatile ptr %2, ptr %prev, align 8, !dbg !5925
  br label %do.end9, !dbg !5925

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5921

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5927
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5928 dso_local i32 @acpi_dev_get_resources(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !5934 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5938, metadata !DIExpression()), !dbg !5941
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5939, metadata !DIExpression()), !dbg !5942
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5940, metadata !DIExpression()), !dbg !5943
  %0 = load i64, ptr %n.addr, align 8, !dbg !5944
  %1 = load i64, ptr %size.addr, align 8, !dbg !5945
  %2 = load i32, ptr %flags.addr, align 4, !dbg !5946
  %or = or i32 %2, 256, !dbg !5947
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #19, !dbg !5948
  ret ptr %call, !dbg !5949
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5950 dso_local void @acpi_dev_free_resource_list(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_platform_fill_resource(ptr noundef %adev, ptr noundef %src, ptr noundef %dest) #0 align 16 !dbg !5951 {
entry:
  %adev.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !5955, metadata !DIExpression()), !dbg !5962
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5956, metadata !DIExpression()), !dbg !5963
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !5957, metadata !DIExpression()), !dbg !5964
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #17, !dbg !5965
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5958, metadata !DIExpression()), !dbg !5966
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !5967
  %1 = load ptr, ptr %src.addr, align 8, !dbg !5968
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 64, i1 false), !dbg !5969
  %2 = load ptr, ptr %adev.addr, align 8, !dbg !5970
  %call = call ptr @acpi_dev_parent(ptr noundef %2) #18, !dbg !5971
  %call1 = call ptr @acpi_get_first_physical_node(ptr noundef %call) #18, !dbg !5972
  store ptr %call1, ptr %parent, align 8, !dbg !5973
  %3 = load ptr, ptr %parent, align 8, !dbg !5974
  %tobool = icmp ne ptr %3, null, !dbg !5974
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5975

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %parent, align 8, !dbg !5976
  %bus = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 5, !dbg !5976
  %5 = load ptr, ptr %bus, align 8, !dbg !5976
  %cmp = icmp eq ptr %5, @pci_bus_type, !dbg !5976
  br i1 %cmp, label %if.then, label %if.end, !dbg !5977

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5978
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5959, metadata !DIExpression()), !dbg !5978
  %6 = load ptr, ptr %parent, align 8, !dbg !5978
  store ptr %6, ptr %__mptr, align 8, !dbg !5978
  %7 = load ptr, ptr %__mptr, align 8, !dbg !5978
  %add.ptr = getelementptr i8, ptr %7, i64 -184, !dbg !5978
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5978
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5979
  %8 = load ptr, ptr %tmp, align 8, !dbg !5978
  %9 = load ptr, ptr %dest.addr, align 8, !dbg !5980
  %call2 = call ptr @pci_find_resource(ptr noundef %8, ptr noundef %9) #18, !dbg !5981
  %10 = load ptr, ptr %dest.addr, align 8, !dbg !5982
  %parent3 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 5, !dbg !5983
  store ptr %call2, ptr %parent3, align 8, !dbg !5984
  br label %if.end, !dbg !5982

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #17, !dbg !5985
  ret void, !dbg !5985
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5986 dso_local ptr @acpi_get_first_physical_node(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #3 align 16 !dbg !5989 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5993, metadata !DIExpression()), !dbg !5994
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5995
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !5997
  %1 = load ptr, ptr %init_name, align 8, !dbg !5997
  %tobool = icmp ne ptr %1, null, !dbg !5995
  br i1 %tobool, label %if.then, label %if.end, !dbg !5998

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5999
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !6000
  %3 = load ptr, ptr %init_name1, align 8, !dbg !6000
  store ptr %3, ptr %retval, align 8, !dbg !6001
  br label %return, !dbg !6001

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6002
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !6003
  %call = call ptr @kobject_name(ptr noundef %kobj) #18, !dbg !6004
  store ptr %call, ptr %retval, align 8, !dbg !6005
  br label %return, !dbg !6005

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6006
  ret ptr %5, !dbg !6006
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_fwnode_handle(ptr noundef %adev) #3 align 16 !dbg !6007 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !6011, metadata !DIExpression()), !dbg !6012
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !6013
  %fwnode = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 3, !dbg !6014
  ret ptr %fwnode, !dbg !6015
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6016 dso_local zeroext i1 @acpi_dma_supported(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6019 dso_local ptr @platform_device_register_full(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !6024 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6028, metadata !DIExpression()), !dbg !6029
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6030
  %1 = ptrtoint ptr %0 to i64, !dbg !6030
  %2 = inttoptr i64 %1 to ptr, !dbg !6030
  %3 = ptrtoint ptr %2 to i64, !dbg !6030
  %cmp = icmp uge i64 %3, -4095, !dbg !6030
  %lnot = xor i1 %cmp, true, !dbg !6030
  %lnot1 = xor i1 %lnot, true, !dbg !6030
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6030
  %conv = sext i32 %lnot.ext to i64, !dbg !6030
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6030
  %tobool = icmp ne i64 %expval, 0, !dbg !6030
  ret i1 %tobool, !dbg !6031
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6032 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !6036 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6040, metadata !DIExpression()), !dbg !6041
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6042
  %1 = ptrtoint ptr %0 to i64, !dbg !6043
  ret i64 %1, !dbg !6044
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_dev_node(ptr noundef %dev, i32 noundef %node) #3 align 16 !dbg !6045 {
entry:
  %dev.addr = alloca ptr, align 8
  %node.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6049, metadata !DIExpression()), !dbg !6051
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6050, metadata !DIExpression()), !dbg !6052
  %0 = load i32, ptr %node.addr, align 4, !dbg !6053
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6054
  %numa_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25, !dbg !6055
  store i32 %0, ptr %numa_node, align 8, !dbg !6056
  ret void, !dbg !6057
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6058 dso_local i32 @acpi_get_node(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6061 dso_local void @kfree(ptr noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @acpi_platform_init() #8 section ".init.text" align 16 !dbg !6064 {
entry:
  %call = call i32 @acpi_reconfig_notifier_register(ptr noundef @acpi_platform_notifier) #18, !dbg !6065
  ret void, !dbg !6066
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6067 dso_local i32 @acpi_reconfig_notifier_register(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !6070 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6072, metadata !DIExpression()), !dbg !6076
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6073, metadata !DIExpression()), !dbg !6077
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6074, metadata !DIExpression()), !dbg !6078
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #17, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6075, metadata !DIExpression()), !dbg !6080
  %0 = load i64, ptr %n.addr, align 8, !dbg !6081
  %1 = load i64, ptr %size.addr, align 8, !dbg !6081
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6081
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6081
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6081
  store i64 %4, ptr %bytes, align 8, !dbg !6081
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !6081
  %lnot = xor i1 %call, true, !dbg !6081
  %lnot1 = xor i1 %lnot, true, !dbg !6081
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6081
  %conv = sext i32 %lnot.ext to i64, !dbg !6081
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6081
  %tobool = icmp ne i64 %expval, 0, !dbg !6081
  br i1 %tobool, label %if.then, label %if.end, !dbg !6083

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6084

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6085
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6087
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6088

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6089
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6090
  br i1 %8, label %if.then2, label %if.end4, !dbg !6091

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6092
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6093
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #21, !dbg !6094
  store ptr %call3, ptr %retval, align 8, !dbg !6095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6095

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6096
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6097
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #21, !dbg !6098
  store ptr %call5, ptr %retval, align 8, !dbg !6099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6099

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #17, !dbg !6100
  %13 = load ptr, ptr %retval, align 8, !dbg !6100
  ret ptr %13, !dbg !6100
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !6101 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6106, metadata !DIExpression()), !dbg !6107
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6108, !range !5331, !noundef !967
  %tobool = trunc i8 %0 to i1, !dbg !6108
  %lnot = xor i1 %tobool, true, !dbg !6108
  %lnot1 = xor i1 %lnot, true, !dbg !6108
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6108
  %conv = sext i32 %lnot.ext to i64, !dbg !6108
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6108
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6108
  ret i1 %tobool2, !dbg !6109
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6110 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6114, metadata !DIExpression()), !dbg !6119
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6115, metadata !DIExpression()), !dbg !6120
  %0 = load i64, ptr %size.addr, align 8, !dbg !6121
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6122
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6123

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6124
  %tobool = icmp ne i64 %2, 0, !dbg !6124
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6125

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !6126
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6116, metadata !DIExpression()), !dbg !6127
  %3 = load i64, ptr %size.addr, align 8, !dbg !6128
  %cmp = icmp ugt i64 %3, 8192, !dbg !6130
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6131

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6132
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6133
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #21, !dbg !6134
  store ptr %call, ptr %retval, align 8, !dbg !6135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6135

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6136
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6136
  store i32 %call2, ptr %index, align 4, !dbg !6137
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6138
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6139
  %9 = ptrtoint ptr %8 to i64, !dbg !6139
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6140
  %idxprom = zext i32 %call3 to i64, !dbg !6141
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6141
  %10 = load i32, ptr %index, align 4, !dbg !6142
  %idxprom4 = zext i32 %10 to i64, !dbg !6141
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6141
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6141
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6143
  %13 = load i64, ptr %size.addr, align 8, !dbg !6144
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !6145
  store ptr %call6, ptr %retval, align 8, !dbg !6146
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6146

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !6147
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6148
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6149
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #21, !dbg !6150
  store ptr %call8, ptr %retval, align 8, !dbg !6151
  br label %return, !dbg !6151

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6152
  ret ptr %16, !dbg !6152
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6153 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6154 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #13 align 16 !dbg !6155 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6159, metadata !DIExpression()), !dbg !6161
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6160, metadata !DIExpression()), !dbg !6162
  %0 = load i64, ptr %size.addr, align 8, !dbg !6163
  %tobool = icmp ne i64 %0, 0, !dbg !6163
  br i1 %tobool, label %if.end, label %if.then, !dbg !6165

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6166
  br label %return, !dbg !6166

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6167
  %cmp = icmp ule i64 %1, 8, !dbg !6169
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6170

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6171
  br label %return, !dbg !6171

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6172
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6174
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6175

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6176
  %cmp4 = icmp ule i64 %3, 96, !dbg !6177
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6178

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6179
  br label %return, !dbg !6179

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6180
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6182
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6183

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6184
  %cmp9 = icmp ule i64 %5, 192, !dbg !6185
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6186

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6187
  br label %return, !dbg !6187

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6188
  %cmp12 = icmp ule i64 %6, 8, !dbg !6190
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6191

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6192
  br label %return, !dbg !6192

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6193
  %cmp15 = icmp ule i64 %7, 16, !dbg !6195
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6196

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6197
  br label %return, !dbg !6197

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6198
  %cmp18 = icmp ule i64 %8, 32, !dbg !6200
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6201

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6202
  br label %return, !dbg !6202

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6203
  %cmp21 = icmp ule i64 %9, 64, !dbg !6205
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6206

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6207
  br label %return, !dbg !6207

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6208
  %cmp24 = icmp ule i64 %10, 128, !dbg !6210
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6211

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6212
  br label %return, !dbg !6212

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6213
  %cmp27 = icmp ule i64 %11, 256, !dbg !6215
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6216

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6217
  br label %return, !dbg !6217

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6218
  %cmp30 = icmp ule i64 %12, 512, !dbg !6220
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6221

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6222
  br label %return, !dbg !6222

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6223
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6225
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6226

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6227
  br label %return, !dbg !6227

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6228
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6230
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6231

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6232
  br label %return, !dbg !6232

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6233
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6235
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6236

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6237
  br label %return, !dbg !6237

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6238
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6240
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6241

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6242
  br label %return, !dbg !6242

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6243
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6245
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6246

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6247
  br label %return, !dbg !6247

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6248
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6250
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6251

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6252
  br label %return, !dbg !6252

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6253
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6255
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6256

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6257
  br label %return, !dbg !6257

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6258
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6260
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6261

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6262
  br label %return, !dbg !6262

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6263
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6265
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6266

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6267
  br label %return, !dbg !6267

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6268
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6270
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6271

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6272
  br label %return, !dbg !6272

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6273
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6275
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6276

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6277
  br label %return, !dbg !6277

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6278
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6280
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6281

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6282
  br label %return, !dbg !6282

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6283, !range !5331, !noundef !967
  %tobool69 = trunc i8 %25 to i1, !dbg !6283
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6285

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6286

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_125() #23, !dbg !6287, !srcloc !6290
  unreachable, !dbg !6287

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6291

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6292

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6293

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6295

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6293

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #17, !dbg !6297, !srcloc !6299
  br label %do.end75, !dbg !6297

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6293

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6300
  br label %return, !dbg !6300

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6301
  ret i32 %26, !dbg !6301
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6302 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #13 align 16 !dbg !6308 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6312, metadata !DIExpression()), !dbg !6314
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6313, metadata !DIExpression()), !dbg !6315
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6316
  %and = and i32 %0, 17, !dbg !6316
  %cmp = icmp eq i32 %and, 0, !dbg !6316
  %lnot = xor i1 %cmp, true, !dbg !6316
  %lnot1 = xor i1 %lnot, true, !dbg !6316
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6316
  %conv = sext i32 %lnot.ext to i64, !dbg !6316
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6316
  %tobool = icmp ne i64 %expval, 0, !dbg !6316
  br i1 %tobool, label %if.then, label %if.end, !dbg !6318

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6319
  br label %return, !dbg !6319

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6320
  %and2 = and i32 %1, 1, !dbg !6322
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6322
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6323

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6324
  br label %return, !dbg !6324

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6325
  br label %return, !dbg !6325

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6327
  ret i32 %2, !dbg !6327
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6328 dso_local void @__compiletime_assert_125() #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6329 dso_local ptr @pci_find_resource(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #3 align 16 !dbg !6332 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6334, metadata !DIExpression()), !dbg !6335
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6336
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !6337
  %1 = load ptr, ptr %name, align 8, !dbg !6337
  ret ptr %1, !dbg !6338
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_platform_device_remove_notify(ptr noundef %nb, i64 noundef %value, ptr noundef %arg) #0 align 16 !dbg !6339 {
entry:
  %nb.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %arg.addr = alloca ptr, align 8
  %adev = alloca ptr, align 8
  %pdev = alloca ptr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !6341, metadata !DIExpression()), !dbg !6346
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6342, metadata !DIExpression()), !dbg !6347
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6343, metadata !DIExpression()), !dbg !6348
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #17, !dbg !6349
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !6344, metadata !DIExpression()), !dbg !6350
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !6351
  store ptr %0, ptr %adev, align 8, !dbg !6350
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdev) #17, !dbg !6352
  call void @llvm.dbg.declare(metadata ptr %pdev, metadata !6345, metadata !DIExpression()), !dbg !6353
  %1 = load i64, ptr %value.addr, align 8, !dbg !6354
  switch i64 %1, label %sw.epilog [
    i64 0, label %sw.epilog
    i64 1, label %sw.bb
  ], !dbg !6355

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %adev, align 8, !dbg !6356
  %call = call zeroext i1 @acpi_device_enumerated(ptr noundef %2) #18, !dbg !6359
  br i1 %call, label %if.end, label %if.then, !dbg !6360

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog, !dbg !6361

if.end:                                           ; preds = %sw.bb
  %3 = load ptr, ptr %adev, align 8, !dbg !6362
  %call1 = call ptr @acpi_platform_device_find_by_companion(ptr noundef %3) #18, !dbg !6363
  store ptr %call1, ptr %pdev, align 8, !dbg !6364
  %4 = load ptr, ptr %pdev, align 8, !dbg !6365
  %tobool = icmp ne ptr %4, null, !dbg !6365
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !6367

if.then2:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !6368

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %pdev, align 8, !dbg !6369
  call void @platform_device_unregister(ptr noundef %5) #18, !dbg !6370
  %6 = load ptr, ptr %pdev, align 8, !dbg !6371
  %dev = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, !dbg !6372
  call void @put_device(ptr noundef %dev) #18, !dbg !6373
  br label %sw.epilog, !dbg !6374

sw.epilog:                                        ; preds = %entry, %if.end3, %if.then2, %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdev) #17, !dbg !6375
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #17, !dbg !6375
  ret i32 1, !dbg !6376
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_device_enumerated(ptr noundef %adev) #3 align 16 !dbg !6377 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !6381, metadata !DIExpression()), !dbg !6382
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !6383
  %tobool = icmp ne ptr %0, null, !dbg !6383
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !6384

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !6385
  %flags = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 7, !dbg !6386
  %bf.load = load i32, ptr %flags, align 4, !dbg !6387
  %bf.lshr = lshr i32 %bf.load, 5, !dbg !6387
  %bf.clear = and i32 %bf.lshr, 1, !dbg !6387
  %tobool1 = icmp ne i32 %bf.clear, 0, !dbg !6385
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !6388

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load ptr, ptr %adev.addr, align 8, !dbg !6389
  %flags2 = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 7, !dbg !6390
  %bf.load3 = load i32, ptr %flags2, align 4, !dbg !6391
  %bf.lshr4 = lshr i32 %bf.load3, 6, !dbg !6391
  %bf.clear5 = and i32 %bf.lshr4, 1, !dbg !6391
  %tobool6 = icmp ne i32 %bf.clear5, 0, !dbg !6388
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool6, %land.rhs ], !dbg !6392
  ret i1 %3, !dbg !6393
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_platform_device_find_by_companion(ptr noundef %adev) #0 align 16 !dbg !6394 {
entry:
  %adev.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !6398, metadata !DIExpression()), !dbg !6402
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #17, !dbg !6403
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6399, metadata !DIExpression()), !dbg !6404
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !6405
  %call = call ptr @bus_find_device_by_acpi_dev(ptr noundef @platform_bus_type, ptr noundef %0) #18, !dbg !6406
  store ptr %call, ptr %dev, align 8, !dbg !6407
  %1 = load ptr, ptr %dev, align 8, !dbg !6408
  %tobool = icmp ne ptr %1, null, !dbg !6408
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6408

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6409
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6400, metadata !DIExpression()), !dbg !6409
  %2 = load ptr, ptr %dev, align 8, !dbg !6409
  store ptr %2, ptr %__mptr, align 8, !dbg !6409
  %3 = load ptr, ptr %__mptr, align 8, !dbg !6409
  %add.ptr = getelementptr i8, ptr %3, i64 -16, !dbg !6409
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6409
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6410
  %4 = load ptr, ptr %tmp, align 8, !dbg !6409
  br label %cond.end, !dbg !6408

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6408

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !6408
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #17, !dbg !6411
  ret ptr %cond, !dbg !6412
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6413 dso_local void @platform_device_unregister(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6416 dso_local void @put_device(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @bus_find_device_by_acpi_dev(ptr noundef %bus, ptr noundef %adev) #3 align 16 !dbg !6417 {
entry:
  %bus.addr = alloca ptr, align 8
  %adev.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6421, metadata !DIExpression()), !dbg !6423
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !6422, metadata !DIExpression()), !dbg !6424
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6425
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !6426
  %call = call ptr @bus_find_device(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef @device_match_acpi_dev) #18, !dbg !6427
  ret ptr %call, !dbg !6428
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6429 dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @device_match_acpi_dev(ptr noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0,1) }
attributes #20 = { cold noredzone }
attributes #21 = { noredzone allocsize(0) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221}
!llvm.ident = !{!5222}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "forbidden_id_list", scope: !2, file: !3, line: 26, type: !5213, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.acpi_platform.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22acpi_platform\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpi_platform.ll drivers/acpi/acpi_platform.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !175, globals: !5184, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpi_platform.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1a6f1603a04f6377499e61ffdfd49dc6")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !122, !131, !136, !141, !147, !155, !160, !170}
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
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !117, line: 21, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154}
!149 = !DIEnumerator(name: "DEV_PROP_U8", value: 0)
!150 = !DIEnumerator(name: "DEV_PROP_U16", value: 1)
!151 = !DIEnumerator(name: "DEV_PROP_U32", value: 2)
!152 = !DIEnumerator(name: "DEV_PROP_U64", value: 3)
!153 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4)
!154 = !DIEnumerator(name: "DEV_PROP_REF", value: 5)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !156, line: 10, baseType: !7, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!157 = !{!158, !159}
!158 = !DIEnumerator(name: "false", value: 0)
!159 = !DIEnumerator(name: "true", value: 1)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !161, line: 364, baseType: !7, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!162 = !{!163, !164, !165, !166, !167, !168, !169}
!163 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!164 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!165 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!166 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!167 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!168 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!169 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_reconfig_event", file: !171, line: 734, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "ACPI_RECONFIG_DEVICE_ADD", value: 0)
!174 = !DIEnumerator(name: "ACPI_RECONFIG_DEVICE_REMOVE", value: 1)
!175 = !{!176, !177, !179, !215, !4869, !4870, !208, !4872, !381, !5159}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !178, line: 154, baseType: !7)
!178 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_entry", file: !181, line: 23, size: 768, elements: !182)
!181 = !DIFile(filename: "./include/linux/resource_ext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38257f3d7ebf1230f659bba39b1a0b6a")
!182 = !{!183, !189, !213, !214}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !180, file: !181, line: 24, baseType: !184, size: 128)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !178, line: 190, size: 128, elements: !185)
!185 = !{!186, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !178, line: 191, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !184, file: !178, line: 191, baseType: !187, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !180, file: !181, line: 25, baseType: !190, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !192, line: 21, size: 512, elements: !193)
!192 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!193 = !{!194, !202, !203, !207, !209, !210, !211, !212}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !191, file: !192, line: 22, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !178, line: 164, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !178, line: 159, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !198, line: 23, baseType: !199)
!198 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !200, line: 31, baseType: !201)
!200 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!201 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !191, file: !192, line: 23, baseType: !195, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !192, line: 24, baseType: !204, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !191, file: !192, line: 25, baseType: !208, size: 64, offset: 192)
!208 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !191, file: !192, line: 26, baseType: !208, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !191, file: !192, line: 27, baseType: !190, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !191, file: !192, line: 27, baseType: !190, size: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !191, file: !192, line: 27, baseType: !190, size: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !180, file: !181, line: 26, baseType: !195, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__res", scope: !180, file: !181, line: 27, baseType: !191, size: 512, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !217, line: 367, size: 11200, elements: !218)
!217 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!218 = !{!219, !222, !223, !226, !4617, !4618, !4619, !4628, !4646, !4722, !4752, !4776, !4797, !4803, !4812, !4844, !4858, !4862, !4863, !4864, !4865, !4866, !4867, !4868}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !216, file: !217, line: 368, baseType: !220, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !198, line: 21, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !200, line: 27, baseType: !7)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !216, file: !217, line: 369, baseType: !109, size: 32, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !216, file: !217, line: 370, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !225, line: 424, baseType: !176)
!225 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!226 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !216, file: !217, line: 371, baseType: !227, size: 512, offset: 128)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !228, line: 41, size: 512, elements: !229)
!228 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!229 = !{!230, !232, !4613, !4614, !4615, !4616}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !227, file: !228, line: 42, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !227, file: !228, line: 43, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !228, line: 125, size: 1408, elements: !236)
!236 = !{!237, !241, !245, !253, !4543, !4544, !4548, !4552, !4556, !4560, !4564, !4565, !4569, !4573, !4577, !4588, !4589, !4590, !4591, !4601, !4605, !4609}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !235, file: !228, line: 126, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!231, !231}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !235, file: !228, line: 127, baseType: !242, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !231}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !235, file: !228, line: 128, baseType: !246, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !251}
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !178, line: 35, baseType: !250)
!250 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !235, file: !228, line: 129, baseType: !254, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !251, !259}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !262)
!262 = !{!263, !4186, !4188, !4191, !4192, !4243, !4328, !4329, !4330, !4331, !4332, !4339, !4431, !4444, !4454, !4458, !4460, !4461, !4462, !4466, !4473, !4474, !4477, !4480, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4520, !4521, !4522, !4525, !4528, !4537, !4538, !4539, !4540, !4541, !4542}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !261, file: !94, line: 706, baseType: !264, size: 512)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !265, line: 64, size: 512, elements: !266)
!265 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!266 = !{!267, !268, !269, !271, !358, !4073, !4176, !4181, !4182, !4183, !4184, !4185}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !265, line: 65, baseType: !204, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !264, file: !265, line: 66, baseType: !184, size: 128, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !264, file: !265, line: 67, baseType: !270, size: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !264, file: !265, line: 68, baseType: !272, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !265, line: 168, size: 768, elements: !274)
!274 = !{!275, !276, !317, !318}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !273, file: !265, line: 169, baseType: !184, size: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !273, file: !265, line: 170, baseType: !277, size: 32, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !278, line: 29, baseType: !279)
!278 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !278, line: 17, size: 32, elements: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, scope: !279, file: !278, line: 18, baseType: !282, size: 32)
!282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !279, file: !278, line: 18, size: 32, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !282, file: !278, line: 19, baseType: !285, size: 32)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !286, line: 14, size: 32, elements: !287)
!286 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !285, file: !286, line: 15, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !290, line: 44, baseType: !291)
!290 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !290, line: 14, size: 32, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !290, line: 15, baseType: !294, size: 32)
!294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !290, line: 15, size: 32, elements: !295)
!295 = !{!296, !301, !309}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !294, file: !290, line: 16, baseType: !297, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !178, line: 174, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 172, size: 32, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !298, file: !178, line: 173, baseType: !109, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !290, line: 24, baseType: !302, size: 16)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !290, line: 24, size: 16, elements: !303)
!303 = !{!304, !308}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !302, file: !290, line: 25, baseType: !305, size: 8)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !198, line: 17, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !200, line: 21, baseType: !307)
!307 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !302, file: !290, line: 26, baseType: !305, size: 8, offset: 8)
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !290, line: 28, baseType: !310, size: 32)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !290, line: 28, size: 32, elements: !311)
!311 = !{!312, !316}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !310, file: !290, line: 29, baseType: !313, size: 16)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !198, line: 19, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !200, line: 24, baseType: !315)
!315 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !310, file: !290, line: 30, baseType: !313, size: 16, offset: 16)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !273, file: !265, line: 171, baseType: !264, size: 512, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !273, file: !265, line: 172, baseType: !319, size: 64, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !265, line: 133, size: 192, elements: !322)
!322 = !{!323, !330, !335}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !321, file: !265, line: 134, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!109, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !265, line: 135, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!204, !328}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !321, file: !265, line: 136, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!109, !328, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !265, line: 125, size: 20736, elements: !342)
!342 = !{!343, !348, !352, !353, !357}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !341, file: !265, line: 126, baseType: !344, size: 192)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 192, elements: !346)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!346 = !{!347}
!347 = !DISubrange(count: 3)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !341, file: !265, line: 127, baseType: !349, size: 4096, offset: 192)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 4096, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !341, file: !265, line: 128, baseType: !109, size: 32, offset: 4288)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !341, file: !265, line: 129, baseType: !354, size: 16384, offset: 4320)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 16384, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 2048)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !341, file: !265, line: 130, baseType: !109, size: 32, offset: 20704)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !264, file: !265, line: 69, baseType: !359, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !265, line: 116, size: 384, elements: !362)
!362 = !{!363, !367, !395, !4035, !4063, !4067}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !361, file: !265, line: 117, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !270}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !361, file: !265, line: 118, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !371, line: 254, size: 128, elements: !372)
!371 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!372 = !{!373, !388}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !370, file: !371, line: 255, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!377, !270, !382, !345}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !178, line: 66, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !379, line: 73, baseType: !380)
!379 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !379, line: 15, baseType: !381)
!381 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !371, line: 30, size: 128, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !383, file: !371, line: 31, baseType: !204, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !383, file: !371, line: 32, baseType: !387, size: 16, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !178, line: 24, baseType: !315)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !370, file: !371, line: 256, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!377, !270, !382, !204, !392}
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !178, line: 61, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !379, line: 72, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !379, line: 16, baseType: !208)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !361, file: !265, line: 119, baseType: !396, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !371, line: 84, size: 320, elements: !400)
!400 = !{!401, !402, !406, !4031, !4033}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !399, file: !371, line: 85, baseType: !204, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !399, file: !371, line: 86, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!387, !270, !382, !109}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !399, file: !371, line: 88, baseType: !407, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!387, !270, !410, !109}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !371, line: 175, size: 512, elements: !412)
!412 = !{!413, !414, !415, !416, !4022, !4026, !4027}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !411, file: !371, line: 176, baseType: !383, size: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !411, file: !371, line: 177, baseType: !392, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !411, file: !371, line: 178, baseType: !176, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !411, file: !371, line: 179, baseType: !417, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !422)
!422 = !{!423, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !4016, !4017, !4018, !4019, !4020, !4021}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !421, file: !14, line: 473, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !426)
!426 = !{!427, !428, !429, !437, !438, !445, !446, !449, !450, !3795, !3796, !3797, !3798, !3799, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3839, !3842, !3843, !3844, !3853, !3854, !3855, !3856}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !425, file: !14, line: 642, baseType: !387, size: 16)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !425, file: !14, line: 643, baseType: !315, size: 16, offset: 16)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !425, file: !14, line: 644, baseType: !430, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !431, line: 23, baseType: !432)
!431 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 21, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !432, file: !431, line: 22, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !178, line: 37, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !379, line: 49, baseType: !7)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !425, file: !14, line: 645, baseType: !184, size: 128, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !425, file: !14, line: 646, baseType: !439, size: 32, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !431, line: 28, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 26, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !440, file: !431, line: 27, baseType: !443, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !178, line: 38, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !379, line: 50, baseType: !7)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !425, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !425, file: !14, line: 650, baseType: !447, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !425, file: !14, line: 651, baseType: !447, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !425, file: !14, line: 654, baseType: !451, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !454)
!454 = !{!455, !3623, !3633, !3637, !3641, !3645, !3649, !3653, !3657, !3661, !3665, !3666, !3670, !3674, !3711, !3740, !3744, !3750, !3754, !3758, !3762, !3766, !3770, !3776, !3780}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !453, file: !14, line: 1967, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!459, !424, !459, !7}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !461, line: 82, size: 1536, elements: !462)
!461 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!462 = !{!463, !464, !474, !482, !483, !498, !499, !503, !516, !3606, !3607, !3608, !3609, !3615, !3616, !3617}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !460, file: !461, line: 84, baseType: !7, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !460, file: !461, line: 85, baseType: !465, size: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !466, line: 275, baseType: !467)
!466 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !466, line: 275, size: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !467, file: !466, line: 275, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !466, line: 69, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !466, line: 64, size: 32, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !471, file: !466, line: 65, baseType: !7, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !460, file: !461, line: 86, baseType: !475, size: 128, offset: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !476, line: 38, size: 128, elements: !477)
!476 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!477 = !{!478, !480}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !475, file: !476, line: 39, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !475, file: !476, line: 39, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !460, file: !461, line: 87, baseType: !459, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !460, file: !461, line: 88, baseType: !484, size: 128, offset: 256)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !461, line: 49, size: 128, elements: !485)
!485 = !{!486, !495}
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !461, line: 50, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !461, line: 50, size: 64, elements: !488)
!488 = !{!489, !494}
!489 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !461, line: 51, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !487, file: !461, line: 51, size: 64, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !490, file: !461, line: 52, baseType: !220, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !490, file: !461, line: 52, baseType: !220, size: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !487, file: !461, line: 54, baseType: !197, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !484, file: !461, line: 56, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !460, file: !461, line: 89, baseType: !424, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !460, file: !461, line: 91, baseType: !500, size: 256, offset: 448)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 256, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !460, file: !461, line: 94, baseType: !504, size: 64, offset: 704)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !505, line: 25, size: 64, elements: !506)
!505 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !505, line: 26, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !505, line: 26, size: 64, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !508, file: !505, line: 28, baseType: !199, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, scope: !508, file: !505, line: 30, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !508, file: !505, line: 30, size: 64, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !512, file: !505, line: 31, baseType: !277, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !512, file: !505, line: 32, baseType: !109, size: 32, offset: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !460, file: !461, line: 95, baseType: !517, size: 64, offset: 768)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !461, line: 128, size: 1024, align: 512, elements: !520)
!520 = !{!521, !525, !526, !533, !539, !543, !547, !551, !552, !556, !560, !3596, !3600}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !519, file: !461, line: 129, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!109, !459, !7}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !519, file: !461, line: 130, baseType: !522, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !519, file: !461, line: 131, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!109, !530, !532}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !519, file: !461, line: 132, baseType: !534, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!109, !530, !7, !204, !537}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !519, file: !461, line: 134, baseType: !540, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!109, !530}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !519, file: !461, line: 135, baseType: !544, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!109, !459}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !519, file: !461, line: 136, baseType: !548, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !459}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !519, file: !461, line: 137, baseType: !548, size: 64, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !519, file: !461, line: 138, baseType: !553, size: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !459, !424}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !519, file: !461, line: 139, baseType: !557, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!345, !459, !345, !109}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !519, file: !461, line: 140, baseType: !561, size: 64, offset: 640)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!564, !3595}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !566, line: 70, size: 256, elements: !567)
!566 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!567 = !{!568, !569, !3591, !3592}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !565, file: !566, line: 71, baseType: !459, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !565, file: !566, line: 72, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !572)
!572 = !{!573, !574, !577, !578, !579, !583, !1061, !1200, !1240, !1330, !1334, !1335, !1336, !1337, !1338, !1347, !1348, !1349, !1350, !1355, !1359, !1360, !1363, !1366, !1369, !1372, !1373, !1374, !1415, !3524, !3525, !3526, !3527, !3528, !3529, !3532, !3534, !3541, !3542, !3543, !3544, !3545, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !571, file: !14, line: 1191, baseType: !184, size: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !571, file: !14, line: 1192, baseType: !575, size: 32, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !178, line: 21, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !178, line: 18, baseType: !220)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !571, file: !14, line: 1193, baseType: !307, size: 8, offset: 160)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !571, file: !14, line: 1194, baseType: !208, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !571, file: !14, line: 1195, baseType: !580, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !178, line: 52, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !379, line: 88, baseType: !582)
!582 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !571, file: !14, line: 1196, baseType: !584, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !586)
!586 = !{!587, !588, !589, !596, !600, !604, !608, !1046, !1047, !1051, !1053, !1054, !1055, !1057, !1058, !1059, !1060}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !585, file: !14, line: 2367, baseType: !204, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !585, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !585, file: !14, line: 2376, baseType: !590, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!109, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !595, line: 32, flags: DIFlagFwdDecl)
!595 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!596 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !585, file: !14, line: 2377, baseType: !597, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !585, file: !14, line: 2378, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!459, !584, !109, !204, !176}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !585, file: !14, line: 2380, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !570}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !585, file: !14, line: 2381, baseType: !609, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !611)
!611 = !{!612, !613, !614, !618, !640, !666, !667, !668, !669, !673, !678, !679, !699, !755, !756, !757, !758, !759, !760, !761, !762, !770, !774, !801, !822, !823, !824, !825, !834, !857, !858, !861, !864, !865, !866, !867, !868, !869, !870, !875, !876, !1004, !1012, !1013, !1014, !1016, !1020, !1021, !1025, !1026, !1027, !1028, !1030, !1031, !1032, !1039, !1040, !1041, !1045}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !610, file: !6, line: 403, baseType: !5, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !610, file: !6, line: 406, baseType: !184, size: 128, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !610, file: !6, line: 409, baseType: !615, size: 448, offset: 192)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 448, elements: !616)
!616 = !{!617}
!617 = !DISubrange(count: 56)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !610, file: !6, line: 417, baseType: !619, size: 768, offset: 640)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !620)
!620 = !{!621, !622, !623, !624, !627}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !619, file: !6, line: 46, baseType: !264, size: 512)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !619, file: !6, line: 47, baseType: !609, size: 64, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !619, file: !6, line: 48, baseType: !270, size: 64, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !619, file: !6, line: 49, baseType: !625, size: 64, offset: 640)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !619, file: !6, line: 50, baseType: !628, size: 64, offset: 704)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !630, line: 26, size: 256, elements: !631)
!630 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !629, file: !630, line: 27, baseType: !7, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !629, file: !630, line: 28, baseType: !634, size: 192, offset: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !635, line: 43, size: 192, elements: !636)
!635 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!636 = !{!637, !639}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !634, file: !635, line: 44, baseType: !638, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !286, line: 23, baseType: !285)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !634, file: !635, line: 45, baseType: !184, size: 128, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !610, file: !6, line: 418, baseType: !641, size: 64, offset: 1408)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !643)
!643 = !{!644, !645, !650, !654, !658, !662}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !642, file: !6, line: 54, baseType: !383, size: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !642, file: !6, line: 55, baseType: !646, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!377, !641, !649, !345}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !642, file: !6, line: 57, baseType: !651, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!377, !641, !649, !204, !392}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !642, file: !6, line: 59, baseType: !655, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !609, !204}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !642, file: !6, line: 60, baseType: !659, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!109, !609}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !642, file: !6, line: 61, baseType: !663, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !609}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !610, file: !6, line: 419, baseType: !204, size: 64, offset: 1472)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !610, file: !6, line: 420, baseType: !204, size: 64, offset: 1536)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !610, file: !6, line: 421, baseType: !270, size: 64, offset: 1600)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !610, file: !6, line: 424, baseType: !670, size: 64, offset: 1664)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !610, file: !6, line: 425, baseType: !674, size: 64, offset: 1728)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !198, line: 20, baseType: !677)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !200, line: 26, baseType: !109)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !610, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !610, file: !6, line: 435, baseType: !680, size: 256, offset: 1856)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !681, line: 66, size: 256, elements: !682)
!681 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!682 = !{!683, !692, !693, !698}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !680, file: !681, line: 67, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !685, line: 13, baseType: !686)
!685 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !178, line: 181, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 179, size: 64, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !687, file: !178, line: 180, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !198, line: 22, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !200, line: 30, baseType: !582)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !680, file: !681, line: 68, baseType: !638, size: 32, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !680, file: !681, line: 70, baseType: !694, size: 32, offset: 96)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !695, line: 15, size: 32, elements: !696)
!695 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !694, file: !695, line: 20, baseType: !297, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !680, file: !681, line: 72, baseType: !184, size: 128, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !610, file: !6, line: 437, baseType: !700, size: 64, offset: 2112)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !702, line: 69, size: 320, elements: !703)
!702 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!703 = !{!704, !705, !706, !726, !728, !732, !733}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !701, file: !702, line: 70, baseType: !204, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !701, file: !702, line: 71, baseType: !609, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !701, file: !702, line: 72, baseType: !707, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !702, line: 47, size: 256, elements: !710)
!710 = !{!711, !712, !718, !722}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !702, line: 49, baseType: !7, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !709, file: !702, line: 51, baseType: !713, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!109, !204, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !709, file: !702, line: 53, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!109, !345, !716}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !709, file: !702, line: 55, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !176}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !701, file: !702, line: 73, baseType: !727, size: 16, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !701, file: !702, line: 74, baseType: !729, size: 8, offset: 208)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !198, line: 16, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !200, line: 20, baseType: !731)
!731 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !701, file: !702, line: 75, baseType: !305, size: 8, offset: 216)
!733 = !DIDerivedType(tag: DW_TAG_member, scope: !701, file: !702, line: 76, baseType: !734, size: 64, offset: 256)
!734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !701, file: !702, line: 76, size: 64, elements: !735)
!735 = !{!736, !737, !744}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !734, file: !702, line: 77, baseType: !176, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !734, file: !702, line: 78, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !702, line: 86, size: 128, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !740, file: !702, line: 87, baseType: !7, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !740, file: !702, line: 88, baseType: !345, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !734, file: !702, line: 79, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !702, line: 92, size: 256, elements: !748)
!748 = !{!749, !750, !751, !753, !754}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !747, file: !702, line: 94, baseType: !7, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !747, file: !702, line: 95, baseType: !7, size: 32, offset: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !747, file: !702, line: 96, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !747, file: !702, line: 97, baseType: !707, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !747, file: !702, line: 98, baseType: !176, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !610, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !610, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !610, file: !6, line: 442, baseType: !670, size: 64, offset: 2240)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !610, file: !6, line: 443, baseType: !674, size: 64, offset: 2304)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !610, file: !6, line: 444, baseType: !249, size: 8, offset: 2368)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !610, file: !6, line: 451, baseType: !249, size: 8, offset: 2376)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !610, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !610, file: !6, line: 455, baseType: !763, size: 64, offset: 2432)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !765, line: 23, size: 96, elements: !766)
!765 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!766 = !{!767, !768, !769}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !764, file: !765, line: 24, baseType: !109, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !764, file: !765, line: 24, baseType: !109, size: 32, offset: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !764, file: !765, line: 24, baseType: !109, size: 32, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !610, file: !6, line: 458, baseType: !771, size: 64, offset: 2496)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!109}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !610, file: !6, line: 460, baseType: !775, size: 4032, align: 512, offset: 2560)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 4032, elements: !799)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !777)
!777 = !{!778, !779, !780}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !776, file: !6, line: 363, baseType: !176, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !776, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !776, file: !6, line: 367, baseType: !781, size: 448, offset: 128)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !781, file: !6, line: 320, baseType: !609, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !781, file: !6, line: 321, baseType: !785, size: 384, offset: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !786, line: 40, size: 384, elements: !787)
!786 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !785, file: !786, line: 41, baseType: !789, size: 384, align: 64)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !790, size: 384, align: 64, elements: !797)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !791, line: 5, size: 192, align: 64, elements: !792)
!791 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!792 = !{!793, !794, !796}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !790, file: !791, line: 6, baseType: !208, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !790, file: !791, line: 7, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !790, file: !791, line: 8, baseType: !795, size: 64, offset: 128)
!797 = !{!798}
!798 = !DISubrange(count: 2)
!799 = !{!800}
!800 = !DISubrange(count: 7)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !610, file: !6, line: 463, baseType: !802, size: 192, offset: 6592)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !803, line: 8, size: 192, elements: !804)
!803 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!804 = !{!805, !806, !808}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !802, file: !803, line: 10, baseType: !7, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !802, file: !803, line: 11, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !802, file: !803, line: 12, baseType: !809, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !811, line: 59, size: 48, elements: !812)
!811 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!812 = !{!813, !817, !818, !819, !820, !821}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !810, file: !811, line: 60, baseType: !814, size: 16)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !198, line: 18, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !200, line: 23, baseType: !816)
!816 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !810, file: !811, line: 61, baseType: !814, size: 16, offset: 16)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !810, file: !811, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !810, file: !811, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !810, file: !811, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !810, file: !811, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !610, file: !6, line: 465, baseType: !208, size: 64, offset: 6784)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !610, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !610, file: !6, line: 470, baseType: !184, size: 128, offset: 6912)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !610, file: !6, line: 471, baseType: !826, size: 64, offset: 7040)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !828, line: 33, size: 96, elements: !829)
!828 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!829 = !{!830, !831, !832, !833}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !827, file: !828, line: 37, baseType: !109, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !827, file: !828, line: 43, baseType: !109, size: 32, offset: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !827, file: !828, line: 45, baseType: !315, size: 16, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !827, file: !828, line: 47, baseType: !315, size: 16, offset: 80)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !610, file: !6, line: 476, baseType: !835, size: 64, offset: 7104)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !837)
!837 = !{!838, !854, !855, !856}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !836, file: !6, line: 379, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !841, line: 204, baseType: !842)
!841 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !841, line: 197, size: 192, elements: !843)
!843 = !{!844, !846, !847, !848, !850, !852}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !842, file: !841, line: 198, baseType: !845, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !841, line: 21, baseType: !221)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !842, file: !841, line: 199, baseType: !307, size: 8, offset: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !842, file: !841, line: 200, baseType: !307, size: 8, offset: 40)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !842, file: !841, line: 201, baseType: !849, size: 16, offset: 48)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !841, line: 17, baseType: !314)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !842, file: !841, line: 202, baseType: !851, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !841, line: 16, baseType: !199)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !842, file: !841, line: 203, baseType: !853, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !841, line: 22, baseType: !199)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !836, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !836, file: !6, line: 381, baseType: !345, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !836, file: !6, line: 382, baseType: !345, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !610, file: !6, line: 477, baseType: !836, size: 256, offset: 7168)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !610, file: !6, line: 480, baseType: !859, size: 64, offset: 7424)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !610, file: !6, line: 483, baseType: !862, size: 64, offset: 7488)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !610, file: !6, line: 488, baseType: !345, size: 64, offset: 7552)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !610, file: !6, line: 492, baseType: !176, size: 64, offset: 7616)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !610, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !610, file: !6, line: 495, baseType: !176, size: 64, offset: 7744)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !610, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !610, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !610, file: !6, line: 500, baseType: !871, size: 64, offset: 7872)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !873, line: 45, baseType: !874)
!873 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !610, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !610, file: !6, line: 504, baseType: !877, size: 64, offset: 8000)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !880, line: 96, size: 192, elements: !881)
!880 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!881 = !{!882, !883, !964, !968}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !879, file: !880, line: 97, baseType: !7, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !879, file: !880, line: 98, baseType: !884, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !880, line: 24, size: 3072, elements: !886)
!886 = !{!887, !889, !890, !891, !892, !916, !917, !918, !919, !937, !949, !950, !961, !962, !963}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !885, file: !880, line: 26, baseType: !888, size: 128)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 128, elements: !797)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !885, file: !880, line: 27, baseType: !888, size: 128, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !885, file: !880, line: 28, baseType: !109, size: 32, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !885, file: !880, line: 31, baseType: !277, size: 32, align: 512, offset: 512)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !885, file: !880, line: 32, baseType: !893, size: 960, offset: 576)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !894, line: 206, size: 960, elements: !895)
!894 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!895 = !{!896, !905, !910, !912, !913, !915}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !893, file: !894, line: 207, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !178, line: 232, size: 128, align: 64, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !898, file: !178, line: 233, baseType: !897, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !898, file: !178, line: 234, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !897}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !893, file: !894, line: 208, baseType: !906, size: 256, offset: 64)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 256, elements: !908)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!908 = !{!909}
!909 = !DISubrange(count: 4)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !893, file: !894, line: 209, baseType: !911, size: 256, offset: 320)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 256, elements: !908)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !893, file: !894, line: 213, baseType: !381, size: 64, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !893, file: !894, line: 215, baseType: !914, size: 256, offset: 640)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 256, elements: !908)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !893, file: !894, line: 216, baseType: !305, size: 8, offset: 896)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !885, file: !880, line: 33, baseType: !208, size: 64, offset: 1536)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !885, file: !880, line: 34, baseType: !208, size: 64, offset: 1600)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !885, file: !880, line: 35, baseType: !249, size: 8, offset: 1664)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !885, file: !880, line: 36, baseType: !920, size: 320, offset: 1728)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !921, line: 11, size: 320, elements: !922)
!921 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!922 = !{!923, !930, !931, !936}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !920, file: !921, line: 16, baseType: !924, size: 128)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !178, line: 198, size: 128, elements: !925)
!925 = !{!926, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !924, file: !178, line: 199, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !924, file: !178, line: 199, baseType: !929, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !920, file: !921, line: 17, baseType: !208, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !920, file: !921, line: 18, baseType: !932, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !935}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !920, file: !921, line: 19, baseType: !220, size: 32, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !885, file: !880, line: 37, baseType: !938, size: 256, offset: 2048)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !939, line: 98, size: 256, elements: !940)
!939 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!940 = !{!941, !942, !943}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !938, file: !939, line: 99, baseType: !684, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !938, file: !939, line: 100, baseType: !184, size: 128, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !938, file: !939, line: 101, baseType: !944, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !939, line: 21, baseType: !945)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !885, file: !880, line: 38, baseType: !898, size: 128, align: 64, offset: 2304)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !885, file: !880, line: 39, baseType: !951, size: 64, offset: 2432)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !880, line: 49, size: 768, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !952, file: !880, line: 50, baseType: !277, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !952, file: !880, line: 51, baseType: !911, size: 256, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !952, file: !880, line: 53, baseType: !911, size: 256, offset: 320)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !952, file: !880, line: 54, baseType: !208, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !952, file: !880, line: 55, baseType: !951, size: 64, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !952, file: !880, line: 56, baseType: !109, size: 32, offset: 704)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !952, file: !880, line: 57, baseType: !109, size: 32, offset: 736)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !885, file: !880, line: 40, baseType: !208, size: 64, offset: 2496)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !885, file: !880, line: 42, baseType: !109, size: 32, offset: 2560)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !885, file: !880, line: 43, baseType: !878, size: 64, offset: 2624)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !879, file: !880, line: 99, baseType: !965, offset: 128)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !966, line: 211, elements: !967)
!966 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!967 = !{}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !879, file: !880, line: 100, baseType: !969, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !880, line: 63, size: 3008, elements: !971)
!971 = !{!972, !973, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !1003}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !970, file: !880, line: 64, baseType: !951, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !970, file: !880, line: 65, baseType: !974, size: 192, offset: 64)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 192, elements: !346)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !970, file: !880, line: 67, baseType: !109, size: 32, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !970, file: !880, line: 68, baseType: !680, size: 256, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !970, file: !880, line: 69, baseType: !277, size: 32, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !970, file: !880, line: 70, baseType: !680, size: 256, offset: 640)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !970, file: !880, line: 71, baseType: !208, size: 64, offset: 896)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !970, file: !880, line: 72, baseType: !208, size: 64, offset: 960)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !970, file: !880, line: 73, baseType: !208, size: 64, offset: 1024)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !970, file: !880, line: 74, baseType: !208, size: 64, offset: 1088)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !970, file: !880, line: 75, baseType: !208, size: 64, offset: 1152)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !970, file: !880, line: 76, baseType: !208, size: 64, offset: 1216)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !970, file: !880, line: 77, baseType: !208, size: 64, offset: 1280)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !970, file: !880, line: 78, baseType: !208, size: 64, offset: 1344)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !970, file: !880, line: 79, baseType: !249, size: 8, offset: 1408)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !970, file: !880, line: 80, baseType: !208, size: 64, offset: 1472)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !970, file: !880, line: 81, baseType: !680, size: 256, offset: 1536)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !970, file: !880, line: 82, baseType: !629, size: 256, offset: 1792)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !970, file: !880, line: 84, baseType: !297, size: 32, offset: 2048)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !970, file: !880, line: 87, baseType: !208, size: 64, offset: 2112)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !970, file: !880, line: 88, baseType: !208, size: 64, offset: 2176)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !970, file: !880, line: 89, baseType: !995, size: 704, offset: 2240)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !939, line: 111, size: 704, elements: !996)
!996 = !{!997, !998, !999, !1002}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !995, file: !939, line: 112, baseType: !938, size: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !995, file: !939, line: 113, baseType: !920, size: 320, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !995, file: !939, line: 116, baseType: !1000, size: 64, offset: 576)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !939, line: 18, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !995, file: !939, line: 117, baseType: !109, size: 32, offset: 640)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !970, file: !880, line: 90, baseType: !878, size: 64, offset: 2944)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !610, file: !6, line: 515, baseType: !1005, size: 64, offset: 8064)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1007, line: 117, size: 128, elements: !1008)
!1007 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1008 = !{!1009, !1010, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1006, file: !1007, line: 118, baseType: !676, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1006, file: !1007, line: 119, baseType: !676, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1006, file: !1007, line: 120, baseType: !381, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !610, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !610, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !610, file: !6, line: 520, baseType: !1015, size: 64, offset: 8192)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !610, file: !6, line: 523, baseType: !1017, size: 64, offset: 8256)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !610, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !610, file: !6, line: 525, baseType: !1022, size: 64, offset: 8384)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !610, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !610, file: !6, line: 533, baseType: !176, size: 64, offset: 8512)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !610, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !610, file: !6, line: 535, baseType: !1029, size: 64, offset: 8640)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !610, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !610, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !610, file: !6, line: 540, baseType: !1033, size: 64, offset: 8768)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1035, line: 32, size: 64, elements: !1036)
!1035 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1034, file: !1035, line: 33, baseType: !676, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1034, file: !1035, line: 34, baseType: !676, size: 32, offset: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !610, file: !6, line: 563, baseType: !184, size: 128, offset: 8832)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !610, file: !6, line: 565, baseType: !184, size: 128, offset: 8960)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !610, file: !6, line: 568, baseType: !1042, size: 64, offset: 9088)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !610, file: !6, line: 570, baseType: !297, size: 32, offset: 9152)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !585, file: !14, line: 2382, baseType: !584, size: 64, offset: 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !585, file: !14, line: 2383, baseType: !1048, size: 64, offset: 512)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !178, line: 194, size: 64, elements: !1049)
!1049 = !{!1050}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1048, file: !178, line: 195, baseType: !927, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !585, file: !14, line: 2385, baseType: !1052, offset: 576)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !966, line: 206, elements: !967)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !585, file: !14, line: 2386, baseType: !1052, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !585, file: !14, line: 2387, baseType: !1052, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !585, file: !14, line: 2388, baseType: !1056, offset: 576)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1052, elements: !346)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !585, file: !14, line: 2390, baseType: !1052, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !585, file: !14, line: 2391, baseType: !1052, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !585, file: !14, line: 2392, baseType: !1052, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !585, file: !14, line: 2393, baseType: !1052, offset: 576)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !571, file: !14, line: 1197, baseType: !1062, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1065)
!1065 = !{!1066, !1070, !1074, !1075, !1079, !1085, !1089, !1090, !1091, !1095, !1099, !1103, !1104, !1105, !1111, !1115, !1116, !1123, !1124, !1125, !1126, !1130, !1134, !1183, !1198, !1199}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1064, file: !14, line: 2058, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!424, !570}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1064, file: !14, line: 2059, baseType: !1071, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !424}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1064, file: !14, line: 2060, baseType: !1071, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1064, file: !14, line: 2062, baseType: !1076, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null, !424, !109}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1064, file: !14, line: 2063, baseType: !1080, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!109, !424, !1083}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1064, file: !14, line: 2064, baseType: !1086, size: 64, offset: 320)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!109, !424}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1064, file: !14, line: 2065, baseType: !1071, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1064, file: !14, line: 2066, baseType: !605, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1064, file: !14, line: 2067, baseType: !1092, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!109, !570, !109}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1064, file: !14, line: 2068, baseType: !1096, size: 64, offset: 576)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!109, !570, !13}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1064, file: !14, line: 2069, baseType: !1100, size: 64, offset: 640)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!109, !570}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1064, file: !14, line: 2070, baseType: !1096, size: 64, offset: 704)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1064, file: !14, line: 2071, baseType: !1100, size: 64, offset: 768)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1064, file: !14, line: 2072, baseType: !1106, size: 64, offset: 832)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!109, !459, !1109}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1064, file: !14, line: 2073, baseType: !1112, size: 64, offset: 896)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!109, !570, !807, !345}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1064, file: !14, line: 2074, baseType: !605, size: 64, offset: 960)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1064, file: !14, line: 2076, baseType: !1117, size: 64, offset: 1024)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!109, !1120, !459}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1122, line: 66, flags: DIFlagFwdDecl)
!1122 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1064, file: !14, line: 2077, baseType: !1117, size: 64, offset: 1088)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1064, file: !14, line: 2078, baseType: !1117, size: 64, offset: 1152)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1064, file: !14, line: 2079, baseType: !1117, size: 64, offset: 1216)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1064, file: !14, line: 2081, baseType: !1127, size: 64, offset: 1280)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!377, !570, !109, !345, !392, !580}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1064, file: !14, line: 2082, baseType: !1131, size: 64, offset: 1344)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!377, !570, !109, !204, !392, !580}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1064, file: !14, line: 2083, baseType: !1135, size: 64, offset: 1408)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!1138, !424}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1166, !1167, !1168}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1140, file: !19, line: 297, baseType: !924, size: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1140, file: !19, line: 298, baseType: !184, size: 128, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1140, file: !19, line: 299, baseType: !184, size: 128, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1140, file: !19, line: 300, baseType: !184, size: 128, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1140, file: !19, line: 301, baseType: !680, size: 256, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1140, file: !19, line: 302, baseType: !277, size: 32, offset: 768)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1140, file: !19, line: 303, baseType: !297, size: 32, offset: 800)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1140, file: !19, line: 304, baseType: !570, size: 64, offset: 832)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1140, file: !19, line: 305, baseType: !1151, size: 64, offset: 896)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1152)
!1152 = !{!1153, !1165}
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1151, file: !19, line: 69, baseType: !1154, size: 32)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1151, file: !19, line: 69, size: 32, elements: !1155)
!1155 = !{!1156, !1157, !1158}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1154, file: !19, line: 70, baseType: !430, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1154, file: !19, line: 71, baseType: !439, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1154, file: !19, line: 72, baseType: !1159, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1160, line: 24, baseType: !1161)
!1160 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1160, line: 22, size: 32, elements: !1162)
!1162 = !{!1163}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1161, file: !1160, line: 23, baseType: !1164, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1160, line: 20, baseType: !436)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1151, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1140, file: !19, line: 306, baseType: !580, size: 64, offset: 960)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1140, file: !19, line: 307, baseType: !208, size: 64, offset: 1024)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1140, file: !19, line: 308, baseType: !1169, size: 576, offset: 1088)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1170)
!1170 = !{!1171, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1182}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1169, file: !19, line: 206, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !582)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1169, file: !19, line: 207, baseType: !1172, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1169, file: !19, line: 208, baseType: !1172, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1169, file: !19, line: 209, baseType: !1172, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1169, file: !19, line: 210, baseType: !1172, size: 64, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1169, file: !19, line: 211, baseType: !1172, size: 64, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1169, file: !19, line: 212, baseType: !1172, size: 64, offset: 384)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1169, file: !19, line: 213, baseType: !1180, size: 64, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1181, line: 8, baseType: !691)
!1181 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1169, file: !19, line: 214, baseType: !1180, size: 64, offset: 512)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1064, file: !14, line: 2085, baseType: !1184, size: 64, offset: 1472)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!381, !570, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1189, line: 15, size: 256, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1190 = !{!1191, !1192, !1193, !1194, !1195}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1188, file: !1189, line: 16, baseType: !177, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1188, file: !1189, line: 19, baseType: !109, size: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1188, file: !1189, line: 26, baseType: !208, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1188, file: !1189, line: 33, baseType: !208, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1188, file: !1189, line: 36, baseType: !1196, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1064, file: !14, line: 2087, baseType: !1184, size: 64, offset: 1536)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1064, file: !14, line: 2089, baseType: !605, size: 64, offset: 1600)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !571, file: !14, line: 1198, baseType: !1201, size: 64, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1204)
!1204 = !{!1205, !1209, !1213, !1217, !1218, !1219, !1220, !1221, !1226, !1231, !1235}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1203, file: !19, line: 325, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!109, !1139}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1203, file: !19, line: 326, baseType: !1210, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!1139, !570, !109}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1203, file: !19, line: 327, baseType: !1214, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !1139}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1203, file: !19, line: 328, baseType: !1206, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1203, file: !19, line: 329, baseType: !1206, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1203, file: !19, line: 330, baseType: !1206, size: 64, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1203, file: !19, line: 331, baseType: !1092, size: 64, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1203, file: !19, line: 334, baseType: !1222, size: 64, offset: 448)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!1225, !424}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1203, file: !19, line: 335, baseType: !1227, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!109, !424, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1203, file: !19, line: 337, baseType: !1232, size: 64, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!109, !424, !1225}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1203, file: !19, line: 339, baseType: !1236, size: 64, offset: 640)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!109, !570, !1239}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !571, file: !14, line: 1199, baseType: !1241, size: 64, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1244)
!1244 = !{!1245, !1256, !1257, !1261, !1262, !1263, !1278, !1301, !1305, !1306, !1329}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1243, file: !19, line: 431, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!109, !570, !109, !109, !1249}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1251)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1252, line: 8, size: 128, elements: !1253)
!1252 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1251, file: !1252, line: 9, baseType: !564, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1251, file: !1252, line: 10, baseType: !459, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1243, file: !19, line: 432, baseType: !1092, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1243, file: !19, line: 433, baseType: !1258, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!109, !570, !7}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1243, file: !19, line: 434, baseType: !1258, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1243, file: !19, line: 435, baseType: !1092, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1243, file: !19, line: 436, baseType: !1264, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!109, !570, !109, !1267}
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1268, file: !19, line: 418, baseType: !109, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1268, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1268, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1268, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1268, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1268, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1268, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1268, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1243, file: !19, line: 437, baseType: !1279, size: 64, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!109, !570, !1151, !1282}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1283, file: !19, line: 346, baseType: !109, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1283, file: !19, line: 347, baseType: !197, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1283, file: !19, line: 348, baseType: !197, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1283, file: !19, line: 349, baseType: !197, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1283, file: !19, line: 350, baseType: !197, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1283, file: !19, line: 351, baseType: !197, size: 64, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1283, file: !19, line: 352, baseType: !197, size: 64, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1283, file: !19, line: 353, baseType: !690, size: 64, offset: 448)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1283, file: !19, line: 355, baseType: !690, size: 64, offset: 512)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1283, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1283, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1283, file: !19, line: 358, baseType: !197, size: 64, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1283, file: !19, line: 359, baseType: !197, size: 64, offset: 704)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1283, file: !19, line: 360, baseType: !197, size: 64, offset: 768)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1283, file: !19, line: 361, baseType: !690, size: 64, offset: 832)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1283, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1243, file: !19, line: 438, baseType: !1302, size: 64, offset: 448)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!109, !570, !1239, !1282}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1243, file: !19, line: 440, baseType: !1279, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1243, file: !19, line: 441, baseType: !1307, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!109, !570, !1310}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1311, file: !19, line: 412, baseType: !7, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1311, file: !19, line: 413, baseType: !1315, size: 1344, offset: 64)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1316, size: 1344, elements: !346)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1328}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1316, file: !19, line: 398, baseType: !7, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1316, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1316, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1316, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1316, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1316, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1316, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1316, file: !19, line: 406, baseType: !201, size: 64, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1316, file: !19, line: 407, baseType: !1327, size: 64, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !178, line: 132, baseType: !197)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1316, file: !19, line: 408, baseType: !1327, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1243, file: !19, line: 442, baseType: !1258, size: 64, offset: 640)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !571, file: !14, line: 1200, baseType: !1331, size: 64, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1333)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !571, file: !14, line: 1201, baseType: !208, size: 64, offset: 640)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !571, file: !14, line: 1202, baseType: !208, size: 64, offset: 704)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !571, file: !14, line: 1203, baseType: !208, size: 64, offset: 768)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !571, file: !14, line: 1204, baseType: !459, size: 64, offset: 832)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !571, file: !14, line: 1205, baseType: !1339, size: 320, offset: 896)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1340, line: 48, size: 320, elements: !1341)
!1340 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1341 = !{!1342, !1343, !1344, !1345, !1346}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1339, file: !1340, line: 49, baseType: !684, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1339, file: !1340, line: 55, baseType: !684, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1339, file: !1340, line: 57, baseType: !694, size: 32, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1339, file: !1340, line: 59, baseType: !638, size: 32, offset: 160)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1339, file: !1340, line: 60, baseType: !184, size: 128, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !571, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !571, file: !14, line: 1207, baseType: !297, size: 32, offset: 1248)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !571, file: !14, line: 1209, baseType: !176, size: 64, offset: 1280)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !571, file: !14, line: 1211, baseType: !1351, size: 64, offset: 1344)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1354)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !571, file: !14, line: 1223, baseType: !1356, size: 64, offset: 1408)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !476, line: 34, size: 64, elements: !1357)
!1357 = !{!1358}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1356, file: !476, line: 35, baseType: !479, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !571, file: !14, line: 1224, baseType: !184, size: 128, offset: 1472)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !571, file: !14, line: 1225, baseType: !1361, size: 64, offset: 1600)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !571, file: !14, line: 1226, baseType: !1364, size: 64, offset: 1664)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !571, file: !14, line: 1227, baseType: !1367, size: 64, offset: 1728)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !571, file: !14, line: 1228, baseType: !1370, size: 64, offset: 1792)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !571, file: !14, line: 1229, baseType: !924, size: 128, offset: 1856)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !571, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !571, file: !14, line: 1231, baseType: !1375, size: 2496, offset: 2048)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1381, !1413}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1375, file: !19, line: 522, baseType: !7, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1375, file: !19, line: 523, baseType: !1339, size: 320, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1375, file: !19, line: 524, baseType: !1380, size: 192, offset: 384)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 192, elements: !346)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1375, file: !19, line: 525, baseType: !1382, size: 1728, offset: 576)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1383, size: 1728, elements: !346)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1384)
!1384 = !{!1385, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1383, file: !19, line: 223, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1388)
!1388 = !{!1389, !1390, !1403, !1404}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1387, file: !19, line: 446, baseType: !109, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1387, file: !19, line: 447, baseType: !1391, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1393)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1394)
!1394 = !{!1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1393, file: !19, line: 313, baseType: !1092, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1393, file: !19, line: 314, baseType: !1092, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1393, file: !19, line: 315, baseType: !1092, size: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1393, file: !19, line: 316, baseType: !1092, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1393, file: !19, line: 317, baseType: !1206, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1393, file: !19, line: 318, baseType: !1206, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1393, file: !19, line: 319, baseType: !1206, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1393, file: !19, line: 320, baseType: !1236, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1387, file: !19, line: 448, baseType: !609, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1387, file: !19, line: 449, baseType: !1386, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1383, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1383, file: !19, line: 226, baseType: !184, size: 128, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1383, file: !19, line: 227, baseType: !208, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1383, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1383, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1383, file: !19, line: 230, baseType: !1172, size: 64, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1383, file: !19, line: 231, baseType: !1172, size: 64, offset: 448)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1383, file: !19, line: 232, baseType: !176, size: 64, offset: 512)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1375, file: !19, line: 526, baseType: !1414, size: 192, offset: 2304)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 192, elements: !346)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !571, file: !14, line: 1233, baseType: !1416, size: 2368, offset: 4544)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1417)
!1417 = !{!1418, !1419, !1420}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1416, file: !14, line: 1185, baseType: !315, size: 16)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1416, file: !14, line: 1186, baseType: !315, size: 16, offset: 16)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1416, file: !14, line: 1187, baseType: !1421, size: 2304, offset: 64)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1422, size: 2304, elements: !346)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1423, line: 12, size: 768, elements: !1424)
!1423 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1424 = !{!1425, !1439, !1440, !3522, !3523}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1422, file: !1423, line: 13, baseType: !1426, size: 384)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1427, line: 17, size: 384, elements: !1428)
!1427 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1428 = !{!1429, !1430, !1431, !1438}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1426, file: !1427, line: 18, baseType: !109, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1426, file: !1427, line: 19, baseType: !109, size: 32, offset: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1426, file: !1427, line: 20, baseType: !1432, size: 192, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1433, line: 41, baseType: !1434)
!1433 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1433, line: 37, size: 192, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1434, file: !1433, line: 38, baseType: !277, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1434, file: !1433, line: 39, baseType: !184, size: 128, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1426, file: !1427, line: 22, baseType: !898, size: 128, align: 64, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1422, file: !1423, line: 14, baseType: !752, size: 64, offset: 384)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1422, file: !1423, line: 15, baseType: !1441, size: 64, offset: 448)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1442, line: 16, size: 64, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1441, file: !1442, line: 17, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1122, line: 746, size: 58368, elements: !1447)
!1447 = !{!1448, !1456, !1457, !1458, !1464, !1465, !1466, !1467, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1538, !1549, !1644, !1648, !1651, !1682, !1683, !1684, !1685, !1696, !1698, !1699, !1700, !1701, !1702, !1703, !1714, !1715, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1732, !1733, !1740, !1741, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2698, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2746, !2752, !2753, !2754, !2755, !2756, !2760, !2763, !2770, !2775, !2778, !2781, !2784, !2787, !2925, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2963, !2964, !2965, !2974, !2982, !2983, !2984, !2985, !2986, !2991, !2992, !2993, !2996, !2997, !3000, !3003, !3006, !3014, !3017, !3018, !3104, !3105, !3106, !3107, !3108, !3114, !3115, !3116, !3117, !3120, !3121, !3124, !3127, !3128, !3131, !3132, !3133, !3136, !3137, !3138, !3139, !3140, !3141, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3173, !3174, !3180, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3192, !3264, !3266, !3267, !3268, !3269, !3270, !3271, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3299, !3300, !3301}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1446, file: !1122, line: 752, baseType: !1449, size: 192)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1450, line: 56, size: 192, elements: !1451)
!1450 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1451 = !{!1452, !1453, !1454, !1455}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1449, file: !1450, line: 57, baseType: !208, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1449, file: !1450, line: 58, baseType: !208, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1449, file: !1450, line: 59, baseType: !220, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1449, file: !1450, line: 61, baseType: !220, size: 32, offset: 160)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1446, file: !1122, line: 754, baseType: !7, size: 32, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1446, file: !1122, line: 767, baseType: !176, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1446, file: !1122, line: 768, baseType: !1459, size: 32, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1460, line: 113, baseType: !1461)
!1460 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1460, line: 111, size: 32, elements: !1462)
!1462 = !{!1463}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1461, file: !1460, line: 112, baseType: !297, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1446, file: !1122, line: 770, baseType: !7, size: 32, offset: 352)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1446, file: !1122, line: 771, baseType: !7, size: 32, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1446, file: !1122, line: 774, baseType: !109, size: 32, offset: 416)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1446, file: !1122, line: 775, baseType: !1468, size: 128, offset: 448)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1469, line: 58, size: 128, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1470 = !{!1471, !1477, !1482, !1483}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1468, file: !1469, line: 59, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1473, line: 60, size: 64, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1472, file: !1473, line: 61, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !1469, line: 60, baseType: !1478, size: 32, offset: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !1469, line: 60, size: 32, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1478, file: !1469, line: 61, baseType: !7, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1478, file: !1469, line: 62, baseType: !297, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1468, file: !1469, line: 65, baseType: !313, size: 16, offset: 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1468, file: !1469, line: 65, baseType: !313, size: 16, offset: 112)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1446, file: !1122, line: 776, baseType: !7, size: 32, offset: 576)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1446, file: !1122, line: 777, baseType: !208, size: 64, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1446, file: !1122, line: 778, baseType: !1445, size: 64, offset: 704)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1446, file: !1122, line: 787, baseType: !109, size: 32, offset: 768)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1446, file: !1122, line: 788, baseType: !109, size: 32, offset: 800)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1446, file: !1122, line: 790, baseType: !109, size: 32, offset: 832)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1446, file: !1122, line: 792, baseType: !109, size: 32, offset: 864)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1446, file: !1122, line: 793, baseType: !109, size: 32, offset: 896)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1446, file: !1122, line: 794, baseType: !109, size: 32, offset: 928)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1446, file: !1122, line: 795, baseType: !7, size: 32, offset: 960)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1446, file: !1122, line: 797, baseType: !1495, size: 2048, offset: 1024)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1122, line: 551, size: 2048, elements: !1496)
!1496 = !{!1497, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1517, !1520, !1521, !1522}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1495, file: !1122, line: 553, baseType: !1498, size: 128)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1122, line: 411, size: 128, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1498, file: !1122, line: 412, baseType: !208, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1498, file: !1122, line: 413, baseType: !220, size: 32, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1495, file: !1122, line: 554, baseType: !790, size: 192, align: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1495, file: !1122, line: 555, baseType: !197, size: 64, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1495, file: !1122, line: 556, baseType: !197, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1495, file: !1122, line: 558, baseType: !184, size: 128, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1495, file: !1122, line: 559, baseType: !7, size: 32, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1495, file: !1122, line: 561, baseType: !197, size: 64, offset: 640)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1495, file: !1122, line: 562, baseType: !197, size: 64, offset: 704)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1495, file: !1122, line: 563, baseType: !197, size: 64, offset: 768)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1495, file: !1122, line: 564, baseType: !197, size: 64, offset: 832)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1495, file: !1122, line: 565, baseType: !690, size: 64, offset: 896)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1495, file: !1122, line: 566, baseType: !197, size: 64, offset: 960)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1495, file: !1122, line: 568, baseType: !197, size: 64, offset: 1024)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1495, file: !1122, line: 571, baseType: !109, size: 32, offset: 1088)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1495, file: !1122, line: 572, baseType: !1516, size: 64, offset: 1152)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1495, file: !1122, line: 574, baseType: !1518, size: 64, offset: 1216)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1122, line: 49, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1495, file: !1122, line: 576, baseType: !1518, size: 64, offset: 1280)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1495, file: !1122, line: 578, baseType: !208, size: 64, offset: 1344)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1495, file: !1122, line: 588, baseType: !1523, size: 512, align: 512, offset: 1536)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1122, line: 497, size: 512, align: 512, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1523, file: !1122, line: 498, baseType: !197, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1523, file: !1122, line: 499, baseType: !197, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1523, file: !1122, line: 500, baseType: !197, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1523, file: !1122, line: 501, baseType: !220, size: 32, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1523, file: !1122, line: 502, baseType: !220, size: 32, offset: 224)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1523, file: !1122, line: 503, baseType: !208, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1523, file: !1122, line: 504, baseType: !208, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1523, file: !1122, line: 505, baseType: !208, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1523, file: !1122, line: 506, baseType: !1534, size: 64, align: 64, offset: 448)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1122, line: 445, size: 64, align: 64, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1534, file: !1122, line: 446, baseType: !7, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1534, file: !1122, line: 447, baseType: !7, size: 32, offset: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1446, file: !1122, line: 798, baseType: !1539, size: 384, offset: 3072)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1122, line: 592, size: 384, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1539, file: !1122, line: 593, baseType: !184, size: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1539, file: !1122, line: 594, baseType: !208, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1539, file: !1122, line: 595, baseType: !208, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1539, file: !1122, line: 596, baseType: !7, size: 32, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1539, file: !1122, line: 597, baseType: !315, size: 16, offset: 288)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1539, file: !1122, line: 598, baseType: !315, size: 16, offset: 304)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1539, file: !1122, line: 600, baseType: !1548, size: 64, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1446, file: !1122, line: 799, baseType: !1550, size: 1792, offset: 3456)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1122, line: 610, size: 1792, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1641, !1642}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1550, file: !1122, line: 611, baseType: !790, size: 192, align: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1550, file: !1122, line: 618, baseType: !197, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1550, file: !1122, line: 619, baseType: !197, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1550, file: !1122, line: 620, baseType: !197, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1550, file: !1122, line: 621, baseType: !197, size: 64, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1550, file: !1122, line: 622, baseType: !197, size: 64, offset: 448)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1550, file: !1122, line: 629, baseType: !690, size: 64, offset: 512)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1550, file: !1122, line: 630, baseType: !197, size: 64, offset: 576)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1550, file: !1122, line: 631, baseType: !7, size: 32, offset: 640)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1550, file: !1122, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1550, file: !1122, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1550, file: !1122, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1550, file: !1122, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1550, file: !1122, line: 662, baseType: !1566, size: 512, offset: 704)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1567)
!1567 = !{!1568, !1576, !1577, !1582, !1637, !1638, !1639, !1640}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1566, file: !25, line: 119, baseType: !1569, size: 256)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1570, line: 9, size: 256, elements: !1571)
!1570 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1569, file: !1570, line: 10, baseType: !790, size: 192, align: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1569, file: !1570, line: 11, baseType: !1574, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1575, line: 29, baseType: !690)
!1575 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1566, file: !25, line: 120, baseType: !1574, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1566, file: !25, line: 121, baseType: !1578, size: 64, offset: 320)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!24, !1581}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1566, file: !25, line: 122, baseType: !1583, size: 64, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1585)
!1585 = !{!1586, !1611, !1612, !1615, !1620, !1621, !1632, !1636}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1584, file: !25, line: 160, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1589)
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1588, file: !25, line: 216, baseType: !638, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1588, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1588, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1588, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1588, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1588, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1588, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1588, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1588, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1588, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1588, file: !25, line: 227, baseType: !315, size: 16, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1588, file: !25, line: 228, baseType: !315, size: 16, offset: 208)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1588, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1588, file: !25, line: 235, baseType: !1574, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1588, file: !25, line: 236, baseType: !1581, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1588, file: !25, line: 237, baseType: !1574, size: 64, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1588, file: !25, line: 238, baseType: !1581, size: 64, offset: 448)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1588, file: !25, line: 239, baseType: !1608, size: 4096, align: 512, offset: 512)
!1608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1584, size: 4096, align: 512, elements: !1609)
!1609 = !{!1610}
!1610 = !DISubrange(count: 8)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1584, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1584, file: !25, line: 162, baseType: !1613, size: 32, offset: 96)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !178, line: 32, baseType: !1614)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !379, line: 96, baseType: !109)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1584, file: !25, line: 163, baseType: !1616, size: 32, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !466, line: 274, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !466, line: 274, size: 32, elements: !1618)
!1618 = !{!1619}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1617, file: !466, line: 274, baseType: !470, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1584, file: !25, line: 164, baseType: !1581, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1584, file: !25, line: 165, baseType: !1622, size: 128, offset: 256)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1570, line: 14, size: 128, elements: !1623)
!1623 = !{!1624}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1622, file: !1570, line: 15, baseType: !1625, size: 128)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !791, line: 26, size: 128, elements: !1626)
!1626 = !{!1627, !1631}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1625, file: !791, line: 27, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !791, line: 12, size: 64, elements: !1629)
!1629 = !{!1630}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1628, file: !791, line: 13, baseType: !795, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1625, file: !791, line: 28, baseType: !795, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1584, file: !25, line: 166, baseType: !1633, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!1574}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1584, file: !25, line: 167, baseType: !1574, size: 64, offset: 448)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1566, file: !25, line: 123, baseType: !305, size: 8, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1566, file: !25, line: 124, baseType: !305, size: 8, offset: 456)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1566, file: !25, line: 125, baseType: !305, size: 8, offset: 464)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1566, file: !25, line: 126, baseType: !305, size: 8, offset: 472)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1550, file: !1122, line: 671, baseType: !1566, size: 512, offset: 1216)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1550, file: !1122, line: 679, baseType: !1643, size: 64, offset: 1728)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1446, file: !1122, line: 800, baseType: !1645, size: 64, offset: 5248)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1647)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1122, line: 800, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1446, file: !1122, line: 809, baseType: !1649, size: 64, offset: 5312)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1122, line: 70, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1446, file: !1122, line: 825, baseType: !1652, size: 2048, align: 512, offset: 5632)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1122, line: 509, size: 2048, align: 512, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1652, file: !1122, line: 511, baseType: !197, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1652, file: !1122, line: 512, baseType: !197, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1652, file: !1122, line: 513, baseType: !197, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1652, file: !1122, line: 514, baseType: !197, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1652, file: !1122, line: 515, baseType: !197, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1652, file: !1122, line: 516, baseType: !197, size: 64, offset: 320)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1652, file: !1122, line: 518, baseType: !197, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1652, file: !1122, line: 519, baseType: !197, size: 64, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1652, file: !1122, line: 520, baseType: !690, size: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1652, file: !1122, line: 522, baseType: !197, size: 64, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1652, file: !1122, line: 523, baseType: !197, size: 64, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1652, file: !1122, line: 524, baseType: !690, size: 64, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1652, file: !1122, line: 526, baseType: !690, size: 64, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1652, file: !1122, line: 527, baseType: !197, size: 64, offset: 832)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1652, file: !1122, line: 529, baseType: !197, size: 64, offset: 896)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1652, file: !1122, line: 530, baseType: !197, size: 64, offset: 960)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1652, file: !1122, line: 531, baseType: !197, size: 64, offset: 1024)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1652, file: !1122, line: 532, baseType: !197, size: 64, offset: 1088)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1652, file: !1122, line: 533, baseType: !197, size: 64, offset: 1152)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1652, file: !1122, line: 535, baseType: !197, size: 64, offset: 1216)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1652, file: !1122, line: 536, baseType: !197, size: 64, offset: 1280)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1652, file: !1122, line: 537, baseType: !197, size: 64, offset: 1344)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1652, file: !1122, line: 538, baseType: !197, size: 64, offset: 1408)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1652, file: !1122, line: 539, baseType: !197, size: 64, offset: 1472)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1652, file: !1122, line: 540, baseType: !197, size: 64, offset: 1536)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1652, file: !1122, line: 541, baseType: !197, size: 64, offset: 1600)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1652, file: !1122, line: 542, baseType: !197, size: 64, offset: 1664)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1652, file: !1122, line: 543, baseType: !197, size: 64, offset: 1728)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1446, file: !1122, line: 833, baseType: !7, size: 32, offset: 7680)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1446, file: !1122, line: 836, baseType: !7, size: 32, offset: 7712)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1446, file: !1122, line: 837, baseType: !109, size: 32, offset: 7744)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1446, file: !1122, line: 838, baseType: !1686, size: 64, offset: 7808)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1688)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1689, line: 19, baseType: !1690)
!1689 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1689, line: 19, size: 64, elements: !1691)
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1690, file: !1689, line: 19, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 64, elements: !1694)
!1694 = !{!1695}
!1695 = !DISubrange(count: 1)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1446, file: !1122, line: 839, baseType: !1697, size: 64, offset: 7872)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1446, file: !1122, line: 840, baseType: !1688, size: 64, offset: 7936)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1446, file: !1122, line: 841, baseType: !176, size: 64, offset: 8000)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1446, file: !1122, line: 843, baseType: !315, size: 16, offset: 8064)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1446, file: !1122, line: 845, baseType: !315, size: 16, offset: 8080)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1446, file: !1122, line: 848, baseType: !109, size: 32, offset: 8096)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1446, file: !1122, line: 849, baseType: !1704, size: 32, offset: 8128)
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1122, line: 718, size: 32, elements: !1705)
!1705 = !{!1706, !1713}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1704, file: !1122, line: 724, baseType: !1707, size: 32)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !1122, line: 719, size: 32, elements: !1708)
!1708 = !{!1709, !1710, !1711, !1712}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1707, file: !1122, line: 720, baseType: !305, size: 8)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1707, file: !1122, line: 721, baseType: !305, size: 8, offset: 8)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1707, file: !1122, line: 722, baseType: !305, size: 8, offset: 16)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1707, file: !1122, line: 723, baseType: !305, size: 8, offset: 24)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1704, file: !1122, line: 725, baseType: !220, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1446, file: !1122, line: 850, baseType: !184, size: 128, offset: 8192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1446, file: !1122, line: 851, baseType: !1716, size: 64, offset: 8320)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1122, line: 60, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1446, file: !1122, line: 855, baseType: !208, size: 64, offset: 8384)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1446, file: !1122, line: 856, baseType: !305, size: 8, offset: 8448)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1446, file: !1122, line: 857, baseType: !305, size: 8, offset: 8456)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1446, file: !1122, line: 858, baseType: !109, size: 32, offset: 8480)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1446, file: !1122, line: 859, baseType: !184, size: 128, offset: 8512)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1446, file: !1122, line: 860, baseType: !109, size: 32, offset: 8640)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1446, file: !1122, line: 861, baseType: !184, size: 128, offset: 8704)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1446, file: !1122, line: 873, baseType: !1726, size: 256, offset: 8832)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1122, line: 376, size: 256, elements: !1727)
!1727 = !{!1728, !1729, !1730, !1731}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1726, file: !1122, line: 381, baseType: !208, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1726, file: !1122, line: 384, baseType: !201, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1726, file: !1122, line: 389, baseType: !201, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1726, file: !1122, line: 392, baseType: !201, size: 64, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1446, file: !1122, line: 875, baseType: !184, size: 128, offset: 9088)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1446, file: !1122, line: 877, baseType: !1734, size: 320, offset: 9216)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1735, line: 86, size: 320, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1736 = !{!1737, !1738, !1739}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1734, file: !1735, line: 87, baseType: !109, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1734, file: !1735, line: 88, baseType: !184, size: 128, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1734, file: !1735, line: 89, baseType: !184, size: 128, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1446, file: !1122, line: 878, baseType: !790, size: 192, align: 64, offset: 9536)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1446, file: !1122, line: 881, baseType: !1742, size: 64, offset: 9728)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1744)
!1744 = !{!1745, !2617}
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !38, line: 734, baseType: !1746, size: 10240)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1743, file: !38, line: 734, size: 10240, elements: !1747)
!1747 = !{!1748, !1752, !1765, !2496, !2497, !2498, !2499, !2500, !2501, !2508, !2509, !2510, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2549, !2551, !2554, !2597, !2598, !2599, !2602, !2603, !2604, !2607, !2608, !2609, !2615, !2616}
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !38, line: 739, baseType: !1749, size: 512, align: 512)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1746, file: !38, line: 739, size: 512, align: 512, elements: !1750)
!1750 = !{!1751}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1749, file: !38, line: 747, baseType: !297, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1746, file: !38, line: 750, baseType: !1753, size: 128, offset: 512)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1754, line: 218, size: 128, elements: !1755)
!1754 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1755 = !{!1756, !1763, !1764}
!1756 = !DIDerivedType(tag: DW_TAG_member, scope: !1753, file: !1754, line: 219, baseType: !1757, size: 32)
!1757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1753, file: !1754, line: 219, size: 32, elements: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1757, file: !1754, line: 220, baseType: !277, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1757, file: !1754, line: 221, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1754, line: 197, baseType: !1762)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1754, line: 197, elements: !967)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1753, file: !1754, line: 223, baseType: !7, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1753, file: !1754, line: 224, baseType: !176, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1746, file: !38, line: 752, baseType: !1766, size: 64, offset: 640)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!208, !1769, !208, !208, !208, !208}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1771)
!1771 = !{!1772, !1778, !1779, !1781, !1782, !1783, !1784, !1785, !1835, !2025, !2034, !2035, !2036, !2486, !2487, !2488, !2489, !2491, !2492, !2495}
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !14, line: 995, baseType: !1773, size: 128)
!1773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1770, file: !14, line: 995, size: 128, elements: !1774)
!1774 = !{!1775, !1776, !1777}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1773, file: !14, line: 996, baseType: !1472, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1773, file: !14, line: 997, baseType: !898, size: 128, align: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1773, file: !14, line: 998, baseType: !7, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1770, file: !14, line: 1005, baseType: !277, size: 32, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1770, file: !14, line: 1006, baseType: !1780, size: 32, offset: 160)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !178, line: 156, baseType: !7)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1770, file: !14, line: 1007, baseType: !684, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1770, file: !14, line: 1008, baseType: !680, size: 256, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1770, file: !14, line: 1009, baseType: !580, size: 64, offset: 512)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1770, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1770, file: !14, line: 1011, baseType: !1786, size: 256, offset: 640)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1787)
!1787 = !{!1788, !1809, !1831, !1832, !1833, !1834}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1786, file: !14, line: 949, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1790, line: 34, baseType: !1791)
!1790 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1790, line: 25, size: 64, elements: !1792)
!1792 = !{!1793}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1791, file: !1790, line: 26, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1795, line: 27, baseType: !1796)
!1795 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1795, line: 13, size: 64, elements: !1797)
!1797 = !{!1798, !1808}
!1798 = !DIDerivedType(tag: DW_TAG_member, scope: !1796, file: !1795, line: 14, baseType: !1799, size: 32)
!1799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1796, file: !1795, line: 14, size: 32, elements: !1800)
!1800 = !{!1801, !1802}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1799, file: !1795, line: 15, baseType: !297, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1795, line: 16, baseType: !1803, size: 32)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1799, file: !1795, line: 16, size: 32, elements: !1804)
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1803, file: !1795, line: 18, baseType: !305, size: 8)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1803, file: !1795, line: 19, baseType: !1807, size: 24, offset: 8)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 24, elements: !346)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1796, file: !1795, line: 26, baseType: !289, size: 32, offset: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1786, file: !14, line: 950, baseType: !1810, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816, !1818, !1819, !1820, !1821}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1811, file: !30, line: 61, baseType: !1459, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1811, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1811, file: !30, line: 63, baseType: !277, size: 32, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1811, file: !30, line: 65, baseType: !1817, size: 256, offset: 128)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1048, size: 256, elements: !908)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1811, file: !30, line: 66, baseType: !1048, size: 64, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1811, file: !30, line: 68, baseType: !1432, size: 192, offset: 448)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1811, file: !30, line: 69, baseType: !898, size: 128, align: 64, offset: 640)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1811, file: !30, line: 70, baseType: !1822, offset: 768)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1823, elements: !1829)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1823, file: !30, line: 55, baseType: !109, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1823, file: !30, line: 56, baseType: !1827, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1829 = !{!1830}
!1830 = !DISubrange(count: -1)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1786, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1786, file: !14, line: 952, baseType: !430, size: 32, offset: 160)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1786, file: !14, line: 952, baseType: !430, size: 32, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1786, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1770, file: !14, line: 1012, baseType: !1836, size: 64, offset: 896)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1838)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1839, line: 110, size: 1472, elements: !1840)
!1839 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1840 = !{!1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1857, !1858, !1859, !1860, !1861, !1862, !1970, !1971, !1972, !1973, !1974, !2005, !2008, !2012, !2020}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1838, file: !1839, line: 111, baseType: !684, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1838, file: !1839, line: 112, baseType: !430, size: 32, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1838, file: !1839, line: 113, baseType: !439, size: 32, offset: 96)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1838, file: !1839, line: 114, baseType: !430, size: 32, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1838, file: !1839, line: 115, baseType: !439, size: 32, offset: 160)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1838, file: !1839, line: 116, baseType: !430, size: 32, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1838, file: !1839, line: 117, baseType: !439, size: 32, offset: 224)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1838, file: !1839, line: 118, baseType: !430, size: 32, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1838, file: !1839, line: 119, baseType: !439, size: 32, offset: 288)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1838, file: !1839, line: 120, baseType: !7, size: 32, offset: 320)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1838, file: !1839, line: 121, baseType: !1852, size: 64, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1853, line: 24, baseType: !1854)
!1853 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1853, line: 24, size: 64, elements: !1855)
!1855 = !{!1856}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1854, file: !1853, line: 24, baseType: !197, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1838, file: !1839, line: 122, baseType: !1852, size: 64, offset: 448)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1838, file: !1839, line: 123, baseType: !1852, size: 64, offset: 512)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1838, file: !1839, line: 124, baseType: !1852, size: 64, offset: 576)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1838, file: !1839, line: 125, baseType: !1852, size: 64, offset: 640)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1838, file: !1839, line: 127, baseType: !307, size: 8, offset: 704)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1838, file: !1839, line: 129, baseType: !1863, size: 64, offset: 768)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1865, line: 195, size: 1728, elements: !1866)
!1865 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1866 = !{!1867, !1868, !1871, !1876, !1877, !1880, !1881, !1886, !1887, !1888, !1889, !1892, !1893, !1894, !1895, !1896, !1934, !1955}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1864, file: !1865, line: 196, baseType: !1459, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1864, file: !1865, line: 197, baseType: !1869, size: 32, offset: 32)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1865, line: 28, baseType: !1870)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !178, line: 104, baseType: !676)
!1871 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !1865, line: 198, baseType: !1872, size: 192, offset: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1865, line: 198, size: 192, elements: !1873)
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1872, file: !1865, line: 199, baseType: !184, size: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1872, file: !1865, line: 200, baseType: !790, size: 192, align: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1864, file: !1865, line: 205, baseType: !1339, size: 320, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1864, file: !1865, line: 206, baseType: !1878, size: 64, offset: 576)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1865, line: 206, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1864, file: !1865, line: 207, baseType: !176, size: 64, offset: 640)
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !1865, line: 208, baseType: !1882, size: 64, offset: 704)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1865, line: 208, size: 64, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1882, file: !1865, line: 209, baseType: !1180, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1882, file: !1865, line: 210, baseType: !1180, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1864, file: !1865, line: 212, baseType: !1180, size: 64, offset: 768)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1864, file: !1865, line: 213, baseType: !430, size: 32, offset: 832)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1864, file: !1865, line: 214, baseType: !439, size: 32, offset: 864)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1864, file: !1865, line: 215, baseType: !1890, size: 32, offset: 896)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1865, line: 31, baseType: !1891)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !178, line: 110, baseType: !220)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1864, file: !1865, line: 216, baseType: !315, size: 16, offset: 928)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1864, file: !1865, line: 217, baseType: !315, size: 16, offset: 944)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1864, file: !1865, line: 221, baseType: !816, size: 16, offset: 960)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1864, file: !1865, line: 228, baseType: !208, size: 64, offset: 1024)
!1896 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !1865, line: 245, baseType: !1897, size: 320, offset: 1088)
!1897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1865, line: 245, size: 320, elements: !1898)
!1898 = !{!1899, !1926}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1897, file: !1865, line: 246, baseType: !1900, size: 320)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1865, line: 114, size: 320, elements: !1901)
!1901 = !{!1902, !1903, !1915, !1918, !1925}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1900, file: !1865, line: 116, baseType: !208, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, scope: !1900, file: !1865, line: 117, baseType: !1904, size: 64, offset: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1900, file: !1865, line: 117, size: 64, elements: !1905)
!1905 = !{!1906, !1914}
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1904, file: !1865, line: 118, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1865, line: 118, size: 64, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1907, file: !1865, line: 120, baseType: !313, size: 16)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1907, file: !1865, line: 121, baseType: !1911, size: 48, offset: 16)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 48, elements: !1912)
!1912 = !{!1913}
!1913 = !DISubrange(count: 6)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1904, file: !1865, line: 127, baseType: !208, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1900, file: !1865, line: 129, baseType: !1916, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1865, line: 102, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1900, file: !1865, line: 130, baseType: !1919, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1865, line: 108, size: 192, elements: !1921)
!1921 = !{!1922, !1923, !1924}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1920, file: !1865, line: 109, baseType: !898, size: 128, align: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1920, file: !1865, line: 110, baseType: !1459, size: 32, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1920, file: !1865, line: 111, baseType: !249, size: 8, offset: 160)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1900, file: !1865, line: 131, baseType: !204, size: 64, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, scope: !1897, file: !1865, line: 247, baseType: !1927, size: 320)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1897, file: !1865, line: 247, size: 320, elements: !1928)
!1928 = !{!1929, !1930, !1931, !1932, !1933}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1927, file: !1865, line: 248, baseType: !208, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1927, file: !1865, line: 249, baseType: !208, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1927, file: !1865, line: 250, baseType: !1916, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1927, file: !1865, line: 251, baseType: !1919, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1927, file: !1865, line: 252, baseType: !345, size: 64, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !1865, line: 260, baseType: !1935, size: 256, offset: 1408)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1865, line: 260, size: 256, elements: !1936)
!1936 = !{!1937, !1943}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1935, file: !1865, line: 261, baseType: !1938, size: 256)
!1938 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1865, line: 134, size: 256, elements: !1939)
!1939 = !{!1940, !1941}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1938, file: !1865, line: 135, baseType: !176, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1938, file: !1865, line: 136, baseType: !1942, size: 256)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 256, elements: !908)
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !1865, line: 262, baseType: !1944, size: 256)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1865, line: 262, size: 256, elements: !1945)
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1944, file: !1865, line: 264, baseType: !184, size: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1944, file: !1865, line: 265, baseType: !1948, size: 128, offset: 128)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1949, line: 22, size: 128, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1950 = !{!1951, !1954}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1948, file: !1949, line: 23, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1949, line: 23, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1948, file: !1949, line: 24, baseType: !208, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1864, file: !1865, line: 280, baseType: !1956, size: 64, offset: 1664)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1865, line: 176, size: 192, elements: !1958)
!1958 = !{!1959, !1968, !1969}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1957, file: !1865, line: 177, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1865, line: 171, baseType: !1961)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!109, !1863, !1964, !1966, !1863}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1917)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1938)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1957, file: !1865, line: 178, baseType: !1863, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1957, file: !1865, line: 179, baseType: !1916, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1838, file: !1839, line: 130, baseType: !1863, size: 64, offset: 832)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1838, file: !1839, line: 131, baseType: !1863, size: 64, offset: 896)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1838, file: !1839, line: 132, baseType: !1863, size: 64, offset: 960)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1838, file: !1839, line: 135, baseType: !176, size: 64, offset: 1024)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1838, file: !1839, line: 137, baseType: !1975, size: 64, offset: 1088)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1977, line: 14, size: 1088, elements: !1978)
!1977 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1978 = !{!1979, !1980, !1989, !1990, !1991, !1992, !1993, !1994}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1976, file: !1977, line: 15, baseType: !1459, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1976, file: !1977, line: 17, baseType: !1981, size: 320, offset: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1982, line: 22, size: 320, elements: !1983)
!1982 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1983 = !{!1984, !1985, !1986, !1987}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1981, file: !1982, line: 23, baseType: !638, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1981, file: !1982, line: 24, baseType: !690, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1981, file: !1982, line: 26, baseType: !184, size: 128, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1981, file: !1982, line: 28, baseType: !1988, size: 64, offset: 256)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1976, file: !1977, line: 19, baseType: !208, size: 64, offset: 384)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1976, file: !1977, line: 20, baseType: !684, size: 64, offset: 448)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1976, file: !1977, line: 23, baseType: !924, size: 128, offset: 512)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1976, file: !1977, line: 24, baseType: !430, size: 32, offset: 640)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1976, file: !1977, line: 29, baseType: !684, size: 64, offset: 704)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1976, file: !1977, line: 36, baseType: !1995, size: 320, offset: 768)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1996, line: 15, size: 320, elements: !1997)
!1996 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2003, !2004}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1995, file: !1996, line: 16, baseType: !638, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1995, file: !1996, line: 18, baseType: !109, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1995, file: !1996, line: 19, baseType: !109, size: 32, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1995, file: !1996, line: 20, baseType: !109, size: 32, offset: 96)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1995, file: !1996, line: 21, baseType: !109, size: 32, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1995, file: !1996, line: 22, baseType: !208, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1995, file: !1996, line: 23, baseType: !208, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1838, file: !1839, line: 138, baseType: !2006, size: 64, offset: 1152)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1838, file: !1839, line: 139, baseType: !2009, size: 64, offset: 1216)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2011, line: 16, flags: DIFlagFwdDecl)
!2011 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1838, file: !1839, line: 140, baseType: !2013, size: 64, offset: 1280)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1839, line: 25, size: 64, elements: !2015)
!2015 = !{!2016, !2017, !2018}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2014, file: !1839, line: 26, baseType: !297, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2014, file: !1839, line: 27, baseType: !109, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2014, file: !1839, line: 28, baseType: !2019, offset: 64)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, elements: !1829)
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !1838, file: !1839, line: 142, baseType: !2021, size: 128, offset: 1344)
!2021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1838, file: !1839, line: 142, size: 128, elements: !2022)
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2021, file: !1839, line: 143, baseType: !109, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2021, file: !1839, line: 144, baseType: !898, size: 128, align: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1770, file: !14, line: 1013, baseType: !2026, size: 256, offset: 960)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2027)
!2027 = !{!2028, !2029, !2030, !2031, !2032, !2033}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2026, file: !14, line: 971, baseType: !208, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2026, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2026, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2026, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2026, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2026, file: !14, line: 976, baseType: !580, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1770, file: !14, line: 1014, baseType: !1251, size: 128, offset: 1216)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1770, file: !14, line: 1015, baseType: !424, size: 64, offset: 1344)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1770, file: !14, line: 1016, baseType: !2037, size: 64, offset: 1408)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2039)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2040)
!2040 = !{!2041, !2042, !2046, !2051, !2055, !2084, !2085, !2091, !2104, !2112, !2116, !2117, !2408, !2409, !2413, !2418, !2419, !2423, !2427, !2433, !2434, !2438, !2439, !2445, !2449, !2453, !2459, !2463, !2467, !2471, !2475, !2476, !2482}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2039, file: !14, line: 1915, baseType: !609, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2039, file: !14, line: 1916, baseType: !2043, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!580, !1769, !580, !109}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2039, file: !14, line: 1917, baseType: !2047, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!377, !1769, !345, !392, !2050}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2039, file: !14, line: 1918, baseType: !2052, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!377, !1769, !204, !392, !2050}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2039, file: !14, line: 1919, baseType: !2056, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!377, !2059, !2081}
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2061)
!2061 = !{!2062, !2063, !2064, !2068, !2069, !2070, !2071}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2060, file: !14, line: 374, baseType: !1769, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2060, file: !14, line: 375, baseType: !580, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2060, file: !14, line: 376, baseType: !2065, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !2059, !381}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2060, file: !14, line: 377, baseType: !176, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2060, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2060, file: !14, line: 379, baseType: !313, size: 16, offset: 288)
!2071 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !14, line: 380, baseType: !2072, size: 64, offset: 320)
!2072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !14, line: 380, size: 64, elements: !2073)
!2073 = !{!2074, !2077}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2072, file: !14, line: 386, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2072, file: !14, line: 395, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!377, !176}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2083, line: 17, flags: DIFlagFwdDecl)
!2083 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2039, file: !14, line: 1920, baseType: !2056, size: 64, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2039, file: !14, line: 1921, baseType: !2086, size: 64, offset: 384)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!109, !2059, !2089, !7}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2039, file: !14, line: 1923, baseType: !2092, size: 64, offset: 448)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!109, !1769, !2095}
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2097)
!2097 = !{!2098, !2103}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2096, file: !14, line: 1859, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2100)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!249, !2095, !204, !109, !580, !197, !7}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2096, file: !14, line: 1860, baseType: !580, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2039, file: !14, line: 1924, baseType: !2105, size: 64, offset: 512)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!2108, !1769, !2110}
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2109, line: 59, baseType: !7)
!2109 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !595, line: 31, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2039, file: !14, line: 1925, baseType: !2113, size: 64, offset: 576)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!381, !1769, !7, !208}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2039, file: !14, line: 1926, baseType: !2113, size: 64, offset: 640)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2039, file: !14, line: 1927, baseType: !2118, size: 64, offset: 704)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!109, !1769, !2121}
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2123)
!2123 = !{!2124, !2133, !2134, !2142, !2149, !2150, !2155, !2156, !2161, !2162, !2165, !2401, !2402, !2403, !2404, !2405, !2406}
!2124 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !38, line: 628, baseType: !2125, size: 128)
!2125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2122, file: !38, line: 628, size: 128, elements: !2126)
!2126 = !{!2127, !2132}
!2127 = !DIDerivedType(tag: DW_TAG_member, scope: !2125, file: !38, line: 629, baseType: !2128, size: 128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2125, file: !38, line: 629, size: 128, elements: !2129)
!2129 = !{!2130, !2131}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2128, file: !38, line: 631, baseType: !208, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2128, file: !38, line: 632, baseType: !208, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2125, file: !38, line: 635, baseType: !898, size: 128, align: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2122, file: !38, line: 639, baseType: !1742, size: 64, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2122, file: !38, line: 640, baseType: !2135, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2136, line: 297, baseType: !2137)
!2136 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2136, line: 297, size: 64, elements: !2138)
!2138 = !{!2139}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2137, file: !2136, line: 297, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2141, line: 19, baseType: !208)
!2141 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2142 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !38, line: 646, baseType: !2143, size: 64, offset: 256)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2122, file: !38, line: 646, size: 64, elements: !2144)
!2144 = !{!2145, !2148}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2143, file: !38, line: 647, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2147)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !208)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2143, file: !38, line: 648, baseType: !2147, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2122, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2122, file: !38, line: 667, baseType: !2151, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2153)
!2153 = !{!2154}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2152, file: !38, line: 580, baseType: !1339, size: 320)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2122, file: !38, line: 670, baseType: !249, size: 8, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2122, file: !38, line: 681, baseType: !2157, size: 256, offset: 512)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2122, file: !38, line: 678, size: 256, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2157, file: !38, line: 679, baseType: !790, size: 192, align: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2157, file: !38, line: 680, baseType: !208, size: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2122, file: !38, line: 689, baseType: !184, size: 128, offset: 768)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2122, file: !38, line: 691, baseType: !2163, size: 64, offset: 896)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2122, file: !38, line: 694, baseType: !2166, size: 64, offset: 960)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2168)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2169, line: 563, size: 1024, elements: !2170)
!2169 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2170 = !{!2171, !2175, !2176, !2180, !2184, !2188, !2365, !2369, !2373, !2377, !2378, !2379, !2383, !2387, !2393, !2397}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2168, file: !2169, line: 564, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !2121}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2168, file: !2169, line: 569, baseType: !2172, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2168, file: !2169, line: 571, baseType: !2177, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!109, !2121, !208}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2168, file: !2169, line: 572, baseType: !2181, size: 64, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!109, !2121}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2168, file: !2169, line: 578, baseType: !2185, size: 64, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!109, !2121, !208, !208, !208}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2168, file: !2169, line: 580, baseType: !2189, size: 64, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!2192, !2193}
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2169, line: 512, size: 896, elements: !2195)
!2195 = !{!2196, !2204, !2205, !2212, !2219, !2229, !2358, !2359, !2361, !2363}
!2196 = !DIDerivedType(tag: DW_TAG_member, scope: !2194, file: !2169, line: 513, baseType: !2197, size: 320)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2194, file: !2169, line: 513, size: 320, elements: !2198)
!2198 = !{!2199, !2200, !2201, !2202, !2203}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2197, file: !2169, line: 514, baseType: !2121, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2197, file: !2169, line: 515, baseType: !177, size: 32, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2197, file: !2169, line: 516, baseType: !208, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2197, file: !2169, line: 517, baseType: !208, size: 64, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2197, file: !2169, line: 518, baseType: !208, size: 64, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2194, file: !2169, line: 520, baseType: !37, size: 32, offset: 320)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2194, file: !2169, line: 522, baseType: !2206, size: 64, offset: 384)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2141, line: 22, baseType: !2208)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2141, line: 22, size: 64, elements: !2209)
!2209 = !{!2210}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2208, file: !2141, line: 22, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2141, line: 15, baseType: !208)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2194, file: !2169, line: 524, baseType: !2213, size: 64, offset: 448)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2136, line: 372, baseType: !2215)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2136, line: 372, size: 64, elements: !2216)
!2216 = !{!2217}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2215, file: !2136, line: 372, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2141, line: 16, baseType: !208)
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2194, file: !2169, line: 527, baseType: !2220, size: 64, offset: 512)
!2220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2194, file: !2169, line: 527, size: 64, elements: !2221)
!2221 = !{!2222, !2228}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2220, file: !2169, line: 528, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2141, line: 21, baseType: !2224)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2141, line: 21, size: 64, elements: !2225)
!2225 = !{!2226}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2224, file: !2141, line: 21, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2141, line: 14, baseType: !208)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2220, file: !2169, line: 529, baseType: !2207, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2194, file: !2169, line: 534, baseType: !2230, size: 64, offset: 576)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2232)
!2232 = !{!2233, !2234, !2352, !2357}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2231, file: !38, line: 75, baseType: !208, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !38, line: 83, baseType: !2235, size: 320, offset: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !38, line: 83, size: 320, elements: !2236)
!2236 = !{!2237, !2258, !2272, !2276, !2351}
!2237 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !38, line: 84, baseType: !2238, size: 320)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !38, line: 84, size: 320, elements: !2239)
!2239 = !{!2240, !2251, !2252, !2257}
!2240 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !38, line: 90, baseType: !2241, size: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2238, file: !38, line: 90, size: 128, elements: !2242)
!2242 = !{!2243, !2244, !2249, !2250}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2241, file: !38, line: 91, baseType: !184, size: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !38, line: 94, baseType: !2245, size: 128)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2241, file: !38, line: 94, size: 128, elements: !2246)
!2246 = !{!2247, !2248}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2245, file: !38, line: 96, baseType: !176, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2245, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2241, file: !38, line: 102, baseType: !184, size: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2241, file: !38, line: 103, baseType: !184, size: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2238, file: !38, line: 106, baseType: !420, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !38, line: 107, baseType: !2253, size: 64, offset: 192)
!2253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2238, file: !38, line: 107, size: 64, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2253, file: !38, line: 108, baseType: !208, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2253, file: !38, line: 109, baseType: !208, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2238, file: !38, line: 117, baseType: !208, size: 64, offset: 256)
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !38, line: 119, baseType: !2259, size: 320)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !38, line: 119, size: 320, elements: !2260)
!2260 = !{!2261, !2262, !2265, !2266, !2267}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2259, file: !38, line: 124, baseType: !208, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2259, file: !38, line: 125, baseType: !2263, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2259, file: !38, line: 126, baseType: !208, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2259, file: !38, line: 127, baseType: !208, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !38, line: 128, baseType: !2268, size: 64, offset: 256)
!2268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2259, file: !38, line: 128, size: 64, elements: !2269)
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2268, file: !38, line: 133, baseType: !208, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2268, file: !38, line: 138, baseType: !684, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !38, line: 141, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !38, line: 141, size: 64, elements: !2274)
!2274 = !{!2275}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2273, file: !38, line: 142, baseType: !208, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !38, line: 144, baseType: !2277, size: 128)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !38, line: 144, size: 128, elements: !2278)
!2278 = !{!2279, !2350}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2277, file: !38, line: 146, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2282)
!2282 = !{!2283, !2293, !2314, !2315, !2316, !2317, !2318, !2332, !2333, !2334}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2281, file: !54, line: 127, baseType: !2284, size: 384)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2285)
!2285 = !{!2286, !2287, !2289, !2290, !2291, !2292}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2284, file: !54, line: 22, baseType: !208, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2284, file: !54, line: 23, baseType: !2288, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2284, file: !54, line: 24, baseType: !2288, size: 64, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2284, file: !54, line: 25, baseType: !208, size: 64, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2284, file: !54, line: 26, baseType: !208, size: 64, offset: 256)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2284, file: !54, line: 27, baseType: !208, size: 64, offset: 320)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2281, file: !54, line: 128, baseType: !2294, size: 128, offset: 384)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2295, line: 105, size: 128, elements: !2296)
!2295 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2296 = !{!2297, !2298}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2294, file: !2295, line: 110, baseType: !208, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2294, file: !2295, line: 118, baseType: !2299, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2295, line: 95, size: 448, elements: !2301)
!2301 = !{!2302, !2303, !2309, !2310, !2311, !2312, !2313}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2300, file: !2295, line: 96, baseType: !684, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2300, file: !2295, line: 97, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2295, line: 60, baseType: !2306)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2300, file: !2295, line: 98, baseType: !2304, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2300, file: !2295, line: 99, baseType: !249, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2300, file: !2295, line: 100, baseType: !249, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2300, file: !2295, line: 101, baseType: !898, size: 128, align: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2300, file: !2295, line: 102, baseType: !2308, size: 64, offset: 384)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2281, file: !54, line: 129, baseType: !629, size: 256, offset: 512)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2281, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2281, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2281, file: !54, line: 132, baseType: !208, size: 64, offset: 832)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2281, file: !54, line: 133, baseType: !2319, size: 64, offset: 896)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2321)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2322)
!2322 = !{!2323, !2327, !2328}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2321, file: !54, line: 83, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !2230}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2321, file: !54, line: 89, baseType: !2189, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2321, file: !54, line: 100, baseType: !2329, size: 64, offset: 128)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!109, !2280, !208, !208, !109}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2281, file: !54, line: 134, baseType: !176, size: 64, offset: 960)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2281, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2334 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !54, line: 136, baseType: !2335, size: 128, offset: 1088)
!2335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !54, line: 136, size: 128, elements: !2336)
!2336 = !{!2337, !2343}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2335, file: !54, line: 137, baseType: !2338, size: 128)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2339, line: 6, size: 128, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2340 = !{!2341, !2342}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2338, file: !2339, line: 7, baseType: !197, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2338, file: !2339, line: 8, baseType: !197, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2335, file: !54, line: 138, baseType: !2344)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2335, file: !54, line: 138, elements: !2345)
!2345 = !{!2346, !2348}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2344, file: !54, line: 138, baseType: !2347)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !54, line: 138, elements: !967)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2344, file: !54, line: 138, baseType: !2349)
!2349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2338, elements: !1829)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2277, file: !38, line: 147, baseType: !176, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2235, file: !38, line: 161, baseType: !898, size: 128, align: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !38, line: 164, baseType: !2353, size: 32, offset: 384)
!2353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !38, line: 164, size: 32, elements: !2354)
!2354 = !{!2355, !2356}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2353, file: !38, line: 169, baseType: !297, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2353, file: !38, line: 177, baseType: !7, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2231, file: !38, line: 181, baseType: !297, size: 32, offset: 416)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2194, file: !2169, line: 535, baseType: !2230, size: 64, offset: 640)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2194, file: !2169, line: 541, baseType: !2360, size: 64, offset: 704)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2194, file: !2169, line: 545, baseType: !2362, size: 64, offset: 768)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2194, file: !2169, line: 549, baseType: !2364, size: 64, offset: 832)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2136, line: 520, baseType: !2230)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2168, file: !2169, line: 581, baseType: !2366, size: 64, offset: 384)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!2192, !2193, !7}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2168, file: !2169, line: 582, baseType: !2370, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!2192, !2193, !208, !208}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2168, file: !2169, line: 584, baseType: !2374, size: 64, offset: 512)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!208, !2121}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2168, file: !2169, line: 588, baseType: !2189, size: 64, offset: 576)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2168, file: !2169, line: 591, baseType: !2189, size: 64, offset: 640)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2168, file: !2169, line: 597, baseType: !2380, size: 64, offset: 704)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!109, !2121, !208, !176, !109, !109}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2168, file: !2169, line: 603, baseType: !2384, size: 64, offset: 768)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!204, !2121}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2168, file: !2169, line: 613, baseType: !2388, size: 64, offset: 832)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!109, !2121, !2391}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2168, file: !2169, line: 625, baseType: !2394, size: 64, offset: 896)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!2391, !2121, !208}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2168, file: !2169, line: 633, baseType: !2398, size: 64, offset: 960)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!2230, !2121, !208}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2122, file: !38, line: 697, baseType: !208, size: 64, offset: 1024)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2122, file: !38, line: 699, baseType: !1769, size: 64, offset: 1088)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2122, file: !38, line: 700, baseType: !176, size: 64, offset: 1152)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2122, file: !38, line: 711, baseType: !684, size: 64, offset: 1216)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2122, file: !38, line: 717, baseType: !2391, size: 64, offset: 1280)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2122, file: !38, line: 722, baseType: !2407, offset: 1344)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !967)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2039, file: !14, line: 1928, baseType: !208, size: 64, offset: 768)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2039, file: !14, line: 1929, baseType: !2410, size: 64, offset: 832)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!109, !424, !1769}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2039, file: !14, line: 1930, baseType: !2414, size: 64, offset: 896)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!109, !1769, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !176)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2039, file: !14, line: 1931, baseType: !2410, size: 64, offset: 960)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2039, file: !14, line: 1932, baseType: !2420, size: 64, offset: 1024)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!109, !1769, !580, !580, !109}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2039, file: !14, line: 1933, baseType: !2424, size: 64, offset: 1088)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!109, !109, !1769, !109}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2039, file: !14, line: 1934, baseType: !2428, size: 64, offset: 1152)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!109, !1769, !109, !2431}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2039, file: !14, line: 1935, baseType: !1766, size: 64, offset: 1216)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2039, file: !14, line: 1936, baseType: !2435, size: 64, offset: 1280)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!109, !109}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2039, file: !14, line: 1937, baseType: !2428, size: 64, offset: 1344)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2039, file: !14, line: 1938, baseType: !2440, size: 64, offset: 1408)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!377, !2443, !1769, !2050, !392, !7}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1122, line: 59, flags: DIFlagFwdDecl)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2039, file: !14, line: 1939, baseType: !2446, size: 64, offset: 1472)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!377, !1769, !2050, !2443, !392, !7}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2039, file: !14, line: 1940, baseType: !2450, size: 64, offset: 1536)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{null, !1769}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2039, file: !14, line: 1941, baseType: !2454, size: 64, offset: 1600)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!109, !1769, !109, !2457, !2458}
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2039, file: !14, line: 1942, baseType: !2460, size: 64, offset: 1664)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!381, !1769, !109, !580, !580}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2039, file: !14, line: 1944, baseType: !2464, size: 64, offset: 1728)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !1120, !1769}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2039, file: !14, line: 1948, baseType: !2468, size: 64, offset: 1792)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!377, !1769, !580, !1769, !580, !392, !7}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2039, file: !14, line: 1950, baseType: !2472, size: 64, offset: 1856)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!580, !1769, !580, !1769, !580, !580, !7}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2039, file: !14, line: 1953, baseType: !2420, size: 64, offset: 1920)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2039, file: !14, line: 1954, baseType: !2477, size: 64, offset: 1984)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!109, !2480, !7}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2039, file: !14, line: 1955, baseType: !2483, size: 64, offset: 2048)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!109, !2480, !2089, !7}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1770, file: !14, line: 1018, baseType: !197, size: 64, offset: 1472)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1770, file: !14, line: 1020, baseType: !176, size: 64, offset: 1536)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1770, file: !14, line: 1023, baseType: !176, size: 64, offset: 1600)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1770, file: !14, line: 1027, baseType: !2490, size: 64, offset: 1664)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1770, file: !14, line: 1029, baseType: !420, size: 64, offset: 1728)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1770, file: !14, line: 1030, baseType: !2493, size: 32, offset: 1792)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2494, line: 8, baseType: !220)
!2494 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1770, file: !14, line: 1031, baseType: !2493, size: 32, offset: 1824)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1746, file: !38, line: 756, baseType: !208, size: 64, offset: 704)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1746, file: !38, line: 757, baseType: !208, size: 64, offset: 768)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1746, file: !38, line: 760, baseType: !208, size: 64, offset: 832)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1746, file: !38, line: 761, baseType: !208, size: 64, offset: 896)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1746, file: !38, line: 763, baseType: !208, size: 64, offset: 960)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1746, file: !38, line: 764, baseType: !2502, size: 64, offset: 1024)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2136, line: 299, baseType: !2504)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2136, line: 299, size: 64, elements: !2505)
!2505 = !{!2506}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2504, file: !2136, line: 299, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2141, line: 18, baseType: !208)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1746, file: !38, line: 773, baseType: !297, size: 32, offset: 1088)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1746, file: !38, line: 785, baseType: !297, size: 32, offset: 1120)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1746, file: !38, line: 795, baseType: !2511, size: 64, offset: 1152)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2513)
!2513 = !{!2514, !2515}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2512, file: !38, line: 727, baseType: !197, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2512, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1746, file: !38, line: 801, baseType: !208, size: 64, offset: 1216)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1746, file: !38, line: 804, baseType: !684, size: 64, offset: 1280)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1746, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1746, file: !38, line: 808, baseType: !277, size: 32, offset: 1376)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1746, file: !38, line: 823, baseType: !1339, size: 320, offset: 1408)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1746, file: !38, line: 825, baseType: !184, size: 128, offset: 1728)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1746, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1746, file: !38, line: 849, baseType: !208, size: 64, offset: 1920)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1746, file: !38, line: 850, baseType: !208, size: 64, offset: 1984)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1746, file: !38, line: 852, baseType: !208, size: 64, offset: 2048)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1746, file: !38, line: 853, baseType: !208, size: 64, offset: 2112)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1746, file: !38, line: 854, baseType: !686, size: 64, offset: 2176)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1746, file: !38, line: 855, baseType: !208, size: 64, offset: 2240)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1746, file: !38, line: 856, baseType: !208, size: 64, offset: 2304)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1746, file: !38, line: 857, baseType: !208, size: 64, offset: 2368)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1746, file: !38, line: 858, baseType: !208, size: 64, offset: 2432)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1746, file: !38, line: 865, baseType: !470, size: 32, offset: 2496)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1746, file: !38, line: 867, baseType: !277, size: 32, offset: 2528)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1746, file: !38, line: 869, baseType: !208, size: 64, offset: 2560)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1746, file: !38, line: 869, baseType: !208, size: 64, offset: 2624)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1746, file: !38, line: 869, baseType: !208, size: 64, offset: 2688)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1746, file: !38, line: 869, baseType: !208, size: 64, offset: 2752)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1746, file: !38, line: 870, baseType: !208, size: 64, offset: 2816)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1746, file: !38, line: 870, baseType: !208, size: 64, offset: 2880)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1746, file: !38, line: 870, baseType: !208, size: 64, offset: 2944)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1746, file: !38, line: 871, baseType: !208, size: 64, offset: 3008)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1746, file: !38, line: 871, baseType: !208, size: 64, offset: 3072)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1746, file: !38, line: 871, baseType: !208, size: 64, offset: 3136)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1746, file: !38, line: 871, baseType: !208, size: 64, offset: 3200)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1746, file: !38, line: 873, baseType: !2546, size: 3328, offset: 3264)
!2546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 3328, elements: !2547)
!2547 = !{!2548}
!2548 = !DISubrange(count: 52)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1746, file: !38, line: 875, baseType: !2550, size: 1280, offset: 6592)
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1981, size: 1280, elements: !908)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1746, file: !38, line: 877, baseType: !2552, size: 64, offset: 7872)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1746, file: !38, line: 880, baseType: !2555, size: 1088, offset: 7936)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2556, line: 72, baseType: !2557)
!2556 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2556, line: 23, size: 1088, elements: !2558)
!2558 = !{!2559, !2560, !2561, !2562, !2563, !2566, !2567, !2568, !2569, !2594, !2595, !2596}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2557, file: !2556, line: 28, baseType: !197, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2557, file: !2556, line: 38, baseType: !686, size: 64, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2557, file: !2556, line: 40, baseType: !208, size: 64, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2557, file: !2556, line: 43, baseType: !1339, size: 320, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2557, file: !2556, line: 44, baseType: !2564, size: 64, offset: 512)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2556, line: 44, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2557, file: !2556, line: 48, baseType: !208, size: 64, offset: 576)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2557, file: !2556, line: 59, baseType: !680, size: 256, offset: 640)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2557, file: !2556, line: 60, baseType: !176, size: 64, offset: 896)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2557, file: !2556, line: 61, baseType: !2570, size: 64, offset: 960)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2572)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2573, line: 13, size: 1216, elements: !2574)
!2573 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2574 = !{!2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2572, file: !2573, line: 14, baseType: !176, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2572, file: !2573, line: 15, baseType: !208, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2572, file: !2573, line: 17, baseType: !208, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2572, file: !2573, line: 17, baseType: !208, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2572, file: !2573, line: 18, baseType: !208, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2572, file: !2573, line: 18, baseType: !208, size: 64, offset: 320)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2572, file: !2573, line: 19, baseType: !257, size: 64, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2572, file: !2573, line: 21, baseType: !381, size: 64, offset: 448)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2572, file: !2573, line: 23, baseType: !381, size: 64, offset: 512)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2572, file: !2573, line: 24, baseType: !381, size: 64, offset: 576)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2572, file: !2573, line: 25, baseType: !381, size: 64, offset: 640)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2572, file: !2573, line: 26, baseType: !381, size: 64, offset: 704)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2572, file: !2573, line: 27, baseType: !381, size: 64, offset: 768)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2572, file: !2573, line: 28, baseType: !381, size: 64, offset: 832)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2572, file: !2573, line: 29, baseType: !381, size: 64, offset: 896)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2572, file: !2573, line: 30, baseType: !381, size: 64, offset: 960)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2572, file: !2573, line: 31, baseType: !381, size: 64, offset: 1024)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2572, file: !2573, line: 32, baseType: !381, size: 64, offset: 1088)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2572, file: !2573, line: 33, baseType: !381, size: 64, offset: 1152)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2557, file: !2556, line: 63, baseType: !297, size: 32, offset: 1024)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2557, file: !2556, line: 69, baseType: !313, size: 16, offset: 1056)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2557, file: !2556, line: 70, baseType: !814, size: 16, offset: 1072)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1746, file: !38, line: 882, baseType: !208, size: 64, offset: 9024)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1746, file: !38, line: 885, baseType: !277, size: 32, offset: 9088)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1746, file: !38, line: 886, baseType: !2600, size: 64, offset: 9152)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1746, file: !38, line: 901, baseType: !2006, size: 64, offset: 9216)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1746, file: !38, line: 904, baseType: !1769, size: 64, offset: 9280)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1746, file: !38, line: 906, baseType: !2605, size: 64, offset: 9344)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1746, file: !38, line: 930, baseType: !297, size: 32, offset: 9408)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1746, file: !38, line: 933, baseType: !297, size: 32, offset: 9440)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1746, file: !38, line: 935, baseType: !2610, size: 64, offset: 9472)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2611)
!2611 = !{!2612}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2610, file: !68, line: 104, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1746, file: !38, line: 940, baseType: !684, size: 64, offset: 9536)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1746, file: !38, line: 942, baseType: !938, size: 256, offset: 9600)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1743, file: !38, line: 986, baseType: !2618, offset: 10240)
!2618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, elements: !1829)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1446, file: !1122, line: 882, baseType: !1742, size: 64, offset: 9792)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1446, file: !1122, line: 884, baseType: !109, size: 32, offset: 9856)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1446, file: !1122, line: 885, baseType: !109, size: 32, offset: 9888)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1446, file: !1122, line: 886, baseType: !109, size: 32, offset: 9920)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1446, file: !1122, line: 888, baseType: !109, size: 32, offset: 9952)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1446, file: !1122, line: 890, baseType: !208, size: 64, offset: 9984)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1446, file: !1122, line: 893, baseType: !7, size: 32, offset: 10048)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1446, file: !1122, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1446, file: !1122, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1446, file: !1122, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1446, file: !1122, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1446, file: !1122, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1446, file: !1122, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1446, file: !1122, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1446, file: !1122, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1446, file: !1122, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1446, file: !1122, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1446, file: !1122, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1446, file: !1122, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1446, file: !1122, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1446, file: !1122, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1446, file: !1122, line: 969, baseType: !208, size: 64, offset: 10176)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1446, file: !1122, line: 971, baseType: !2642, size: 448, offset: 10240)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2643)
!2643 = !{!2644, !2645, !2650}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2642, file: !62, line: 26, baseType: !208, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2642, file: !62, line: 27, baseType: !2646, size: 64, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!381, !2649}
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, scope: !2642, file: !62, line: 28, baseType: !2651, size: 320, offset: 128)
!2651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2642, file: !62, line: 28, size: 320, elements: !2652)
!2652 = !{!2653, !2663, !2688}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2651, file: !62, line: 37, baseType: !2654, size: 320)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2651, file: !62, line: 30, size: 320, elements: !2655)
!2655 = !{!2656, !2658, !2659, !2660, !2661, !2662}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2654, file: !62, line: 31, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2654, file: !62, line: 32, baseType: !220, size: 32, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2654, file: !62, line: 33, baseType: !220, size: 32, offset: 96)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2654, file: !62, line: 34, baseType: !220, size: 32, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2654, file: !62, line: 35, baseType: !197, size: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2654, file: !62, line: 36, baseType: !2657, size: 64, offset: 256)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2651, file: !62, line: 47, baseType: !2664, size: 192)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2651, file: !62, line: 39, size: 192, elements: !2665)
!2665 = !{!2666, !2667, !2668, !2687}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2664, file: !62, line: 40, baseType: !1613, size: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2664, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, scope: !2664, file: !62, line: 42, baseType: !2669, size: 64, offset: 64)
!2669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2664, file: !62, line: 42, size: 64, elements: !2670)
!2670 = !{!2671, !2679}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2669, file: !62, line: 43, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2674, line: 7, size: 128, elements: !2675)
!2674 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2675 = !{!2676, !2678}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2673, file: !2674, line: 8, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !379, line: 93, baseType: !582)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2673, file: !2674, line: 9, baseType: !582, size: 64, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2669, file: !62, line: 44, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2682, line: 7, size: 64, elements: !2683)
!2682 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2683 = !{!2684, !2686}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2681, file: !2682, line: 8, baseType: !2685, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2682, line: 5, baseType: !676)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2681, file: !2682, line: 9, baseType: !676, size: 32, offset: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2664, file: !62, line: 46, baseType: !197, size: 64, offset: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2651, file: !62, line: 55, baseType: !2689, size: 256)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2651, file: !62, line: 49, size: 256, elements: !2690)
!2690 = !{!2691, !2694, !2695, !2696, !2697}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2689, file: !62, line: 50, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2689, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2689, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2689, file: !62, line: 53, baseType: !208, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2689, file: !62, line: 54, baseType: !208, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1446, file: !1122, line: 973, baseType: !2699, size: 32, offset: 10688)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !178, line: 27, baseType: !2700)
!2700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !379, line: 28, baseType: !109)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1446, file: !1122, line: 974, baseType: !2699, size: 32, offset: 10720)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1446, file: !1122, line: 978, baseType: !208, size: 64, offset: 10752)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1446, file: !1122, line: 987, baseType: !1445, size: 64, offset: 10816)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1446, file: !1122, line: 990, baseType: !1445, size: 64, offset: 10880)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1446, file: !1122, line: 995, baseType: !184, size: 128, offset: 10944)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1446, file: !1122, line: 996, baseType: !184, size: 128, offset: 11072)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1446, file: !1122, line: 997, baseType: !1445, size: 64, offset: 11200)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1446, file: !1122, line: 1005, baseType: !184, size: 128, offset: 11264)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1446, file: !1122, line: 1006, baseType: !184, size: 128, offset: 11392)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1446, file: !1122, line: 1009, baseType: !1810, size: 64, offset: 11520)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1446, file: !1122, line: 1010, baseType: !2712, size: 512, offset: 11584)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !924, size: 512, elements: !908)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1446, file: !1122, line: 1011, baseType: !184, size: 128, offset: 12096)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1446, file: !1122, line: 1012, baseType: !184, size: 128, offset: 12224)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1446, file: !1122, line: 1014, baseType: !628, size: 64, offset: 12352)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1446, file: !1122, line: 1017, baseType: !807, size: 64, offset: 12416)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1446, file: !1122, line: 1020, baseType: !807, size: 64, offset: 12480)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1446, file: !1122, line: 1023, baseType: !176, size: 64, offset: 12544)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1446, file: !1122, line: 1025, baseType: !197, size: 64, offset: 12608)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1446, file: !1122, line: 1026, baseType: !197, size: 64, offset: 12672)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1446, file: !1122, line: 1031, baseType: !197, size: 64, offset: 12736)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1446, file: !1122, line: 1032, baseType: !2723, size: 192, offset: 12800)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1122, line: 324, size: 192, elements: !2724)
!2724 = !{!2725, !2726, !2727}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2723, file: !1122, line: 326, baseType: !197, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2723, file: !1122, line: 327, baseType: !197, size: 64, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2723, file: !1122, line: 328, baseType: !638, size: 32, offset: 128)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1446, file: !1122, line: 1041, baseType: !208, size: 64, offset: 12992)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1446, file: !1122, line: 1042, baseType: !208, size: 64, offset: 13056)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1446, file: !1122, line: 1045, baseType: !197, size: 64, offset: 13120)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1446, file: !1122, line: 1048, baseType: !197, size: 64, offset: 13184)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1446, file: !1122, line: 1051, baseType: !208, size: 64, offset: 13248)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1446, file: !1122, line: 1052, baseType: !208, size: 64, offset: 13312)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1446, file: !1122, line: 1055, baseType: !2735, size: 640, offset: 13376)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2736, line: 132, size: 640, elements: !2737)
!2736 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2737 = !{!2738, !2744, !2745}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2735, file: !2736, line: 133, baseType: !2739, size: 576)
!2739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2740, size: 576, elements: !346)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2736, line: 117, size: 192, elements: !2741)
!2741 = !{!2742, !2743}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2740, file: !2736, line: 118, baseType: !197, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2740, file: !2736, line: 119, baseType: !1622, size: 128, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2735, file: !2736, line: 134, baseType: !7, size: 32, offset: 576)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2735, file: !2736, line: 135, baseType: !7, size: 32, offset: 608)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1446, file: !1122, line: 1058, baseType: !2747, size: 448, offset: 14016)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2736, line: 144, size: 448, elements: !2748)
!2748 = !{!2749, !2750, !2751}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2747, file: !2736, line: 145, baseType: !898, size: 128, align: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2747, file: !2736, line: 146, baseType: !680, size: 256, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2747, file: !2736, line: 147, baseType: !7, size: 32, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1446, file: !1122, line: 1064, baseType: !1836, size: 64, offset: 14464)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1446, file: !1122, line: 1067, baseType: !1836, size: 64, offset: 14528)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1446, file: !1122, line: 1070, baseType: !1836, size: 64, offset: 14592)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1446, file: !1122, line: 1074, baseType: !1863, size: 64, offset: 14656)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1446, file: !1122, line: 1084, baseType: !2757, size: 128, offset: 14720)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 128, elements: !2758)
!2758 = !{!2759}
!2759 = !DISubrange(count: 16)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1446, file: !1122, line: 1086, baseType: !2761, size: 64, offset: 14848)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1122, line: 55, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1446, file: !1122, line: 1089, baseType: !2764, size: 64, offset: 14912)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2765, line: 12, size: 64, elements: !2766)
!2765 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2766 = !{!2767}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2764, file: !2765, line: 13, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2765, line: 8, flags: DIFlagFwdDecl)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1446, file: !1122, line: 1090, baseType: !2771, size: 128, offset: 14976)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2772, line: 13, size: 128, elements: !2773)
!2772 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2773 = !{!2774}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2771, file: !2772, line: 14, baseType: !184, size: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1446, file: !1122, line: 1097, baseType: !2776, size: 64, offset: 15104)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1122, line: 50, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1446, file: !1122, line: 1100, baseType: !2779, size: 64, offset: 15168)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1122, line: 1100, flags: DIFlagFwdDecl)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1446, file: !1122, line: 1103, baseType: !2782, size: 64, offset: 15232)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1122, line: 53, flags: DIFlagFwdDecl)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1446, file: !1122, line: 1107, baseType: !2785, size: 64, offset: 15296)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1122, line: 56, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1446, file: !1122, line: 1110, baseType: !2788, size: 64, offset: 15360)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2790, line: 93, size: 8768, elements: !2791)
!2790 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2791 = !{!2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2839, !2848, !2849, !2851, !2852, !2853, !2856, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2894, !2895, !2902, !2912, !2915, !2916, !2919, !2920, !2921, !2922, !2923, !2924}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2789, file: !2790, line: 94, baseType: !1459, size: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2789, file: !2790, line: 95, baseType: !297, size: 32, offset: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2789, file: !2790, line: 96, baseType: !109, size: 32, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2789, file: !2790, line: 97, baseType: !109, size: 32, offset: 96)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2789, file: !2790, line: 98, baseType: !184, size: 128, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2789, file: !2790, line: 100, baseType: !1432, size: 192, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2789, file: !2790, line: 103, baseType: !1445, size: 64, offset: 448)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2789, file: !2790, line: 106, baseType: !2800, size: 192, offset: 512)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2011, line: 32, size: 192, elements: !2801)
!2801 = !{!2802, !2803}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2800, file: !2011, line: 33, baseType: !184, size: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2800, file: !2011, line: 34, baseType: !2804, size: 64, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2805, line: 25, baseType: !2806)
!2805 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2805, line: 23, size: 64, elements: !2807)
!2807 = !{!2808}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2806, file: !2805, line: 24, baseType: !1693, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2789, file: !2790, line: 109, baseType: !1048, size: 64, offset: 704)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2789, file: !2790, line: 112, baseType: !109, size: 32, offset: 768)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2789, file: !2790, line: 114, baseType: !109, size: 32, offset: 800)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2789, file: !2790, line: 115, baseType: !1445, size: 64, offset: 832)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2789, file: !2790, line: 118, baseType: !109, size: 32, offset: 896)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2789, file: !2790, line: 119, baseType: !7, size: 32, offset: 928)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2789, file: !2790, line: 121, baseType: !2816, size: 64, offset: 960)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2790, line: 80, size: 448, elements: !2818)
!2818 = !{!2819, !2820, !2826}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2817, file: !2790, line: 81, baseType: !297, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2817, file: !2790, line: 82, baseType: !2821, size: 128, offset: 64)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2790, line: 75, size: 128, elements: !2822)
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2821, file: !2790, line: 76, baseType: !1445, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2821, file: !2790, line: 77, baseType: !2825, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2817, file: !2790, line: 83, baseType: !629, size: 256, offset: 192)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2789, file: !2790, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2789, file: !2790, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2789, file: !2790, line: 138, baseType: !7, size: 32, offset: 1056)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2789, file: !2790, line: 139, baseType: !184, size: 128, offset: 1088)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2789, file: !2790, line: 142, baseType: !1566, size: 512, offset: 1216)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2789, file: !2790, line: 143, baseType: !1574, size: 64, offset: 1728)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2789, file: !2790, line: 150, baseType: !2834, size: 256, offset: 1792)
!2834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2835, size: 256, elements: !797)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2790, line: 38, size: 128, elements: !2836)
!2836 = !{!2837, !2838}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2835, file: !2790, line: 39, baseType: !197, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2835, file: !2790, line: 40, baseType: !197, size: 64, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2789, file: !2790, line: 156, baseType: !2840, size: 192, offset: 2048)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2790, line: 66, size: 192, elements: !2841)
!2841 = !{!2842}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2840, file: !2790, line: 67, baseType: !2843, size: 192)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2790, line: 47, size: 192, elements: !2844)
!2844 = !{!2845, !2846, !2847}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2843, file: !2790, line: 48, baseType: !686, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2843, file: !2790, line: 49, baseType: !686, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2843, file: !2790, line: 50, baseType: !686, size: 64, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2789, file: !2790, line: 160, baseType: !2735, size: 640, offset: 2240)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2789, file: !2790, line: 163, baseType: !2850, size: 256, offset: 2880)
!2850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1810, size: 256, elements: !908)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2789, file: !2790, line: 169, baseType: !1810, size: 64, offset: 3136)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2789, file: !2790, line: 172, baseType: !109, size: 32, offset: 3200)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2789, file: !2790, line: 174, baseType: !2854, size: 64, offset: 3264)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2790, line: 174, flags: DIFlagFwdDecl)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2789, file: !2790, line: 185, baseType: !2857, size: 64, offset: 3328)
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !466, line: 860, baseType: !2858)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !466, line: 853, size: 64, elements: !2859)
!2859 = !{!2860, !2861}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2858, file: !466, line: 858, baseType: !465, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2858, file: !466, line: 859, baseType: !277, size: 32, offset: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2789, file: !2790, line: 186, baseType: !197, size: 64, offset: 3392)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2789, file: !2790, line: 186, baseType: !197, size: 64, offset: 3456)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2789, file: !2790, line: 186, baseType: !197, size: 64, offset: 3520)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2789, file: !2790, line: 186, baseType: !197, size: 64, offset: 3584)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2789, file: !2790, line: 187, baseType: !197, size: 64, offset: 3648)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2789, file: !2790, line: 188, baseType: !197, size: 64, offset: 3712)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2789, file: !2790, line: 189, baseType: !2723, size: 192, offset: 3776)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2789, file: !2790, line: 190, baseType: !208, size: 64, offset: 3968)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2789, file: !2790, line: 190, baseType: !208, size: 64, offset: 4032)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2789, file: !2790, line: 190, baseType: !208, size: 64, offset: 4096)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2789, file: !2790, line: 190, baseType: !208, size: 64, offset: 4160)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2789, file: !2790, line: 191, baseType: !208, size: 64, offset: 4224)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2789, file: !2790, line: 191, baseType: !208, size: 64, offset: 4288)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2789, file: !2790, line: 191, baseType: !208, size: 64, offset: 4352)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2789, file: !2790, line: 191, baseType: !208, size: 64, offset: 4416)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2789, file: !2790, line: 192, baseType: !208, size: 64, offset: 4480)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2789, file: !2790, line: 192, baseType: !208, size: 64, offset: 4544)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2789, file: !2790, line: 192, baseType: !208, size: 64, offset: 4608)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2789, file: !2790, line: 192, baseType: !208, size: 64, offset: 4672)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2789, file: !2790, line: 193, baseType: !208, size: 64, offset: 4736)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2789, file: !2790, line: 193, baseType: !208, size: 64, offset: 4800)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2789, file: !2790, line: 194, baseType: !2884, size: 448, offset: 4864)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2885, line: 12, size: 448, elements: !2886)
!2885 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2886 = !{!2887, !2888, !2889, !2890, !2891, !2892, !2893}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2884, file: !2885, line: 15, baseType: !197, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2884, file: !2885, line: 17, baseType: !197, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2884, file: !2885, line: 19, baseType: !197, size: 64, offset: 128)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2884, file: !2885, line: 21, baseType: !197, size: 64, offset: 192)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2884, file: !2885, line: 29, baseType: !197, size: 64, offset: 256)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2884, file: !2885, line: 35, baseType: !197, size: 64, offset: 320)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2884, file: !2885, line: 44, baseType: !197, size: 64, offset: 384)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2789, file: !2790, line: 202, baseType: !201, size: 64, offset: 5312)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2789, file: !2790, line: 213, baseType: !2896, size: 2048, offset: 5376)
!2896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2897, size: 2048, elements: !2758)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2898, line: 43, size: 128, elements: !2899)
!2898 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2899 = !{!2900, !2901}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2897, file: !2898, line: 44, baseType: !394, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2897, file: !2898, line: 45, baseType: !394, size: 64, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2789, file: !2790, line: 216, baseType: !2903, size: 448, offset: 7424)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2790, line: 30, size: 448, elements: !2904)
!2904 = !{!2905, !2906, !2907, !2908, !2909, !2910, !2911}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2903, file: !2790, line: 31, baseType: !109, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2903, file: !2790, line: 32, baseType: !381, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2903, file: !2790, line: 33, baseType: !208, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2903, file: !2790, line: 34, baseType: !197, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2903, file: !2790, line: 34, baseType: !197, size: 64, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2903, file: !2790, line: 35, baseType: !208, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2903, file: !2790, line: 35, baseType: !208, size: 64, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2789, file: !2790, line: 219, baseType: !2913, size: 64, offset: 7872)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2790, line: 219, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2789, file: !2790, line: 222, baseType: !7, size: 32, offset: 7936)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2789, file: !2790, line: 223, baseType: !2917, size: 64, offset: 8000)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2790, line: 223, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2789, file: !2790, line: 230, baseType: !249, size: 8, offset: 8064)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2789, file: !2790, line: 231, baseType: !816, size: 16, offset: 8080)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2789, file: !2790, line: 232, baseType: !816, size: 16, offset: 8096)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2789, file: !2790, line: 234, baseType: !1742, size: 64, offset: 8128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2789, file: !2790, line: 237, baseType: !680, size: 256, offset: 8192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2789, file: !2790, line: 243, baseType: !1339, size: 320, offset: 8448)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1446, file: !1122, line: 1111, baseType: !2926, size: 64, offset: 15424)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2790, line: 20, size: 16640, elements: !2928)
!2928 = !{!2929, !2930, !2931, !2932}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2927, file: !2790, line: 21, baseType: !277, size: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2927, file: !2790, line: 22, baseType: !1459, size: 32, offset: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2927, file: !2790, line: 23, baseType: !1432, size: 192, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2927, file: !2790, line: 24, baseType: !2933, size: 16384, offset: 256)
!2933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2934, size: 16384, elements: !350)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2011, line: 51, size: 256, elements: !2935)
!2935 = !{!2936}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2934, file: !2011, line: 52, baseType: !2937, size: 256)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2011, line: 37, size: 256, elements: !2938)
!2938 = !{!2939, !2946, !2947, !2951}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2937, file: !2011, line: 39, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2941, line: 83, baseType: !2942)
!2941 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2941, line: 82, baseType: !2944)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{null, !109}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2937, file: !2011, line: 40, baseType: !208, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2937, file: !2011, line: 46, baseType: !2948, size: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2941, line: 86, baseType: !2949)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2941, line: 85, baseType: !1043)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2937, file: !2011, line: 48, baseType: !2804, size: 64, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1446, file: !1122, line: 1112, baseType: !2804, size: 64, offset: 15488)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1446, file: !1122, line: 1113, baseType: !2804, size: 64, offset: 15552)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1446, file: !1122, line: 1115, baseType: !2804, size: 64, offset: 15616)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1446, file: !1122, line: 1116, baseType: !2800, size: 192, offset: 15680)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1446, file: !1122, line: 1117, baseType: !208, size: 64, offset: 15872)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1446, file: !1122, line: 1118, baseType: !392, size: 64, offset: 15936)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1446, file: !1122, line: 1119, baseType: !7, size: 32, offset: 16000)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1446, file: !1122, line: 1121, baseType: !897, size: 64, offset: 16064)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1446, file: !1122, line: 1125, baseType: !2961, size: 64, offset: 16128)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1122, line: 43, flags: DIFlagFwdDecl)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1446, file: !1122, line: 1127, baseType: !430, size: 32, offset: 16192)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1446, file: !1122, line: 1128, baseType: !7, size: 32, offset: 16224)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1446, file: !1122, line: 1130, baseType: !2966, size: 128, offset: 16256)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2967, line: 37, size: 128, elements: !2968)
!2967 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2968 = !{!2969, !2970, !2971}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2966, file: !2967, line: 38, baseType: !109, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2966, file: !2967, line: 39, baseType: !297, size: 32, offset: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2966, file: !2967, line: 40, baseType: !2972, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2967, line: 24, flags: DIFlagFwdDecl)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1446, file: !1122, line: 1131, baseType: !2975, size: 256, offset: 16384)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2976, line: 12, size: 256, elements: !2977)
!2976 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2977 = !{!2978, !2979, !2980, !2981}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2975, file: !2976, line: 13, baseType: !345, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2975, file: !2976, line: 14, baseType: !208, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2975, file: !2976, line: 15, baseType: !208, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2975, file: !2976, line: 16, baseType: !249, size: 8, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1446, file: !1122, line: 1134, baseType: !197, size: 64, offset: 16640)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1446, file: !1122, line: 1135, baseType: !197, size: 64, offset: 16704)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1446, file: !1122, line: 1138, baseType: !277, size: 32, offset: 16768)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1446, file: !1122, line: 1141, baseType: !638, size: 32, offset: 16800)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1446, file: !1122, line: 1143, baseType: !2987, size: 64, offset: 16832)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1122, line: 735, size: 64, elements: !2988)
!2988 = !{!2989}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2987, file: !1122, line: 736, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1446, file: !1122, line: 1147, baseType: !1625, size: 128, offset: 16896)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1446, file: !1122, line: 1149, baseType: !1445, size: 64, offset: 17024)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1446, file: !1122, line: 1151, baseType: !2994, size: 64, offset: 17088)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1122, line: 1151, flags: DIFlagFwdDecl)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1446, file: !1122, line: 1188, baseType: !176, size: 64, offset: 17152)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1446, file: !1122, line: 1191, baseType: !2998, size: 64, offset: 17216)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1122, line: 44, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1446, file: !1122, line: 1194, baseType: !3001, size: 64, offset: 17280)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1122, line: 45, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1446, file: !1122, line: 1197, baseType: !3004, size: 64, offset: 17344)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1122, line: 61, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1446, file: !1122, line: 1199, baseType: !3007, size: 64, offset: 17408)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3009, line: 99, size: 128, elements: !3010)
!3009 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3010 = !{!3011, !3012, !3013}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3008, file: !3009, line: 100, baseType: !684, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3008, file: !3009, line: 101, baseType: !297, size: 32, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3008, file: !3009, line: 103, baseType: !315, size: 16, offset: 96)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1446, file: !1122, line: 1202, baseType: !3015, size: 64, offset: 17472)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1122, line: 48, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1446, file: !1122, line: 1205, baseType: !208, size: 64, offset: 17536)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1446, file: !1122, line: 1206, baseType: !3019, size: 64, offset: 17600)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2011, line: 14, baseType: !3021)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2011, line: 12, size: 384, elements: !3022)
!3022 = !{!3023}
!3023 = !DIDerivedType(tag: DW_TAG_member, scope: !3021, file: !2011, line: 13, baseType: !3024, size: 384)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3021, file: !2011, line: 13, size: 384, elements: !3025)
!3025 = !{!3026, !3027, !3028, !3029}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3024, file: !2011, line: 13, baseType: !109, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3024, file: !2011, line: 13, baseType: !109, size: 32, offset: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3024, file: !2011, line: 13, baseType: !109, size: 32, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3024, file: !2011, line: 13, baseType: !3030, size: 256, offset: 128)
!3030 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3031, line: 37, size: 256, elements: !3032)
!3031 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3032 = !{!3033, !3038, !3051, !3057, !3066, !3093, !3098}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3030, file: !3031, line: 42, baseType: !3034, size: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3030, file: !3031, line: 39, size: 64, elements: !3035)
!3035 = !{!3036, !3037}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3034, file: !3031, line: 40, baseType: !2700, size: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3034, file: !3031, line: 41, baseType: !436, size: 32, offset: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3030, file: !3031, line: 50, baseType: !3039, size: 192)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3030, file: !3031, line: 45, size: 192, elements: !3040)
!3040 = !{!3041, !3043, !3044, !3050}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3039, file: !3031, line: 46, baseType: !3042, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !379, line: 95, baseType: !109)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3039, file: !3031, line: 47, baseType: !109, size: 32, offset: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3039, file: !3031, line: 48, baseType: !3045, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3031, line: 11, baseType: !3046)
!3046 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3031, line: 8, size: 64, elements: !3047)
!3047 = !{!3048, !3049}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3046, file: !3031, line: 9, baseType: !109, size: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3046, file: !3031, line: 10, baseType: !176, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3039, file: !3031, line: 49, baseType: !109, size: 32, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3030, file: !3031, line: 57, baseType: !3052, size: 128)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3030, file: !3031, line: 53, size: 128, elements: !3053)
!3053 = !{!3054, !3055, !3056}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3052, file: !3031, line: 54, baseType: !2700, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3052, file: !3031, line: 55, baseType: !436, size: 32, offset: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3052, file: !3031, line: 56, baseType: !3045, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3030, file: !3031, line: 66, baseType: !3058, size: 256)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3030, file: !3031, line: 60, size: 256, elements: !3059)
!3059 = !{!3060, !3061, !3062, !3063, !3065}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3058, file: !3031, line: 61, baseType: !2700, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3058, file: !3031, line: 62, baseType: !436, size: 32, offset: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3058, file: !3031, line: 63, baseType: !109, size: 32, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3058, file: !3031, line: 64, baseType: !3064, size: 64, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !379, line: 94, baseType: !380)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3058, file: !3031, line: 65, baseType: !3064, size: 64, offset: 192)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3030, file: !3031, line: 105, baseType: !3067, size: 256)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3030, file: !3031, line: 69, size: 256, elements: !3068)
!3068 = !{!3069, !3070}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3067, file: !3031, line: 70, baseType: !176, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, scope: !3067, file: !3031, line: 79, baseType: !3071, size: 192, offset: 64)
!3071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3067, file: !3031, line: 79, size: 192, elements: !3072)
!3072 = !{!3073, !3074, !3075, !3082, !3087}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3071, file: !3031, line: 81, baseType: !109, size: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3071, file: !3031, line: 86, baseType: !816, size: 16)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3071, file: !3031, line: 92, baseType: !3076, size: 192)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3071, file: !3031, line: 88, size: 192, elements: !3077)
!3077 = !{!3078, !3080, !3081}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3076, file: !3031, line: 89, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 64, elements: !1609)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3076, file: !3031, line: 90, baseType: !176, size: 64, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3076, file: !3031, line: 91, baseType: !176, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3071, file: !3031, line: 97, baseType: !3083, size: 96)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3071, file: !3031, line: 94, size: 96, elements: !3084)
!3084 = !{!3085, !3086}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3083, file: !3031, line: 95, baseType: !3079, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3083, file: !3031, line: 96, baseType: !221, size: 32, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3071, file: !3031, line: 103, baseType: !3088, size: 128)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3071, file: !3031, line: 99, size: 128, elements: !3089)
!3089 = !{!3090, !3091, !3092}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3088, file: !3031, line: 100, baseType: !208, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3088, file: !3031, line: 101, baseType: !221, size: 32, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3088, file: !3031, line: 102, baseType: !221, size: 32, offset: 96)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3030, file: !3031, line: 111, baseType: !3094, size: 128)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3030, file: !3031, line: 108, size: 128, elements: !3095)
!3095 = !{!3096, !3097}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3094, file: !3031, line: 109, baseType: !381, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3094, file: !3031, line: 110, baseType: !109, size: 32, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3030, file: !3031, line: 118, baseType: !3099, size: 128)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3030, file: !3031, line: 114, size: 128, elements: !3100)
!3100 = !{!3101, !3102, !3103}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3099, file: !3031, line: 115, baseType: !176, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3099, file: !3031, line: 116, baseType: !109, size: 32, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3099, file: !3031, line: 117, baseType: !7, size: 32, offset: 96)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1446, file: !1122, line: 1208, baseType: !2884, size: 448, offset: 17664)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1446, file: !1122, line: 1215, baseType: !197, size: 64, offset: 18112)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1446, file: !1122, line: 1217, baseType: !197, size: 64, offset: 18176)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1446, file: !1122, line: 1219, baseType: !197, size: 64, offset: 18240)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1446, file: !1122, line: 1223, baseType: !3109, size: 64, offset: 18304)
!3109 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3110, line: 99, baseType: !3111)
!3110 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3110, line: 99, size: 64, elements: !3112)
!3112 = !{!3113}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3111, file: !3110, line: 99, baseType: !1693, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1446, file: !1122, line: 1225, baseType: !465, size: 32, offset: 18368)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1446, file: !1122, line: 1226, baseType: !109, size: 32, offset: 18400)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1446, file: !1122, line: 1227, baseType: !109, size: 32, offset: 18432)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1446, file: !1122, line: 1231, baseType: !3118, size: 64, offset: 18496)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1122, line: 1231, flags: DIFlagFwdDecl)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1446, file: !1122, line: 1233, baseType: !184, size: 128, offset: 18560)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1446, file: !1122, line: 1240, baseType: !3122, size: 64, offset: 18688)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1122, line: 62, flags: DIFlagFwdDecl)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1446, file: !1122, line: 1242, baseType: !3125, size: 64, offset: 18752)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1122, line: 1242, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1446, file: !1122, line: 1244, baseType: !184, size: 128, offset: 18816)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1446, file: !1122, line: 1245, baseType: !3129, size: 64, offset: 18944)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1122, line: 51, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1446, file: !1122, line: 1246, baseType: !680, size: 256, offset: 19008)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1446, file: !1122, line: 1247, baseType: !7, size: 32, offset: 19264)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1446, file: !1122, line: 1250, baseType: !3134, size: 64, offset: 19328)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1122, line: 57, flags: DIFlagFwdDecl)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1446, file: !1122, line: 1251, baseType: !680, size: 256, offset: 19392)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1446, file: !1122, line: 1252, baseType: !184, size: 128, offset: 19648)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1446, file: !1122, line: 1259, baseType: !2391, size: 64, offset: 19776)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1446, file: !1122, line: 1260, baseType: !816, size: 16, offset: 19840)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1446, file: !1122, line: 1261, baseType: !816, size: 16, offset: 19856)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1446, file: !1122, line: 1314, baseType: !3142, size: 64, offset: 19904)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3144, line: 62, size: 256, align: 256, elements: !3145)
!3144 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3145 = !{!3146, !3147, !3148, !3149, !3150, !3151, !3152}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3143, file: !3144, line: 75, baseType: !221, size: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3143, file: !3144, line: 90, baseType: !221, size: 32, offset: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3143, file: !3144, line: 112, baseType: !199, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3143, file: !3144, line: 132, baseType: !221, size: 32, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3143, file: !3144, line: 140, baseType: !221, size: 32, offset: 160)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3143, file: !3144, line: 149, baseType: !221, size: 32, offset: 192)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3143, file: !3144, line: 154, baseType: !3153, offset: 224)
!3153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, elements: !1829)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1446, file: !1122, line: 1315, baseType: !220, size: 32, offset: 19968)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1446, file: !1122, line: 1316, baseType: !220, size: 32, offset: 20000)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1446, file: !1122, line: 1321, baseType: !208, size: 64, offset: 20032)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1446, file: !1122, line: 1325, baseType: !109, size: 32, offset: 20096)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1446, file: !1122, line: 1326, baseType: !109, size: 32, offset: 20128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1446, file: !1122, line: 1327, baseType: !109, size: 32, offset: 20160)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1446, file: !1122, line: 1328, baseType: !109, size: 32, offset: 20192)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1446, file: !1122, line: 1329, baseType: !898, size: 128, align: 64, offset: 20224)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1446, file: !1122, line: 1332, baseType: !3163, size: 128, offset: 20352)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3164, line: 51, size: 128, elements: !3165)
!3164 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3165 = !{!3166, !3171, !3172}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3163, file: !3164, line: 60, baseType: !3167, size: 64)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3168, line: 7, size: 64, elements: !3169)
!3168 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3169 = !{!3170}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3167, file: !3168, line: 12, baseType: !1690, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3163, file: !3164, line: 63, baseType: !249, size: 8, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3163, file: !3164, line: 70, baseType: !249, size: 8, offset: 72)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1446, file: !1122, line: 1335, baseType: !2443, size: 64, offset: 20480)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1446, file: !1122, line: 1337, baseType: !3175, size: 128, offset: 20544)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3164, line: 39, size: 128, elements: !3176)
!3176 = !{!3177, !3178, !3179}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3175, file: !3164, line: 40, baseType: !2230, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3175, file: !3164, line: 42, baseType: !221, size: 32, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3175, file: !3164, line: 43, baseType: !221, size: 32, offset: 96)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1446, file: !1122, line: 1340, baseType: !3181, size: 64, offset: 20672)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1122, line: 69, flags: DIFlagFwdDecl)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1446, file: !1122, line: 1351, baseType: !109, size: 32, offset: 20736)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1446, file: !1122, line: 1352, baseType: !109, size: 32, offset: 20768)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1446, file: !1122, line: 1354, baseType: !208, size: 64, offset: 20800)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1446, file: !1122, line: 1364, baseType: !197, size: 64, offset: 20864)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1446, file: !1122, line: 1365, baseType: !197, size: 64, offset: 20928)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1446, file: !1122, line: 1412, baseType: !208, size: 64, offset: 20992)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1446, file: !1122, line: 1453, baseType: !3190, size: 64, offset: 21056)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1122, line: 1453, flags: DIFlagFwdDecl)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1446, file: !1122, line: 1457, baseType: !3193, size: 64, offset: 21120)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3195)
!3195 = !{!3196, !3197, !3216, !3219, !3220, !3253, !3263}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3194, file: !68, line: 62, baseType: !67, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, scope: !3194, file: !68, line: 64, baseType: !3198, size: 192, offset: 64)
!3198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3194, file: !68, line: 64, size: 192, elements: !3199)
!3199 = !{!3200, !3211}
!3200 = !DIDerivedType(tag: DW_TAG_member, scope: !3198, file: !68, line: 65, baseType: !3201, size: 192)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !68, line: 65, size: 192, elements: !3202)
!3202 = !{!3203, !3210}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3201, file: !68, line: 66, baseType: !3204, size: 128)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3205, line: 50, size: 128, elements: !3206)
!3205 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3206 = !{!3207, !3208, !3209}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3204, file: !3205, line: 52, baseType: !208, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3204, file: !3205, line: 54, baseType: !7, size: 32, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3204, file: !3205, line: 55, baseType: !7, size: 32, offset: 96)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3201, file: !68, line: 67, baseType: !208, size: 64, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, scope: !3198, file: !68, line: 70, baseType: !3212, size: 192)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !68, line: 70, size: 192, elements: !3213)
!3213 = !{!3214, !3215}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3212, file: !68, line: 71, baseType: !898, size: 128, align: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3212, file: !68, line: 72, baseType: !208, size: 64, offset: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3194, file: !68, line: 76, baseType: !3217, size: 64, offset: 256)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3194, file: !68, line: 77, baseType: !208, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3194, file: !68, line: 79, baseType: !3221, size: 64, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3205, line: 25, size: 256, elements: !3223)
!3223 = !{!3224, !3230, !3234}
!3224 = !DIDerivedType(tag: DW_TAG_member, scope: !3222, file: !3205, line: 26, baseType: !3225, size: 128)
!3225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3222, file: !3205, line: 26, size: 128, elements: !3226)
!3226 = !{!3227, !3229}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3225, file: !3205, line: 27, baseType: !3228, size: 128)
!3228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 128, elements: !2758)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3225, file: !3205, line: 28, baseType: !3228, size: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3222, file: !3205, line: 31, baseType: !3231, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3233)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3205, line: 23, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, scope: !3222, file: !3205, line: 33, baseType: !3235, size: 64, offset: 192)
!3235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3222, file: !3205, line: 33, size: 64, elements: !3236)
!3236 = !{!3237, !3243, !3248}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3235, file: !3205, line: 38, baseType: !3238, size: 64)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3235, file: !3205, line: 34, size: 64, elements: !3239)
!3239 = !{!3240, !3241, !3242}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3238, file: !3205, line: 35, baseType: !676, size: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3238, file: !3205, line: 36, baseType: !305, size: 8, offset: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3238, file: !3205, line: 37, baseType: !305, size: 8, offset: 40)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3235, file: !3205, line: 42, baseType: !3244, size: 16)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3235, file: !3205, line: 39, size: 16, elements: !3245)
!3245 = !{!3246, !3247}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3244, file: !3205, line: 40, baseType: !305, size: 8)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3244, file: !3205, line: 41, baseType: !305, size: 8, offset: 8)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3235, file: !3205, line: 46, baseType: !3249, size: 16)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3235, file: !3205, line: 43, size: 16, elements: !3250)
!3250 = !{!3251, !3252}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3249, file: !3205, line: 44, baseType: !305, size: 8)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3249, file: !3205, line: 45, baseType: !305, size: 8, offset: 8)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3194, file: !68, line: 81, baseType: !3254, size: 64, offset: 448)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3256)
!3256 = !{!3257, !3258, !3259, !3260, !3261, !3262}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3255, file: !68, line: 86, baseType: !3217, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3255, file: !68, line: 87, baseType: !208, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3255, file: !68, line: 88, baseType: !208, size: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3255, file: !68, line: 89, baseType: !208, size: 64, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3255, file: !68, line: 90, baseType: !249, size: 8, offset: 256)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3255, file: !68, line: 92, baseType: !3254, size: 64, offset: 320)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3194, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1446, file: !1122, line: 1463, baseType: !3265, offset: 21184)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1122, line: 739, elements: !967)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1446, file: !1122, line: 1470, baseType: !898, size: 128, align: 64, offset: 21184)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1446, file: !1122, line: 1471, baseType: !1459, size: 32, offset: 21312)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1446, file: !1122, line: 1472, baseType: !109, size: 32, offset: 21344)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1446, file: !1122, line: 1474, baseType: !1445, size: 64, offset: 21376)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1446, file: !1122, line: 1475, baseType: !920, size: 320, offset: 21440)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1446, file: !1122, line: 1478, baseType: !3272, size: 64, offset: 21760)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2083, line: 49, size: 512, elements: !3274)
!3274 = !{!3275, !3276, !3277, !3278, !3279, !3281, !3282, !3283, !3284}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3273, file: !2083, line: 50, baseType: !3272, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3273, file: !2083, line: 51, baseType: !176, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3273, file: !2083, line: 52, baseType: !208, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3273, file: !2083, line: 53, baseType: !208, size: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3273, file: !2083, line: 54, baseType: !3280, size: 64, offset: 256)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3273, file: !2083, line: 56, baseType: !7, size: 32, offset: 320)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3273, file: !2083, line: 58, baseType: !7, size: 32, offset: 352)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3273, file: !2083, line: 59, baseType: !196, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3273, file: !2083, line: 60, baseType: !257, size: 64, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1446, file: !1122, line: 1482, baseType: !1459, size: 32, offset: 21824)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1446, file: !1122, line: 1489, baseType: !176, size: 64, offset: 21888)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1446, file: !1122, line: 1504, baseType: !176, size: 64, offset: 21952)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1446, file: !1122, line: 1505, baseType: !199, size: 64, offset: 22016)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1446, file: !1122, line: 1506, baseType: !197, size: 64, offset: 22080)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1446, file: !1122, line: 1507, baseType: !199, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1446, file: !1122, line: 1508, baseType: !199, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1446, file: !1122, line: 1509, baseType: !199, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1446, file: !1122, line: 1510, baseType: !898, size: 128, align: 64, offset: 22208)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1446, file: !1122, line: 1511, baseType: !109, size: 32, offset: 22336)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1446, file: !1122, line: 1515, baseType: !3296, size: 64, offset: 22400)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1473, line: 56, size: 64, elements: !3297)
!3297 = !{!3298}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3296, file: !1473, line: 57, baseType: !1476, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1446, file: !1122, line: 1518, baseType: !3296, size: 64, offset: 22464)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1446, file: !1122, line: 1528, baseType: !898, size: 128, align: 64, offset: 22528)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1446, file: !1122, line: 1552, baseType: !3302, size: 35328, offset: 23040)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3303, line: 430, size: 35328, elements: !3304)
!3303 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3304 = !{!3305, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3334, !3335, !3336, !3337, !3338, !3339, !3342, !3343, !3344, !3345}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3302, file: !3303, line: 432, baseType: !3306, size: 192)
!3306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3307, size: 192, elements: !346)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3308, line: 16, size: 64, elements: !3309)
!3308 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3309 = !{!3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3307, file: !3308, line: 17, baseType: !313, size: 16)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3307, file: !3308, line: 18, baseType: !313, size: 16, offset: 16)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3307, file: !3308, line: 19, baseType: !313, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3307, file: !3308, line: 19, baseType: !313, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3307, file: !3308, line: 19, baseType: !313, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3307, file: !3308, line: 19, baseType: !313, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3307, file: !3308, line: 19, baseType: !313, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3307, file: !3308, line: 20, baseType: !313, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3307, file: !3308, line: 20, baseType: !313, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3307, file: !3308, line: 20, baseType: !313, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3307, file: !3308, line: 20, baseType: !313, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3307, file: !3308, line: 20, baseType: !313, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3307, file: !3308, line: 20, baseType: !313, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3302, file: !3303, line: 436, baseType: !208, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3302, file: !3303, line: 440, baseType: !315, size: 16, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3302, file: !3303, line: 441, baseType: !315, size: 16, offset: 272)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3302, file: !3303, line: 442, baseType: !315, size: 16, offset: 288)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3302, file: !3303, line: 443, baseType: !315, size: 16, offset: 304)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3302, file: !3303, line: 447, baseType: !208, size: 64, offset: 320)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3302, file: !3303, line: 448, baseType: !208, size: 64, offset: 384)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3302, file: !3303, line: 459, baseType: !3331, size: 256, offset: 448)
!3331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3332, size: 256, elements: !908)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3303, line: 428, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3302, file: !3303, line: 461, baseType: !208, size: 64, offset: 704)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3302, file: !3303, line: 463, baseType: !208, size: 64, offset: 768)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3302, file: !3303, line: 465, baseType: !208, size: 64, offset: 832)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3302, file: !3303, line: 466, baseType: !208, size: 64, offset: 896)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3302, file: !3303, line: 467, baseType: !208, size: 64, offset: 960)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3302, file: !3303, line: 473, baseType: !3340, size: 64, offset: 1024)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3303, line: 10, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3302, file: !3303, line: 480, baseType: !208, size: 64, offset: 1088)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3302, file: !3303, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3302, file: !3303, line: 491, baseType: !220, size: 32, offset: 1184)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3302, file: !3303, line: 501, baseType: !3346, size: 33792, offset: 1536)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3347, line: 448, size: 33792, elements: !3348)
!3347 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3348 = !{!3349, !3350, !3351, !3513, !3514, !3520, !3521}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3346, file: !3347, line: 461, baseType: !7, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3346, file: !3347, line: 468, baseType: !208, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3346, file: !3347, line: 476, baseType: !3352, size: 64, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3347, line: 356, size: 33280, align: 512, elements: !3354)
!3354 = !{!3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3353, file: !3347, line: 358, baseType: !7, size: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3353, file: !3347, line: 361, baseType: !7, size: 32, offset: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3353, file: !3347, line: 364, baseType: !197, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3353, file: !3347, line: 367, baseType: !197, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3353, file: !3347, line: 370, baseType: !197, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3353, file: !3347, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3353, file: !3347, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3353, file: !3347, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3353, file: !3347, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3353, file: !3347, line: 397, baseType: !3365, size: 32768, offset: 512)
!3365 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3347, line: 348, size: 32768, elements: !3366)
!3366 = !{!3367, !3382, !3419, !3496, !3509}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3365, file: !3347, line: 349, baseType: !3368, size: 896)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3347, line: 12, size: 896, elements: !3369)
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3381}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3368, file: !3347, line: 13, baseType: !220, size: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3368, file: !3347, line: 14, baseType: !220, size: 32, offset: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3368, file: !3347, line: 15, baseType: !220, size: 32, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3368, file: !3347, line: 16, baseType: !220, size: 32, offset: 96)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3368, file: !3347, line: 17, baseType: !220, size: 32, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3368, file: !3347, line: 18, baseType: !220, size: 32, offset: 160)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3368, file: !3347, line: 19, baseType: !220, size: 32, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3368, file: !3347, line: 22, baseType: !3378, size: 640, offset: 224)
!3378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 640, elements: !3379)
!3379 = !{!3380}
!3380 = !DISubrange(count: 20)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3368, file: !3347, line: 25, baseType: !220, size: 32, offset: 864)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3365, file: !3347, line: 350, baseType: !3383, size: 4096, align: 128)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3347, line: 34, size: 4096, align: 128, elements: !3384)
!3384 = !{!3385, !3386, !3387, !3388, !3389, !3404, !3405, !3406, !3408, !3410, !3414}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3383, file: !3347, line: 35, baseType: !313, size: 16)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3383, file: !3347, line: 36, baseType: !313, size: 16, offset: 16)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3383, file: !3347, line: 37, baseType: !313, size: 16, offset: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3383, file: !3347, line: 38, baseType: !313, size: 16, offset: 48)
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !3347, line: 39, baseType: !3390, size: 128, offset: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3383, file: !3347, line: 39, size: 128, elements: !3391)
!3391 = !{!3392, !3397}
!3392 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3347, line: 40, baseType: !3393, size: 128)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !3347, line: 40, size: 128, elements: !3394)
!3394 = !{!3395, !3396}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3393, file: !3347, line: 41, baseType: !197, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3393, file: !3347, line: 42, baseType: !197, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3347, line: 44, baseType: !3398, size: 128)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !3347, line: 44, size: 128, elements: !3399)
!3399 = !{!3400, !3401, !3402, !3403}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3398, file: !3347, line: 45, baseType: !220, size: 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3398, file: !3347, line: 46, baseType: !220, size: 32, offset: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3398, file: !3347, line: 47, baseType: !220, size: 32, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3398, file: !3347, line: 48, baseType: !220, size: 32, offset: 96)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3383, file: !3347, line: 51, baseType: !220, size: 32, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3383, file: !3347, line: 52, baseType: !220, size: 32, offset: 224)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3383, file: !3347, line: 55, baseType: !3407, size: 1024, offset: 256)
!3407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 1024, elements: !501)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3383, file: !3347, line: 58, baseType: !3409, size: 2048, offset: 1280)
!3409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2048, elements: !350)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3383, file: !3347, line: 60, baseType: !3411, size: 384, offset: 3328)
!3411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 384, elements: !3412)
!3412 = !{!3413}
!3413 = !DISubrange(count: 12)
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !3347, line: 62, baseType: !3415, size: 384, offset: 3712)
!3415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3383, file: !3347, line: 62, size: 384, elements: !3416)
!3416 = !{!3417, !3418}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3415, file: !3347, line: 63, baseType: !3411, size: 384)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3415, file: !3347, line: 64, baseType: !3411, size: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3365, file: !3347, line: 351, baseType: !3420, size: 1088)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3347, line: 79, size: 1088, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3495}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3420, file: !3347, line: 80, baseType: !220, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3420, file: !3347, line: 81, baseType: !220, size: 32, offset: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3420, file: !3347, line: 82, baseType: !220, size: 32, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3420, file: !3347, line: 83, baseType: !220, size: 32, offset: 96)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3420, file: !3347, line: 84, baseType: !220, size: 32, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3420, file: !3347, line: 85, baseType: !220, size: 32, offset: 160)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3420, file: !3347, line: 86, baseType: !220, size: 32, offset: 192)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3420, file: !3347, line: 88, baseType: !3378, size: 640, offset: 224)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3420, file: !3347, line: 89, baseType: !305, size: 8, offset: 864)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3420, file: !3347, line: 90, baseType: !305, size: 8, offset: 872)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3420, file: !3347, line: 91, baseType: !305, size: 8, offset: 880)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3420, file: !3347, line: 92, baseType: !305, size: 8, offset: 888)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3420, file: !3347, line: 93, baseType: !305, size: 8, offset: 896)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3420, file: !3347, line: 94, baseType: !305, size: 8, offset: 904)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3420, file: !3347, line: 95, baseType: !3437, size: 64, offset: 960)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3439, line: 11, size: 128, elements: !3440)
!3439 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3438, file: !3439, line: 12, baseType: !381, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3438, file: !3439, line: 13, baseType: !3443, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3445, line: 103, size: 1344, elements: !3446)
!3445 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3475, !3476, !3477}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3444, file: !3445, line: 109, baseType: !208, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3444, file: !3445, line: 110, baseType: !208, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3444, file: !3445, line: 111, baseType: !208, size: 64, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3444, file: !3445, line: 112, baseType: !208, size: 64, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3444, file: !3445, line: 113, baseType: !208, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3444, file: !3445, line: 114, baseType: !208, size: 64, offset: 320)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3444, file: !3445, line: 117, baseType: !208, size: 64, offset: 384)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3444, file: !3445, line: 118, baseType: !208, size: 64, offset: 448)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3444, file: !3445, line: 119, baseType: !208, size: 64, offset: 512)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3444, file: !3445, line: 120, baseType: !208, size: 64, offset: 576)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3444, file: !3445, line: 121, baseType: !208, size: 64, offset: 640)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3444, file: !3445, line: 122, baseType: !208, size: 64, offset: 704)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3444, file: !3445, line: 123, baseType: !208, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3444, file: !3445, line: 124, baseType: !208, size: 64, offset: 832)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3444, file: !3445, line: 125, baseType: !208, size: 64, offset: 896)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3444, file: !3445, line: 139, baseType: !208, size: 64, offset: 960)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3444, file: !3445, line: 142, baseType: !208, size: 64, offset: 1024)
!3464 = !DIDerivedType(tag: DW_TAG_member, scope: !3444, file: !3445, line: 144, baseType: !3465, size: 64, offset: 1088)
!3465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3444, file: !3445, line: 144, size: 64, elements: !3466)
!3466 = !{!3467, !3468, !3469}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3465, file: !3445, line: 146, baseType: !313, size: 16)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3465, file: !3445, line: 148, baseType: !197, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3465, file: !3445, line: 150, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3445, line: 59, size: 64, elements: !3471)
!3471 = !{!3472, !3473, !3474}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3470, file: !3445, line: 61, baseType: !197, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3470, file: !3445, line: 63, baseType: !197, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3470, file: !3445, line: 65, baseType: !197, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3444, file: !3445, line: 153, baseType: !208, size: 64, offset: 1152)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3444, file: !3445, line: 154, baseType: !208, size: 64, offset: 1216)
!3477 = !DIDerivedType(tag: DW_TAG_member, scope: !3444, file: !3445, line: 156, baseType: !3478, size: 64, offset: 1280)
!3478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3444, file: !3445, line: 156, size: 64, elements: !3479)
!3479 = !{!3480, !3481, !3482}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3478, file: !3445, line: 158, baseType: !313, size: 16)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3478, file: !3445, line: 160, baseType: !197, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3478, file: !3445, line: 162, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3445, line: 69, size: 64, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3483, file: !3445, line: 71, baseType: !197, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3483, file: !3445, line: 73, baseType: !197, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3483, file: !3445, line: 75, baseType: !197, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3483, file: !3445, line: 77, baseType: !197, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3483, file: !3445, line: 80, baseType: !197, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3483, file: !3445, line: 83, baseType: !197, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3483, file: !3445, line: 86, baseType: !197, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3483, file: !3445, line: 88, baseType: !197, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3483, file: !3445, line: 93, baseType: !197, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3483, file: !3445, line: 100, baseType: !197, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3420, file: !3347, line: 96, baseType: !220, size: 32, offset: 1024)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3365, file: !3347, line: 352, baseType: !3497, size: 4608, align: 512)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3347, line: 333, size: 4608, align: 512, elements: !3498)
!3498 = !{!3499, !3500, !3507}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3497, file: !3347, line: 334, baseType: !3383, size: 4096, align: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3497, file: !3347, line: 335, baseType: !3501, size: 512, offset: 4096)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3347, line: 312, size: 512, elements: !3502)
!3502 = !{!3503, !3504, !3505}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3501, file: !3347, line: 313, baseType: !197, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3501, file: !3347, line: 314, baseType: !197, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3501, file: !3347, line: 315, baseType: !3506, size: 384, offset: 128)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 384, elements: !1912)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3497, file: !3347, line: 336, baseType: !3508, offset: 4608)
!3508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, elements: !1829)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3365, file: !3347, line: 353, baseType: !3510, size: 32768)
!3510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 32768, elements: !3511)
!3511 = !{!3512}
!3512 = !DISubrange(count: 4096)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3346, file: !3347, line: 484, baseType: !3352, size: 64, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3346, file: !3347, line: 491, baseType: !3515, size: 128, offset: 256)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3347, line: 404, size: 128, elements: !3516)
!3516 = !{!3517, !3518, !3519}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3515, file: !3347, line: 424, baseType: !197, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3515, file: !3347, line: 432, baseType: !7, size: 32, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3515, file: !3347, line: 440, baseType: !7, size: 32, offset: 96)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3346, file: !3347, line: 498, baseType: !3515, size: 128, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3346, file: !3347, line: 508, baseType: !3353, size: 33280, align: 512, offset: 512)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1422, file: !1423, line: 16, baseType: !1432, size: 192, offset: 512)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1422, file: !1423, line: 17, baseType: !297, size: 32, offset: 704)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !571, file: !14, line: 1240, baseType: !176, size: 64, offset: 6912)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !571, file: !14, line: 1243, baseType: !220, size: 32, offset: 6976)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !571, file: !14, line: 1245, baseType: !1180, size: 64, offset: 7040)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !571, file: !14, line: 1246, baseType: !1180, size: 64, offset: 7104)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !571, file: !14, line: 1248, baseType: !221, size: 32, offset: 7168)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !571, file: !14, line: 1249, baseType: !3530, size: 64, offset: 7232)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !571, file: !14, line: 1252, baseType: !3533, size: 256, offset: 7296)
!3533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 256, elements: !501)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !571, file: !14, line: 1253, baseType: !3535, size: 128, offset: 7552)
!3535 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3536, line: 21, baseType: !3537)
!3536 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3536, line: 19, size: 128, elements: !3538)
!3538 = !{!3539}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3537, file: !3536, line: 20, baseType: !3540, size: 128)
!3540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 128, elements: !2758)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !571, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !571, file: !14, line: 1261, baseType: !680, size: 256, offset: 7744)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !571, file: !14, line: 1267, baseType: !204, size: 64, offset: 8000)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !571, file: !14, line: 1269, baseType: !517, size: 64, offset: 8064)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !571, file: !14, line: 1271, baseType: !3546, size: 448, offset: 8128)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1189, line: 63, size: 448, elements: !3547)
!3547 = !{!3548, !3553, !3554, !3555, !3556, !3557, !3558}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3546, file: !1189, line: 64, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!208, !3552, !1187}
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3546, file: !1189, line: 66, baseType: !3549, size: 64, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3546, file: !1189, line: 69, baseType: !381, size: 64, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3546, file: !1189, line: 70, baseType: !109, size: 32, offset: 192)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3546, file: !1189, line: 71, baseType: !7, size: 32, offset: 224)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3546, file: !1189, line: 74, baseType: !184, size: 128, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3546, file: !1189, line: 85, baseType: !3559, size: 64, offset: 384)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !571, file: !14, line: 1274, baseType: !684, size: 64, offset: 8576)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !571, file: !14, line: 1280, baseType: !684, size: 64, offset: 8640)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !571, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !571, file: !14, line: 1286, baseType: !2493, size: 32, offset: 8736)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !571, file: !14, line: 1289, baseType: !1000, size: 64, offset: 8768)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !571, file: !14, line: 1290, baseType: !1048, size: 64, offset: 8832)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !571, file: !14, line: 1297, baseType: !2006, size: 64, offset: 8896)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !571, file: !14, line: 1304, baseType: !3568, size: 64, offset: 8960)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3569, line: 49, size: 64, elements: !3570)
!3569 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3570 = !{!3571}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3568, file: !3569, line: 50, baseType: !3572, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3569, line: 41, size: 512, align: 512, elements: !3574)
!3574 = !{!3575, !3576, !3581}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3573, file: !3569, line: 43, baseType: !277, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3573, file: !3569, line: 45, baseType: !3577, size: 192, offset: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3569, line: 29, size: 192, elements: !3578)
!3578 = !{!3579, !3580}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3577, file: !3569, line: 30, baseType: !184, size: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3577, file: !3569, line: 32, baseType: !381, size: 64, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3573, file: !3569, line: 46, baseType: !381, size: 64, offset: 256)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !571, file: !14, line: 1305, baseType: !3568, size: 64, offset: 9024)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !571, file: !14, line: 1306, baseType: !898, size: 128, align: 64, offset: 9088)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !571, file: !14, line: 1307, baseType: !938, size: 256, offset: 9216)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !571, file: !14, line: 1309, baseType: !680, size: 256, offset: 9472)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !571, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !571, file: !14, line: 1317, baseType: !277, size: 32, align: 512, offset: 10240)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !571, file: !14, line: 1318, baseType: !184, size: 128, offset: 10304)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !571, file: !14, line: 1320, baseType: !277, size: 32, offset: 10432)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !571, file: !14, line: 1321, baseType: !184, size: 128, offset: 10496)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !565, file: !566, line: 73, baseType: !109, size: 32, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !565, file: !566, line: 74, baseType: !3593, size: 64, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1853, line: 42, flags: DIFlagFwdDecl)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !519, file: !461, line: 141, baseType: !3597, size: 64, offset: 704)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!109, !1249, !249}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !519, file: !461, line: 142, baseType: !3601, size: 64, offset: 768)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!459, !459, !3604}
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !460, file: !461, line: 96, baseType: !570, size: 64, offset: 832)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !460, file: !461, line: 97, baseType: !208, size: 64, offset: 896)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !460, file: !461, line: 98, baseType: !176, size: 64, offset: 960)
!3609 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !461, line: 100, baseType: !3610, size: 128, offset: 1024)
!3610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !461, line: 100, size: 128, elements: !3611)
!3611 = !{!3612, !3613}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3610, file: !461, line: 101, baseType: !184, size: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3610, file: !461, line: 102, baseType: !3614, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !460, file: !461, line: 104, baseType: !184, size: 128, offset: 1152)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !460, file: !461, line: 105, baseType: !184, size: 128, offset: 1280)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !460, file: !461, line: 113, baseType: !3618, size: 128, offset: 1408)
!3618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !461, line: 109, size: 128, elements: !3619)
!3619 = !{!3620, !3621, !3622}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3618, file: !461, line: 110, baseType: !924, size: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3618, file: !461, line: 111, baseType: !475, size: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3618, file: !461, line: 112, baseType: !898, size: 128, align: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !453, file: !14, line: 1968, baseType: !3624, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!204, !459, !424, !3627}
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3629, line: 10, size: 128, elements: !3630)
!3629 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3630 = !{!3631, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3628, file: !3629, line: 11, baseType: !723, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3628, file: !3629, line: 12, baseType: !176, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !453, file: !14, line: 1969, baseType: !3634, size: 64, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!109, !3593, !424, !109}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !453, file: !14, line: 1970, baseType: !3638, size: 64, offset: 192)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!447, !424, !109, !249}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !453, file: !14, line: 1972, baseType: !3642, size: 64, offset: 256)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!109, !459, !345, !109}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !453, file: !14, line: 1974, baseType: !3646, size: 64, offset: 320)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!109, !3593, !424, !459, !387, !249}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !453, file: !14, line: 1976, baseType: !3650, size: 64, offset: 384)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!109, !459, !424, !459}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !453, file: !14, line: 1977, baseType: !3654, size: 64, offset: 448)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!109, !424, !459}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !453, file: !14, line: 1978, baseType: !3658, size: 64, offset: 512)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!109, !3593, !424, !459, !204}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !453, file: !14, line: 1980, baseType: !3662, size: 64, offset: 576)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!109, !3593, !424, !459, !387}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !453, file: !14, line: 1982, baseType: !3654, size: 64, offset: 640)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !453, file: !14, line: 1983, baseType: !3667, size: 64, offset: 704)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!109, !3593, !424, !459, !387, !575}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !453, file: !14, line: 1985, baseType: !3671, size: 64, offset: 768)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!109, !3593, !424, !459, !424, !459, !7}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !453, file: !14, line: 1987, baseType: !3675, size: 64, offset: 832)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!109, !3593, !459, !3678}
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3680)
!3680 = !{!3681, !3682, !3683, !3693, !3702, !3703, !3708, !3709, !3710}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3679, file: !14, line: 227, baseType: !7, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3679, file: !14, line: 228, baseType: !387, size: 16, offset: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, scope: !3679, file: !14, line: 241, baseType: !3684, size: 32, offset: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3679, file: !14, line: 241, size: 32, elements: !3685)
!3685 = !{!3686, !3687}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3684, file: !14, line: 242, baseType: !430, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3684, file: !14, line: 243, baseType: !3688, size: 32)
!3688 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3689, line: 16, baseType: !3690)
!3689 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3689, line: 14, size: 32, elements: !3691)
!3691 = !{!3692}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3690, file: !3689, line: 15, baseType: !435, size: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, scope: !3679, file: !14, line: 245, baseType: !3694, size: 32, offset: 96)
!3694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3679, file: !14, line: 245, size: 32, elements: !3695)
!3695 = !{!3696, !3697}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3694, file: !14, line: 246, baseType: !439, size: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3694, file: !14, line: 247, baseType: !3698, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3689, line: 20, baseType: !3699)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3689, line: 18, size: 32, elements: !3700)
!3700 = !{!3701}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3699, file: !3689, line: 19, baseType: !443, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3679, file: !14, line: 249, baseType: !580, size: 64, offset: 128)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3679, file: !14, line: 250, baseType: !3704, size: 128, offset: 192)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1181, line: 13, size: 128, elements: !3705)
!3705 = !{!3706, !3707}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3704, file: !1181, line: 14, baseType: !1180, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3704, file: !1181, line: 15, baseType: !381, size: 64, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3679, file: !14, line: 251, baseType: !3704, size: 128, offset: 320)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3679, file: !14, line: 252, baseType: !3704, size: 128, offset: 448)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3679, file: !14, line: 259, baseType: !1769, size: 64, offset: 576)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !453, file: !14, line: 1988, baseType: !3712, size: 64, offset: 896)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!109, !3593, !1249, !3715, !220, !7}
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3717, line: 22, size: 1280, elements: !3718)
!3717 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3718 = !{!3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3716, file: !3717, line: 23, baseType: !220, size: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3716, file: !3717, line: 24, baseType: !387, size: 16, offset: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3716, file: !3717, line: 25, baseType: !7, size: 32, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3716, file: !3717, line: 26, baseType: !1891, size: 32, offset: 96)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3716, file: !3717, line: 27, baseType: !197, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3716, file: !3717, line: 28, baseType: !197, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3716, file: !3717, line: 41, baseType: !197, size: 64, offset: 256)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3716, file: !3717, line: 42, baseType: !575, size: 32, offset: 320)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3716, file: !3717, line: 43, baseType: !575, size: 32, offset: 352)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3716, file: !3717, line: 44, baseType: !430, size: 32, offset: 384)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3716, file: !3717, line: 45, baseType: !439, size: 32, offset: 416)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3716, file: !3717, line: 46, baseType: !580, size: 64, offset: 448)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3716, file: !3717, line: 47, baseType: !3704, size: 128, offset: 512)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3716, file: !3717, line: 48, baseType: !3704, size: 128, offset: 640)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3716, file: !3717, line: 49, baseType: !3704, size: 128, offset: 768)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3716, file: !3717, line: 50, baseType: !3704, size: 128, offset: 896)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3716, file: !3717, line: 51, baseType: !197, size: 64, offset: 1024)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3716, file: !3717, line: 52, baseType: !197, size: 64, offset: 1088)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3716, file: !3717, line: 53, baseType: !220, size: 32, offset: 1152)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3716, file: !3717, line: 54, baseType: !220, size: 32, offset: 1184)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3716, file: !3717, line: 55, baseType: !197, size: 64, offset: 1216)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !453, file: !14, line: 1990, baseType: !3741, size: 64, offset: 960)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!377, !459, !345, !392}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !453, file: !14, line: 1991, baseType: !3745, size: 64, offset: 1024)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!109, !424, !3748, !197, !197}
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !453, file: !14, line: 1993, baseType: !3751, size: 64, offset: 1088)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!109, !424, !109}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !453, file: !14, line: 1994, baseType: !3755, size: 64, offset: 1152)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!109, !424, !459, !1769, !7, !387}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !453, file: !14, line: 1997, baseType: !3759, size: 64, offset: 1216)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!109, !3593, !424, !1769, !387}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !453, file: !14, line: 1999, baseType: !3763, size: 64, offset: 1280)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!447, !3593, !459, !109}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !453, file: !14, line: 2001, baseType: !3767, size: 64, offset: 1344)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!109, !3593, !459, !447, !109}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !453, file: !14, line: 2003, baseType: !3771, size: 64, offset: 1408)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!109, !3593, !459, !3774}
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !453, file: !14, line: 2005, baseType: !3777, size: 64, offset: 1472)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!109, !459, !3774}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !453, file: !14, line: 2006, baseType: !3781, size: 64, offset: 1536)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!3784, !424}
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3786)
!3786 = !{!3787, !3794}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3785, file: !14, line: 3193, baseType: !3788, size: 128)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3789, line: 296, size: 128, elements: !3790)
!3789 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3790 = !{!3791, !3792, !3793}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3788, file: !3789, line: 297, baseType: !277, size: 32)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3788, file: !3789, line: 299, baseType: !177, size: 32, offset: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3788, file: !3789, line: 300, baseType: !176, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3785, file: !14, line: 3194, baseType: !220, size: 32, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !425, file: !14, line: 655, baseType: !570, size: 64, offset: 448)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !425, file: !14, line: 656, baseType: !420, size: 64, offset: 512)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !425, file: !14, line: 659, baseType: !176, size: 64, offset: 576)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !425, file: !14, line: 663, baseType: !208, size: 64, offset: 640)
!3799 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !14, line: 671, baseType: !3800, size: 32, offset: 704)
!3800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !14, line: 671, size: 32, elements: !3801)
!3801 = !{!3802, !3804}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3800, file: !14, line: 672, baseType: !3803, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3800, file: !14, line: 673, baseType: !7, size: 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !425, file: !14, line: 675, baseType: !575, size: 32, offset: 736)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !425, file: !14, line: 676, baseType: !580, size: 64, offset: 768)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !425, file: !14, line: 677, baseType: !3704, size: 128, offset: 832)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !425, file: !14, line: 678, baseType: !3704, size: 128, offset: 960)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !425, file: !14, line: 679, baseType: !3704, size: 128, offset: 1088)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !425, file: !14, line: 680, baseType: !277, size: 32, offset: 1216)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !425, file: !14, line: 681, baseType: !315, size: 16, offset: 1248)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !425, file: !14, line: 682, baseType: !305, size: 8, offset: 1264)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !425, file: !14, line: 683, baseType: !305, size: 8, offset: 1272)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !425, file: !14, line: 684, baseType: !1327, size: 64, offset: 1280)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !425, file: !14, line: 691, baseType: !208, size: 64, offset: 1344)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !425, file: !14, line: 692, baseType: !1339, size: 320, offset: 1408)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !425, file: !14, line: 694, baseType: !208, size: 64, offset: 1728)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !425, file: !14, line: 695, baseType: !208, size: 64, offset: 1792)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !425, file: !14, line: 697, baseType: !924, size: 128, offset: 1856)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !425, file: !14, line: 698, baseType: !184, size: 128, offset: 1984)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !425, file: !14, line: 707, baseType: !184, size: 128, offset: 2112)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !425, file: !14, line: 708, baseType: !184, size: 128, offset: 2240)
!3823 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !14, line: 709, baseType: !3824, size: 128, offset: 2368)
!3824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !14, line: 709, size: 128, elements: !3825)
!3825 = !{!3826, !3827}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3824, file: !14, line: 710, baseType: !1048, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3824, file: !14, line: 711, baseType: !898, size: 128, align: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !425, file: !14, line: 713, baseType: !686, size: 64, offset: 2496)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !425, file: !14, line: 714, baseType: !686, size: 64, offset: 2560)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !425, file: !14, line: 715, baseType: !297, size: 32, offset: 2624)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !425, file: !14, line: 716, baseType: !297, size: 32, offset: 2656)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !425, file: !14, line: 717, baseType: !297, size: 32, offset: 2688)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !425, file: !14, line: 719, baseType: !297, size: 32, offset: 2720)
!3834 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !14, line: 721, baseType: !3835, size: 64, offset: 2752)
!3835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !14, line: 721, size: 64, elements: !3836)
!3836 = !{!3837, !3838}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3835, file: !14, line: 722, baseType: !2037, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3835, file: !14, line: 723, baseType: !1071, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !425, file: !14, line: 725, baseType: !3840, size: 64, offset: 2816)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !425, file: !14, line: 726, baseType: !421, size: 1536, align: 64, offset: 2880)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !425, file: !14, line: 727, baseType: !184, size: 128, offset: 4416)
!3844 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !14, line: 728, baseType: !3845, size: 64, offset: 4544)
!3845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !14, line: 728, size: 64, elements: !3846)
!3846 = !{!3847, !3848, !3851, !3852}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3845, file: !14, line: 729, baseType: !2443, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3845, file: !14, line: 730, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3845, file: !14, line: 731, baseType: !345, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3845, file: !14, line: 732, baseType: !7, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !425, file: !14, line: 735, baseType: !221, size: 32, offset: 4608)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !425, file: !14, line: 738, baseType: !221, size: 32, offset: 4640)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !425, file: !14, line: 739, baseType: !3530, size: 64, offset: 4672)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !425, file: !14, line: 750, baseType: !176, size: 64, offset: 4736)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !421, file: !14, line: 474, baseType: !3788, size: 128, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !421, file: !14, line: 475, baseType: !1339, size: 320, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !421, file: !14, line: 476, baseType: !177, size: 32, offset: 512)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !421, file: !14, line: 477, baseType: !297, size: 32, offset: 544)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !421, file: !14, line: 482, baseType: !1625, size: 128, offset: 576)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !421, file: !14, line: 483, baseType: !208, size: 64, offset: 704)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !421, file: !14, line: 484, baseType: !208, size: 64, offset: 768)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !421, file: !14, line: 485, baseType: !3865, size: 64, offset: 832)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3867)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3868)
!3868 = !{!3869, !3873, !3943, !3947, !3951, !3957, !3961, !3965, !3970, !3974, !3978, !3982, !3983, !3987, !3991, !3995, !4000, !4004, !4011, !4012}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3867, file: !14, line: 405, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!109, !2230, !1083}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3867, file: !14, line: 406, baseType: !3874, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!109, !1769, !3877}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3879)
!3879 = !{!3880, !3910, !3924}
!3880 = !DIDerivedType(tag: DW_TAG_member, scope: !3878, file: !38, line: 295, baseType: !3881, size: 512)
!3881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3878, file: !38, line: 295, size: 512, elements: !3882)
!3882 = !{!3883, !3909}
!3883 = !DIDerivedType(tag: DW_TAG_member, scope: !3881, file: !38, line: 296, baseType: !3884, size: 448)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3881, file: !38, line: 296, size: 448, elements: !3885)
!3885 = !{!3886, !3887, !3896, !3897, !3898, !3907, !3908}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3884, file: !38, line: 298, baseType: !208, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, scope: !3884, file: !38, line: 299, baseType: !3888, size: 128, offset: 64)
!3888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3884, file: !38, line: 299, size: 128, elements: !3889)
!3889 = !{!3890, !3891}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3888, file: !38, line: 300, baseType: !184, size: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, scope: !3888, file: !38, line: 302, baseType: !3892, size: 128)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3888, file: !38, line: 302, size: 128, elements: !3893)
!3893 = !{!3894, !3895}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3892, file: !38, line: 303, baseType: !176, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3892, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3884, file: !38, line: 310, baseType: !420, size: 64, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3884, file: !38, line: 311, baseType: !208, size: 64, offset: 256)
!3898 = !DIDerivedType(tag: DW_TAG_member, scope: !3884, file: !38, line: 312, baseType: !3899, size: 64, offset: 320)
!3899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3884, file: !38, line: 312, size: 64, elements: !3900)
!3900 = !{!3901, !3902}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3899, file: !38, line: 313, baseType: !176, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3899, file: !38, line: 314, baseType: !3903, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3904)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3905)
!3905 = !{!3906}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3904, file: !38, line: 256, baseType: !208, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3884, file: !38, line: 316, baseType: !297, size: 32, offset: 384)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3884, file: !38, line: 317, baseType: !297, size: 32, offset: 416)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3881, file: !38, line: 323, baseType: !2231, size: 512, align: 128)
!3910 = !DIDerivedType(tag: DW_TAG_member, scope: !3878, file: !38, line: 325, baseType: !3911, size: 512, offset: 512)
!3911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3878, file: !38, line: 325, size: 512, elements: !3912)
!3912 = !{!3913, !3923}
!3913 = !DIDerivedType(tag: DW_TAG_member, scope: !3911, file: !38, line: 326, baseType: !3914, size: 320)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3911, file: !38, line: 326, size: 320, elements: !3915)
!3915 = !{!3916, !3917, !3918, !3919, !3920, !3921, !3922}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3914, file: !38, line: 327, baseType: !208, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3914, file: !38, line: 328, baseType: !208, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3914, file: !38, line: 329, baseType: !208, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3914, file: !38, line: 331, baseType: !297, size: 32, offset: 192)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3914, file: !38, line: 332, baseType: !297, size: 32, offset: 224)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3914, file: !38, line: 333, baseType: !297, size: 32, offset: 256)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3914, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3911, file: !38, line: 339, baseType: !2231, size: 512, align: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, scope: !3878, file: !38, line: 341, baseType: !3925, size: 512, offset: 1024)
!3925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3878, file: !38, line: 341, size: 512, elements: !3926)
!3926 = !{!3927, !3936, !3942}
!3927 = !DIDerivedType(tag: DW_TAG_member, scope: !3925, file: !38, line: 342, baseType: !3928, size: 384)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3925, file: !38, line: 342, size: 384, elements: !3929)
!3929 = !{!3930, !3931, !3932, !3933, !3934, !3935}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3928, file: !38, line: 343, baseType: !208, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3928, file: !38, line: 344, baseType: !208, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3928, file: !38, line: 346, baseType: !176, size: 64, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3928, file: !38, line: 347, baseType: !176, size: 64, offset: 192)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3928, file: !38, line: 348, baseType: !176, size: 64, offset: 256)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3928, file: !38, line: 349, baseType: !176, size: 64, offset: 320)
!3936 = !DIDerivedType(tag: DW_TAG_member, scope: !3925, file: !38, line: 352, baseType: !3937, size: 256)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3925, file: !38, line: 352, size: 256, elements: !3938)
!3938 = !{!3939, !3940, !3941}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3937, file: !38, line: 353, baseType: !208, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3937, file: !38, line: 354, baseType: !208, size: 64, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3937, file: !38, line: 356, baseType: !184, size: 128, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3925, file: !38, line: 359, baseType: !2231, size: 512, align: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3867, file: !14, line: 409, baseType: !3944, size: 64, offset: 128)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!109, !420, !1083}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3867, file: !14, line: 412, baseType: !3948, size: 64, offset: 192)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!249, !420, !3877}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3867, file: !14, line: 414, baseType: !3952, size: 64, offset: 256)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{null, !3955}
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3867, file: !14, line: 416, baseType: !3958, size: 64, offset: 320)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!109, !1769, !420, !580, !7, !3280, !2458}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3867, file: !14, line: 419, baseType: !3962, size: 64, offset: 384)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!109, !1769, !420, !580, !7, !7, !2230, !176}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3867, file: !14, line: 424, baseType: !3966, size: 64, offset: 448)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!3969, !420, !3969}
!3969 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !178, line: 131, baseType: !197)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3867, file: !14, line: 425, baseType: !3971, size: 64, offset: 512)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{null, !3877, !392, !392}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3867, file: !14, line: 426, baseType: !3975, size: 64, offset: 576)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!249, !3877, !177}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3867, file: !14, line: 427, baseType: !3979, size: 64, offset: 640)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{null, !3877}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3867, file: !14, line: 428, baseType: !2056, size: 64, offset: 704)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3867, file: !14, line: 433, baseType: !3984, size: 64, offset: 768)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!109, !420, !3877, !3877, !74}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3867, file: !14, line: 435, baseType: !3988, size: 64, offset: 832)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!109, !3877}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3867, file: !14, line: 436, baseType: !3992, size: 64, offset: 896)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!249, !3877, !392, !392}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3867, file: !14, line: 438, baseType: !3996, size: 64, offset: 960)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{null, !3877, !3999, !3999}
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3867, file: !14, line: 439, baseType: !4001, size: 64, offset: 1024)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!109, !420, !2230}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3867, file: !14, line: 442, baseType: !4005, size: 64, offset: 1088)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!109, !4008, !1769, !4010}
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3867, file: !14, line: 444, baseType: !2450, size: 64, offset: 1152)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3867, file: !14, line: 445, baseType: !4013, size: 64, offset: 1216)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!109, !2059, !2081}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !421, file: !14, line: 486, baseType: !208, size: 64, offset: 896)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !421, file: !14, line: 487, baseType: !1339, size: 320, offset: 960)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !421, file: !14, line: 488, baseType: !2493, size: 32, offset: 1280)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !421, file: !14, line: 489, baseType: !277, size: 32, offset: 1312)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !421, file: !14, line: 490, baseType: !184, size: 128, offset: 1344)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !421, file: !14, line: 491, baseType: !176, size: 64, offset: 1472)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !411, file: !371, line: 180, baseType: !4023, size: 64, offset: 320)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!377, !1769, !270, !410, !345, !580, !392}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !411, file: !371, line: 182, baseType: !4023, size: 64, offset: 384)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !411, file: !371, line: 184, baseType: !4028, size: 64, offset: 448)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!109, !1769, !270, !410, !2121}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !399, file: !371, line: 90, baseType: !4032, size: 64, offset: 192)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !399, file: !371, line: 91, baseType: !4034, size: 64, offset: 256)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !361, file: !265, line: 120, baseType: !4036, size: 64, offset: 192)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!4039, !328}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4041)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4042)
!4042 = !{!4043, !4044, !4048, !4052, !4058, !4062}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4041, file: !82, line: 40, baseType: !81, size: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4041, file: !82, line: 41, baseType: !4045, size: 64, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!249}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4041, file: !82, line: 42, baseType: !4049, size: 64, offset: 128)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!176}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4041, file: !82, line: 43, baseType: !4053, size: 64, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!257, !4056}
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4041, file: !82, line: 44, baseType: !4059, size: 64, offset: 256)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!257}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4041, file: !82, line: 45, baseType: !723, size: 64, offset: 320)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !361, file: !265, line: 121, baseType: !4064, size: 64, offset: 256)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!257, !328}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !361, file: !265, line: 122, baseType: !4068, size: 64, offset: 320)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{null, !328, !4071, !4072}
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !264, file: !265, line: 70, baseType: !4074, size: 64, offset: 384)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !595, line: 190, size: 1152, elements: !4076)
!4076 = !{!4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4168, !4169, !4170, !4171, !4172, !4175}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4075, file: !595, line: 191, baseType: !297, size: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4075, file: !595, line: 192, baseType: !297, size: 32, offset: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4075, file: !595, line: 202, baseType: !4074, size: 64, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4075, file: !595, line: 203, baseType: !204, size: 64, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4075, file: !595, line: 205, baseType: !790, size: 192, align: 64, offset: 192)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4075, file: !595, line: 207, baseType: !257, size: 64, offset: 384)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4075, file: !595, line: 208, baseType: !7, size: 32, offset: 448)
!4084 = !DIDerivedType(tag: DW_TAG_member, scope: !4075, file: !595, line: 209, baseType: !4085, size: 256, offset: 512)
!4085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4075, file: !595, line: 209, size: 256, elements: !4086)
!4086 = !{!4087, !4096, !4100}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4085, file: !595, line: 210, baseType: !4088, size: 256)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !595, line: 153, size: 256, elements: !4089)
!4089 = !{!4090, !4091, !4092, !4095}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4088, file: !595, line: 154, baseType: !208, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4088, file: !595, line: 156, baseType: !1628, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4088, file: !595, line: 162, baseType: !4093, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !595, line: 162, flags: DIFlagFwdDecl)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4088, file: !595, line: 167, baseType: !208, size: 64, offset: 192)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4085, file: !595, line: 211, baseType: !4097, size: 64)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !595, line: 170, size: 64, elements: !4098)
!4098 = !{!4099}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4097, file: !595, line: 171, baseType: !4074, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4085, file: !595, line: 212, baseType: !4101, size: 256)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !595, line: 174, size: 256, elements: !4102)
!4102 = !{!4103, !4163, !4166, !4167}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4101, file: !595, line: 175, baseType: !4104, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4106)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !595, line: 271, size: 768, elements: !4107)
!4107 = !{!4108, !4128, !4132, !4136, !4140, !4144, !4148, !4152, !4153, !4154, !4155, !4159}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4106, file: !595, line: 276, baseType: !4109, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!109, !4112}
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !595, line: 251, size: 1216, elements: !4114)
!4114 = !{!4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4113, file: !595, line: 253, baseType: !4074, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4113, file: !595, line: 254, baseType: !1769, size: 64, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4113, file: !595, line: 255, baseType: !1120, size: 64, offset: 128)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4113, file: !595, line: 256, baseType: !176, size: 64, offset: 192)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4113, file: !595, line: 259, baseType: !680, size: 256, offset: 256)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4113, file: !595, line: 260, baseType: !680, size: 256, offset: 512)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4113, file: !595, line: 261, baseType: !109, size: 32, offset: 768)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4113, file: !595, line: 262, baseType: !184, size: 128, offset: 832)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4113, file: !595, line: 263, baseType: !345, size: 64, offset: 960)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4113, file: !595, line: 265, baseType: !392, size: 64, offset: 1024)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4113, file: !595, line: 266, baseType: !249, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4113, file: !595, line: 267, baseType: !249, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4113, file: !595, line: 268, baseType: !2166, size: 64, offset: 1152)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4106, file: !595, line: 277, baseType: !4129, size: 64, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !4112}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4106, file: !595, line: 290, baseType: !4133, size: 64, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!109, !1120, !176}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4106, file: !595, line: 292, baseType: !4137, size: 64, offset: 192)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!176, !1120, !2050}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4106, file: !595, line: 293, baseType: !4141, size: 64, offset: 256)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!176, !1120, !176, !2050}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4106, file: !595, line: 294, baseType: !4145, size: 64, offset: 320)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{null, !1120, !176}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4106, file: !595, line: 296, baseType: !4149, size: 64, offset: 384)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!377, !4112, !345, !392, !580}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4106, file: !595, line: 306, baseType: !392, size: 64, offset: 448)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4106, file: !595, line: 313, baseType: !249, size: 8, offset: 512)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4106, file: !595, line: 314, baseType: !4149, size: 64, offset: 576)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4106, file: !595, line: 317, baseType: !4156, size: 64, offset: 640)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!2108, !4112, !2110}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4106, file: !595, line: 320, baseType: !4160, size: 64, offset: 704)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!109, !4112, !2121}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4101, file: !595, line: 176, baseType: !4164, size: 64, offset: 64)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !595, line: 35, flags: DIFlagFwdDecl)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4101, file: !595, line: 177, baseType: !580, size: 64, offset: 128)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4101, file: !595, line: 178, baseType: !4074, size: 64, offset: 192)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4075, file: !595, line: 215, baseType: !176, size: 64, offset: 768)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4075, file: !595, line: 221, baseType: !197, size: 64, offset: 832)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4075, file: !595, line: 223, baseType: !315, size: 16, offset: 896)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4075, file: !595, line: 224, baseType: !387, size: 16, offset: 912)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4075, file: !595, line: 225, baseType: !4173, size: 64, offset: 960)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !595, line: 36, flags: DIFlagFwdDecl)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4075, file: !595, line: 227, baseType: !898, size: 128, align: 64, offset: 1024)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !264, file: !265, line: 71, baseType: !4177, size: 32, offset: 448)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4178, line: 19, size: 32, elements: !4179)
!4178 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4179 = !{!4180}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4177, file: !4178, line: 20, baseType: !1459, size: 32)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !264, file: !265, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !264, file: !265, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !264, file: !265, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !264, file: !265, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !264, file: !265, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !261, file: !94, line: 707, baseType: !4187, size: 64, offset: 512)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !261, file: !94, line: 709, baseType: !4189, size: 64, offset: 576)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !261, file: !94, line: 711, baseType: !204, size: 64, offset: 640)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !261, file: !94, line: 712, baseType: !4193, size: 64, offset: 704)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4195)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4196)
!4196 = !{!4197, !4198, !4199, !4203, !4208, !4212}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4195, file: !94, line: 90, baseType: !204, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4195, file: !94, line: 91, baseType: !396, size: 64, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4195, file: !94, line: 92, baseType: !4200, size: 64, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!109, !259, !340}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4195, file: !94, line: 93, baseType: !4204, size: 64, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!345, !259, !4207, !4071, !4072}
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4195, file: !94, line: 95, baseType: !4209, size: 64, offset: 256)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{null, !4187}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4195, file: !94, line: 97, baseType: !4213, size: 64, offset: 320)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4215)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4216)
!4216 = !{!4217, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4215, file: !101, line: 287, baseType: !4218, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!109, !4187}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4215, file: !101, line: 288, baseType: !4209, size: 64, offset: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4215, file: !101, line: 289, baseType: !4218, size: 64, offset: 128)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4215, file: !101, line: 290, baseType: !4218, size: 64, offset: 192)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4215, file: !101, line: 291, baseType: !4218, size: 64, offset: 256)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4215, file: !101, line: 292, baseType: !4218, size: 64, offset: 320)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4215, file: !101, line: 293, baseType: !4218, size: 64, offset: 384)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4215, file: !101, line: 294, baseType: !4218, size: 64, offset: 448)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4215, file: !101, line: 295, baseType: !4218, size: 64, offset: 512)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4215, file: !101, line: 296, baseType: !4218, size: 64, offset: 576)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4215, file: !101, line: 297, baseType: !4218, size: 64, offset: 640)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4215, file: !101, line: 298, baseType: !4218, size: 64, offset: 704)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4215, file: !101, line: 299, baseType: !4218, size: 64, offset: 768)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4215, file: !101, line: 300, baseType: !4218, size: 64, offset: 832)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4215, file: !101, line: 301, baseType: !4218, size: 64, offset: 896)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4215, file: !101, line: 302, baseType: !4218, size: 64, offset: 960)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4215, file: !101, line: 303, baseType: !4218, size: 64, offset: 1024)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4215, file: !101, line: 304, baseType: !4218, size: 64, offset: 1088)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4215, file: !101, line: 305, baseType: !4218, size: 64, offset: 1152)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4215, file: !101, line: 306, baseType: !4218, size: 64, offset: 1216)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4215, file: !101, line: 307, baseType: !4218, size: 64, offset: 1280)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4215, file: !101, line: 308, baseType: !4218, size: 64, offset: 1344)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4215, file: !101, line: 309, baseType: !4218, size: 64, offset: 1408)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !261, file: !94, line: 714, baseType: !4244, size: 64, offset: 768)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4246)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4247, line: 80, size: 1344, elements: !4248)
!4247 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4248 = !{!4249, !4250, !4251, !4252, !4253, !4254, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4327}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4246, file: !4247, line: 81, baseType: !204, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4246, file: !4247, line: 82, baseType: !204, size: 64, offset: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4246, file: !4247, line: 83, baseType: !396, size: 64, offset: 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4246, file: !4247, line: 84, baseType: !396, size: 64, offset: 192)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4246, file: !4247, line: 85, baseType: !396, size: 64, offset: 256)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4246, file: !4247, line: 87, baseType: !4255, size: 64, offset: 320)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!109, !4187, !4258}
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4260)
!4260 = !{!4261, !4262, !4263, !4264, !4265, !4266, !4267, !4280, !4290, !4291, !4292, !4293, !4294, !4302, !4303, !4304, !4305, !4306, !4307}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4259, file: !88, line: 97, baseType: !204, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4259, file: !88, line: 98, baseType: !4244, size: 64, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4259, file: !88, line: 100, baseType: !609, size: 64, offset: 128)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4259, file: !88, line: 101, baseType: !204, size: 64, offset: 192)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4259, file: !88, line: 103, baseType: !249, size: 8, offset: 256)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4259, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4259, file: !88, line: 106, baseType: !4268, size: 64, offset: 320)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4270)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4271, line: 282, size: 1600, elements: !4272)
!4271 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4272 = !{!4273, !4274, !4275, !4279}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4270, file: !4271, line: 283, baseType: !3533, size: 256)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4270, file: !4271, line: 284, baseType: !3533, size: 256, offset: 256)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4270, file: !4271, line: 285, baseType: !4276, size: 1024, offset: 512)
!4276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 1024, elements: !4277)
!4277 = !{!4278}
!4278 = !DISubrange(count: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4270, file: !4271, line: 286, baseType: !257, size: 64, offset: 1536)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4259, file: !88, line: 107, baseType: !4281, size: 64, offset: 384)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4283)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4271, line: 217, size: 256, elements: !4284)
!4284 = !{!4285, !4286, !4288, !4289}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4283, file: !4271, line: 218, baseType: !3540, size: 128)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4283, file: !4271, line: 219, baseType: !4287, size: 64, offset: 128)
!4287 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4271, line: 15, baseType: !208)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4283, file: !4271, line: 220, baseType: !221, size: 32, offset: 192)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4283, file: !4271, line: 221, baseType: !221, size: 32, offset: 224)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4259, file: !88, line: 109, baseType: !4218, size: 64, offset: 448)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4259, file: !88, line: 110, baseType: !4209, size: 64, offset: 512)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4259, file: !88, line: 111, baseType: !4218, size: 64, offset: 576)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4259, file: !88, line: 112, baseType: !4209, size: 64, offset: 640)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4259, file: !88, line: 113, baseType: !4295, size: 64, offset: 704)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!109, !4187, !4298}
!4298 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4299)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4300)
!4300 = !{!4301}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4299, file: !101, line: 59, baseType: !109, size: 32)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4259, file: !88, line: 114, baseType: !4218, size: 64, offset: 768)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4259, file: !88, line: 115, baseType: !396, size: 64, offset: 832)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4259, file: !88, line: 116, baseType: !396, size: 64, offset: 896)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4259, file: !88, line: 118, baseType: !4213, size: 64, offset: 960)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4259, file: !88, line: 119, baseType: !4209, size: 64, offset: 1024)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4259, file: !88, line: 121, baseType: !4308, size: 64, offset: 1088)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4246, file: !4247, line: 88, baseType: !4200, size: 64, offset: 384)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4246, file: !4247, line: 89, baseType: !4218, size: 64, offset: 448)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4246, file: !4247, line: 90, baseType: !4209, size: 64, offset: 512)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4246, file: !4247, line: 91, baseType: !4209, size: 64, offset: 576)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4246, file: !4247, line: 92, baseType: !4209, size: 64, offset: 640)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4246, file: !4247, line: 94, baseType: !4218, size: 64, offset: 704)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4246, file: !4247, line: 95, baseType: !4218, size: 64, offset: 768)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4246, file: !4247, line: 97, baseType: !4295, size: 64, offset: 832)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4246, file: !4247, line: 98, baseType: !4218, size: 64, offset: 896)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4246, file: !4247, line: 100, baseType: !4218, size: 64, offset: 960)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4246, file: !4247, line: 102, baseType: !4218, size: 64, offset: 1024)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4246, file: !4247, line: 103, baseType: !4209, size: 64, offset: 1088)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4246, file: !4247, line: 105, baseType: !4213, size: 64, offset: 1152)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4246, file: !4247, line: 107, baseType: !4324, size: 64, offset: 1216)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4326)
!4326 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4247, line: 107, flags: DIFlagFwdDecl)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4246, file: !4247, line: 109, baseType: !249, size: 8, offset: 1280)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !261, file: !94, line: 715, baseType: !4258, size: 64, offset: 832)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !261, file: !94, line: 717, baseType: !176, size: 64, offset: 896)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !261, file: !94, line: 719, baseType: !176, size: 64, offset: 960)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !261, file: !94, line: 721, baseType: !680, size: 256, offset: 1024)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !261, file: !94, line: 725, baseType: !4333, size: 448, offset: 1280)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4334)
!4334 = !{!4335, !4336, !4337, !4338}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4333, file: !94, line: 518, baseType: !184, size: 128)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4333, file: !94, line: 519, baseType: !184, size: 128, offset: 128)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4333, file: !94, line: 520, baseType: !184, size: 128, offset: 256)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4333, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !261, file: !94, line: 726, baseType: !4340, size: 2496, offset: 1728)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4341)
!4341 = !{!4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4424, !4428}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4340, file: !101, line: 664, baseType: !4298, size: 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4340, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4340, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4340, file: !101, line: 667, baseType: !249, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4340, file: !101, line: 668, baseType: !249, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4340, file: !101, line: 669, baseType: !249, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4340, file: !101, line: 670, baseType: !249, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4340, file: !101, line: 671, baseType: !249, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4340, file: !101, line: 672, baseType: !249, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4340, file: !101, line: 673, baseType: !249, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4340, file: !101, line: 674, baseType: !249, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4340, file: !101, line: 675, baseType: !220, size: 32, offset: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4340, file: !101, line: 676, baseType: !277, size: 32, offset: 96)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4340, file: !101, line: 678, baseType: !184, size: 128, offset: 128)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4340, file: !101, line: 679, baseType: !629, size: 256, offset: 256)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4340, file: !101, line: 680, baseType: !4358, size: 64, offset: 512)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4360, line: 43, size: 1536, elements: !4361)
!4360 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4361 = !{!4362, !4363, !4364, !4365, !4366, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4359, file: !4360, line: 44, baseType: !204, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4359, file: !4360, line: 45, baseType: !109, size: 32, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4359, file: !4360, line: 46, baseType: !184, size: 128, offset: 128)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4359, file: !4360, line: 47, baseType: !277, size: 32, offset: 256)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4359, file: !4360, line: 48, baseType: !4367, size: 64, offset: 320)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4359, file: !4360, line: 49, baseType: !920, size: 320, offset: 384)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4359, file: !4360, line: 50, baseType: !208, size: 64, offset: 704)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4359, file: !4360, line: 51, baseType: !1574, size: 64, offset: 768)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4359, file: !4360, line: 52, baseType: !1574, size: 64, offset: 832)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4359, file: !4360, line: 53, baseType: !1574, size: 64, offset: 896)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4359, file: !4360, line: 54, baseType: !1574, size: 64, offset: 960)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4359, file: !4360, line: 55, baseType: !1574, size: 64, offset: 1024)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4359, file: !4360, line: 56, baseType: !208, size: 64, offset: 1088)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4359, file: !4360, line: 57, baseType: !208, size: 64, offset: 1152)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4359, file: !4360, line: 58, baseType: !208, size: 64, offset: 1216)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4359, file: !4360, line: 59, baseType: !208, size: 64, offset: 1280)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4359, file: !4360, line: 60, baseType: !208, size: 64, offset: 1344)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4359, file: !4360, line: 61, baseType: !4187, size: 64, offset: 1408)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4359, file: !4360, line: 62, baseType: !249, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4359, file: !4360, line: 63, baseType: !249, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4340, file: !101, line: 681, baseType: !249, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4340, file: !101, line: 682, baseType: !249, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4340, file: !101, line: 683, baseType: !249, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4340, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4340, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4340, file: !101, line: 690, baseType: !1566, size: 512, offset: 640)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4340, file: !101, line: 691, baseType: !197, size: 64, offset: 1152)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4340, file: !101, line: 692, baseType: !938, size: 256, offset: 1216)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4340, file: !101, line: 693, baseType: !1432, size: 192, offset: 1472)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4340, file: !101, line: 694, baseType: !4367, size: 64, offset: 1664)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4340, file: !101, line: 695, baseType: !297, size: 32, offset: 1728)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4340, file: !101, line: 696, baseType: !297, size: 32, offset: 1760)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4340, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4340, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4340, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4340, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4340, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4340, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4340, file: !101, line: 703, baseType: !249, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4340, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4340, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4340, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4340, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4340, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4340, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4340, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4340, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4340, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4340, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4340, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4340, file: !101, line: 715, baseType: !197, size: 64, offset: 2048)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4340, file: !101, line: 716, baseType: !197, size: 64, offset: 2112)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4340, file: !101, line: 717, baseType: !197, size: 64, offset: 2176)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4340, file: !101, line: 718, baseType: !197, size: 64, offset: 2240)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4340, file: !101, line: 720, baseType: !4419, size: 64, offset: 2304)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4421)
!4421 = !{!4422, !4423}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4420, file: !101, line: 633, baseType: !277, size: 32)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4420, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4340, file: !101, line: 721, baseType: !4425, size: 64, offset: 2368)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{null, !4187, !676}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4340, file: !101, line: 722, baseType: !4429, size: 64, offset: 2432)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !261, file: !94, line: 727, baseType: !4432, size: 64, offset: 4224)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4434)
!4434 = !{!4435, !4436, !4437, !4441, !4442, !4443}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4433, file: !101, line: 743, baseType: !4215, size: 1472)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4433, file: !101, line: 744, baseType: !4218, size: 64, offset: 1472)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4433, file: !101, line: 745, baseType: !4438, size: 64, offset: 1536)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{null, !4187, !249}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4433, file: !101, line: 746, baseType: !4218, size: 64, offset: 1600)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4433, file: !101, line: 747, baseType: !4209, size: 64, offset: 1664)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4433, file: !101, line: 748, baseType: !4209, size: 64, offset: 1728)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !261, file: !94, line: 736, baseType: !4445, size: 128, offset: 4288)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4446)
!4446 = !{!4447, !4451}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4445, file: !94, line: 531, baseType: !4448, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4450, line: 13, flags: DIFlagFwdDecl)
!4450 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4445, file: !94, line: 532, baseType: !4452, size: 64, offset: 64)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !261, file: !94, line: 738, baseType: !4455, size: 64, offset: 4416)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4457)
!4457 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !261, file: !94, line: 740, baseType: !4459, size: 64, offset: 4480)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !261, file: !94, line: 741, baseType: !197, size: 64, offset: 4544)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !261, file: !94, line: 746, baseType: !197, size: 64, offset: 4608)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !261, file: !94, line: 747, baseType: !4463, size: 64, offset: 4672)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4465)
!4465 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !261, file: !94, line: 749, baseType: !4467, size: 64, offset: 4736)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4469)
!4469 = !{!4470, !4471, !4472}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4468, file: !94, line: 433, baseType: !7, size: 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4468, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4468, file: !94, line: 435, baseType: !208, size: 64, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !261, file: !94, line: 751, baseType: !184, size: 128, offset: 4800)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !261, file: !94, line: 762, baseType: !4475, size: 64, offset: 4928)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !261, file: !94, line: 770, baseType: !4478, offset: 4992)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4479, line: 5, elements: !967)
!4479 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !261, file: !94, line: 772, baseType: !4481, size: 64, offset: 4992)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4483, line: 18, flags: DIFlagFwdDecl)
!4483 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !261, file: !94, line: 773, baseType: !231, size: 64, offset: 5056)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !261, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !261, file: !94, line: 778, baseType: !575, size: 32, offset: 5152)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !261, file: !94, line: 779, baseType: !220, size: 32, offset: 5184)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !261, file: !94, line: 781, baseType: !277, size: 32, offset: 5216)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !261, file: !94, line: 782, baseType: !184, size: 128, offset: 5248)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !261, file: !94, line: 784, baseType: !4491, size: 64, offset: 5376)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4493)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4494, line: 52, size: 768, elements: !4495)
!4494 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4495 = !{!4496, !4497, !4498, !4499, !4500, !4504, !4508, !4509, !4510, !4511, !4515, !4519}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4493, file: !4494, line: 53, baseType: !204, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4493, file: !4494, line: 55, baseType: !396, size: 64, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4493, file: !4494, line: 56, baseType: !396, size: 64, offset: 128)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4493, file: !4494, line: 58, baseType: !4200, size: 64, offset: 192)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4493, file: !4494, line: 59, baseType: !4501, size: 64, offset: 256)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!345, !259, !4207}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4493, file: !4494, line: 61, baseType: !4505, size: 64, offset: 320)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{null, !4491}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4493, file: !4494, line: 62, baseType: !4209, size: 64, offset: 384)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4493, file: !4494, line: 64, baseType: !4218, size: 64, offset: 448)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4493, file: !4494, line: 66, baseType: !4039, size: 64, offset: 512)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4493, file: !4494, line: 67, baseType: !4512, size: 64, offset: 576)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!257, !259}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4493, file: !4494, line: 69, baseType: !4516, size: 64, offset: 640)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{null, !259, !4071, !4072}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4493, file: !4494, line: 71, baseType: !4213, size: 64, offset: 704)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !261, file: !94, line: 785, baseType: !396, size: 64, offset: 5440)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !261, file: !94, line: 787, baseType: !4209, size: 64, offset: 5504)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !261, file: !94, line: 788, baseType: !4523, size: 64, offset: 5568)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !261, file: !94, line: 789, baseType: !4526, size: 64, offset: 5632)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !261, file: !94, line: 791, baseType: !4529, size: 64, offset: 5696)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4531)
!4531 = !{!4532, !4533, !4534, !4535, !4536}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4530, file: !94, line: 598, baseType: !122, size: 32)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4530, file: !94, line: 599, baseType: !131, size: 32, offset: 32)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4530, file: !94, line: 600, baseType: !136, size: 32, offset: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4530, file: !94, line: 601, baseType: !249, size: 8, offset: 96)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4530, file: !94, line: 602, baseType: !249, size: 8, offset: 104)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !261, file: !94, line: 793, baseType: !141, size: 32, offset: 5760)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !261, file: !94, line: 795, baseType: !249, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !261, file: !94, line: 796, baseType: !249, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !261, file: !94, line: 797, baseType: !249, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !261, file: !94, line: 798, baseType: !249, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !261, file: !94, line: 799, baseType: !249, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !235, file: !228, line: 131, baseType: !246, size: 64, offset: 256)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !235, file: !228, line: 133, baseType: !4545, size: 64, offset: 320)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!116, !251}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !235, file: !228, line: 134, baseType: !4549, size: 64, offset: 384)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!249, !251, !204}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !235, file: !228, line: 136, baseType: !4553, size: 64, offset: 448)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!109, !251, !204, !7, !176, !392}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !235, file: !228, line: 141, baseType: !4557, size: 64, offset: 512)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!109, !251, !204, !1015, !392}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !235, file: !228, line: 144, baseType: !4561, size: 64, offset: 576)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!204, !251}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !235, file: !228, line: 145, baseType: !4561, size: 64, offset: 640)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !235, file: !228, line: 146, baseType: !4566, size: 64, offset: 704)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!231, !251}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !235, file: !228, line: 148, baseType: !4570, size: 64, offset: 768)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!231, !251, !231}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !235, file: !228, line: 151, baseType: !4574, size: 64, offset: 832)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!231, !251, !204}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !235, file: !228, line: 153, baseType: !4578, size: 64, offset: 896)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!109, !251, !204, !204, !7, !7, !4581}
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !228, line: 94, size: 640, elements: !4583)
!4583 = !{!4584, !4585, !4586}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4582, file: !228, line: 95, baseType: !231, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4582, file: !228, line: 96, baseType: !7, size: 32, offset: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4582, file: !228, line: 97, baseType: !4587, size: 512, offset: 128)
!4587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 512, elements: !1609)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !235, file: !228, line: 158, baseType: !4570, size: 64, offset: 960)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !235, file: !228, line: 161, baseType: !4566, size: 64, offset: 1024)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !235, file: !228, line: 163, baseType: !238, size: 64, offset: 1088)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !235, file: !228, line: 164, baseType: !4592, size: 64, offset: 1152)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!109, !251, !4595}
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !228, line: 73, size: 128, elements: !4597)
!4597 = !{!4598, !4599, !4600}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4596, file: !228, line: 74, baseType: !7, size: 32)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4596, file: !228, line: 75, baseType: !7, size: 32, offset: 32)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4596, file: !228, line: 76, baseType: !251, size: 64, offset: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !235, file: !228, line: 166, baseType: !4602, size: 64, offset: 1216)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!176, !231, !109}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !235, file: !228, line: 167, baseType: !4606, size: 64, offset: 1280)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!109, !251, !7}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !235, file: !228, line: 168, baseType: !4610, size: 64, offset: 1344)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!109, !231}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !227, file: !228, line: 44, baseType: !4187, size: 64, offset: 128)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !227, file: !228, line: 45, baseType: !184, size: 128, offset: 192)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !227, file: !228, line: 46, baseType: !184, size: 128, offset: 320)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !227, file: !228, line: 47, baseType: !305, size: 8, offset: 448)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !216, file: !217, line: 372, baseType: !184, size: 128, offset: 640)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !216, file: !217, line: 373, baseType: !184, size: 128, offset: 768)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !216, file: !217, line: 374, baseType: !4620, size: 32, offset: 896)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !217, line: 181, size: 32, elements: !4621)
!4621 = !{!4622, !4623, !4624, !4625, !4626, !4627}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !4620, file: !217, line: 182, baseType: !220, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4620, file: !217, line: 183, baseType: !220, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !4620, file: !217, line: 184, baseType: !220, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !4620, file: !217, line: 185, baseType: !220, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !4620, file: !217, line: 186, baseType: !220, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4620, file: !217, line: 187, baseType: !220, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !217, line: 375, baseType: !4629, size: 32, offset: 928)
!4629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !217, line: 192, size: 32, elements: !4630)
!4630 = !{!4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !4629, file: !217, line: 193, baseType: !220, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4629, file: !217, line: 194, baseType: !220, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !4629, file: !217, line: 195, baseType: !220, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !4629, file: !217, line: 196, baseType: !220, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4629, file: !217, line: 197, baseType: !220, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4629, file: !217, line: 198, baseType: !220, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !4629, file: !217, line: 199, baseType: !220, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !4629, file: !217, line: 200, baseType: !220, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !4629, file: !217, line: 201, baseType: !220, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !4629, file: !217, line: 202, baseType: !220, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !4629, file: !217, line: 203, baseType: !220, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !4629, file: !217, line: 204, baseType: !220, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !4629, file: !217, line: 205, baseType: !220, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !4629, file: !217, line: 206, baseType: !220, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4629, file: !217, line: 207, baseType: !220, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !216, file: !217, line: 376, baseType: !4647, size: 960, offset: 960)
!4647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !217, line: 238, size: 960, elements: !4648)
!4648 = !{!4649, !4651, !4652, !4660, !4662, !4663, !4664, !4669, !4672}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !4647, file: !217, line: 239, baseType: !4650, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !217, line: 220, baseType: !3079)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !4647, file: !217, line: 240, baseType: !109, size: 32, offset: 64)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4647, file: !217, line: 241, baseType: !4653, size: 32, offset: 96)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !217, line: 230, size: 32, elements: !4654)
!4654 = !{!4655, !4656, !4657, !4658, !4659}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !4653, file: !217, line: 231, baseType: !220, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4653, file: !217, line: 232, baseType: !220, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !4653, file: !217, line: 233, baseType: !220, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !4653, file: !217, line: 234, baseType: !220, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4653, file: !217, line: 235, baseType: !220, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4647, file: !217, line: 242, baseType: !4661, size: 64, offset: 128)
!4661 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !217, line: 221, baseType: !197)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !4647, file: !217, line: 243, baseType: !345, size: 64, offset: 192)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4647, file: !217, line: 244, baseType: !184, size: 128, offset: 256)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4647, file: !217, line: 245, baseType: !4665, size: 320, offset: 384)
!4665 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !217, line: 222, baseType: !4666)
!4666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 320, elements: !4667)
!4667 = !{!4668}
!4668 = !DISubrange(count: 40)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !4647, file: !217, line: 246, baseType: !4670, size: 160, offset: 704)
!4670 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !217, line: 223, baseType: !4671)
!4671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 160, elements: !3379)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !4647, file: !217, line: 247, baseType: !4673, size: 64, offset: 896)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !225, line: 908, size: 192, elements: !4675)
!4675 = !{!4676, !4678, !4683, !4689, !4696, !4702, !4708, !4716}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4674, file: !225, line: 909, baseType: !4677, size: 32)
!4677 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !225, line: 644, baseType: !220)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !4674, file: !225, line: 913, baseType: !4679, size: 128)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4674, file: !225, line: 910, size: 128, elements: !4680)
!4680 = !{!4681, !4682}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4679, file: !225, line: 911, baseType: !4677, size: 32)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4679, file: !225, line: 912, baseType: !197, size: 64, offset: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4674, file: !225, line: 919, baseType: !4684, size: 128)
!4684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4674, file: !225, line: 915, size: 128, elements: !4685)
!4685 = !{!4686, !4687, !4688}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4684, file: !225, line: 916, baseType: !4677, size: 32)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4684, file: !225, line: 917, baseType: !220, size: 32, offset: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4684, file: !225, line: 918, baseType: !345, size: 64, offset: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4674, file: !225, line: 925, baseType: !4690, size: 128)
!4690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4674, file: !225, line: 921, size: 128, elements: !4691)
!4691 = !{!4692, !4693, !4694}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4690, file: !225, line: 922, baseType: !4677, size: 32)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4690, file: !225, line: 923, baseType: !220, size: 32, offset: 32)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4690, file: !225, line: 924, baseType: !4695, size: 64, offset: 64)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !4674, file: !225, line: 931, baseType: !4697, size: 128)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4674, file: !225, line: 927, size: 128, elements: !4698)
!4698 = !{!4699, !4700, !4701}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4697, file: !225, line: 928, baseType: !4677, size: 32)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4697, file: !225, line: 929, baseType: !220, size: 32, offset: 32)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !4697, file: !225, line: 930, baseType: !4673, size: 64, offset: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !4674, file: !225, line: 937, baseType: !4703, size: 128)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4674, file: !225, line: 933, size: 128, elements: !4704)
!4704 = !{!4705, !4706, !4707}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4703, file: !225, line: 934, baseType: !4677, size: 32)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !4703, file: !225, line: 935, baseType: !4677, size: 32, offset: 32)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4703, file: !225, line: 936, baseType: !224, size: 64, offset: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !4674, file: !225, line: 944, baseType: !4709, size: 192)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4674, file: !225, line: 939, size: 192, elements: !4710)
!4710 = !{!4711, !4712, !4713, !4715}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4709, file: !225, line: 940, baseType: !4677, size: 32)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !4709, file: !225, line: 941, baseType: !220, size: 32, offset: 32)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !4709, file: !225, line: 942, baseType: !4714, size: 64, offset: 64)
!4714 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !225, line: 128, baseType: !197)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !4709, file: !225, line: 943, baseType: !220, size: 32, offset: 128)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !4674, file: !225, line: 950, baseType: !4717, size: 96)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4674, file: !225, line: 946, size: 96, elements: !4718)
!4718 = !{!4719, !4720, !4721}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4717, file: !225, line: 947, baseType: !4677, size: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !4717, file: !225, line: 948, baseType: !220, size: 32, offset: 32)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !4717, file: !225, line: 949, baseType: !220, size: 32, offset: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !216, file: !217, line: 377, baseType: !4723, size: 1408, offset: 1920)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !217, line: 280, size: 1408, elements: !4724)
!4724 = !{!4725, !4726, !4736, !4751}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4723, file: !217, line: 281, baseType: !109, size: 32)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4723, file: !217, line: 282, baseType: !4727, size: 32, offset: 32)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !217, line: 259, size: 32, elements: !4728)
!4728 = !{!4729, !4730, !4731, !4732, !4733, !4734, !4735}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !4727, file: !217, line: 260, baseType: !220, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !4727, file: !217, line: 261, baseType: !220, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !4727, file: !217, line: 262, baseType: !220, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !4727, file: !217, line: 263, baseType: !220, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !4727, file: !217, line: 264, baseType: !220, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !4727, file: !217, line: 265, baseType: !220, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4727, file: !217, line: 266, baseType: !220, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4723, file: !217, line: 283, baseType: !4737, size: 1280, offset: 64)
!4737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4738, size: 1280, elements: !4749)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !217, line: 269, size: 256, elements: !4739)
!4739 = !{!4740, !4746, !4747, !4748}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4738, file: !217, line: 274, baseType: !4741, size: 8)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4738, file: !217, line: 270, size: 8, elements: !4742)
!4742 = !{!4743, !4744, !4745}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4741, file: !217, line: 271, baseType: !305, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !4741, file: !217, line: 272, baseType: !305, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4741, file: !217, line: 273, baseType: !305, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4738, file: !217, line: 275, baseType: !109, size: 32, offset: 32)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4738, file: !217, line: 276, baseType: !109, size: 32, offset: 64)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4738, file: !217, line: 277, baseType: !184, size: 128, offset: 128)
!4749 = !{!4750}
!4750 = !DISubrange(count: 5)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !4723, file: !217, line: 284, baseType: !305, size: 8, offset: 1344)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !216, file: !217, line: 378, baseType: !4753, size: 640, offset: 3328)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !217, line: 330, size: 640, elements: !4754)
!4754 = !{!4755, !4756, !4757, !4758, !4759, !4764, !4773, !4774, !4775}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !4753, file: !217, line: 331, baseType: !224, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !4753, file: !217, line: 332, baseType: !197, size: 64, offset: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !4753, file: !217, line: 333, baseType: !197, size: 64, offset: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4753, file: !217, line: 334, baseType: !184, size: 128, offset: 192)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4753, file: !217, line: 335, baseType: !4760, size: 8, offset: 320)
!4760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !217, line: 320, size: 8, elements: !4761)
!4761 = !{!4762, !4763}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4760, file: !217, line: 321, baseType: !305, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !4760, file: !217, line: 322, baseType: !305, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4753, file: !217, line: 336, baseType: !4765, size: 128, offset: 384)
!4765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !217, line: 325, size: 128, elements: !4766)
!4766 = !{!4767, !4772}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4765, file: !217, line: 326, baseType: !4768, size: 64)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{null, !4771}
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4765, file: !217, line: 327, baseType: !4187, size: 64, offset: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !4753, file: !217, line: 337, baseType: !4358, size: 64, offset: 512)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !4753, file: !217, line: 338, baseType: !109, size: 32, offset: 576)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !4753, file: !217, line: 339, baseType: !109, size: 32, offset: 608)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !216, file: !217, line: 379, baseType: !4777, size: 192, offset: 3968)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !217, line: 312, size: 192, elements: !4778)
!4778 = !{!4779, !4780, !4784, !4785}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4777, file: !217, line: 313, baseType: !109, size: 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4777, file: !217, line: 314, baseType: !4781, size: 8, offset: 32)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !217, line: 298, size: 8, elements: !4782)
!4782 = !{!4783}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4781, file: !217, line: 299, baseType: !305, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !4777, file: !217, line: 315, baseType: !109, size: 32, offset: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4777, file: !217, line: 316, baseType: !4786, size: 64, offset: 128)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !217, line: 302, size: 64, elements: !4788)
!4788 = !{!4789, !4794, !4795, !4796}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4787, file: !217, line: 306, baseType: !4790, size: 8)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4787, file: !217, line: 303, size: 8, elements: !4791)
!4791 = !{!4792, !4793}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4790, file: !217, line: 304, baseType: !305, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4790, file: !217, line: 305, baseType: !305, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4787, file: !217, line: 307, baseType: !305, size: 8, offset: 8)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4787, file: !217, line: 308, baseType: !305, size: 8, offset: 16)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4787, file: !217, line: 309, baseType: !109, size: 32, offset: 32)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !216, file: !217, line: 380, baseType: !4798, size: 64, offset: 4160)
!4798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !217, line: 212, size: 64, elements: !4799)
!4799 = !{!4800}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4798, file: !217, line: 213, baseType: !4801, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !217, line: 86, flags: DIFlagFwdDecl)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !216, file: !217, line: 381, baseType: !4804, size: 384, offset: 4224)
!4804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !217, line: 357, size: 384, elements: !4805)
!4805 = !{!4806, !4809, !4810, !4811}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4804, file: !217, line: 358, baseType: !4807, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4674)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4804, file: !217, line: 359, baseType: !184, size: 128, offset: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !4804, file: !217, line: 360, baseType: !4807, size: 64, offset: 192)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !4804, file: !217, line: 361, baseType: !184, size: 128, offset: 256)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !216, file: !217, line: 382, baseType: !4813, size: 64, offset: 4608)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !217, line: 124, size: 1216, elements: !4815)
!4815 = !{!4816, !4817, !4818, !4823, !4827, !4831, !4832, !4833}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4814, file: !217, line: 125, baseType: !4281, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4814, file: !217, line: 126, baseType: !184, size: 128, offset: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4814, file: !217, line: 127, baseType: !4819, size: 64, offset: 192)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!249, !204, !4822}
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4814, file: !217, line: 128, baseType: !4824, size: 64, offset: 256)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!109, !215, !4281}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4814, file: !217, line: 129, baseType: !4828, size: 64, offset: 320)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{null, !215}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4814, file: !217, line: 130, baseType: !4209, size: 64, offset: 384)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4814, file: !217, line: 131, baseType: !4209, size: 64, offset: 448)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4814, file: !217, line: 132, baseType: !4834, size: 704, offset: 512)
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !217, line: 110, size: 704, elements: !4835)
!4835 = !{!4836, !4837, !4841, !4842, !4843}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4834, file: !217, line: 111, baseType: !264, size: 512)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !4834, file: !217, line: 112, baseType: !4838, size: 64, offset: 512)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!109, !215}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !4834, file: !217, line: 113, baseType: !4828, size: 64, offset: 576)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4834, file: !217, line: 114, baseType: !249, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !4834, file: !217, line: 115, baseType: !249, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !216, file: !217, line: 383, baseType: !4845, size: 64, offset: 4672)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !217, line: 140, size: 256, elements: !4847)
!4847 = !{!4848, !4849, !4853, !4857}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4846, file: !217, line: 141, baseType: !215, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4846, file: !217, line: 142, baseType: !4850, size: 64, offset: 64)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!109, !215, !220}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4846, file: !217, line: 143, baseType: !4854, size: 64, offset: 128)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{null, !215, !220}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4846, file: !217, line: 144, baseType: !4828, size: 64, offset: 192)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !216, file: !217, line: 384, baseType: !4859, size: 64, offset: 4736)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4861)
!4861 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !217, line: 364, flags: DIFlagFwdDecl)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !216, file: !217, line: 385, baseType: !176, size: 64, offset: 4800)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !216, file: !217, line: 386, baseType: !261, size: 5824, offset: 4864)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !216, file: !217, line: 387, baseType: !7, size: 32, offset: 10688)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !216, file: !217, line: 388, baseType: !7, size: 32, offset: 10720)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !216, file: !217, line: 389, baseType: !184, size: 128, offset: 10752)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !216, file: !217, line: 390, baseType: !680, size: 256, offset: 10880)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !216, file: !217, line: 391, baseType: !4828, size: 64, offset: 11136)
!4869 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !225, line: 421, baseType: !220)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !187)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4874, line: 322, size: 16640, elements: !4875)
!4874 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!4875 = !{!4876, !4877, !4934, !4935, !4936, !4937, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !5043, !5044, !5045, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5122, !5123, !5124, !5126, !5127, !5129, !5130, !5131, !5132, !5138, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4873, file: !4874, line: 323, baseType: !184, size: 128)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4873, file: !4874, line: 324, baseType: !4878, size: 64, offset: 128)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4874, line: 647, size: 8256, elements: !4880)
!4880 = !{!4881, !4882, !4883, !4884, !4885, !4886, !4887, !4889, !4890, !4891, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4925, !4926, !4928, !4929, !4930, !4931, !4932, !4933}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4879, file: !4874, line: 648, baseType: !184, size: 128)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4879, file: !4874, line: 649, baseType: !4878, size: 64, offset: 128)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4879, file: !4874, line: 650, baseType: !184, size: 128, offset: 192)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4879, file: !4874, line: 651, baseType: !184, size: 128, offset: 320)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4879, file: !4874, line: 652, baseType: !4872, size: 64, offset: 448)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4879, file: !4874, line: 653, baseType: !184, size: 128, offset: 512)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4879, file: !4874, line: 655, baseType: !4888, size: 256, offset: 640)
!4888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 256, elements: !908)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4879, file: !4874, line: 656, baseType: !184, size: 128, offset: 896)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4879, file: !4874, line: 657, baseType: !191, size: 512, offset: 1024)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4879, file: !4874, line: 659, baseType: !4892, size: 64, offset: 1536)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4874, line: 773, size: 320, elements: !4894)
!4894 = !{!4895, !4899, !4903, !4907, !4911}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4893, file: !4874, line: 774, baseType: !4896, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!109, !4878}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4893, file: !4874, line: 775, baseType: !4900, size: 64, offset: 64)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{null, !4878}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4893, file: !4874, line: 776, baseType: !4904, size: 64, offset: 128)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!176, !4878, !7, !109}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4893, file: !4874, line: 777, baseType: !4908, size: 64, offset: 192)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!109, !4878, !7, !109, !109, !2657}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4893, file: !4874, line: 778, baseType: !4912, size: 64, offset: 256)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!109, !4878, !7, !109, !109, !220}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4879, file: !4874, line: 660, baseType: !176, size: 64, offset: 1600)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4879, file: !4874, line: 661, baseType: !4801, size: 64, offset: 1664)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4879, file: !4874, line: 663, baseType: !307, size: 8, offset: 1728)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4879, file: !4874, line: 664, baseType: !307, size: 8, offset: 1736)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4879, file: !4874, line: 665, baseType: !307, size: 8, offset: 1744)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4879, file: !4874, line: 666, baseType: !307, size: 8, offset: 1752)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4879, file: !4874, line: 671, baseType: !4922, size: 384, offset: 1760)
!4922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 384, elements: !4923)
!4923 = !{!4924}
!4924 = !DISubrange(count: 48)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4879, file: !4874, line: 673, baseType: !315, size: 16, offset: 2144)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4879, file: !4874, line: 674, baseType: !4927, size: 16, offset: 2160)
!4927 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4874, line: 255, baseType: !315)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4879, file: !4874, line: 675, baseType: !4187, size: 64, offset: 2176)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4879, file: !4874, line: 676, baseType: !261, size: 5824, offset: 2240)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4879, file: !4874, line: 677, baseType: !410, size: 64, offset: 8064)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4879, file: !4874, line: 678, baseType: !410, size: 64, offset: 8128)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4879, file: !4874, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !4879, file: !4874, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4873, file: !4874, line: 325, baseType: !4878, size: 64, offset: 192)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4873, file: !4874, line: 327, baseType: !176, size: 64, offset: 256)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4873, file: !4874, line: 328, baseType: !4801, size: 64, offset: 320)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4873, file: !4874, line: 329, baseType: !4938, size: 64, offset: 384)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4874, line: 76, size: 832, elements: !4940)
!4940 = !{!4941, !4942, !4943, !4946, !4947}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4939, file: !4874, line: 77, baseType: !4878, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4939, file: !4874, line: 78, baseType: !184, size: 128, offset: 64)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4939, file: !4874, line: 79, baseType: !4944, size: 64, offset: 192)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4874, line: 79, flags: DIFlagFwdDecl)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4939, file: !4874, line: 80, baseType: !307, size: 8, offset: 256)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4939, file: !4874, line: 81, baseType: !264, size: 512, offset: 320)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4873, file: !4874, line: 331, baseType: !7, size: 32, offset: 448)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4873, file: !4874, line: 332, baseType: !315, size: 16, offset: 480)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4873, file: !4874, line: 333, baseType: !315, size: 16, offset: 496)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4873, file: !4874, line: 334, baseType: !315, size: 16, offset: 512)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4873, file: !4874, line: 335, baseType: !315, size: 16, offset: 528)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4873, file: !4874, line: 336, baseType: !7, size: 32, offset: 544)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4873, file: !4874, line: 337, baseType: !305, size: 8, offset: 576)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4873, file: !4874, line: 338, baseType: !305, size: 8, offset: 584)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !4873, file: !4874, line: 344, baseType: !4957, size: 64, offset: 640)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4874, line: 319, flags: DIFlagFwdDecl)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !4873, file: !4874, line: 345, baseType: !4872, size: 64, offset: 704)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !4873, file: !4874, line: 347, baseType: !220, size: 32, offset: 768)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4873, file: !4874, line: 348, baseType: !305, size: 8, offset: 800)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4873, file: !4874, line: 349, baseType: !305, size: 8, offset: 808)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4873, file: !4874, line: 350, baseType: !305, size: 8, offset: 816)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4873, file: !4874, line: 351, baseType: !305, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4873, file: !4874, line: 352, baseType: !305, size: 8, offset: 832)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4873, file: !4874, line: 353, baseType: !305, size: 8, offset: 840)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4873, file: !4874, line: 354, baseType: !313, size: 16, offset: 848)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4873, file: !4874, line: 355, baseType: !1029, size: 64, offset: 896)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4873, file: !4874, line: 357, baseType: !4970, size: 64, offset: 960)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4874, line: 918, size: 2368, elements: !4972)
!4972 = !{!4973, !4974, !4975, !4988, !4992, !4996, !5000, !5004, !5005, !5009, !5010, !5014, !5034, !5035, !5036, !5037, !5042}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4971, file: !4874, line: 919, baseType: !184, size: 128)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4971, file: !4874, line: 920, baseType: !204, size: 64, offset: 128)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4971, file: !4874, line: 921, baseType: !4976, size: 64, offset: 192)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4978)
!4978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4271, line: 44, size: 320, elements: !4979)
!4979 = !{!4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4978, file: !4271, line: 45, baseType: !221, size: 32)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4978, file: !4271, line: 45, baseType: !221, size: 32, offset: 32)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4978, file: !4271, line: 46, baseType: !221, size: 32, offset: 64)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4978, file: !4271, line: 46, baseType: !221, size: 32, offset: 96)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4978, file: !4271, line: 47, baseType: !221, size: 32, offset: 128)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4978, file: !4271, line: 47, baseType: !221, size: 32, offset: 160)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4978, file: !4271, line: 48, baseType: !4287, size: 64, offset: 192)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4978, file: !4271, line: 49, baseType: !221, size: 32, offset: 256)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4971, file: !4874, line: 922, baseType: !4989, size: 64, offset: 256)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{!109, !4872, !4976}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4971, file: !4874, line: 923, baseType: !4993, size: 64, offset: 320)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{null, !4872}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4971, file: !4874, line: 924, baseType: !4997, size: 64, offset: 384)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!109, !4872, !4298}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4971, file: !4874, line: 925, baseType: !5001, size: 64, offset: 448)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!109, !4872}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4971, file: !4874, line: 926, baseType: !4993, size: 64, offset: 512)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4971, file: !4874, line: 927, baseType: !5006, size: 64, offset: 576)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!109, !4872, !109}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4971, file: !4874, line: 928, baseType: !5006, size: 64, offset: 640)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4971, file: !4874, line: 929, baseType: !5011, size: 64, offset: 704)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!220, !4872}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4971, file: !4874, line: 930, baseType: !5015, size: 64, offset: 768)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5017)
!5017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4874, line: 837, size: 448, elements: !5018)
!5018 = !{!5019, !5025, !5029, !5030, !5031, !5032, !5033}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !5017, file: !4874, line: 839, baseType: !5020, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!5023, !4872, !5024}
!5023 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4874, line: 814, baseType: !7)
!5024 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4874, line: 196, baseType: !7)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !5017, file: !4874, line: 843, baseType: !5026, size: 64, offset: 64)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!5023, !4872}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !5017, file: !4874, line: 846, baseType: !5026, size: 64, offset: 128)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !5017, file: !4874, line: 849, baseType: !4993, size: 64, offset: 192)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !5017, file: !4874, line: 850, baseType: !4993, size: 64, offset: 256)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5017, file: !4874, line: 853, baseType: !4993, size: 64, offset: 320)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !5017, file: !4874, line: 856, baseType: !4993, size: 64, offset: 384)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4971, file: !4874, line: 931, baseType: !396, size: 64, offset: 832)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4971, file: !4874, line: 932, baseType: !396, size: 64, offset: 896)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4971, file: !4874, line: 933, baseType: !4259, size: 1152, offset: 960)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4971, file: !4874, line: 934, baseType: !5038, size: 192, offset: 2112)
!5038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4874, line: 801, size: 192, elements: !5039)
!5039 = !{!5040, !5041}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5038, file: !4874, line: 802, baseType: !277, size: 32)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5038, file: !4874, line: 803, baseType: !184, size: 128, offset: 64)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4971, file: !4874, line: 935, baseType: !249, size: 8, offset: 2304)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4873, file: !4874, line: 358, baseType: !197, size: 64, offset: 1024)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4873, file: !4874, line: 364, baseType: !4468, size: 128, offset: 1088)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4873, file: !4874, line: 366, baseType: !5046, size: 32, offset: 1216)
!5046 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4874, line: 171, baseType: !109)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4873, file: !4874, line: 369, baseType: !305, size: 8, offset: 1248)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4873, file: !4874, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4873, file: !4874, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4873, file: !4874, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4873, file: !4874, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4873, file: !4874, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4873, file: !4874, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4873, file: !4874, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4873, file: !4874, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4873, file: !4874, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4873, file: !4874, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4873, file: !4874, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4873, file: !4874, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4873, file: !4874, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4873, file: !4874, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4873, file: !4874, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4873, file: !4874, line: 390, baseType: !7, size: 32, offset: 1280)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4873, file: !4874, line: 391, baseType: !7, size: 32, offset: 1312)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4873, file: !4874, line: 394, baseType: !5066, size: 64, offset: 1344)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4874, line: 316, flags: DIFlagFwdDecl)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4873, file: !4874, line: 395, baseType: !313, size: 16, offset: 1408)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4873, file: !4874, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !4873, file: !4874, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4873, file: !4874, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4873, file: !4874, line: 402, baseType: !5024, size: 32, offset: 1440)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4873, file: !4874, line: 403, baseType: !261, size: 5824, offset: 1472)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4873, file: !4874, line: 405, baseType: !109, size: 32, offset: 7296)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4873, file: !4874, line: 411, baseType: !7, size: 32, offset: 7328)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4873, file: !4874, line: 412, baseType: !5077, size: 5632, offset: 7360)
!5077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 5632, elements: !5078)
!5078 = !{!5079}
!5079 = !DISubrange(count: 11)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !4873, file: !4874, line: 413, baseType: !191, size: 512, offset: 12992)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4873, file: !4874, line: 415, baseType: !249, size: 8, offset: 13504)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4873, file: !4874, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4873, file: !4874, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4873, file: !4874, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4873, file: !4874, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4873, file: !4874, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4873, file: !4874, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4873, file: !4874, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4873, file: !4874, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4873, file: !4874, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4873, file: !4874, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4873, file: !4874, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4873, file: !4874, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4873, file: !4874, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4873, file: !4874, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4873, file: !4874, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4873, file: !4874, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4873, file: !4874, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4873, file: !4874, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !4873, file: !4874, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4873, file: !4874, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4873, file: !4874, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4873, file: !4874, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4873, file: !4874, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4873, file: !4874, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4873, file: !4874, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4873, file: !4874, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4873, file: !4874, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4873, file: !4874, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4873, file: !4874, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4873, file: !4874, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4873, file: !4874, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4873, file: !4874, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4873, file: !4874, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4873, file: !4874, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4873, file: !4874, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4873, file: !4874, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !4873, file: !4874, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4873, file: !4874, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4873, file: !4874, line: 468, baseType: !5121, size: 16, offset: 13552)
!5121 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4874, line: 222, baseType: !315)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4873, file: !4874, line: 469, baseType: !297, size: 32, offset: 13568)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !4873, file: !4874, line: 471, baseType: !277, size: 32, offset: 13600)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4873, file: !4874, line: 472, baseType: !5125, size: 512, offset: 13632)
!5125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 512, elements: !2758)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4873, file: !4874, line: 473, baseType: !1048, size: 64, offset: 14144)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4873, file: !4874, line: 474, baseType: !5128, size: 704, offset: 14208)
!5128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 704, elements: !5078)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4873, file: !4874, line: 475, baseType: !5128, size: 704, offset: 14912)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !4873, file: !4874, line: 487, baseType: !176, size: 64, offset: 15616)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !4873, file: !4874, line: 488, baseType: !638, size: 32, offset: 15680)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4873, file: !4874, line: 490, baseType: !5133, size: 320, offset: 15744)
!5133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4874, line: 309, size: 320, elements: !5134)
!5134 = !{!5135, !5136, !5137}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5133, file: !4874, line: 310, baseType: !680, size: 256)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5133, file: !4874, line: 311, baseType: !7, size: 32, offset: 256)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !5133, file: !4874, line: 312, baseType: !305, size: 8, offset: 288)
!5138 = !DIDerivedType(tag: DW_TAG_member, scope: !4873, file: !4874, line: 497, baseType: !5139, size: 64, offset: 16064)
!5139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4873, file: !4874, line: 497, size: 64, elements: !5140)
!5140 = !{!5141, !5144}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !5139, file: !4874, line: 498, baseType: !5142, size: 64)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4874, line: 317, flags: DIFlagFwdDecl)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !5139, file: !4874, line: 499, baseType: !4872, size: 64)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4873, file: !4874, line: 501, baseType: !313, size: 16, offset: 16128)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4873, file: !4874, line: 502, baseType: !305, size: 8, offset: 16144)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !4873, file: !4874, line: 505, baseType: !313, size: 16, offset: 16160)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !4873, file: !4874, line: 506, baseType: !220, size: 32, offset: 16192)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !4873, file: !4874, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !4873, file: !4874, line: 510, baseType: !313, size: 16, offset: 16240)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !4873, file: !4874, line: 511, baseType: !313, size: 16, offset: 16256)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4873, file: !4874, line: 519, baseType: !313, size: 16, offset: 16272)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4873, file: !4874, line: 520, baseType: !196, size: 64, offset: 16320)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4873, file: !4874, line: 521, baseType: !392, size: 64, offset: 16384)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4873, file: !4874, line: 526, baseType: !204, size: 64, offset: 16448)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4873, file: !4874, line: 528, baseType: !208, size: 64, offset: 16512)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !4873, file: !4874, line: 531, baseType: !5158, size: 56, offset: 16576)
!5158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 56, elements: !799)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !5161, line: 23, size: 6464, elements: !5162)
!5161 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1dac52bf003d860ac3c23951fd976693")
!5162 = !{!5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5178, !5179, !5182}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5160, file: !5161, line: 24, baseType: !204, size: 64)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5160, file: !5161, line: 25, baseType: !109, size: 32, offset: 64)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !5160, file: !5161, line: 26, baseType: !249, size: 8, offset: 96)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5160, file: !5161, line: 27, baseType: !261, size: 5824, offset: 128)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !5160, file: !5161, line: 28, baseType: !197, size: 64, offset: 5952)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !5160, file: !5161, line: 29, baseType: !4468, size: 128, offset: 6016)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !5160, file: !5161, line: 30, baseType: !220, size: 32, offset: 6144)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !5160, file: !5161, line: 31, baseType: !190, size: 64, offset: 6208)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !5160, file: !5161, line: 33, baseType: !5172, size: 64, offset: 6272)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5173, size: 64)
!5173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5174)
!5174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !4271, line: 607, size: 256, elements: !5175)
!5175 = !{!5176, !5177}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5174, file: !4271, line: 608, baseType: !4671, size: 160)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5174, file: !4271, line: 609, baseType: !4287, size: 64, offset: 192)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !5160, file: !5161, line: 38, baseType: !204, size: 64, offset: 6336)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !5160, file: !5161, line: 41, baseType: !5180, size: 64, offset: 6400)
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5181, size: 64)
!5181 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !5161, line: 19, flags: DIFlagFwdDecl)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !5160, file: !5161, line: 44, baseType: !5183, offset: 6464)
!5183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !4479, line: 8, elements: !967)
!5184 = !{!5185, !5188, !5193, !0, !5195, !5200}
!5185 = !DIGlobalVariableExpression(var: !5186, expr: !DIExpression())
!5186 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !5187, isLocal: true, isDefinition: true)
!5187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 40, elements: !4749)
!5188 = !DIGlobalVariableExpression(var: !5189, expr: !DIExpression())
!5189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 179, type: !5190, isLocal: true, isDefinition: true)
!5190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 304, elements: !5191)
!5191 = !{!5192}
!5192 = !DISubrange(count: 38)
!5193 = !DIGlobalVariableExpression(var: !5194, expr: !DIExpression())
!5194 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_create_platform_device292", scope: !2, file: !3, line: 191, type: !176, isLocal: true, isDefinition: true)
!5195 = !DIGlobalVariableExpression(var: !5196, expr: !DIExpression())
!5196 = distinct !DIGlobalVariable(scope: null, file: !161, line: 480, type: !5197, isLocal: true, isDefinition: true)
!5197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 168, elements: !5198)
!5198 = !{!5199}
!5199 = !DISubrange(count: 21)
!5200 = !DIGlobalVariableExpression(var: !5201, expr: !DIExpression())
!5201 = distinct !DIGlobalVariable(name: "acpi_platform_notifier", scope: !2, file: !3, line: 70, type: !5202, isLocal: true, isDefinition: true)
!5202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5203, line: 54, size: 192, elements: !5204)
!5203 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!5204 = !{!5205, !5211, !5212}
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5202, file: !5203, line: 55, baseType: !5206, size: 64)
!5206 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5203, line: 51, baseType: !5207)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!109, !5210, !208, !176}
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5202, file: !5203, line: 56, baseType: !5210, size: 64, offset: 64)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5202, file: !5203, line: 57, baseType: !109, size: 32, offset: 128)
!5213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4282, size: 1792, elements: !799)
!5214 = !{i32 7, !"Dwarf Version", i32 5}
!5215 = !{i32 2, !"Debug Info Version", i32 3}
!5216 = !{i32 1, !"wchar_size", i32 2}
!5217 = !{i32 8, !"cf-protection-branch", i32 1}
!5218 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5219 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5220 = !{i32 1, !"Code Model", i32 2}
!5221 = !{i32 1, !"override-stack-alignment", i32 8}
!5222 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5223 = distinct !DISubprogram(name: "acpi_create_platform_device", scope: !3, file: !3, line: 110, type: !5224, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5251)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{!5159, !215, !5226}
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5228)
!5228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !117, line: 338, size: 256, elements: !5229)
!5229 = !{!5230, !5231, !5232, !5233, !5234}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5228, file: !117, line: 339, baseType: !204, size: 64)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5228, file: !117, line: 340, baseType: !392, size: 64, offset: 64)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !5228, file: !117, line: 341, baseType: !249, size: 8, offset: 128)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5228, file: !117, line: 342, baseType: !147, size: 32, offset: 160)
!5234 = !DIDerivedType(tag: DW_TAG_member, scope: !5228, file: !117, line: 343, baseType: !5235, size: 64, offset: 192)
!5235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5228, file: !117, line: 343, size: 64, elements: !5236)
!5236 = !{!5237, !5238}
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5235, file: !117, line: 344, baseType: !257, size: 64)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5235, file: !117, line: 351, baseType: !5239, size: 64)
!5239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5235, file: !117, line: 345, size: 64, elements: !5240)
!5240 = !{!5241, !5243, !5245, !5247, !5249}
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !5239, file: !117, line: 346, baseType: !5242, size: 64)
!5242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 64, elements: !1609)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !5239, file: !117, line: 347, baseType: !5244, size: 64)
!5244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 64, elements: !908)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !5239, file: !117, line: 348, baseType: !5246, size: 64)
!5246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 64, elements: !797)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !5239, file: !117, line: 349, baseType: !5248, size: 64)
!5248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 64, elements: !1694)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5239, file: !117, line: 350, baseType: !5250, size: 64)
!5250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 64, elements: !1694)
!5251 = !{!5252, !5253, !5254, !5255, !5256, !5272, !5273, !5274, !5275, !5276, !5277, !5282, !5287}
!5252 = !DILocalVariable(name: "adev", arg: 1, scope: !5223, file: !3, line: 110, type: !215)
!5253 = !DILocalVariable(name: "properties", arg: 2, scope: !5223, file: !3, line: 111, type: !5226)
!5254 = !DILocalVariable(name: "parent", scope: !5223, file: !3, line: 113, type: !215)
!5255 = !DILocalVariable(name: "pdev", scope: !5223, file: !3, line: 114, type: !5159)
!5256 = !DILocalVariable(name: "pdevinfo", scope: !5223, file: !3, line: 115, type: !5257)
!5257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_info", file: !5161, line: 119, size: 704, elements: !5258)
!5258 = !{!5259, !5260, !5261, !5262, !5263, !5264, !5267, !5268, !5269, !5270, !5271}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5257, file: !5161, line: 120, baseType: !4187, size: 64)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5257, file: !5161, line: 121, baseType: !231, size: 64, offset: 64)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !5257, file: !5161, line: 122, baseType: !249, size: 8, offset: 128)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5257, file: !5161, line: 124, baseType: !204, size: 64, offset: 192)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5257, file: !5161, line: 125, baseType: !109, size: 32, offset: 256)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !5257, file: !5161, line: 127, baseType: !5265, size: 64, offset: 320)
!5265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5266, size: 64)
!5266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "num_res", scope: !5257, file: !5161, line: 128, baseType: !7, size: 32, offset: 384)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5257, file: !5161, line: 130, baseType: !257, size: 64, offset: 448)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "size_data", scope: !5257, file: !5161, line: 131, baseType: !392, size: 64, offset: 512)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !5257, file: !5161, line: 132, baseType: !197, size: 64, offset: 576)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5257, file: !5161, line: 134, baseType: !5226, size: 64, offset: 640)
!5272 = !DILocalVariable(name: "match", scope: !5223, file: !3, line: 116, type: !4281)
!5273 = !DILocalVariable(name: "rentry", scope: !5223, file: !3, line: 117, type: !179)
!5274 = !DILocalVariable(name: "resource_list", scope: !5223, file: !3, line: 118, type: !184)
!5275 = !DILocalVariable(name: "resources", scope: !5223, file: !3, line: 119, type: !190)
!5276 = !DILocalVariable(name: "count", scope: !5223, file: !3, line: 120, type: !109)
!5277 = !DILocalVariable(name: "has_resources", scope: !5278, file: !3, line: 129, type: !249)
!5278 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 128, column: 53)
!5279 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 128, column: 7)
!5280 = distinct !DILexicalBlock(scope: !5281, file: !3, line: 127, column: 13)
!5281 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 127, column: 6)
!5282 = !DILocalVariable(name: "__mptr", scope: !5283, file: !3, line: 151, type: !176)
!5283 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 151, column: 3)
!5284 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 151, column: 3)
!5285 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 144, column: 17)
!5286 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 144, column: 6)
!5287 = !DILocalVariable(name: "__mptr", scope: !5288, file: !3, line: 151, type: !176)
!5288 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 151, column: 3)
!5289 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 151, column: 3)
!5290 = !DILocation(line: 110, column: 73, scope: !5223)
!5291 = !DILocation(line: 111, column: 40, scope: !5223)
!5292 = !DILocation(line: 113, column: 2, scope: !5223)
!5293 = !DILocation(line: 113, column: 22, scope: !5223)
!5294 = !DILocation(line: 113, column: 47, scope: !5223)
!5295 = !DILocation(line: 113, column: 31, scope: !5223)
!5296 = !DILocation(line: 114, column: 2, scope: !5223)
!5297 = !DILocation(line: 114, column: 26, scope: !5223)
!5298 = !DILocation(line: 115, column: 2, scope: !5223)
!5299 = !DILocation(line: 115, column: 30, scope: !5223)
!5300 = !DILocation(line: 116, column: 2, scope: !5223)
!5301 = !DILocation(line: 116, column: 31, scope: !5223)
!5302 = !DILocation(line: 117, column: 2, scope: !5223)
!5303 = !DILocation(line: 117, column: 25, scope: !5223)
!5304 = !DILocation(line: 118, column: 2, scope: !5223)
!5305 = !DILocation(line: 118, column: 19, scope: !5223)
!5306 = !DILocation(line: 119, column: 2, scope: !5223)
!5307 = !DILocation(line: 119, column: 19, scope: !5223)
!5308 = !DILocation(line: 120, column: 2, scope: !5223)
!5309 = !DILocation(line: 120, column: 6, scope: !5223)
!5310 = !DILocation(line: 123, column: 6, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 123, column: 6)
!5312 = !DILocation(line: 123, column: 12, scope: !5311)
!5313 = !DILocation(line: 123, column: 6, scope: !5223)
!5314 = !DILocation(line: 124, column: 3, scope: !5311)
!5315 = !DILocation(line: 126, column: 52, scope: !5223)
!5316 = !DILocation(line: 126, column: 10, scope: !5223)
!5317 = !DILocation(line: 126, column: 8, scope: !5223)
!5318 = !DILocation(line: 127, column: 6, scope: !5281)
!5319 = !DILocation(line: 127, column: 6, scope: !5223)
!5320 = !DILocation(line: 128, column: 7, scope: !5279)
!5321 = !DILocation(line: 128, column: 14, scope: !5279)
!5322 = !DILocation(line: 128, column: 26, scope: !5279)
!5323 = !DILocation(line: 128, column: 7, scope: !5280)
!5324 = !DILocation(line: 129, column: 4, scope: !5278)
!5325 = !DILocation(line: 129, column: 9, scope: !5278)
!5326 = !DILocation(line: 131, column: 24, scope: !5278)
!5327 = !DILocation(line: 131, column: 30, scope: !5278)
!5328 = !DILocation(line: 131, column: 4, scope: !5278)
!5329 = !DILocation(line: 133, column: 8, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 133, column: 8)
!5331 = !{i8 0, i8 2}
!5332 = !DILocation(line: 133, column: 8, scope: !5278)
!5333 = !DILocation(line: 134, column: 12, scope: !5330)
!5334 = !DILocation(line: 134, column: 5, scope: !5330)
!5335 = !DILocation(line: 135, column: 3, scope: !5279)
!5336 = !DILocation(line: 135, column: 3, scope: !5278)
!5337 = !DILocation(line: 136, column: 11, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 135, column: 10)
!5339 = !DILocation(line: 136, column: 4, scope: !5338)
!5340 = !DILocation(line: 138, column: 2, scope: !5280)
!5341 = !DILocation(line: 140, column: 2, scope: !5223)
!5342 = !DILocation(line: 141, column: 33, scope: !5223)
!5343 = !DILocation(line: 141, column: 10, scope: !5223)
!5344 = !DILocation(line: 141, column: 8, scope: !5223)
!5345 = !DILocation(line: 142, column: 6, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 142, column: 6)
!5347 = !DILocation(line: 142, column: 12, scope: !5346)
!5348 = !DILocation(line: 142, column: 6, scope: !5223)
!5349 = !DILocation(line: 143, column: 3, scope: !5346)
!5350 = !DILocation(line: 144, column: 6, scope: !5286)
!5351 = !DILocation(line: 144, column: 12, scope: !5286)
!5352 = !DILocation(line: 144, column: 6, scope: !5223)
!5353 = !DILocation(line: 145, column: 23, scope: !5285)
!5354 = !DILocation(line: 145, column: 15, scope: !5285)
!5355 = !DILocation(line: 145, column: 13, scope: !5285)
!5356 = !DILocation(line: 146, column: 8, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 146, column: 7)
!5358 = !DILocation(line: 146, column: 7, scope: !5285)
!5359 = !DILocation(line: 147, column: 4, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 146, column: 19)
!5361 = !DILocation(line: 148, column: 11, scope: !5360)
!5362 = !DILocation(line: 148, column: 4, scope: !5360)
!5363 = !DILocation(line: 150, column: 9, scope: !5285)
!5364 = !DILocation(line: 151, column: 3, scope: !5283)
!5365 = !DILocation(line: 151, column: 3, scope: !5284)
!5366 = !DILocation(line: 151, column: 3, scope: !5289)
!5367 = !DILocation(line: 152, column: 32, scope: !5289)
!5368 = !DILocation(line: 152, column: 38, scope: !5289)
!5369 = !DILocation(line: 152, column: 46, scope: !5289)
!5370 = !DILocation(line: 153, column: 12, scope: !5289)
!5371 = !DILocation(line: 153, column: 27, scope: !5289)
!5372 = !DILocation(line: 152, column: 4, scope: !5289)
!5373 = !DILocation(line: 151, column: 3, scope: !5288)
!5374 = distinct !{!5374, !5365, !5375, !5376, !5377}
!5375 = !DILocation(line: 153, column: 30, scope: !5284)
!5376 = !{!"llvm.loop.mustprogress"}
!5377 = !{!"llvm.loop.unroll.disable"}
!5378 = !DILocation(line: 155, column: 3, scope: !5285)
!5379 = !DILocation(line: 156, column: 2, scope: !5285)
!5380 = !DILocation(line: 158, column: 2, scope: !5223)
!5381 = !DILocation(line: 164, column: 20, scope: !5223)
!5382 = !DILocation(line: 164, column: 58, scope: !5223)
!5383 = !DILocation(line: 164, column: 29, scope: !5223)
!5384 = !DILocation(line: 164, column: 11, scope: !5223)
!5385 = !DILocation(line: 164, column: 18, scope: !5223)
!5386 = !DILocation(line: 165, column: 28, scope: !5223)
!5387 = !DILocation(line: 165, column: 34, scope: !5223)
!5388 = !DILocation(line: 165, column: 18, scope: !5223)
!5389 = !DILocation(line: 165, column: 11, scope: !5223)
!5390 = !DILocation(line: 165, column: 16, scope: !5223)
!5391 = !DILocation(line: 166, column: 11, scope: !5223)
!5392 = !DILocation(line: 166, column: 14, scope: !5223)
!5393 = !DILocation(line: 167, column: 17, scope: !5223)
!5394 = !DILocation(line: 167, column: 11, scope: !5223)
!5395 = !DILocation(line: 167, column: 15, scope: !5223)
!5396 = !DILocation(line: 168, column: 21, scope: !5223)
!5397 = !DILocation(line: 168, column: 11, scope: !5223)
!5398 = !DILocation(line: 168, column: 19, scope: !5223)
!5399 = !DILocation(line: 169, column: 39, scope: !5223)
!5400 = !DILocation(line: 169, column: 20, scope: !5223)
!5401 = !DILocation(line: 169, column: 11, scope: !5223)
!5402 = !DILocation(line: 169, column: 18, scope: !5223)
!5403 = !DILocation(line: 170, column: 24, scope: !5223)
!5404 = !DILocation(line: 170, column: 11, scope: !5223)
!5405 = !DILocation(line: 170, column: 22, scope: !5223)
!5406 = !DILocation(line: 172, column: 25, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 172, column: 6)
!5408 = !DILocation(line: 172, column: 6, scope: !5407)
!5409 = !DILocation(line: 172, column: 6, scope: !5223)
!5410 = !DILocation(line: 173, column: 12, scope: !5407)
!5411 = !DILocation(line: 173, column: 21, scope: !5407)
!5412 = !DILocation(line: 173, column: 3, scope: !5407)
!5413 = !DILocation(line: 175, column: 12, scope: !5407)
!5414 = !DILocation(line: 175, column: 21, scope: !5407)
!5415 = !DILocation(line: 177, column: 9, scope: !5223)
!5416 = !DILocation(line: 177, column: 7, scope: !5223)
!5417 = !DILocation(line: 178, column: 13, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 178, column: 6)
!5419 = !DILocation(line: 178, column: 6, scope: !5418)
!5420 = !DILocation(line: 178, column: 6, scope: !5223)
!5421 = !DILocation(line: 179, column: 3, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 179, column: 3)
!5423 = !DILocation(line: 179, column: 3, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 179, column: 3)
!5425 = !DILocation(line: 179, column: 3, scope: !5418)
!5426 = !DILocation(line: 182, column: 17, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 181, column: 7)
!5428 = !DILocation(line: 182, column: 23, scope: !5427)
!5429 = !DILocation(line: 182, column: 42, scope: !5427)
!5430 = !DILocation(line: 182, column: 48, scope: !5427)
!5431 = !DILocation(line: 182, column: 28, scope: !5427)
!5432 = !DILocation(line: 182, column: 3, scope: !5427)
!5433 = !DILocation(line: 187, column: 8, scope: !5223)
!5434 = !DILocation(line: 187, column: 2, scope: !5223)
!5435 = !DILocation(line: 189, column: 9, scope: !5223)
!5436 = !DILocation(line: 189, column: 2, scope: !5223)
!5437 = !DILocation(line: 190, column: 1, scope: !5223)
!5438 = distinct !DISubprogram(name: "acpi_dev_parent", scope: !217, file: !217, line: 464, type: !5439, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5441)
!5439 = !DISubroutineType(types: !5440)
!5440 = !{!215, !215}
!5441 = !{!5442, !5443}
!5442 = !DILocalVariable(name: "adev", arg: 1, scope: !5438, file: !217, line: 464, type: !215)
!5443 = !DILocalVariable(name: "__mptr", scope: !5444, file: !217, line: 467, type: !176)
!5444 = distinct !DILexicalBlock(scope: !5445, file: !217, line: 467, column: 10)
!5445 = distinct !DILexicalBlock(scope: !5438, file: !217, line: 466, column: 6)
!5446 = !DILocation(line: 464, column: 71, scope: !5438)
!5447 = !DILocation(line: 466, column: 6, scope: !5445)
!5448 = !DILocation(line: 466, column: 12, scope: !5445)
!5449 = !DILocation(line: 466, column: 16, scope: !5445)
!5450 = !DILocation(line: 466, column: 6, scope: !5438)
!5451 = !DILocation(line: 467, column: 10, scope: !5444)
!5452 = !DILocation(line: 467, column: 10, scope: !5445)
!5453 = !DILocation(line: 467, column: 3, scope: !5445)
!5454 = !DILocation(line: 469, column: 2, scope: !5438)
!5455 = !DILocation(line: 470, column: 1, scope: !5438)
!5456 = !DISubprogram(name: "acpi_match_acpi_device", scope: !171, file: !171, line: 708, type: !5457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5457 = !DISubroutineType(types: !5458)
!5458 = !{!4281, !4281, !5459}
!5459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5460, size: 64)
!5460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!5461 = !DISubprogram(name: "acpi_walk_resources", scope: !5462, file: !5462, line: 819, type: !5463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5462 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!4869, !224, !345, !5465, !176}
!5465 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_resource_callback", file: !5462, line: 791, baseType: !5466)
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5467, size: 64)
!5467 = !DISubroutineType(types: !5468)
!5468 = !{!4869, !5469, !176}
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5470, size: 64)
!5470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !5471, line: 678, size: 544, elements: !5472)
!5471 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e234732d1e15cdbb059f7f7ffd573c0")
!5472 = !{!5473, !5474, !5475}
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5470, file: !5471, line: 679, baseType: !220, size: 32)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5470, file: !5471, line: 680, baseType: !220, size: 32, offset: 32)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5470, file: !5471, line: 681, baseType: !5476, size: 480, offset: 64)
!5476 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !5471, line: 639, size: 480, elements: !5477)
!5477 = !{!5478, !5497, !5514, !5520, !5528, !5533, !5539, !5544, !5551, !5555, !5563, !5571, !5577, !5617, !5635, !5653, !5665, !5686, !5694, !5714, !5730, !5750, !5772, !5787, !5800, !5812, !5825, !5839, !5850, !5862, !5871}
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5476, file: !5471, line: 640, baseType: !5479, size: 56)
!5479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !5471, line: 138, size: 56, elements: !5480)
!5480 = !{!5481, !5482, !5483, !5484, !5485, !5486, !5487}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !5479, file: !5471, line: 139, baseType: !305, size: 8)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5479, file: !5471, line: 140, baseType: !305, size: 8, offset: 8)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5479, file: !5471, line: 141, baseType: !305, size: 8, offset: 16)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5479, file: !5471, line: 142, baseType: !305, size: 8, offset: 24)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5479, file: !5471, line: 143, baseType: !305, size: 8, offset: 32)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !5479, file: !5471, line: 144, baseType: !305, size: 8, offset: 40)
!5487 = !DIDerivedType(tag: DW_TAG_member, scope: !5479, file: !5471, line: 145, baseType: !5488, size: 8, offset: 48)
!5488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5479, file: !5471, line: 145, size: 8, elements: !5489)
!5489 = !{!5490, !5491}
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !5488, file: !5471, line: 146, baseType: !305, size: 8)
!5491 = !DIDerivedType(tag: DW_TAG_member, scope: !5488, file: !5471, line: 147, baseType: !5492)
!5492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5488, file: !5471, line: 147, elements: !5493)
!5493 = !{!5494, !5496}
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !5492, file: !5471, line: 147, baseType: !5495)
!5495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5492, file: !5471, line: 147, elements: !967)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5492, file: !5471, line: 147, baseType: !3508)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5476, file: !5471, line: 641, baseType: !5498, size: 40)
!5498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !5471, line: 151, size: 40, elements: !5499)
!5499 = !{!5500, !5501, !5502, !5503, !5504}
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5498, file: !5471, line: 152, baseType: !305, size: 8)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !5498, file: !5471, line: 153, baseType: !305, size: 8, offset: 8)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !5498, file: !5471, line: 154, baseType: !305, size: 8, offset: 16)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !5498, file: !5471, line: 155, baseType: !305, size: 8, offset: 24)
!5504 = !DIDerivedType(tag: DW_TAG_member, scope: !5498, file: !5471, line: 156, baseType: !5505, size: 8, offset: 32)
!5505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5498, file: !5471, line: 156, size: 8, elements: !5506)
!5506 = !{!5507, !5508}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !5505, file: !5471, line: 157, baseType: !305, size: 8)
!5508 = !DIDerivedType(tag: DW_TAG_member, scope: !5505, file: !5471, line: 158, baseType: !5509)
!5509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5505, file: !5471, line: 158, elements: !5510)
!5510 = !{!5511, !5513}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_channels", scope: !5509, file: !5471, line: 158, baseType: !5512)
!5512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5509, file: !5471, line: 158, elements: !967)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5509, file: !5471, line: 158, baseType: !3508)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !5476, file: !5471, line: 642, baseType: !5515, size: 24)
!5515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !5471, line: 162, size: 24, elements: !5516)
!5516 = !{!5517, !5518, !5519}
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !5515, file: !5471, line: 163, baseType: !305, size: 8)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !5515, file: !5471, line: 164, baseType: !305, size: 8, offset: 8)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !5515, file: !5471, line: 165, baseType: !305, size: 8, offset: 16)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !5476, file: !5471, line: 643, baseType: !5521, size: 56)
!5521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !5471, line: 173, size: 56, elements: !5522)
!5522 = !{!5523, !5524, !5525, !5526, !5527}
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !5521, file: !5471, line: 174, baseType: !305, size: 8)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5521, file: !5471, line: 175, baseType: !305, size: 8, offset: 8)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5521, file: !5471, line: 176, baseType: !305, size: 8, offset: 16)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5521, file: !5471, line: 177, baseType: !313, size: 16, offset: 24)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5521, file: !5471, line: 178, baseType: !313, size: 16, offset: 40)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !5476, file: !5471, line: 644, baseType: !5529, size: 24)
!5529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !5471, line: 181, size: 24, elements: !5530)
!5530 = !{!5531, !5532}
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5529, file: !5471, line: 182, baseType: !313, size: 16)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5529, file: !5471, line: 183, baseType: !305, size: 8, offset: 16)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !5476, file: !5471, line: 645, baseType: !5534, size: 40)
!5534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !5471, line: 186, size: 40, elements: !5535)
!5535 = !{!5536, !5537, !5538}
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !5534, file: !5471, line: 187, baseType: !313, size: 16)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5534, file: !5471, line: 188, baseType: !313, size: 16, offset: 16)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5534, file: !5471, line: 189, baseType: !305, size: 8, offset: 32)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5476, file: !5471, line: 646, baseType: !5540, size: 16)
!5540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !5471, line: 201, size: 16, elements: !5541)
!5541 = !{!5542, !5543}
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !5540, file: !5471, line: 202, baseType: !313, size: 16)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !5540, file: !5471, line: 203, baseType: !3508, offset: 16)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !5476, file: !5471, line: 647, baseType: !5545, size: 152)
!5545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !5471, line: 208, size: 152, elements: !5546)
!5546 = !{!5547, !5548, !5549, !5550}
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !5545, file: !5471, line: 209, baseType: !313, size: 16)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !5545, file: !5471, line: 210, baseType: !305, size: 8, offset: 16)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !5545, file: !5471, line: 211, baseType: !3228, size: 128, offset: 24)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !5545, file: !5471, line: 212, baseType: !3508, offset: 152)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !5476, file: !5471, line: 648, baseType: !5552, size: 8)
!5552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !5471, line: 215, size: 8, elements: !5553)
!5553 = !{!5554}
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !5552, file: !5471, line: 216, baseType: !305, size: 8)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !5476, file: !5471, line: 649, baseType: !5556, size: 72)
!5556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !5471, line: 219, size: 72, elements: !5557)
!5557 = !{!5558, !5559, !5560, !5561, !5562}
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5556, file: !5471, line: 220, baseType: !305, size: 8)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5556, file: !5471, line: 221, baseType: !313, size: 16, offset: 8)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5556, file: !5471, line: 222, baseType: !313, size: 16, offset: 24)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5556, file: !5471, line: 223, baseType: !313, size: 16, offset: 40)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5556, file: !5471, line: 224, baseType: !313, size: 16, offset: 56)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !5476, file: !5471, line: 650, baseType: !5564, size: 136)
!5564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !5471, line: 227, size: 136, elements: !5565)
!5565 = !{!5566, !5567, !5568, !5569, !5570}
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5564, file: !5471, line: 228, baseType: !305, size: 8)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5564, file: !5471, line: 229, baseType: !220, size: 32, offset: 8)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5564, file: !5471, line: 230, baseType: !220, size: 32, offset: 40)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5564, file: !5471, line: 231, baseType: !220, size: 32, offset: 72)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5564, file: !5471, line: 232, baseType: !220, size: 32, offset: 104)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !5476, file: !5471, line: 651, baseType: !5572, size: 72)
!5572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !5471, line: 235, size: 72, elements: !5573)
!5573 = !{!5574, !5575, !5576}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5572, file: !5471, line: 236, baseType: !305, size: 8)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5572, file: !5471, line: 237, baseType: !220, size: 32, offset: 8)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5572, file: !5471, line: 238, baseType: !220, size: 32, offset: 40)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !5476, file: !5471, line: 652, baseType: !5578, size: 240)
!5578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !5471, line: 312, size: 240, elements: !5579)
!5579 = !{!5580, !5581, !5582, !5583, !5584, !5585, !5603, !5611}
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5578, file: !5471, line: 313, baseType: !305, size: 8)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5578, file: !5471, line: 313, baseType: !305, size: 8, offset: 8)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5578, file: !5471, line: 313, baseType: !305, size: 8, offset: 16)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5578, file: !5471, line: 313, baseType: !305, size: 8, offset: 24)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5578, file: !5471, line: 313, baseType: !305, size: 8, offset: 32)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5578, file: !5471, line: 313, baseType: !5586, size: 32, offset: 40)
!5586 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !5471, line: 255, size: 32, elements: !5587)
!5587 = !{!5588, !5595, !5602}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !5586, file: !5471, line: 256, baseType: !5589, size: 32)
!5589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !5471, line: 241, size: 32, elements: !5590)
!5590 = !{!5591, !5592, !5593, !5594}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5589, file: !5471, line: 242, baseType: !305, size: 8)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5589, file: !5471, line: 243, baseType: !305, size: 8, offset: 8)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !5589, file: !5471, line: 244, baseType: !305, size: 8, offset: 16)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !5589, file: !5471, line: 245, baseType: !305, size: 8, offset: 24)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !5586, file: !5471, line: 257, baseType: !5596, size: 32)
!5596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !5471, line: 248, size: 32, elements: !5597)
!5597 = !{!5598, !5599, !5600, !5601}
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !5596, file: !5471, line: 249, baseType: !305, size: 8)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !5596, file: !5471, line: 250, baseType: !305, size: 8, offset: 8)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !5596, file: !5471, line: 251, baseType: !305, size: 8, offset: 16)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5596, file: !5471, line: 252, baseType: !305, size: 8, offset: 24)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !5586, file: !5471, line: 261, baseType: !305, size: 8)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5578, file: !5471, line: 313, baseType: !5604, size: 80, offset: 72)
!5604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !5471, line: 285, size: 80, elements: !5605)
!5605 = !{!5606, !5607, !5608, !5609, !5610}
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5604, file: !5471, line: 286, baseType: !313, size: 16)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5604, file: !5471, line: 287, baseType: !313, size: 16, offset: 16)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5604, file: !5471, line: 288, baseType: !313, size: 16, offset: 32)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5604, file: !5471, line: 289, baseType: !313, size: 16, offset: 48)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5604, file: !5471, line: 290, baseType: !313, size: 16, offset: 64)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5578, file: !5471, line: 314, baseType: !5612, size: 88, offset: 152)
!5612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !5471, line: 269, size: 88, elements: !5613)
!5613 = !{!5614, !5615, !5616}
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5612, file: !5471, line: 270, baseType: !305, size: 8)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !5612, file: !5471, line: 271, baseType: !313, size: 16, offset: 8)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !5612, file: !5471, line: 272, baseType: !345, size: 64, offset: 24)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !5476, file: !5471, line: 653, baseType: !5618, size: 320)
!5618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !5471, line: 317, size: 320, elements: !5619)
!5619 = !{!5620, !5621, !5622, !5623, !5624, !5625, !5626, !5634}
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5618, file: !5471, line: 318, baseType: !305, size: 8)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5618, file: !5471, line: 318, baseType: !305, size: 8, offset: 8)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5618, file: !5471, line: 318, baseType: !305, size: 8, offset: 16)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5618, file: !5471, line: 318, baseType: !305, size: 8, offset: 24)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5618, file: !5471, line: 318, baseType: !305, size: 8, offset: 32)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5618, file: !5471, line: 318, baseType: !5586, size: 32, offset: 40)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5618, file: !5471, line: 318, baseType: !5627, size: 160, offset: 72)
!5627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !5471, line: 293, size: 160, elements: !5628)
!5628 = !{!5629, !5630, !5631, !5632, !5633}
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5627, file: !5471, line: 294, baseType: !220, size: 32)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5627, file: !5471, line: 295, baseType: !220, size: 32, offset: 32)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5627, file: !5471, line: 296, baseType: !220, size: 32, offset: 64)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5627, file: !5471, line: 297, baseType: !220, size: 32, offset: 96)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5627, file: !5471, line: 298, baseType: !220, size: 32, offset: 128)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5618, file: !5471, line: 319, baseType: !5612, size: 88, offset: 232)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !5476, file: !5471, line: 654, baseType: !5636, size: 480)
!5636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !5471, line: 322, size: 480, elements: !5637)
!5637 = !{!5638, !5639, !5640, !5641, !5642, !5643, !5644, !5652}
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5636, file: !5471, line: 323, baseType: !305, size: 8)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5636, file: !5471, line: 323, baseType: !305, size: 8, offset: 8)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5636, file: !5471, line: 323, baseType: !305, size: 8, offset: 16)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5636, file: !5471, line: 323, baseType: !305, size: 8, offset: 24)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5636, file: !5471, line: 323, baseType: !305, size: 8, offset: 32)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5636, file: !5471, line: 323, baseType: !5586, size: 32, offset: 40)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5636, file: !5471, line: 323, baseType: !5645, size: 320, offset: 72)
!5645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !5471, line: 301, size: 320, elements: !5646)
!5646 = !{!5647, !5648, !5649, !5650, !5651}
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5645, file: !5471, line: 302, baseType: !197, size: 64)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5645, file: !5471, line: 303, baseType: !197, size: 64, offset: 64)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5645, file: !5471, line: 304, baseType: !197, size: 64, offset: 128)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5645, file: !5471, line: 305, baseType: !197, size: 64, offset: 192)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5645, file: !5471, line: 306, baseType: !197, size: 64, offset: 256)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5636, file: !5471, line: 324, baseType: !5612, size: 88, offset: 392)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !5476, file: !5471, line: 655, baseType: !5654, size: 464)
!5654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !5471, line: 327, size: 464, elements: !5655)
!5655 = !{!5656, !5657, !5658, !5659, !5660, !5661, !5662, !5663, !5664}
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5654, file: !5471, line: 328, baseType: !305, size: 8)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5654, file: !5471, line: 328, baseType: !305, size: 8, offset: 8)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5654, file: !5471, line: 328, baseType: !305, size: 8, offset: 16)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5654, file: !5471, line: 328, baseType: !305, size: 8, offset: 24)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5654, file: !5471, line: 328, baseType: !305, size: 8, offset: 32)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5654, file: !5471, line: 328, baseType: !5586, size: 32, offset: 40)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !5654, file: !5471, line: 328, baseType: !305, size: 8, offset: 72)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5654, file: !5471, line: 329, baseType: !5645, size: 320, offset: 80)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !5654, file: !5471, line: 330, baseType: !197, size: 64, offset: 400)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !5476, file: !5471, line: 656, baseType: !5666, size: 168)
!5666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !5471, line: 333, size: 168, elements: !5667)
!5667 = !{!5668, !5669, !5670, !5671, !5672, !5673, !5674, !5675}
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5666, file: !5471, line: 334, baseType: !305, size: 8)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5666, file: !5471, line: 335, baseType: !305, size: 8, offset: 8)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5666, file: !5471, line: 336, baseType: !305, size: 8, offset: 16)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5666, file: !5471, line: 337, baseType: !305, size: 8, offset: 24)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5666, file: !5471, line: 338, baseType: !305, size: 8, offset: 32)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !5666, file: !5471, line: 339, baseType: !305, size: 8, offset: 40)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5666, file: !5471, line: 340, baseType: !5612, size: 88, offset: 48)
!5675 = !DIDerivedType(tag: DW_TAG_member, scope: !5666, file: !5471, line: 341, baseType: !5676, size: 32, offset: 136)
!5676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5666, file: !5471, line: 341, size: 32, elements: !5677)
!5677 = !{!5678, !5679}
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !5676, file: !5471, line: 342, baseType: !220, size: 32)
!5679 = !DIDerivedType(tag: DW_TAG_member, scope: !5676, file: !5471, line: 343, baseType: !5680)
!5680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5676, file: !5471, line: 343, elements: !5681)
!5681 = !{!5682, !5684}
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !5680, file: !5471, line: 343, baseType: !5683)
!5683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5680, file: !5471, line: 343, elements: !967)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5680, file: !5471, line: 343, baseType: !5685)
!5685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, elements: !1829)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !5476, file: !5471, line: 657, baseType: !5687, size: 96)
!5687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !5471, line: 347, size: 96, elements: !5688)
!5688 = !{!5689, !5690, !5691, !5692, !5693}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !5687, file: !5471, line: 348, baseType: !305, size: 8)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !5687, file: !5471, line: 349, baseType: !305, size: 8, offset: 8)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !5687, file: !5471, line: 350, baseType: !305, size: 8, offset: 16)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !5687, file: !5471, line: 351, baseType: !305, size: 8, offset: 24)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5687, file: !5471, line: 352, baseType: !197, size: 64, offset: 32)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !5476, file: !5471, line: 658, baseType: !5695, size: 352)
!5695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !5471, line: 355, size: 352, elements: !5696)
!5696 = !{!5697, !5698, !5699, !5700, !5701, !5702, !5703, !5704, !5705, !5706, !5707, !5708, !5709, !5710, !5711, !5713}
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5695, file: !5471, line: 356, baseType: !305, size: 8)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !5695, file: !5471, line: 357, baseType: !305, size: 8, offset: 8)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5695, file: !5471, line: 358, baseType: !305, size: 8, offset: 16)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5695, file: !5471, line: 359, baseType: !305, size: 8, offset: 24)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5695, file: !5471, line: 360, baseType: !305, size: 8, offset: 32)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5695, file: !5471, line: 361, baseType: !305, size: 8, offset: 40)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !5695, file: !5471, line: 362, baseType: !305, size: 8, offset: 48)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5695, file: !5471, line: 363, baseType: !305, size: 8, offset: 56)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5695, file: !5471, line: 364, baseType: !305, size: 8, offset: 64)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !5695, file: !5471, line: 365, baseType: !313, size: 16, offset: 72)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !5695, file: !5471, line: 366, baseType: !313, size: 16, offset: 88)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5695, file: !5471, line: 367, baseType: !313, size: 16, offset: 104)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5695, file: !5471, line: 368, baseType: !313, size: 16, offset: 120)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5695, file: !5471, line: 369, baseType: !5612, size: 88, offset: 136)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5695, file: !5471, line: 370, baseType: !5712, size: 64, offset: 224)
!5712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5695, file: !5471, line: 371, baseType: !4695, size: 64, offset: 288)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !5476, file: !5471, line: 659, baseType: !5715, size: 288)
!5715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !5471, line: 422, size: 288, elements: !5716)
!5716 = !{!5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5728, !5729}
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5715, file: !5471, line: 423, baseType: !305, size: 8)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5715, file: !5471, line: 423, baseType: !305, size: 8, offset: 8)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5715, file: !5471, line: 423, baseType: !305, size: 8, offset: 16)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5715, file: !5471, line: 423, baseType: !305, size: 8, offset: 24)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5715, file: !5471, line: 423, baseType: !305, size: 8, offset: 32)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5715, file: !5471, line: 423, baseType: !305, size: 8, offset: 40)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5715, file: !5471, line: 423, baseType: !313, size: 16, offset: 48)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5715, file: !5471, line: 423, baseType: !313, size: 16, offset: 64)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5715, file: !5471, line: 423, baseType: !5612, size: 88, offset: 80)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5715, file: !5471, line: 423, baseType: !4695, size: 64, offset: 168)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !5715, file: !5471, line: 423, baseType: !305, size: 8, offset: 232)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !5715, file: !5471, line: 424, baseType: !313, size: 16, offset: 240)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !5715, file: !5471, line: 425, baseType: !220, size: 32, offset: 256)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !5476, file: !5471, line: 660, baseType: !5731, size: 320)
!5731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !5471, line: 433, size: 320, elements: !5732)
!5732 = !{!5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5749}
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5731, file: !5471, line: 434, baseType: !305, size: 8)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5731, file: !5471, line: 434, baseType: !305, size: 8, offset: 8)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5731, file: !5471, line: 434, baseType: !305, size: 8, offset: 16)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5731, file: !5471, line: 434, baseType: !305, size: 8, offset: 24)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5731, file: !5471, line: 434, baseType: !305, size: 8, offset: 32)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5731, file: !5471, line: 434, baseType: !305, size: 8, offset: 40)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5731, file: !5471, line: 434, baseType: !313, size: 16, offset: 48)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5731, file: !5471, line: 434, baseType: !313, size: 16, offset: 64)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5731, file: !5471, line: 434, baseType: !5612, size: 88, offset: 80)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5731, file: !5471, line: 434, baseType: !4695, size: 64, offset: 168)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !5731, file: !5471, line: 434, baseType: !305, size: 8, offset: 232)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !5731, file: !5471, line: 435, baseType: !305, size: 8, offset: 240)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !5731, file: !5471, line: 436, baseType: !305, size: 8, offset: 248)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !5731, file: !5471, line: 437, baseType: !305, size: 8, offset: 256)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !5731, file: !5471, line: 438, baseType: !305, size: 8, offset: 264)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !5731, file: !5471, line: 439, baseType: !313, size: 16, offset: 272)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !5731, file: !5471, line: 440, baseType: !220, size: 32, offset: 288)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !5476, file: !5471, line: 661, baseType: !5751, size: 344)
!5751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !5471, line: 463, size: 344, elements: !5752)
!5752 = !{!5753, !5754, !5755, !5756, !5757, !5758, !5759, !5760, !5761, !5762, !5763, !5764, !5765, !5766, !5767, !5768, !5769, !5770, !5771}
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5751, file: !5471, line: 464, baseType: !305, size: 8)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5751, file: !5471, line: 464, baseType: !305, size: 8, offset: 8)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5751, file: !5471, line: 464, baseType: !305, size: 8, offset: 16)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5751, file: !5471, line: 464, baseType: !305, size: 8, offset: 24)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5751, file: !5471, line: 464, baseType: !305, size: 8, offset: 32)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5751, file: !5471, line: 464, baseType: !305, size: 8, offset: 40)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5751, file: !5471, line: 464, baseType: !313, size: 16, offset: 48)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5751, file: !5471, line: 464, baseType: !313, size: 16, offset: 64)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5751, file: !5471, line: 464, baseType: !5612, size: 88, offset: 80)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5751, file: !5471, line: 464, baseType: !4695, size: 64, offset: 168)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !5751, file: !5471, line: 464, baseType: !305, size: 8, offset: 232)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !5751, file: !5471, line: 465, baseType: !305, size: 8, offset: 240)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !5751, file: !5471, line: 466, baseType: !305, size: 8, offset: 248)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !5751, file: !5471, line: 467, baseType: !305, size: 8, offset: 256)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5751, file: !5471, line: 468, baseType: !305, size: 8, offset: 264)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !5751, file: !5471, line: 469, baseType: !305, size: 8, offset: 272)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !5751, file: !5471, line: 470, baseType: !313, size: 16, offset: 280)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !5751, file: !5471, line: 471, baseType: !313, size: 16, offset: 296)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !5751, file: !5471, line: 472, baseType: !220, size: 32, offset: 312)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "csi2_serial_bus", scope: !5476, file: !5471, line: 662, baseType: !5773, size: 248)
!5773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_csi2_serialbus", file: !5471, line: 518, size: 248, elements: !5774)
!5774 = !{!5775, !5776, !5777, !5778, !5779, !5780, !5781, !5782, !5783, !5784, !5785, !5786}
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5773, file: !5471, line: 519, baseType: !305, size: 8)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5773, file: !5471, line: 519, baseType: !305, size: 8, offset: 8)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5773, file: !5471, line: 519, baseType: !305, size: 8, offset: 16)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5773, file: !5471, line: 519, baseType: !305, size: 8, offset: 24)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5773, file: !5471, line: 519, baseType: !305, size: 8, offset: 32)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5773, file: !5471, line: 519, baseType: !305, size: 8, offset: 40)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5773, file: !5471, line: 519, baseType: !313, size: 16, offset: 48)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5773, file: !5471, line: 519, baseType: !313, size: 16, offset: 64)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5773, file: !5471, line: 519, baseType: !5612, size: 88, offset: 80)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5773, file: !5471, line: 519, baseType: !4695, size: 64, offset: 168)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "local_port_instance", scope: !5773, file: !5471, line: 519, baseType: !305, size: 8, offset: 232)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "phy_type", scope: !5773, file: !5471, line: 520, baseType: !305, size: 8, offset: 240)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !5476, file: !5471, line: 663, baseType: !5788, size: 232)
!5788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !5471, line: 407, size: 232, elements: !5789)
!5789 = !{!5790, !5791, !5792, !5793, !5794, !5795, !5796, !5797, !5798, !5799}
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5788, file: !5471, line: 408, baseType: !305, size: 8)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5788, file: !5471, line: 408, baseType: !305, size: 8, offset: 8)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5788, file: !5471, line: 408, baseType: !305, size: 8, offset: 16)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5788, file: !5471, line: 408, baseType: !305, size: 8, offset: 24)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5788, file: !5471, line: 408, baseType: !305, size: 8, offset: 32)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5788, file: !5471, line: 408, baseType: !305, size: 8, offset: 40)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5788, file: !5471, line: 408, baseType: !313, size: 16, offset: 48)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5788, file: !5471, line: 408, baseType: !313, size: 16, offset: 64)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5788, file: !5471, line: 408, baseType: !5612, size: 88, offset: 80)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5788, file: !5471, line: 408, baseType: !4695, size: 64, offset: 168)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !5476, file: !5471, line: 664, baseType: !5801, size: 288)
!5801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !5471, line: 523, size: 288, elements: !5802)
!5802 = !{!5803, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5811}
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5801, file: !5471, line: 524, baseType: !305, size: 8)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5801, file: !5471, line: 525, baseType: !305, size: 8, offset: 8)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5801, file: !5471, line: 526, baseType: !305, size: 8, offset: 16)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !5801, file: !5471, line: 527, baseType: !313, size: 16, offset: 24)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5801, file: !5471, line: 528, baseType: !313, size: 16, offset: 40)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5801, file: !5471, line: 529, baseType: !313, size: 16, offset: 56)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5801, file: !5471, line: 530, baseType: !5612, size: 88, offset: 72)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5801, file: !5471, line: 531, baseType: !5712, size: 64, offset: 160)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5801, file: !5471, line: 532, baseType: !4695, size: 64, offset: 224)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5476, file: !5471, line: 665, baseType: !5813, size: 312)
!5813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !5471, line: 535, size: 312, elements: !5814)
!5814 = !{!5815, !5816, !5817, !5818, !5819, !5820, !5821, !5822, !5823, !5824}
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5813, file: !5471, line: 536, baseType: !305, size: 8)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5813, file: !5471, line: 537, baseType: !305, size: 8, offset: 8)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5813, file: !5471, line: 538, baseType: !305, size: 8, offset: 16)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !5813, file: !5471, line: 539, baseType: !305, size: 8, offset: 24)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !5813, file: !5471, line: 540, baseType: !220, size: 32, offset: 32)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5813, file: !5471, line: 541, baseType: !313, size: 16, offset: 64)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5813, file: !5471, line: 542, baseType: !313, size: 16, offset: 80)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5813, file: !5471, line: 543, baseType: !5612, size: 88, offset: 96)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5813, file: !5471, line: 544, baseType: !5712, size: 64, offset: 184)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5813, file: !5471, line: 545, baseType: !4695, size: 64, offset: 248)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !5476, file: !5471, line: 666, baseType: !5826, size: 256)
!5826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !5471, line: 574, size: 256, elements: !5827)
!5827 = !{!5828, !5829, !5830, !5831, !5832, !5833, !5838}
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5826, file: !5471, line: 575, baseType: !305, size: 8)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5826, file: !5471, line: 576, baseType: !305, size: 8, offset: 8)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5826, file: !5471, line: 577, baseType: !313, size: 16, offset: 16)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5826, file: !5471, line: 578, baseType: !313, size: 16, offset: 32)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5826, file: !5471, line: 579, baseType: !5712, size: 64, offset: 48)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !5826, file: !5471, line: 580, baseType: !5834, size: 80, offset: 112)
!5834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !5471, line: 264, size: 80, elements: !5835)
!5835 = !{!5836, !5837}
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !5834, file: !5471, line: 265, baseType: !313, size: 16)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !5834, file: !5471, line: 266, baseType: !345, size: 64, offset: 16)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5826, file: !5471, line: 581, baseType: !4695, size: 64, offset: 192)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !5476, file: !5471, line: 667, baseType: !5840, size: 288)
!5840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !5471, line: 584, size: 288, elements: !5841)
!5841 = !{!5842, !5843, !5844, !5845, !5846, !5847, !5848, !5849}
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5840, file: !5471, line: 585, baseType: !305, size: 8)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5840, file: !5471, line: 586, baseType: !305, size: 8, offset: 8)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5840, file: !5471, line: 587, baseType: !305, size: 8, offset: 16)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !5840, file: !5471, line: 588, baseType: !313, size: 16, offset: 24)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5840, file: !5471, line: 589, baseType: !313, size: 16, offset: 40)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5840, file: !5471, line: 590, baseType: !5612, size: 88, offset: 56)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !5840, file: !5471, line: 591, baseType: !5834, size: 80, offset: 144)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5840, file: !5471, line: 592, baseType: !4695, size: 64, offset: 224)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !5476, file: !5471, line: 668, baseType: !5851, size: 312)
!5851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !5471, line: 595, size: 312, elements: !5852)
!5852 = !{!5853, !5854, !5855, !5856, !5857, !5858, !5859, !5860, !5861}
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5851, file: !5471, line: 596, baseType: !305, size: 8)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5851, file: !5471, line: 597, baseType: !305, size: 8, offset: 8)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5851, file: !5471, line: 598, baseType: !305, size: 8, offset: 16)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !5851, file: !5471, line: 599, baseType: !305, size: 8, offset: 24)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !5851, file: !5471, line: 600, baseType: !220, size: 32, offset: 32)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5851, file: !5471, line: 601, baseType: !313, size: 16, offset: 64)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5851, file: !5471, line: 602, baseType: !5612, size: 88, offset: 80)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !5851, file: !5471, line: 603, baseType: !5834, size: 80, offset: 168)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5851, file: !5471, line: 604, baseType: !4695, size: 64, offset: 248)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "clock_input", scope: !5476, file: !5471, line: 669, baseType: !5863, size: 160)
!5863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_clock_input", file: !5471, line: 548, size: 160, elements: !5864)
!5864 = !{!5865, !5866, !5867, !5868, !5869, !5870}
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5863, file: !5471, line: 549, baseType: !305, size: 8)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5863, file: !5471, line: 550, baseType: !305, size: 8, offset: 8)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !5863, file: !5471, line: 551, baseType: !305, size: 8, offset: 16)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_divisor", scope: !5863, file: !5471, line: 552, baseType: !313, size: 16, offset: 24)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_numerator", scope: !5863, file: !5471, line: 553, baseType: !220, size: 32, offset: 40)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5863, file: !5471, line: 554, baseType: !5612, size: 88, offset: 72)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5476, file: !5471, line: 673, baseType: !5872, size: 72)
!5872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !5471, line: 309, size: 72, elements: !5873)
!5873 = !{!5874, !5875, !5876, !5877, !5878, !5879}
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5872, file: !5471, line: 310, baseType: !305, size: 8)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5872, file: !5471, line: 310, baseType: !305, size: 8, offset: 8)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5872, file: !5471, line: 310, baseType: !305, size: 8, offset: 16)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5872, file: !5471, line: 310, baseType: !305, size: 8, offset: 24)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5872, file: !5471, line: 310, baseType: !305, size: 8, offset: 32)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5872, file: !5471, line: 310, baseType: !5586, size: 32, offset: 40)
!5880 = distinct !DISubprogram(name: "acpi_platform_resource_count", scope: !3, file: !3, line: 90, type: !5881, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5883)
!5881 = !DISubroutineType(types: !5882)
!5882 = !{!7, !5469, !176}
!5883 = !{!5884, !5885, !5886}
!5884 = !DILocalVariable(name: "ares", arg: 1, scope: !5880, file: !3, line: 90, type: !5469)
!5885 = !DILocalVariable(name: "data", arg: 2, scope: !5880, file: !3, line: 90, type: !176)
!5886 = !DILocalVariable(name: "has_resources", scope: !5880, file: !3, line: 92, type: !3999)
!5887 = !DILocation(line: 90, column: 72, scope: !5880)
!5888 = !DILocation(line: 90, column: 84, scope: !5880)
!5889 = !DILocation(line: 92, column: 2, scope: !5880)
!5890 = !DILocation(line: 92, column: 8, scope: !5880)
!5891 = !DILocation(line: 92, column: 24, scope: !5880)
!5892 = !DILocation(line: 94, column: 3, scope: !5880)
!5893 = !DILocation(line: 94, column: 17, scope: !5880)
!5894 = !DILocation(line: 97, column: 1, scope: !5880)
!5895 = !DILocation(line: 96, column: 2, scope: !5880)
!5896 = distinct !DISubprogram(name: "ERR_PTR", scope: !5897, file: !5897, line: 39, type: !5898, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5900)
!5897 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5898 = !DISubroutineType(types: !5899)
!5899 = !{!176, !381}
!5900 = !{!5901}
!5901 = !DILocalVariable(name: "error", arg: 1, scope: !5896, file: !5897, line: 39, type: !381)
!5902 = !DILocation(line: 39, column: 48, scope: !5896)
!5903 = !DILocation(line: 41, column: 18, scope: !5896)
!5904 = !DILocation(line: 41, column: 9, scope: !5896)
!5905 = !DILocation(line: 41, column: 2, scope: !5896)
!5906 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5907, file: !5907, line: 35, type: !5908, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5910)
!5907 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5908 = !DISubroutineType(types: !5909)
!5909 = !{null, !187}
!5910 = !{!5911}
!5911 = !DILocalVariable(name: "list", arg: 1, scope: !5906, file: !5907, line: 35, type: !187)
!5912 = !DILocation(line: 35, column: 53, scope: !5906)
!5913 = !DILocation(line: 37, column: 2, scope: !5906)
!5914 = !DILocation(line: 37, column: 2, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5906, file: !5907, line: 37, column: 2)
!5916 = !DILocation(line: 37, column: 2, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5915, file: !5907, line: 37, column: 2)
!5918 = !DILocation(line: 37, column: 2, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5915, file: !5907, line: 37, column: 2)
!5920 = !DILocation(line: 38, column: 2, scope: !5906)
!5921 = !DILocation(line: 38, column: 2, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5906, file: !5907, line: 38, column: 2)
!5923 = !DILocation(line: 38, column: 2, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5922, file: !5907, line: 38, column: 2)
!5925 = !DILocation(line: 38, column: 2, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5922, file: !5907, line: 38, column: 2)
!5927 = !DILocation(line: 39, column: 1, scope: !5906)
!5928 = !DISubprogram(name: "acpi_dev_get_resources", scope: !171, file: !171, line: 496, type: !5929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5929 = !DISubroutineType(types: !5930)
!5930 = !{!109, !215, !187, !5931, !176}
!5931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5932, size: 64)
!5932 = !DISubroutineType(types: !5933)
!5933 = !{!109, !5469, !176}
!5934 = distinct !DISubprogram(name: "kcalloc", scope: !161, file: !161, line: 666, type: !5935, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5937)
!5935 = !DISubroutineType(types: !5936)
!5936 = !{!176, !392, !392, !177}
!5937 = !{!5938, !5939, !5940}
!5938 = !DILocalVariable(name: "n", arg: 1, scope: !5934, file: !161, line: 666, type: !392)
!5939 = !DILocalVariable(name: "size", arg: 2, scope: !5934, file: !161, line: 666, type: !392)
!5940 = !DILocalVariable(name: "flags", arg: 3, scope: !5934, file: !161, line: 666, type: !177)
!5941 = !DILocation(line: 666, column: 55, scope: !5934)
!5942 = !DILocation(line: 666, column: 65, scope: !5934)
!5943 = !DILocation(line: 666, column: 77, scope: !5934)
!5944 = !DILocation(line: 668, column: 23, scope: !5934)
!5945 = !DILocation(line: 668, column: 26, scope: !5934)
!5946 = !DILocation(line: 668, column: 32, scope: !5934)
!5947 = !DILocation(line: 668, column: 38, scope: !5934)
!5948 = !DILocation(line: 668, column: 9, scope: !5934)
!5949 = !DILocation(line: 668, column: 2, scope: !5934)
!5950 = !DISubprogram(name: "acpi_dev_free_resource_list", scope: !171, file: !171, line: 495, type: !5908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5951 = distinct !DISubprogram(name: "acpi_platform_fill_resource", scope: !3, file: !3, line: 74, type: !5952, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5954)
!5952 = !DISubroutineType(types: !5953)
!5953 = !{null, !215, !5265, !190}
!5954 = !{!5955, !5956, !5957, !5958, !5959}
!5955 = !DILocalVariable(name: "adev", arg: 1, scope: !5951, file: !3, line: 74, type: !215)
!5956 = !DILocalVariable(name: "src", arg: 2, scope: !5951, file: !3, line: 75, type: !5265)
!5957 = !DILocalVariable(name: "dest", arg: 3, scope: !5951, file: !3, line: 75, type: !190)
!5958 = !DILocalVariable(name: "parent", scope: !5951, file: !3, line: 77, type: !4187)
!5959 = !DILocalVariable(name: "__mptr", scope: !5960, file: !3, line: 87, type: !176)
!5960 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 87, column: 36)
!5961 = distinct !DILexicalBlock(scope: !5951, file: !3, line: 86, column: 6)
!5962 = !DILocation(line: 74, column: 61, scope: !5951)
!5963 = !DILocation(line: 75, column: 25, scope: !5951)
!5964 = !DILocation(line: 75, column: 47, scope: !5951)
!5965 = !DILocation(line: 77, column: 2, scope: !5951)
!5966 = !DILocation(line: 77, column: 17, scope: !5951)
!5967 = !DILocation(line: 79, column: 3, scope: !5951)
!5968 = !DILocation(line: 79, column: 11, scope: !5951)
!5969 = !DILocation(line: 79, column: 10, scope: !5951)
!5970 = !DILocation(line: 85, column: 56, scope: !5951)
!5971 = !DILocation(line: 85, column: 40, scope: !5951)
!5972 = !DILocation(line: 85, column: 11, scope: !5951)
!5973 = !DILocation(line: 85, column: 9, scope: !5951)
!5974 = !DILocation(line: 86, column: 6, scope: !5961)
!5975 = !DILocation(line: 86, column: 13, scope: !5961)
!5976 = !DILocation(line: 86, column: 16, scope: !5961)
!5977 = !DILocation(line: 86, column: 6, scope: !5951)
!5978 = !DILocation(line: 87, column: 36, scope: !5960)
!5979 = !DILocation(line: 87, column: 36, scope: !5961)
!5980 = !DILocation(line: 87, column: 56, scope: !5961)
!5981 = !DILocation(line: 87, column: 18, scope: !5961)
!5982 = !DILocation(line: 87, column: 3, scope: !5961)
!5983 = !DILocation(line: 87, column: 9, scope: !5961)
!5984 = !DILocation(line: 87, column: 16, scope: !5961)
!5985 = !DILocation(line: 88, column: 1, scope: !5951)
!5986 = !DISubprogram(name: "acpi_get_first_physical_node", scope: !171, file: !171, line: 89, type: !5987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5987 = !DISubroutineType(types: !5988)
!5988 = !{!4187, !215}
!5989 = distinct !DISubprogram(name: "dev_name", scope: !94, file: !94, line: 858, type: !5990, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5992)
!5990 = !DISubroutineType(types: !5991)
!5991 = !{!204, !259}
!5992 = !{!5993}
!5993 = !DILocalVariable(name: "dev", arg: 1, scope: !5989, file: !94, line: 858, type: !259)
!5994 = !DILocation(line: 858, column: 57, scope: !5989)
!5995 = !DILocation(line: 861, column: 6, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5989, file: !94, line: 861, column: 6)
!5997 = !DILocation(line: 861, column: 11, scope: !5996)
!5998 = !DILocation(line: 861, column: 6, scope: !5989)
!5999 = !DILocation(line: 862, column: 10, scope: !5996)
!6000 = !DILocation(line: 862, column: 15, scope: !5996)
!6001 = !DILocation(line: 862, column: 3, scope: !5996)
!6002 = !DILocation(line: 864, column: 23, scope: !5989)
!6003 = !DILocation(line: 864, column: 28, scope: !5989)
!6004 = !DILocation(line: 864, column: 9, scope: !5989)
!6005 = !DILocation(line: 864, column: 2, scope: !5989)
!6006 = !DILocation(line: 865, column: 1, scope: !5989)
!6007 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !217, file: !217, line: 451, type: !6008, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6010)
!6008 = !DISubroutineType(types: !6009)
!6009 = !{!231, !215}
!6010 = !{!6011}
!6011 = !DILocalVariable(name: "adev", arg: 1, scope: !6007, file: !217, line: 451, type: !215)
!6012 = !DILocation(line: 451, column: 76, scope: !6007)
!6013 = !DILocation(line: 453, column: 10, scope: !6007)
!6014 = !DILocation(line: 453, column: 16, scope: !6007)
!6015 = !DILocation(line: 453, column: 2, scope: !6007)
!6016 = !DISubprogram(name: "acpi_dma_supported", scope: !217, file: !217, line: 627, type: !6017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6017 = !DISubroutineType(types: !6018)
!6018 = !{!249, !5459}
!6019 = !DISubprogram(name: "platform_device_register_full", scope: !5161, file: !5161, line: 136, type: !6020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6020 = !DISubroutineType(types: !6021)
!6021 = !{!5159, !6022}
!6022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6023, size: 64)
!6023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5257)
!6024 = distinct !DISubprogram(name: "IS_ERR", scope: !5897, file: !5897, line: 59, type: !6025, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6027)
!6025 = !DISubroutineType(types: !6026)
!6026 = !{!249, !257}
!6027 = !{!6028}
!6028 = !DILocalVariable(name: "ptr", arg: 1, scope: !6024, file: !5897, line: 59, type: !257)
!6029 = !DILocation(line: 59, column: 60, scope: !6024)
!6030 = !DILocation(line: 61, column: 9, scope: !6024)
!6031 = !DILocation(line: 61, column: 2, scope: !6024)
!6032 = !DISubprogram(name: "_dev_err", scope: !6033, file: !6033, line: 50, type: !6034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6033 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6034 = !DISubroutineType(types: !6035)
!6035 = !{null, !259, !204, null}
!6036 = distinct !DISubprogram(name: "PTR_ERR", scope: !5897, file: !5897, line: 49, type: !6037, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6039)
!6037 = !DISubroutineType(types: !6038)
!6038 = !{!381, !257}
!6039 = !{!6040}
!6040 = !DILocalVariable(name: "ptr", arg: 1, scope: !6036, file: !5897, line: 49, type: !257)
!6041 = !DILocation(line: 49, column: 61, scope: !6036)
!6042 = !DILocation(line: 51, column: 16, scope: !6036)
!6043 = !DILocation(line: 51, column: 9, scope: !6036)
!6044 = !DILocation(line: 51, column: 2, scope: !6036)
!6045 = distinct !DISubprogram(name: "set_dev_node", scope: !94, file: !94, line: 886, type: !6046, scopeLine: 887, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6048)
!6046 = !DISubroutineType(types: !6047)
!6047 = !{null, !4187, !109}
!6048 = !{!6049, !6050}
!6049 = !DILocalVariable(name: "dev", arg: 1, scope: !6045, file: !94, line: 886, type: !4187)
!6050 = !DILocalVariable(name: "node", arg: 2, scope: !6045, file: !94, line: 886, type: !109)
!6051 = !DILocation(line: 886, column: 48, scope: !6045)
!6052 = !DILocation(line: 886, column: 57, scope: !6045)
!6053 = !DILocation(line: 888, column: 19, scope: !6045)
!6054 = !DILocation(line: 888, column: 2, scope: !6045)
!6055 = !DILocation(line: 888, column: 7, scope: !6045)
!6056 = !DILocation(line: 888, column: 17, scope: !6045)
!6057 = !DILocation(line: 889, column: 1, scope: !6045)
!6058 = !DISubprogram(name: "acpi_get_node", scope: !171, file: !171, line: 444, type: !6059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6059 = !DISubroutineType(types: !6060)
!6060 = !{!109, !224}
!6061 = !DISubprogram(name: "kfree", scope: !161, file: !161, line: 227, type: !6062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6062 = !DISubroutineType(types: !6063)
!6063 = !{null, !257}
!6064 = distinct !DISubprogram(name: "acpi_platform_init", scope: !3, file: !3, line: 193, type: !1043, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6065 = !DILocation(line: 195, column: 2, scope: !6064)
!6066 = !DILocation(line: 196, column: 1, scope: !6064)
!6067 = !DISubprogram(name: "acpi_reconfig_notifier_register", scope: !171, file: !171, line: 739, type: !6068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6068 = !DISubroutineType(types: !6069)
!6069 = !{!109, !5210}
!6070 = distinct !DISubprogram(name: "kmalloc_array", scope: !161, file: !161, line: 629, type: !5935, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6071)
!6071 = !{!6072, !6073, !6074, !6075}
!6072 = !DILocalVariable(name: "n", arg: 1, scope: !6070, file: !161, line: 629, type: !392)
!6073 = !DILocalVariable(name: "size", arg: 2, scope: !6070, file: !161, line: 629, type: !392)
!6074 = !DILocalVariable(name: "flags", arg: 3, scope: !6070, file: !161, line: 629, type: !177)
!6075 = !DILocalVariable(name: "bytes", scope: !6070, file: !161, line: 631, type: !392)
!6076 = !DILocation(line: 629, column: 61, scope: !6070)
!6077 = !DILocation(line: 629, column: 71, scope: !6070)
!6078 = !DILocation(line: 629, column: 83, scope: !6070)
!6079 = !DILocation(line: 631, column: 2, scope: !6070)
!6080 = !DILocation(line: 631, column: 9, scope: !6070)
!6081 = !DILocation(line: 633, column: 6, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6070, file: !161, line: 633, column: 6)
!6083 = !DILocation(line: 633, column: 6, scope: !6070)
!6084 = !DILocation(line: 634, column: 3, scope: !6082)
!6085 = !DILocation(line: 635, column: 27, scope: !6086)
!6086 = distinct !DILexicalBlock(scope: !6070, file: !161, line: 635, column: 6)
!6087 = !DILocation(line: 635, column: 6, scope: !6086)
!6088 = !DILocation(line: 635, column: 30, scope: !6086)
!6089 = !DILocation(line: 635, column: 54, scope: !6086)
!6090 = !DILocation(line: 635, column: 33, scope: !6086)
!6091 = !DILocation(line: 635, column: 6, scope: !6070)
!6092 = !DILocation(line: 636, column: 18, scope: !6086)
!6093 = !DILocation(line: 636, column: 25, scope: !6086)
!6094 = !DILocation(line: 636, column: 10, scope: !6086)
!6095 = !DILocation(line: 636, column: 3, scope: !6086)
!6096 = !DILocation(line: 637, column: 19, scope: !6070)
!6097 = !DILocation(line: 637, column: 26, scope: !6070)
!6098 = !DILocation(line: 637, column: 9, scope: !6070)
!6099 = !DILocation(line: 637, column: 2, scope: !6070)
!6100 = !DILocation(line: 638, column: 1, scope: !6070)
!6101 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6102, file: !6102, line: 51, type: !6103, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6105)
!6102 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6103 = !DISubroutineType(types: !6104)
!6104 = !{!249, !249}
!6105 = !{!6106}
!6106 = !DILocalVariable(name: "overflow", arg: 1, scope: !6101, file: !6102, line: 51, type: !249)
!6107 = !DILocation(line: 51, column: 60, scope: !6101)
!6108 = !DILocation(line: 53, column: 9, scope: !6101)
!6109 = !DILocation(line: 53, column: 2, scope: !6101)
!6110 = distinct !DISubprogram(name: "kmalloc", scope: !161, file: !161, line: 591, type: !6111, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6113)
!6111 = !DISubroutineType(types: !6112)
!6112 = !{!176, !392, !177}
!6113 = !{!6114, !6115, !6116}
!6114 = !DILocalVariable(name: "size", arg: 1, scope: !6110, file: !161, line: 591, type: !392)
!6115 = !DILocalVariable(name: "flags", arg: 2, scope: !6110, file: !161, line: 591, type: !177)
!6116 = !DILocalVariable(name: "index", scope: !6117, file: !161, line: 594, type: !7)
!6117 = distinct !DILexicalBlock(scope: !6118, file: !161, line: 593, column: 42)
!6118 = distinct !DILexicalBlock(scope: !6110, file: !161, line: 593, column: 6)
!6119 = !DILocation(line: 591, column: 61, scope: !6110)
!6120 = !DILocation(line: 591, column: 73, scope: !6110)
!6121 = !DILocation(line: 593, column: 27, scope: !6118)
!6122 = !DILocation(line: 593, column: 6, scope: !6118)
!6123 = !DILocation(line: 593, column: 33, scope: !6118)
!6124 = !DILocation(line: 593, column: 36, scope: !6118)
!6125 = !DILocation(line: 593, column: 6, scope: !6110)
!6126 = !DILocation(line: 594, column: 3, scope: !6117)
!6127 = !DILocation(line: 594, column: 16, scope: !6117)
!6128 = !DILocation(line: 596, column: 7, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6117, file: !161, line: 596, column: 7)
!6130 = !DILocation(line: 596, column: 12, scope: !6129)
!6131 = !DILocation(line: 596, column: 7, scope: !6117)
!6132 = !DILocation(line: 597, column: 25, scope: !6129)
!6133 = !DILocation(line: 597, column: 31, scope: !6129)
!6134 = !DILocation(line: 597, column: 11, scope: !6129)
!6135 = !DILocation(line: 597, column: 4, scope: !6129)
!6136 = !DILocation(line: 599, column: 11, scope: !6117)
!6137 = !DILocation(line: 599, column: 9, scope: !6117)
!6138 = !DILocation(line: 601, column: 33, scope: !6117)
!6139 = !DILocation(line: 601, column: 40, scope: !6117)
!6140 = !DILocation(line: 601, column: 20, scope: !6117)
!6141 = !DILocation(line: 601, column: 5, scope: !6117)
!6142 = !DILocation(line: 601, column: 51, scope: !6117)
!6143 = !DILocation(line: 602, column: 5, scope: !6117)
!6144 = !DILocation(line: 602, column: 12, scope: !6117)
!6145 = !DILocation(line: 600, column: 10, scope: !6117)
!6146 = !DILocation(line: 600, column: 3, scope: !6117)
!6147 = !DILocation(line: 603, column: 2, scope: !6118)
!6148 = !DILocation(line: 604, column: 19, scope: !6110)
!6149 = !DILocation(line: 604, column: 25, scope: !6110)
!6150 = !DILocation(line: 604, column: 9, scope: !6110)
!6151 = !DILocation(line: 604, column: 2, scope: !6110)
!6152 = !DILocation(line: 605, column: 1, scope: !6110)
!6153 = !DISubprogram(name: "__kmalloc", scope: !161, file: !161, line: 488, type: !6111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6154 = !DISubprogram(name: "kmalloc_large", scope: !161, file: !161, line: 531, type: !6111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6155 = distinct !DISubprogram(name: "__kmalloc_index", scope: !161, file: !161, line: 444, type: !6156, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6158)
!6156 = !DISubroutineType(types: !6157)
!6157 = !{!7, !392, !249}
!6158 = !{!6159, !6160}
!6159 = !DILocalVariable(name: "size", arg: 1, scope: !6155, file: !161, line: 444, type: !392)
!6160 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6155, file: !161, line: 445, type: !249)
!6161 = !DILocation(line: 444, column: 60, scope: !6155)
!6162 = !DILocation(line: 445, column: 16, scope: !6155)
!6163 = !DILocation(line: 447, column: 7, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 447, column: 6)
!6165 = !DILocation(line: 447, column: 6, scope: !6155)
!6166 = !DILocation(line: 448, column: 3, scope: !6164)
!6167 = !DILocation(line: 450, column: 6, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 450, column: 6)
!6169 = !DILocation(line: 450, column: 11, scope: !6168)
!6170 = !DILocation(line: 450, column: 6, scope: !6155)
!6171 = !DILocation(line: 451, column: 3, scope: !6168)
!6172 = !DILocation(line: 453, column: 32, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 453, column: 6)
!6174 = !DILocation(line: 453, column: 37, scope: !6173)
!6175 = !DILocation(line: 453, column: 42, scope: !6173)
!6176 = !DILocation(line: 453, column: 45, scope: !6173)
!6177 = !DILocation(line: 453, column: 50, scope: !6173)
!6178 = !DILocation(line: 453, column: 6, scope: !6155)
!6179 = !DILocation(line: 454, column: 3, scope: !6173)
!6180 = !DILocation(line: 455, column: 32, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 455, column: 6)
!6182 = !DILocation(line: 455, column: 37, scope: !6181)
!6183 = !DILocation(line: 455, column: 43, scope: !6181)
!6184 = !DILocation(line: 455, column: 46, scope: !6181)
!6185 = !DILocation(line: 455, column: 51, scope: !6181)
!6186 = !DILocation(line: 455, column: 6, scope: !6155)
!6187 = !DILocation(line: 456, column: 3, scope: !6181)
!6188 = !DILocation(line: 457, column: 6, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 457, column: 6)
!6190 = !DILocation(line: 457, column: 11, scope: !6189)
!6191 = !DILocation(line: 457, column: 6, scope: !6155)
!6192 = !DILocation(line: 457, column: 26, scope: !6189)
!6193 = !DILocation(line: 458, column: 6, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 458, column: 6)
!6195 = !DILocation(line: 458, column: 11, scope: !6194)
!6196 = !DILocation(line: 458, column: 6, scope: !6155)
!6197 = !DILocation(line: 458, column: 26, scope: !6194)
!6198 = !DILocation(line: 459, column: 6, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 459, column: 6)
!6200 = !DILocation(line: 459, column: 11, scope: !6199)
!6201 = !DILocation(line: 459, column: 6, scope: !6155)
!6202 = !DILocation(line: 459, column: 26, scope: !6199)
!6203 = !DILocation(line: 460, column: 6, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 460, column: 6)
!6205 = !DILocation(line: 460, column: 11, scope: !6204)
!6206 = !DILocation(line: 460, column: 6, scope: !6155)
!6207 = !DILocation(line: 460, column: 26, scope: !6204)
!6208 = !DILocation(line: 461, column: 6, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 461, column: 6)
!6210 = !DILocation(line: 461, column: 11, scope: !6209)
!6211 = !DILocation(line: 461, column: 6, scope: !6155)
!6212 = !DILocation(line: 461, column: 26, scope: !6209)
!6213 = !DILocation(line: 462, column: 6, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 462, column: 6)
!6215 = !DILocation(line: 462, column: 11, scope: !6214)
!6216 = !DILocation(line: 462, column: 6, scope: !6155)
!6217 = !DILocation(line: 462, column: 26, scope: !6214)
!6218 = !DILocation(line: 463, column: 6, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 463, column: 6)
!6220 = !DILocation(line: 463, column: 11, scope: !6219)
!6221 = !DILocation(line: 463, column: 6, scope: !6155)
!6222 = !DILocation(line: 463, column: 26, scope: !6219)
!6223 = !DILocation(line: 464, column: 6, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 464, column: 6)
!6225 = !DILocation(line: 464, column: 11, scope: !6224)
!6226 = !DILocation(line: 464, column: 6, scope: !6155)
!6227 = !DILocation(line: 464, column: 26, scope: !6224)
!6228 = !DILocation(line: 465, column: 6, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 465, column: 6)
!6230 = !DILocation(line: 465, column: 11, scope: !6229)
!6231 = !DILocation(line: 465, column: 6, scope: !6155)
!6232 = !DILocation(line: 465, column: 26, scope: !6229)
!6233 = !DILocation(line: 466, column: 6, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 466, column: 6)
!6235 = !DILocation(line: 466, column: 11, scope: !6234)
!6236 = !DILocation(line: 466, column: 6, scope: !6155)
!6237 = !DILocation(line: 466, column: 26, scope: !6234)
!6238 = !DILocation(line: 467, column: 6, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 467, column: 6)
!6240 = !DILocation(line: 467, column: 11, scope: !6239)
!6241 = !DILocation(line: 467, column: 6, scope: !6155)
!6242 = !DILocation(line: 467, column: 26, scope: !6239)
!6243 = !DILocation(line: 468, column: 6, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 468, column: 6)
!6245 = !DILocation(line: 468, column: 11, scope: !6244)
!6246 = !DILocation(line: 468, column: 6, scope: !6155)
!6247 = !DILocation(line: 468, column: 26, scope: !6244)
!6248 = !DILocation(line: 469, column: 6, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 469, column: 6)
!6250 = !DILocation(line: 469, column: 11, scope: !6249)
!6251 = !DILocation(line: 469, column: 6, scope: !6155)
!6252 = !DILocation(line: 469, column: 26, scope: !6249)
!6253 = !DILocation(line: 470, column: 6, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 470, column: 6)
!6255 = !DILocation(line: 470, column: 11, scope: !6254)
!6256 = !DILocation(line: 470, column: 6, scope: !6155)
!6257 = !DILocation(line: 470, column: 26, scope: !6254)
!6258 = !DILocation(line: 471, column: 6, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 471, column: 6)
!6260 = !DILocation(line: 471, column: 11, scope: !6259)
!6261 = !DILocation(line: 471, column: 6, scope: !6155)
!6262 = !DILocation(line: 471, column: 26, scope: !6259)
!6263 = !DILocation(line: 472, column: 6, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 472, column: 6)
!6265 = !DILocation(line: 472, column: 11, scope: !6264)
!6266 = !DILocation(line: 472, column: 6, scope: !6155)
!6267 = !DILocation(line: 472, column: 26, scope: !6264)
!6268 = !DILocation(line: 473, column: 6, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 473, column: 6)
!6270 = !DILocation(line: 473, column: 11, scope: !6269)
!6271 = !DILocation(line: 473, column: 6, scope: !6155)
!6272 = !DILocation(line: 473, column: 26, scope: !6269)
!6273 = !DILocation(line: 474, column: 6, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 474, column: 6)
!6275 = !DILocation(line: 474, column: 11, scope: !6274)
!6276 = !DILocation(line: 474, column: 6, scope: !6155)
!6277 = !DILocation(line: 474, column: 27, scope: !6274)
!6278 = !DILocation(line: 475, column: 6, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 475, column: 6)
!6280 = !DILocation(line: 475, column: 11, scope: !6279)
!6281 = !DILocation(line: 475, column: 6, scope: !6155)
!6282 = !DILocation(line: 475, column: 32, scope: !6279)
!6283 = !DILocation(line: 477, column: 50, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6155, file: !161, line: 477, column: 6)
!6285 = !DILocation(line: 477, column: 6, scope: !6155)
!6286 = !DILocation(line: 478, column: 3, scope: !6284)
!6287 = !DILocation(line: 478, column: 3, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6289, file: !161, line: 478, column: 3)
!6289 = distinct !DILexicalBlock(scope: !6284, file: !161, line: 478, column: 3)
!6290 = !{i32 -2143464391}
!6291 = !DILocation(line: 478, column: 3, scope: !6289)
!6292 = !DILocation(line: 480, column: 3, scope: !6284)
!6293 = !DILocation(line: 480, column: 3, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6284, file: !161, line: 480, column: 3)
!6295 = !DILocation(line: 480, column: 3, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6294, file: !161, line: 480, column: 3)
!6297 = !DILocation(line: 480, column: 3, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6294, file: !161, line: 480, column: 3)
!6299 = !{i64 2151503108, i64 2151503137, i64 2151503183, i64 2151503241, i64 2151503295, i64 2151503349, i64 2151503404, i64 2151503435}
!6300 = !DILocation(line: 483, column: 2, scope: !6155)
!6301 = !DILocation(line: 484, column: 1, scope: !6155)
!6302 = !DISubprogram(name: "kmalloc_trace", scope: !161, file: !161, line: 525, type: !6303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6303 = !DISubroutineType(types: !6304)
!6304 = !{!176, !6305, !177, !392}
!6305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6306, size: 64)
!6306 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6307, line: 11, flags: DIFlagFwdDecl)
!6307 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6308 = distinct !DISubprogram(name: "kmalloc_type", scope: !161, file: !161, line: 401, type: !6309, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6311)
!6309 = !DISubroutineType(types: !6310)
!6310 = !{!160, !177, !208}
!6311 = !{!6312, !6313}
!6312 = !DILocalVariable(name: "flags", arg: 1, scope: !6308, file: !161, line: 401, type: !177)
!6313 = !DILocalVariable(name: "caller", arg: 2, scope: !6308, file: !161, line: 401, type: !208)
!6314 = !DILocation(line: 401, column: 67, scope: !6308)
!6315 = !DILocation(line: 401, column: 88, scope: !6308)
!6316 = !DILocation(line: 407, column: 6, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6308, file: !161, line: 407, column: 6)
!6318 = !DILocation(line: 407, column: 6, scope: !6308)
!6319 = !DILocation(line: 413, column: 3, scope: !6317)
!6320 = !DILocation(line: 423, column: 38, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6308, file: !161, line: 423, column: 6)
!6322 = !DILocation(line: 423, column: 44, scope: !6321)
!6323 = !DILocation(line: 423, column: 6, scope: !6308)
!6324 = !DILocation(line: 424, column: 3, scope: !6321)
!6325 = !DILocation(line: 426, column: 3, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6308, file: !161, line: 425, column: 6)
!6327 = !DILocation(line: 429, column: 1, scope: !6308)
!6328 = !DISubprogram(name: "__compiletime_assert_125", scope: !161, file: !161, line: 478, type: !1043, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6329 = !DISubprogram(name: "pci_find_resource", scope: !4874, file: !4874, line: 1442, type: !6330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6330 = !DISubroutineType(types: !6331)
!6331 = !{!190, !4872, !190}
!6332 = distinct !DISubprogram(name: "kobject_name", scope: !265, file: !265, line: 87, type: !333, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6333)
!6333 = !{!6334}
!6334 = !DILocalVariable(name: "kobj", arg: 1, scope: !6332, file: !265, line: 87, type: !328)
!6335 = !DILocation(line: 87, column: 62, scope: !6332)
!6336 = !DILocation(line: 89, column: 9, scope: !6332)
!6337 = !DILocation(line: 89, column: 15, scope: !6332)
!6338 = !DILocation(line: 89, column: 2, scope: !6332)
!6339 = distinct !DISubprogram(name: "acpi_platform_device_remove_notify", scope: !3, file: !3, line: 44, type: !5208, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6340)
!6340 = !{!6341, !6342, !6343, !6344, !6345}
!6341 = !DILocalVariable(name: "nb", arg: 1, scope: !6339, file: !3, line: 44, type: !5210)
!6342 = !DILocalVariable(name: "value", arg: 2, scope: !6339, file: !3, line: 45, type: !208)
!6343 = !DILocalVariable(name: "arg", arg: 3, scope: !6339, file: !3, line: 45, type: !176)
!6344 = !DILocalVariable(name: "adev", scope: !6339, file: !3, line: 47, type: !215)
!6345 = !DILocalVariable(name: "pdev", scope: !6339, file: !3, line: 48, type: !5159)
!6346 = !DILocation(line: 44, column: 70, scope: !6339)
!6347 = !DILocation(line: 45, column: 26, scope: !6339)
!6348 = !DILocation(line: 45, column: 39, scope: !6339)
!6349 = !DILocation(line: 47, column: 2, scope: !6339)
!6350 = !DILocation(line: 47, column: 22, scope: !6339)
!6351 = !DILocation(line: 47, column: 29, scope: !6339)
!6352 = !DILocation(line: 48, column: 2, scope: !6339)
!6353 = !DILocation(line: 48, column: 26, scope: !6339)
!6354 = !DILocation(line: 50, column: 10, scope: !6339)
!6355 = !DILocation(line: 50, column: 2, scope: !6339)
!6356 = !DILocation(line: 55, column: 31, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 55, column: 7)
!6358 = distinct !DILexicalBlock(scope: !6339, file: !3, line: 50, column: 17)
!6359 = !DILocation(line: 55, column: 8, scope: !6357)
!6360 = !DILocation(line: 55, column: 7, scope: !6358)
!6361 = !DILocation(line: 56, column: 4, scope: !6357)
!6362 = !DILocation(line: 58, column: 49, scope: !6358)
!6363 = !DILocation(line: 58, column: 10, scope: !6358)
!6364 = !DILocation(line: 58, column: 8, scope: !6358)
!6365 = !DILocation(line: 59, column: 8, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 59, column: 7)
!6367 = !DILocation(line: 59, column: 7, scope: !6358)
!6368 = !DILocation(line: 60, column: 4, scope: !6366)
!6369 = !DILocation(line: 62, column: 30, scope: !6358)
!6370 = !DILocation(line: 62, column: 3, scope: !6358)
!6371 = !DILocation(line: 63, column: 15, scope: !6358)
!6372 = !DILocation(line: 63, column: 21, scope: !6358)
!6373 = !DILocation(line: 63, column: 3, scope: !6358)
!6374 = !DILocation(line: 64, column: 3, scope: !6358)
!6375 = !DILocation(line: 68, column: 1, scope: !6339)
!6376 = !DILocation(line: 67, column: 2, scope: !6339)
!6377 = distinct !DISubprogram(name: "acpi_device_enumerated", scope: !217, file: !217, line: 574, type: !6378, scopeLine: 575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6380)
!6378 = !DISubroutineType(types: !6379)
!6379 = !{!249, !215}
!6380 = !{!6381}
!6381 = !DILocalVariable(name: "adev", arg: 1, scope: !6377, file: !217, line: 574, type: !215)
!6382 = !DILocation(line: 574, column: 63, scope: !6377)
!6383 = !DILocation(line: 576, column: 9, scope: !6377)
!6384 = !DILocation(line: 576, column: 14, scope: !6377)
!6385 = !DILocation(line: 576, column: 17, scope: !6377)
!6386 = !DILocation(line: 576, column: 23, scope: !6377)
!6387 = !DILocation(line: 576, column: 29, scope: !6377)
!6388 = !DILocation(line: 576, column: 41, scope: !6377)
!6389 = !DILocation(line: 576, column: 44, scope: !6377)
!6390 = !DILocation(line: 576, column: 50, scope: !6377)
!6391 = !DILocation(line: 576, column: 56, scope: !6377)
!6392 = !DILocation(line: 0, scope: !6377)
!6393 = !DILocation(line: 576, column: 2, scope: !6377)
!6394 = distinct !DISubprogram(name: "acpi_platform_device_find_by_companion", scope: !3, file: !3, line: 36, type: !6395, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6397)
!6395 = !DISubroutineType(types: !6396)
!6396 = !{!5159, !215}
!6397 = !{!6398, !6399, !6400}
!6398 = !DILocalVariable(name: "adev", arg: 1, scope: !6394, file: !3, line: 36, type: !215)
!6399 = !DILocalVariable(name: "dev", scope: !6394, file: !3, line: 38, type: !4187)
!6400 = !DILocalVariable(name: "__mptr", scope: !6401, file: !3, line: 41, type: !176)
!6401 = distinct !DILexicalBlock(scope: !6394, file: !3, line: 41, column: 15)
!6402 = !DILocation(line: 36, column: 91, scope: !6394)
!6403 = !DILocation(line: 38, column: 2, scope: !6394)
!6404 = !DILocation(line: 38, column: 17, scope: !6394)
!6405 = !DILocation(line: 40, column: 56, scope: !6394)
!6406 = !DILocation(line: 40, column: 8, scope: !6394)
!6407 = !DILocation(line: 40, column: 6, scope: !6394)
!6408 = !DILocation(line: 41, column: 9, scope: !6394)
!6409 = !DILocation(line: 41, column: 15, scope: !6401)
!6410 = !DILocation(line: 41, column: 15, scope: !6394)
!6411 = !DILocation(line: 42, column: 1, scope: !6394)
!6412 = !DILocation(line: 41, column: 2, scope: !6394)
!6413 = !DISubprogram(name: "platform_device_unregister", scope: !5161, file: !5161, line: 53, type: !6414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6414 = !DISubroutineType(types: !6415)
!6415 = !{null, !5159}
!6416 = !DISubprogram(name: "put_device", scope: !94, file: !94, line: 1231, type: !4210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6417 = distinct !DISubprogram(name: "bus_find_device_by_acpi_dev", scope: !4247, file: !4247, line: 221, type: !6418, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6420)
!6418 = !DISubroutineType(types: !6419)
!6419 = !{!4187, !4244, !5459}
!6420 = !{!6421, !6422}
!6421 = !DILocalVariable(name: "bus", arg: 1, scope: !6417, file: !4247, line: 221, type: !4244)
!6422 = !DILocalVariable(name: "adev", arg: 2, scope: !6417, file: !4247, line: 221, type: !5459)
!6423 = !DILocation(line: 221, column: 52, scope: !6417)
!6424 = !DILocation(line: 221, column: 83, scope: !6417)
!6425 = !DILocation(line: 223, column: 25, scope: !6417)
!6426 = !DILocation(line: 223, column: 36, scope: !6417)
!6427 = !DILocation(line: 223, column: 9, scope: !6417)
!6428 = !DILocation(line: 223, column: 2, scope: !6417)
!6429 = !DISubprogram(name: "bus_find_device", scope: !4247, file: !4247, line: 146, type: !6430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6430 = !DISubroutineType(types: !6431)
!6431 = !{!4187, !4244, !4187, !257, !6432}
!6432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6433, size: 64)
!6433 = !DISubroutineType(types: !6434)
!6434 = !{!109, !4187, !257}
