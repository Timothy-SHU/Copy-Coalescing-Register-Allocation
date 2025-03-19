; ModuleID = 'drivers/acpi/ac.c'
source_filename = "drivers/acpi/ac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_ac__210_340_acpi_ac_init\22, \22a\22\09\09"
module asm "__initcall__kmod_ac__210_340_acpi_ac_init6:\09\09\09"
module asm ".long\09__initstub__kmod_ac__210_340_acpi_ac_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.acpi_driver = type { [80 x i8], [80 x i8], ptr, i32, %struct.acpi_device_ops, %struct.device_driver, ptr }
%struct.acpi_device_ops = type { ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_device_id = type { [16 x i8], i64, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i64 }
%struct.acpi_ac = type { ptr, %struct.power_supply_desc, ptr, i64, %struct.notifier_block }
%struct.power_supply_desc = type { ptr, i32, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.2, i32, i32, %struct.list_head }
%struct.anon.2 = type { i8 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.acpi_bus_event = type { %struct.list_head, [20 x i8], [8 x i8], i32, i32 }
%struct.power_supply = type { ptr, ptr, i64, ptr, i64, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__UNIQUE_ID_author206 = internal constant [27 x i8] c"ac.author=Paul Diefenbaugh\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description207 = internal constant [38 x i8] c"ac.description=ACPI AC Adapter Driver\00", section ".modinfo", align 1, !dbg !2345
@__UNIQUE_ID_file208 = internal constant [24 x i8] c"ac.file=drivers/acpi/ac\00", section ".modinfo", align 1, !dbg !2350
@__UNIQUE_ID_license209 = internal constant [15 x i8] c"ac.license=GPL\00", section ".modinfo", align 1, !dbg !2355
@acpi_ac_driver = internal global %struct.acpi_driver { [80 x i8] c"ac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"ac_adapter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ac_device_ids, i32 0, %struct.acpi_device_ops { ptr @acpi_ac_add, ptr @acpi_ac_remove, ptr null }, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @acpi_ac_pm, ptr null, ptr null }, ptr null }, align 8, !dbg !2366
@__UNIQUE_ID___addressable___initstub__kmod_ac__210_340_acpi_ac_init6211 = internal global ptr @__initstub__kmod_ac__210_340_acpi_ac_init6, section ".discard.addressable", align 8, !dbg !2360
@__exitcall_acpi_ac_exit = internal global ptr @acpi_ac_exit, section ".exitcall.exit", align 8, !dbg !2362
@ac_device_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [16 x i8] c"ACPI0003\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !2388
@acpi_ac_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @acpi_ac_resume, ptr null, ptr @acpi_ac_resume, ptr null, ptr @acpi_ac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !2437
@.str = private unnamed_addr constant [11 x i8] c"AC Adapter\00", align 1, !dbg !2391
@.str.1 = private unnamed_addr constant [11 x i8] c"ac_adapter\00", align 1, !dbg !2396
@ac_props = internal global [1 x i32] [i32 4], align 4, !dbg !2428
@.str.2 = private unnamed_addr constant [26 x i8] c"\016ACPI: AC: %s [%s] (%s)\0A\00", align 1, !dbg !2398
@.str.3 = private unnamed_addr constant [8 x i8] c"on-line\00", align 1, !dbg !2403
@.str.4 = private unnamed_addr constant [9 x i8] c"off-line\00", align 1, !dbg !2405
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !2410
@ac_only = internal global i32 0, align 4, !dbg !2426
@.str.6 = private unnamed_addr constant [5 x i8] c"_PSR\00", align 1, !dbg !2415
@.str.7 = private unnamed_addr constant [3 x i8] c"\016\00", align 1, !dbg !2418
@.str.8 = private unnamed_addr constant [36 x i8] c"Error reading AC Adapter state: %s\0A\00", align 1, !dbg !2421
@.str.9 = private unnamed_addr constant [8 x i8] c"battery\00", align 1, !dbg !2433
@ac_sleep_before_get_state_ms = internal global i32 0, align 4, !dbg !2435
@acpi_disabled = external dso_local global i32, align 4
@ac_dmi_table = internal constant [3 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @ac_only_quirk, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"GK45\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @thinkpad_e530_quirk, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"32597CG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 16, !dbg !2439
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author206, ptr @__UNIQUE_ID_description207, ptr @__UNIQUE_ID_file208, ptr @__UNIQUE_ID_license209, ptr @acpi_ac_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_ac__210_340_acpi_ac_init6211, ptr @__exitcall_acpi_ac_exit], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @acpi_ac_exit() #0 section ".exit.text" align 16 !dbg !2474 {
entry:
  call void @acpi_bus_unregister_driver(ptr noundef @acpi_ac_driver) #16, !dbg !2475
  ret void, !dbg !2476
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2477 dso_local void @acpi_bus_unregister_driver(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_ac__210_340_acpi_ac_init6() #0 section ".init.text" align 16 !dbg !2481 {
entry:
  %call = call i32 @acpi_ac_init() #17, !dbg !2482
  ret i32 %call, !dbg !2482
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_ac_init() #0 section ".init.text" align 16 !dbg !2483 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #18, !dbg !2486
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2485, metadata !DIExpression()), !dbg !2487
  %0 = load i32, ptr @acpi_disabled, align 4, !dbg !2488
  %tobool = icmp ne i32 %0, 0, !dbg !2488
  br i1 %tobool, label %if.then, label %if.end, !dbg !2490

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !2491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2491

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @acpi_quirk_skip_acpi_ac_and_battery() #16, !dbg !2492
  br i1 %call, label %if.then1, label %if.end2, !dbg !2494

if.then1:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !2495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2495

if.end2:                                          ; preds = %if.end
  %call3 = call i32 @dmi_check_system(ptr noundef @ac_dmi_table) #16, !dbg !2496
  %call4 = call i32 @acpi_bus_register_driver(ptr noundef @acpi_ac_driver) #16, !dbg !2497
  store i32 %call4, ptr %result, align 4, !dbg !2498
  %1 = load i32, ptr %result, align 4, !dbg !2499
  %cmp = icmp slt i32 %1, 0, !dbg !2501
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !2502

if.then5:                                         ; preds = %if.end2
  store i32 -19, ptr %retval, align 4, !dbg !2503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2503

if.end6:                                          ; preds = %if.end2
  store i32 0, ptr %retval, align 4, !dbg !2504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2504

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #18, !dbg !2505
  %2 = load i32, ptr %retval, align 4, !dbg !2505
  ret i32 %2, !dbg !2505
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ac_add(ptr noundef %device) #2 align 16 !dbg !2506 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %psy_cfg = alloca %struct.power_supply_config, align 8
  %result = alloca i32, align 4
  %ac = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2508, metadata !DIExpression()), !dbg !2522
  call void @llvm.lifetime.start.p0(i64 48, ptr %psy_cfg) #18, !dbg !2523
  call void @llvm.dbg.declare(metadata ptr %psy_cfg, metadata !2509, metadata !DIExpression()), !dbg !2524
  call void @llvm.memset.p0.i64(ptr align 8 %psy_cfg, i8 0, i64 48, i1 false), !dbg !2524
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #18, !dbg !2525
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2518, metadata !DIExpression()), !dbg !2526
  store i32 0, ptr %result, align 4, !dbg !2526
  call void @llvm.lifetime.start.p0(i64 8, ptr %ac) #18, !dbg !2527
  call void @llvm.dbg.declare(metadata ptr %ac, metadata !2519, metadata !DIExpression()), !dbg !2528
  store ptr null, ptr %ac, align 8, !dbg !2528
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2529
  %tobool = icmp ne ptr %0, null, !dbg !2529
  br i1 %tobool, label %if.end, label %if.then, !dbg !2531

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2532

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 144, i32 noundef 3264) #19, !dbg !2533
  store ptr %call, ptr %ac, align 8, !dbg !2534
  %1 = load ptr, ptr %ac, align 8, !dbg !2535
  %tobool1 = icmp ne ptr %1, null, !dbg !2535
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2537

if.then2:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !2538
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2538

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %device.addr, align 8, !dbg !2539
  %3 = load ptr, ptr %ac, align 8, !dbg !2540
  %device4 = getelementptr inbounds %struct.acpi_ac, ptr %3, i32 0, i32 2, !dbg !2541
  store ptr %2, ptr %device4, align 8, !dbg !2542
  %4 = load ptr, ptr %device.addr, align 8, !dbg !2543
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 8, !dbg !2543
  %device_name = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 6, !dbg !2543
  %arraydecay = getelementptr inbounds [40 x i8], ptr %device_name, i64 0, i64 0, !dbg !2543
  %call5 = call ptr @strcpy(ptr noundef %arraydecay, ptr noundef @.str) #16, !dbg !2544
  %5 = load ptr, ptr %device.addr, align 8, !dbg !2545
  %pnp6 = getelementptr inbounds %struct.acpi_device, ptr %5, i32 0, i32 8, !dbg !2545
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp6, i32 0, i32 7, !dbg !2545
  %arraydecay7 = getelementptr inbounds [20 x i8], ptr %device_class, i64 0, i64 0, !dbg !2545
  %call8 = call ptr @strcpy(ptr noundef %arraydecay7, ptr noundef @.str.1) #16, !dbg !2546
  %6 = load ptr, ptr %ac, align 8, !dbg !2547
  %7 = load ptr, ptr %device.addr, align 8, !dbg !2548
  %driver_data = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 17, !dbg !2549
  store ptr %6, ptr %driver_data, align 8, !dbg !2550
  %8 = load ptr, ptr %ac, align 8, !dbg !2551
  %call9 = call i32 @acpi_ac_get_state(ptr noundef %8) #16, !dbg !2552
  store i32 %call9, ptr %result, align 4, !dbg !2553
  %9 = load i32, ptr %result, align 4, !dbg !2554
  %tobool10 = icmp ne i32 %9, 0, !dbg !2554
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2556

if.then11:                                        ; preds = %if.end3
  br label %err_release_ac, !dbg !2557

if.end12:                                         ; preds = %if.end3
  %10 = load ptr, ptr %ac, align 8, !dbg !2558
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2, !dbg !2559
  store ptr %10, ptr %drv_data, align 8, !dbg !2560
  %11 = load ptr, ptr %device.addr, align 8, !dbg !2561
  %pnp13 = getelementptr inbounds %struct.acpi_device, ptr %11, i32 0, i32 8, !dbg !2561
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp13, i32 0, i32 0, !dbg !2561
  %arraydecay14 = getelementptr inbounds [8 x i8], ptr %bus_id, i64 0, i64 0, !dbg !2561
  %12 = load ptr, ptr %ac, align 8, !dbg !2562
  %charger_desc = getelementptr inbounds %struct.acpi_ac, ptr %12, i32 0, i32 1, !dbg !2563
  %name = getelementptr inbounds %struct.power_supply_desc, ptr %charger_desc, i32 0, i32 0, !dbg !2564
  store ptr %arraydecay14, ptr %name, align 8, !dbg !2565
  %13 = load ptr, ptr %ac, align 8, !dbg !2566
  %charger_desc15 = getelementptr inbounds %struct.acpi_ac, ptr %13, i32 0, i32 1, !dbg !2567
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %charger_desc15, i32 0, i32 1, !dbg !2568
  store i32 3, ptr %type, align 8, !dbg !2569
  %14 = load ptr, ptr %ac, align 8, !dbg !2570
  %charger_desc16 = getelementptr inbounds %struct.acpi_ac, ptr %14, i32 0, i32 1, !dbg !2571
  %properties = getelementptr inbounds %struct.power_supply_desc, ptr %charger_desc16, i32 0, i32 4, !dbg !2572
  store ptr @ac_props, ptr %properties, align 8, !dbg !2573
  %15 = load ptr, ptr %ac, align 8, !dbg !2574
  %charger_desc17 = getelementptr inbounds %struct.acpi_ac, ptr %15, i32 0, i32 1, !dbg !2575
  %num_properties = getelementptr inbounds %struct.power_supply_desc, ptr %charger_desc17, i32 0, i32 5, !dbg !2576
  store i64 1, ptr %num_properties, align 8, !dbg !2577
  %16 = load ptr, ptr %ac, align 8, !dbg !2578
  %charger_desc18 = getelementptr inbounds %struct.acpi_ac, ptr %16, i32 0, i32 1, !dbg !2579
  %get_property = getelementptr inbounds %struct.power_supply_desc, ptr %charger_desc18, i32 0, i32 6, !dbg !2580
  store ptr @get_ac_property, ptr %get_property, align 8, !dbg !2581
  %17 = load ptr, ptr %ac, align 8, !dbg !2582
  %device19 = getelementptr inbounds %struct.acpi_ac, ptr %17, i32 0, i32 2, !dbg !2583
  %18 = load ptr, ptr %device19, align 8, !dbg !2583
  %dev = getelementptr inbounds %struct.acpi_device, ptr %18, i32 0, i32 18, !dbg !2584
  %19 = load ptr, ptr %ac, align 8, !dbg !2585
  %charger_desc20 = getelementptr inbounds %struct.acpi_ac, ptr %19, i32 0, i32 1, !dbg !2586
  %call21 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef %charger_desc20, ptr noundef %psy_cfg) #16, !dbg !2587
  %20 = load ptr, ptr %ac, align 8, !dbg !2588
  %charger = getelementptr inbounds %struct.acpi_ac, ptr %20, i32 0, i32 0, !dbg !2589
  store ptr %call21, ptr %charger, align 8, !dbg !2590
  %21 = load ptr, ptr %ac, align 8, !dbg !2591
  %charger22 = getelementptr inbounds %struct.acpi_ac, ptr %21, i32 0, i32 0, !dbg !2593
  %22 = load ptr, ptr %charger22, align 8, !dbg !2593
  %call23 = call zeroext i1 @IS_ERR(ptr noundef %22) #16, !dbg !2594
  br i1 %call23, label %if.then24, label %if.end27, !dbg !2595

if.then24:                                        ; preds = %if.end12
  %23 = load ptr, ptr %ac, align 8, !dbg !2596
  %charger25 = getelementptr inbounds %struct.acpi_ac, ptr %23, i32 0, i32 0, !dbg !2598
  %24 = load ptr, ptr %charger25, align 8, !dbg !2598
  %call26 = call i64 @PTR_ERR(ptr noundef %24) #16, !dbg !2599
  %conv = trunc i64 %call26 to i32, !dbg !2599
  store i32 %conv, ptr %result, align 4, !dbg !2600
  br label %err_release_ac, !dbg !2601

if.end27:                                         ; preds = %if.end12
  br label %do.body, !dbg !2602

do.body:                                          ; preds = %if.end27
  br label %do.cond, !dbg !2604

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2604

do.end:                                           ; preds = %do.cond
  %25 = load ptr, ptr %device.addr, align 8, !dbg !2602
  %pnp28 = getelementptr inbounds %struct.acpi_device, ptr %25, i32 0, i32 8, !dbg !2602
  %device_name29 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp28, i32 0, i32 6, !dbg !2602
  %arraydecay30 = getelementptr inbounds [40 x i8], ptr %device_name29, i64 0, i64 0, !dbg !2602
  %26 = load ptr, ptr %device.addr, align 8, !dbg !2602
  %pnp31 = getelementptr inbounds %struct.acpi_device, ptr %26, i32 0, i32 8, !dbg !2602
  %bus_id32 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp31, i32 0, i32 0, !dbg !2602
  %arraydecay33 = getelementptr inbounds [8 x i8], ptr %bus_id32, i64 0, i64 0, !dbg !2602
  %27 = load ptr, ptr %ac, align 8, !dbg !2602
  %state = getelementptr inbounds %struct.acpi_ac, ptr %27, i32 0, i32 3, !dbg !2602
  %28 = load i64, ptr %state, align 8, !dbg !2602
  %tobool34 = icmp ne i64 %28, 0, !dbg !2602
  %29 = zext i1 %tobool34 to i64, !dbg !2602
  %cond = select i1 %tobool34, ptr @.str.3, ptr @.str.4, !dbg !2602
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %arraydecay30, ptr noundef %arraydecay33, ptr noundef %cond) #17, !dbg !2602
  store i32 %call35, ptr %tmp, align 4, !dbg !2604
  %30 = load i32, ptr %tmp, align 4, !dbg !2602
  %31 = load ptr, ptr %ac, align 8, !dbg !2606
  %battery_nb = getelementptr inbounds %struct.acpi_ac, ptr %31, i32 0, i32 4, !dbg !2607
  %notifier_call = getelementptr inbounds %struct.notifier_block, ptr %battery_nb, i32 0, i32 0, !dbg !2608
  store ptr @acpi_ac_battery_notify, ptr %notifier_call, align 8, !dbg !2609
  %32 = load ptr, ptr %ac, align 8, !dbg !2610
  %battery_nb36 = getelementptr inbounds %struct.acpi_ac, ptr %32, i32 0, i32 4, !dbg !2611
  %call37 = call i32 @register_acpi_notifier(ptr noundef %battery_nb36) #16, !dbg !2612
  %33 = load ptr, ptr %device.addr, align 8, !dbg !2613
  %call38 = call i32 @acpi_dev_install_notify_handler(ptr noundef %33, i32 noundef 3, ptr noundef @acpi_ac_notify) #16, !dbg !2614
  store i32 %call38, ptr %result, align 4, !dbg !2615
  %34 = load i32, ptr %result, align 4, !dbg !2616
  %tobool39 = icmp ne i32 %34, 0, !dbg !2616
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !2618

if.then40:                                        ; preds = %do.end
  br label %err_unregister, !dbg !2619

if.end41:                                         ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !2620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2620

err_unregister:                                   ; preds = %if.then40
  call void @llvm.dbg.label(metadata !2520), !dbg !2621
  %35 = load ptr, ptr %ac, align 8, !dbg !2622
  %charger42 = getelementptr inbounds %struct.acpi_ac, ptr %35, i32 0, i32 0, !dbg !2623
  %36 = load ptr, ptr %charger42, align 8, !dbg !2623
  call void @power_supply_unregister(ptr noundef %36) #16, !dbg !2624
  %37 = load ptr, ptr %ac, align 8, !dbg !2625
  %battery_nb43 = getelementptr inbounds %struct.acpi_ac, ptr %37, i32 0, i32 4, !dbg !2626
  %call44 = call i32 @unregister_acpi_notifier(ptr noundef %battery_nb43) #16, !dbg !2627
  br label %err_release_ac, !dbg !2627

err_release_ac:                                   ; preds = %err_unregister, %if.then24, %if.then11
  call void @llvm.dbg.label(metadata !2521), !dbg !2628
  %38 = load ptr, ptr %ac, align 8, !dbg !2629
  call void @kfree(ptr noundef %38) #16, !dbg !2630
  %39 = load i32, ptr %result, align 4, !dbg !2631
  store i32 %39, ptr %retval, align 4, !dbg !2632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2632

cleanup:                                          ; preds = %err_release_ac, %if.end41, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ac) #18, !dbg !2633
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #18, !dbg !2633
  call void @llvm.lifetime.end.p0(i64 48, ptr %psy_cfg) #18, !dbg !2633
  %40 = load i32, ptr %retval, align 4, !dbg !2633
  ret i32 %40, !dbg !2633
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ac_remove(ptr noundef %device) #2 align 16 !dbg !2634 {
entry:
  %device.addr = alloca ptr, align 8
  %ac = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2636, metadata !DIExpression()), !dbg !2638
  call void @llvm.lifetime.start.p0(i64 8, ptr %ac) #18, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %ac, metadata !2637, metadata !DIExpression()), !dbg !2640
  store ptr null, ptr %ac, align 8, !dbg !2640
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2641
  %tobool = icmp ne ptr %0, null, !dbg !2641
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2643

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %device.addr, align 8, !dbg !2644
  %call = call ptr @acpi_driver_data(ptr noundef %1) #16, !dbg !2645
  %tobool1 = icmp ne ptr %call, null, !dbg !2645
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2646

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2647

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %device.addr, align 8, !dbg !2648
  %call2 = call ptr @acpi_driver_data(ptr noundef %2) #16, !dbg !2649
  store ptr %call2, ptr %ac, align 8, !dbg !2650
  %3 = load ptr, ptr %device.addr, align 8, !dbg !2651
  call void @acpi_dev_remove_notify_handler(ptr noundef %3, i32 noundef 3, ptr noundef @acpi_ac_notify) #16, !dbg !2652
  %4 = load ptr, ptr %ac, align 8, !dbg !2653
  %charger = getelementptr inbounds %struct.acpi_ac, ptr %4, i32 0, i32 0, !dbg !2654
  %5 = load ptr, ptr %charger, align 8, !dbg !2654
  call void @power_supply_unregister(ptr noundef %5) #16, !dbg !2655
  %6 = load ptr, ptr %ac, align 8, !dbg !2656
  %battery_nb = getelementptr inbounds %struct.acpi_ac, ptr %6, i32 0, i32 4, !dbg !2657
  %call3 = call i32 @unregister_acpi_notifier(ptr noundef %battery_nb) #16, !dbg !2658
  %7 = load ptr, ptr %ac, align 8, !dbg !2659
  call void @kfree(ptr noundef %7) #16, !dbg !2660
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2661
  br label %cleanup, !dbg !2661

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ac) #18, !dbg !2661
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2661

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !2662 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2666, metadata !DIExpression()), !dbg !2668
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2667, metadata !DIExpression()), !dbg !2669
  %0 = load i64, ptr %size.addr, align 8, !dbg !2670
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2671
  %or = or i32 %1, 256, !dbg !2672
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !2673
  ret ptr %call, !dbg !2674
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2675 dso_local ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ac_get_state(ptr noundef %ac) #2 align 16 !dbg !2679 {
entry:
  %retval = alloca i32, align 4
  %ac.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ac, ptr %ac.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ac.addr, metadata !2683, metadata !DIExpression()), !dbg !2685
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #18, !dbg !2686
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2684, metadata !DIExpression()), !dbg !2687
  store i32 0, ptr %status, align 4, !dbg !2687
  %0 = load ptr, ptr %ac.addr, align 8, !dbg !2688
  %tobool = icmp ne ptr %0, null, !dbg !2688
  br i1 %tobool, label %if.end, label %if.then, !dbg !2690

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2691

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @ac_only, align 4, !dbg !2692
  %tobool1 = icmp ne i32 %1, 0, !dbg !2692
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2694

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %ac.addr, align 8, !dbg !2695
  %state = getelementptr inbounds %struct.acpi_ac, ptr %2, i32 0, i32 3, !dbg !2697
  store i64 1, ptr %state, align 8, !dbg !2698
  store i32 0, ptr %retval, align 4, !dbg !2699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2699

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %ac.addr, align 8, !dbg !2700
  %device = getelementptr inbounds %struct.acpi_ac, ptr %3, i32 0, i32 2, !dbg !2701
  %4 = load ptr, ptr %device, align 8, !dbg !2701
  %handle = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 2, !dbg !2702
  %5 = load ptr, ptr %handle, align 8, !dbg !2702
  %6 = load ptr, ptr %ac.addr, align 8, !dbg !2703
  %state4 = getelementptr inbounds %struct.acpi_ac, ptr %6, i32 0, i32 3, !dbg !2704
  %call = call i32 @acpi_evaluate_integer(ptr noundef %5, ptr noundef @.str.6, ptr noundef null, ptr noundef %state4) #16, !dbg !2705
  store i32 %call, ptr %status, align 4, !dbg !2706
  %7 = load i32, ptr %status, align 4, !dbg !2707
  %tobool5 = icmp ne i32 %7, 0, !dbg !2707
  br i1 %tobool5, label %if.then6, label %if.end11, !dbg !2709

if.then6:                                         ; preds = %if.end3
  %8 = load ptr, ptr %ac.addr, align 8, !dbg !2710
  %device7 = getelementptr inbounds %struct.acpi_ac, ptr %8, i32 0, i32 2, !dbg !2710
  %9 = load ptr, ptr %device7, align 8, !dbg !2710
  %handle8 = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 2, !dbg !2710
  %10 = load ptr, ptr %handle8, align 8, !dbg !2710
  %11 = load i32, ptr %status, align 4, !dbg !2710
  %call9 = call ptr @acpi_format_exception(i32 noundef %11) #16, !dbg !2710
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %10, ptr noundef @.str.8, ptr noundef %call9) #16, !dbg !2710
  %12 = load ptr, ptr %ac.addr, align 8, !dbg !2712
  %state10 = getelementptr inbounds %struct.acpi_ac, ptr %12, i32 0, i32 3, !dbg !2713
  store i64 255, ptr %state10, align 8, !dbg !2714
  store i32 -19, ptr %retval, align 4, !dbg !2715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2715

if.end11:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !2716
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2716

cleanup:                                          ; preds = %if.end11, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #18, !dbg !2717
  %13 = load i32, ptr %retval, align 4, !dbg !2717
  ret i32 %13, !dbg !2717
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_ac_property(ptr noundef %psy, i32 noundef %psp, ptr noundef %val) #2 align 16 !dbg !2718 {
entry:
  %retval = alloca i32, align 4
  %psy.addr = alloca ptr, align 8
  %psp.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %ac = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psy, ptr %psy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psy.addr, metadata !2720, metadata !DIExpression()), !dbg !2724
  store i32 %psp, ptr %psp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %psp.addr, metadata !2721, metadata !DIExpression()), !dbg !2725
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2722, metadata !DIExpression()), !dbg !2726
  call void @llvm.lifetime.start.p0(i64 8, ptr %ac) #18, !dbg !2727
  call void @llvm.dbg.declare(metadata ptr %ac, metadata !2723, metadata !DIExpression()), !dbg !2728
  %0 = load ptr, ptr %psy.addr, align 8, !dbg !2729
  %call = call ptr @power_supply_get_drvdata(ptr noundef %0) #16, !dbg !2729
  store ptr %call, ptr %ac, align 8, !dbg !2728
  %1 = load ptr, ptr %ac, align 8, !dbg !2730
  %tobool = icmp ne ptr %1, null, !dbg !2730
  br i1 %tobool, label %if.end, label %if.then, !dbg !2732

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !2733
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2733

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ac, align 8, !dbg !2734
  %call1 = call i32 @acpi_ac_get_state(ptr noundef %2) #16, !dbg !2736
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2736
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2737

if.then3:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !2738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2738

if.end4:                                          ; preds = %if.end
  %3 = load i32, ptr %psp.addr, align 4, !dbg !2739
  switch i32 %3, label %sw.default [
    i32 4, label %sw.bb
  ], !dbg !2740

sw.bb:                                            ; preds = %if.end4
  %4 = load ptr, ptr %ac, align 8, !dbg !2741
  %state = getelementptr inbounds %struct.acpi_ac, ptr %4, i32 0, i32 3, !dbg !2743
  %5 = load i64, ptr %state, align 8, !dbg !2743
  %conv = trunc i64 %5 to i32, !dbg !2741
  %6 = load ptr, ptr %val.addr, align 8, !dbg !2744
  store i32 %conv, ptr %6, align 8, !dbg !2745
  br label %sw.epilog, !dbg !2746

sw.default:                                       ; preds = %if.end4
  store i32 -22, ptr %retval, align 4, !dbg !2747
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2747

sw.epilog:                                        ; preds = %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !2748
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2748

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ac) #18, !dbg !2749
  %7 = load i32, ptr %retval, align 4, !dbg !2749
  ret i32 %7, !dbg !2749
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2750 dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #7 align 16 !dbg !2755 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2760, metadata !DIExpression()), !dbg !2761
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2762
  %1 = ptrtoint ptr %0 to i64, !dbg !2762
  %2 = inttoptr i64 %1 to ptr, !dbg !2762
  %3 = ptrtoint ptr %2 to i64, !dbg !2762
  %cmp = icmp uge i64 %3, -4095, !dbg !2762
  %lnot = xor i1 %cmp, true, !dbg !2762
  %lnot1 = xor i1 %lnot, true, !dbg !2762
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2762
  %conv = sext i32 %lnot.ext to i64, !dbg !2762
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2762
  %tobool = icmp ne i64 %expval, 0, !dbg !2762
  ret i1 %tobool, !dbg !2763
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #7 align 16 !dbg !2764 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2768, metadata !DIExpression()), !dbg !2769
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2770
  %1 = ptrtoint ptr %0 to i64, !dbg !2771
  ret i64 %1, !dbg !2772
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2773 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ac_battery_notify(ptr noundef %nb, i64 noundef %action, ptr noundef %data) #2 align 16 !dbg !2777 {
entry:
  %nb.addr = alloca ptr, align 8
  %action.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %ac = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %event = alloca ptr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !2779, metadata !DIExpression()), !dbg !2786
  store i64 %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !2780, metadata !DIExpression()), !dbg !2787
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2781, metadata !DIExpression()), !dbg !2788
  call void @llvm.lifetime.start.p0(i64 8, ptr %ac) #18, !dbg !2789
  call void @llvm.dbg.declare(metadata ptr %ac, metadata !2782, metadata !DIExpression()), !dbg !2790
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !2791
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2783, metadata !DIExpression()), !dbg !2791
  %0 = load ptr, ptr %nb.addr, align 8, !dbg !2791
  store ptr %0, ptr %__mptr, align 8, !dbg !2791
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2791
  %add.ptr = getelementptr i8, ptr %1, i64 -120, !dbg !2791
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2791
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !2792
  %2 = load ptr, ptr %tmp, align 8, !dbg !2791
  store ptr %2, ptr %ac, align 8, !dbg !2790
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #18, !dbg !2793
  call void @llvm.dbg.declare(metadata ptr %event, metadata !2785, metadata !DIExpression()), !dbg !2794
  %3 = load ptr, ptr %data.addr, align 8, !dbg !2795
  store ptr %3, ptr %event, align 8, !dbg !2794
  %4 = load ptr, ptr %event, align 8, !dbg !2796
  %device_class = getelementptr inbounds %struct.acpi_bus_event, ptr %4, i32 0, i32 1, !dbg !2798
  %arraydecay = getelementptr inbounds [20 x i8], ptr %device_class, i64 0, i64 0, !dbg !2796
  %call = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef @.str.9) #16, !dbg !2799
  %cmp = icmp eq i32 %call, 0, !dbg !2800
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2801

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %event, align 8, !dbg !2802
  %type = getelementptr inbounds %struct.acpi_bus_event, ptr %5, i32 0, i32 3, !dbg !2803
  %6 = load i32, ptr %type, align 4, !dbg !2803
  %cmp1 = icmp eq i32 %6, 128, !dbg !2804
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2805

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %ac, align 8, !dbg !2806
  %call2 = call i32 @acpi_ac_get_state(ptr noundef %7) #16, !dbg !2807
  br label %if.end, !dbg !2807

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #18, !dbg !2808
  call void @llvm.lifetime.end.p0(i64 8, ptr %ac) #18, !dbg !2808
  ret i32 1, !dbg !2809
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2810 dso_local i32 @register_acpi_notifier(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2813 dso_local i32 @acpi_dev_install_notify_handler(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ac_notify(ptr noundef %handle, i32 noundef %event, ptr noundef %data) #2 align 16 !dbg !2820 {
entry:
  %handle.addr = alloca ptr, align 8
  %event.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %ac = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2822, metadata !DIExpression()), !dbg !2827
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !2823, metadata !DIExpression()), !dbg !2828
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2824, metadata !DIExpression()), !dbg !2829
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #18, !dbg !2830
  call void @llvm.dbg.declare(metadata ptr %device, metadata !2825, metadata !DIExpression()), !dbg !2831
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2832
  store ptr %0, ptr %device, align 8, !dbg !2831
  call void @llvm.lifetime.start.p0(i64 8, ptr %ac) #18, !dbg !2833
  call void @llvm.dbg.declare(metadata ptr %ac, metadata !2826, metadata !DIExpression()), !dbg !2834
  %1 = load ptr, ptr %device, align 8, !dbg !2835
  %call = call ptr @acpi_driver_data(ptr noundef %1) #16, !dbg !2836
  store ptr %call, ptr %ac, align 8, !dbg !2834
  %2 = load ptr, ptr %ac, align 8, !dbg !2837
  %tobool = icmp ne ptr %2, null, !dbg !2837
  br i1 %tobool, label %if.end, label %if.then, !dbg !2839

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2840

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %event.addr, align 4, !dbg !2841
  switch i32 %3, label %sw.default [
    i32 128, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ], !dbg !2842

sw.default:                                       ; preds = %if.end
  store i32 0, ptr %tmp, align 4, !dbg !2843
  %4 = load i32, ptr %tmp, align 4, !dbg !2847
  br label %sw.bb, !dbg !2848

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %sw.default
  %5 = load i32, ptr @ac_sleep_before_get_state_ms, align 4, !dbg !2849
  %cmp = icmp sgt i32 %5, 0, !dbg !2851
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2852

if.then1:                                         ; preds = %sw.bb
  %6 = load i32, ptr @ac_sleep_before_get_state_ms, align 4, !dbg !2853
  call void @msleep(i32 noundef %6) #16, !dbg !2854
  br label %if.end2, !dbg !2854

if.end2:                                          ; preds = %if.then1, %sw.bb
  %7 = load ptr, ptr %ac, align 8, !dbg !2855
  %call3 = call i32 @acpi_ac_get_state(ptr noundef %7) #16, !dbg !2856
  %8 = load ptr, ptr %device, align 8, !dbg !2857
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %8, i32 0, i32 8, !dbg !2858
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 7, !dbg !2859
  %arraydecay = getelementptr inbounds [20 x i8], ptr %device_class, i64 0, i64 0, !dbg !2857
  %9 = load ptr, ptr %device, align 8, !dbg !2860
  %dev = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 18, !dbg !2861
  %call4 = call ptr @dev_name(ptr noundef %dev) #16, !dbg !2862
  %10 = load i32, ptr %event.addr, align 4, !dbg !2863
  %conv = trunc i32 %10 to i8, !dbg !2863
  %11 = load ptr, ptr %ac, align 8, !dbg !2864
  %state = getelementptr inbounds %struct.acpi_ac, ptr %11, i32 0, i32 3, !dbg !2865
  %12 = load i64, ptr %state, align 8, !dbg !2865
  %conv5 = trunc i64 %12 to i32, !dbg !2866
  %call6 = call i32 @acpi_bus_generate_netlink_event(ptr noundef %arraydecay, ptr noundef %call4, i8 noundef zeroext %conv, i32 noundef %conv5) #16, !dbg !2867
  %13 = load ptr, ptr %device, align 8, !dbg !2868
  %14 = load i32, ptr %event.addr, align 4, !dbg !2869
  %15 = load ptr, ptr %ac, align 8, !dbg !2870
  %state7 = getelementptr inbounds %struct.acpi_ac, ptr %15, i32 0, i32 3, !dbg !2871
  %16 = load i64, ptr %state7, align 8, !dbg !2871
  %conv8 = trunc i64 %16 to i32, !dbg !2872
  %call9 = call i32 @acpi_notifier_call_chain(ptr noundef %13, i32 noundef %14, i32 noundef %conv8) #16, !dbg !2873
  %17 = load ptr, ptr %ac, align 8, !dbg !2874
  %charger = getelementptr inbounds %struct.acpi_ac, ptr %17, i32 0, i32 0, !dbg !2875
  %18 = load ptr, ptr %charger, align 8, !dbg !2875
  %dev10 = getelementptr inbounds %struct.power_supply, ptr %18, i32 0, i32 7, !dbg !2876
  %kobj = getelementptr inbounds %struct.device, ptr %dev10, i32 0, i32 0, !dbg !2877
  %call11 = call i32 @kobject_uevent(ptr noundef %kobj, i32 noundef 2) #16, !dbg !2878
  br label %sw.epilog, !dbg !2879

sw.epilog:                                        ; preds = %if.end2
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2880
  br label %cleanup, !dbg !2880

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ac) #18, !dbg !2880
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #18, !dbg !2880
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2880

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2881 dso_local void @power_supply_unregister(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2882 dso_local i32 @unregister_acpi_notifier(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2883 dso_local void @kfree(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !2886 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2888, metadata !DIExpression()), !dbg !2893
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2889, metadata !DIExpression()), !dbg !2894
  %0 = load i64, ptr %size.addr, align 8, !dbg !2895
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2896
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2897

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2898
  %tobool = icmp ne i64 %2, 0, !dbg !2898
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2899

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !2900
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2890, metadata !DIExpression()), !dbg !2901
  %3 = load i64, ptr %size.addr, align 8, !dbg !2902
  %cmp = icmp ugt i64 %3, 8192, !dbg !2904
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2905

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2906
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2907
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !2908
  store ptr %call, ptr %retval, align 8, !dbg !2909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2909

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2910
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !2910
  store i32 %call2, ptr %index, align 4, !dbg !2911
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2912
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2913
  %9 = ptrtoint ptr %8 to i64, !dbg !2913
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !2914
  %idxprom = zext i32 %call3 to i64, !dbg !2915
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2915
  %10 = load i32, ptr %index, align 4, !dbg !2916
  %idxprom4 = zext i32 %10 to i64, !dbg !2915
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2915
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2915
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2917
  %13 = load i64, ptr %size.addr, align 8, !dbg !2918
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !2919
  store ptr %call6, ptr %retval, align 8, !dbg !2920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2920

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !2921
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2922
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2923
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !2924
  store ptr %call8, ptr %retval, align 8, !dbg !2925
  br label %return, !dbg !2925

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2926
  ret ptr %16, !dbg !2926
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2927 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !2928 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2932, metadata !DIExpression()), !dbg !2934
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2933, metadata !DIExpression()), !dbg !2935
  %0 = load i64, ptr %size.addr, align 8, !dbg !2936
  %tobool = icmp ne i64 %0, 0, !dbg !2936
  br i1 %tobool, label %if.end, label %if.then, !dbg !2938

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2939
  br label %return, !dbg !2939

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2940
  %cmp = icmp ule i64 %1, 8, !dbg !2942
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2943

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2944
  br label %return, !dbg !2944

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2945
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2947
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2948

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2949
  %cmp4 = icmp ule i64 %3, 96, !dbg !2950
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2951

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2952
  br label %return, !dbg !2952

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2953
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2955
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2956

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2957
  %cmp9 = icmp ule i64 %5, 192, !dbg !2958
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2959

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2960
  br label %return, !dbg !2960

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2961
  %cmp12 = icmp ule i64 %6, 8, !dbg !2963
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2964

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2965
  br label %return, !dbg !2965

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2966
  %cmp15 = icmp ule i64 %7, 16, !dbg !2968
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2969

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2970
  br label %return, !dbg !2970

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2971
  %cmp18 = icmp ule i64 %8, 32, !dbg !2973
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2974

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2975
  br label %return, !dbg !2975

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2976
  %cmp21 = icmp ule i64 %9, 64, !dbg !2978
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2979

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2980
  br label %return, !dbg !2980

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2981
  %cmp24 = icmp ule i64 %10, 128, !dbg !2983
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2984

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2985
  br label %return, !dbg !2985

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2986
  %cmp27 = icmp ule i64 %11, 256, !dbg !2988
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2989

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2990
  br label %return, !dbg !2990

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2991
  %cmp30 = icmp ule i64 %12, 512, !dbg !2993
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2994

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2995
  br label %return, !dbg !2995

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2996
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2998
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2999

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3000
  br label %return, !dbg !3000

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3001
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3003
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3004

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3005
  br label %return, !dbg !3005

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3006
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3008
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3009

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3010
  br label %return, !dbg !3010

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3011
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3013
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3014

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3015
  br label %return, !dbg !3015

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3016
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3018
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3019

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3020
  br label %return, !dbg !3020

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3021
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3023
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3024

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3025
  br label %return, !dbg !3025

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3026
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3028
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3029

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3030
  br label %return, !dbg !3030

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3031
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3033
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3034

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3035
  br label %return, !dbg !3035

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3036
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3038
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3039

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3040
  br label %return, !dbg !3040

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3041
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3043
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3044

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3045
  br label %return, !dbg !3045

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3046
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3048
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3049

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3050
  br label %return, !dbg !3050

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3051
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3053
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3054

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3055
  br label %return, !dbg !3055

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3056, !range !3058, !noundef !521
  %tobool69 = trunc i8 %25 to i1, !dbg !3056
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3059

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3060

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #21, !dbg !3061, !srcloc !3064
  unreachable, !dbg !3061

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3065

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3066

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3067

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3069

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3067

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #18, !dbg !3071, !srcloc !3073
  br label %do.end75, !dbg !3071

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3067

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3074
  br label %return, !dbg !3074

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3075
  ret i32 %26, !dbg !3075
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3076 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !3082 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3086, metadata !DIExpression()), !dbg !3088
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3087, metadata !DIExpression()), !dbg !3089
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3090
  %and = and i32 %0, 17, !dbg !3090
  %cmp = icmp eq i32 %and, 0, !dbg !3090
  %lnot = xor i1 %cmp, true, !dbg !3090
  %lnot1 = xor i1 %lnot, true, !dbg !3090
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3090
  %conv = sext i32 %lnot.ext to i64, !dbg !3090
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3090
  %tobool = icmp ne i64 %expval, 0, !dbg !3090
  br i1 %tobool, label %if.then, label %if.end, !dbg !3092

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3093
  br label %return, !dbg !3093

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3094
  %and2 = and i32 %1, 1, !dbg !3096
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3096
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3097

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3098
  br label %return, !dbg !3098

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3099
  br label %return, !dbg !3099

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3101
  ret i32 %2, !dbg !3101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3102 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3103 dso_local void @__compiletime_assert_196() #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3104 dso_local i32 @acpi_evaluate_integer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3114 dso_local void @acpi_handle_printk(ptr noundef, ptr noundef, ptr noundef, ...) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3118 dso_local ptr @acpi_format_exception(i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3122 dso_local ptr @power_supply_get_drvdata(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3125 dso_local i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_driver_data(ptr noundef %d) #7 align 16 !dbg !3128 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !3132, metadata !DIExpression()), !dbg !3133
  %0 = load ptr, ptr %d.addr, align 8, !dbg !3134
  %driver_data = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 17, !dbg !3135
  %1 = load ptr, ptr %driver_data, align 8, !dbg !3135
  ret ptr %1, !dbg !3136
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3137 dso_local void @msleep(i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3141 dso_local i32 @acpi_bus_generate_netlink_event(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #7 align 16 !dbg !3144 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3148, metadata !DIExpression()), !dbg !3149
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3150
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !3152
  %1 = load ptr, ptr %init_name, align 8, !dbg !3152
  %tobool = icmp ne ptr %1, null, !dbg !3150
  br i1 %tobool, label %if.then, label %if.end, !dbg !3153

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !3154
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !3155
  %3 = load ptr, ptr %init_name1, align 8, !dbg !3155
  store ptr %3, ptr %retval, align 8, !dbg !3156
  br label %return, !dbg !3156

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !3157
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !3158
  %call = call ptr @kobject_name(ptr noundef %kobj) #16, !dbg !3159
  store ptr %call, ptr %retval, align 8, !dbg !3160
  br label %return, !dbg !3160

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !3161
  ret ptr %5, !dbg !3161
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3162 dso_local i32 @acpi_notifier_call_chain(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3165 dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #7 align 16 !dbg !3168 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3170, metadata !DIExpression()), !dbg !3171
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3172
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !3173
  %1 = load ptr, ptr %name, align 8, !dbg !3173
  ret ptr %1, !dbg !3174
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3175 dso_local void @acpi_dev_remove_notify_handler(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ac_resume(ptr noundef %dev) #2 align 16 !dbg !3178 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %ac = alloca ptr, align 8
  %old_state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3180, metadata !DIExpression()), !dbg !3185
  call void @llvm.lifetime.start.p0(i64 8, ptr %ac) #18, !dbg !3186
  call void @llvm.dbg.declare(metadata ptr %ac, metadata !3181, metadata !DIExpression()), !dbg !3187
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_state) #18, !dbg !3188
  call void @llvm.dbg.declare(metadata ptr %old_state, metadata !3182, metadata !DIExpression()), !dbg !3189
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3190
  %tobool = icmp ne ptr %0, null, !dbg !3190
  br i1 %tobool, label %if.end, label %if.then, !dbg !3192

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3193

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3194
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3183, metadata !DIExpression()), !dbg !3194
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !3194
  store ptr %1, ptr %__mptr, align 8, !dbg !3194
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3194
  %add.ptr = getelementptr i8, ptr %2, i64 -608, !dbg !3194
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3194
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3195
  %3 = load ptr, ptr %tmp, align 8, !dbg !3194
  %call = call ptr @acpi_driver_data(ptr noundef %3) #16, !dbg !3196
  store ptr %call, ptr %ac, align 8, !dbg !3197
  %4 = load ptr, ptr %ac, align 8, !dbg !3198
  %tobool1 = icmp ne ptr %4, null, !dbg !3198
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3200

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !3201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3201

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %ac, align 8, !dbg !3202
  %state = getelementptr inbounds %struct.acpi_ac, ptr %5, i32 0, i32 3, !dbg !3203
  %6 = load i64, ptr %state, align 8, !dbg !3203
  %conv = trunc i64 %6 to i32, !dbg !3202
  store i32 %conv, ptr %old_state, align 4, !dbg !3204
  %7 = load ptr, ptr %ac, align 8, !dbg !3205
  %call4 = call i32 @acpi_ac_get_state(ptr noundef %7) #16, !dbg !3207
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3207
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3208

if.then6:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !3209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3209

if.end7:                                          ; preds = %if.end3
  %8 = load i32, ptr %old_state, align 4, !dbg !3210
  %conv8 = zext i32 %8 to i64, !dbg !3210
  %9 = load ptr, ptr %ac, align 8, !dbg !3212
  %state9 = getelementptr inbounds %struct.acpi_ac, ptr %9, i32 0, i32 3, !dbg !3213
  %10 = load i64, ptr %state9, align 8, !dbg !3213
  %cmp = icmp ne i64 %conv8, %10, !dbg !3214
  br i1 %cmp, label %if.then11, label %if.end14, !dbg !3215

if.then11:                                        ; preds = %if.end7
  %11 = load ptr, ptr %ac, align 8, !dbg !3216
  %charger = getelementptr inbounds %struct.acpi_ac, ptr %11, i32 0, i32 0, !dbg !3217
  %12 = load ptr, ptr %charger, align 8, !dbg !3217
  %dev12 = getelementptr inbounds %struct.power_supply, ptr %12, i32 0, i32 7, !dbg !3218
  %kobj = getelementptr inbounds %struct.device, ptr %dev12, i32 0, i32 0, !dbg !3219
  %call13 = call i32 @kobject_uevent(ptr noundef %kobj, i32 noundef 2) #16, !dbg !3220
  br label %if.end14, !dbg !3220

if.end14:                                         ; preds = %if.then11, %if.end7
  store i32 0, ptr %retval, align 4, !dbg !3221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3221

cleanup:                                          ; preds = %if.end14, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_state) #18, !dbg !3222
  call void @llvm.lifetime.end.p0(i64 8, ptr %ac) #18, !dbg !3222
  %13 = load i32, ptr %retval, align 4, !dbg !3222
  ret i32 %13, !dbg !3222
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3223 dso_local zeroext i1 @acpi_quirk_skip_acpi_ac_and_battery() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3224 dso_local i32 @dmi_check_system(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3226 dso_local i32 @acpi_bus_register_driver(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @ac_only_quirk(ptr noundef %d) #0 section ".init.text" align 16 !dbg !3229 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !3231, metadata !DIExpression()), !dbg !3232
  store i32 1, ptr @ac_only, align 4, !dbg !3233
  ret i32 0, !dbg !3234
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @thinkpad_e530_quirk(ptr noundef %d) #0 section ".init.text" align 16 !dbg !3235 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !3237, metadata !DIExpression()), !dbg !3238
  store i32 1000, ptr @ac_sleep_before_get_state_ms, align 4, !dbg !3239
  ret i32 0, !dbg !3240
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { nounwind }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472}
!llvm.ident = !{!2473}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author206", scope: !2, file: !3, line: 31, type: !2462, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.ac.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/ac\22 -D KBUILD_BASENAME=\22ac\22 -D KBUILD_MODNAME=\22ac\22 -D __KBUILD_MODNAME=kmod_ac -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/ac.ll drivers/acpi/ac.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !223, globals: !2344, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/ac.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3252514c8ad2419823fd76381dead35b")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !84, !100, !112, !190, !197, !202, !212}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !13, line: 312, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !20, line: 45, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!23 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!24 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !26, line: 487, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!29 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!30 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!31 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !38, line: 620, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!41 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!42 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!43 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!44 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !38, line: 597, baseType: !46, size: 32, elements: !47)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!49 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!50 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!51 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!52 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!56 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!57 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!58 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!59 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!60 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!61 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!65 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!66 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!70 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!71 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!75 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!76 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!77 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !79, line: 30, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!82 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!83 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_type", file: !85, line: 179, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/power_supply.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1f75e7271bb81936c98711d72c809341")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!87 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_UNKNOWN", value: 0)
!88 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_BATTERY", value: 1)
!89 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_UPS", value: 2)
!90 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_MAINS", value: 3)
!91 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB", value: 4)
!92 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_DCP", value: 5)
!93 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_CDP", value: 6)
!94 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_ACA", value: 7)
!95 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_TYPE_C", value: 8)
!96 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_PD", value: 9)
!97 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_PD_DRP", value: 10)
!98 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_APPLE_BRICK_ID", value: 11)
!99 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_WIRELESS", value: 12)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_usb_type", file: !85, line: 195, baseType: !7, size: 32, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!102 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_UNKNOWN", value: 0)
!103 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_SDP", value: 1)
!104 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_DCP", value: 2)
!105 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_CDP", value: 3)
!106 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_ACA", value: 4)
!107 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_C", value: 5)
!108 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD", value: 6)
!109 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD_DRP", value: 7)
!110 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD_PPS", value: 8)
!111 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_APPLE_BRICK_ID", value: 9)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_property", file: !85, line: 98, baseType: !7, size: 32, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189}
!114 = !DIEnumerator(name: "POWER_SUPPLY_PROP_STATUS", value: 0)
!115 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_TYPE", value: 1)
!116 = !DIEnumerator(name: "POWER_SUPPLY_PROP_HEALTH", value: 2)
!117 = !DIEnumerator(name: "POWER_SUPPLY_PROP_PRESENT", value: 3)
!118 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ONLINE", value: 4)
!119 = !DIEnumerator(name: "POWER_SUPPLY_PROP_AUTHENTIC", value: 5)
!120 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TECHNOLOGY", value: 6)
!121 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CYCLE_COUNT", value: 7)
!122 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MAX", value: 8)
!123 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MIN", value: 9)
!124 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN", value: 10)
!125 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN", value: 11)
!126 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_NOW", value: 12)
!127 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_AVG", value: 13)
!128 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_OCV", value: 14)
!129 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_BOOT", value: 15)
!130 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_MAX", value: 16)
!131 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_NOW", value: 17)
!132 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_AVG", value: 18)
!133 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_BOOT", value: 19)
!134 = !DIEnumerator(name: "POWER_SUPPLY_PROP_POWER_NOW", value: 20)
!135 = !DIEnumerator(name: "POWER_SUPPLY_PROP_POWER_AVG", value: 21)
!136 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN", value: 22)
!137 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_EMPTY_DESIGN", value: 23)
!138 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_FULL", value: 24)
!139 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_EMPTY", value: 25)
!140 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_NOW", value: 26)
!141 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_AVG", value: 27)
!142 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_COUNTER", value: 28)
!143 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT", value: 29)
!144 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX", value: 30)
!145 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE", value: 31)
!146 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX", value: 32)
!147 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT", value: 33)
!148 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX", value: 34)
!149 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_START_THRESHOLD", value: 35)
!150 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_END_THRESHOLD", value: 36)
!151 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_BEHAVIOUR", value: 37)
!152 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT", value: 38)
!153 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT", value: 39)
!154 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_POWER_LIMIT", value: 40)
!155 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN", value: 41)
!156 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_EMPTY_DESIGN", value: 42)
!157 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_FULL", value: 43)
!158 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_EMPTY", value: 44)
!159 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_NOW", value: 45)
!160 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_AVG", value: 46)
!161 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY", value: 47)
!162 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ALERT_MIN", value: 48)
!163 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ALERT_MAX", value: 49)
!164 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ERROR_MARGIN", value: 50)
!165 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_LEVEL", value: 51)
!166 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP", value: 52)
!167 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_MAX", value: 53)
!168 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_MIN", value: 54)
!169 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_ALERT_MIN", value: 55)
!170 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_ALERT_MAX", value: 56)
!171 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT", value: 57)
!172 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MIN", value: 58)
!173 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MAX", value: 59)
!174 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW", value: 60)
!175 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG", value: 61)
!176 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_FULL_NOW", value: 62)
!177 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_FULL_AVG", value: 63)
!178 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TYPE", value: 64)
!179 = !DIEnumerator(name: "POWER_SUPPLY_PROP_USB_TYPE", value: 65)
!180 = !DIEnumerator(name: "POWER_SUPPLY_PROP_SCOPE", value: 66)
!181 = !DIEnumerator(name: "POWER_SUPPLY_PROP_PRECHARGE_CURRENT", value: 67)
!182 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT", value: 68)
!183 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CALIBRATE", value: 69)
!184 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_YEAR", value: 70)
!185 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_MONTH", value: 71)
!186 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_DAY", value: 72)
!187 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MODEL_NAME", value: 73)
!188 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURER", value: 74)
!189 = !DIEnumerator(name: "POWER_SUPPLY_PROP_SERIAL_NUMBER", value: 75)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "led_brightness", file: !191, line: 33, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/leds.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7523bb9fe581d1ba7d85feff7bf8fa4d")
!192 = !{!193, !194, !195, !196}
!193 = !DIEnumerator(name: "LED_OFF", value: 0)
!194 = !DIEnumerator(name: "LED_ON", value: 1)
!195 = !DIEnumerator(name: "LED_HALF", value: 127)
!196 = !DIEnumerator(name: "LED_FULL", value: 255)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !198, line: 10, baseType: !7, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!199 = !{!200, !201}
!200 = !DIEnumerator(name: "false", value: 0)
!201 = !DIEnumerator(name: "true", value: 1)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !203, line: 364, baseType: !7, size: 32, elements: !204)
!203 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!204 = !{!205, !206, !207, !208, !209, !210, !211}
!205 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!206 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!207 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!208 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!209 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!210 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!211 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !213, line: 53, baseType: !7, size: 32, elements: !214)
!213 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222}
!215 = !DIEnumerator(name: "KOBJ_ADD", value: 0)
!216 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1)
!217 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2)
!218 = !DIEnumerator(name: "KOBJ_MOVE", value: 3)
!219 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4)
!220 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5)
!221 = !DIEnumerator(name: "KOBJ_BIND", value: 6)
!222 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7)
!223 = !{!224, !225, !46, !227, !228, !234, !235, !2336, !230, !2061}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !226, line: 154, baseType: !7)
!226 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!227 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !229, line: 421, baseType: !230)
!229 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !231, line: 21, baseType: !232)
!231 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !233, line: 27, baseType: !7)
!233 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!234 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_ac", file: !3, line: 64, size: 1152, elements: !237)
!237 = !{!238, !2059, !2060, !2323, !2324}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "charger", scope: !236, file: !3, line: 65, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply", file: !85, line: 282, size: 8192, elements: !241)
!241 = !{!242, !292, !295, !296, !297, !298, !302, !303, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1951, !1954, !1957, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !240, file: !85, line: 283, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_desc", file: !85, line: 242, size: 768, elements: !246)
!246 = !{!247, !251, !252, !255, !260, !263, !264, !273, !279, !283, !287, !288, !291}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !85, line: 243, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !245, file: !85, line: 244, baseType: !84, size: 32, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "usb_types", scope: !245, file: !85, line: 245, baseType: !253, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "num_usb_types", scope: !245, file: !85, line: 246, baseType: !256, size: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !226, line: 61, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !258, line: 72, baseType: !259)
!258 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !258, line: 16, baseType: !227)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !245, file: !85, line: 247, baseType: !261, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "num_properties", scope: !245, file: !85, line: 248, baseType: !256, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "get_property", scope: !245, file: !85, line: 256, baseType: !265, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!46, !239, !112, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "power_supply_propval", file: !85, line: 218, size: 64, elements: !270)
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "intval", scope: !269, file: !85, line: 219, baseType: !46, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "strval", scope: !269, file: !85, line: 220, baseType: !248, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !245, file: !85, line: 259, baseType: !274, size: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!46, !239, !112, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "property_is_writeable", scope: !245, file: !85, line: 267, baseType: !280, size: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!46, !239, !112}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "external_power_changed", scope: !245, file: !85, line: 269, baseType: !284, size: 64, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !239}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "set_charged", scope: !245, file: !85, line: 270, baseType: !284, size: 64, offset: 640)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "no_thermal", scope: !245, file: !85, line: 277, baseType: !289, size: 8, offset: 704)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !226, line: 35, baseType: !290)
!290 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "use_for_apm", scope: !245, file: !85, line: 279, baseType: !46, size: 32, offset: 736)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_to", scope: !240, file: !85, line: 285, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplicants", scope: !240, file: !85, line: 286, baseType: !256, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_from", scope: !240, file: !85, line: 288, baseType: !293, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplies", scope: !240, file: !85, line: 289, baseType: !256, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !240, file: !85, line: 290, baseType: !299, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !301, line: 18, flags: DIFlagFwdDecl)
!301 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!302 = !DIDerivedType(tag: DW_TAG_member, name: "drv_data", scope: !240, file: !85, line: 293, baseType: !224, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !240, file: !85, line: 296, baseType: !304, size: 5824, offset: 448)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !305)
!305 = !{!306, !958, !960, !963, !964, !1017, !1483, !1484, !1485, !1486, !1487, !1494, !1664, !1677, !1687, !1691, !1693, !1694, !1695, !1699, !1706, !1707, !1710, !1713, !1714, !1817, !1818, !1821, !1822, !1823, !1824, !1854, !1855, !1856, !1859, !1862, !1871, !1872, !1873, !1874, !1875, !1876}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !304, file: !26, line: 706, baseType: !307, size: 512)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !213, line: 64, size: 512, elements: !308)
!308 = !{!309, !310, !316, !318, !404, !828, !943, !953, !954, !955, !956, !957}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !213, line: 65, baseType: !248, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !307, file: !213, line: 66, baseType: !311, size: 128, offset: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !226, line: 190, size: 128, elements: !312)
!312 = !{!313, !315}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !226, line: 191, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !311, file: !226, line: 191, baseType: !314, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !307, file: !213, line: 67, baseType: !317, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !307, file: !213, line: 68, baseType: !319, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !213, line: 168, size: 768, elements: !321)
!321 = !{!322, !323, !364, !365}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !320, file: !213, line: 169, baseType: !311, size: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !320, file: !213, line: 170, baseType: !324, size: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !325, line: 29, baseType: !326)
!325 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !325, line: 17, size: 32, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !325, line: 18, baseType: !329, size: 32)
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !325, line: 18, size: 32, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !329, file: !325, line: 19, baseType: !332, size: 32)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !333, line: 14, size: 32, elements: !334)
!333 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !332, file: !333, line: 15, baseType: !336, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !337, line: 44, baseType: !338)
!337 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !337, line: 14, size: 32, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !337, line: 15, baseType: !341, size: 32)
!341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !337, line: 15, size: 32, elements: !342)
!342 = !{!343, !348, !356}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !341, file: !337, line: 16, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !226, line: 174, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 172, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !345, file: !226, line: 173, baseType: !46, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !337, line: 24, baseType: !349, size: 16)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !341, file: !337, line: 24, size: 16, elements: !350)
!350 = !{!351, !355}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !349, file: !337, line: 25, baseType: !352, size: 8)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !231, line: 17, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !233, line: 21, baseType: !354)
!354 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !349, file: !337, line: 26, baseType: !352, size: 8, offset: 8)
!356 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !337, line: 28, baseType: !357, size: 32)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !341, file: !337, line: 28, size: 32, elements: !358)
!358 = !{!359, !363}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !357, file: !337, line: 29, baseType: !360, size: 16)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !231, line: 19, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !233, line: 24, baseType: !362)
!362 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !357, file: !337, line: 30, baseType: !360, size: 16, offset: 16)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !320, file: !213, line: 171, baseType: !307, size: 512, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !320, file: !213, line: 172, baseType: !366, size: 64, offset: 704)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !213, line: 133, size: 192, elements: !369)
!369 = !{!370, !377, !382}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !368, file: !213, line: 134, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!46, !375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !368, file: !213, line: 135, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!248, !375}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !368, file: !213, line: 136, baseType: !383, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!46, !375, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !213, line: 125, size: 20736, elements: !389)
!389 = !{!390, !394, !398, !399, !403}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !388, file: !213, line: 126, baseType: !391, size: 192)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 192, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 3)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !388, file: !213, line: 127, baseType: !395, size: 4096, offset: 192)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 4096, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !388, file: !213, line: 128, baseType: !46, size: 32, offset: 4288)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !388, file: !213, line: 129, baseType: !400, size: 16384, offset: 4320)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 16384, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 2048)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !388, file: !213, line: 130, baseType: !46, size: 32, offset: 20704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !307, file: !213, line: 69, baseType: !405, size: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !213, line: 116, size: 384, elements: !408)
!408 = !{!409, !413, !436, !775, !806, !810}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !407, file: !213, line: 117, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !317}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !407, file: !213, line: 118, baseType: !414, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !417, line: 254, size: 128, elements: !418)
!417 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!418 = !{!419, !432}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !416, file: !417, line: 255, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!423, !317, !426, !294}
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !226, line: 66, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !258, line: 73, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !258, line: 15, baseType: !234)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !417, line: 30, size: 128, elements: !428)
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !427, file: !417, line: 31, baseType: !248, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !427, file: !417, line: 32, baseType: !431, size: 16, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !226, line: 24, baseType: !362)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !416, file: !417, line: 256, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!423, !317, !426, !248, !256}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !407, file: !213, line: 119, baseType: !437, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !417, line: 84, size: 320, elements: !441)
!441 = !{!442, !443, !447, !771, !773}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !440, file: !417, line: 85, baseType: !248, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !440, file: !417, line: 86, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!431, !317, !426, !46}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !440, file: !417, line: 88, baseType: !448, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!431, !317, !451, !46}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !417, line: 175, size: 512, elements: !453)
!453 = !{!454, !455, !456, !457, !464, !474, !475}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !452, file: !417, line: 176, baseType: !427, size: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !452, file: !417, line: 177, baseType: !256, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !452, file: !417, line: 178, baseType: !224, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !452, file: !417, line: 179, baseType: !458, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !463, line: 32, flags: DIFlagFwdDecl)
!463 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!464 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !452, file: !417, line: 180, baseType: !465, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!423, !468, !317, !451, !294, !471, !256}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !470, line: 537, flags: DIFlagFwdDecl)
!470 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !226, line: 52, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !258, line: 88, baseType: !473)
!473 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !452, file: !417, line: 182, baseType: !465, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !452, file: !417, line: 184, baseType: !476, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!46, !468, !317, !451, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !463, line: 625, size: 1344, elements: !481)
!481 = !{!482, !499, !722, !728, !735, !736, !741, !742, !754, !755, !758, !762, !763, !764, !765, !766, !769}
!482 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !463, line: 628, baseType: !483, size: 128)
!483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !480, file: !463, line: 628, size: 128, elements: !484)
!484 = !{!485, !490}
!485 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !463, line: 629, baseType: !486, size: 128)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !483, file: !463, line: 629, size: 128, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !486, file: !463, line: 631, baseType: !227, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !486, file: !463, line: 632, baseType: !227, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !483, file: !463, line: 635, baseType: !491, size: 128, align: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !226, line: 232, size: 128, align: 64, elements: !492)
!492 = !{!493, !495}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !491, file: !226, line: 233, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !491, file: !226, line: 234, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !494}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !480, file: !463, line: 639, baseType: !500, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !463, line: 733, size: 10240, elements: !502)
!502 = !{!503, !718}
!503 = !DIDerivedType(tag: DW_TAG_member, scope: !501, file: !463, line: 734, baseType: !504, size: 10240)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !463, line: 734, size: 10240, elements: !505)
!505 = !{!506, !510, !524, !528, !529, !530, !531, !532, !533, !541, !542, !543, !552, !553, !562, !563, !564, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !611, !625, !628, !683, !684, !685, !688, !692, !693, !696, !697, !698, !705, !706}
!506 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !463, line: 739, baseType: !507, size: 512, align: 512)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !504, file: !463, line: 739, size: 512, align: 512, elements: !508)
!508 = !{!509}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !507, file: !463, line: 747, baseType: !344, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !504, file: !463, line: 750, baseType: !511, size: 128, offset: 512)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !512, line: 218, size: 128, elements: !513)
!512 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!513 = !{!514, !522, !523}
!514 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !512, line: 219, baseType: !515, size: 32)
!515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !512, line: 219, size: 32, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !515, file: !512, line: 220, baseType: !324, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !515, file: !512, line: 221, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !512, line: 197, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !512, line: 197, elements: !521)
!521 = !{}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !511, file: !512, line: 223, baseType: !7, size: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !511, file: !512, line: 224, baseType: !224, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !504, file: !463, line: 752, baseType: !525, size: 64, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!227, !468, !227, !227, !227, !227}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !504, file: !463, line: 756, baseType: !227, size: 64, offset: 704)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !504, file: !463, line: 757, baseType: !227, size: 64, offset: 768)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !504, file: !463, line: 760, baseType: !227, size: 64, offset: 832)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !504, file: !463, line: 761, baseType: !227, size: 64, offset: 896)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !504, file: !463, line: 763, baseType: !227, size: 64, offset: 960)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !504, file: !463, line: 764, baseType: !534, size: 64, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !470, line: 299, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !470, line: 299, size: 64, elements: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !536, file: !470, line: 299, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !540, line: 18, baseType: !227)
!540 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!541 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !504, file: !463, line: 773, baseType: !344, size: 32, offset: 1088)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !504, file: !463, line: 785, baseType: !344, size: 32, offset: 1120)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !504, file: !463, line: 795, baseType: !544, size: 64, offset: 1152)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !463, line: 726, size: 128, elements: !546)
!546 = !{!547, !551}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !545, file: !463, line: 727, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !231, line: 23, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !233, line: 31, baseType: !550)
!550 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !545, file: !463, line: 728, baseType: !46, size: 32, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !504, file: !463, line: 801, baseType: !227, size: 64, offset: 1216)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !504, file: !463, line: 804, baseType: !554, size: 64, offset: 1280)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !555, line: 13, baseType: !556)
!555 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !226, line: 181, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 179, size: 64, elements: !558)
!558 = !{!559}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !557, file: !226, line: 180, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !231, line: 22, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !233, line: 30, baseType: !473)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !504, file: !463, line: 806, baseType: !46, size: 32, offset: 1344)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !504, file: !463, line: 808, baseType: !324, size: 32, offset: 1376)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !504, file: !463, line: 823, baseType: !565, size: 320, offset: 1408)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !566, line: 48, size: 320, elements: !567)
!566 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!567 = !{!568, !569, !570, !575, !577}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !565, file: !566, line: 49, baseType: !554, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !565, file: !566, line: 55, baseType: !554, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !565, file: !566, line: 57, baseType: !571, size: 32, offset: 128)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !572, line: 15, size: 32, elements: !573)
!572 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !571, file: !572, line: 20, baseType: !344, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !565, file: !566, line: 59, baseType: !576, size: 32, offset: 160)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !333, line: 23, baseType: !332)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !565, file: !566, line: 60, baseType: !311, size: 128, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !504, file: !463, line: 825, baseType: !311, size: 128, offset: 1728)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !504, file: !463, line: 845, baseType: !46, size: 32, offset: 1856)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !504, file: !463, line: 849, baseType: !227, size: 64, offset: 1920)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !504, file: !463, line: 850, baseType: !227, size: 64, offset: 1984)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !504, file: !463, line: 852, baseType: !227, size: 64, offset: 2048)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !504, file: !463, line: 853, baseType: !227, size: 64, offset: 2112)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !504, file: !463, line: 854, baseType: !556, size: 64, offset: 2176)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !504, file: !463, line: 855, baseType: !227, size: 64, offset: 2240)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !504, file: !463, line: 856, baseType: !227, size: 64, offset: 2304)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !504, file: !463, line: 857, baseType: !227, size: 64, offset: 2368)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !504, file: !463, line: 858, baseType: !227, size: 64, offset: 2432)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !504, file: !463, line: 865, baseType: !590, size: 32, offset: 2496)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !591, line: 69, baseType: !592)
!591 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !591, line: 64, size: 32, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !592, file: !591, line: 65, baseType: !7, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !504, file: !463, line: 867, baseType: !324, size: 32, offset: 2528)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !504, file: !463, line: 869, baseType: !227, size: 64, offset: 2560)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !504, file: !463, line: 869, baseType: !227, size: 64, offset: 2624)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !504, file: !463, line: 869, baseType: !227, size: 64, offset: 2688)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !504, file: !463, line: 869, baseType: !227, size: 64, offset: 2752)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !504, file: !463, line: 870, baseType: !227, size: 64, offset: 2816)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !504, file: !463, line: 870, baseType: !227, size: 64, offset: 2880)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !504, file: !463, line: 870, baseType: !227, size: 64, offset: 2944)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !504, file: !463, line: 871, baseType: !227, size: 64, offset: 3008)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !504, file: !463, line: 871, baseType: !227, size: 64, offset: 3072)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !504, file: !463, line: 871, baseType: !227, size: 64, offset: 3136)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !504, file: !463, line: 871, baseType: !227, size: 64, offset: 3200)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !504, file: !463, line: 873, baseType: !608, size: 3328, offset: 3264)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 3328, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 52)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !504, file: !463, line: 875, baseType: !612, size: 1280, offset: 6592)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 1280, elements: !623)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !614, line: 22, size: 320, elements: !615)
!614 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!615 = !{!616, !617, !618, !619}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !613, file: !614, line: 23, baseType: !576, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !613, file: !614, line: 24, baseType: !560, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !613, file: !614, line: 26, baseType: !311, size: 128, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !613, file: !614, line: 28, baseType: !620, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !231, line: 20, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !233, line: 26, baseType: !46)
!623 = !{!624}
!624 = !DISubrange(count: 4)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !504, file: !463, line: 877, baseType: !626, size: 64, offset: 7872)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !463, line: 877, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !504, file: !463, line: 880, baseType: !629, size: 1088, offset: 7936)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !630, line: 72, baseType: !631)
!630 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !630, line: 23, size: 1088, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !640, !641, !649, !650, !677, !678, !679}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !631, file: !630, line: 28, baseType: !548, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !631, file: !630, line: 38, baseType: !556, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !631, file: !630, line: 40, baseType: !227, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !631, file: !630, line: 43, baseType: !565, size: 320, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !631, file: !630, line: 44, baseType: !638, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !630, line: 44, flags: DIFlagFwdDecl)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !630, line: 48, baseType: !227, size: 64, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !631, file: !630, line: 59, baseType: !642, size: 256, offset: 640)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !643, line: 66, size: 256, elements: !644)
!643 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!644 = !{!645, !646, !647, !648}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !642, file: !643, line: 67, baseType: !554, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !642, file: !643, line: 68, baseType: !576, size: 32, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !642, file: !643, line: 70, baseType: !571, size: 32, offset: 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !642, file: !643, line: 72, baseType: !311, size: 128, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !631, file: !630, line: 60, baseType: !224, size: 64, offset: 896)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !631, file: !630, line: 61, baseType: !651, size: 64, offset: 960)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !654, line: 13, size: 1216, elements: !655)
!654 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!655 = !{!656, !657, !658, !659, !660, !661, !662, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !653, file: !654, line: 14, baseType: !224, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !653, file: !654, line: 15, baseType: !227, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !653, file: !654, line: 17, baseType: !227, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !653, file: !654, line: 17, baseType: !227, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !653, file: !654, line: 18, baseType: !227, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !653, file: !654, line: 18, baseType: !227, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !653, file: !654, line: 19, baseType: !663, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !653, file: !654, line: 21, baseType: !234, size: 64, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !653, file: !654, line: 23, baseType: !234, size: 64, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !653, file: !654, line: 24, baseType: !234, size: 64, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !653, file: !654, line: 25, baseType: !234, size: 64, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !653, file: !654, line: 26, baseType: !234, size: 64, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !653, file: !654, line: 27, baseType: !234, size: 64, offset: 768)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !653, file: !654, line: 28, baseType: !234, size: 64, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !653, file: !654, line: 29, baseType: !234, size: 64, offset: 896)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !653, file: !654, line: 30, baseType: !234, size: 64, offset: 960)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !653, file: !654, line: 31, baseType: !234, size: 64, offset: 1024)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !653, file: !654, line: 32, baseType: !234, size: 64, offset: 1088)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !653, file: !654, line: 33, baseType: !234, size: 64, offset: 1152)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !631, file: !630, line: 63, baseType: !344, size: 32, offset: 1024)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !631, file: !630, line: 69, baseType: !360, size: 16, offset: 1056)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !631, file: !630, line: 70, baseType: !680, size: 16, offset: 1072)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !231, line: 18, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !233, line: 23, baseType: !682)
!682 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !504, file: !463, line: 882, baseType: !227, size: 64, offset: 9024)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !504, file: !463, line: 885, baseType: !324, size: 32, offset: 9088)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !504, file: !463, line: 886, baseType: !686, size: 64, offset: 9152)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !463, line: 732, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !504, file: !463, line: 901, baseType: !689, size: 64, offset: 9216)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !691, line: 18, flags: DIFlagFwdDecl)
!691 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!692 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !504, file: !463, line: 904, baseType: !468, size: 64, offset: 9280)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !504, file: !463, line: 906, baseType: !694, size: 64, offset: 9344)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !463, line: 906, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !504, file: !463, line: 930, baseType: !344, size: 32, offset: 9408)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !504, file: !463, line: 933, baseType: !344, size: 32, offset: 9440)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !504, file: !463, line: 935, baseType: !699, size: 64, offset: 9472)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !700, line: 103, size: 64, elements: !701)
!700 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !699, file: !700, line: 104, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !700, line: 101, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !504, file: !463, line: 940, baseType: !554, size: 64, offset: 9536)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !504, file: !463, line: 942, baseType: !707, size: 256, offset: 9600)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !708, line: 98, size: 256, elements: !709)
!708 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!709 = !{!710, !711, !712}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !707, file: !708, line: 99, baseType: !554, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !707, file: !708, line: 100, baseType: !311, size: 128, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !707, file: !708, line: 101, baseType: !713, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !708, line: 21, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !717}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !501, file: !463, line: 986, baseType: !719, offset: 10240)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, elements: !720)
!720 = !{!721}
!721 = !DISubrange(count: -1)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !480, file: !463, line: 640, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !470, line: 297, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !470, line: 297, size: 64, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !724, file: !470, line: 297, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !540, line: 19, baseType: !227)
!728 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !463, line: 646, baseType: !729, size: 64, offset: 256)
!729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !480, file: !463, line: 646, size: 64, elements: !730)
!730 = !{!731, !734}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !729, file: !463, line: 647, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !463, line: 542, baseType: !227)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !729, file: !463, line: 648, baseType: !733, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !480, file: !463, line: 666, baseType: !46, size: 32, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !480, file: !463, line: 667, baseType: !737, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !463, line: 579, size: 320, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !738, file: !463, line: 580, baseType: !565, size: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !480, file: !463, line: 670, baseType: !289, size: 8, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !480, file: !463, line: 681, baseType: !743, size: 256, offset: 512)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !480, file: !463, line: 678, size: 256, elements: !744)
!744 = !{!745, !753}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !743, file: !463, line: 679, baseType: !746, size: 192, align: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !747, line: 5, size: 192, align: 64, elements: !748)
!747 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!748 = !{!749, !750, !752}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !746, file: !747, line: 6, baseType: !227, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !746, file: !747, line: 7, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !746, file: !747, line: 8, baseType: !751, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !743, file: !463, line: 680, baseType: !227, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !480, file: !463, line: 689, baseType: !311, size: 128, offset: 768)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !480, file: !463, line: 691, baseType: !756, size: 64, offset: 896)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !463, line: 691, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !480, file: !463, line: 694, baseType: !759, size: 64, offset: 960)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !463, line: 694, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !480, file: !463, line: 697, baseType: !227, size: 64, offset: 1024)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !480, file: !463, line: 699, baseType: !468, size: 64, offset: 1088)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !480, file: !463, line: 700, baseType: !224, size: 64, offset: 1152)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !480, file: !463, line: 711, baseType: !554, size: 64, offset: 1216)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !480, file: !463, line: 717, baseType: !767, size: 64, offset: 1280)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !463, line: 717, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !480, file: !463, line: 722, baseType: !770, offset: 1344)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !463, line: 570, elements: !521)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !440, file: !417, line: 90, baseType: !772, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !440, file: !417, line: 91, baseType: !774, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !407, file: !213, line: 120, baseType: !776, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!779, !375}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !782)
!782 = !{!783, !784, !788, !792, !798, !802}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !781, file: !6, line: 40, baseType: !5, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !781, file: !6, line: 41, baseType: !785, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!289}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !781, file: !6, line: 42, baseType: !789, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!224}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !781, file: !6, line: 43, baseType: !793, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!663, !796}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !781, file: !6, line: 44, baseType: !799, size: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!663}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !781, file: !6, line: 45, baseType: !803, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !224}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !407, file: !213, line: 121, baseType: !807, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!663, !375}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !407, file: !213, line: 122, baseType: !811, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !375, !814, !821}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !691, line: 23, baseType: !816)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !691, line: 21, size: 32, elements: !817)
!817 = !{!818}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !816, file: !691, line: 22, baseType: !819, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !226, line: 37, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !258, line: 49, baseType: !7)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !691, line: 28, baseType: !823)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !691, line: 26, size: 32, elements: !824)
!824 = !{!825}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !823, file: !691, line: 27, baseType: !826, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !226, line: 38, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !258, line: 50, baseType: !7)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !307, file: !213, line: 70, baseType: !829, size: 64, offset: 384)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !831, line: 190, size: 1152, elements: !832)
!831 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!832 = !{!833, !834, !835, !836, !837, !838, !839, !840, !935, !936, !937, !938, !939, !942}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !830, file: !831, line: 191, baseType: !344, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !830, file: !831, line: 192, baseType: !344, size: 32, offset: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !830, file: !831, line: 202, baseType: !829, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !830, file: !831, line: 203, baseType: !248, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !830, file: !831, line: 205, baseType: !746, size: 192, align: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !830, file: !831, line: 207, baseType: !663, size: 64, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !830, file: !831, line: 208, baseType: !7, size: 32, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !831, line: 209, baseType: !841, size: 256, offset: 512)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !831, line: 209, size: 256, elements: !842)
!842 = !{!843, !855, !859}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !841, file: !831, line: 210, baseType: !844, size: 256)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !831, line: 153, size: 256, elements: !845)
!845 = !{!846, !847, !851, !854}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !844, file: !831, line: 154, baseType: !227, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !844, file: !831, line: 156, baseType: !848, size: 64, offset: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !747, line: 12, size: 64, elements: !849)
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !848, file: !747, line: 13, baseType: !751, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !844, file: !831, line: 162, baseType: !852, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !831, line: 162, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !844, file: !831, line: 167, baseType: !227, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !841, file: !831, line: 211, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !831, line: 170, size: 64, elements: !857)
!857 = !{!858}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !856, file: !831, line: 171, baseType: !829, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !841, file: !831, line: 212, baseType: !860, size: 256)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !831, line: 174, size: 256, elements: !861)
!861 = !{!862, !930, !933, !934}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !860, file: !831, line: 175, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !865)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !831, line: 271, size: 768, elements: !866)
!866 = !{!867, !890, !894, !898, !903, !907, !911, !915, !916, !917, !918, !926}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !865, file: !831, line: 276, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!46, !871}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !831, line: 251, size: 1216, elements: !873)
!873 = !{!874, !875, !876, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !872, file: !831, line: 253, baseType: !829, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !872, file: !831, line: 254, baseType: !468, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !872, file: !831, line: 255, baseType: !877, size: 64, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !879, line: 66, flags: DIFlagFwdDecl)
!879 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!880 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !872, file: !831, line: 256, baseType: !224, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !872, file: !831, line: 259, baseType: !642, size: 256, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !872, file: !831, line: 260, baseType: !642, size: 256, offset: 512)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !872, file: !831, line: 261, baseType: !46, size: 32, offset: 768)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !872, file: !831, line: 262, baseType: !311, size: 128, offset: 832)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !872, file: !831, line: 263, baseType: !294, size: 64, offset: 960)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !872, file: !831, line: 265, baseType: !256, size: 64, offset: 1024)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !872, file: !831, line: 266, baseType: !289, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !872, file: !831, line: 267, baseType: !289, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !872, file: !831, line: 268, baseType: !759, size: 64, offset: 1152)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !865, file: !831, line: 277, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !871}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !865, file: !831, line: 290, baseType: !895, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!46, !877, !224}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !865, file: !831, line: 292, baseType: !899, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!224, !877, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !865, file: !831, line: 293, baseType: !904, size: 64, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!224, !877, !224, !902}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !865, file: !831, line: 294, baseType: !908, size: 64, offset: 320)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !877, !224}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !865, file: !831, line: 296, baseType: !912, size: 64, offset: 384)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!423, !871, !294, !256, !471}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !865, file: !831, line: 306, baseType: !256, size: 64, offset: 448)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !865, file: !831, line: 313, baseType: !289, size: 8, offset: 512)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !865, file: !831, line: 314, baseType: !912, size: 64, offset: 576)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !865, file: !831, line: 317, baseType: !919, size: 64, offset: 640)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!922, !871, !924}
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !923, line: 59, baseType: !7)
!923 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !831, line: 31, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !865, file: !831, line: 320, baseType: !927, size: 64, offset: 704)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!46, !871, !479}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !860, file: !831, line: 176, baseType: !931, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !831, line: 35, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !860, file: !831, line: 177, baseType: !471, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !860, file: !831, line: 178, baseType: !829, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !830, file: !831, line: 215, baseType: !224, size: 64, offset: 768)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !830, file: !831, line: 221, baseType: !548, size: 64, offset: 832)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !830, file: !831, line: 223, baseType: !362, size: 16, offset: 896)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !830, file: !831, line: 224, baseType: !431, size: 16, offset: 912)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !830, file: !831, line: 225, baseType: !940, size: 64, offset: 960)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !831, line: 36, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !830, file: !831, line: 227, baseType: !491, size: 128, align: 64, offset: 1024)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !307, file: !213, line: 71, baseType: !944, size: 32, offset: 448)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !945, line: 19, size: 32, elements: !946)
!945 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!946 = !{!947}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !944, file: !945, line: 20, baseType: !948, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !949, line: 113, baseType: !950)
!949 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !949, line: 111, size: 32, elements: !951)
!951 = !{!952}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !950, file: !949, line: 112, baseType: !344, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !307, file: !213, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !307, file: !213, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !307, file: !213, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !307, file: !213, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !307, file: !213, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !304, file: !26, line: 707, baseType: !959, size: 64, offset: 512)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !304, file: !26, line: 709, baseType: !961, size: 64, offset: 576)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !304, file: !26, line: 711, baseType: !248, size: 64, offset: 640)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !304, file: !26, line: 712, baseType: !965, size: 64, offset: 704)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !968)
!968 = !{!969, !970, !971, !977, !982, !986}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !967, file: !26, line: 90, baseType: !248, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !967, file: !26, line: 91, baseType: !437, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !967, file: !26, line: 92, baseType: !972, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!46, !975, !387}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !967, file: !26, line: 93, baseType: !978, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!294, !975, !981, !814, !821}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !967, file: !26, line: 95, baseType: !983, size: 64, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !959}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !967, file: !26, line: 97, baseType: !987, size: 64, offset: 320)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !990)
!990 = !{!991, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !989, file: !38, line: 287, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!46, !959}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !989, file: !38, line: 288, baseType: !983, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !989, file: !38, line: 289, baseType: !992, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !989, file: !38, line: 290, baseType: !992, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !989, file: !38, line: 291, baseType: !992, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !989, file: !38, line: 292, baseType: !992, size: 64, offset: 320)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !989, file: !38, line: 293, baseType: !992, size: 64, offset: 384)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !989, file: !38, line: 294, baseType: !992, size: 64, offset: 448)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !989, file: !38, line: 295, baseType: !992, size: 64, offset: 512)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !989, file: !38, line: 296, baseType: !992, size: 64, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !989, file: !38, line: 297, baseType: !992, size: 64, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !989, file: !38, line: 298, baseType: !992, size: 64, offset: 704)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !989, file: !38, line: 299, baseType: !992, size: 64, offset: 768)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !989, file: !38, line: 300, baseType: !992, size: 64, offset: 832)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !989, file: !38, line: 301, baseType: !992, size: 64, offset: 896)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !989, file: !38, line: 302, baseType: !992, size: 64, offset: 960)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !989, file: !38, line: 303, baseType: !992, size: 64, offset: 1024)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !989, file: !38, line: 304, baseType: !992, size: 64, offset: 1088)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !989, file: !38, line: 305, baseType: !992, size: 64, offset: 1152)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !989, file: !38, line: 306, baseType: !992, size: 64, offset: 1216)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !989, file: !38, line: 307, baseType: !992, size: 64, offset: 1280)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !989, file: !38, line: 308, baseType: !992, size: 64, offset: 1344)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !989, file: !38, line: 309, baseType: !992, size: 64, offset: 1408)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !304, file: !26, line: 714, baseType: !1018, size: 64, offset: 768)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1021, line: 80, size: 1344, elements: !1022)
!1021 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1022 = !{!1023, !1024, !1025, !1026, !1027, !1028, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1482}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1020, file: !1021, line: 81, baseType: !248, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1020, file: !1021, line: 82, baseType: !248, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1020, file: !1021, line: 83, baseType: !437, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1020, file: !1021, line: 84, baseType: !437, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1020, file: !1021, line: 85, baseType: !437, size: 64, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1020, file: !1021, line: 87, baseType: !1029, size: 64, offset: 320)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!46, !959, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1413, !1414, !1415, !1416, !1432, !1445, !1446, !1447, !1448, !1449, !1457, !1458, !1459, !1460, !1461, !1462}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1033, file: !20, line: 97, baseType: !248, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1033, file: !20, line: 98, baseType: !1018, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1033, file: !20, line: 100, baseType: !1038, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1047, !1068, !1094, !1095, !1096, !1097, !1101, !1104, !1105, !1106, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1169, !1173, !1193, !1211, !1212, !1213, !1214, !1223, !1246, !1247, !1250, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1264, !1265, !1371, !1379, !1380, !1381, !1383, !1387, !1388, !1392, !1393, !1394, !1395, !1397, !1398, !1399, !1406, !1407, !1408, !1412}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1039, file: !13, line: 403, baseType: !12, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1039, file: !13, line: 406, baseType: !311, size: 128, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1039, file: !13, line: 409, baseType: !1044, size: 448, offset: 192)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 448, elements: !1045)
!1045 = !{!1046}
!1046 = !DISubrange(count: 56)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1039, file: !13, line: 417, baseType: !1048, size: 768, offset: 640)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1056}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1048, file: !13, line: 46, baseType: !307, size: 512)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1048, file: !13, line: 47, baseType: !1038, size: 64, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1048, file: !13, line: 48, baseType: !317, size: 64, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1048, file: !13, line: 49, baseType: !1054, size: 64, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1048, file: !13, line: 50, baseType: !1057, size: 64, offset: 704)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1059, line: 26, size: 256, elements: !1060)
!1059 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1058, file: !1059, line: 27, baseType: !7, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1058, file: !1059, line: 28, baseType: !1063, size: 192, offset: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1064, line: 43, size: 192, elements: !1065)
!1064 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1063, file: !1064, line: 44, baseType: !576, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1063, file: !1064, line: 45, baseType: !311, size: 128, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1039, file: !13, line: 418, baseType: !1069, size: 64, offset: 1408)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !1071)
!1071 = !{!1072, !1073, !1078, !1082, !1086, !1090}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1070, file: !13, line: 54, baseType: !427, size: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1070, file: !13, line: 55, baseType: !1074, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!423, !1069, !1077, !294}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1070, file: !13, line: 57, baseType: !1079, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!423, !1069, !1077, !248, !256}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1070, file: !13, line: 59, baseType: !1083, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !1038, !248}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1070, file: !13, line: 60, baseType: !1087, size: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!46, !1038}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1070, file: !13, line: 61, baseType: !1091, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{null, !1038}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1039, file: !13, line: 419, baseType: !248, size: 64, offset: 1472)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1039, file: !13, line: 420, baseType: !248, size: 64, offset: 1536)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1039, file: !13, line: 421, baseType: !317, size: 64, offset: 1600)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1039, file: !13, line: 424, baseType: !1098, size: 64, offset: 1664)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1100)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1039, file: !13, line: 425, baseType: !1102, size: 64, offset: 1728)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1039, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1039, file: !13, line: 435, baseType: !642, size: 256, offset: 1856)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1039, file: !13, line: 437, baseType: !1107, size: 64, offset: 2112)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1109, line: 69, size: 320, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1110 = !{!1111, !1112, !1113, !1130, !1132, !1136, !1137}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1108, file: !1109, line: 70, baseType: !248, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1108, file: !1109, line: 71, baseType: !1038, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1108, file: !1109, line: 72, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1109, line: 47, size: 256, elements: !1117)
!1117 = !{!1118, !1119, !1125, !1129}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1116, file: !1109, line: 49, baseType: !7, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1116, file: !1109, line: 51, baseType: !1120, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!46, !248, !1123}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1108)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1116, file: !1109, line: 53, baseType: !1126, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!46, !294, !1123}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1116, file: !1109, line: 55, baseType: !803, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1108, file: !1109, line: 73, baseType: !1131, size: 16, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1108, file: !1109, line: 74, baseType: !1133, size: 8, offset: 208)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !231, line: 16, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !233, line: 20, baseType: !1135)
!1135 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1108, file: !1109, line: 75, baseType: !352, size: 8, offset: 216)
!1137 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !1109, line: 76, baseType: !1138, size: 64, offset: 256)
!1138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !1109, line: 76, size: 64, elements: !1139)
!1139 = !{!1140, !1141, !1148}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1138, file: !1109, line: 77, baseType: !224, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1138, file: !1109, line: 78, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1144)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1109, line: 86, size: 128, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1144, file: !1109, line: 87, baseType: !7, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1144, file: !1109, line: 88, baseType: !294, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1138, file: !1109, line: 79, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1151)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1109, line: 92, size: 256, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1157, !1158}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1151, file: !1109, line: 94, baseType: !7, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1151, file: !1109, line: 95, baseType: !7, size: 32, offset: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1151, file: !1109, line: 96, baseType: !1156, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1151, file: !1109, line: 97, baseType: !1114, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1151, file: !1109, line: 98, baseType: !224, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1039, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1039, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1039, file: !13, line: 442, baseType: !1098, size: 64, offset: 2240)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1039, file: !13, line: 443, baseType: !1102, size: 64, offset: 2304)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1039, file: !13, line: 444, baseType: !289, size: 8, offset: 2368)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1039, file: !13, line: 451, baseType: !289, size: 8, offset: 2376)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1039, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1039, file: !13, line: 455, baseType: !1167, size: 64, offset: 2432)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1039, file: !13, line: 458, baseType: !1170, size: 64, offset: 2496)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!46}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1039, file: !13, line: 460, baseType: !1174, size: 4032, align: 512, offset: 2560)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1175, size: 4032, elements: !1191)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1176)
!1176 = !{!1177, !1178, !1179}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1175, file: !13, line: 363, baseType: !224, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1175, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1175, file: !13, line: 367, baseType: !1180, size: 448, offset: 128)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1181)
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1180, file: !13, line: 320, baseType: !1038, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1180, file: !13, line: 321, baseType: !1184, size: 384, offset: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1185, line: 40, size: 384, elements: !1186)
!1185 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1186 = !{!1187}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1184, file: !1185, line: 41, baseType: !1188, size: 384, align: 64)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 384, align: 64, elements: !1189)
!1189 = !{!1190}
!1190 = !DISubrange(count: 2)
!1191 = !{!1192}
!1192 = !DISubrange(count: 7)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1039, file: !13, line: 463, baseType: !1194, size: 192, offset: 6592)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1195, line: 8, size: 192, elements: !1196)
!1195 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1196 = !{!1197, !1198, !1200}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1194, file: !1195, line: 10, baseType: !7, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1194, file: !1195, line: 11, baseType: !1199, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1194, file: !1195, line: 12, baseType: !1201, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1203, line: 59, size: 48, elements: !1204)
!1203 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1204 = !{!1205, !1206, !1207, !1208, !1209, !1210}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1202, file: !1203, line: 60, baseType: !680, size: 16)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1202, file: !1203, line: 61, baseType: !680, size: 16, offset: 16)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1202, file: !1203, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1202, file: !1203, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1202, file: !1203, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1202, file: !1203, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1039, file: !13, line: 465, baseType: !227, size: 64, offset: 6784)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1039, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1039, file: !13, line: 470, baseType: !311, size: 128, offset: 6912)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1039, file: !13, line: 471, baseType: !1215, size: 64, offset: 7040)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1217, line: 33, size: 96, elements: !1218)
!1217 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1218 = !{!1219, !1220, !1221, !1222}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1216, file: !1217, line: 37, baseType: !46, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1216, file: !1217, line: 43, baseType: !46, size: 32, offset: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1216, file: !1217, line: 45, baseType: !362, size: 16, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !1217, line: 47, baseType: !362, size: 16, offset: 80)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1039, file: !13, line: 476, baseType: !1224, size: 64, offset: 7104)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1226)
!1226 = !{!1227, !1243, !1244, !1245}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1225, file: !13, line: 379, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1230, line: 204, baseType: !1231)
!1230 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1230, line: 197, size: 192, elements: !1232)
!1232 = !{!1233, !1235, !1236, !1237, !1239, !1241}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1231, file: !1230, line: 198, baseType: !1234, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1230, line: 21, baseType: !232)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1231, file: !1230, line: 199, baseType: !354, size: 8, offset: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1231, file: !1230, line: 200, baseType: !354, size: 8, offset: 40)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1231, file: !1230, line: 201, baseType: !1238, size: 16, offset: 48)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1230, line: 17, baseType: !361)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1231, file: !1230, line: 202, baseType: !1240, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1230, line: 16, baseType: !549)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1231, file: !1230, line: 203, baseType: !1242, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1230, line: 22, baseType: !549)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1225, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1225, file: !13, line: 381, baseType: !294, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1225, file: !13, line: 382, baseType: !294, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1039, file: !13, line: 477, baseType: !1225, size: 256, offset: 7168)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1039, file: !13, line: 480, baseType: !1248, size: 64, offset: 7424)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1039, file: !13, line: 483, baseType: !1251, size: 64, offset: 7488)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1039, file: !13, line: 488, baseType: !294, size: 64, offset: 7552)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1039, file: !13, line: 492, baseType: !224, size: 64, offset: 7616)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1039, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1039, file: !13, line: 495, baseType: !224, size: 64, offset: 7744)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1039, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1039, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1039, file: !13, line: 500, baseType: !1260, size: 64, offset: 7872)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1262, line: 45, baseType: !1263)
!1262 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1039, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1039, file: !13, line: 504, baseType: !1266, size: 64, offset: 8000)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1269, line: 96, size: 192, elements: !1270)
!1269 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1270 = !{!1271, !1272, !1332, !1335}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1268, file: !1269, line: 97, baseType: !7, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1268, file: !1269, line: 98, baseType: !1273, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1269, line: 24, size: 3072, elements: !1275)
!1275 = !{!1276, !1278, !1279, !1280, !1281, !1295, !1296, !1297, !1298, !1316, !1317, !1318, !1329, !1330, !1331}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1274, file: !1269, line: 26, baseType: !1277, size: 128)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 128, elements: !1189)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1274, file: !1269, line: 27, baseType: !1277, size: 128, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1274, file: !1269, line: 28, baseType: !46, size: 32, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1274, file: !1269, line: 31, baseType: !324, size: 32, align: 512, offset: 512)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1274, file: !1269, line: 32, baseType: !1282, size: 960, offset: 576)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1283, line: 206, size: 960, elements: !1284)
!1283 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1284 = !{!1285, !1286, !1289, !1291, !1292, !1294}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1282, file: !1283, line: 207, baseType: !494, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1282, file: !1283, line: 208, baseType: !1287, size: 256, offset: 64)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1288, size: 256, elements: !623)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1282, file: !1283, line: 209, baseType: !1290, size: 256, offset: 320)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 256, elements: !623)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1282, file: !1283, line: 213, baseType: !234, size: 64, offset: 576)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1282, file: !1283, line: 215, baseType: !1293, size: 256, offset: 640)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 256, elements: !623)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1282, file: !1283, line: 216, baseType: !352, size: 8, offset: 896)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1274, file: !1269, line: 33, baseType: !227, size: 64, offset: 1536)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1274, file: !1269, line: 34, baseType: !227, size: 64, offset: 1600)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1274, file: !1269, line: 35, baseType: !289, size: 8, offset: 1664)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1274, file: !1269, line: 36, baseType: !1299, size: 320, offset: 1728)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1300, line: 11, size: 320, elements: !1301)
!1300 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1301 = !{!1302, !1309, !1310, !1315}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1299, file: !1300, line: 16, baseType: !1303, size: 128)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !226, line: 198, size: 128, elements: !1304)
!1304 = !{!1305, !1307}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1303, file: !226, line: 199, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1303, file: !226, line: 199, baseType: !1308, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1299, file: !1300, line: 17, baseType: !227, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1299, file: !1300, line: 18, baseType: !1311, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !1314}
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1299, file: !1300, line: 19, baseType: !230, size: 32, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1274, file: !1269, line: 37, baseType: !707, size: 256, offset: 2048)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1274, file: !1269, line: 38, baseType: !491, size: 128, align: 64, offset: 2304)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1274, file: !1269, line: 39, baseType: !1319, size: 64, offset: 2432)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1269, line: 49, size: 768, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327, !1328}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1320, file: !1269, line: 50, baseType: !324, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1320, file: !1269, line: 51, baseType: !1290, size: 256, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1320, file: !1269, line: 53, baseType: !1290, size: 256, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1320, file: !1269, line: 54, baseType: !227, size: 64, offset: 576)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1320, file: !1269, line: 55, baseType: !1319, size: 64, offset: 640)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1320, file: !1269, line: 56, baseType: !46, size: 32, offset: 704)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1320, file: !1269, line: 57, baseType: !46, size: 32, offset: 736)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1274, file: !1269, line: 40, baseType: !227, size: 64, offset: 2496)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1274, file: !1269, line: 42, baseType: !46, size: 32, offset: 2560)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1274, file: !1269, line: 43, baseType: !1267, size: 64, offset: 2624)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1268, file: !1269, line: 99, baseType: !1333, offset: 128)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1334, line: 211, elements: !521)
!1334 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1268, file: !1269, line: 100, baseType: !1336, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1269, line: 63, size: 3008, elements: !1338)
!1338 = !{!1339, !1340, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1370}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1337, file: !1269, line: 64, baseType: !1319, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1337, file: !1269, line: 65, baseType: !1341, size: 192, offset: 64)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1319, size: 192, elements: !392)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1337, file: !1269, line: 67, baseType: !46, size: 32, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1337, file: !1269, line: 68, baseType: !642, size: 256, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1337, file: !1269, line: 69, baseType: !324, size: 32, offset: 576)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1337, file: !1269, line: 70, baseType: !642, size: 256, offset: 640)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1337, file: !1269, line: 71, baseType: !227, size: 64, offset: 896)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1337, file: !1269, line: 72, baseType: !227, size: 64, offset: 960)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1337, file: !1269, line: 73, baseType: !227, size: 64, offset: 1024)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1337, file: !1269, line: 74, baseType: !227, size: 64, offset: 1088)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1337, file: !1269, line: 75, baseType: !227, size: 64, offset: 1152)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1337, file: !1269, line: 76, baseType: !227, size: 64, offset: 1216)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1337, file: !1269, line: 77, baseType: !227, size: 64, offset: 1280)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1337, file: !1269, line: 78, baseType: !227, size: 64, offset: 1344)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1337, file: !1269, line: 79, baseType: !289, size: 8, offset: 1408)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1337, file: !1269, line: 80, baseType: !227, size: 64, offset: 1472)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1337, file: !1269, line: 81, baseType: !642, size: 256, offset: 1536)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1337, file: !1269, line: 82, baseType: !1058, size: 256, offset: 1792)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1337, file: !1269, line: 84, baseType: !344, size: 32, offset: 2048)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1337, file: !1269, line: 87, baseType: !227, size: 64, offset: 2112)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1337, file: !1269, line: 88, baseType: !227, size: 64, offset: 2176)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1337, file: !1269, line: 89, baseType: !1362, size: 704, offset: 2240)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !708, line: 111, size: 704, elements: !1363)
!1363 = !{!1364, !1365, !1366, !1369}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1362, file: !708, line: 112, baseType: !707, size: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1362, file: !708, line: 113, baseType: !1299, size: 320, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1362, file: !708, line: 116, baseType: !1367, size: 64, offset: 576)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !708, line: 18, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1362, file: !708, line: 117, baseType: !46, size: 32, offset: 640)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1337, file: !1269, line: 90, baseType: !1267, size: 64, offset: 2944)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1039, file: !13, line: 515, baseType: !1372, size: 64, offset: 8064)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1374, line: 117, size: 128, elements: !1375)
!1374 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1375 = !{!1376, !1377, !1378}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1373, file: !1374, line: 118, baseType: !621, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1373, file: !1374, line: 119, baseType: !621, size: 32, offset: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1373, file: !1374, line: 120, baseType: !234, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1039, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1039, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1039, file: !13, line: 520, baseType: !1382, size: 64, offset: 8192)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1039, file: !13, line: 523, baseType: !1384, size: 64, offset: 8256)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1039, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1039, file: !13, line: 525, baseType: !1389, size: 64, offset: 8384)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1039, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1039, file: !13, line: 533, baseType: !224, size: 64, offset: 8512)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1039, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1039, file: !13, line: 535, baseType: !1396, size: 64, offset: 8640)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1039, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1039, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1039, file: !13, line: 540, baseType: !1400, size: 64, offset: 8768)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1402, line: 32, size: 64, elements: !1403)
!1402 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1401, file: !1402, line: 33, baseType: !621, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1401, file: !1402, line: 34, baseType: !621, size: 32, offset: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1039, file: !13, line: 563, baseType: !311, size: 128, offset: 8832)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1039, file: !13, line: 565, baseType: !311, size: 128, offset: 8960)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1039, file: !13, line: 568, baseType: !1409, size: 64, offset: 9088)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1039, file: !13, line: 570, baseType: !344, size: 32, offset: 9152)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1033, file: !20, line: 101, baseType: !248, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1033, file: !20, line: 103, baseType: !289, size: 8, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1033, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1033, file: !20, line: 106, baseType: !1417, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1420, line: 282, size: 1600, elements: !1421)
!1420 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1421 = !{!1422, !1426, !1427, !1431}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1419, file: !1420, line: 283, baseType: !1423, size: 256)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 256, elements: !1424)
!1424 = !{!1425}
!1425 = !DISubrange(count: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1419, file: !1420, line: 284, baseType: !1423, size: 256, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1419, file: !1420, line: 285, baseType: !1428, size: 1024, offset: 512)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 1024, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1419, file: !1420, line: 286, baseType: !663, size: 64, offset: 1536)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1033, file: !20, line: 107, baseType: !1433, size: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1435)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1420, line: 217, size: 256, elements: !1436)
!1436 = !{!1437, !1441, !1443, !1444}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1435, file: !1420, line: 218, baseType: !1438, size: 128)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 128, elements: !1439)
!1439 = !{!1440}
!1440 = !DISubrange(count: 16)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1435, file: !1420, line: 219, baseType: !1442, size: 64, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1420, line: 15, baseType: !227)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1435, file: !1420, line: 220, baseType: !232, size: 32, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1435, file: !1420, line: 221, baseType: !232, size: 32, offset: 224)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1033, file: !20, line: 109, baseType: !992, size: 64, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1033, file: !20, line: 110, baseType: !983, size: 64, offset: 512)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1033, file: !20, line: 111, baseType: !992, size: 64, offset: 576)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1033, file: !20, line: 112, baseType: !983, size: 64, offset: 640)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1033, file: !20, line: 113, baseType: !1450, size: 64, offset: 704)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!46, !959, !1453}
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1454)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1455)
!1455 = !{!1456}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1454, file: !38, line: 59, baseType: !46, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1033, file: !20, line: 114, baseType: !992, size: 64, offset: 768)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1033, file: !20, line: 115, baseType: !437, size: 64, offset: 832)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1033, file: !20, line: 116, baseType: !437, size: 64, offset: 896)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1033, file: !20, line: 118, baseType: !987, size: 64, offset: 960)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1033, file: !20, line: 119, baseType: !983, size: 64, offset: 1024)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1033, file: !20, line: 121, baseType: !1463, size: 64, offset: 1088)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1020, file: !1021, line: 88, baseType: !972, size: 64, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1020, file: !1021, line: 89, baseType: !992, size: 64, offset: 448)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1020, file: !1021, line: 90, baseType: !983, size: 64, offset: 512)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1020, file: !1021, line: 91, baseType: !983, size: 64, offset: 576)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1020, file: !1021, line: 92, baseType: !983, size: 64, offset: 640)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1020, file: !1021, line: 94, baseType: !992, size: 64, offset: 704)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1020, file: !1021, line: 95, baseType: !992, size: 64, offset: 768)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1020, file: !1021, line: 97, baseType: !1450, size: 64, offset: 832)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1020, file: !1021, line: 98, baseType: !992, size: 64, offset: 896)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1020, file: !1021, line: 100, baseType: !992, size: 64, offset: 960)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1020, file: !1021, line: 102, baseType: !992, size: 64, offset: 1024)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1020, file: !1021, line: 103, baseType: !983, size: 64, offset: 1088)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1020, file: !1021, line: 105, baseType: !987, size: 64, offset: 1152)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1020, file: !1021, line: 107, baseType: !1479, size: 64, offset: 1216)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1481)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1021, line: 107, flags: DIFlagFwdDecl)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1020, file: !1021, line: 109, baseType: !289, size: 8, offset: 1280)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !304, file: !26, line: 715, baseType: !1032, size: 64, offset: 832)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !304, file: !26, line: 717, baseType: !224, size: 64, offset: 896)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !304, file: !26, line: 719, baseType: !224, size: 64, offset: 960)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !304, file: !26, line: 721, baseType: !642, size: 256, offset: 1024)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !304, file: !26, line: 725, baseType: !1488, size: 448, offset: 1280)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1488, file: !26, line: 518, baseType: !311, size: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1488, file: !26, line: 519, baseType: !311, size: 128, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1488, file: !26, line: 520, baseType: !311, size: 128, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1488, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !304, file: !26, line: 726, baseType: !1495, size: 2496, offset: 1728)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1541, !1542, !1543, !1544, !1545, !1546, !1617, !1618, !1619, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1657, !1661}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1495, file: !38, line: 664, baseType: !1453, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1495, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1495, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1495, file: !38, line: 667, baseType: !289, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1495, file: !38, line: 668, baseType: !289, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1495, file: !38, line: 669, baseType: !289, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1495, file: !38, line: 670, baseType: !289, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1495, file: !38, line: 671, baseType: !289, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1495, file: !38, line: 672, baseType: !289, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1495, file: !38, line: 673, baseType: !289, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1495, file: !38, line: 674, baseType: !289, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1495, file: !38, line: 675, baseType: !230, size: 32, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1495, file: !38, line: 676, baseType: !324, size: 32, offset: 96)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1495, file: !38, line: 678, baseType: !311, size: 128, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1495, file: !38, line: 679, baseType: !1058, size: 256, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1495, file: !38, line: 680, baseType: !1513, size: 64, offset: 512)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1515, line: 43, size: 1536, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1516 = !{!1517, !1518, !1519, !1520, !1521, !1524, !1525, !1526, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1514, file: !1515, line: 44, baseType: !248, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1514, file: !1515, line: 45, baseType: !46, size: 32, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1514, file: !1515, line: 46, baseType: !311, size: 128, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1514, file: !1515, line: 47, baseType: !324, size: 32, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1514, file: !1515, line: 48, baseType: !1522, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1514, file: !1515, line: 49, baseType: !1299, size: 320, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1514, file: !1515, line: 50, baseType: !227, size: 64, offset: 704)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1514, file: !1515, line: 51, baseType: !1527, size: 64, offset: 768)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1528, line: 29, baseType: !560)
!1528 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1514, file: !1515, line: 52, baseType: !1527, size: 64, offset: 832)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1514, file: !1515, line: 53, baseType: !1527, size: 64, offset: 896)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1514, file: !1515, line: 54, baseType: !1527, size: 64, offset: 960)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1514, file: !1515, line: 55, baseType: !1527, size: 64, offset: 1024)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1514, file: !1515, line: 56, baseType: !227, size: 64, offset: 1088)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1514, file: !1515, line: 57, baseType: !227, size: 64, offset: 1152)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1514, file: !1515, line: 58, baseType: !227, size: 64, offset: 1216)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1514, file: !1515, line: 59, baseType: !227, size: 64, offset: 1280)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1514, file: !1515, line: 60, baseType: !227, size: 64, offset: 1344)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1514, file: !1515, line: 61, baseType: !959, size: 64, offset: 1408)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1514, file: !1515, line: 62, baseType: !289, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1514, file: !1515, line: 63, baseType: !289, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1495, file: !38, line: 681, baseType: !289, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1495, file: !38, line: 682, baseType: !289, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1495, file: !38, line: 683, baseType: !289, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1495, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1495, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1495, file: !38, line: 690, baseType: !1547, size: 512, offset: 640)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1548)
!1548 = !{!1549, !1555, !1556, !1561, !1613, !1614, !1615, !1616}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1547, file: !33, line: 119, baseType: !1550, size: 256)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1551, line: 9, size: 256, elements: !1552)
!1551 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1550, file: !1551, line: 10, baseType: !746, size: 192, align: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1550, file: !1551, line: 11, baseType: !1527, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1547, file: !33, line: 120, baseType: !1527, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1547, file: !33, line: 121, baseType: !1557, size: 64, offset: 320)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!32, !1560}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1547, file: !33, line: 122, baseType: !1562, size: 64, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1564)
!1564 = !{!1565, !1590, !1591, !1594, !1599, !1600, !1608, !1612}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1563, file: !33, line: 160, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1567, file: !33, line: 216, baseType: !576, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1567, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1567, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1567, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1567, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1567, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1567, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1567, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1567, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1567, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1567, file: !33, line: 227, baseType: !362, size: 16, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1567, file: !33, line: 228, baseType: !362, size: 16, offset: 208)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1567, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1567, file: !33, line: 235, baseType: !1527, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1567, file: !33, line: 236, baseType: !1560, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1567, file: !33, line: 237, baseType: !1527, size: 64, offset: 384)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1567, file: !33, line: 238, baseType: !1560, size: 64, offset: 448)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1567, file: !33, line: 239, baseType: !1587, size: 4096, align: 512, offset: 512)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1563, size: 4096, align: 512, elements: !1588)
!1588 = !{!1589}
!1589 = !DISubrange(count: 8)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1563, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1563, file: !33, line: 162, baseType: !1592, size: 32, offset: 96)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !226, line: 32, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !258, line: 96, baseType: !46)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1563, file: !33, line: 163, baseType: !1595, size: 32, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !591, line: 274, baseType: !1596)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !591, line: 274, size: 32, elements: !1597)
!1597 = !{!1598}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1596, file: !591, line: 274, baseType: !590, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1563, file: !33, line: 164, baseType: !1560, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1563, file: !33, line: 165, baseType: !1601, size: 128, offset: 256)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1551, line: 14, size: 128, elements: !1602)
!1602 = !{!1603}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1601, file: !1551, line: 15, baseType: !1604, size: 128)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !747, line: 26, size: 128, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1604, file: !747, line: 27, baseType: !848, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1604, file: !747, line: 28, baseType: !751, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1563, file: !33, line: 166, baseType: !1609, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!1527}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1563, file: !33, line: 167, baseType: !1527, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1547, file: !33, line: 123, baseType: !352, size: 8, offset: 448)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1547, file: !33, line: 124, baseType: !352, size: 8, offset: 456)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1547, file: !33, line: 125, baseType: !352, size: 8, offset: 464)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1547, file: !33, line: 126, baseType: !352, size: 8, offset: 472)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1495, file: !38, line: 691, baseType: !548, size: 64, offset: 1152)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1495, file: !38, line: 692, baseType: !707, size: 256, offset: 1216)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1495, file: !38, line: 693, baseType: !1620, size: 192, offset: 1472)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1621, line: 41, baseType: !1622)
!1621 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1621, line: 37, size: 192, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1622, file: !1621, line: 38, baseType: !324, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1622, file: !1621, line: 39, baseType: !311, size: 128, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1495, file: !38, line: 694, baseType: !1522, size: 64, offset: 1664)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1495, file: !38, line: 695, baseType: !344, size: 32, offset: 1728)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1495, file: !38, line: 696, baseType: !344, size: 32, offset: 1760)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1495, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1495, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1495, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1495, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1495, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1495, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1495, file: !38, line: 703, baseType: !289, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1495, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1495, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1495, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1495, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1495, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1495, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1495, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1495, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1495, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1495, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1495, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1495, file: !38, line: 715, baseType: !548, size: 64, offset: 2048)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1495, file: !38, line: 716, baseType: !548, size: 64, offset: 2112)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1495, file: !38, line: 717, baseType: !548, size: 64, offset: 2176)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1495, file: !38, line: 718, baseType: !548, size: 64, offset: 2240)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1495, file: !38, line: 720, baseType: !1652, size: 64, offset: 2304)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1654)
!1654 = !{!1655, !1656}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1653, file: !38, line: 633, baseType: !324, size: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1653, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1495, file: !38, line: 721, baseType: !1658, size: 64, offset: 2368)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !959, !621}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1495, file: !38, line: 722, baseType: !1662, size: 64, offset: 2432)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !304, file: !26, line: 727, baseType: !1665, size: 64, offset: 4224)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1667)
!1667 = !{!1668, !1669, !1670, !1674, !1675, !1676}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1666, file: !38, line: 743, baseType: !989, size: 1472)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1666, file: !38, line: 744, baseType: !992, size: 64, offset: 1472)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1666, file: !38, line: 745, baseType: !1671, size: 64, offset: 1536)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{null, !959, !289}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1666, file: !38, line: 746, baseType: !992, size: 64, offset: 1600)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1666, file: !38, line: 747, baseType: !983, size: 64, offset: 1664)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1666, file: !38, line: 748, baseType: !983, size: 64, offset: 1728)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !304, file: !26, line: 736, baseType: !1678, size: 128, offset: 4288)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1679)
!1679 = !{!1680, !1684}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1678, file: !26, line: 531, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1683, line: 13, flags: DIFlagFwdDecl)
!1683 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1678, file: !26, line: 532, baseType: !1685, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !304, file: !26, line: 738, baseType: !1688, size: 64, offset: 4416)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1690)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !304, file: !26, line: 740, baseType: !1692, size: 64, offset: 4480)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !304, file: !26, line: 741, baseType: !548, size: 64, offset: 4544)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !304, file: !26, line: 746, baseType: !548, size: 64, offset: 4608)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !304, file: !26, line: 747, baseType: !1696, size: 64, offset: 4672)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1698)
!1698 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !304, file: !26, line: 749, baseType: !1700, size: 64, offset: 4736)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1702)
!1702 = !{!1703, !1704, !1705}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1701, file: !26, line: 433, baseType: !7, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1701, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1701, file: !26, line: 435, baseType: !227, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !304, file: !26, line: 751, baseType: !311, size: 128, offset: 4800)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !304, file: !26, line: 762, baseType: !1708, size: 64, offset: 4928)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !304, file: !26, line: 770, baseType: !1711, offset: 4992)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1712, line: 5, elements: !521)
!1712 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !304, file: !26, line: 772, baseType: !299, size: 64, offset: 4992)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !304, file: !26, line: 773, baseType: !1715, size: 64, offset: 5056)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1717, line: 41, size: 512, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1718 = !{!1719, !1720, !1813, !1814, !1815, !1816}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1716, file: !1717, line: 42, baseType: !1715, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1716, file: !1717, line: 43, baseType: !1721, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1717, line: 125, size: 1408, elements: !1724)
!1724 = !{!1725, !1729, !1733, !1739, !1743, !1744, !1748, !1752, !1756, !1760, !1764, !1765, !1769, !1773, !1777, !1788, !1789, !1790, !1791, !1801, !1805, !1809}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1723, file: !1717, line: 126, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!1715, !1715}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1723, file: !1717, line: 127, baseType: !1730, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !1715}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1723, file: !1717, line: 128, baseType: !1734, size: 64, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!289, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1723, file: !1717, line: 129, baseType: !1740, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!663, !1737, !975}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1723, file: !1717, line: 131, baseType: !1734, size: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1723, file: !1717, line: 133, baseType: !1745, size: 64, offset: 320)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!78, !1737}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1723, file: !1717, line: 134, baseType: !1749, size: 64, offset: 384)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!289, !1737, !248}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1723, file: !1717, line: 136, baseType: !1753, size: 64, offset: 448)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!46, !1737, !248, !7, !224, !256}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1723, file: !1717, line: 141, baseType: !1757, size: 64, offset: 512)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!46, !1737, !248, !1382, !256}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1723, file: !1717, line: 144, baseType: !1761, size: 64, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!248, !1737}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1723, file: !1717, line: 145, baseType: !1761, size: 64, offset: 640)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1723, file: !1717, line: 146, baseType: !1766, size: 64, offset: 704)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!1715, !1737}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1723, file: !1717, line: 148, baseType: !1770, size: 64, offset: 768)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!1715, !1737, !1715}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1723, file: !1717, line: 151, baseType: !1774, size: 64, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1715, !1737, !248}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1723, file: !1717, line: 153, baseType: !1778, size: 64, offset: 896)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!46, !1737, !248, !248, !7, !7, !1781}
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1717, line: 94, size: 640, elements: !1783)
!1783 = !{!1784, !1785, !1786}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1782, file: !1717, line: 95, baseType: !1715, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1782, file: !1717, line: 96, baseType: !7, size: 32, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1782, file: !1717, line: 97, baseType: !1787, size: 512, offset: 128)
!1787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 512, elements: !1588)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1723, file: !1717, line: 158, baseType: !1770, size: 64, offset: 960)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1723, file: !1717, line: 161, baseType: !1766, size: 64, offset: 1024)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1723, file: !1717, line: 163, baseType: !1726, size: 64, offset: 1088)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1723, file: !1717, line: 164, baseType: !1792, size: 64, offset: 1152)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!46, !1737, !1795}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1717, line: 73, size: 128, elements: !1797)
!1797 = !{!1798, !1799, !1800}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1796, file: !1717, line: 74, baseType: !7, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1796, file: !1717, line: 75, baseType: !7, size: 32, offset: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1796, file: !1717, line: 76, baseType: !1737, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1723, file: !1717, line: 166, baseType: !1802, size: 64, offset: 1216)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!224, !1715, !46}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1723, file: !1717, line: 167, baseType: !1806, size: 64, offset: 1280)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!46, !1737, !7}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1723, file: !1717, line: 168, baseType: !1810, size: 64, offset: 1344)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!46, !1715}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1716, file: !1717, line: 44, baseType: !959, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1716, file: !1717, line: 45, baseType: !311, size: 128, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1716, file: !1717, line: 46, baseType: !311, size: 128, offset: 320)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1716, file: !1717, line: 47, baseType: !352, size: 8, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !304, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !304, file: !26, line: 778, baseType: !1819, size: 32, offset: 5152)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !226, line: 21, baseType: !1820)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !226, line: 18, baseType: !230)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !304, file: !26, line: 779, baseType: !230, size: 32, offset: 5184)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !304, file: !26, line: 781, baseType: !324, size: 32, offset: 5216)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !304, file: !26, line: 782, baseType: !311, size: 128, offset: 5248)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !304, file: !26, line: 784, baseType: !1825, size: 64, offset: 5376)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1827)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1828, line: 52, size: 768, elements: !1829)
!1828 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1838, !1842, !1843, !1844, !1845, !1849, !1853}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1827, file: !1828, line: 53, baseType: !248, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1827, file: !1828, line: 55, baseType: !437, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1827, file: !1828, line: 56, baseType: !437, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1827, file: !1828, line: 58, baseType: !972, size: 64, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1827, file: !1828, line: 59, baseType: !1835, size: 64, offset: 256)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!294, !975, !981}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1827, file: !1828, line: 61, baseType: !1839, size: 64, offset: 320)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !1825}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1827, file: !1828, line: 62, baseType: !983, size: 64, offset: 384)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1827, file: !1828, line: 64, baseType: !992, size: 64, offset: 448)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1827, file: !1828, line: 66, baseType: !779, size: 64, offset: 512)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1827, file: !1828, line: 67, baseType: !1846, size: 64, offset: 576)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!663, !975}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1827, file: !1828, line: 69, baseType: !1850, size: 64, offset: 640)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !975, !814, !821}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1827, file: !1828, line: 71, baseType: !987, size: 64, offset: 704)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !304, file: !26, line: 785, baseType: !437, size: 64, offset: 5440)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !304, file: !26, line: 787, baseType: !983, size: 64, offset: 5504)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !304, file: !26, line: 788, baseType: !1857, size: 64, offset: 5568)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !304, file: !26, line: 789, baseType: !1860, size: 64, offset: 5632)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !304, file: !26, line: 791, baseType: !1863, size: 64, offset: 5696)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1865)
!1865 = !{!1866, !1867, !1868, !1869, !1870}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1864, file: !26, line: 598, baseType: !53, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1864, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1864, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1864, file: !26, line: 601, baseType: !289, size: 8, offset: 96)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1864, file: !26, line: 602, baseType: !289, size: 8, offset: 104)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !304, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !304, file: !26, line: 795, baseType: !289, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !304, file: !26, line: 796, baseType: !289, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !304, file: !26, line: 797, baseType: !289, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !304, file: !26, line: 798, baseType: !289, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !304, file: !26, line: 799, baseType: !289, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "changed_work", scope: !240, file: !85, line: 297, baseType: !707, size: 256, offset: 6272)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_register_work", scope: !240, file: !85, line: 298, baseType: !1362, size: 704, offset: 6528)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "changed_lock", scope: !240, file: !85, line: 299, baseType: !324, size: 32, offset: 7232)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !240, file: !85, line: 300, baseType: !289, size: 8, offset: 7264)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !240, file: !85, line: 301, baseType: !289, size: 8, offset: 7272)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "removing", scope: !240, file: !85, line: 302, baseType: !289, size: 8, offset: 7280)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "use_cnt", scope: !240, file: !85, line: 303, baseType: !344, size: 32, offset: 7296)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "battery_info", scope: !240, file: !85, line: 304, baseType: !1885, size: 64, offset: 7360)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_battery_info", file: !85, line: 729, size: 3968, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1932, !1933, !1939, !1940, !1946, !1947, !1948, !1949, !1950}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "technology", scope: !1886, file: !85, line: 730, baseType: !7, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "energy_full_design_uwh", scope: !1886, file: !85, line: 731, baseType: !46, size: 32, offset: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "charge_full_design_uah", scope: !1886, file: !85, line: 732, baseType: !46, size: 32, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "voltage_min_design_uv", scope: !1886, file: !85, line: 733, baseType: !46, size: 32, offset: 96)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "voltage_max_design_uv", scope: !1886, file: !85, line: 734, baseType: !46, size: 32, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "tricklecharge_current_ua", scope: !1886, file: !85, line: 735, baseType: !46, size: 32, offset: 160)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "precharge_current_ua", scope: !1886, file: !85, line: 736, baseType: !46, size: 32, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "precharge_voltage_max_uv", scope: !1886, file: !85, line: 737, baseType: !46, size: 32, offset: 224)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "charge_term_current_ua", scope: !1886, file: !85, line: 738, baseType: !46, size: 32, offset: 256)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "charge_restart_voltage_uv", scope: !1886, file: !85, line: 739, baseType: !46, size: 32, offset: 288)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "overvoltage_limit_uv", scope: !1886, file: !85, line: 740, baseType: !46, size: 32, offset: 320)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "constant_charge_current_max_ua", scope: !1886, file: !85, line: 741, baseType: !46, size: 32, offset: 352)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "constant_charge_voltage_max_uv", scope: !1886, file: !85, line: 742, baseType: !46, size: 32, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "maintenance_charge", scope: !1886, file: !85, line: 743, baseType: !1902, size: 64, offset: 448)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_maintenance_charge_table", file: !85, line: 434, size: 96, elements: !1904)
!1904 = !{!1905, !1906, !1907}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "charge_current_max_ua", scope: !1903, file: !85, line: 435, baseType: !46, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "charge_voltage_max_uv", scope: !1903, file: !85, line: 436, baseType: !46, size: 32, offset: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "charge_safety_timer_minutes", scope: !1903, file: !85, line: 437, baseType: !46, size: 32, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "maintenance_charge_size", scope: !1886, file: !85, line: 744, baseType: !46, size: 32, offset: 512)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "alert_low_temp_charge_current_ua", scope: !1886, file: !85, line: 745, baseType: !46, size: 32, offset: 544)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "alert_low_temp_charge_voltage_uv", scope: !1886, file: !85, line: 746, baseType: !46, size: 32, offset: 576)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "alert_high_temp_charge_current_ua", scope: !1886, file: !85, line: 747, baseType: !46, size: 32, offset: 608)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "alert_high_temp_charge_voltage_uv", scope: !1886, file: !85, line: 748, baseType: !46, size: 32, offset: 640)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "factory_internal_resistance_uohm", scope: !1886, file: !85, line: 749, baseType: !46, size: 32, offset: 672)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "factory_internal_resistance_charging_uohm", scope: !1886, file: !85, line: 750, baseType: !46, size: 32, offset: 704)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ocv_temp", scope: !1886, file: !85, line: 751, baseType: !1916, size: 640, offset: 736)
!1916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 640, elements: !1917)
!1917 = !{!1918}
!1918 = !DISubrange(count: 20)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "temp_ambient_alert_min", scope: !1886, file: !85, line: 752, baseType: !46, size: 32, offset: 1376)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "temp_ambient_alert_max", scope: !1886, file: !85, line: 753, baseType: !46, size: 32, offset: 1408)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "temp_alert_min", scope: !1886, file: !85, line: 754, baseType: !46, size: 32, offset: 1440)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "temp_alert_max", scope: !1886, file: !85, line: 755, baseType: !46, size: 32, offset: 1472)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "temp_min", scope: !1886, file: !85, line: 756, baseType: !46, size: 32, offset: 1504)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "temp_max", scope: !1886, file: !85, line: 757, baseType: !46, size: 32, offset: 1536)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ocv_table", scope: !1886, file: !85, line: 758, baseType: !1926, size: 1280, offset: 1600)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1927, size: 1280, elements: !1917)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_battery_ocv_table", file: !85, line: 343, size: 64, elements: !1929)
!1929 = !{!1930, !1931}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ocv", scope: !1928, file: !85, line: 344, baseType: !46, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1928, file: !85, line: 345, baseType: !46, size: 32, offset: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ocv_table_size", scope: !1886, file: !85, line: 759, baseType: !1916, size: 640, offset: 2880)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "resist_table", scope: !1886, file: !85, line: 760, baseType: !1934, size: 64, offset: 3520)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_resistance_temp_table", file: !85, line: 348, size: 64, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1935, file: !85, line: 349, baseType: !46, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "resistance", scope: !1935, file: !85, line: 350, baseType: !46, size: 32, offset: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "resist_table_size", scope: !1886, file: !85, line: 761, baseType: !46, size: 32, offset: 3584)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "vbat2ri_discharging", scope: !1886, file: !85, line: 762, baseType: !1941, size: 64, offset: 3648)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_vbat_ri_table", file: !85, line: 353, size: 64, elements: !1943)
!1943 = !{!1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "vbat_uv", scope: !1942, file: !85, line: 354, baseType: !46, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "ri_uohm", scope: !1942, file: !85, line: 355, baseType: !46, size: 32, offset: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "vbat2ri_discharging_size", scope: !1886, file: !85, line: 763, baseType: !46, size: 32, offset: 3712)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "vbat2ri_charging", scope: !1886, file: !85, line: 764, baseType: !1941, size: 64, offset: 3776)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "vbat2ri_charging_size", scope: !1886, file: !85, line: 765, baseType: !46, size: 32, offset: 3840)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "bti_resistance_ohm", scope: !1886, file: !85, line: 766, baseType: !46, size: 32, offset: 3872)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "bti_resistance_tolerance", scope: !1886, file: !85, line: 767, baseType: !46, size: 32, offset: 3904)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "tzd", scope: !240, file: !85, line: 306, baseType: !1952, size: 64, offset: 7424)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !85, line: 306, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "tcd", scope: !240, file: !85, line: 307, baseType: !1955, size: 64, offset: 7488)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !85, line: 307, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "charging_full_trig", scope: !240, file: !85, line: 311, baseType: !1958, size: 64, offset: 7552)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_trigger", file: !191, line: 471, size: 704, elements: !1960)
!1960 = !{!1961, !1962, !2043, !2044, !2045, !2046, !2047, !2048, !2049}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1959, file: !191, line: 473, baseType: !248, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1959, file: !191, line: 474, baseType: !1963, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!46, !1966}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_classdev", file: !191, line: 99, size: 3264, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1975, !1979, !1983, !1987, !1991, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2028, !2029, !2033, !2034, !2038, !2042}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1967, file: !191, line: 100, baseType: !248, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !1967, file: !191, line: 101, baseType: !7, size: 32, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !1967, file: !191, line: 102, baseType: !7, size: 32, offset: 96)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !1967, file: !191, line: 103, baseType: !7, size: 32, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1967, file: !191, line: 104, baseType: !46, size: 32, offset: 160)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "work_flags", scope: !1967, file: !191, line: 120, baseType: !227, size: 64, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set", scope: !1967, file: !191, line: 137, baseType: !1976, size: 64, offset: 256)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !1966, !190}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set_blocking", scope: !1967, file: !191, line: 143, baseType: !1980, size: 64, offset: 320)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!46, !1966, !190}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_get", scope: !1967, file: !191, line: 146, baseType: !1984, size: 64, offset: 384)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!190, !1966}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "blink_set", scope: !1967, file: !191, line: 160, baseType: !1988, size: 64, offset: 448)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!46, !1966, !1396, !1396}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_set", scope: !1967, file: !191, line: 164, baseType: !1992, size: 64, offset: 512)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!46, !1966, !1995, !230, !46}
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_pattern", file: !191, line: 713, size: 64, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !1996, file: !191, line: 714, baseType: !230, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !1996, file: !191, line: 715, baseType: !46, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_clear", scope: !1967, file: !191, line: 166, baseType: !1963, size: 64, offset: 576)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1967, file: !191, line: 168, baseType: !959, size: 64, offset: 640)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1967, file: !191, line: 169, baseType: !437, size: 64, offset: 704)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1967, file: !191, line: 171, baseType: !311, size: 128, offset: 768)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "default_trigger", scope: !1967, file: !191, line: 172, baseType: !248, size: 64, offset: 896)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_on", scope: !1967, file: !191, line: 174, baseType: !227, size: 64, offset: 960)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_off", scope: !1967, file: !191, line: 174, baseType: !227, size: 64, offset: 1024)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "blink_timer", scope: !1967, file: !191, line: 175, baseType: !1299, size: 320, offset: 1088)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "blink_brightness", scope: !1967, file: !191, line: 176, baseType: !46, size: 32, offset: 1408)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "new_blink_brightness", scope: !1967, file: !191, line: 177, baseType: !46, size: 32, offset: 1440)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flash_resume", scope: !1967, file: !191, line: 178, baseType: !2011, size: 64, offset: 1472)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !1966}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "set_brightness_work", scope: !1967, file: !191, line: 180, baseType: !707, size: 256, offset: 1536)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_set_value", scope: !1967, file: !191, line: 181, baseType: !46, size: 32, offset: 1792)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delay_on", scope: !1967, file: !191, line: 182, baseType: !227, size: 64, offset: 1856)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delay_off", scope: !1967, file: !191, line: 183, baseType: !227, size: 64, offset: 1920)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_lock", scope: !1967, file: !191, line: 187, baseType: !565, size: 320, offset: 1984)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !1967, file: !191, line: 189, baseType: !1958, size: 64, offset: 2304)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "trig_list", scope: !1967, file: !191, line: 190, baseType: !311, size: 128, offset: 2368)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_data", scope: !1967, file: !191, line: 191, baseType: !224, size: 64, offset: 2496)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "activated", scope: !1967, file: !191, line: 193, baseType: !289, size: 8, offset: 2560)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_type", scope: !1967, file: !191, line: 196, baseType: !2024, size: 64, offset: 2624)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_hw_trigger_type", file: !191, line: 95, size: 32, elements: !2026)
!2026 = !{!2027}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !2025, file: !191, line: 96, baseType: !46, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_trigger", scope: !1967, file: !191, line: 199, baseType: !248, size: 64, offset: 2688)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_is_supported", scope: !1967, file: !191, line: 209, baseType: !2030, size: 64, offset: 2752)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!46, !1966, !227}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_set", scope: !1967, file: !191, line: 220, baseType: !2030, size: 64, offset: 2816)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_get", scope: !1967, file: !191, line: 232, baseType: !2035, size: 64, offset: 2880)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!46, !1966, !1396}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_get_device", scope: !1967, file: !191, line: 239, baseType: !2039, size: 64, offset: 2944)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!959, !1966}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "led_access", scope: !1967, file: !191, line: 248, baseType: !642, size: 256, offset: 3008)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1959, file: !191, line: 475, baseType: !2011, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !1959, file: !191, line: 478, baseType: !190, size: 32, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_type", scope: !1959, file: !191, line: 481, baseType: !2024, size: 64, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "leddev_list_lock", scope: !1959, file: !191, line: 484, baseType: !324, size: 32, offset: 320)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "led_cdevs", scope: !1959, file: !191, line: 485, baseType: !311, size: 128, offset: 384)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "next_trig", scope: !1959, file: !191, line: 488, baseType: !311, size: 128, offset: 512)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1959, file: !191, line: 490, baseType: !437, size: 64, offset: 640)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "charging_full_trig_name", scope: !240, file: !85, line: 312, baseType: !294, size: 64, offset: 7616)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "charging_trig", scope: !240, file: !85, line: 313, baseType: !1958, size: 64, offset: 7680)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "charging_trig_name", scope: !240, file: !85, line: 314, baseType: !294, size: 64, offset: 7744)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "full_trig", scope: !240, file: !85, line: 315, baseType: !1958, size: 64, offset: 7808)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "full_trig_name", scope: !240, file: !85, line: 316, baseType: !294, size: 64, offset: 7872)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "online_trig", scope: !240, file: !85, line: 317, baseType: !1958, size: 64, offset: 7936)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "online_trig_name", scope: !240, file: !85, line: 318, baseType: !294, size: 64, offset: 8000)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "charging_blink_full_solid_trig", scope: !240, file: !85, line: 319, baseType: !1958, size: 64, offset: 8064)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "charging_blink_full_solid_trig_name", scope: !240, file: !85, line: 320, baseType: !294, size: 64, offset: 8128)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "charger_desc", scope: !236, file: !3, line: 66, baseType: !245, size: 768, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !236, file: !3, line: 67, baseType: !2061, size: 64, offset: 832)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !2063, line: 367, size: 11200, elements: !2064)
!2063 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!2064 = !{!2065, !2066, !2067, !2069, !2070, !2071, !2072, !2081, !2099, !2176, !2206, !2230, !2251, !2257, !2266, !2298, !2312, !2316, !2317, !2318, !2319, !2320, !2321, !2322}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !2062, file: !2063, line: 368, baseType: !230, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !2062, file: !2063, line: 369, baseType: !46, size: 32, offset: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2062, file: !2063, line: 370, baseType: !2068, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !229, line: 424, baseType: !224)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2062, file: !2063, line: 371, baseType: !1716, size: 512, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !2062, file: !2063, line: 372, baseType: !311, size: 128, offset: 640)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !2062, file: !2063, line: 373, baseType: !311, size: 128, offset: 768)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2062, file: !2063, line: 374, baseType: !2073, size: 32, offset: 896)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !2063, line: 181, size: 32, elements: !2074)
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2080}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2073, file: !2063, line: 182, baseType: !230, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2073, file: !2063, line: 183, baseType: !230, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2073, file: !2063, line: 184, baseType: !230, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2073, file: !2063, line: 185, baseType: !230, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2073, file: !2063, line: 186, baseType: !230, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2073, file: !2063, line: 187, baseType: !230, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2062, file: !2063, line: 375, baseType: !2082, size: 32, offset: 928)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !2063, line: 192, size: 32, elements: !2083)
!2083 = !{!2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2082, file: !2063, line: 193, baseType: !230, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2082, file: !2063, line: 194, baseType: !230, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2082, file: !2063, line: 195, baseType: !230, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2082, file: !2063, line: 196, baseType: !230, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2082, file: !2063, line: 197, baseType: !230, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2082, file: !2063, line: 198, baseType: !230, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2082, file: !2063, line: 199, baseType: !230, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2082, file: !2063, line: 200, baseType: !230, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2082, file: !2063, line: 201, baseType: !230, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2082, file: !2063, line: 202, baseType: !230, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2082, file: !2063, line: 203, baseType: !230, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2082, file: !2063, line: 204, baseType: !230, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2082, file: !2063, line: 205, baseType: !230, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !2082, file: !2063, line: 206, baseType: !230, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2082, file: !2063, line: 207, baseType: !230, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !2062, file: !2063, line: 376, baseType: !2100, size: 960, offset: 960)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !2063, line: 238, size: 960, elements: !2101)
!2101 = !{!2102, !2105, !2106, !2114, !2116, !2117, !2118, !2123, !2126}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2100, file: !2063, line: 239, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !2063, line: 220, baseType: !2104)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 64, elements: !1588)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !2100, file: !2063, line: 240, baseType: !46, size: 32, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2100, file: !2063, line: 241, baseType: !2107, size: 32, offset: 96)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !2063, line: 230, size: 32, elements: !2108)
!2108 = !{!2109, !2110, !2111, !2112, !2113}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2107, file: !2063, line: 231, baseType: !230, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2107, file: !2063, line: 232, baseType: !230, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2107, file: !2063, line: 233, baseType: !230, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !2107, file: !2063, line: 234, baseType: !230, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2107, file: !2063, line: 235, baseType: !230, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2100, file: !2063, line: 242, baseType: !2115, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !2063, line: 221, baseType: !548)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2100, file: !2063, line: 243, baseType: !294, size: 64, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2100, file: !2063, line: 244, baseType: !311, size: 128, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2100, file: !2063, line: 245, baseType: !2119, size: 320, offset: 384)
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !2063, line: 222, baseType: !2120)
!2120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 320, elements: !2121)
!2121 = !{!2122}
!2122 = !DISubrange(count: 40)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2100, file: !2063, line: 246, baseType: !2124, size: 160, offset: 704)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !2063, line: 223, baseType: !2125)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 160, elements: !1917)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2100, file: !2063, line: 247, baseType: !2127, size: 64, offset: 896)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !229, line: 908, size: 192, elements: !2129)
!2129 = !{!2130, !2132, !2137, !2143, !2150, !2156, !2162, !2170}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2128, file: !229, line: 909, baseType: !2131, size: 32)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !229, line: 644, baseType: !230)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2128, file: !229, line: 913, baseType: !2133, size: 128)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2128, file: !229, line: 910, size: 128, elements: !2134)
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2133, file: !229, line: 911, baseType: !2131, size: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2133, file: !229, line: 912, baseType: !548, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2128, file: !229, line: 919, baseType: !2138, size: 128)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2128, file: !229, line: 915, size: 128, elements: !2139)
!2139 = !{!2140, !2141, !2142}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2138, file: !229, line: 916, baseType: !2131, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2138, file: !229, line: 917, baseType: !230, size: 32, offset: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2138, file: !229, line: 918, baseType: !294, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2128, file: !229, line: 925, baseType: !2144, size: 128)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2128, file: !229, line: 921, size: 128, elements: !2145)
!2145 = !{!2146, !2147, !2148}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2144, file: !229, line: 922, baseType: !2131, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2144, file: !229, line: 923, baseType: !230, size: 32, offset: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2144, file: !229, line: 924, baseType: !2149, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2128, file: !229, line: 931, baseType: !2151, size: 128)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2128, file: !229, line: 927, size: 128, elements: !2152)
!2152 = !{!2153, !2154, !2155}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2151, file: !229, line: 928, baseType: !2131, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2151, file: !229, line: 929, baseType: !230, size: 32, offset: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2151, file: !229, line: 930, baseType: !2127, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2128, file: !229, line: 937, baseType: !2157, size: 128)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2128, file: !229, line: 933, size: 128, elements: !2158)
!2158 = !{!2159, !2160, !2161}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2157, file: !229, line: 934, baseType: !2131, size: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2157, file: !229, line: 935, baseType: !2131, size: 32, offset: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2157, file: !229, line: 936, baseType: !2068, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2128, file: !229, line: 944, baseType: !2163, size: 192)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2128, file: !229, line: 939, size: 192, elements: !2164)
!2164 = !{!2165, !2166, !2167, !2169}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2163, file: !229, line: 940, baseType: !2131, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2163, file: !229, line: 941, baseType: !230, size: 32, offset: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2163, file: !229, line: 942, baseType: !2168, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !229, line: 128, baseType: !548)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2163, file: !229, line: 943, baseType: !230, size: 32, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2128, file: !229, line: 950, baseType: !2171, size: 96)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2128, file: !229, line: 946, size: 96, elements: !2172)
!2172 = !{!2173, !2174, !2175}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2171, file: !229, line: 947, baseType: !2131, size: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2171, file: !229, line: 948, baseType: !230, size: 32, offset: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2171, file: !229, line: 949, baseType: !230, size: 32, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2062, file: !2063, line: 377, baseType: !2177, size: 1408, offset: 1920)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !2063, line: 280, size: 1408, elements: !2178)
!2178 = !{!2179, !2180, !2190, !2205}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2177, file: !2063, line: 281, baseType: !46, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2177, file: !2063, line: 282, baseType: !2181, size: 32, offset: 32)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !2063, line: 259, size: 32, elements: !2182)
!2182 = !{!2183, !2184, !2185, !2186, !2187, !2188, !2189}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2181, file: !2063, line: 260, baseType: !230, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2181, file: !2063, line: 261, baseType: !230, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2181, file: !2063, line: 262, baseType: !230, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2181, file: !2063, line: 263, baseType: !230, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2181, file: !2063, line: 264, baseType: !230, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2181, file: !2063, line: 265, baseType: !230, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2181, file: !2063, line: 266, baseType: !230, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2177, file: !2063, line: 283, baseType: !2191, size: 1280, offset: 64)
!2191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2192, size: 1280, elements: !2203)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !2063, line: 269, size: 256, elements: !2193)
!2193 = !{!2194, !2200, !2201, !2202}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2192, file: !2063, line: 274, baseType: !2195, size: 8)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2192, file: !2063, line: 270, size: 8, elements: !2196)
!2196 = !{!2197, !2198, !2199}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2195, file: !2063, line: 271, baseType: !352, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2195, file: !2063, line: 272, baseType: !352, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2195, file: !2063, line: 273, baseType: !352, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2192, file: !2063, line: 275, baseType: !46, size: 32, offset: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2192, file: !2063, line: 276, baseType: !46, size: 32, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2192, file: !2063, line: 277, baseType: !311, size: 128, offset: 128)
!2203 = !{!2204}
!2204 = !DISubrange(count: 5)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !2177, file: !2063, line: 284, baseType: !352, size: 8, offset: 1344)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2062, file: !2063, line: 378, baseType: !2207, size: 640, offset: 3328)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !2063, line: 330, size: 640, elements: !2208)
!2208 = !{!2209, !2210, !2211, !2212, !2213, !2218, !2227, !2228, !2229}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2207, file: !2063, line: 331, baseType: !2068, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2207, file: !2063, line: 332, baseType: !548, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2207, file: !2063, line: 333, baseType: !548, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2207, file: !2063, line: 334, baseType: !311, size: 128, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2207, file: !2063, line: 335, baseType: !2214, size: 8, offset: 320)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !2063, line: 320, size: 8, elements: !2215)
!2215 = !{!2216, !2217}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2214, file: !2063, line: 321, baseType: !352, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2214, file: !2063, line: 322, baseType: !352, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2207, file: !2063, line: 336, baseType: !2219, size: 128, offset: 384)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !2063, line: 325, size: 128, elements: !2220)
!2220 = !{!2221, !2226}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2219, file: !2063, line: 326, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{null, !2225}
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2219, file: !2063, line: 327, baseType: !959, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2207, file: !2063, line: 337, baseType: !1513, size: 64, offset: 512)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2207, file: !2063, line: 338, baseType: !46, size: 32, offset: 576)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2207, file: !2063, line: 339, baseType: !46, size: 32, offset: 608)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2062, file: !2063, line: 379, baseType: !2231, size: 192, offset: 3968)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !2063, line: 312, size: 192, elements: !2232)
!2232 = !{!2233, !2234, !2238, !2239}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2231, file: !2063, line: 313, baseType: !46, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2231, file: !2063, line: 314, baseType: !2235, size: 8, offset: 32)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !2063, line: 298, size: 8, elements: !2236)
!2236 = !{!2237}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2235, file: !2063, line: 299, baseType: !352, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2231, file: !2063, line: 315, baseType: !46, size: 32, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2231, file: !2063, line: 316, baseType: !2240, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !2063, line: 302, size: 64, elements: !2242)
!2242 = !{!2243, !2248, !2249, !2250}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2241, file: !2063, line: 306, baseType: !2244, size: 8)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2241, file: !2063, line: 303, size: 8, elements: !2245)
!2245 = !{!2246, !2247}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2244, file: !2063, line: 304, baseType: !352, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2244, file: !2063, line: 305, baseType: !352, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2241, file: !2063, line: 307, baseType: !352, size: 8, offset: 8)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2241, file: !2063, line: 308, baseType: !352, size: 8, offset: 16)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2241, file: !2063, line: 309, baseType: !46, size: 32, offset: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2062, file: !2063, line: 380, baseType: !2252, size: 64, offset: 4160)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !2063, line: 212, size: 64, elements: !2253)
!2253 = !{!2254}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2252, file: !2063, line: 213, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2063, line: 86, flags: DIFlagFwdDecl)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2062, file: !2063, line: 381, baseType: !2258, size: 384, offset: 4224)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !2063, line: 357, size: 384, elements: !2259)
!2259 = !{!2260, !2263, !2264, !2265}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2258, file: !2063, line: 358, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2258, file: !2063, line: 359, baseType: !311, size: 128, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2258, file: !2063, line: 360, baseType: !2261, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2258, file: !2063, line: 361, baseType: !311, size: 128, offset: 256)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2062, file: !2063, line: 382, baseType: !2267, size: 64, offset: 4608)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !2063, line: 124, size: 1216, elements: !2269)
!2269 = !{!2270, !2271, !2272, !2277, !2281, !2285, !2286, !2287}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2268, file: !2063, line: 125, baseType: !1433, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2268, file: !2063, line: 126, baseType: !311, size: 128, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2268, file: !2063, line: 127, baseType: !2273, size: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!289, !248, !2276}
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2268, file: !2063, line: 128, baseType: !2278, size: 64, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!46, !2061, !1433}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2268, file: !2063, line: 129, baseType: !2282, size: 64, offset: 320)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{null, !2061}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2268, file: !2063, line: 130, baseType: !983, size: 64, offset: 384)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2268, file: !2063, line: 131, baseType: !983, size: 64, offset: 448)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2268, file: !2063, line: 132, baseType: !2288, size: 704, offset: 512)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !2063, line: 110, size: 704, elements: !2289)
!2289 = !{!2290, !2291, !2295, !2296, !2297}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2288, file: !2063, line: 111, baseType: !307, size: 512)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2288, file: !2063, line: 112, baseType: !2292, size: 64, offset: 512)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!46, !2061}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2288, file: !2063, line: 113, baseType: !2282, size: 64, offset: 576)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2288, file: !2063, line: 114, baseType: !289, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2288, file: !2063, line: 115, baseType: !289, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !2062, file: !2063, line: 383, baseType: !2299, size: 64, offset: 4672)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !2063, line: 140, size: 256, elements: !2301)
!2301 = !{!2302, !2303, !2307, !2311}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2300, file: !2063, line: 141, baseType: !2061, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2300, file: !2063, line: 142, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!46, !2061, !230}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2300, file: !2063, line: 143, baseType: !2308, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{null, !2061, !230}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2300, file: !2063, line: 144, baseType: !2282, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !2062, file: !2063, line: 384, baseType: !2313, size: 64, offset: 4736)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2315)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !2063, line: 364, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2062, file: !2063, line: 385, baseType: !224, size: 64, offset: 4800)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2062, file: !2063, line: 386, baseType: !304, size: 5824, offset: 4864)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !2062, file: !2063, line: 387, baseType: !7, size: 32, offset: 10688)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !2062, file: !2063, line: 388, baseType: !7, size: 32, offset: 10720)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !2062, file: !2063, line: 389, baseType: !311, size: 128, offset: 10752)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !2062, file: !2063, line: 390, baseType: !642, size: 256, offset: 10880)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2062, file: !2063, line: 391, baseType: !2282, size: 64, offset: 11136)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !236, file: !3, line: 68, baseType: !550, size: 64, offset: 896)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "battery_nb", scope: !236, file: !3, line: 69, baseType: !2325, size: 192, offset: 960)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2326, line: 54, size: 192, elements: !2327)
!2326 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!2327 = !{!2328, !2334, !2335}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2325, file: !2326, line: 55, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2326, line: 51, baseType: !2330)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!46, !2333, !227, !224}
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2325, file: !2326, line: 56, baseType: !2333, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2325, file: !2326, line: 57, baseType: !46, size: 32, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_bus_event", file: !2063, line: 504, size: 448, elements: !2338)
!2338 = !{!2339, !2340, !2341, !2342, !2343}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2337, file: !2063, line: 505, baseType: !311, size: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2337, file: !2063, line: 506, baseType: !2124, size: 160, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2337, file: !2063, line: 507, baseType: !2103, size: 64, offset: 288)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2337, file: !2063, line: 508, baseType: !230, size: 32, offset: 352)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2337, file: !2063, line: 509, baseType: !230, size: 32, offset: 384)
!2344 = !{!0, !2345, !2350, !2355, !2360, !2362, !2366, !2388, !2391, !2396, !2398, !2403, !2405, !2410, !2415, !2418, !2421, !2426, !2428, !2433, !2435, !2437, !2439}
!2345 = !DIGlobalVariableExpression(var: !2346, expr: !DIExpression())
!2346 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description207", scope: !2, file: !3, line: 32, type: !2347, isLocal: true, isDefinition: true, align: 8)
!2347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 304, elements: !2348)
!2348 = !{!2349}
!2349 = !DISubrange(count: 38)
!2350 = !DIGlobalVariableExpression(var: !2351, expr: !DIExpression())
!2351 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file208", scope: !2, file: !3, line: 33, type: !2352, isLocal: true, isDefinition: true, align: 8)
!2352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 192, elements: !2353)
!2353 = !{!2354}
!2354 = !DISubrange(count: 24)
!2355 = !DIGlobalVariableExpression(var: !2356, expr: !DIExpression())
!2356 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license209", scope: !2, file: !3, line: 33, type: !2357, isLocal: true, isDefinition: true, align: 8)
!2357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 120, elements: !2358)
!2358 = !{!2359}
!2359 = !DISubrange(count: 15)
!2360 = !DIGlobalVariableExpression(var: !2361, expr: !DIExpression())
!2361 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_ac__210_340_acpi_ac_init6211", scope: !2, file: !3, line: 340, type: !224, isLocal: true, isDefinition: true)
!2362 = !DIGlobalVariableExpression(var: !2363, expr: !DIExpression())
!2363 = distinct !DIGlobalVariable(name: "__exitcall_acpi_ac_exit", scope: !2, file: !3, line: 341, type: !2364, isLocal: true, isDefinition: true)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2365, line: 120, baseType: !1409)
!2365 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!2366 = !DIGlobalVariableExpression(var: !2367, expr: !DIExpression())
!2367 = distinct !DIGlobalVariable(name: "acpi_ac_driver", scope: !2, file: !3, line: 53, type: !2368, isLocal: true, isDefinition: true)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !2063, line: 164, size: 2816, elements: !2369)
!2369 = !{!2370, !2374, !2375, !2376, !2377, !2386, !2387}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2368, file: !2063, line: 165, baseType: !2371, size: 640)
!2371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 640, elements: !2372)
!2372 = !{!2373}
!2373 = !DISubrange(count: 80)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2368, file: !2063, line: 166, baseType: !2371, size: 640, offset: 640)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2368, file: !2063, line: 167, baseType: !1433, size: 64, offset: 1280)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2368, file: !2063, line: 168, baseType: !7, size: 32, offset: 1344)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2368, file: !2063, line: 169, baseType: !2378, size: 192, offset: 1408)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !2063, line: 156, size: 192, elements: !2379)
!2379 = !{!2380, !2382, !2384}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2378, file: !2063, line: 157, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !2063, line: 152, baseType: !2292)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2378, file: !2063, line: 158, baseType: !2383, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !2063, line: 153, baseType: !2282)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2378, file: !2063, line: 159, baseType: !2385, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !2063, line: 154, baseType: !2308)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2368, file: !2063, line: 170, baseType: !1033, size: 1152, offset: 1600)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2368, file: !2063, line: 171, baseType: !1038, size: 64, offset: 2752)
!2388 = !DIGlobalVariableExpression(var: !2389, expr: !DIExpression())
!2389 = distinct !DIGlobalVariable(name: "ac_device_ids", scope: !2, file: !3, line: 39, type: !2390, isLocal: true, isDefinition: true)
!2390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1434, size: 512, elements: !1189)
!2391 = !DIGlobalVariableExpression(var: !2392, expr: !DIExpression())
!2392 = distinct !DIGlobalVariable(scope: null, file: !3, line: 231, type: !2393, isLocal: true, isDefinition: true)
!2393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 88, elements: !2394)
!2394 = !{!2395}
!2395 = !DISubrange(count: 11)
!2396 = !DIGlobalVariableExpression(var: !2397, expr: !DIExpression())
!2397 = distinct !DIGlobalVariable(scope: null, file: !3, line: 232, type: !2393, isLocal: true, isDefinition: true)
!2398 = !DIGlobalVariableExpression(var: !2399, expr: !DIExpression())
!2399 = distinct !DIGlobalVariable(scope: null, file: !3, line: 253, type: !2400, isLocal: true, isDefinition: true)
!2400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 208, elements: !2401)
!2401 = !{!2402}
!2402 = !DISubrange(count: 26)
!2403 = !DIGlobalVariableExpression(var: !2404, expr: !DIExpression())
!2404 = distinct !DIGlobalVariable(scope: null, file: !3, line: 253, type: !2104, isLocal: true, isDefinition: true)
!2405 = !DIGlobalVariableExpression(var: !2406, expr: !DIExpression())
!2406 = distinct !DIGlobalVariable(scope: null, file: !3, line: 253, type: !2407, isLocal: true, isDefinition: true)
!2407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 72, elements: !2408)
!2408 = !{!2409}
!2409 = !DISubrange(count: 9)
!2410 = !DIGlobalVariableExpression(var: !2411, expr: !DIExpression())
!2411 = distinct !DIGlobalVariable(scope: null, file: !203, line: 480, type: !2412, isLocal: true, isDefinition: true)
!2412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 168, elements: !2413)
!2413 = !{!2414}
!2414 = !DISubrange(count: 21)
!2415 = !DIGlobalVariableExpression(var: !2416, expr: !DIExpression())
!2416 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !2417, isLocal: true, isDefinition: true)
!2417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 40, elements: !2203)
!2418 = !DIGlobalVariableExpression(var: !2419, expr: !DIExpression())
!2419 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !2420, isLocal: true, isDefinition: true)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 24, elements: !392)
!2421 = !DIGlobalVariableExpression(var: !2422, expr: !DIExpression())
!2422 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !2423, isLocal: true, isDefinition: true)
!2423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 288, elements: !2424)
!2424 = !{!2425}
!2425 = !DISubrange(count: 36)
!2426 = !DIGlobalVariableExpression(var: !2427, expr: !DIExpression())
!2427 = distinct !DIGlobalVariable(name: "ac_only", scope: !2, file: !3, line: 51, type: !46, isLocal: true, isDefinition: true)
!2428 = !DIGlobalVariableExpression(var: !2429, expr: !DIExpression())
!2429 = distinct !DIGlobalVariable(name: "ac_props", scope: !2, file: !3, line: 124, type: !2430, isLocal: true, isDefinition: true)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 32, elements: !2431)
!2431 = !{!2432}
!2432 = !DISubrange(count: 1)
!2433 = !DIGlobalVariableExpression(var: !2434, expr: !DIExpression())
!2434 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !2104, isLocal: true, isDefinition: true)
!2435 = !DIGlobalVariableExpression(var: !2436, expr: !DIExpression())
!2436 = distinct !DIGlobalVariable(name: "ac_sleep_before_get_state_ms", scope: !2, file: !3, line: 50, type: !46, isLocal: true, isDefinition: true)
!2437 = !DIGlobalVariableExpression(var: !2438, expr: !DIExpression())
!2438 = distinct !DIGlobalVariable(name: "acpi_ac_pm", scope: !2, file: !3, line: 48, type: !988, isLocal: true, isDefinition: true)
!2439 = !DIGlobalVariableExpression(var: !2440, expr: !DIExpression())
!2440 = distinct !DIGlobalVariable(name: "ac_dmi_table", scope: !2, file: !3, line: 197, type: !2441, isLocal: true, isDefinition: true)
!2441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2442, size: 8256, elements: !392)
!2442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2443)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !1420, line: 587, size: 2752, elements: !2444)
!2444 = !{!2445, !2450, !2451, !2461}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2443, file: !1420, line: 588, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!46, !2449}
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !2443, file: !1420, line: 589, baseType: !248, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !2443, file: !1420, line: 590, baseType: !2452, size: 2560, offset: 128)
!2452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2453, size: 2560, elements: !623)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !1420, line: 581, size: 640, elements: !2454)
!2454 = !{!2455, !2456, !2457}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !2453, file: !1420, line: 582, baseType: !354, size: 7, flags: DIFlagBitField, extraData: i64 0)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !2453, file: !1420, line: 583, baseType: !354, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !2453, file: !1420, line: 584, baseType: !2458, size: 632, offset: 8)
!2458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 632, elements: !2459)
!2459 = !{!2460}
!2460 = !DISubrange(count: 79)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2443, file: !1420, line: 591, baseType: !224, size: 64, offset: 2688)
!2462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 216, elements: !2463)
!2463 = !{!2464}
!2464 = !DISubrange(count: 27)
!2465 = !{i32 7, !"Dwarf Version", i32 5}
!2466 = !{i32 2, !"Debug Info Version", i32 3}
!2467 = !{i32 1, !"wchar_size", i32 2}
!2468 = !{i32 8, !"cf-protection-branch", i32 1}
!2469 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2470 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2471 = !{i32 1, !"Code Model", i32 2}
!2472 = !{i32 1, !"override-stack-alignment", i32 8}
!2473 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2474 = distinct !DISubprogram(name: "acpi_ac_exit", scope: !3, file: !3, line: 336, type: !1410, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2475 = !DILocation(line: 338, column: 2, scope: !2474)
!2476 = !DILocation(line: 339, column: 1, scope: !2474)
!2477 = !DISubprogram(name: "acpi_bus_unregister_driver", scope: !2063, file: !2063, line: 565, type: !2478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{null, !2480}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2481 = distinct !DISubprogram(name: "__initstub__kmod_ac__210_340_acpi_ac_init6", scope: !3, file: !3, line: 340, type: !1171, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2482 = !DILocation(line: 340, column: 1, scope: !2481)
!2483 = distinct !DISubprogram(name: "acpi_ac_init", scope: !3, file: !3, line: 317, type: !1171, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2484)
!2484 = !{!2485}
!2485 = !DILocalVariable(name: "result", scope: !2483, file: !3, line: 319, type: !46)
!2486 = !DILocation(line: 319, column: 2, scope: !2483)
!2487 = !DILocation(line: 319, column: 6, scope: !2483)
!2488 = !DILocation(line: 321, column: 6, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 321, column: 6)
!2490 = !DILocation(line: 321, column: 6, scope: !2483)
!2491 = !DILocation(line: 322, column: 3, scope: !2489)
!2492 = !DILocation(line: 324, column: 6, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 324, column: 6)
!2494 = !DILocation(line: 324, column: 6, scope: !2483)
!2495 = !DILocation(line: 325, column: 3, scope: !2493)
!2496 = !DILocation(line: 327, column: 2, scope: !2483)
!2497 = !DILocation(line: 329, column: 11, scope: !2483)
!2498 = !DILocation(line: 329, column: 9, scope: !2483)
!2499 = !DILocation(line: 330, column: 6, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 330, column: 6)
!2501 = !DILocation(line: 330, column: 13, scope: !2500)
!2502 = !DILocation(line: 330, column: 6, scope: !2483)
!2503 = !DILocation(line: 331, column: 3, scope: !2500)
!2504 = !DILocation(line: 333, column: 2, scope: !2483)
!2505 = !DILocation(line: 334, column: 1, scope: !2483)
!2506 = distinct !DISubprogram(name: "acpi_ac_add", scope: !3, file: !3, line: 216, type: !2293, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2507)
!2507 = !{!2508, !2509, !2518, !2519, !2520, !2521}
!2508 = !DILocalVariable(name: "device", arg: 1, scope: !2506, file: !3, line: 216, type: !2061)
!2509 = !DILocalVariable(name: "psy_cfg", scope: !2506, file: !3, line: 218, type: !2510)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_config", file: !85, line: 227, size: 384, elements: !2511)
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2510, file: !85, line: 228, baseType: !299, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2510, file: !85, line: 229, baseType: !1715, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "drv_data", scope: !2510, file: !85, line: 232, baseType: !224, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "attr_grp", scope: !2510, file: !85, line: 235, baseType: !437, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_to", scope: !2510, file: !85, line: 237, baseType: !293, size: 64, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplicants", scope: !2510, file: !85, line: 238, baseType: !256, size: 64, offset: 320)
!2518 = !DILocalVariable(name: "result", scope: !2506, file: !3, line: 219, type: !46)
!2519 = !DILocalVariable(name: "ac", scope: !2506, file: !3, line: 220, type: !235)
!2520 = !DILabel(scope: !2506, name: "err_unregister", file: !3, line: 266)
!2521 = !DILabel(scope: !2506, name: "err_release_ac", file: !3, line: 269)
!2522 = !DILocation(line: 216, column: 44, scope: !2506)
!2523 = !DILocation(line: 218, column: 2, scope: !2506)
!2524 = !DILocation(line: 218, column: 29, scope: !2506)
!2525 = !DILocation(line: 219, column: 2, scope: !2506)
!2526 = !DILocation(line: 219, column: 6, scope: !2506)
!2527 = !DILocation(line: 220, column: 2, scope: !2506)
!2528 = !DILocation(line: 220, column: 18, scope: !2506)
!2529 = !DILocation(line: 223, column: 7, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 223, column: 6)
!2531 = !DILocation(line: 223, column: 6, scope: !2506)
!2532 = !DILocation(line: 224, column: 3, scope: !2530)
!2533 = !DILocation(line: 226, column: 7, scope: !2506)
!2534 = !DILocation(line: 226, column: 5, scope: !2506)
!2535 = !DILocation(line: 227, column: 7, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 227, column: 6)
!2537 = !DILocation(line: 227, column: 6, scope: !2506)
!2538 = !DILocation(line: 228, column: 3, scope: !2536)
!2539 = !DILocation(line: 230, column: 15, scope: !2506)
!2540 = !DILocation(line: 230, column: 2, scope: !2506)
!2541 = !DILocation(line: 230, column: 6, scope: !2506)
!2542 = !DILocation(line: 230, column: 13, scope: !2506)
!2543 = !DILocation(line: 231, column: 9, scope: !2506)
!2544 = !DILocation(line: 231, column: 2, scope: !2506)
!2545 = !DILocation(line: 232, column: 9, scope: !2506)
!2546 = !DILocation(line: 232, column: 2, scope: !2506)
!2547 = !DILocation(line: 233, column: 24, scope: !2506)
!2548 = !DILocation(line: 233, column: 2, scope: !2506)
!2549 = !DILocation(line: 233, column: 10, scope: !2506)
!2550 = !DILocation(line: 233, column: 22, scope: !2506)
!2551 = !DILocation(line: 235, column: 29, scope: !2506)
!2552 = !DILocation(line: 235, column: 11, scope: !2506)
!2553 = !DILocation(line: 235, column: 9, scope: !2506)
!2554 = !DILocation(line: 236, column: 6, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 236, column: 6)
!2556 = !DILocation(line: 236, column: 6, scope: !2506)
!2557 = !DILocation(line: 237, column: 3, scope: !2555)
!2558 = !DILocation(line: 239, column: 21, scope: !2506)
!2559 = !DILocation(line: 239, column: 10, scope: !2506)
!2560 = !DILocation(line: 239, column: 19, scope: !2506)
!2561 = !DILocation(line: 241, column: 26, scope: !2506)
!2562 = !DILocation(line: 241, column: 2, scope: !2506)
!2563 = !DILocation(line: 241, column: 6, scope: !2506)
!2564 = !DILocation(line: 241, column: 19, scope: !2506)
!2565 = !DILocation(line: 241, column: 24, scope: !2506)
!2566 = !DILocation(line: 242, column: 2, scope: !2506)
!2567 = !DILocation(line: 242, column: 6, scope: !2506)
!2568 = !DILocation(line: 242, column: 19, scope: !2506)
!2569 = !DILocation(line: 242, column: 24, scope: !2506)
!2570 = !DILocation(line: 243, column: 2, scope: !2506)
!2571 = !DILocation(line: 243, column: 6, scope: !2506)
!2572 = !DILocation(line: 243, column: 19, scope: !2506)
!2573 = !DILocation(line: 243, column: 30, scope: !2506)
!2574 = !DILocation(line: 244, column: 2, scope: !2506)
!2575 = !DILocation(line: 244, column: 6, scope: !2506)
!2576 = !DILocation(line: 244, column: 19, scope: !2506)
!2577 = !DILocation(line: 244, column: 34, scope: !2506)
!2578 = !DILocation(line: 245, column: 2, scope: !2506)
!2579 = !DILocation(line: 245, column: 6, scope: !2506)
!2580 = !DILocation(line: 245, column: 19, scope: !2506)
!2581 = !DILocation(line: 245, column: 32, scope: !2506)
!2582 = !DILocation(line: 246, column: 39, scope: !2506)
!2583 = !DILocation(line: 246, column: 43, scope: !2506)
!2584 = !DILocation(line: 246, column: 51, scope: !2506)
!2585 = !DILocation(line: 247, column: 11, scope: !2506)
!2586 = !DILocation(line: 247, column: 15, scope: !2506)
!2587 = !DILocation(line: 246, column: 16, scope: !2506)
!2588 = !DILocation(line: 246, column: 2, scope: !2506)
!2589 = !DILocation(line: 246, column: 6, scope: !2506)
!2590 = !DILocation(line: 246, column: 14, scope: !2506)
!2591 = !DILocation(line: 248, column: 13, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 248, column: 6)
!2593 = !DILocation(line: 248, column: 17, scope: !2592)
!2594 = !DILocation(line: 248, column: 6, scope: !2592)
!2595 = !DILocation(line: 248, column: 6, scope: !2506)
!2596 = !DILocation(line: 249, column: 20, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 248, column: 27)
!2598 = !DILocation(line: 249, column: 24, scope: !2597)
!2599 = !DILocation(line: 249, column: 12, scope: !2597)
!2600 = !DILocation(line: 249, column: 10, scope: !2597)
!2601 = !DILocation(line: 250, column: 3, scope: !2597)
!2602 = !DILocation(line: 253, column: 2, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 253, column: 2)
!2604 = !DILocation(line: 253, column: 2, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 253, column: 2)
!2606 = !DILocation(line: 256, column: 2, scope: !2506)
!2607 = !DILocation(line: 256, column: 6, scope: !2506)
!2608 = !DILocation(line: 256, column: 17, scope: !2506)
!2609 = !DILocation(line: 256, column: 31, scope: !2506)
!2610 = !DILocation(line: 257, column: 26, scope: !2506)
!2611 = !DILocation(line: 257, column: 30, scope: !2506)
!2612 = !DILocation(line: 257, column: 2, scope: !2506)
!2613 = !DILocation(line: 259, column: 43, scope: !2506)
!2614 = !DILocation(line: 259, column: 11, scope: !2506)
!2615 = !DILocation(line: 259, column: 9, scope: !2506)
!2616 = !DILocation(line: 261, column: 6, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 261, column: 6)
!2618 = !DILocation(line: 261, column: 6, scope: !2506)
!2619 = !DILocation(line: 262, column: 3, scope: !2617)
!2620 = !DILocation(line: 264, column: 2, scope: !2506)
!2621 = !DILocation(line: 266, column: 1, scope: !2506)
!2622 = !DILocation(line: 267, column: 26, scope: !2506)
!2623 = !DILocation(line: 267, column: 30, scope: !2506)
!2624 = !DILocation(line: 267, column: 2, scope: !2506)
!2625 = !DILocation(line: 268, column: 28, scope: !2506)
!2626 = !DILocation(line: 268, column: 32, scope: !2506)
!2627 = !DILocation(line: 268, column: 2, scope: !2506)
!2628 = !DILocation(line: 269, column: 1, scope: !2506)
!2629 = !DILocation(line: 270, column: 8, scope: !2506)
!2630 = !DILocation(line: 270, column: 2, scope: !2506)
!2631 = !DILocation(line: 272, column: 9, scope: !2506)
!2632 = !DILocation(line: 272, column: 2, scope: !2506)
!2633 = !DILocation(line: 273, column: 1, scope: !2506)
!2634 = distinct !DISubprogram(name: "acpi_ac_remove", scope: !3, file: !3, line: 300, type: !2283, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2635)
!2635 = !{!2636, !2637}
!2636 = !DILocalVariable(name: "device", arg: 1, scope: !2634, file: !3, line: 300, type: !2061)
!2637 = !DILocalVariable(name: "ac", scope: !2634, file: !3, line: 302, type: !235)
!2638 = !DILocation(line: 300, column: 48, scope: !2634)
!2639 = !DILocation(line: 302, column: 2, scope: !2634)
!2640 = !DILocation(line: 302, column: 18, scope: !2634)
!2641 = !DILocation(line: 304, column: 7, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 304, column: 6)
!2643 = !DILocation(line: 304, column: 14, scope: !2642)
!2644 = !DILocation(line: 304, column: 35, scope: !2642)
!2645 = !DILocation(line: 304, column: 18, scope: !2642)
!2646 = !DILocation(line: 304, column: 6, scope: !2634)
!2647 = !DILocation(line: 305, column: 3, scope: !2642)
!2648 = !DILocation(line: 307, column: 24, scope: !2634)
!2649 = !DILocation(line: 307, column: 7, scope: !2634)
!2650 = !DILocation(line: 307, column: 5, scope: !2634)
!2651 = !DILocation(line: 309, column: 33, scope: !2634)
!2652 = !DILocation(line: 309, column: 2, scope: !2634)
!2653 = !DILocation(line: 311, column: 26, scope: !2634)
!2654 = !DILocation(line: 311, column: 30, scope: !2634)
!2655 = !DILocation(line: 311, column: 2, scope: !2634)
!2656 = !DILocation(line: 312, column: 28, scope: !2634)
!2657 = !DILocation(line: 312, column: 32, scope: !2634)
!2658 = !DILocation(line: 312, column: 2, scope: !2634)
!2659 = !DILocation(line: 314, column: 8, scope: !2634)
!2660 = !DILocation(line: 314, column: 2, scope: !2634)
!2661 = !DILocation(line: 315, column: 1, scope: !2634)
!2662 = distinct !DISubprogram(name: "kzalloc", scope: !203, file: !203, line: 719, type: !2663, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2665)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!224, !256, !225}
!2665 = !{!2666, !2667}
!2666 = !DILocalVariable(name: "size", arg: 1, scope: !2662, file: !203, line: 719, type: !256)
!2667 = !DILocalVariable(name: "flags", arg: 2, scope: !2662, file: !203, line: 719, type: !225)
!2668 = !DILocation(line: 719, column: 52, scope: !2662)
!2669 = !DILocation(line: 719, column: 64, scope: !2662)
!2670 = !DILocation(line: 721, column: 17, scope: !2662)
!2671 = !DILocation(line: 721, column: 23, scope: !2662)
!2672 = !DILocation(line: 721, column: 29, scope: !2662)
!2673 = !DILocation(line: 721, column: 9, scope: !2662)
!2674 = !DILocation(line: 721, column: 2, scope: !2662)
!2675 = !DISubprogram(name: "strcpy", scope: !2676, file: !2676, line: 63, type: !2677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2676 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!294, !294, !248}
!2679 = distinct !DISubprogram(name: "acpi_ac_get_state", scope: !3, file: !3, line: 75, type: !2680, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!46, !235}
!2682 = !{!2683, !2684}
!2683 = !DILocalVariable(name: "ac", arg: 1, scope: !2679, file: !3, line: 75, type: !235)
!2684 = !DILocalVariable(name: "status", scope: !2679, file: !3, line: 77, type: !228)
!2685 = !DILocation(line: 75, column: 46, scope: !2679)
!2686 = !DILocation(line: 77, column: 2, scope: !2679)
!2687 = !DILocation(line: 77, column: 14, scope: !2679)
!2688 = !DILocation(line: 79, column: 7, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 79, column: 6)
!2690 = !DILocation(line: 79, column: 6, scope: !2679)
!2691 = !DILocation(line: 80, column: 3, scope: !2689)
!2692 = !DILocation(line: 82, column: 6, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 82, column: 6)
!2694 = !DILocation(line: 82, column: 6, scope: !2679)
!2695 = !DILocation(line: 83, column: 3, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 82, column: 15)
!2697 = !DILocation(line: 83, column: 7, scope: !2696)
!2698 = !DILocation(line: 83, column: 13, scope: !2696)
!2699 = !DILocation(line: 84, column: 3, scope: !2696)
!2700 = !DILocation(line: 87, column: 33, scope: !2679)
!2701 = !DILocation(line: 87, column: 37, scope: !2679)
!2702 = !DILocation(line: 87, column: 45, scope: !2679)
!2703 = !DILocation(line: 88, column: 13, scope: !2679)
!2704 = !DILocation(line: 88, column: 17, scope: !2679)
!2705 = !DILocation(line: 87, column: 11, scope: !2679)
!2706 = !DILocation(line: 87, column: 9, scope: !2679)
!2707 = !DILocation(line: 89, column: 6, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 89, column: 6)
!2709 = !DILocation(line: 89, column: 6, scope: !2679)
!2710 = !DILocation(line: 90, column: 3, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 89, column: 28)
!2712 = !DILocation(line: 93, column: 3, scope: !2711)
!2713 = !DILocation(line: 93, column: 7, scope: !2711)
!2714 = !DILocation(line: 93, column: 13, scope: !2711)
!2715 = !DILocation(line: 94, column: 3, scope: !2711)
!2716 = !DILocation(line: 97, column: 2, scope: !2679)
!2717 = !DILocation(line: 98, column: 1, scope: !2679)
!2718 = distinct !DISubprogram(name: "get_ac_property", scope: !3, file: !3, line: 101, type: !266, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2719)
!2719 = !{!2720, !2721, !2722, !2723}
!2720 = !DILocalVariable(name: "psy", arg: 1, scope: !2718, file: !3, line: 101, type: !239)
!2721 = !DILocalVariable(name: "psp", arg: 2, scope: !2718, file: !3, line: 102, type: !112)
!2722 = !DILocalVariable(name: "val", arg: 3, scope: !2718, file: !3, line: 103, type: !268)
!2723 = !DILocalVariable(name: "ac", scope: !2718, file: !3, line: 105, type: !235)
!2724 = !DILocation(line: 101, column: 49, scope: !2718)
!2725 = !DILocation(line: 102, column: 34, scope: !2718)
!2726 = !DILocation(line: 103, column: 35, scope: !2718)
!2727 = !DILocation(line: 105, column: 2, scope: !2718)
!2728 = !DILocation(line: 105, column: 18, scope: !2718)
!2729 = !DILocation(line: 105, column: 23, scope: !2718)
!2730 = !DILocation(line: 107, column: 7, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 107, column: 6)
!2732 = !DILocation(line: 107, column: 6, scope: !2718)
!2733 = !DILocation(line: 108, column: 3, scope: !2731)
!2734 = !DILocation(line: 110, column: 24, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 110, column: 6)
!2736 = !DILocation(line: 110, column: 6, scope: !2735)
!2737 = !DILocation(line: 110, column: 6, scope: !2718)
!2738 = !DILocation(line: 111, column: 3, scope: !2735)
!2739 = !DILocation(line: 113, column: 10, scope: !2718)
!2740 = !DILocation(line: 113, column: 2, scope: !2718)
!2741 = !DILocation(line: 115, column: 17, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 113, column: 15)
!2743 = !DILocation(line: 115, column: 21, scope: !2742)
!2744 = !DILocation(line: 115, column: 3, scope: !2742)
!2745 = !DILocation(line: 115, column: 15, scope: !2742)
!2746 = !DILocation(line: 116, column: 3, scope: !2742)
!2747 = !DILocation(line: 118, column: 3, scope: !2742)
!2748 = !DILocation(line: 121, column: 2, scope: !2718)
!2749 = !DILocation(line: 122, column: 1, scope: !2718)
!2750 = !DISubprogram(name: "power_supply_register", scope: !85, file: !85, line: 877, type: !2751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!239, !959, !243, !2753}
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2510)
!2755 = distinct !DISubprogram(name: "IS_ERR", scope: !2756, file: !2756, line: 59, type: !2757, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2759)
!2756 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!289, !663}
!2759 = !{!2760}
!2760 = !DILocalVariable(name: "ptr", arg: 1, scope: !2755, file: !2756, line: 59, type: !663)
!2761 = !DILocation(line: 59, column: 60, scope: !2755)
!2762 = !DILocation(line: 61, column: 9, scope: !2755)
!2763 = !DILocation(line: 61, column: 2, scope: !2755)
!2764 = distinct !DISubprogram(name: "PTR_ERR", scope: !2756, file: !2756, line: 49, type: !2765, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!234, !663}
!2767 = !{!2768}
!2768 = !DILocalVariable(name: "ptr", arg: 1, scope: !2764, file: !2756, line: 49, type: !663)
!2769 = !DILocation(line: 49, column: 61, scope: !2764)
!2770 = !DILocation(line: 51, column: 16, scope: !2764)
!2771 = !DILocation(line: 51, column: 9, scope: !2764)
!2772 = !DILocation(line: 51, column: 2, scope: !2764)
!2773 = !DISubprogram(name: "_printk", scope: !2774, file: !2774, line: 153, type: !2775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2774 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!46, !248, null}
!2777 = distinct !DISubprogram(name: "acpi_ac_battery_notify", scope: !3, file: !3, line: 164, type: !2331, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2778)
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2785}
!2779 = !DILocalVariable(name: "nb", arg: 1, scope: !2777, file: !3, line: 164, type: !2333)
!2780 = !DILocalVariable(name: "action", arg: 2, scope: !2777, file: !3, line: 165, type: !227)
!2781 = !DILocalVariable(name: "data", arg: 3, scope: !2777, file: !3, line: 165, type: !224)
!2782 = !DILocalVariable(name: "ac", scope: !2777, file: !3, line: 167, type: !235)
!2783 = !DILocalVariable(name: "__mptr", scope: !2784, file: !3, line: 167, type: !224)
!2784 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 167, column: 23)
!2785 = !DILocalVariable(name: "event", scope: !2777, file: !3, line: 168, type: !2336)
!2786 = !DILocation(line: 164, column: 58, scope: !2777)
!2787 = !DILocation(line: 165, column: 21, scope: !2777)
!2788 = !DILocation(line: 165, column: 35, scope: !2777)
!2789 = !DILocation(line: 167, column: 2, scope: !2777)
!2790 = !DILocation(line: 167, column: 18, scope: !2777)
!2791 = !DILocation(line: 167, column: 23, scope: !2784)
!2792 = !DILocation(line: 167, column: 23, scope: !2777)
!2793 = !DILocation(line: 168, column: 2, scope: !2777)
!2794 = !DILocation(line: 168, column: 25, scope: !2777)
!2795 = !DILocation(line: 168, column: 58, scope: !2777)
!2796 = !DILocation(line: 177, column: 13, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 177, column: 6)
!2798 = !DILocation(line: 177, column: 20, scope: !2797)
!2799 = !DILocation(line: 177, column: 6, scope: !2797)
!2800 = !DILocation(line: 177, column: 54, scope: !2797)
!2801 = !DILocation(line: 177, column: 59, scope: !2797)
!2802 = !DILocation(line: 178, column: 6, scope: !2797)
!2803 = !DILocation(line: 178, column: 13, scope: !2797)
!2804 = !DILocation(line: 178, column: 18, scope: !2797)
!2805 = !DILocation(line: 177, column: 6, scope: !2777)
!2806 = !DILocation(line: 179, column: 21, scope: !2797)
!2807 = !DILocation(line: 179, column: 3, scope: !2797)
!2808 = !DILocation(line: 182, column: 1, scope: !2777)
!2809 = !DILocation(line: 181, column: 2, scope: !2777)
!2810 = !DISubprogram(name: "register_acpi_notifier", scope: !2063, file: !2063, line: 525, type: !2811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!46, !2333}
!2813 = !DISubprogram(name: "acpi_dev_install_notify_handler", scope: !2063, file: !2063, line: 518, type: !2814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!46, !2061, !230, !2816}
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !229, line: 1061, baseType: !2817)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{null, !2068, !230, !224}
!2820 = distinct !DISubprogram(name: "acpi_ac_notify", scope: !3, file: !3, line: 129, type: !2818, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2821)
!2821 = !{!2822, !2823, !2824, !2825, !2826}
!2822 = !DILocalVariable(name: "handle", arg: 1, scope: !2820, file: !3, line: 129, type: !2068)
!2823 = !DILocalVariable(name: "event", arg: 2, scope: !2820, file: !3, line: 129, type: !230)
!2824 = !DILocalVariable(name: "data", arg: 3, scope: !2820, file: !3, line: 129, type: !224)
!2825 = !DILocalVariable(name: "device", scope: !2820, file: !3, line: 131, type: !2061)
!2826 = !DILocalVariable(name: "ac", scope: !2820, file: !3, line: 132, type: !235)
!2827 = !DILocation(line: 129, column: 40, scope: !2820)
!2828 = !DILocation(line: 129, column: 52, scope: !2820)
!2829 = !DILocation(line: 129, column: 65, scope: !2820)
!2830 = !DILocation(line: 131, column: 2, scope: !2820)
!2831 = !DILocation(line: 131, column: 22, scope: !2820)
!2832 = !DILocation(line: 131, column: 31, scope: !2820)
!2833 = !DILocation(line: 132, column: 2, scope: !2820)
!2834 = !DILocation(line: 132, column: 18, scope: !2820)
!2835 = !DILocation(line: 132, column: 40, scope: !2820)
!2836 = !DILocation(line: 132, column: 23, scope: !2820)
!2837 = !DILocation(line: 134, column: 7, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 134, column: 6)
!2839 = !DILocation(line: 134, column: 6, scope: !2820)
!2840 = !DILocation(line: 135, column: 3, scope: !2838)
!2841 = !DILocation(line: 137, column: 10, scope: !2820)
!2842 = !DILocation(line: 137, column: 2, scope: !2820)
!2843 = !DILocation(line: 139, column: 3, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 139, column: 3)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 139, column: 3)
!2846 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 137, column: 17)
!2847 = !DILocation(line: 139, column: 3, scope: !2845)
!2848 = !DILocation(line: 139, column: 3, scope: !2846)
!2849 = !DILocation(line: 152, column: 7, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 152, column: 7)
!2851 = !DILocation(line: 152, column: 36, scope: !2850)
!2852 = !DILocation(line: 152, column: 7, scope: !2846)
!2853 = !DILocation(line: 153, column: 11, scope: !2850)
!2854 = !DILocation(line: 153, column: 4, scope: !2850)
!2855 = !DILocation(line: 155, column: 21, scope: !2846)
!2856 = !DILocation(line: 155, column: 3, scope: !2846)
!2857 = !DILocation(line: 156, column: 35, scope: !2846)
!2858 = !DILocation(line: 156, column: 43, scope: !2846)
!2859 = !DILocation(line: 156, column: 47, scope: !2846)
!2860 = !DILocation(line: 157, column: 19, scope: !2846)
!2861 = !DILocation(line: 157, column: 27, scope: !2846)
!2862 = !DILocation(line: 157, column: 9, scope: !2846)
!2863 = !DILocation(line: 157, column: 33, scope: !2846)
!2864 = !DILocation(line: 158, column: 15, scope: !2846)
!2865 = !DILocation(line: 158, column: 19, scope: !2846)
!2866 = !DILocation(line: 158, column: 9, scope: !2846)
!2867 = !DILocation(line: 156, column: 3, scope: !2846)
!2868 = !DILocation(line: 159, column: 28, scope: !2846)
!2869 = !DILocation(line: 159, column: 36, scope: !2846)
!2870 = !DILocation(line: 159, column: 49, scope: !2846)
!2871 = !DILocation(line: 159, column: 53, scope: !2846)
!2872 = !DILocation(line: 159, column: 43, scope: !2846)
!2873 = !DILocation(line: 159, column: 3, scope: !2846)
!2874 = !DILocation(line: 160, column: 19, scope: !2846)
!2875 = !DILocation(line: 160, column: 23, scope: !2846)
!2876 = !DILocation(line: 160, column: 32, scope: !2846)
!2877 = !DILocation(line: 160, column: 36, scope: !2846)
!2878 = !DILocation(line: 160, column: 3, scope: !2846)
!2879 = !DILocation(line: 161, column: 2, scope: !2846)
!2880 = !DILocation(line: 162, column: 1, scope: !2820)
!2881 = !DISubprogram(name: "power_supply_unregister", scope: !85, file: !85, line: 892, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2882 = !DISubprogram(name: "unregister_acpi_notifier", scope: !2063, file: !2063, line: 526, type: !2811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2883 = !DISubprogram(name: "kfree", scope: !203, file: !203, line: 227, type: !2884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{null, !663}
!2886 = distinct !DISubprogram(name: "kmalloc", scope: !203, file: !203, line: 591, type: !2663, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2887)
!2887 = !{!2888, !2889, !2890}
!2888 = !DILocalVariable(name: "size", arg: 1, scope: !2886, file: !203, line: 591, type: !256)
!2889 = !DILocalVariable(name: "flags", arg: 2, scope: !2886, file: !203, line: 591, type: !225)
!2890 = !DILocalVariable(name: "index", scope: !2891, file: !203, line: 594, type: !7)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !203, line: 593, column: 42)
!2892 = distinct !DILexicalBlock(scope: !2886, file: !203, line: 593, column: 6)
!2893 = !DILocation(line: 591, column: 61, scope: !2886)
!2894 = !DILocation(line: 591, column: 73, scope: !2886)
!2895 = !DILocation(line: 593, column: 27, scope: !2892)
!2896 = !DILocation(line: 593, column: 6, scope: !2892)
!2897 = !DILocation(line: 593, column: 33, scope: !2892)
!2898 = !DILocation(line: 593, column: 36, scope: !2892)
!2899 = !DILocation(line: 593, column: 6, scope: !2886)
!2900 = !DILocation(line: 594, column: 3, scope: !2891)
!2901 = !DILocation(line: 594, column: 16, scope: !2891)
!2902 = !DILocation(line: 596, column: 7, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2891, file: !203, line: 596, column: 7)
!2904 = !DILocation(line: 596, column: 12, scope: !2903)
!2905 = !DILocation(line: 596, column: 7, scope: !2891)
!2906 = !DILocation(line: 597, column: 25, scope: !2903)
!2907 = !DILocation(line: 597, column: 31, scope: !2903)
!2908 = !DILocation(line: 597, column: 11, scope: !2903)
!2909 = !DILocation(line: 597, column: 4, scope: !2903)
!2910 = !DILocation(line: 599, column: 11, scope: !2891)
!2911 = !DILocation(line: 599, column: 9, scope: !2891)
!2912 = !DILocation(line: 601, column: 33, scope: !2891)
!2913 = !DILocation(line: 601, column: 40, scope: !2891)
!2914 = !DILocation(line: 601, column: 20, scope: !2891)
!2915 = !DILocation(line: 601, column: 5, scope: !2891)
!2916 = !DILocation(line: 601, column: 51, scope: !2891)
!2917 = !DILocation(line: 602, column: 5, scope: !2891)
!2918 = !DILocation(line: 602, column: 12, scope: !2891)
!2919 = !DILocation(line: 600, column: 10, scope: !2891)
!2920 = !DILocation(line: 600, column: 3, scope: !2891)
!2921 = !DILocation(line: 603, column: 2, scope: !2892)
!2922 = !DILocation(line: 604, column: 19, scope: !2886)
!2923 = !DILocation(line: 604, column: 25, scope: !2886)
!2924 = !DILocation(line: 604, column: 9, scope: !2886)
!2925 = !DILocation(line: 604, column: 2, scope: !2886)
!2926 = !DILocation(line: 605, column: 1, scope: !2886)
!2927 = !DISubprogram(name: "kmalloc_large", scope: !203, file: !203, line: 531, type: !2663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2928 = distinct !DISubprogram(name: "__kmalloc_index", scope: !203, file: !203, line: 444, type: !2929, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!7, !256, !289}
!2931 = !{!2932, !2933}
!2932 = !DILocalVariable(name: "size", arg: 1, scope: !2928, file: !203, line: 444, type: !256)
!2933 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2928, file: !203, line: 445, type: !289)
!2934 = !DILocation(line: 444, column: 60, scope: !2928)
!2935 = !DILocation(line: 445, column: 16, scope: !2928)
!2936 = !DILocation(line: 447, column: 7, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 447, column: 6)
!2938 = !DILocation(line: 447, column: 6, scope: !2928)
!2939 = !DILocation(line: 448, column: 3, scope: !2937)
!2940 = !DILocation(line: 450, column: 6, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 450, column: 6)
!2942 = !DILocation(line: 450, column: 11, scope: !2941)
!2943 = !DILocation(line: 450, column: 6, scope: !2928)
!2944 = !DILocation(line: 451, column: 3, scope: !2941)
!2945 = !DILocation(line: 453, column: 32, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 453, column: 6)
!2947 = !DILocation(line: 453, column: 37, scope: !2946)
!2948 = !DILocation(line: 453, column: 42, scope: !2946)
!2949 = !DILocation(line: 453, column: 45, scope: !2946)
!2950 = !DILocation(line: 453, column: 50, scope: !2946)
!2951 = !DILocation(line: 453, column: 6, scope: !2928)
!2952 = !DILocation(line: 454, column: 3, scope: !2946)
!2953 = !DILocation(line: 455, column: 32, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 455, column: 6)
!2955 = !DILocation(line: 455, column: 37, scope: !2954)
!2956 = !DILocation(line: 455, column: 43, scope: !2954)
!2957 = !DILocation(line: 455, column: 46, scope: !2954)
!2958 = !DILocation(line: 455, column: 51, scope: !2954)
!2959 = !DILocation(line: 455, column: 6, scope: !2928)
!2960 = !DILocation(line: 456, column: 3, scope: !2954)
!2961 = !DILocation(line: 457, column: 6, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 457, column: 6)
!2963 = !DILocation(line: 457, column: 11, scope: !2962)
!2964 = !DILocation(line: 457, column: 6, scope: !2928)
!2965 = !DILocation(line: 457, column: 26, scope: !2962)
!2966 = !DILocation(line: 458, column: 6, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 458, column: 6)
!2968 = !DILocation(line: 458, column: 11, scope: !2967)
!2969 = !DILocation(line: 458, column: 6, scope: !2928)
!2970 = !DILocation(line: 458, column: 26, scope: !2967)
!2971 = !DILocation(line: 459, column: 6, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 459, column: 6)
!2973 = !DILocation(line: 459, column: 11, scope: !2972)
!2974 = !DILocation(line: 459, column: 6, scope: !2928)
!2975 = !DILocation(line: 459, column: 26, scope: !2972)
!2976 = !DILocation(line: 460, column: 6, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 460, column: 6)
!2978 = !DILocation(line: 460, column: 11, scope: !2977)
!2979 = !DILocation(line: 460, column: 6, scope: !2928)
!2980 = !DILocation(line: 460, column: 26, scope: !2977)
!2981 = !DILocation(line: 461, column: 6, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 461, column: 6)
!2983 = !DILocation(line: 461, column: 11, scope: !2982)
!2984 = !DILocation(line: 461, column: 6, scope: !2928)
!2985 = !DILocation(line: 461, column: 26, scope: !2982)
!2986 = !DILocation(line: 462, column: 6, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 462, column: 6)
!2988 = !DILocation(line: 462, column: 11, scope: !2987)
!2989 = !DILocation(line: 462, column: 6, scope: !2928)
!2990 = !DILocation(line: 462, column: 26, scope: !2987)
!2991 = !DILocation(line: 463, column: 6, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 463, column: 6)
!2993 = !DILocation(line: 463, column: 11, scope: !2992)
!2994 = !DILocation(line: 463, column: 6, scope: !2928)
!2995 = !DILocation(line: 463, column: 26, scope: !2992)
!2996 = !DILocation(line: 464, column: 6, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 464, column: 6)
!2998 = !DILocation(line: 464, column: 11, scope: !2997)
!2999 = !DILocation(line: 464, column: 6, scope: !2928)
!3000 = !DILocation(line: 464, column: 26, scope: !2997)
!3001 = !DILocation(line: 465, column: 6, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 465, column: 6)
!3003 = !DILocation(line: 465, column: 11, scope: !3002)
!3004 = !DILocation(line: 465, column: 6, scope: !2928)
!3005 = !DILocation(line: 465, column: 26, scope: !3002)
!3006 = !DILocation(line: 466, column: 6, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 466, column: 6)
!3008 = !DILocation(line: 466, column: 11, scope: !3007)
!3009 = !DILocation(line: 466, column: 6, scope: !2928)
!3010 = !DILocation(line: 466, column: 26, scope: !3007)
!3011 = !DILocation(line: 467, column: 6, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 467, column: 6)
!3013 = !DILocation(line: 467, column: 11, scope: !3012)
!3014 = !DILocation(line: 467, column: 6, scope: !2928)
!3015 = !DILocation(line: 467, column: 26, scope: !3012)
!3016 = !DILocation(line: 468, column: 6, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 468, column: 6)
!3018 = !DILocation(line: 468, column: 11, scope: !3017)
!3019 = !DILocation(line: 468, column: 6, scope: !2928)
!3020 = !DILocation(line: 468, column: 26, scope: !3017)
!3021 = !DILocation(line: 469, column: 6, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 469, column: 6)
!3023 = !DILocation(line: 469, column: 11, scope: !3022)
!3024 = !DILocation(line: 469, column: 6, scope: !2928)
!3025 = !DILocation(line: 469, column: 26, scope: !3022)
!3026 = !DILocation(line: 470, column: 6, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 470, column: 6)
!3028 = !DILocation(line: 470, column: 11, scope: !3027)
!3029 = !DILocation(line: 470, column: 6, scope: !2928)
!3030 = !DILocation(line: 470, column: 26, scope: !3027)
!3031 = !DILocation(line: 471, column: 6, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 471, column: 6)
!3033 = !DILocation(line: 471, column: 11, scope: !3032)
!3034 = !DILocation(line: 471, column: 6, scope: !2928)
!3035 = !DILocation(line: 471, column: 26, scope: !3032)
!3036 = !DILocation(line: 472, column: 6, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 472, column: 6)
!3038 = !DILocation(line: 472, column: 11, scope: !3037)
!3039 = !DILocation(line: 472, column: 6, scope: !2928)
!3040 = !DILocation(line: 472, column: 26, scope: !3037)
!3041 = !DILocation(line: 473, column: 6, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 473, column: 6)
!3043 = !DILocation(line: 473, column: 11, scope: !3042)
!3044 = !DILocation(line: 473, column: 6, scope: !2928)
!3045 = !DILocation(line: 473, column: 26, scope: !3042)
!3046 = !DILocation(line: 474, column: 6, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 474, column: 6)
!3048 = !DILocation(line: 474, column: 11, scope: !3047)
!3049 = !DILocation(line: 474, column: 6, scope: !2928)
!3050 = !DILocation(line: 474, column: 27, scope: !3047)
!3051 = !DILocation(line: 475, column: 6, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 475, column: 6)
!3053 = !DILocation(line: 475, column: 11, scope: !3052)
!3054 = !DILocation(line: 475, column: 6, scope: !2928)
!3055 = !DILocation(line: 475, column: 32, scope: !3052)
!3056 = !DILocation(line: 477, column: 50, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !2928, file: !203, line: 477, column: 6)
!3058 = !{i8 0, i8 2}
!3059 = !DILocation(line: 477, column: 6, scope: !2928)
!3060 = !DILocation(line: 478, column: 3, scope: !3057)
!3061 = !DILocation(line: 478, column: 3, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !203, line: 478, column: 3)
!3063 = distinct !DILexicalBlock(scope: !3057, file: !203, line: 478, column: 3)
!3064 = !{i32 -2142597151}
!3065 = !DILocation(line: 478, column: 3, scope: !3063)
!3066 = !DILocation(line: 480, column: 3, scope: !3057)
!3067 = !DILocation(line: 480, column: 3, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3057, file: !203, line: 480, column: 3)
!3069 = !DILocation(line: 480, column: 3, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3068, file: !203, line: 480, column: 3)
!3071 = !DILocation(line: 480, column: 3, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3068, file: !203, line: 480, column: 3)
!3073 = !{i64 2152370348, i64 2152370377, i64 2152370423, i64 2152370481, i64 2152370535, i64 2152370589, i64 2152370644, i64 2152370675}
!3074 = !DILocation(line: 483, column: 2, scope: !2928)
!3075 = !DILocation(line: 484, column: 1, scope: !2928)
!3076 = !DISubprogram(name: "kmalloc_trace", scope: !203, file: !203, line: 525, type: !3077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!224, !3079, !225, !256}
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3081, line: 11, flags: DIFlagFwdDecl)
!3081 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3082 = distinct !DISubprogram(name: "kmalloc_type", scope: !203, file: !203, line: 401, type: !3083, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3085)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!202, !225, !227}
!3085 = !{!3086, !3087}
!3086 = !DILocalVariable(name: "flags", arg: 1, scope: !3082, file: !203, line: 401, type: !225)
!3087 = !DILocalVariable(name: "caller", arg: 2, scope: !3082, file: !203, line: 401, type: !227)
!3088 = !DILocation(line: 401, column: 67, scope: !3082)
!3089 = !DILocation(line: 401, column: 88, scope: !3082)
!3090 = !DILocation(line: 407, column: 6, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3082, file: !203, line: 407, column: 6)
!3092 = !DILocation(line: 407, column: 6, scope: !3082)
!3093 = !DILocation(line: 413, column: 3, scope: !3091)
!3094 = !DILocation(line: 423, column: 38, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3082, file: !203, line: 423, column: 6)
!3096 = !DILocation(line: 423, column: 44, scope: !3095)
!3097 = !DILocation(line: 423, column: 6, scope: !3082)
!3098 = !DILocation(line: 424, column: 3, scope: !3095)
!3099 = !DILocation(line: 426, column: 3, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3082, file: !203, line: 425, column: 6)
!3101 = !DILocation(line: 429, column: 1, scope: !3082)
!3102 = !DISubprogram(name: "__kmalloc", scope: !203, file: !203, line: 488, type: !2663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3103 = !DISubprogram(name: "__compiletime_assert_196", scope: !203, file: !203, line: 478, type: !1410, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3104 = !DISubprogram(name: "acpi_evaluate_integer", scope: !2063, file: !2063, line: 27, type: !3105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!228, !2068, !3107, !3108, !3113}
!3107 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !229, line: 423, baseType: !294)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !229, line: 956, size: 128, elements: !3110)
!3110 = !{!3111, !3112}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3109, file: !229, line: 957, baseType: !230, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3109, file: !229, line: 958, baseType: !2127, size: 64, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!3114 = !DISubprogram(name: "acpi_handle_printk", scope: !3115, file: !3115, line: 1180, type: !3116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3115 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!3116 = !DISubroutineType(types: !3117)
!3117 = !{null, !248, !2068, !248, null}
!3118 = !DISubprogram(name: "acpi_format_exception", scope: !3119, file: !3119, line: 430, type: !3120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3119 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!248, !228}
!3122 = !DISubprogram(name: "power_supply_get_drvdata", scope: !85, file: !85, line: 897, type: !3123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!224, !239}
!3125 = !DISubprogram(name: "strcmp", scope: !2676, file: !2676, line: 88, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!46, !248, !248}
!3128 = distinct !DISubprogram(name: "acpi_driver_data", scope: !2063, file: !2063, line: 456, type: !3129, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3131)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!224, !2061}
!3131 = !{!3132}
!3132 = !DILocalVariable(name: "d", arg: 1, scope: !3128, file: !2063, line: 456, type: !2061)
!3133 = !DILocation(line: 456, column: 58, scope: !3128)
!3134 = !DILocation(line: 458, column: 9, scope: !3128)
!3135 = !DILocation(line: 458, column: 12, scope: !3128)
!3136 = !DILocation(line: 458, column: 2, scope: !3128)
!3137 = !DISubprogram(name: "msleep", scope: !3138, file: !3138, line: 61, type: !3139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3138 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!3139 = !DISubroutineType(types: !3140)
!3140 = !{null, !7}
!3141 = !DISubprogram(name: "acpi_bus_generate_netlink_event", scope: !2063, file: !2063, line: 513, type: !3142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!46, !248, !248, !352, !46}
!3144 = distinct !DISubprogram(name: "dev_name", scope: !26, file: !26, line: 858, type: !3145, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3147)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!248, !975}
!3147 = !{!3148}
!3148 = !DILocalVariable(name: "dev", arg: 1, scope: !3144, file: !26, line: 858, type: !975)
!3149 = !DILocation(line: 858, column: 57, scope: !3144)
!3150 = !DILocation(line: 861, column: 6, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3144, file: !26, line: 861, column: 6)
!3152 = !DILocation(line: 861, column: 11, scope: !3151)
!3153 = !DILocation(line: 861, column: 6, scope: !3144)
!3154 = !DILocation(line: 862, column: 10, scope: !3151)
!3155 = !DILocation(line: 862, column: 15, scope: !3151)
!3156 = !DILocation(line: 862, column: 3, scope: !3151)
!3157 = !DILocation(line: 864, column: 23, scope: !3144)
!3158 = !DILocation(line: 864, column: 28, scope: !3144)
!3159 = !DILocation(line: 864, column: 9, scope: !3144)
!3160 = !DILocation(line: 864, column: 2, scope: !3144)
!3161 = !DILocation(line: 865, column: 1, scope: !3144)
!3162 = !DISubprogram(name: "acpi_notifier_call_chain", scope: !2063, file: !2063, line: 524, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!46, !2061, !230, !230}
!3165 = !DISubprogram(name: "kobject_uevent", scope: !213, file: !213, line: 214, type: !3166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!46, !317, !212}
!3168 = distinct !DISubprogram(name: "kobject_name", scope: !213, file: !213, line: 87, type: !380, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3169)
!3169 = !{!3170}
!3170 = !DILocalVariable(name: "kobj", arg: 1, scope: !3168, file: !213, line: 87, type: !375)
!3171 = !DILocation(line: 87, column: 62, scope: !3168)
!3172 = !DILocation(line: 89, column: 9, scope: !3168)
!3173 = !DILocation(line: 89, column: 15, scope: !3168)
!3174 = !DILocation(line: 89, column: 2, scope: !3168)
!3175 = !DISubprogram(name: "acpi_dev_remove_notify_handler", scope: !2063, file: !2063, line: 521, type: !3176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{null, !2061, !230, !2816}
!3178 = distinct !DISubprogram(name: "acpi_ac_resume", scope: !3, file: !3, line: 276, type: !993, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3179)
!3179 = !{!3180, !3181, !3182, !3183}
!3180 = !DILocalVariable(name: "dev", arg: 1, scope: !3178, file: !3, line: 276, type: !959)
!3181 = !DILocalVariable(name: "ac", scope: !3178, file: !3, line: 278, type: !235)
!3182 = !DILocalVariable(name: "old_state", scope: !3178, file: !3, line: 279, type: !7)
!3183 = !DILocalVariable(name: "__mptr", scope: !3184, file: !3, line: 284, type: !224)
!3184 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 284, column: 24)
!3185 = !DILocation(line: 276, column: 42, scope: !3178)
!3186 = !DILocation(line: 278, column: 2, scope: !3178)
!3187 = !DILocation(line: 278, column: 18, scope: !3178)
!3188 = !DILocation(line: 279, column: 2, scope: !3178)
!3189 = !DILocation(line: 279, column: 15, scope: !3178)
!3190 = !DILocation(line: 281, column: 7, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 281, column: 6)
!3192 = !DILocation(line: 281, column: 6, scope: !3178)
!3193 = !DILocation(line: 282, column: 3, scope: !3191)
!3194 = !DILocation(line: 284, column: 24, scope: !3184)
!3195 = !DILocation(line: 284, column: 24, scope: !3178)
!3196 = !DILocation(line: 284, column: 7, scope: !3178)
!3197 = !DILocation(line: 284, column: 5, scope: !3178)
!3198 = !DILocation(line: 285, column: 7, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 285, column: 6)
!3200 = !DILocation(line: 285, column: 6, scope: !3178)
!3201 = !DILocation(line: 286, column: 3, scope: !3199)
!3202 = !DILocation(line: 288, column: 14, scope: !3178)
!3203 = !DILocation(line: 288, column: 18, scope: !3178)
!3204 = !DILocation(line: 288, column: 12, scope: !3178)
!3205 = !DILocation(line: 289, column: 24, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 289, column: 6)
!3207 = !DILocation(line: 289, column: 6, scope: !3206)
!3208 = !DILocation(line: 289, column: 6, scope: !3178)
!3209 = !DILocation(line: 290, column: 3, scope: !3206)
!3210 = !DILocation(line: 291, column: 6, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 291, column: 6)
!3212 = !DILocation(line: 291, column: 19, scope: !3211)
!3213 = !DILocation(line: 291, column: 23, scope: !3211)
!3214 = !DILocation(line: 291, column: 16, scope: !3211)
!3215 = !DILocation(line: 291, column: 6, scope: !3178)
!3216 = !DILocation(line: 292, column: 19, scope: !3211)
!3217 = !DILocation(line: 292, column: 23, scope: !3211)
!3218 = !DILocation(line: 292, column: 32, scope: !3211)
!3219 = !DILocation(line: 292, column: 36, scope: !3211)
!3220 = !DILocation(line: 292, column: 3, scope: !3211)
!3221 = !DILocation(line: 294, column: 2, scope: !3178)
!3222 = !DILocation(line: 295, column: 1, scope: !3178)
!3223 = !DISubprogram(name: "acpi_quirk_skip_acpi_ac_and_battery", scope: !2063, file: !2063, line: 652, type: !786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3224 = !DISubprogram(name: "dmi_check_system", scope: !3225, file: !3225, line: 100, type: !2447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3225 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!3226 = !DISubprogram(name: "acpi_bus_register_driver", scope: !2063, file: !2063, line: 564, type: !3227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!46, !2480}
!3229 = distinct !DISubprogram(name: "ac_only_quirk", scope: !3, file: !3, line: 190, type: !2447, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3230)
!3230 = !{!3231}
!3231 = !DILocalVariable(name: "d", arg: 1, scope: !3229, file: !3, line: 190, type: !2449)
!3232 = !DILocation(line: 190, column: 61, scope: !3229)
!3233 = !DILocation(line: 192, column: 10, scope: !3229)
!3234 = !DILocation(line: 193, column: 2, scope: !3229)
!3235 = distinct !DISubprogram(name: "thinkpad_e530_quirk", scope: !3, file: !3, line: 184, type: !2447, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3236)
!3236 = !{!3237}
!3237 = !DILocalVariable(name: "d", arg: 1, scope: !3235, file: !3, line: 184, type: !2449)
!3238 = !DILocation(line: 184, column: 67, scope: !3235)
!3239 = !DILocation(line: 186, column: 31, scope: !3235)
!3240 = !DILocation(line: 187, column: 2, scope: !3235)
