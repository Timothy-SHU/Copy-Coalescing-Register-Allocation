; ModuleID = 'drivers/acpi/processor_driver.c'
source_filename = "drivers/acpi/processor_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_processor__229_308_acpi_processor_driver_init\22, \22a\22\09\09"
module asm "__initcall__kmod_processor__229_308_acpi_processor_driver_init6:\09\09\09"
module asm ".long\09__initstub__kmod_processor__229_308_acpi_processor_driver_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.acpi_device_id = type { [16 x i8], i64, i32, i32 }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.acpi_processor = type { ptr, i32, i32, i32, i32, i32, i32, %struct.acpi_processor_flags, %struct.acpi_processor_power, ptr, %struct.acpi_processor_throttling, %struct.acpi_processor_limit, ptr, ptr, %struct.freq_qos_request, %struct.freq_qos_request }
%struct.acpi_processor_flags = type { i16 }
%struct.acpi_processor_power = type { i32, %union.anon.15, i32 }
%union.anon.15 = type { [8 x %struct.acpi_lpi_state] }
%struct.acpi_lpi_state = type { i32, i32, i32, i32, i32, i32, i64, i8, i8, [32 x i8] }
%struct.acpi_processor_throttling = type { i32, i32, %struct.acpi_pct_register, %struct.acpi_pct_register, i32, ptr, %struct.acpi_tsd_package, [1 x %struct.cpumask], ptr, ptr, i32, i8, i8, i8, i32, [16 x %struct.acpi_processor_tx] }
%struct.acpi_pct_register = type <{ i8, i16, i8, i8, i8, i8, i64 }>
%struct.acpi_tsd_package = type { i64, i64, i64, i64, i64 }
%struct.cpumask = type { [1 x i64] }
%struct.acpi_processor_tx = type { i16, i16 }
%struct.acpi_processor_limit = type { %struct.acpi_processor_lx, %struct.acpi_processor_lx, %struct.acpi_processor_lx }
%struct.acpi_processor_lx = type { i32, i32 }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }

@__UNIQUE_ID_author225 = internal constant [34 x i8] c"processor.author=Paul Diefenbaugh\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description226 = internal constant [44 x i8] c"processor.description=ACPI Processor Driver\00", section ".modinfo", align 1, !dbg !2482
@__UNIQUE_ID_file227 = internal constant [38 x i8] c"processor.file=drivers/acpi/processor\00", section ".modinfo", align 1, !dbg !2487
@__UNIQUE_ID_license228 = internal constant [22 x i8] c"processor.license=GPL\00", section ".modinfo", align 1, !dbg !2492
@acpi_disabled = external dso_local global i32, align 4
@acpi_processor_cpufreq_init = hidden global i8 0, align 1, !dbg !2508
@acpi_processor_notifier_block = internal global %struct.notifier_block { ptr @acpi_processor_notifier, ptr null, i32 0 }, align 8, !dbg !2512
@hp_online = internal global i32 0, align 4, !dbg !2510
@acpi_processor_driver = internal global %struct.device_driver { ptr @.str, ptr @cpu_subsys, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @processor_device_ids, ptr @acpi_processor_start, ptr null, ptr @acpi_processor_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !2519
@__UNIQUE_ID___addressable___initstub__kmod_processor__229_308_acpi_processor_driver_init6230 = internal global ptr @__initstub__kmod_processor__229_308_acpi_processor_driver_init6, section ".discard.addressable", align 8, !dbg !2497
@__exitcall_acpi_processor_driver_exit = internal global ptr @acpi_processor_driver_exit, section ".exitcall.exit", align 8, !dbg !2499
@__UNIQUE_ID_alias231 = internal constant [26 x i8] c"processor.alias=processor\00", section ".modinfo", align 1, !dbg !2503
@.str = private unnamed_addr constant [10 x i8] c"processor\00", align 1, !dbg !2514
@cpu_subsys = external dso_local global %struct.bus_type, align 8
@processor_device_ids = internal constant [3 x %struct.acpi_device_id] [%struct.acpi_device_id { [16 x i8] c"LNXCPU\00\00\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ACPI0007\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !2521
@acpi_idle_driver = external dso_local global %struct.cpuidle_driver, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"acpi/cpu-drv:online\00", align 1, !dbg !2524
@.str.2 = private unnamed_addr constant [18 x i8] c"acpi/cpu-drv:dead\00", align 1, !dbg !2526
@processors = external dso_local global ptr, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str.3 = private unnamed_addr constant [43 x i8] c"\016Will online and init hotplugged CPU: %d\0A\00", align 1, !dbg !2531
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to start CPU: %d\0A\00", align 1, !dbg !2536
@.str.5 = private unnamed_addr constant [32 x i8] c"drivers/acpi/processor_driver.c\00", align 1, !dbg !2541
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @acpi_processor_driver_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_processor__229_308_acpi_processor_driver_init6230, ptr @__exitcall_acpi_processor_driver_exit, ptr @__UNIQUE_ID_alias231], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @acpi_processor_driver_exit() #0 section ".exit.text" align 16 !dbg !2555 {
entry:
  %0 = load i32, ptr @acpi_disabled, align 4, !dbg !2556
  %tobool = icmp ne i32 %0, 0, !dbg !2556
  br i1 %tobool, label %if.then, label %if.end, !dbg !2558

if.then:                                          ; preds = %entry
  br label %return, !dbg !2559

if.end:                                           ; preds = %entry
  %1 = load i8, ptr @acpi_processor_cpufreq_init, align 1, !dbg !2560, !range !2562, !noundef !598
  %tobool1 = trunc i8 %1 to i1, !dbg !2560
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2563

if.then2:                                         ; preds = %if.end
  %call = call i32 @cpufreq_unregister_notifier(ptr noundef @acpi_processor_notifier_block, i32 noundef 1) #8, !dbg !2564
  store i8 0, ptr @acpi_processor_cpufreq_init, align 1, !dbg !2566
  br label %if.end3, !dbg !2567

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load i32, ptr @hp_online, align 4, !dbg !2568
  call void @cpuhp_remove_state_nocalls(i32 noundef %2) #8, !dbg !2569
  call void @cpuhp_remove_state_nocalls(i32 noundef 25) #8, !dbg !2570
  call void @driver_unregister(ptr noundef @acpi_processor_driver) #8, !dbg !2571
  br label %return, !dbg !2572

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !2572
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2573 dso_local i32 @cpufreq_unregister_notifier(ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuhp_remove_state_nocalls(i32 noundef %state) #2 align 16 !dbg !2576 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2580, metadata !DIExpression()), !dbg !2581
  %0 = load i32, ptr %state.addr, align 4, !dbg !2582
  call void @__cpuhp_remove_state(i32 noundef %0, i1 noundef zeroext false) #8, !dbg !2583
  ret void, !dbg !2584
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2585 dso_local void @driver_unregister(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_processor__229_308_acpi_processor_driver_init6() #0 section ".init.text" align 16 !dbg !2588 {
entry:
  %call = call i32 @acpi_processor_driver_init() #9, !dbg !2589
  ret i32 %call, !dbg !2589
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_processor_driver_init() #0 section ".init.text" align 16 !dbg !2590 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #10, !dbg !2594
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2592, metadata !DIExpression()), !dbg !2595
  store i32 0, ptr %result, align 4, !dbg !2595
  %0 = load i32, ptr @acpi_disabled, align 4, !dbg !2596
  %tobool = icmp ne i32 %0, 0, !dbg !2596
  br i1 %tobool, label %if.then, label %if.end, !dbg !2598

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2599

if.end:                                           ; preds = %entry
  %call = call i32 @cpufreq_register_notifier(ptr noundef @acpi_processor_notifier_block, i32 noundef 1) #8, !dbg !2600
  %tobool1 = icmp ne i32 %call, 0, !dbg !2600
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2602

if.then2:                                         ; preds = %if.end
  store i8 1, ptr @acpi_processor_cpufreq_init, align 1, !dbg !2603
  call void @acpi_processor_ignore_ppc_init() #8, !dbg !2605
  br label %if.end3, !dbg !2606

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = call i32 @driver_register(ptr noundef @acpi_processor_driver) #8, !dbg !2607
  store i32 %call4, ptr %result, align 4, !dbg !2608
  %1 = load i32, ptr %result, align 4, !dbg !2609
  %cmp = icmp slt i32 %1, 0, !dbg !2611
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !2612

if.then5:                                         ; preds = %if.end3
  %2 = load i32, ptr %result, align 4, !dbg !2613
  store i32 %2, ptr %retval, align 4, !dbg !2614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2614

if.end6:                                          ; preds = %if.end3
  %call7 = call i32 @cpuhp_setup_state_nocalls(i32 noundef 202, ptr noundef @.str.1, ptr noundef @acpi_soft_cpu_online, ptr noundef null) #8, !dbg !2615
  store i32 %call7, ptr %result, align 4, !dbg !2616
  %3 = load i32, ptr %result, align 4, !dbg !2617
  %cmp8 = icmp slt i32 %3, 0, !dbg !2619
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2620

if.then9:                                         ; preds = %if.end6
  br label %err, !dbg !2621

if.end10:                                         ; preds = %if.end6
  %4 = load i32, ptr %result, align 4, !dbg !2622
  store i32 %4, ptr @hp_online, align 4, !dbg !2623
  %call11 = call i32 @cpuhp_setup_state_nocalls(i32 noundef 25, ptr noundef @.str.2, ptr noundef null, ptr noundef @acpi_soft_cpu_dead) #8, !dbg !2624
  call void @acpi_processor_throttling_init() #8, !dbg !2625
  store i32 0, ptr %retval, align 4, !dbg !2626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2626

err:                                              ; preds = %if.then9
  call void @llvm.dbg.label(metadata !2593), !dbg !2627
  call void @driver_unregister(ptr noundef @acpi_processor_driver) #8, !dbg !2628
  %5 = load i32, ptr %result, align 4, !dbg !2629
  store i32 %5, ptr %retval, align 4, !dbg !2630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2630

cleanup:                                          ; preds = %err, %if.end10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #10, !dbg !2631
  %6 = load i32, ptr %retval, align 4, !dbg !2631
  ret i32 %6, !dbg !2631
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_notifier(ptr noundef %nb, i64 noundef %event, ptr noundef %data) #3 align 16 !dbg !2632 {
entry:
  %nb.addr = alloca ptr, align 8
  %event.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %policy = alloca ptr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !2634, metadata !DIExpression()), !dbg !3785
  store i64 %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !2635, metadata !DIExpression()), !dbg !3786
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2636, metadata !DIExpression()), !dbg !3787
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy) #10, !dbg !3788
  call void @llvm.dbg.declare(metadata ptr %policy, metadata !2637, metadata !DIExpression()), !dbg !3789
  %0 = load ptr, ptr %data.addr, align 8, !dbg !3790
  store ptr %0, ptr %policy, align 8, !dbg !3789
  %1 = load i64, ptr %event.addr, align 8, !dbg !3791
  %cmp = icmp eq i64 %1, 0, !dbg !3793
  br i1 %cmp, label %if.then, label %if.else, !dbg !3794

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %policy, align 8, !dbg !3795
  call void @acpi_thermal_cpufreq_init(ptr noundef %2) #8, !dbg !3797
  %3 = load ptr, ptr %policy, align 8, !dbg !3798
  call void @acpi_processor_ppc_init(ptr noundef %3) #8, !dbg !3799
  br label %if.end3, !dbg !3800

if.else:                                          ; preds = %entry
  %4 = load i64, ptr %event.addr, align 8, !dbg !3801
  %cmp1 = icmp eq i64 %4, 1, !dbg !3803
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !3804

if.then2:                                         ; preds = %if.else
  %5 = load ptr, ptr %policy, align 8, !dbg !3805
  call void @acpi_processor_ppc_exit(ptr noundef %5) #8, !dbg !3807
  %6 = load ptr, ptr %policy, align 8, !dbg !3808
  call void @acpi_thermal_cpufreq_exit(ptr noundef %6) #8, !dbg !3809
  br label %if.end, !dbg !3810

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy) #10, !dbg !3811
  ret i32 0, !dbg !3812
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3813 dso_local void @acpi_thermal_cpufreq_init(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3814 dso_local void @acpi_processor_ppc_init(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3815 dso_local void @acpi_processor_ppc_exit(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3816 dso_local void @acpi_thermal_cpufreq_exit(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3817 dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_start(ptr noundef %dev) #3 align 16 !dbg !3820 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3822, metadata !DIExpression()), !dbg !3829
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #10, !dbg !3830
  call void @llvm.dbg.declare(metadata ptr %device, metadata !3823, metadata !DIExpression()), !dbg !3831
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !3832
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !3824, metadata !DIExpression()), !dbg !3832
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3832
  %fwnode = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24, !dbg !3832
  %1 = load ptr, ptr %fwnode, align 8, !dbg !3832
  store ptr %1, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3832
  %2 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3832
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %2) #8, !dbg !3832
  br i1 %call, label %cond.true, label %cond.false, !dbg !3832

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !3833
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3826, metadata !DIExpression()), !dbg !3833
  %3 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3833
  store ptr %3, ptr %__mptr, align 8, !dbg !3833
  %4 = load ptr, ptr %__mptr, align 8, !dbg !3833
  %add.ptr = getelementptr i8, ptr %4, i64 -16, !dbg !3833
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3833
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !3832
  %5 = load ptr, ptr %tmp1, align 8, !dbg !3833
  br label %cond.end, !dbg !3832

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3832

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !3832
  store ptr %cond, ptr %tmp, align 8, !dbg !3832
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !3834
  %6 = load ptr, ptr %tmp, align 8, !dbg !3832
  store ptr %6, ptr %device, align 8, !dbg !3831
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !3835
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3828, metadata !DIExpression()), !dbg !3836
  %7 = load ptr, ptr %device, align 8, !dbg !3837
  %tobool = icmp ne ptr %7, null, !dbg !3837
  br i1 %tobool, label %if.end, label %if.then, !dbg !3839

if.then:                                          ; preds = %cond.end
  store i32 -19, ptr %retval, align 4, !dbg !3840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3840

if.end:                                           ; preds = %cond.end
  call void @cpu_hotplug_disable() #8, !dbg !3841
  %8 = load ptr, ptr %device, align 8, !dbg !3842
  %call2 = call i32 @__acpi_processor_start(ptr noundef %8) #8, !dbg !3843
  store i32 %call2, ptr %ret, align 4, !dbg !3844
  call void @cpu_hotplug_enable() #8, !dbg !3845
  %9 = load i32, ptr %ret, align 4, !dbg !3846
  store i32 %9, ptr %retval, align 4, !dbg !3847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3847

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !3848
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #10, !dbg !3848
  %10 = load i32, ptr %retval, align 4, !dbg !3848
  ret i32 %10, !dbg !3848
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_stop(ptr noundef %dev) #3 align 16 !dbg !3849 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %pr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3851, metadata !DIExpression()), !dbg !3858
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #10, !dbg !3859
  call void @llvm.dbg.declare(metadata ptr %device, metadata !3852, metadata !DIExpression()), !dbg !3860
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !3861
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !3853, metadata !DIExpression()), !dbg !3861
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3861
  %fwnode = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24, !dbg !3861
  %1 = load ptr, ptr %fwnode, align 8, !dbg !3861
  store ptr %1, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3861
  %2 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3861
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %2) #8, !dbg !3861
  br i1 %call, label %cond.true, label %cond.false, !dbg !3861

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !3862
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3855, metadata !DIExpression()), !dbg !3862
  %3 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3862
  store ptr %3, ptr %__mptr, align 8, !dbg !3862
  %4 = load ptr, ptr %__mptr, align 8, !dbg !3862
  %add.ptr = getelementptr i8, ptr %4, i64 -16, !dbg !3862
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3862
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !3861
  %5 = load ptr, ptr %tmp1, align 8, !dbg !3862
  br label %cond.end, !dbg !3861

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3861

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !3861
  store ptr %cond, ptr %tmp, align 8, !dbg !3861
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !3863
  %6 = load ptr, ptr %tmp, align 8, !dbg !3861
  store ptr %6, ptr %device, align 8, !dbg !3860
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #10, !dbg !3864
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !3857, metadata !DIExpression()), !dbg !3865
  %7 = load ptr, ptr %device, align 8, !dbg !3866
  %tobool = icmp ne ptr %7, null, !dbg !3866
  br i1 %tobool, label %if.end, label %if.then, !dbg !3868

if.then:                                          ; preds = %cond.end
  store i32 0, ptr %retval, align 4, !dbg !3869
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3869

if.end:                                           ; preds = %cond.end
  %8 = load ptr, ptr %device, align 8, !dbg !3870
  %handle = getelementptr inbounds %struct.acpi_device, ptr %8, i32 0, i32 2, !dbg !3871
  %9 = load ptr, ptr %handle, align 8, !dbg !3871
  %call2 = call i32 @acpi_remove_notify_handler(ptr noundef %9, i32 noundef 2, ptr noundef @acpi_processor_notify) #8, !dbg !3872
  %10 = load ptr, ptr %device, align 8, !dbg !3873
  %call3 = call ptr @acpi_driver_data(ptr noundef %10) #8, !dbg !3874
  store ptr %call3, ptr %pr, align 8, !dbg !3875
  %11 = load ptr, ptr %pr, align 8, !dbg !3876
  %tobool4 = icmp ne ptr %11, null, !dbg !3876
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !3878

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3879

if.end6:                                          ; preds = %if.end
  %12 = load ptr, ptr %pr, align 8, !dbg !3880
  %call7 = call i32 @acpi_processor_power_exit(ptr noundef %12) #8, !dbg !3881
  %13 = load ptr, ptr %pr, align 8, !dbg !3882
  call void @acpi_cppc_processor_exit(ptr noundef %13) #8, !dbg !3883
  %14 = load ptr, ptr %pr, align 8, !dbg !3884
  %15 = load ptr, ptr %device, align 8, !dbg !3885
  call void @acpi_processor_thermal_exit(ptr noundef %14, ptr noundef %15) #8, !dbg !3886
  store i32 0, ptr %retval, align 4, !dbg !3887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3887

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #10, !dbg !3888
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #10, !dbg !3888
  %16 = load i32, ptr %retval, align 4, !dbg !3888
  ret i32 %16, !dbg !3888
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3889 dso_local zeroext i1 @is_acpi_device_node(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3890 dso_local void @cpu_hotplug_disable() #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__acpi_processor_start(ptr noundef %device) #3 align 16 !dbg !3892 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %pr = alloca ptr, align 8
  %status = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !3894, metadata !DIExpression()), !dbg !3900
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #10, !dbg !3901
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !3895, metadata !DIExpression()), !dbg !3902
  %0 = load ptr, ptr %device.addr, align 8, !dbg !3903
  %call = call ptr @acpi_driver_data(ptr noundef %0) #8, !dbg !3904
  store ptr %call, ptr %pr, align 8, !dbg !3902
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #10, !dbg !3905
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3896, metadata !DIExpression()), !dbg !3906
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #10, !dbg !3907
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3898, metadata !DIExpression()), !dbg !3908
  store i32 0, ptr %result, align 4, !dbg !3908
  %1 = load ptr, ptr %pr, align 8, !dbg !3909
  %tobool = icmp ne ptr %1, null, !dbg !3909
  br i1 %tobool, label %if.end, label %if.then, !dbg !3911

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !3912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3912

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pr, align 8, !dbg !3913
  %flags = getelementptr inbounds %struct.acpi_processor, ptr %2, i32 0, i32 7, !dbg !3915
  %bf.load = load i16, ptr %flags, align 8, !dbg !3916
  %bf.lshr = lshr i16 %bf.load, 10, !dbg !3916
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3916
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !3916
  %tobool1 = icmp ne i8 %bf.cast, 0, !dbg !3913
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3917

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3918

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %pr, align 8, !dbg !3919
  %call4 = call i32 @acpi_cppc_processor_probe(ptr noundef %3) #8, !dbg !3920
  store i32 %call4, ptr %result, align 4, !dbg !3921
  %4 = load i32, ptr %result, align 4, !dbg !3922
  %tobool5 = icmp ne i32 %4, 0, !dbg !3922
  br i1 %tobool5, label %land.lhs.true, label %if.end7, !dbg !3924

land.lhs.true:                                    ; preds = %if.end3
  br i1 true, label %if.end7, label %if.then6, !dbg !3925

if.then6:                                         ; preds = %land.lhs.true
  br label %if.end7, !dbg !3926

if.end7:                                          ; preds = %if.then6, %land.lhs.true, %if.end3
  %call8 = call ptr @cpuidle_get_driver() #8, !dbg !3927
  %tobool9 = icmp ne ptr %call8, null, !dbg !3927
  br i1 %tobool9, label %lor.lhs.false, label %if.then11, !dbg !3929

lor.lhs.false:                                    ; preds = %if.end7
  %call10 = call ptr @cpuidle_get_driver() #8, !dbg !3930
  %cmp = icmp eq ptr %call10, @acpi_idle_driver, !dbg !3931
  br i1 %cmp, label %if.then11, label %if.end13, !dbg !3932

if.then11:                                        ; preds = %lor.lhs.false, %if.end7
  %5 = load ptr, ptr %pr, align 8, !dbg !3933
  %call12 = call i32 @acpi_processor_power_init(ptr noundef %5) #8, !dbg !3934
  br label %if.end13, !dbg !3934

if.end13:                                         ; preds = %if.then11, %lor.lhs.false
  %6 = load ptr, ptr %pr, align 8, !dbg !3935
  call void @acpi_pss_perf_init(ptr noundef %6) #8, !dbg !3936
  %7 = load ptr, ptr %pr, align 8, !dbg !3937
  %8 = load ptr, ptr %device.addr, align 8, !dbg !3938
  %call14 = call i32 @acpi_processor_thermal_init(ptr noundef %7, ptr noundef %8) #8, !dbg !3939
  store i32 %call14, ptr %result, align 4, !dbg !3940
  %9 = load i32, ptr %result, align 4, !dbg !3941
  %tobool15 = icmp ne i32 %9, 0, !dbg !3941
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3943

if.then16:                                        ; preds = %if.end13
  br label %err_power_exit, !dbg !3944

if.end17:                                         ; preds = %if.end13
  %10 = load ptr, ptr %device.addr, align 8, !dbg !3945
  %handle = getelementptr inbounds %struct.acpi_device, ptr %10, i32 0, i32 2, !dbg !3946
  %11 = load ptr, ptr %handle, align 8, !dbg !3946
  %12 = load ptr, ptr %device.addr, align 8, !dbg !3947
  %call18 = call i32 @acpi_install_notify_handler(ptr noundef %11, i32 noundef 2, ptr noundef @acpi_processor_notify, ptr noundef %12) #8, !dbg !3948
  store i32 %call18, ptr %status, align 4, !dbg !3949
  %13 = load i32, ptr %status, align 4, !dbg !3950
  %tobool19 = icmp ne i32 %13, 0, !dbg !3950
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !3952

if.then20:                                        ; preds = %if.end17
  store i32 0, ptr %retval, align 4, !dbg !3953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3953

if.end21:                                         ; preds = %if.end17
  store i32 -19, ptr %result, align 4, !dbg !3954
  %14 = load ptr, ptr %pr, align 8, !dbg !3955
  %15 = load ptr, ptr %device.addr, align 8, !dbg !3956
  call void @acpi_processor_thermal_exit(ptr noundef %14, ptr noundef %15) #8, !dbg !3957
  br label %err_power_exit, !dbg !3957

err_power_exit:                                   ; preds = %if.end21, %if.then16
  call void @llvm.dbg.label(metadata !3899), !dbg !3958
  %16 = load ptr, ptr %pr, align 8, !dbg !3959
  %call22 = call i32 @acpi_processor_power_exit(ptr noundef %16) #8, !dbg !3960
  %17 = load i32, ptr %result, align 4, !dbg !3961
  store i32 %17, ptr %retval, align 4, !dbg !3962
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3962

cleanup:                                          ; preds = %err_power_exit, %if.then20, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #10, !dbg !3963
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #10, !dbg !3963
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #10, !dbg !3963
  %18 = load i32, ptr %retval, align 4, !dbg !3963
  ret i32 %18, !dbg !3963
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3964 dso_local void @cpu_hotplug_enable() #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_driver_data(ptr noundef %d) #2 align 16 !dbg !3965 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !3969, metadata !DIExpression()), !dbg !3970
  %0 = load ptr, ptr %d.addr, align 8, !dbg !3971
  %driver_data = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 17, !dbg !3972
  %1 = load ptr, ptr %driver_data, align 8, !dbg !3972
  ret ptr %1, !dbg !3973
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3974 dso_local i32 @acpi_cppc_processor_probe(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3975 dso_local ptr @cpuidle_get_driver() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4046 dso_local i32 @acpi_processor_power_init(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_pss_perf_init(ptr noundef %pr) #3 align 16 !dbg !4047 {
entry:
  %pr.addr = alloca ptr, align 8
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !4051, metadata !DIExpression()), !dbg !4052
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !4053
  call void @acpi_processor_ppc_has_changed(ptr noundef %0, i32 noundef 0) #8, !dbg !4054
  %1 = load ptr, ptr %pr.addr, align 8, !dbg !4055
  %call = call i32 @acpi_processor_get_throttling_info(ptr noundef %1) #8, !dbg !4056
  %2 = load ptr, ptr %pr.addr, align 8, !dbg !4057
  %flags = getelementptr inbounds %struct.acpi_processor, ptr %2, i32 0, i32 7, !dbg !4059
  %bf.load = load i16, ptr %flags, align 8, !dbg !4060
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !4060
  %bf.clear = and i16 %bf.lshr, 1, !dbg !4060
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !4060
  %tobool = icmp ne i8 %bf.cast, 0, !dbg !4057
  br i1 %tobool, label %if.then, label %if.end, !dbg !4061

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pr.addr, align 8, !dbg !4062
  %flags1 = getelementptr inbounds %struct.acpi_processor, ptr %3, i32 0, i32 7, !dbg !4063
  %bf.load2 = load i16, ptr %flags1, align 8, !dbg !4064
  %bf.clear3 = and i16 %bf.load2, -9, !dbg !4064
  %bf.set = or i16 %bf.clear3, 8, !dbg !4064
  store i16 %bf.set, ptr %flags1, align 8, !dbg !4064
  br label %if.end, !dbg !4062

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4065
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4066 dso_local i32 @acpi_processor_thermal_init(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4069 dso_local i32 @acpi_install_notify_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_processor_notify(ptr noundef %handle, i32 noundef %event, ptr noundef %data) #3 align 16 !dbg !4077 {
entry:
  %handle.addr = alloca ptr, align 8
  %event.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %pr = alloca ptr, align 8
  %saved = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4079, metadata !DIExpression()), !dbg !4085
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4080, metadata !DIExpression()), !dbg !4086
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4081, metadata !DIExpression()), !dbg !4087
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #10, !dbg !4088
  call void @llvm.dbg.declare(metadata ptr %device, metadata !4082, metadata !DIExpression()), !dbg !4089
  %0 = load ptr, ptr %data.addr, align 8, !dbg !4090
  store ptr %0, ptr %device, align 8, !dbg !4089
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #10, !dbg !4091
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !4083, metadata !DIExpression()), !dbg !4092
  call void @llvm.lifetime.start.p0(i64 4, ptr %saved) #10, !dbg !4093
  call void @llvm.dbg.declare(metadata ptr %saved, metadata !4084, metadata !DIExpression()), !dbg !4094
  %1 = load ptr, ptr %device, align 8, !dbg !4095
  %handle1 = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !4097
  %2 = load ptr, ptr %handle1, align 8, !dbg !4097
  %3 = load ptr, ptr %handle.addr, align 8, !dbg !4098
  %cmp = icmp ne ptr %2, %3, !dbg !4099
  br i1 %cmp, label %if.then, label %if.end, !dbg !4100

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4101

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %device, align 8, !dbg !4102
  %call = call ptr @acpi_driver_data(ptr noundef %4) #8, !dbg !4103
  store ptr %call, ptr %pr, align 8, !dbg !4104
  %5 = load ptr, ptr %pr, align 8, !dbg !4105
  %tobool = icmp ne ptr %5, null, !dbg !4105
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !4107

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4108

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %event.addr, align 4, !dbg !4109
  switch i32 %6, label %sw.default [
    i32 128, label %sw.bb
    i32 129, label %sw.bb11
    i32 130, label %sw.bb20
  ], !dbg !4110

sw.bb:                                            ; preds = %if.end3
  %7 = load ptr, ptr %pr, align 8, !dbg !4111
  %performance_platform_limit = getelementptr inbounds %struct.acpi_processor, ptr %7, i32 0, i32 5, !dbg !4113
  %8 = load i32, ptr %performance_platform_limit, align 8, !dbg !4113
  store i32 %8, ptr %saved, align 4, !dbg !4114
  %9 = load ptr, ptr %pr, align 8, !dbg !4115
  call void @acpi_processor_ppc_has_changed(ptr noundef %9, i32 noundef 1) #8, !dbg !4116
  %10 = load i32, ptr %saved, align 4, !dbg !4117
  %11 = load ptr, ptr %pr, align 8, !dbg !4119
  %performance_platform_limit4 = getelementptr inbounds %struct.acpi_processor, ptr %11, i32 0, i32 5, !dbg !4120
  %12 = load i32, ptr %performance_platform_limit4, align 8, !dbg !4120
  %cmp5 = icmp eq i32 %10, %12, !dbg !4121
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4122

if.then6:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !4123

if.end7:                                          ; preds = %sw.bb
  %13 = load ptr, ptr %device, align 8, !dbg !4124
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %13, i32 0, i32 8, !dbg !4125
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 7, !dbg !4126
  %arraydecay = getelementptr inbounds [20 x i8], ptr %device_class, i64 0, i64 0, !dbg !4124
  %14 = load ptr, ptr %device, align 8, !dbg !4127
  %dev = getelementptr inbounds %struct.acpi_device, ptr %14, i32 0, i32 18, !dbg !4128
  %call8 = call ptr @dev_name(ptr noundef %dev) #8, !dbg !4129
  %15 = load i32, ptr %event.addr, align 4, !dbg !4130
  %conv = trunc i32 %15 to i8, !dbg !4130
  %16 = load ptr, ptr %pr, align 8, !dbg !4131
  %performance_platform_limit9 = getelementptr inbounds %struct.acpi_processor, ptr %16, i32 0, i32 5, !dbg !4132
  %17 = load i32, ptr %performance_platform_limit9, align 8, !dbg !4132
  %call10 = call i32 @acpi_bus_generate_netlink_event(ptr noundef %arraydecay, ptr noundef %call8, i8 noundef zeroext %conv, i32 noundef %17) #8, !dbg !4133
  br label %sw.epilog, !dbg !4134

sw.bb11:                                          ; preds = %if.end3
  %18 = load ptr, ptr %pr, align 8, !dbg !4135
  %call12 = call i32 @acpi_processor_power_state_has_changed(ptr noundef %18) #8, !dbg !4136
  %19 = load ptr, ptr %device, align 8, !dbg !4137
  %pnp13 = getelementptr inbounds %struct.acpi_device, ptr %19, i32 0, i32 8, !dbg !4138
  %device_class14 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp13, i32 0, i32 7, !dbg !4139
  %arraydecay15 = getelementptr inbounds [20 x i8], ptr %device_class14, i64 0, i64 0, !dbg !4137
  %20 = load ptr, ptr %device, align 8, !dbg !4140
  %dev16 = getelementptr inbounds %struct.acpi_device, ptr %20, i32 0, i32 18, !dbg !4141
  %call17 = call ptr @dev_name(ptr noundef %dev16) #8, !dbg !4142
  %21 = load i32, ptr %event.addr, align 4, !dbg !4143
  %conv18 = trunc i32 %21 to i8, !dbg !4143
  %call19 = call i32 @acpi_bus_generate_netlink_event(ptr noundef %arraydecay15, ptr noundef %call17, i8 noundef zeroext %conv18, i32 noundef 0) #8, !dbg !4144
  br label %sw.epilog, !dbg !4145

sw.bb20:                                          ; preds = %if.end3
  %22 = load ptr, ptr %pr, align 8, !dbg !4146
  %call21 = call i32 @acpi_processor_tstate_has_changed(ptr noundef %22) #8, !dbg !4147
  %23 = load ptr, ptr %device, align 8, !dbg !4148
  %pnp22 = getelementptr inbounds %struct.acpi_device, ptr %23, i32 0, i32 8, !dbg !4149
  %device_class23 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp22, i32 0, i32 7, !dbg !4150
  %arraydecay24 = getelementptr inbounds [20 x i8], ptr %device_class23, i64 0, i64 0, !dbg !4148
  %24 = load ptr, ptr %device, align 8, !dbg !4151
  %dev25 = getelementptr inbounds %struct.acpi_device, ptr %24, i32 0, i32 18, !dbg !4152
  %call26 = call ptr @dev_name(ptr noundef %dev25) #8, !dbg !4153
  %25 = load i32, ptr %event.addr, align 4, !dbg !4154
  %conv27 = trunc i32 %25 to i8, !dbg !4154
  %call28 = call i32 @acpi_bus_generate_netlink_event(ptr noundef %arraydecay24, ptr noundef %call26, i8 noundef zeroext %conv27, i32 noundef 0) #8, !dbg !4155
  br label %sw.epilog, !dbg !4156

sw.default:                                       ; preds = %if.end3
  store i32 0, ptr %tmp, align 4, !dbg !4157
  %26 = load i32, ptr %tmp, align 4, !dbg !4160
  br label %sw.epilog, !dbg !4161

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb11, %if.end7, %if.then6
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4162

cleanup:                                          ; preds = %sw.epilog, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %saved) #10, !dbg !4163
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #10, !dbg !4163
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #10, !dbg !4163
  ret void, !dbg !4163
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4164 dso_local void @acpi_processor_thermal_exit(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4167 dso_local i32 @acpi_processor_power_exit(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4168 dso_local void @acpi_processor_ppc_has_changed(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4171 dso_local i32 @acpi_processor_get_throttling_info(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4172 dso_local i32 @acpi_bus_generate_netlink_event(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #2 align 16 !dbg !4175 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4179, metadata !DIExpression()), !dbg !4180
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4181
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !4183
  %1 = load ptr, ptr %init_name, align 8, !dbg !4183
  %tobool = icmp ne ptr %1, null, !dbg !4181
  br i1 %tobool, label %if.then, label %if.end, !dbg !4184

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4185
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !4186
  %3 = load ptr, ptr %init_name1, align 8, !dbg !4186
  store ptr %3, ptr %retval, align 8, !dbg !4187
  br label %return, !dbg !4187

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !4188
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !4189
  %call = call ptr @kobject_name(ptr noundef %kobj) #8, !dbg !4190
  store ptr %call, ptr %retval, align 8, !dbg !4191
  br label %return, !dbg !4191

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !4192
  ret ptr %5, !dbg !4192
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4193 dso_local i32 @acpi_processor_power_state_has_changed(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4194 dso_local i32 @acpi_processor_tstate_has_changed(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #2 align 16 !dbg !4195 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4197, metadata !DIExpression()), !dbg !4198
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4199
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !4200
  %1 = load ptr, ptr %name, align 8, !dbg !4200
  ret ptr %1, !dbg !4201
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4202 dso_local i32 @acpi_remove_notify_handler(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4205 dso_local void @acpi_cppc_processor_exit(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4206 dso_local i32 @cpufreq_register_notifier(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4207 dso_local void @acpi_processor_ignore_ppc_init() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4208 dso_local i32 @driver_register(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state_nocalls(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #2 align 16 !dbg !4211 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4218, metadata !DIExpression()), !dbg !4222
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4219, metadata !DIExpression()), !dbg !4223
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !4220, metadata !DIExpression()), !dbg !4224
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !4221, metadata !DIExpression()), !dbg !4225
  %0 = load i32, ptr %state.addr, align 4, !dbg !4226
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4227
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !4228
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !4229
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #8, !dbg !4230
  ret i32 %call, !dbg !4231
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_soft_cpu_online(i32 noundef %cpu) #3 align 16 !dbg !4232 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %pr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %device = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp48 = alloca i64, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4234, metadata !DIExpression()), !dbg !4251
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #10, !dbg !4252
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !4235, metadata !DIExpression()), !dbg !4253
  br label %do.body, !dbg !4254

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4255
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4236, metadata !DIExpression()), !dbg !4255
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4255
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4255
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4254
  br label %do.cond, !dbg !4255

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4255

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !4256
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4239, metadata !DIExpression()), !dbg !4256
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr, align 8, !dbg !4256
  %1 = load i64, ptr %__ptr, align 8, !dbg !4256
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !4256
  %idxprom = zext i32 %2 to i64, !dbg !4256
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4256
  %3 = load i64, ptr %arrayidx, align 8, !dbg !4256
  %add = add i64 %1, %3, !dbg !4256
  %4 = inttoptr i64 %add to ptr, !dbg !4256
  store ptr %4, ptr %tmp1, align 8, !dbg !4256
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !4254
  %5 = load ptr, ptr %tmp1, align 8, !dbg !4256
  store ptr %5, ptr %tmp, align 8, !dbg !4255
  %6 = load ptr, ptr %tmp, align 8, !dbg !4254
  %7 = load ptr, ptr %6, align 8, !dbg !4257
  store ptr %7, ptr %pr, align 8, !dbg !4253
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #10, !dbg !4258
  call void @llvm.dbg.declare(metadata ptr %device, metadata !4241, metadata !DIExpression()), !dbg !4259
  %8 = load ptr, ptr %pr, align 8, !dbg !4260
  %tobool = icmp ne ptr %8, null, !dbg !4260
  br i1 %tobool, label %if.end, label %if.then, !dbg !4262

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !4263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4263

if.end:                                           ; preds = %do.end
  %9 = load ptr, ptr %pr, align 8, !dbg !4264
  %handle = getelementptr inbounds %struct.acpi_processor, ptr %9, i32 0, i32 0, !dbg !4265
  %10 = load ptr, ptr %handle, align 8, !dbg !4265
  %call = call ptr @acpi_fetch_acpi_dev(ptr noundef %10) #8, !dbg !4266
  store ptr %call, ptr %device, align 8, !dbg !4267
  %11 = load ptr, ptr %device, align 8, !dbg !4268
  %tobool2 = icmp ne ptr %11, null, !dbg !4268
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4270

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4271

if.end4:                                          ; preds = %if.end
  %12 = load ptr, ptr %pr, align 8, !dbg !4272
  %flags = getelementptr inbounds %struct.acpi_processor, ptr %12, i32 0, i32 7, !dbg !4273
  %bf.load = load i16, ptr %flags, align 8, !dbg !4274
  %bf.lshr = lshr i16 %bf.load, 10, !dbg !4274
  %bf.clear = and i16 %bf.lshr, 1, !dbg !4274
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !4274
  %tobool5 = icmp ne i8 %bf.cast, 0, !dbg !4272
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !4275

if.then6:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !4276
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4242, metadata !DIExpression()), !dbg !4277
  br label %do.body7, !dbg !4278

do.body7:                                         ; preds = %if.then6
  br label %do.cond8, !dbg !4280

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !4280

do.end9:                                          ; preds = %do.cond8
  %13 = load ptr, ptr %pr, align 8, !dbg !4278
  %id = getelementptr inbounds %struct.acpi_processor, ptr %13, i32 0, i32 3, !dbg !4278
  %14 = load i32, ptr %id, align 8, !dbg !4278
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %14) #9, !dbg !4278
  store i32 %call11, ptr %tmp10, align 4, !dbg !4280
  %15 = load i32, ptr %tmp10, align 4, !dbg !4278
  %16 = load ptr, ptr %pr, align 8, !dbg !4282
  %flags12 = getelementptr inbounds %struct.acpi_processor, ptr %16, i32 0, i32 7, !dbg !4283
  %bf.load13 = load i16, ptr %flags12, align 8, !dbg !4284
  %bf.clear14 = and i16 %bf.load13, -1025, !dbg !4284
  %bf.set = or i16 %bf.clear14, 0, !dbg !4284
  store i16 %bf.set, ptr %flags12, align 8, !dbg !4284
  %17 = load ptr, ptr %device, align 8, !dbg !4285
  %call15 = call i32 @__acpi_processor_start(ptr noundef %17) #8, !dbg !4286
  store i32 %call15, ptr %ret, align 4, !dbg !4287
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !4288
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4245, metadata !DIExpression()), !dbg !4288
  %18 = load i32, ptr %ret, align 4, !dbg !4288
  %tobool16 = icmp ne i32 %18, 0, !dbg !4288
  %lnot = xor i1 %tobool16, true, !dbg !4288
  %lnot17 = xor i1 %lnot, true, !dbg !4288
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !4288
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4288
  %19 = load i32, ptr %__ret_warn_on, align 4, !dbg !4289
  %tobool18 = icmp ne i32 %19, 0, !dbg !4289
  %lnot19 = xor i1 %tobool18, true, !dbg !4289
  %lnot21 = xor i1 %lnot19, true, !dbg !4289
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4289
  %conv = sext i32 %lnot.ext22 to i64, !dbg !4289
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4289
  %tobool23 = icmp ne i64 %expval, 0, !dbg !4289
  br i1 %tobool23, label %if.then24, label %if.end47, !dbg !4288

if.then24:                                        ; preds = %do.end9
  br label %do.body25, !dbg !4289

do.body25:                                        ; preds = %if.then24
  br label %do.body26, !dbg !4290

do.body26:                                        ; preds = %do.body25
  br label %do.cond27, !dbg !4291

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !4291

do.end28:                                         ; preds = %do.cond27
  %20 = load ptr, ptr %pr, align 8, !dbg !4290
  %id29 = getelementptr inbounds %struct.acpi_processor, ptr %20, i32 0, i32 3, !dbg !4290
  %21 = load i32, ptr %id29, align 8, !dbg !4290
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.4, i32 noundef %21) #8, !dbg !4290
  br label %do.body30, !dbg !4290

do.body30:                                        ; preds = %do.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !4293
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4247, metadata !DIExpression()), !dbg !4293
  store i32 2313, ptr %__flags, align 4, !dbg !4293
  br label %do.body31, !dbg !4293

do.body31:                                        ; preds = %do.body30
  br label %do.cond32, !dbg !4294

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !4294

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !4293

do.body34:                                        ; preds = %do.end33
  %22 = load i32, ptr %__flags, align 4, !dbg !4296
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 119, i32 %22, i64 12) #10, !dbg !4296, !srcloc !4298
  br label %do.cond35, !dbg !4296

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !4296

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !4293

do.body37:                                        ; preds = %do.end36
  br label %do.cond38, !dbg !4299

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !4299

do.end39:                                         ; preds = %do.cond38
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !4290
  br label %do.cond40, !dbg !4293

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !4293

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !4290

do.body42:                                        ; preds = %do.end41
  br label %do.cond43, !dbg !4301

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !4301

do.end44:                                         ; preds = %do.cond43
  br label %do.cond45, !dbg !4290

do.cond45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !4290

do.end46:                                         ; preds = %do.cond45
  br label %if.end47, !dbg !4290

if.end47:                                         ; preds = %do.end46, %do.end9
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !4288
  %tobool49 = icmp ne i32 %23, 0, !dbg !4288
  %lnot50 = xor i1 %tobool49, true, !dbg !4288
  %lnot52 = xor i1 %lnot50, true, !dbg !4288
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !4288
  %conv54 = sext i32 %lnot.ext53 to i64, !dbg !4288
  %expval55 = call i64 @llvm.expect.i64(i64 %conv54, i64 0), !dbg !4288
  store i64 %expval55, ptr %tmp48, align 8, !dbg !4289
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !4303
  %24 = load i64, ptr %tmp48, align 8, !dbg !4288
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !4304
  br label %if.end58, !dbg !4305

if.else:                                          ; preds = %if.end4
  %25 = load ptr, ptr %pr, align 8, !dbg !4306
  call void @acpi_processor_ppc_has_changed(ptr noundef %25, i32 noundef 0) #8, !dbg !4308
  %26 = load ptr, ptr %pr, align 8, !dbg !4309
  %call56 = call i32 @acpi_processor_hotplug(ptr noundef %26) #8, !dbg !4310
  %27 = load ptr, ptr %pr, align 8, !dbg !4311
  call void @acpi_processor_reevaluate_tstate(ptr noundef %27, i1 noundef zeroext false) #8, !dbg !4312
  %28 = load ptr, ptr %pr, align 8, !dbg !4313
  %call57 = call i32 @acpi_processor_tstate_has_changed(ptr noundef %28) #8, !dbg !4314
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.end47
  store i32 0, ptr %retval, align 4, !dbg !4315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4315

cleanup:                                          ; preds = %if.end58, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #10, !dbg !4316
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #10, !dbg !4316
  %29 = load i32, ptr %retval, align 4, !dbg !4316
  ret i32 %29, !dbg !4316
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_soft_cpu_dead(i32 noundef %cpu) #3 align 16 !dbg !4317 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %pr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4319, metadata !DIExpression()), !dbg !4326
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #10, !dbg !4327
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !4320, metadata !DIExpression()), !dbg !4328
  br label %do.body, !dbg !4329

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4330
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4321, metadata !DIExpression()), !dbg !4330
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4330
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4330
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4329
  br label %do.cond, !dbg !4330

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4330

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !4331
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4324, metadata !DIExpression()), !dbg !4331
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr, align 8, !dbg !4331
  %1 = load i64, ptr %__ptr, align 8, !dbg !4331
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !4331
  %idxprom = zext i32 %2 to i64, !dbg !4331
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4331
  %3 = load i64, ptr %arrayidx, align 8, !dbg !4331
  %add = add i64 %1, %3, !dbg !4331
  %4 = inttoptr i64 %add to ptr, !dbg !4331
  store ptr %4, ptr %tmp1, align 8, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !4329
  %5 = load ptr, ptr %tmp1, align 8, !dbg !4331
  store ptr %5, ptr %tmp, align 8, !dbg !4330
  %6 = load ptr, ptr %tmp, align 8, !dbg !4329
  %7 = load ptr, ptr %6, align 8, !dbg !4332
  store ptr %7, ptr %pr, align 8, !dbg !4328
  %8 = load ptr, ptr %pr, align 8, !dbg !4333
  %tobool = icmp ne ptr %8, null, !dbg !4333
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4335

lor.lhs.false:                                    ; preds = %do.end
  %9 = load ptr, ptr %pr, align 8, !dbg !4336
  %handle = getelementptr inbounds %struct.acpi_processor, ptr %9, i32 0, i32 0, !dbg !4337
  %10 = load ptr, ptr %handle, align 8, !dbg !4337
  %call = call ptr @acpi_fetch_acpi_dev(ptr noundef %10) #8, !dbg !4338
  %tobool2 = icmp ne ptr %call, null, !dbg !4338
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4339

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 0, ptr %retval, align 4, !dbg !4340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4340

if.end:                                           ; preds = %lor.lhs.false
  %11 = load ptr, ptr %pr, align 8, !dbg !4341
  call void @acpi_processor_reevaluate_tstate(ptr noundef %11, i1 noundef zeroext true) #8, !dbg !4342
  store i32 0, ptr %retval, align 4, !dbg !4343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4343

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #10, !dbg !4344
  %12 = load i32, ptr %retval, align 4, !dbg !4344
  ret i32 %12, !dbg !4344
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4345 dso_local void @acpi_processor_throttling_init() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4346 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4349 dso_local ptr @acpi_fetch_acpi_dev(ptr noundef) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4352 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4356 dso_local void @__warn_printk(ptr noundef, ...) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4359 dso_local i32 @acpi_processor_hotplug(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4360 dso_local void @acpi_processor_reevaluate_tstate(ptr noundef, i1 noundef zeroext) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553}
!llvm.ident = !{!2554}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author225", scope: !2, file: !3, line: 31, type: !2543, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.processor_driver.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/processor\22 -D KBUILD_BASENAME=\22processor_driver\22 -D KBUILD_MODNAME=\22processor\22 -D __KBUILD_MODNAME=kmod_processor -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/processor_driver.ll drivers/acpi/processor_driver.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !319, globals: !2481, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/processor_driver.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d3d6959ec3de323eb5b19c53ef0920e5")
!4 = !{!5, !11, !206, !212, !219, !224, !232, !239, !245, !252, !256, !262, !271, !276, !281, !287, !294, !300, !306, !312}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !12, line: 57, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!15 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!16 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!17 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!18 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!19 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!20 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!21 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!22 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!23 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!24 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!25 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!26 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!27 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!28 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!29 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!30 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!31 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!32 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!33 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!34 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!35 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!36 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!37 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!38 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!39 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!40 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!41 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!42 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!43 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!44 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!45 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!46 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!47 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!48 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!49 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!50 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!51 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!52 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!53 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!54 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!55 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!56 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!57 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!58 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!59 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!60 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!61 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!62 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!63 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!64 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!65 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!66 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!67 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!68 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!69 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!70 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!71 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!72 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!73 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!74 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!75 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!76 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!77 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!78 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!79 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!80 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!81 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!82 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!83 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!84 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!85 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!86 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!87 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!88 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!89 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!90 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!91 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!92 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!93 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!94 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!95 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!96 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!97 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!98 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!99 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!100 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!101 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!102 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!103 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!104 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!105 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!106 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!107 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!108 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!109 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!110 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!111 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!112 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!113 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!114 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!115 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!116 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!117 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!118 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!119 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!120 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!121 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!122 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!123 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!124 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!125 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!126 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!127 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!128 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!129 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!130 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!131 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!132 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!133 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!134 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!135 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!136 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!137 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!138 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!139 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!140 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!141 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!142 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!143 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!144 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!145 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!146 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!147 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!148 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!149 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!150 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!151 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!152 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!153 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!154 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!155 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!156 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!157 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!158 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!159 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!160 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!161 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!162 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!163 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!164 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!165 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!166 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!167 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!168 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!169 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!170 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!171 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!172 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!173 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!174 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!175 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!176 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!177 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!178 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!179 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!180 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!181 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!182 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!183 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!184 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!185 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!186 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!187 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!188 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!189 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!190 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!191 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!192 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!193 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!194 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!195 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!196 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!197 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!198 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!199 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!200 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!201 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!202 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!203 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!204 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!205 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !207, line: 26, baseType: !7, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!210 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!211 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !213, line: 487, baseType: !7, size: 32, elements: !214)
!213 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!214 = !{!215, !216, !217, !218}
!215 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!216 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!217 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!218 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !220, line: 65, baseType: !7, size: 32, elements: !221)
!220 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!221 = !{!222, !223}
!222 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!223 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !225, line: 620, baseType: !7, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!226 = !{!227, !228, !229, !230, !231}
!227 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!228 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!229 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!230 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!231 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !225, line: 597, baseType: !13, size: 32, elements: !233)
!233 = !{!234, !235, !236, !237, !238}
!234 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!235 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!236 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!237 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!238 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !240, line: 41, baseType: !7, size: 32, elements: !241)
!240 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!241 = !{!242, !243, !244}
!242 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!243 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!244 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !240, line: 99, baseType: !7, size: 32, elements: !246)
!246 = !{!247, !248, !249, !250, !251}
!247 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!248 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!249 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!250 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!251 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !240, line: 80, baseType: !7, size: 32, elements: !253)
!253 = !{!254, !255}
!254 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!255 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !257, line: 30, baseType: !7, size: 32, elements: !258)
!257 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!258 = !{!259, !260, !261}
!259 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!260 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!261 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !213, line: 547, baseType: !7, size: 32, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269, !270}
!264 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!265 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!266 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!267 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!268 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!269 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!270 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !213, line: 564, baseType: !7, size: 32, elements: !272)
!272 = !{!273, !274, !275}
!273 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!274 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!275 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !213, line: 577, baseType: !7, size: 32, elements: !277)
!277 = !{!278, !279, !280}
!278 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!279 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!280 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !213, line: 503, baseType: !7, size: 32, elements: !282)
!282 = !{!283, !284, !285, !286}
!283 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!284 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!285 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!286 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !288, line: 312, baseType: !7, size: 32, elements: !289)
!288 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!289 = !{!290, !291, !292, !293}
!290 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!291 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!292 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!293 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !295, line: 45, baseType: !7, size: 32, elements: !296)
!295 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!296 = !{!297, !298, !299}
!297 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!298 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!299 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpufreq_table_sorting", file: !301, line: 41, baseType: !7, size: 32, elements: !302)
!301 = !DIFile(filename: "./include/linux/cpufreq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad5b2d8eef98749599a01da4cdfaed5a")
!302 = !{!303, !304, !305}
!303 = !DIEnumerator(name: "CPUFREQ_TABLE_UNSORTED", value: 0)
!304 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_ASCENDING", value: 1)
!305 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_DESCENDING", value: 2)
!306 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !307, line: 16, baseType: !7, size: 32, elements: !308)
!307 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!308 = !{!309, !310, !311}
!309 = !DIEnumerator(name: "TT_NONE", value: 0)
!310 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!311 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!312 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !313, line: 51, baseType: !7, size: 32, elements: !314)
!313 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!314 = !{!315, !316, !317, !318}
!315 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!316 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!317 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!318 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!319 = !{!320, !321, !2271, !512}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !323, line: 367, size: 11200, elements: !324)
!323 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!324 = !{!325, !330, !331, !334, !2016, !2017, !2018, !2027, !2045, !2124, !2154, !2178, !2199, !2205, !2214, !2246, !2260, !2264, !2265, !2266, !2267, !2268, !2269, !2270}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !322, file: !323, line: 368, baseType: !326, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !327, line: 21, baseType: !328)
!327 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !329, line: 27, baseType: !7)
!329 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!330 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !322, file: !323, line: 369, baseType: !13, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !322, file: !323, line: 370, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !333, line: 424, baseType: !320)
!333 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!334 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !322, file: !323, line: 371, baseType: !335, size: 512, offset: 128)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !336, line: 41, size: 512, elements: !337)
!336 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!337 = !{!338, !340, !2012, !2013, !2014, !2015}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !335, file: !336, line: 42, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !335, file: !336, line: 43, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !336, line: 125, size: 1408, elements: !344)
!344 = !{!345, !349, !353, !362, !1942, !1943, !1947, !1951, !1955, !1959, !1963, !1964, !1968, !1972, !1976, !1987, !1988, !1989, !1990, !2000, !2004, !2008}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !343, file: !336, line: 126, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!339, !339}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !343, file: !336, line: 127, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !339}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !343, file: !336, line: 128, baseType: !354, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!357, !360}
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !358, line: 35, baseType: !359)
!358 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!359 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !343, file: !336, line: 129, baseType: !363, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !360, !368}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !213, line: 705, size: 5824, elements: !371)
!371 = !{!372, !1032, !1034, !1037, !1038, !1089, !1555, !1556, !1557, !1558, !1559, !1566, !1808, !1821, !1831, !1835, !1837, !1838, !1839, !1843, !1850, !1851, !1854, !1857, !1881, !1882, !1883, !1886, !1887, !1888, !1889, !1919, !1920, !1921, !1924, !1927, !1936, !1937, !1938, !1939, !1940, !1941}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !370, file: !213, line: 706, baseType: !373, size: 512)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !374, line: 64, size: 512, elements: !375)
!374 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!375 = !{!376, !380, !386, !388, !475, !902, !1017, !1027, !1028, !1029, !1030, !1031}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !373, file: !374, line: 65, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !373, file: !374, line: 66, baseType: !381, size: 128, offset: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !358, line: 190, size: 128, elements: !382)
!382 = !{!383, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !358, line: 191, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !381, file: !358, line: 191, baseType: !384, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !373, file: !374, line: 67, baseType: !387, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !373, file: !374, line: 68, baseType: !389, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !374, line: 168, size: 768, elements: !391)
!391 = !{!392, !393, !434, !435}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !390, file: !374, line: 169, baseType: !381, size: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !390, file: !374, line: 170, baseType: !394, size: 32, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !395, line: 29, baseType: !396)
!395 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !395, line: 17, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !395, line: 18, baseType: !399, size: 32)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !395, line: 18, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !399, file: !395, line: 19, baseType: !402, size: 32)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !403, line: 14, size: 32, elements: !404)
!403 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !402, file: !403, line: 15, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !407, line: 44, baseType: !408)
!407 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !407, line: 14, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !407, line: 15, baseType: !411, size: 32)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !407, line: 15, size: 32, elements: !412)
!412 = !{!413, !418, !426}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !411, file: !407, line: 16, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !358, line: 174, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 172, size: 32, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !415, file: !358, line: 173, baseType: !13, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !407, line: 24, baseType: !419, size: 16)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !407, line: 24, size: 16, elements: !420)
!420 = !{!421, !425}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !419, file: !407, line: 25, baseType: !422, size: 8)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !327, line: 17, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !329, line: 21, baseType: !424)
!424 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !419, file: !407, line: 26, baseType: !422, size: 8, offset: 8)
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !407, line: 28, baseType: !427, size: 32)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !407, line: 28, size: 32, elements: !428)
!428 = !{!429, !433}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !427, file: !407, line: 29, baseType: !430, size: 16)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !327, line: 19, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !329, line: 24, baseType: !432)
!432 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !427, file: !407, line: 30, baseType: !430, size: 16, offset: 16)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !390, file: !374, line: 171, baseType: !373, size: 512, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !390, file: !374, line: 172, baseType: !436, size: 64, offset: 704)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !374, line: 133, size: 192, elements: !439)
!439 = !{!440, !447, !452}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !438, file: !374, line: 134, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!13, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !438, file: !374, line: 135, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!377, !445}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !438, file: !374, line: 136, baseType: !453, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!13, !445, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !374, line: 125, size: 20736, elements: !459)
!459 = !{!460, !465, !469, !470, !474}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !458, file: !374, line: 126, baseType: !461, size: 192)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 192, elements: !463)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!463 = !{!464}
!464 = !DISubrange(count: 3)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !458, file: !374, line: 127, baseType: !466, size: 4096, offset: 192)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 4096, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !458, file: !374, line: 128, baseType: !13, size: 32, offset: 4288)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !458, file: !374, line: 129, baseType: !471, size: 16384, offset: 4320)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 16384, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 2048)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !458, file: !374, line: 130, baseType: !13, size: 32, offset: 20704)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !373, file: !374, line: 69, baseType: !476, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !374, line: 116, size: 384, elements: !479)
!479 = !{!480, !484, !513, !849, !880, !884}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !478, file: !374, line: 117, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !387}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !478, file: !374, line: 118, baseType: !485, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !488, line: 254, size: 128, elements: !489)
!488 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!489 = !{!490, !505}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !487, file: !488, line: 255, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!494, !387, !499, !462}
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !358, line: 66, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !496, line: 73, baseType: !497)
!496 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !496, line: 15, baseType: !498)
!498 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !488, line: 30, size: 128, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !500, file: !488, line: 31, baseType: !377, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !500, file: !488, line: 32, baseType: !504, size: 16, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !358, line: 24, baseType: !432)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !487, file: !488, line: 256, baseType: !506, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!494, !387, !499, !377, !509}
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !358, line: 61, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !496, line: 72, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !496, line: 16, baseType: !512)
!512 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !478, file: !374, line: 119, baseType: !514, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !488, line: 84, size: 320, elements: !518)
!518 = !{!519, !520, !524, !845, !847}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !517, file: !488, line: 85, baseType: !377, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !517, file: !488, line: 86, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!504, !387, !499, !13}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !517, file: !488, line: 88, baseType: !525, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!504, !387, !528, !13}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !488, line: 175, size: 512, elements: !530)
!530 = !{!531, !532, !533, !534, !541, !551, !552}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !529, file: !488, line: 176, baseType: !500, size: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !529, file: !488, line: 177, baseType: !509, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !529, file: !488, line: 178, baseType: !320, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !529, file: !488, line: 179, baseType: !535, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !540, line: 32, flags: DIFlagFwdDecl)
!540 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!541 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !529, file: !488, line: 180, baseType: !542, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!494, !545, !387, !528, !462, !548, !509}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !547, line: 537, flags: DIFlagFwdDecl)
!547 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !358, line: 52, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !496, line: 88, baseType: !550)
!550 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !529, file: !488, line: 182, baseType: !542, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !529, file: !488, line: 184, baseType: !553, size: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!13, !545, !387, !528, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !540, line: 625, size: 1344, elements: !558)
!558 = !{!559, !576, !796, !802, !809, !810, !815, !816, !828, !829, !832, !836, !837, !838, !839, !840, !843}
!559 = !DIDerivedType(tag: DW_TAG_member, scope: !557, file: !540, line: 628, baseType: !560, size: 128)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !557, file: !540, line: 628, size: 128, elements: !561)
!561 = !{!562, !567}
!562 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !540, line: 629, baseType: !563, size: 128)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !560, file: !540, line: 629, size: 128, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !563, file: !540, line: 631, baseType: !512, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !563, file: !540, line: 632, baseType: !512, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !560, file: !540, line: 635, baseType: !568, size: 128, align: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !358, line: 232, size: 128, align: 64, elements: !569)
!569 = !{!570, !572}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !568, file: !358, line: 233, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !568, file: !358, line: 234, baseType: !573, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !571}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !557, file: !540, line: 639, baseType: !577, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !540, line: 733, size: 10240, elements: !579)
!579 = !{!580, !792}
!580 = !DIDerivedType(tag: DW_TAG_member, scope: !578, file: !540, line: 734, baseType: !581, size: 10240)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !578, file: !540, line: 734, size: 10240, elements: !582)
!582 = !{!583, !587, !601, !605, !606, !607, !608, !609, !610, !618, !619, !620, !629, !630, !639, !640, !641, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !688, !702, !705, !758, !759, !760, !763, !767, !768, !771, !772, !773, !779, !780}
!583 = !DIDerivedType(tag: DW_TAG_member, scope: !581, file: !540, line: 739, baseType: !584, size: 512, align: 512)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !581, file: !540, line: 739, size: 512, align: 512, elements: !585)
!585 = !{!586}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !584, file: !540, line: 747, baseType: !414, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !581, file: !540, line: 750, baseType: !588, size: 128, offset: 512)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !589, line: 218, size: 128, elements: !590)
!589 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!590 = !{!591, !599, !600}
!591 = !DIDerivedType(tag: DW_TAG_member, scope: !588, file: !589, line: 219, baseType: !592, size: 32)
!592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !588, file: !589, line: 219, size: 32, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !592, file: !589, line: 220, baseType: !394, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !592, file: !589, line: 221, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !589, line: 197, baseType: !597)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !589, line: 197, elements: !598)
!598 = !{}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !588, file: !589, line: 223, baseType: !7, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !588, file: !589, line: 224, baseType: !320, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !581, file: !540, line: 752, baseType: !602, size: 64, offset: 640)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!512, !545, !512, !512, !512, !512}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !581, file: !540, line: 756, baseType: !512, size: 64, offset: 704)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !581, file: !540, line: 757, baseType: !512, size: 64, offset: 768)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !581, file: !540, line: 760, baseType: !512, size: 64, offset: 832)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !581, file: !540, line: 761, baseType: !512, size: 64, offset: 896)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !581, file: !540, line: 763, baseType: !512, size: 64, offset: 960)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !581, file: !540, line: 764, baseType: !611, size: 64, offset: 1024)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !547, line: 299, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !547, line: 299, size: 64, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !613, file: !547, line: 299, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !617, line: 18, baseType: !512)
!617 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!618 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !581, file: !540, line: 773, baseType: !414, size: 32, offset: 1088)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !581, file: !540, line: 785, baseType: !414, size: 32, offset: 1120)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !581, file: !540, line: 795, baseType: !621, size: 64, offset: 1152)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !540, line: 726, size: 128, elements: !623)
!623 = !{!624, !628}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !622, file: !540, line: 727, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !327, line: 23, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !329, line: 31, baseType: !627)
!627 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !622, file: !540, line: 728, baseType: !13, size: 32, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !581, file: !540, line: 801, baseType: !512, size: 64, offset: 1216)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !581, file: !540, line: 804, baseType: !631, size: 64, offset: 1280)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !632, line: 13, baseType: !633)
!632 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !358, line: 181, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 179, size: 64, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !634, file: !358, line: 180, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !327, line: 22, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !329, line: 30, baseType: !550)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !581, file: !540, line: 806, baseType: !13, size: 32, offset: 1344)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !581, file: !540, line: 808, baseType: !394, size: 32, offset: 1376)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !581, file: !540, line: 823, baseType: !642, size: 320, offset: 1408)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !643, line: 48, size: 320, elements: !644)
!643 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!644 = !{!645, !646, !647, !652, !654}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !642, file: !643, line: 49, baseType: !631, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !642, file: !643, line: 55, baseType: !631, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !642, file: !643, line: 57, baseType: !648, size: 32, offset: 128)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !649, line: 15, size: 32, elements: !650)
!649 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !648, file: !649, line: 20, baseType: !414, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !642, file: !643, line: 59, baseType: !653, size: 32, offset: 160)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !403, line: 23, baseType: !402)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !642, file: !643, line: 60, baseType: !381, size: 128, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !581, file: !540, line: 825, baseType: !381, size: 128, offset: 1728)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !581, file: !540, line: 845, baseType: !13, size: 32, offset: 1856)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !581, file: !540, line: 849, baseType: !512, size: 64, offset: 1920)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !581, file: !540, line: 850, baseType: !512, size: 64, offset: 1984)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !581, file: !540, line: 852, baseType: !512, size: 64, offset: 2048)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !581, file: !540, line: 853, baseType: !512, size: 64, offset: 2112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !581, file: !540, line: 854, baseType: !633, size: 64, offset: 2176)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !581, file: !540, line: 855, baseType: !512, size: 64, offset: 2240)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !581, file: !540, line: 856, baseType: !512, size: 64, offset: 2304)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !581, file: !540, line: 857, baseType: !512, size: 64, offset: 2368)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !581, file: !540, line: 858, baseType: !512, size: 64, offset: 2432)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !581, file: !540, line: 865, baseType: !667, size: 32, offset: 2496)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !668, line: 69, baseType: !669)
!668 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !668, line: 64, size: 32, elements: !670)
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !669, file: !668, line: 65, baseType: !7, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !581, file: !540, line: 867, baseType: !394, size: 32, offset: 2528)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !581, file: !540, line: 869, baseType: !512, size: 64, offset: 2560)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !581, file: !540, line: 869, baseType: !512, size: 64, offset: 2624)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !581, file: !540, line: 869, baseType: !512, size: 64, offset: 2688)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !581, file: !540, line: 869, baseType: !512, size: 64, offset: 2752)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !581, file: !540, line: 870, baseType: !512, size: 64, offset: 2816)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !581, file: !540, line: 870, baseType: !512, size: 64, offset: 2880)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !581, file: !540, line: 870, baseType: !512, size: 64, offset: 2944)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !581, file: !540, line: 871, baseType: !512, size: 64, offset: 3008)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !581, file: !540, line: 871, baseType: !512, size: 64, offset: 3072)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !581, file: !540, line: 871, baseType: !512, size: 64, offset: 3136)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !581, file: !540, line: 871, baseType: !512, size: 64, offset: 3200)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !581, file: !540, line: 873, baseType: !685, size: 3328, offset: 3264)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 3328, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 52)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !581, file: !540, line: 875, baseType: !689, size: 1280, offset: 6592)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 1280, elements: !700)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !691, line: 22, size: 320, elements: !692)
!691 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!692 = !{!693, !694, !695, !696}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !690, file: !691, line: 23, baseType: !653, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !690, file: !691, line: 24, baseType: !637, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !690, file: !691, line: 26, baseType: !381, size: 128, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !690, file: !691, line: 28, baseType: !697, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !327, line: 20, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !329, line: 26, baseType: !13)
!700 = !{!701}
!701 = !DISubrange(count: 4)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !581, file: !540, line: 877, baseType: !703, size: 64, offset: 7872)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !540, line: 877, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !581, file: !540, line: 880, baseType: !706, size: 1088, offset: 7936)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !707, line: 72, baseType: !708)
!707 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !707, line: 23, size: 1088, elements: !709)
!709 = !{!710, !711, !712, !713, !714, !717, !718, !726, !727, !752, !753, !754}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !708, file: !707, line: 28, baseType: !625, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !708, file: !707, line: 38, baseType: !633, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !708, file: !707, line: 40, baseType: !512, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !708, file: !707, line: 43, baseType: !642, size: 320, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !708, file: !707, line: 44, baseType: !715, size: 64, offset: 512)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !707, line: 44, flags: DIFlagFwdDecl)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !708, file: !707, line: 48, baseType: !512, size: 64, offset: 576)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !708, file: !707, line: 59, baseType: !719, size: 256, offset: 640)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !720, line: 66, size: 256, elements: !721)
!720 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!721 = !{!722, !723, !724, !725}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !719, file: !720, line: 67, baseType: !631, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !719, file: !720, line: 68, baseType: !653, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !719, file: !720, line: 70, baseType: !648, size: 32, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !719, file: !720, line: 72, baseType: !381, size: 128, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !708, file: !707, line: 60, baseType: !320, size: 64, offset: 896)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !708, file: !707, line: 61, baseType: !728, size: 64, offset: 960)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !731, line: 13, size: 1216, elements: !732)
!731 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !730, file: !731, line: 14, baseType: !320, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !730, file: !731, line: 15, baseType: !512, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !730, file: !731, line: 17, baseType: !512, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !730, file: !731, line: 17, baseType: !512, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !730, file: !731, line: 18, baseType: !512, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !730, file: !731, line: 18, baseType: !512, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !730, file: !731, line: 19, baseType: !366, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !730, file: !731, line: 21, baseType: !498, size: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !730, file: !731, line: 23, baseType: !498, size: 64, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !730, file: !731, line: 24, baseType: !498, size: 64, offset: 576)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !730, file: !731, line: 25, baseType: !498, size: 64, offset: 640)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !730, file: !731, line: 26, baseType: !498, size: 64, offset: 704)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !730, file: !731, line: 27, baseType: !498, size: 64, offset: 768)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !730, file: !731, line: 28, baseType: !498, size: 64, offset: 832)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !730, file: !731, line: 29, baseType: !498, size: 64, offset: 896)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !730, file: !731, line: 30, baseType: !498, size: 64, offset: 960)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !730, file: !731, line: 31, baseType: !498, size: 64, offset: 1024)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !730, file: !731, line: 32, baseType: !498, size: 64, offset: 1088)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !730, file: !731, line: 33, baseType: !498, size: 64, offset: 1152)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !708, file: !707, line: 63, baseType: !414, size: 32, offset: 1024)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !708, file: !707, line: 69, baseType: !430, size: 16, offset: 1056)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !708, file: !707, line: 70, baseType: !755, size: 16, offset: 1072)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !327, line: 18, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !329, line: 23, baseType: !757)
!757 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !540, line: 882, baseType: !512, size: 64, offset: 9024)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !581, file: !540, line: 885, baseType: !394, size: 32, offset: 9088)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !581, file: !540, line: 886, baseType: !761, size: 64, offset: 9152)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !540, line: 732, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !581, file: !540, line: 901, baseType: !764, size: 64, offset: 9216)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !766, line: 18, flags: DIFlagFwdDecl)
!766 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!767 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !581, file: !540, line: 904, baseType: !545, size: 64, offset: 9280)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !581, file: !540, line: 906, baseType: !769, size: 64, offset: 9344)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !540, line: 906, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !581, file: !540, line: 930, baseType: !414, size: 32, offset: 9408)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !581, file: !540, line: 933, baseType: !414, size: 32, offset: 9440)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !581, file: !540, line: 935, baseType: !774, size: 64, offset: 9472)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !313, line: 103, size: 64, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !774, file: !313, line: 104, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !313, line: 101, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !581, file: !540, line: 940, baseType: !631, size: 64, offset: 9536)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !581, file: !540, line: 942, baseType: !781, size: 256, offset: 9600)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !782, line: 98, size: 256, elements: !783)
!782 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!783 = !{!784, !785, !786}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !781, file: !782, line: 99, baseType: !631, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !781, file: !782, line: 100, baseType: !381, size: 128, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !781, file: !782, line: 101, baseType: !787, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !782, line: 21, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !791}
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !578, file: !540, line: 986, baseType: !793, offset: 10240)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: -1)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !557, file: !540, line: 640, baseType: !797, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !547, line: 297, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !547, line: 297, size: 64, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !798, file: !547, line: 297, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !617, line: 19, baseType: !512)
!802 = !DIDerivedType(tag: DW_TAG_member, scope: !557, file: !540, line: 646, baseType: !803, size: 64, offset: 256)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !557, file: !540, line: 646, size: 64, elements: !804)
!804 = !{!805, !808}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !803, file: !540, line: 647, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !540, line: 542, baseType: !512)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !803, file: !540, line: 648, baseType: !807, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !557, file: !540, line: 666, baseType: !13, size: 32, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !557, file: !540, line: 667, baseType: !811, size: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !540, line: 579, size: 320, elements: !813)
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !812, file: !540, line: 580, baseType: !642, size: 320)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !557, file: !540, line: 670, baseType: !357, size: 8, offset: 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !557, file: !540, line: 681, baseType: !817, size: 256, offset: 512)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !557, file: !540, line: 678, size: 256, elements: !818)
!818 = !{!819, !827}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !817, file: !540, line: 679, baseType: !820, size: 192, align: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !821, line: 5, size: 192, align: 64, elements: !822)
!821 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!822 = !{!823, !824, !826}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !820, file: !821, line: 6, baseType: !512, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !820, file: !821, line: 7, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !820, file: !821, line: 8, baseType: !825, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !817, file: !540, line: 680, baseType: !512, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !557, file: !540, line: 689, baseType: !381, size: 128, offset: 768)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !557, file: !540, line: 691, baseType: !830, size: 64, offset: 896)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !540, line: 691, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !557, file: !540, line: 694, baseType: !833, size: 64, offset: 960)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !540, line: 694, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !557, file: !540, line: 697, baseType: !512, size: 64, offset: 1024)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !557, file: !540, line: 699, baseType: !545, size: 64, offset: 1088)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !557, file: !540, line: 700, baseType: !320, size: 64, offset: 1152)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !557, file: !540, line: 711, baseType: !631, size: 64, offset: 1216)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !557, file: !540, line: 717, baseType: !841, size: 64, offset: 1280)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !540, line: 717, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !557, file: !540, line: 722, baseType: !844, offset: 1344)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !540, line: 570, elements: !598)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !517, file: !488, line: 90, baseType: !846, size: 64, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !517, file: !488, line: 91, baseType: !848, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !478, file: !374, line: 120, baseType: !850, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!853, !445}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !207, line: 39, size: 384, elements: !856)
!856 = !{!857, !858, !862, !866, !872, !876}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !855, file: !207, line: 40, baseType: !206, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !855, file: !207, line: 41, baseType: !859, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!357}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !855, file: !207, line: 42, baseType: !863, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!320}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !855, file: !207, line: 43, baseType: !867, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!366, !870}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !207, line: 19, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !855, file: !207, line: 44, baseType: !873, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!366}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !855, file: !207, line: 45, baseType: !877, size: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !320}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !478, file: !374, line: 121, baseType: !881, size: 64, offset: 256)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!366, !445}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !478, file: !374, line: 122, baseType: !885, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !445, !888, !895}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !766, line: 23, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !766, line: 21, size: 32, elements: !891)
!891 = !{!892}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !890, file: !766, line: 22, baseType: !893, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !358, line: 37, baseType: !894)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !496, line: 49, baseType: !7)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !766, line: 28, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !766, line: 26, size: 32, elements: !898)
!898 = !{!899}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !897, file: !766, line: 27, baseType: !900, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !358, line: 38, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !496, line: 50, baseType: !7)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !373, file: !374, line: 70, baseType: !903, size: 64, offset: 384)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !905, line: 190, size: 1152, elements: !906)
!905 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!906 = !{!907, !908, !909, !910, !911, !912, !913, !914, !1009, !1010, !1011, !1012, !1013, !1016}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !904, file: !905, line: 191, baseType: !414, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !904, file: !905, line: 192, baseType: !414, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !904, file: !905, line: 202, baseType: !903, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !904, file: !905, line: 203, baseType: !377, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !904, file: !905, line: 205, baseType: !820, size: 192, align: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !904, file: !905, line: 207, baseType: !366, size: 64, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !904, file: !905, line: 208, baseType: !7, size: 32, offset: 448)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !904, file: !905, line: 209, baseType: !915, size: 256, offset: 512)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !904, file: !905, line: 209, size: 256, elements: !916)
!916 = !{!917, !929, !933}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !915, file: !905, line: 210, baseType: !918, size: 256)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !905, line: 153, size: 256, elements: !919)
!919 = !{!920, !921, !925, !928}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !918, file: !905, line: 154, baseType: !512, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !918, file: !905, line: 156, baseType: !922, size: 64, offset: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !821, line: 12, size: 64, elements: !923)
!923 = !{!924}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !922, file: !821, line: 13, baseType: !825, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !918, file: !905, line: 162, baseType: !926, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !905, line: 162, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !918, file: !905, line: 167, baseType: !512, size: 64, offset: 192)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !915, file: !905, line: 211, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !905, line: 170, size: 64, elements: !931)
!931 = !{!932}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !930, file: !905, line: 171, baseType: !903, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !915, file: !905, line: 212, baseType: !934, size: 256)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !905, line: 174, size: 256, elements: !935)
!935 = !{!936, !1004, !1007, !1008}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !934, file: !905, line: 175, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !905, line: 271, size: 768, elements: !940)
!940 = !{!941, !964, !968, !972, !977, !981, !985, !989, !990, !991, !992, !1000}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !939, file: !905, line: 276, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!13, !945}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !905, line: 251, size: 1216, elements: !947)
!947 = !{!948, !949, !950, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !946, file: !905, line: 253, baseType: !903, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !946, file: !905, line: 254, baseType: !545, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !946, file: !905, line: 255, baseType: !951, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !953, line: 66, flags: DIFlagFwdDecl)
!953 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!954 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !946, file: !905, line: 256, baseType: !320, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !946, file: !905, line: 259, baseType: !719, size: 256, offset: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !946, file: !905, line: 260, baseType: !719, size: 256, offset: 512)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !946, file: !905, line: 261, baseType: !13, size: 32, offset: 768)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !946, file: !905, line: 262, baseType: !381, size: 128, offset: 832)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !946, file: !905, line: 263, baseType: !462, size: 64, offset: 960)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !946, file: !905, line: 265, baseType: !509, size: 64, offset: 1024)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !946, file: !905, line: 266, baseType: !357, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !946, file: !905, line: 267, baseType: !357, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !946, file: !905, line: 268, baseType: !833, size: 64, offset: 1152)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !939, file: !905, line: 277, baseType: !965, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !945}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !939, file: !905, line: 290, baseType: !969, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!13, !951, !320}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !939, file: !905, line: 292, baseType: !973, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!320, !951, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !939, file: !905, line: 293, baseType: !978, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!320, !951, !320, !976}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !939, file: !905, line: 294, baseType: !982, size: 64, offset: 320)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !951, !320}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !939, file: !905, line: 296, baseType: !986, size: 64, offset: 384)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!494, !945, !462, !509, !548}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !939, file: !905, line: 306, baseType: !509, size: 64, offset: 448)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !939, file: !905, line: 313, baseType: !357, size: 8, offset: 512)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !939, file: !905, line: 314, baseType: !986, size: 64, offset: 576)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !939, file: !905, line: 317, baseType: !993, size: 64, offset: 640)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!996, !945, !998}
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !997, line: 59, baseType: !7)
!997 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !905, line: 31, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !939, file: !905, line: 320, baseType: !1001, size: 64, offset: 704)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!13, !945, !556}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !934, file: !905, line: 176, baseType: !1005, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !905, line: 35, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !934, file: !905, line: 177, baseType: !548, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !934, file: !905, line: 178, baseType: !903, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !904, file: !905, line: 215, baseType: !320, size: 64, offset: 768)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !904, file: !905, line: 221, baseType: !625, size: 64, offset: 832)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !904, file: !905, line: 223, baseType: !432, size: 16, offset: 896)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !904, file: !905, line: 224, baseType: !504, size: 16, offset: 912)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !904, file: !905, line: 225, baseType: !1014, size: 64, offset: 960)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !905, line: 36, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !904, file: !905, line: 227, baseType: !568, size: 128, align: 64, offset: 1024)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !373, file: !374, line: 71, baseType: !1018, size: 32, offset: 448)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1019, line: 19, size: 32, elements: !1020)
!1019 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1020 = !{!1021}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1018, file: !1019, line: 20, baseType: !1022, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1023, line: 113, baseType: !1024)
!1023 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1023, line: 111, size: 32, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1024, file: !1023, line: 112, baseType: !414, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !373, file: !374, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !373, file: !374, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !373, file: !374, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !373, file: !374, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !373, file: !374, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !370, file: !213, line: 707, baseType: !1033, size: 64, offset: 512)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !370, file: !213, line: 709, baseType: !1035, size: 64, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !213, line: 37, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !370, file: !213, line: 711, baseType: !377, size: 64, offset: 640)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !370, file: !213, line: 712, baseType: !1039, size: 64, offset: 704)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !213, line: 89, size: 384, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1049, !1054, !1058}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1041, file: !213, line: 90, baseType: !377, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1041, file: !213, line: 91, baseType: !514, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1041, file: !213, line: 92, baseType: !1046, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!13, !368, !457}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1041, file: !213, line: 93, baseType: !1050, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!462, !368, !1053, !888, !895}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1041, file: !213, line: 95, baseType: !1055, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !1033}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1041, file: !213, line: 97, baseType: !1059, size: 64, offset: 320)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1061)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !225, line: 286, size: 1472, elements: !1062)
!1062 = !{!1063, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1061, file: !225, line: 287, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!13, !1033}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1061, file: !225, line: 288, baseType: !1055, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1061, file: !225, line: 289, baseType: !1064, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1061, file: !225, line: 290, baseType: !1064, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1061, file: !225, line: 291, baseType: !1064, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1061, file: !225, line: 292, baseType: !1064, size: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1061, file: !225, line: 293, baseType: !1064, size: 64, offset: 384)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1061, file: !225, line: 294, baseType: !1064, size: 64, offset: 448)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1061, file: !225, line: 295, baseType: !1064, size: 64, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1061, file: !225, line: 296, baseType: !1064, size: 64, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1061, file: !225, line: 297, baseType: !1064, size: 64, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1061, file: !225, line: 298, baseType: !1064, size: 64, offset: 704)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1061, file: !225, line: 299, baseType: !1064, size: 64, offset: 768)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1061, file: !225, line: 300, baseType: !1064, size: 64, offset: 832)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1061, file: !225, line: 301, baseType: !1064, size: 64, offset: 896)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1061, file: !225, line: 302, baseType: !1064, size: 64, offset: 960)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1061, file: !225, line: 303, baseType: !1064, size: 64, offset: 1024)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1061, file: !225, line: 304, baseType: !1064, size: 64, offset: 1088)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1061, file: !225, line: 305, baseType: !1064, size: 64, offset: 1152)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1061, file: !225, line: 306, baseType: !1064, size: 64, offset: 1216)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1061, file: !225, line: 307, baseType: !1064, size: 64, offset: 1280)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1061, file: !225, line: 308, baseType: !1064, size: 64, offset: 1344)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1061, file: !225, line: 309, baseType: !1064, size: 64, offset: 1408)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !370, file: !213, line: 714, baseType: !1090, size: 64, offset: 768)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1093, line: 80, size: 1344, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1554}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1092, file: !1093, line: 81, baseType: !377, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1092, file: !1093, line: 82, baseType: !377, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1092, file: !1093, line: 83, baseType: !514, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1092, file: !1093, line: 84, baseType: !514, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1092, file: !1093, line: 85, baseType: !514, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1092, file: !1093, line: 87, baseType: !1101, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!13, !1033, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !295, line: 96, size: 1152, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1485, !1486, !1487, !1488, !1504, !1517, !1518, !1519, !1520, !1521, !1529, !1530, !1531, !1532, !1533, !1534}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1105, file: !295, line: 97, baseType: !377, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1105, file: !295, line: 98, baseType: !1090, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1105, file: !295, line: 100, baseType: !1110, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !288, line: 402, size: 9216, align: 512, elements: !1112)
!1112 = !{!1113, !1114, !1115, !1119, !1140, !1166, !1167, !1168, !1169, !1173, !1176, !1177, !1178, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1241, !1245, !1265, !1283, !1284, !1285, !1286, !1295, !1318, !1319, !1322, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1336, !1337, !1443, !1451, !1452, !1453, !1455, !1459, !1460, !1464, !1465, !1466, !1467, !1469, !1470, !1471, !1478, !1479, !1480, !1484}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1111, file: !288, line: 403, baseType: !287, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1111, file: !288, line: 406, baseType: !381, size: 128, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1111, file: !288, line: 409, baseType: !1116, size: 448, offset: 192)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 448, elements: !1117)
!1117 = !{!1118}
!1118 = !DISubrange(count: 56)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1111, file: !288, line: 417, baseType: !1120, size: 768, offset: 640)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !288, line: 45, size: 768, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1125, !1128}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1120, file: !288, line: 46, baseType: !373, size: 512)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1120, file: !288, line: 47, baseType: !1110, size: 64, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1120, file: !288, line: 48, baseType: !387, size: 64, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1120, file: !288, line: 49, baseType: !1126, size: 64, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !288, line: 49, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1120, file: !288, line: 50, baseType: !1129, size: 64, offset: 704)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1131, line: 26, size: 256, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1130, file: !1131, line: 27, baseType: !7, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1130, file: !1131, line: 28, baseType: !1135, size: 192, offset: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1136, line: 43, size: 192, elements: !1137)
!1136 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1137 = !{!1138, !1139}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1135, file: !1136, line: 44, baseType: !653, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1135, file: !1136, line: 45, baseType: !381, size: 128, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1111, file: !288, line: 418, baseType: !1141, size: 64, offset: 1408)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !288, line: 53, size: 448, elements: !1143)
!1143 = !{!1144, !1145, !1150, !1154, !1158, !1162}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1142, file: !288, line: 54, baseType: !500, size: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1142, file: !288, line: 55, baseType: !1146, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!494, !1141, !1149, !462}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1142, file: !288, line: 57, baseType: !1151, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!494, !1141, !1149, !377, !509}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1142, file: !288, line: 59, baseType: !1155, size: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !1110, !377}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1142, file: !288, line: 60, baseType: !1159, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!13, !1110}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1142, file: !288, line: 61, baseType: !1163, size: 64, offset: 384)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !1110}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1111, file: !288, line: 419, baseType: !377, size: 64, offset: 1472)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1111, file: !288, line: 420, baseType: !377, size: 64, offset: 1536)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1111, file: !288, line: 421, baseType: !387, size: 64, offset: 1600)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1111, file: !288, line: 424, baseType: !1170, size: 64, offset: 1664)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !288, line: 424, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1111, file: !288, line: 425, baseType: !1174, size: 64, offset: 1728)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1111, file: !288, line: 426, baseType: !7, size: 32, offset: 1792)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1111, file: !288, line: 435, baseType: !719, size: 256, offset: 1856)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1111, file: !288, line: 437, baseType: !1179, size: 64, offset: 2112)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1181, line: 69, size: 320, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1182 = !{!1183, !1184, !1185, !1202, !1204, !1208, !1209}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1180, file: !1181, line: 70, baseType: !377, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1180, file: !1181, line: 71, baseType: !1110, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1180, file: !1181, line: 72, baseType: !1186, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1181, line: 47, size: 256, elements: !1189)
!1189 = !{!1190, !1191, !1197, !1201}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1188, file: !1181, line: 49, baseType: !7, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1188, file: !1181, line: 51, baseType: !1192, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!13, !377, !1195}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1188, file: !1181, line: 53, baseType: !1198, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!13, !462, !1195}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1188, file: !1181, line: 55, baseType: !877, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1180, file: !1181, line: 73, baseType: !1203, size: 16, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1180, file: !1181, line: 74, baseType: !1205, size: 8, offset: 208)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !327, line: 16, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !329, line: 20, baseType: !1207)
!1207 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1180, file: !1181, line: 75, baseType: !422, size: 8, offset: 216)
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1181, line: 76, baseType: !1210, size: 64, offset: 256)
!1210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !1181, line: 76, size: 64, elements: !1211)
!1211 = !{!1212, !1213, !1220}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1210, file: !1181, line: 77, baseType: !320, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1210, file: !1181, line: 78, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1216)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1181, line: 86, size: 128, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1216, file: !1181, line: 87, baseType: !7, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1216, file: !1181, line: 88, baseType: !462, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1210, file: !1181, line: 79, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1223)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1181, line: 92, size: 256, elements: !1224)
!1224 = !{!1225, !1226, !1227, !1229, !1230}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1223, file: !1181, line: 94, baseType: !7, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1223, file: !1181, line: 95, baseType: !7, size: 32, offset: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1223, file: !1181, line: 96, baseType: !1228, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1223, file: !1181, line: 97, baseType: !1186, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1223, file: !1181, line: 98, baseType: !320, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1111, file: !288, line: 438, baseType: !7, size: 32, offset: 2176)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1111, file: !288, line: 441, baseType: !7, size: 32, offset: 2208)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1111, file: !288, line: 442, baseType: !1170, size: 64, offset: 2240)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1111, file: !288, line: 443, baseType: !1174, size: 64, offset: 2304)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1111, file: !288, line: 444, baseType: !357, size: 8, offset: 2368)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1111, file: !288, line: 451, baseType: !357, size: 8, offset: 2376)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1111, file: !288, line: 454, baseType: !7, size: 32, offset: 2400)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1111, file: !288, line: 455, baseType: !1239, size: 64, offset: 2432)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !288, line: 43, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1111, file: !288, line: 458, baseType: !1242, size: 64, offset: 2496)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!13}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1111, file: !288, line: 460, baseType: !1246, size: 4032, align: 512, offset: 2560)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1247, size: 4032, elements: !1263)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !288, line: 362, size: 576, elements: !1248)
!1248 = !{!1249, !1250, !1251}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1247, file: !288, line: 363, baseType: !320, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1247, file: !288, line: 364, baseType: !7, size: 32, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1247, file: !288, line: 367, baseType: !1252, size: 448, offset: 128)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !288, line: 319, size: 448, elements: !1253)
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1252, file: !288, line: 320, baseType: !1110, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1252, file: !288, line: 321, baseType: !1256, size: 384, offset: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1257, line: 40, size: 384, elements: !1258)
!1257 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1258 = !{!1259}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1256, file: !1257, line: 41, baseType: !1260, size: 384, align: 64)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 384, align: 64, elements: !1261)
!1261 = !{!1262}
!1262 = !DISubrange(count: 2)
!1263 = !{!1264}
!1264 = !DISubrange(count: 7)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1111, file: !288, line: 463, baseType: !1266, size: 192, offset: 6592)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1267, line: 8, size: 192, elements: !1268)
!1267 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1268 = !{!1269, !1270, !1272}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1266, file: !1267, line: 10, baseType: !7, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1266, file: !1267, line: 11, baseType: !1271, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1266, file: !1267, line: 12, baseType: !1273, size: 64, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1275, line: 59, size: 48, elements: !1276)
!1275 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1276 = !{!1277, !1278, !1279, !1280, !1281, !1282}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1274, file: !1275, line: 60, baseType: !755, size: 16)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1274, file: !1275, line: 61, baseType: !755, size: 16, offset: 16)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1274, file: !1275, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1274, file: !1275, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1274, file: !1275, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1274, file: !1275, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1111, file: !288, line: 465, baseType: !512, size: 64, offset: 6784)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1111, file: !288, line: 469, baseType: !7, size: 32, offset: 6848)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1111, file: !288, line: 470, baseType: !381, size: 128, offset: 6912)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1111, file: !288, line: 471, baseType: !1287, size: 64, offset: 7040)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1289, line: 33, size: 96, elements: !1290)
!1289 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1290 = !{!1291, !1292, !1293, !1294}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1288, file: !1289, line: 37, baseType: !13, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1288, file: !1289, line: 43, baseType: !13, size: 32, offset: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1288, file: !1289, line: 45, baseType: !432, size: 16, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1288, file: !1289, line: 47, baseType: !432, size: 16, offset: 80)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1111, file: !288, line: 476, baseType: !1296, size: 64, offset: 7104)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !288, line: 378, size: 256, elements: !1298)
!1298 = !{!1299, !1315, !1316, !1317}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1297, file: !288, line: 379, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1302, line: 204, baseType: !1303)
!1302 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1302, line: 197, size: 192, elements: !1304)
!1304 = !{!1305, !1307, !1308, !1309, !1311, !1313}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1303, file: !1302, line: 198, baseType: !1306, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1302, line: 21, baseType: !328)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1303, file: !1302, line: 199, baseType: !424, size: 8, offset: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1303, file: !1302, line: 200, baseType: !424, size: 8, offset: 40)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1303, file: !1302, line: 201, baseType: !1310, size: 16, offset: 48)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1302, line: 17, baseType: !431)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1303, file: !1302, line: 202, baseType: !1312, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1302, line: 16, baseType: !626)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1303, file: !1302, line: 203, baseType: !1314, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1302, line: 22, baseType: !626)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1297, file: !288, line: 380, baseType: !7, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1297, file: !288, line: 381, baseType: !462, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1297, file: !288, line: 382, baseType: !462, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1111, file: !288, line: 477, baseType: !1297, size: 256, offset: 7168)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1111, file: !288, line: 480, baseType: !1320, size: 64, offset: 7424)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !288, line: 480, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1111, file: !288, line: 483, baseType: !1323, size: 64, offset: 7488)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !288, line: 483, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1111, file: !288, line: 488, baseType: !462, size: 64, offset: 7552)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1111, file: !288, line: 492, baseType: !320, size: 64, offset: 7616)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1111, file: !288, line: 493, baseType: !7, size: 32, offset: 7680)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1111, file: !288, line: 495, baseType: !320, size: 64, offset: 7744)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1111, file: !288, line: 496, baseType: !7, size: 32, offset: 7808)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1111, file: !288, line: 499, baseType: !7, size: 32, offset: 7840)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1111, file: !288, line: 500, baseType: !1332, size: 64, offset: 7872)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1334, line: 45, baseType: !1335)
!1334 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1111, file: !288, line: 503, baseType: !7, size: 32, offset: 7936)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1111, file: !288, line: 504, baseType: !1338, size: 64, offset: 8000)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1341, line: 96, size: 192, elements: !1342)
!1341 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1342 = !{!1343, !1344, !1404, !1407}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1340, file: !1341, line: 97, baseType: !7, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1340, file: !1341, line: 98, baseType: !1345, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1341, line: 24, size: 3072, elements: !1347)
!1347 = !{!1348, !1350, !1351, !1352, !1353, !1367, !1368, !1369, !1370, !1388, !1389, !1390, !1401, !1402, !1403}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1346, file: !1341, line: 26, baseType: !1349, size: 128)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 128, elements: !1261)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1346, file: !1341, line: 27, baseType: !1349, size: 128, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1346, file: !1341, line: 28, baseType: !13, size: 32, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1346, file: !1341, line: 31, baseType: !394, size: 32, align: 512, offset: 512)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1346, file: !1341, line: 32, baseType: !1354, size: 960, offset: 576)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1355, line: 206, size: 960, elements: !1356)
!1355 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1356 = !{!1357, !1358, !1361, !1363, !1364, !1366}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1354, file: !1355, line: 207, baseType: !571, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1354, file: !1355, line: 208, baseType: !1359, size: 256, offset: 64)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1360, size: 256, elements: !700)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1354, file: !1355, line: 209, baseType: !1362, size: 256, offset: 320)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 256, elements: !700)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1354, file: !1355, line: 213, baseType: !498, size: 64, offset: 576)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1354, file: !1355, line: 215, baseType: !1365, size: 256, offset: 640)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 256, elements: !700)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1354, file: !1355, line: 216, baseType: !422, size: 8, offset: 896)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1346, file: !1341, line: 33, baseType: !512, size: 64, offset: 1536)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1346, file: !1341, line: 34, baseType: !512, size: 64, offset: 1600)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1346, file: !1341, line: 35, baseType: !357, size: 8, offset: 1664)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1346, file: !1341, line: 36, baseType: !1371, size: 320, offset: 1728)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1372, line: 11, size: 320, elements: !1373)
!1372 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1373 = !{!1374, !1381, !1382, !1387}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1371, file: !1372, line: 16, baseType: !1375, size: 128)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !358, line: 198, size: 128, elements: !1376)
!1376 = !{!1377, !1379}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1375, file: !358, line: 199, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1375, file: !358, line: 199, baseType: !1380, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1371, file: !1372, line: 17, baseType: !512, size: 64, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1371, file: !1372, line: 18, baseType: !1383, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !1386}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1371, file: !1372, line: 19, baseType: !326, size: 32, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1346, file: !1341, line: 37, baseType: !781, size: 256, offset: 2048)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1346, file: !1341, line: 38, baseType: !568, size: 128, align: 64, offset: 2304)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1346, file: !1341, line: 39, baseType: !1391, size: 64, offset: 2432)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1341, line: 49, size: 768, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1400}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1392, file: !1341, line: 50, baseType: !394, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1392, file: !1341, line: 51, baseType: !1362, size: 256, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1392, file: !1341, line: 53, baseType: !1362, size: 256, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1392, file: !1341, line: 54, baseType: !512, size: 64, offset: 576)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1392, file: !1341, line: 55, baseType: !1391, size: 64, offset: 640)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1392, file: !1341, line: 56, baseType: !13, size: 32, offset: 704)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1392, file: !1341, line: 57, baseType: !13, size: 32, offset: 736)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1346, file: !1341, line: 40, baseType: !512, size: 64, offset: 2496)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1346, file: !1341, line: 42, baseType: !13, size: 32, offset: 2560)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1346, file: !1341, line: 43, baseType: !1339, size: 64, offset: 2624)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1340, file: !1341, line: 99, baseType: !1405, offset: 128)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1406, line: 211, elements: !598)
!1406 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1340, file: !1341, line: 100, baseType: !1408, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1341, line: 63, size: 3008, elements: !1410)
!1410 = !{!1411, !1412, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1442}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1409, file: !1341, line: 64, baseType: !1391, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1409, file: !1341, line: 65, baseType: !1413, size: 192, offset: 64)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 192, elements: !463)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1409, file: !1341, line: 67, baseType: !13, size: 32, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1409, file: !1341, line: 68, baseType: !719, size: 256, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1409, file: !1341, line: 69, baseType: !394, size: 32, offset: 576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1409, file: !1341, line: 70, baseType: !719, size: 256, offset: 640)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1409, file: !1341, line: 71, baseType: !512, size: 64, offset: 896)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1409, file: !1341, line: 72, baseType: !512, size: 64, offset: 960)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1409, file: !1341, line: 73, baseType: !512, size: 64, offset: 1024)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1409, file: !1341, line: 74, baseType: !512, size: 64, offset: 1088)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1409, file: !1341, line: 75, baseType: !512, size: 64, offset: 1152)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1409, file: !1341, line: 76, baseType: !512, size: 64, offset: 1216)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1409, file: !1341, line: 77, baseType: !512, size: 64, offset: 1280)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1409, file: !1341, line: 78, baseType: !512, size: 64, offset: 1344)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1409, file: !1341, line: 79, baseType: !357, size: 8, offset: 1408)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1409, file: !1341, line: 80, baseType: !512, size: 64, offset: 1472)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1409, file: !1341, line: 81, baseType: !719, size: 256, offset: 1536)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1409, file: !1341, line: 82, baseType: !1130, size: 256, offset: 1792)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1409, file: !1341, line: 84, baseType: !414, size: 32, offset: 2048)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1409, file: !1341, line: 87, baseType: !512, size: 64, offset: 2112)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1409, file: !1341, line: 88, baseType: !512, size: 64, offset: 2176)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1409, file: !1341, line: 89, baseType: !1434, size: 704, offset: 2240)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !782, line: 111, size: 704, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1441}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1434, file: !782, line: 112, baseType: !781, size: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1434, file: !782, line: 113, baseType: !1371, size: 320, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1434, file: !782, line: 116, baseType: !1439, size: 64, offset: 576)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !782, line: 18, flags: DIFlagFwdDecl)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1434, file: !782, line: 117, baseType: !13, size: 32, offset: 640)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1409, file: !1341, line: 90, baseType: !1339, size: 64, offset: 2944)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1111, file: !288, line: 515, baseType: !1444, size: 64, offset: 8064)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1446, line: 117, size: 128, elements: !1447)
!1446 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1447 = !{!1448, !1449, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1445, file: !1446, line: 118, baseType: !698, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1445, file: !1446, line: 119, baseType: !698, size: 32, offset: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1445, file: !1446, line: 120, baseType: !498, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1111, file: !288, line: 516, baseType: !7, size: 32, offset: 8128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1111, file: !288, line: 519, baseType: !7, size: 32, offset: 8160)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1111, file: !288, line: 520, baseType: !1454, size: 64, offset: 8192)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1111, file: !288, line: 523, baseType: !1456, size: 64, offset: 8256)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !288, line: 523, flags: DIFlagFwdDecl)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1111, file: !288, line: 524, baseType: !7, size: 32, offset: 8320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1111, file: !288, line: 525, baseType: !1461, size: 64, offset: 8384)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !288, line: 525, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1111, file: !288, line: 526, baseType: !7, size: 32, offset: 8448)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1111, file: !288, line: 533, baseType: !320, size: 64, offset: 8512)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1111, file: !288, line: 534, baseType: !7, size: 32, offset: 8576)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1111, file: !288, line: 535, baseType: !1468, size: 64, offset: 8640)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1111, file: !288, line: 536, baseType: !7, size: 32, offset: 8704)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1111, file: !288, line: 539, baseType: !13, size: 32, offset: 8736)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1111, file: !288, line: 540, baseType: !1472, size: 64, offset: 8768)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1474, line: 32, size: 64, elements: !1475)
!1474 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1473, file: !1474, line: 33, baseType: !698, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1473, file: !1474, line: 34, baseType: !698, size: 32, offset: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1111, file: !288, line: 563, baseType: !381, size: 128, offset: 8832)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1111, file: !288, line: 565, baseType: !381, size: 128, offset: 8960)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1111, file: !288, line: 568, baseType: !1481, size: 64, offset: 9088)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{null}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1111, file: !288, line: 570, baseType: !414, size: 32, offset: 9152)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1105, file: !295, line: 101, baseType: !377, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1105, file: !295, line: 103, baseType: !357, size: 8, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1105, file: !295, line: 104, baseType: !294, size: 32, offset: 288)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1105, file: !295, line: 106, baseType: !1489, size: 64, offset: 320)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1491)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1492, line: 282, size: 1600, elements: !1493)
!1492 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1493 = !{!1494, !1498, !1499, !1503}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1491, file: !1492, line: 283, baseType: !1495, size: 256)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 256, elements: !1496)
!1496 = !{!1497}
!1497 = !DISubrange(count: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1491, file: !1492, line: 284, baseType: !1495, size: 256, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1491, file: !1492, line: 285, baseType: !1500, size: 1024, offset: 512)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 1024, elements: !1501)
!1501 = !{!1502}
!1502 = !DISubrange(count: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1491, file: !1492, line: 286, baseType: !366, size: 64, offset: 1536)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1105, file: !295, line: 107, baseType: !1505, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1507)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1492, line: 217, size: 256, elements: !1508)
!1508 = !{!1509, !1513, !1515, !1516}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1507, file: !1492, line: 218, baseType: !1510, size: 128)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 128, elements: !1511)
!1511 = !{!1512}
!1512 = !DISubrange(count: 16)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1507, file: !1492, line: 219, baseType: !1514, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1492, line: 15, baseType: !512)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1507, file: !1492, line: 220, baseType: !328, size: 32, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1507, file: !1492, line: 221, baseType: !328, size: 32, offset: 224)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1105, file: !295, line: 109, baseType: !1064, size: 64, offset: 448)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1105, file: !295, line: 110, baseType: !1055, size: 64, offset: 512)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1105, file: !295, line: 111, baseType: !1064, size: 64, offset: 576)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1105, file: !295, line: 112, baseType: !1055, size: 64, offset: 640)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1105, file: !295, line: 113, baseType: !1522, size: 64, offset: 704)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!13, !1033, !1525}
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !225, line: 60, baseType: !1526)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !225, line: 58, size: 32, elements: !1527)
!1527 = !{!1528}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1526, file: !225, line: 59, baseType: !13, size: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1105, file: !295, line: 114, baseType: !1064, size: 64, offset: 768)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1105, file: !295, line: 115, baseType: !514, size: 64, offset: 832)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1105, file: !295, line: 116, baseType: !514, size: 64, offset: 896)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1105, file: !295, line: 118, baseType: !1059, size: 64, offset: 960)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1105, file: !295, line: 119, baseType: !1055, size: 64, offset: 1024)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1105, file: !295, line: 121, baseType: !1535, size: 64, offset: 1088)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !295, line: 121, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1092, file: !1093, line: 88, baseType: !1046, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1092, file: !1093, line: 89, baseType: !1064, size: 64, offset: 448)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1092, file: !1093, line: 90, baseType: !1055, size: 64, offset: 512)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1092, file: !1093, line: 91, baseType: !1055, size: 64, offset: 576)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1092, file: !1093, line: 92, baseType: !1055, size: 64, offset: 640)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1092, file: !1093, line: 94, baseType: !1064, size: 64, offset: 704)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1092, file: !1093, line: 95, baseType: !1064, size: 64, offset: 768)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1092, file: !1093, line: 97, baseType: !1522, size: 64, offset: 832)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1092, file: !1093, line: 98, baseType: !1064, size: 64, offset: 896)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1092, file: !1093, line: 100, baseType: !1064, size: 64, offset: 960)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1092, file: !1093, line: 102, baseType: !1064, size: 64, offset: 1024)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1092, file: !1093, line: 103, baseType: !1055, size: 64, offset: 1088)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1092, file: !1093, line: 105, baseType: !1059, size: 64, offset: 1152)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1092, file: !1093, line: 107, baseType: !1551, size: 64, offset: 1216)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1553)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1093, line: 107, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1092, file: !1093, line: 109, baseType: !357, size: 8, offset: 1280)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !370, file: !213, line: 715, baseType: !1104, size: 64, offset: 832)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !370, file: !213, line: 717, baseType: !320, size: 64, offset: 896)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !370, file: !213, line: 719, baseType: !320, size: 64, offset: 960)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !370, file: !213, line: 721, baseType: !719, size: 256, offset: 1024)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !370, file: !213, line: 725, baseType: !1560, size: 448, offset: 1280)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !213, line: 517, size: 448, elements: !1561)
!1561 = !{!1562, !1563, !1564, !1565}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1560, file: !213, line: 518, baseType: !381, size: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1560, file: !213, line: 519, baseType: !381, size: 128, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1560, file: !213, line: 520, baseType: !381, size: 128, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1560, file: !213, line: 521, baseType: !212, size: 32, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !370, file: !213, line: 726, baseType: !1567, size: 2496, offset: 1728)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !225, line: 663, size: 2496, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1613, !1614, !1615, !1616, !1617, !1618, !1689, !1690, !1691, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1729, !1733}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1567, file: !225, line: 664, baseType: !1525, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1567, file: !225, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1567, file: !225, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1567, file: !225, line: 667, baseType: !357, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1567, file: !225, line: 668, baseType: !357, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1567, file: !225, line: 669, baseType: !357, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1567, file: !225, line: 670, baseType: !357, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1567, file: !225, line: 671, baseType: !357, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1567, file: !225, line: 672, baseType: !357, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1567, file: !225, line: 673, baseType: !357, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1567, file: !225, line: 674, baseType: !357, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1567, file: !225, line: 675, baseType: !326, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1567, file: !225, line: 676, baseType: !394, size: 32, offset: 96)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1567, file: !225, line: 678, baseType: !381, size: 128, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1567, file: !225, line: 679, baseType: !1130, size: 256, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1567, file: !225, line: 680, baseType: !1585, size: 64, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1587, line: 43, size: 1536, elements: !1588)
!1587 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1596, !1597, !1598, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1586, file: !1587, line: 44, baseType: !377, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1586, file: !1587, line: 45, baseType: !13, size: 32, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1586, file: !1587, line: 46, baseType: !381, size: 128, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1586, file: !1587, line: 47, baseType: !394, size: 32, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1586, file: !1587, line: 48, baseType: !1594, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !225, line: 629, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1586, file: !1587, line: 49, baseType: !1371, size: 320, offset: 384)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1586, file: !1587, line: 50, baseType: !512, size: 64, offset: 704)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1586, file: !1587, line: 51, baseType: !1599, size: 64, offset: 768)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1600, line: 29, baseType: !637)
!1600 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1586, file: !1587, line: 52, baseType: !1599, size: 64, offset: 832)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1586, file: !1587, line: 53, baseType: !1599, size: 64, offset: 896)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1586, file: !1587, line: 54, baseType: !1599, size: 64, offset: 960)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1586, file: !1587, line: 55, baseType: !1599, size: 64, offset: 1024)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1586, file: !1587, line: 56, baseType: !512, size: 64, offset: 1088)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1586, file: !1587, line: 57, baseType: !512, size: 64, offset: 1152)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1586, file: !1587, line: 58, baseType: !512, size: 64, offset: 1216)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1586, file: !1587, line: 59, baseType: !512, size: 64, offset: 1280)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1586, file: !1587, line: 60, baseType: !512, size: 64, offset: 1344)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1586, file: !1587, line: 61, baseType: !1033, size: 64, offset: 1408)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1586, file: !1587, line: 62, baseType: !357, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1586, file: !1587, line: 63, baseType: !357, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1567, file: !225, line: 681, baseType: !357, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1567, file: !225, line: 682, baseType: !357, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1567, file: !225, line: 683, baseType: !357, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1567, file: !225, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1567, file: !225, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1567, file: !225, line: 690, baseType: !1619, size: 512, offset: 640)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !220, line: 118, size: 512, elements: !1620)
!1620 = !{!1621, !1627, !1628, !1633, !1685, !1686, !1687, !1688}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1619, file: !220, line: 119, baseType: !1622, size: 256)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1623, line: 9, size: 256, elements: !1624)
!1623 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1622, file: !1623, line: 10, baseType: !820, size: 192, align: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1622, file: !1623, line: 11, baseType: !1599, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1619, file: !220, line: 120, baseType: !1599, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1619, file: !220, line: 121, baseType: !1629, size: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!219, !1632}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1619, file: !220, line: 122, baseType: !1634, size: 64, offset: 384)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !220, line: 159, size: 512, align: 512, elements: !1636)
!1636 = !{!1637, !1662, !1663, !1666, !1671, !1672, !1680, !1684}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1635, file: !220, line: 160, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !220, line: 215, size: 4608, align: 512, elements: !1640)
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1639, file: !220, line: 216, baseType: !653, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1639, file: !220, line: 217, baseType: !7, size: 32, offset: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1639, file: !220, line: 218, baseType: !7, size: 32, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1639, file: !220, line: 219, baseType: !7, size: 32, offset: 96)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1639, file: !220, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1639, file: !220, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1639, file: !220, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1639, file: !220, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1639, file: !220, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1639, file: !220, line: 226, baseType: !7, size: 32, offset: 160)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1639, file: !220, line: 227, baseType: !432, size: 16, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1639, file: !220, line: 228, baseType: !432, size: 16, offset: 208)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1639, file: !220, line: 229, baseType: !7, size: 32, offset: 224)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1639, file: !220, line: 235, baseType: !1599, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1639, file: !220, line: 236, baseType: !1632, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1639, file: !220, line: 237, baseType: !1599, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1639, file: !220, line: 238, baseType: !1632, size: 64, offset: 448)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1639, file: !220, line: 239, baseType: !1659, size: 4096, align: 512, offset: 512)
!1659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1635, size: 4096, align: 512, elements: !1660)
!1660 = !{!1661}
!1661 = !DISubrange(count: 8)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1635, file: !220, line: 161, baseType: !7, size: 32, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1635, file: !220, line: 162, baseType: !1664, size: 32, offset: 96)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !358, line: 32, baseType: !1665)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !496, line: 96, baseType: !13)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1635, file: !220, line: 163, baseType: !1667, size: 32, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !668, line: 274, baseType: !1668)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !668, line: 274, size: 32, elements: !1669)
!1669 = !{!1670}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1668, file: !668, line: 274, baseType: !667, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1635, file: !220, line: 164, baseType: !1632, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1635, file: !220, line: 165, baseType: !1673, size: 128, offset: 256)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1623, line: 14, size: 128, elements: !1674)
!1674 = !{!1675}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1673, file: !1623, line: 15, baseType: !1676, size: 128)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !821, line: 26, size: 128, elements: !1677)
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1676, file: !821, line: 27, baseType: !922, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1676, file: !821, line: 28, baseType: !825, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1635, file: !220, line: 166, baseType: !1681, size: 64, offset: 384)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!1599}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1635, file: !220, line: 167, baseType: !1599, size: 64, offset: 448)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1619, file: !220, line: 123, baseType: !422, size: 8, offset: 448)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1619, file: !220, line: 124, baseType: !422, size: 8, offset: 456)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1619, file: !220, line: 125, baseType: !422, size: 8, offset: 464)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1619, file: !220, line: 126, baseType: !422, size: 8, offset: 472)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1567, file: !225, line: 691, baseType: !625, size: 64, offset: 1152)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1567, file: !225, line: 692, baseType: !781, size: 256, offset: 1216)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1567, file: !225, line: 693, baseType: !1692, size: 192, offset: 1472)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1693, line: 41, baseType: !1694)
!1693 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1693, line: 37, size: 192, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1694, file: !1693, line: 38, baseType: !394, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1694, file: !1693, line: 39, baseType: !381, size: 128, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1567, file: !225, line: 694, baseType: !1594, size: 64, offset: 1664)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1567, file: !225, line: 695, baseType: !414, size: 32, offset: 1728)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1567, file: !225, line: 696, baseType: !414, size: 32, offset: 1760)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1567, file: !225, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1567, file: !225, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1567, file: !225, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1567, file: !225, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1567, file: !225, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1567, file: !225, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1567, file: !225, line: 703, baseType: !357, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1567, file: !225, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1567, file: !225, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1567, file: !225, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1567, file: !225, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1567, file: !225, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1567, file: !225, line: 709, baseType: !7, size: 32, offset: 1824)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1567, file: !225, line: 710, baseType: !224, size: 32, offset: 1856)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1567, file: !225, line: 711, baseType: !232, size: 32, offset: 1888)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1567, file: !225, line: 712, baseType: !232, size: 32, offset: 1920)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1567, file: !225, line: 713, baseType: !13, size: 32, offset: 1952)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1567, file: !225, line: 714, baseType: !13, size: 32, offset: 1984)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1567, file: !225, line: 715, baseType: !625, size: 64, offset: 2048)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1567, file: !225, line: 716, baseType: !625, size: 64, offset: 2112)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1567, file: !225, line: 717, baseType: !625, size: 64, offset: 2176)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1567, file: !225, line: 718, baseType: !625, size: 64, offset: 2240)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1567, file: !225, line: 720, baseType: !1724, size: 64, offset: 2304)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !225, line: 632, size: 64, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1725, file: !225, line: 633, baseType: !394, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1725, file: !225, line: 634, baseType: !7, size: 32, offset: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1567, file: !225, line: 721, baseType: !1730, size: 64, offset: 2368)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !1033, !698}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1567, file: !225, line: 722, baseType: !1734, size: 64, offset: 2432)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !240, line: 117, size: 2432, elements: !1736)
!1736 = !{!1737, !1766, !1767, !1774, !1779, !1806, !1807}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1735, file: !240, line: 118, baseType: !1738, size: 320)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !240, line: 52, size: 320, elements: !1739)
!1739 = !{!1740, !1745, !1746, !1747, !1748, !1749}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1738, file: !240, line: 53, baseType: !1741, size: 128)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1742, line: 82, size: 128, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1741, file: !1742, line: 83, baseType: !381, size: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1738, file: !240, line: 54, baseType: !698, size: 32, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1738, file: !240, line: 55, baseType: !698, size: 32, offset: 160)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1738, file: !240, line: 56, baseType: !698, size: 32, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1738, file: !240, line: 57, baseType: !239, size: 32, offset: 224)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1738, file: !240, line: 58, baseType: !1750, size: 64, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1752, line: 65, size: 384, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1751, file: !1752, line: 66, baseType: !642, size: 320)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1751, file: !1752, line: 67, baseType: !1756, size: 64, offset: 320)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1752, line: 54, size: 192, elements: !1758)
!1758 = !{!1759, !1764, !1765}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1757, file: !1752, line: 55, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1752, line: 51, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!13, !1756, !512, !320}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1757, file: !1752, line: 56, baseType: !1756, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1757, file: !1752, line: 57, baseType: !13, size: 32, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1735, file: !240, line: 119, baseType: !1738, size: 320, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1735, file: !240, line: 120, baseType: !1768, size: 1408, offset: 640)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !240, line: 85, size: 1408, elements: !1769)
!1769 = !{!1770, !1771, !1772, !1773}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1768, file: !240, line: 86, baseType: !1738, size: 320)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1768, file: !240, line: 87, baseType: !1751, size: 384, offset: 320)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1768, file: !240, line: 88, baseType: !1738, size: 320, offset: 704)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1768, file: !240, line: 89, baseType: !1751, size: 384, offset: 1024)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1735, file: !240, line: 121, baseType: !1775, size: 192, offset: 2048)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !240, line: 71, size: 192, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1775, file: !240, line: 72, baseType: !381, size: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1775, file: !240, line: 73, baseType: !698, size: 32, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1735, file: !240, line: 122, baseType: !1780, size: 64, offset: 2240)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !240, line: 107, size: 576, elements: !1782)
!1782 = !{!1783, !1784, !1805}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1781, file: !240, line: 108, baseType: !245, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1781, file: !240, line: 113, baseType: !1785, size: 448, offset: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1781, file: !240, line: 109, size: 448, elements: !1786)
!1786 = !{!1787, !1793, !1798}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1785, file: !240, line: 110, baseType: !1788, size: 320)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1742, line: 86, size: 320, elements: !1789)
!1789 = !{!1790, !1791, !1792}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1788, file: !1742, line: 87, baseType: !13, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1788, file: !1742, line: 88, baseType: !381, size: 128, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1788, file: !1742, line: 89, baseType: !381, size: 128, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1785, file: !240, line: 111, baseType: !1794, size: 192)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !240, line: 66, size: 192, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1794, file: !240, line: 67, baseType: !381, size: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1794, file: !240, line: 68, baseType: !698, size: 32, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1785, file: !240, line: 112, baseType: !1799, size: 448)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !240, line: 92, size: 448, elements: !1800)
!1800 = !{!1801, !1802, !1803}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1799, file: !240, line: 93, baseType: !252, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1799, file: !240, line: 94, baseType: !1788, size: 320, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1799, file: !240, line: 95, baseType: !1804, size: 64, offset: 384)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1781, file: !240, line: 114, baseType: !1033, size: 64, offset: 512)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1735, file: !240, line: 123, baseType: !1780, size: 64, offset: 2304)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1735, file: !240, line: 124, baseType: !1780, size: 64, offset: 2368)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !370, file: !213, line: 727, baseType: !1809, size: 64, offset: 4224)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !225, line: 742, size: 1792, elements: !1811)
!1811 = !{!1812, !1813, !1814, !1818, !1819, !1820}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1810, file: !225, line: 743, baseType: !1061, size: 1472)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1810, file: !225, line: 744, baseType: !1064, size: 64, offset: 1472)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1810, file: !225, line: 745, baseType: !1815, size: 64, offset: 1536)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{null, !1033, !357}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1810, file: !225, line: 746, baseType: !1064, size: 64, offset: 1600)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1810, file: !225, line: 747, baseType: !1055, size: 64, offset: 1664)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1810, file: !225, line: 748, baseType: !1055, size: 64, offset: 1728)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !370, file: !213, line: 736, baseType: !1822, size: 128, offset: 4288)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !213, line: 529, size: 128, elements: !1823)
!1823 = !{!1824, !1828}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1822, file: !213, line: 531, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1827, line: 13, flags: DIFlagFwdDecl)
!1827 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1822, file: !213, line: 532, baseType: !1829, size: 64, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !213, line: 49, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !370, file: !213, line: 738, baseType: !1832, size: 64, offset: 4416)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1834)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !213, line: 738, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !370, file: !213, line: 740, baseType: !1836, size: 64, offset: 4480)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !370, file: !213, line: 741, baseType: !625, size: 64, offset: 4544)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !370, file: !213, line: 746, baseType: !625, size: 64, offset: 4608)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !370, file: !213, line: 747, baseType: !1840, size: 64, offset: 4672)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1842)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !213, line: 747, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !370, file: !213, line: 749, baseType: !1844, size: 64, offset: 4736)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !213, line: 428, size: 128, elements: !1846)
!1846 = !{!1847, !1848, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1845, file: !213, line: 433, baseType: !7, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1845, file: !213, line: 434, baseType: !7, size: 32, offset: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1845, file: !213, line: 435, baseType: !512, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !370, file: !213, line: 751, baseType: !381, size: 128, offset: 4800)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !370, file: !213, line: 762, baseType: !1852, size: 64, offset: 4928)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !213, line: 762, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !370, file: !213, line: 770, baseType: !1855, offset: 4992)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1856, line: 5, elements: !598)
!1856 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !370, file: !213, line: 772, baseType: !1858, size: 64, offset: 4992)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1860, line: 48, size: 1152, elements: !1861)
!1860 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1861 = !{!1862, !1863, !1865, !1866, !1867, !1875, !1876, !1877, !1878, !1879, !1880}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1859, file: !1860, line: 49, baseType: !377, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1859, file: !1860, line: 50, baseType: !1864, size: 32, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1860, line: 25, baseType: !326)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1859, file: !1860, line: 51, baseType: !377, size: 64, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1859, file: !1860, line: 52, baseType: !335, size: 512, offset: 192)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1859, file: !1860, line: 54, baseType: !1868, size: 64, offset: 704)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1860, line: 28, size: 256, elements: !1870)
!1870 = !{!1871, !1872, !1873, !1874}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1869, file: !1860, line: 29, baseType: !462, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1869, file: !1860, line: 30, baseType: !13, size: 32, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1869, file: !1860, line: 31, baseType: !320, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1869, file: !1860, line: 32, baseType: !1868, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1859, file: !1860, line: 55, baseType: !1868, size: 64, offset: 768)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1859, file: !1860, line: 56, baseType: !1858, size: 64, offset: 832)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1859, file: !1860, line: 57, baseType: !1858, size: 64, offset: 896)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1859, file: !1860, line: 58, baseType: !1858, size: 64, offset: 960)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1859, file: !1860, line: 62, baseType: !512, size: 64, offset: 1024)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1859, file: !1860, line: 63, baseType: !320, size: 64, offset: 1088)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !370, file: !213, line: 773, baseType: !339, size: 64, offset: 5056)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !370, file: !213, line: 776, baseType: !13, size: 32, offset: 5120)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !370, file: !213, line: 778, baseType: !1884, size: 32, offset: 5152)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !358, line: 21, baseType: !1885)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !358, line: 18, baseType: !326)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !370, file: !213, line: 779, baseType: !326, size: 32, offset: 5184)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !370, file: !213, line: 781, baseType: !394, size: 32, offset: 5216)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !370, file: !213, line: 782, baseType: !381, size: 128, offset: 5248)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !370, file: !213, line: 784, baseType: !1890, size: 64, offset: 5376)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1892)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1893, line: 52, size: 768, elements: !1894)
!1893 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1894 = !{!1895, !1896, !1897, !1898, !1899, !1903, !1907, !1908, !1909, !1910, !1914, !1918}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1892, file: !1893, line: 53, baseType: !377, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1892, file: !1893, line: 55, baseType: !514, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1892, file: !1893, line: 56, baseType: !514, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1892, file: !1893, line: 58, baseType: !1046, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1892, file: !1893, line: 59, baseType: !1900, size: 64, offset: 256)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!462, !368, !1053}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1892, file: !1893, line: 61, baseType: !1904, size: 64, offset: 320)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1890}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1892, file: !1893, line: 62, baseType: !1055, size: 64, offset: 384)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1892, file: !1893, line: 64, baseType: !1064, size: 64, offset: 448)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1892, file: !1893, line: 66, baseType: !853, size: 64, offset: 512)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1892, file: !1893, line: 67, baseType: !1911, size: 64, offset: 576)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!366, !368}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1892, file: !1893, line: 69, baseType: !1915, size: 64, offset: 640)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null, !368, !888, !895}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1892, file: !1893, line: 71, baseType: !1059, size: 64, offset: 704)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !370, file: !213, line: 785, baseType: !514, size: 64, offset: 5440)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !370, file: !213, line: 787, baseType: !1055, size: 64, offset: 5504)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !370, file: !213, line: 788, baseType: !1922, size: 64, offset: 5568)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !213, line: 46, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !370, file: !213, line: 789, baseType: !1925, size: 64, offset: 5632)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !213, line: 48, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !370, file: !213, line: 791, baseType: !1928, size: 64, offset: 5696)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !213, line: 597, size: 128, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1934, !1935}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1929, file: !213, line: 598, baseType: !262, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1929, file: !213, line: 599, baseType: !271, size: 32, offset: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1929, file: !213, line: 600, baseType: !276, size: 32, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1929, file: !213, line: 601, baseType: !357, size: 8, offset: 96)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1929, file: !213, line: 602, baseType: !357, size: 8, offset: 104)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !370, file: !213, line: 793, baseType: !281, size: 32, offset: 5760)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !370, file: !213, line: 795, baseType: !357, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !370, file: !213, line: 796, baseType: !357, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !370, file: !213, line: 797, baseType: !357, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !370, file: !213, line: 798, baseType: !357, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !370, file: !213, line: 799, baseType: !357, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !343, file: !336, line: 131, baseType: !354, size: 64, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !343, file: !336, line: 133, baseType: !1944, size: 64, offset: 320)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!256, !360}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !343, file: !336, line: 134, baseType: !1948, size: 64, offset: 384)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!357, !360, !377}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !343, file: !336, line: 136, baseType: !1952, size: 64, offset: 448)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!13, !360, !377, !7, !320, !509}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !343, file: !336, line: 141, baseType: !1956, size: 64, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!13, !360, !377, !1454, !509}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !343, file: !336, line: 144, baseType: !1960, size: 64, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!377, !360}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !343, file: !336, line: 145, baseType: !1960, size: 64, offset: 640)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !343, file: !336, line: 146, baseType: !1965, size: 64, offset: 704)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!339, !360}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !343, file: !336, line: 148, baseType: !1969, size: 64, offset: 768)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!339, !360, !339}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !343, file: !336, line: 151, baseType: !1973, size: 64, offset: 832)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!339, !360, !377}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !343, file: !336, line: 153, baseType: !1977, size: 64, offset: 896)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!13, !360, !377, !377, !7, !7, !1980}
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !336, line: 94, size: 640, elements: !1982)
!1982 = !{!1983, !1984, !1985}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1981, file: !336, line: 95, baseType: !339, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1981, file: !336, line: 96, baseType: !7, size: 32, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1981, file: !336, line: 97, baseType: !1986, size: 512, offset: 128)
!1986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 512, elements: !1660)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !343, file: !336, line: 158, baseType: !1969, size: 64, offset: 960)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !343, file: !336, line: 161, baseType: !1965, size: 64, offset: 1024)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !343, file: !336, line: 163, baseType: !346, size: 64, offset: 1088)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !343, file: !336, line: 164, baseType: !1991, size: 64, offset: 1152)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!13, !360, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !336, line: 73, size: 128, elements: !1996)
!1996 = !{!1997, !1998, !1999}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1995, file: !336, line: 74, baseType: !7, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1995, file: !336, line: 75, baseType: !7, size: 32, offset: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1995, file: !336, line: 76, baseType: !360, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !343, file: !336, line: 166, baseType: !2001, size: 64, offset: 1216)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!320, !339, !13}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !343, file: !336, line: 167, baseType: !2005, size: 64, offset: 1280)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!13, !360, !7}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !343, file: !336, line: 168, baseType: !2009, size: 64, offset: 1344)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!13, !339}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !335, file: !336, line: 44, baseType: !1033, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !335, file: !336, line: 45, baseType: !381, size: 128, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !335, file: !336, line: 46, baseType: !381, size: 128, offset: 320)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !336, line: 47, baseType: !422, size: 8, offset: 448)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !322, file: !323, line: 372, baseType: !381, size: 128, offset: 640)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !322, file: !323, line: 373, baseType: !381, size: 128, offset: 768)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !322, file: !323, line: 374, baseType: !2019, size: 32, offset: 896)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !323, line: 181, size: 32, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2019, file: !323, line: 182, baseType: !326, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2019, file: !323, line: 183, baseType: !326, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2019, file: !323, line: 184, baseType: !326, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2019, file: !323, line: 185, baseType: !326, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2019, file: !323, line: 186, baseType: !326, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2019, file: !323, line: 187, baseType: !326, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !323, line: 375, baseType: !2028, size: 32, offset: 928)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !323, line: 192, size: 32, elements: !2029)
!2029 = !{!2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2028, file: !323, line: 193, baseType: !326, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2028, file: !323, line: 194, baseType: !326, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2028, file: !323, line: 195, baseType: !326, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2028, file: !323, line: 196, baseType: !326, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2028, file: !323, line: 197, baseType: !326, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2028, file: !323, line: 198, baseType: !326, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2028, file: !323, line: 199, baseType: !326, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2028, file: !323, line: 200, baseType: !326, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2028, file: !323, line: 201, baseType: !326, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2028, file: !323, line: 202, baseType: !326, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2028, file: !323, line: 203, baseType: !326, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2028, file: !323, line: 204, baseType: !326, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2028, file: !323, line: 205, baseType: !326, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !2028, file: !323, line: 206, baseType: !326, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2028, file: !323, line: 207, baseType: !326, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !322, file: !323, line: 376, baseType: !2046, size: 960, offset: 960)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !323, line: 238, size: 960, elements: !2047)
!2047 = !{!2048, !2051, !2052, !2060, !2062, !2063, !2064, !2069, !2074}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2046, file: !323, line: 239, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !323, line: 220, baseType: !2050)
!2050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 64, elements: !1660)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !2046, file: !323, line: 240, baseType: !13, size: 32, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2046, file: !323, line: 241, baseType: !2053, size: 32, offset: 96)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !323, line: 230, size: 32, elements: !2054)
!2054 = !{!2055, !2056, !2057, !2058, !2059}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2053, file: !323, line: 231, baseType: !326, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2053, file: !323, line: 232, baseType: !326, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2053, file: !323, line: 233, baseType: !326, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !2053, file: !323, line: 234, baseType: !326, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2053, file: !323, line: 235, baseType: !326, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2046, file: !323, line: 242, baseType: !2061, size: 64, offset: 128)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !323, line: 221, baseType: !625)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2046, file: !323, line: 243, baseType: !462, size: 64, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2046, file: !323, line: 244, baseType: !381, size: 128, offset: 256)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2046, file: !323, line: 245, baseType: !2065, size: 320, offset: 384)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !323, line: 222, baseType: !2066)
!2066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 320, elements: !2067)
!2067 = !{!2068}
!2068 = !DISubrange(count: 40)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2046, file: !323, line: 246, baseType: !2070, size: 160, offset: 704)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !323, line: 223, baseType: !2071)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 160, elements: !2072)
!2072 = !{!2073}
!2073 = !DISubrange(count: 20)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2046, file: !323, line: 247, baseType: !2075, size: 64, offset: 896)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !333, line: 908, size: 192, elements: !2077)
!2077 = !{!2078, !2080, !2085, !2091, !2098, !2104, !2110, !2118}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2076, file: !333, line: 909, baseType: !2079, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !333, line: 644, baseType: !326)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2076, file: !333, line: 913, baseType: !2081, size: 128)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !333, line: 910, size: 128, elements: !2082)
!2082 = !{!2083, !2084}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2081, file: !333, line: 911, baseType: !2079, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2081, file: !333, line: 912, baseType: !625, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2076, file: !333, line: 919, baseType: !2086, size: 128)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !333, line: 915, size: 128, elements: !2087)
!2087 = !{!2088, !2089, !2090}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2086, file: !333, line: 916, baseType: !2079, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2086, file: !333, line: 917, baseType: !326, size: 32, offset: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2086, file: !333, line: 918, baseType: !462, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2076, file: !333, line: 925, baseType: !2092, size: 128)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !333, line: 921, size: 128, elements: !2093)
!2093 = !{!2094, !2095, !2096}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2092, file: !333, line: 922, baseType: !2079, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2092, file: !333, line: 923, baseType: !326, size: 32, offset: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2092, file: !333, line: 924, baseType: !2097, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2076, file: !333, line: 931, baseType: !2099, size: 128)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !333, line: 927, size: 128, elements: !2100)
!2100 = !{!2101, !2102, !2103}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2099, file: !333, line: 928, baseType: !2079, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2099, file: !333, line: 929, baseType: !326, size: 32, offset: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2099, file: !333, line: 930, baseType: !2075, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2076, file: !333, line: 937, baseType: !2105, size: 128)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !333, line: 933, size: 128, elements: !2106)
!2106 = !{!2107, !2108, !2109}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2105, file: !333, line: 934, baseType: !2079, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2105, file: !333, line: 935, baseType: !2079, size: 32, offset: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2105, file: !333, line: 936, baseType: !332, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2076, file: !333, line: 944, baseType: !2111, size: 192)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !333, line: 939, size: 192, elements: !2112)
!2112 = !{!2113, !2114, !2115, !2117}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2111, file: !333, line: 940, baseType: !2079, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2111, file: !333, line: 941, baseType: !326, size: 32, offset: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2111, file: !333, line: 942, baseType: !2116, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !333, line: 128, baseType: !625)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2111, file: !333, line: 943, baseType: !326, size: 32, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2076, file: !333, line: 950, baseType: !2119, size: 96)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !333, line: 946, size: 96, elements: !2120)
!2120 = !{!2121, !2122, !2123}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2119, file: !333, line: 947, baseType: !2079, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2119, file: !333, line: 948, baseType: !326, size: 32, offset: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2119, file: !333, line: 949, baseType: !326, size: 32, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !322, file: !323, line: 377, baseType: !2125, size: 1408, offset: 1920)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !323, line: 280, size: 1408, elements: !2126)
!2126 = !{!2127, !2128, !2138, !2153}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2125, file: !323, line: 281, baseType: !13, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2125, file: !323, line: 282, baseType: !2129, size: 32, offset: 32)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !323, line: 259, size: 32, elements: !2130)
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2136, !2137}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2129, file: !323, line: 260, baseType: !326, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2129, file: !323, line: 261, baseType: !326, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2129, file: !323, line: 262, baseType: !326, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2129, file: !323, line: 263, baseType: !326, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2129, file: !323, line: 264, baseType: !326, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2129, file: !323, line: 265, baseType: !326, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2129, file: !323, line: 266, baseType: !326, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2125, file: !323, line: 283, baseType: !2139, size: 1280, offset: 64)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2140, size: 1280, elements: !2151)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !323, line: 269, size: 256, elements: !2141)
!2141 = !{!2142, !2148, !2149, !2150}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2140, file: !323, line: 274, baseType: !2143, size: 8)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2140, file: !323, line: 270, size: 8, elements: !2144)
!2144 = !{!2145, !2146, !2147}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2143, file: !323, line: 271, baseType: !422, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2143, file: !323, line: 272, baseType: !422, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2143, file: !323, line: 273, baseType: !422, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2140, file: !323, line: 275, baseType: !13, size: 32, offset: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2140, file: !323, line: 276, baseType: !13, size: 32, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2140, file: !323, line: 277, baseType: !381, size: 128, offset: 128)
!2151 = !{!2152}
!2152 = !DISubrange(count: 5)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !2125, file: !323, line: 284, baseType: !422, size: 8, offset: 1344)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !322, file: !323, line: 378, baseType: !2155, size: 640, offset: 3328)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !323, line: 330, size: 640, elements: !2156)
!2156 = !{!2157, !2158, !2159, !2160, !2161, !2166, !2175, !2176, !2177}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2155, file: !323, line: 331, baseType: !332, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2155, file: !323, line: 332, baseType: !625, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2155, file: !323, line: 333, baseType: !625, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2155, file: !323, line: 334, baseType: !381, size: 128, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2155, file: !323, line: 335, baseType: !2162, size: 8, offset: 320)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !323, line: 320, size: 8, elements: !2163)
!2163 = !{!2164, !2165}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2162, file: !323, line: 321, baseType: !422, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2162, file: !323, line: 322, baseType: !422, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2155, file: !323, line: 336, baseType: !2167, size: 128, offset: 384)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !323, line: 325, size: 128, elements: !2168)
!2168 = !{!2169, !2174}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2167, file: !323, line: 326, baseType: !2170, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{null, !2173}
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2167, file: !323, line: 327, baseType: !1033, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2155, file: !323, line: 337, baseType: !1585, size: 64, offset: 512)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2155, file: !323, line: 338, baseType: !13, size: 32, offset: 576)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2155, file: !323, line: 339, baseType: !13, size: 32, offset: 608)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !322, file: !323, line: 379, baseType: !2179, size: 192, offset: 3968)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !323, line: 312, size: 192, elements: !2180)
!2180 = !{!2181, !2182, !2186, !2187}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2179, file: !323, line: 313, baseType: !13, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2179, file: !323, line: 314, baseType: !2183, size: 8, offset: 32)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !323, line: 298, size: 8, elements: !2184)
!2184 = !{!2185}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2183, file: !323, line: 299, baseType: !422, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2179, file: !323, line: 315, baseType: !13, size: 32, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2179, file: !323, line: 316, baseType: !2188, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !323, line: 302, size: 64, elements: !2190)
!2190 = !{!2191, !2196, !2197, !2198}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2189, file: !323, line: 306, baseType: !2192, size: 8)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2189, file: !323, line: 303, size: 8, elements: !2193)
!2193 = !{!2194, !2195}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2192, file: !323, line: 304, baseType: !422, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2192, file: !323, line: 305, baseType: !422, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2189, file: !323, line: 307, baseType: !422, size: 8, offset: 8)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2189, file: !323, line: 308, baseType: !422, size: 8, offset: 16)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2189, file: !323, line: 309, baseType: !13, size: 32, offset: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !322, file: !323, line: 380, baseType: !2200, size: 64, offset: 4160)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !323, line: 212, size: 64, elements: !2201)
!2201 = !{!2202}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2200, file: !323, line: 213, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !323, line: 86, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !322, file: !323, line: 381, baseType: !2206, size: 384, offset: 4224)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !323, line: 357, size: 384, elements: !2207)
!2207 = !{!2208, !2211, !2212, !2213}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2206, file: !323, line: 358, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2076)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2206, file: !323, line: 359, baseType: !381, size: 128, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2206, file: !323, line: 360, baseType: !2209, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2206, file: !323, line: 361, baseType: !381, size: 128, offset: 256)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !322, file: !323, line: 382, baseType: !2215, size: 64, offset: 4608)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !323, line: 124, size: 1216, elements: !2217)
!2217 = !{!2218, !2219, !2220, !2225, !2229, !2233, !2234, !2235}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2216, file: !323, line: 125, baseType: !1505, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2216, file: !323, line: 126, baseType: !381, size: 128, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2216, file: !323, line: 127, baseType: !2221, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!357, !377, !2224}
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2216, file: !323, line: 128, baseType: !2226, size: 64, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!13, !321, !1505}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2216, file: !323, line: 129, baseType: !2230, size: 64, offset: 320)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{null, !321}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2216, file: !323, line: 130, baseType: !1055, size: 64, offset: 384)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2216, file: !323, line: 131, baseType: !1055, size: 64, offset: 448)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2216, file: !323, line: 132, baseType: !2236, size: 704, offset: 512)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !323, line: 110, size: 704, elements: !2237)
!2237 = !{!2238, !2239, !2243, !2244, !2245}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2236, file: !323, line: 111, baseType: !373, size: 512)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2236, file: !323, line: 112, baseType: !2240, size: 64, offset: 512)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!13, !321}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2236, file: !323, line: 113, baseType: !2230, size: 64, offset: 576)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2236, file: !323, line: 114, baseType: !357, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2236, file: !323, line: 115, baseType: !357, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !322, file: !323, line: 383, baseType: !2247, size: 64, offset: 4672)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !323, line: 140, size: 256, elements: !2249)
!2249 = !{!2250, !2251, !2255, !2259}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2248, file: !323, line: 141, baseType: !321, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2248, file: !323, line: 142, baseType: !2252, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!13, !321, !326}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2248, file: !323, line: 143, baseType: !2256, size: 64, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !321, !326}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2248, file: !323, line: 144, baseType: !2230, size: 64, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !322, file: !323, line: 384, baseType: !2261, size: 64, offset: 4736)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2263)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !323, line: 364, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !322, file: !323, line: 385, baseType: !320, size: 64, offset: 4800)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !322, file: !323, line: 386, baseType: !370, size: 5824, offset: 4864)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !322, file: !323, line: 387, baseType: !7, size: 32, offset: 10688)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !322, file: !323, line: 388, baseType: !7, size: 32, offset: 10720)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !322, file: !323, line: 389, baseType: !381, size: 128, offset: 10752)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !322, file: !323, line: 390, baseType: !719, size: 256, offset: 10880)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !322, file: !323, line: 391, baseType: !2230, size: 64, offset: 11136)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor", file: !2274, line: 223, size: 7936, elements: !2275)
!2274 = !DIFile(filename: "./include/acpi/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5439c2680e180b2809cf646c46c358d2")
!2275 = !{!2276, !2277, !2278, !2281, !2282, !2283, !2284, !2285, !2299, !2333, !2380, !2425, !2435, !2478, !2479, !2480}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2273, file: !2274, line: 224, baseType: !332, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_id", scope: !2273, file: !2274, line: 225, baseType: !326, size: 32, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "phys_id", scope: !2273, file: !2274, line: 226, baseType: !2279, size: 32, offset: 96)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_cpuid_t", file: !2280, line: 287, baseType: !326)
!2280 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2273, file: !2274, line: 227, baseType: !326, size: 32, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "pblk", scope: !2273, file: !2274, line: 228, baseType: !326, size: 32, offset: 160)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "performance_platform_limit", scope: !2273, file: !2274, line: 229, baseType: !13, size: 32, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "throttling_platform_limit", scope: !2273, file: !2274, line: 230, baseType: !13, size: 32, offset: 224)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2273, file: !2274, line: 233, baseType: !2286, size: 16, offset: 256)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_flags", file: !2274, line: 209, size: 16, elements: !2287)
!2287 = !{!2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2286, file: !2274, line: 210, baseType: !422, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2286, file: !2274, line: 211, baseType: !422, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !2286, file: !2274, line: 212, baseType: !422, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2286, file: !2274, line: 213, baseType: !422, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "bm_control", scope: !2286, file: !2274, line: 214, baseType: !422, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "bm_check", scope: !2286, file: !2274, line: 215, baseType: !422, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "has_cst", scope: !2286, file: !2274, line: 216, baseType: !422, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "has_lpi", scope: !2286, file: !2274, line: 217, baseType: !422, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "power_setup_done", scope: !2286, file: !2274, line: 218, baseType: !422, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "bm_rld_set", scope: !2286, file: !2274, line: 219, baseType: !422, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "need_hotplug_init", scope: !2286, file: !2274, line: 220, baseType: !422, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2273, file: !2274, line: 234, baseType: !2300, size: 4736, offset: 320)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_power", file: !2274, line: 92, size: 4736, elements: !2301)
!2301 = !{!2302, !2303, !2332}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2300, file: !2274, line: 93, baseType: !13, size: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, scope: !2300, file: !2274, line: 94, baseType: !2304, size: 4608, offset: 64)
!2304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2300, file: !2274, line: 94, size: 4608, elements: !2305)
!2305 = !{!2306, !2318}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2304, file: !2274, line: 95, baseType: !2307, size: 3328)
!2307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2308, size: 3328, elements: !1660)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_cx", file: !2274, line: 68, size: 416, elements: !2309)
!2309 = !{!2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2308, file: !2274, line: 69, baseType: !422, size: 8)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2308, file: !2274, line: 70, baseType: !422, size: 8, offset: 8)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2308, file: !2274, line: 71, baseType: !326, size: 32, offset: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !2308, file: !2274, line: 72, baseType: !422, size: 8, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2308, file: !2274, line: 73, baseType: !422, size: 8, offset: 72)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2308, file: !2274, line: 74, baseType: !326, size: 32, offset: 96)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "bm_sts_skip", scope: !2308, file: !2274, line: 75, baseType: !422, size: 8, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2308, file: !2274, line: 76, baseType: !1495, size: 256, offset: 136)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "lpi_states", scope: !2304, file: !2274, line: 96, baseType: !2319, size: 4608)
!2319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2320, size: 4608, elements: !1660)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpi_state", file: !2274, line: 79, size: 576, elements: !2321)
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "min_residency", scope: !2320, file: !2274, line: 80, baseType: !326, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "wake_latency", scope: !2320, file: !2274, line: 81, baseType: !326, size: 32, offset: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2320, file: !2274, line: 82, baseType: !326, size: 32, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "arch_flags", scope: !2320, file: !2274, line: 83, baseType: !326, size: 32, offset: 96)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "res_cnt_freq", scope: !2320, file: !2274, line: 84, baseType: !326, size: 32, offset: 128)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "enable_parent_state", scope: !2320, file: !2274, line: 85, baseType: !326, size: 32, offset: 160)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2320, file: !2274, line: 86, baseType: !625, size: 64, offset: 192)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2320, file: !2274, line: 87, baseType: !422, size: 8, offset: 256)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !2320, file: !2274, line: 88, baseType: !422, size: 8, offset: 264)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2320, file: !2274, line: 89, baseType: !1495, size: 256, offset: 272)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "timer_broadcast_on_state", scope: !2300, file: !2274, line: 98, baseType: !13, size: 32, offset: 4672)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2273, file: !2274, line: 235, baseType: !2334, size: 64, offset: 5056)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_performance", file: !2274, line: 130, size: 896, elements: !2336)
!2336 = !{!2337, !2338, !2339, !2349, !2350, !2351, !2361, !2369, !2379}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2335, file: !2274, line: 131, baseType: !7, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !2335, file: !2274, line: 132, baseType: !7, size: 32, offset: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !2335, file: !2274, line: 133, baseType: !2340, size: 120, offset: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pct_register", file: !2274, line: 111, size: 120, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2345, !2346, !2347, !2348}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !2340, file: !2274, line: 112, baseType: !422, size: 8)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2340, file: !2274, line: 113, baseType: !430, size: 16, offset: 8)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !2340, file: !2274, line: 114, baseType: !422, size: 8, offset: 24)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !2340, file: !2274, line: 115, baseType: !422, size: 8, offset: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !2340, file: !2274, line: 116, baseType: !422, size: 8, offset: 40)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2340, file: !2274, line: 117, baseType: !422, size: 8, offset: 48)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2340, file: !2274, line: 118, baseType: !625, size: 64, offset: 56)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !2335, file: !2274, line: 134, baseType: !2340, size: 120, offset: 184)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2335, file: !2274, line: 135, baseType: !7, size: 32, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2335, file: !2274, line: 136, baseType: !2352, size: 64, offset: 384)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_px", file: !2274, line: 121, size: 384, elements: !2354)
!2354 = !{!2355, !2356, !2357, !2358, !2359, !2360}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "core_frequency", scope: !2353, file: !2274, line: 122, baseType: !625, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2353, file: !2274, line: 123, baseType: !625, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !2353, file: !2274, line: 124, baseType: !625, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master_latency", scope: !2353, file: !2274, line: 125, baseType: !625, size: 64, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !2353, file: !2274, line: 126, baseType: !625, size: 64, offset: 256)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2353, file: !2274, line: 127, baseType: !625, size: 64, offset: 320)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !2335, file: !2274, line: 137, baseType: !2362, size: 320, offset: 448)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_psd_package", file: !2274, line: 103, size: 320, elements: !2363)
!2363 = !{!2364, !2365, !2366, !2367, !2368}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !2362, file: !2274, line: 104, baseType: !625, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2362, file: !2274, line: 105, baseType: !625, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2362, file: !2274, line: 106, baseType: !625, size: 64, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !2362, file: !2274, line: 107, baseType: !625, size: 64, offset: 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !2362, file: !2274, line: 108, baseType: !625, size: 64, offset: 256)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !2335, file: !2274, line: 138, baseType: !2370, size: 64, offset: 768)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !2371, line: 913, baseType: !2372)
!2371 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2373, size: 64, elements: !2377)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2371, line: 19, size: 64, elements: !2374)
!2374 = !{!2375}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2373, file: !2371, line: 19, baseType: !2376, size: 64)
!2376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 64, elements: !2377)
!2377 = !{!2378}
!2378 = !DISubrange(count: 1)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !2335, file: !2274, line: 139, baseType: !7, size: 32, offset: 832)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !2273, file: !2274, line: 236, baseType: !2381, size: 1600, offset: 5120)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_throttling", file: !2274, line: 175, size: 1600, elements: !2382)
!2382 = !{!2383, !2384, !2385, !2386, !2387, !2388, !2397, !2405, !2406, !2410, !2414, !2415, !2416, !2417, !2418, !2419}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2381, file: !2274, line: 176, baseType: !7, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !2381, file: !2274, line: 177, baseType: !7, size: 32, offset: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !2381, file: !2274, line: 178, baseType: !2340, size: 120, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !2381, file: !2274, line: 179, baseType: !2340, size: 120, offset: 184)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2381, file: !2274, line: 180, baseType: !7, size: 32, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "states_tss", scope: !2381, file: !2274, line: 181, baseType: !2389, size: 64, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx_tss", file: !2274, line: 162, size: 320, elements: !2391)
!2391 = !{!2392, !2393, !2394, !2395, !2396}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "freqpercentage", scope: !2390, file: !2274, line: 163, baseType: !625, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2390, file: !2274, line: 164, baseType: !625, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !2390, file: !2274, line: 165, baseType: !625, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !2390, file: !2274, line: 166, baseType: !625, size: 64, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2390, file: !2274, line: 167, baseType: !625, size: 64, offset: 256)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !2381, file: !2274, line: 182, baseType: !2398, size: 320, offset: 448)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_tsd_package", file: !2274, line: 144, size: 320, elements: !2399)
!2399 = !{!2400, !2401, !2402, !2403, !2404}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !2398, file: !2274, line: 145, baseType: !625, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2398, file: !2274, line: 146, baseType: !625, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2398, file: !2274, line: 147, baseType: !625, size: 64, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !2398, file: !2274, line: 148, baseType: !625, size: 64, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !2398, file: !2274, line: 149, baseType: !625, size: 64, offset: 256)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !2381, file: !2274, line: 183, baseType: !2370, size: 64, offset: 768)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_get_throttling", scope: !2381, file: !2274, line: 184, baseType: !2407, size: 64, offset: 832)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!13, !2272}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_set_throttling", scope: !2381, file: !2274, line: 185, baseType: !2411, size: 64, offset: 896)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!13, !2272, !13, !357}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2381, file: !2274, line: 188, baseType: !326, size: 32, offset: 960)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "duty_offset", scope: !2381, file: !2274, line: 189, baseType: !422, size: 8, offset: 992)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "duty_width", scope: !2381, file: !2274, line: 190, baseType: !422, size: 8, offset: 1000)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "tsd_valid_flag", scope: !2381, file: !2274, line: 191, baseType: !422, size: 8, offset: 1008)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !2381, file: !2274, line: 192, baseType: !7, size: 32, offset: 1024)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2381, file: !2274, line: 193, baseType: !2420, size: 512, offset: 1056)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2421, size: 512, elements: !1511)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx", file: !2274, line: 169, size: 32, elements: !2422)
!2422 = !{!2423, !2424}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2421, file: !2274, line: 170, baseType: !430, size: 16)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2421, file: !2274, line: 171, baseType: !430, size: 16, offset: 16)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2273, file: !2274, line: 237, baseType: !2426, size: 192, offset: 6720)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_limit", file: !2274, line: 203, size: 192, elements: !2427)
!2427 = !{!2428, !2433, !2434}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2426, file: !2274, line: 204, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_lx", file: !2274, line: 198, size: 64, elements: !2430)
!2430 = !{!2431, !2432}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "px", scope: !2429, file: !2274, line: 199, baseType: !13, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !2429, file: !2274, line: 200, baseType: !13, size: 32, offset: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "thermal", scope: !2426, file: !2274, line: 205, baseType: !2429, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2426, file: !2274, line: 206, baseType: !2429, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2273, file: !2274, line: 238, baseType: !2436, size: 64, offset: 6912)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !2438, line: 98, size: 6848, elements: !2439)
!2438 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0720786b938087c9219e0058826384af")
!2439 = !{!2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2474, !2475, !2476, !2477}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2437, file: !2438, line: 99, baseType: !13, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2437, file: !2438, line: 100, baseType: !462, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "max_state", scope: !2437, file: !2438, line: 101, baseType: !512, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2437, file: !2438, line: 102, baseType: !370, size: 5824, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2437, file: !2438, line: 103, baseType: !1858, size: 64, offset: 6016)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2437, file: !2438, line: 104, baseType: !320, size: 64, offset: 6080)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2437, file: !2438, line: 105, baseType: !320, size: 64, offset: 6144)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2437, file: !2438, line: 106, baseType: !2448, size: 64, offset: 6208)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2450)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !2438, line: 89, size: 384, elements: !2451)
!2451 = !{!2452, !2456, !2457, !2461, !2466, !2470}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2450, file: !2438, line: 90, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!13, !2436, !1468}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2450, file: !2438, line: 91, baseType: !2453, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2450, file: !2438, line: 92, baseType: !2458, size: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!13, !2436, !512}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2450, file: !2438, line: 93, baseType: !2462, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!13, !2436, !2465}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2450, file: !2438, line: 94, baseType: !2467, size: 64, offset: 256)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!13, !2436, !512, !2465}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2450, file: !2438, line: 95, baseType: !2471, size: 64, offset: 320)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!13, !2436, !326, !1468}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !2437, file: !2438, line: 107, baseType: !357, size: 8, offset: 6272)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2437, file: !2438, line: 108, baseType: !719, size: 256, offset: 6336)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2437, file: !2438, line: 109, baseType: !381, size: 128, offset: 6592)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2437, file: !2438, line: 110, baseType: !381, size: 128, offset: 6720)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2273, file: !2274, line: 239, baseType: !1033, size: 64, offset: 6976)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "perflib_req", scope: !2273, file: !2274, line: 240, baseType: !1799, size: 448, offset: 7040)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_req", scope: !2273, file: !2274, line: 241, baseType: !1799, size: 448, offset: 7488)
!2481 = !{!0, !2482, !2487, !2492, !2497, !2499, !2503, !2508, !2510, !2512, !2514, !2519, !2521, !2524, !2526, !2531, !2536, !2541}
!2482 = !DIGlobalVariableExpression(var: !2483, expr: !DIExpression())
!2483 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description226", scope: !2, file: !3, line: 32, type: !2484, isLocal: true, isDefinition: true, align: 8)
!2484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 352, elements: !2485)
!2485 = !{!2486}
!2486 = !DISubrange(count: 44)
!2487 = !DIGlobalVariableExpression(var: !2488, expr: !DIExpression())
!2488 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file227", scope: !2, file: !3, line: 33, type: !2489, isLocal: true, isDefinition: true, align: 8)
!2489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 304, elements: !2490)
!2490 = !{!2491}
!2491 = !DISubrange(count: 38)
!2492 = !DIGlobalVariableExpression(var: !2493, expr: !DIExpression())
!2493 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license228", scope: !2, file: !3, line: 33, type: !2494, isLocal: true, isDefinition: true, align: 8)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 176, elements: !2495)
!2495 = !{!2496}
!2496 = !DISubrange(count: 22)
!2497 = !DIGlobalVariableExpression(var: !2498, expr: !DIExpression())
!2498 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_processor__229_308_acpi_processor_driver_init6230", scope: !2, file: !3, line: 308, type: !320, isLocal: true, isDefinition: true)
!2499 = !DIGlobalVariableExpression(var: !2500, expr: !DIExpression())
!2500 = distinct !DIGlobalVariable(name: "__exitcall_acpi_processor_driver_exit", scope: !2, file: !3, line: 309, type: !2501, isLocal: true, isDefinition: true)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2502, line: 120, baseType: !1481)
!2502 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!2503 = !DIGlobalVariableExpression(var: !2504, expr: !DIExpression())
!2504 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias231", scope: !2, file: !3, line: 311, type: !2505, isLocal: true, isDefinition: true, align: 8)
!2505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 208, elements: !2506)
!2506 = !{!2507}
!2507 = !DISubrange(count: 26)
!2508 = !DIGlobalVariableExpression(var: !2509, expr: !DIExpression())
!2509 = distinct !DIGlobalVariable(name: "acpi_processor_cpufreq_init", scope: !2, file: !3, line: 231, type: !357, isLocal: false, isDefinition: true)
!2510 = !DIGlobalVariableExpression(var: !2511, expr: !DIExpression())
!2511 = distinct !DIGlobalVariable(name: "hp_online", scope: !2, file: !3, line: 258, type: !11, isLocal: true, isDefinition: true)
!2512 = !DIGlobalVariableExpression(var: !2513, expr: !DIExpression())
!2513 = distinct !DIGlobalVariable(name: "acpi_processor_notifier_block", scope: !2, file: !3, line: 249, type: !1757, isLocal: true, isDefinition: true)
!2514 = !DIGlobalVariableExpression(var: !2515, expr: !DIExpression())
!2515 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !2516, isLocal: true, isDefinition: true)
!2516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 80, elements: !2517)
!2517 = !{!2518}
!2518 = !DISubrange(count: 10)
!2519 = !DIGlobalVariableExpression(var: !2520, expr: !DIExpression())
!2520 = distinct !DIGlobalVariable(name: "acpi_processor_driver", scope: !2, file: !3, line: 45, type: !1105, isLocal: true, isDefinition: true)
!2521 = !DIGlobalVariableExpression(var: !2522, expr: !DIExpression())
!2522 = distinct !DIGlobalVariable(name: "processor_device_ids", scope: !2, file: !3, line: 38, type: !2523, isLocal: true, isDefinition: true)
!2523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1506, size: 768, elements: !463)
!2524 = !DIGlobalVariableExpression(var: !2525, expr: !DIExpression())
!2525 = distinct !DIGlobalVariable(scope: null, file: !3, line: 277, type: !2071, isLocal: true, isDefinition: true)
!2526 = !DIGlobalVariableExpression(var: !2527, expr: !DIExpression())
!2527 = distinct !DIGlobalVariable(scope: null, file: !3, line: 282, type: !2528, isLocal: true, isDefinition: true)
!2528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 144, elements: !2529)
!2529 = !{!2530}
!2530 = !DISubrange(count: 18)
!2531 = !DIGlobalVariableExpression(var: !2532, expr: !DIExpression())
!2532 = distinct !DIGlobalVariable(scope: null, file: !3, line: 115, type: !2533, isLocal: true, isDefinition: true)
!2533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 344, elements: !2534)
!2534 = !{!2535}
!2535 = !DISubrange(count: 43)
!2536 = !DIGlobalVariableExpression(var: !2537, expr: !DIExpression())
!2537 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !2538, isLocal: true, isDefinition: true)
!2538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 200, elements: !2539)
!2539 = !{!2540}
!2540 = !DISubrange(count: 25)
!2541 = !DIGlobalVariableExpression(var: !2542, expr: !DIExpression())
!2542 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !1495, isLocal: true, isDefinition: true)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 272, elements: !2544)
!2544 = !{!2545}
!2545 = !DISubrange(count: 34)
!2546 = !{i32 7, !"Dwarf Version", i32 5}
!2547 = !{i32 2, !"Debug Info Version", i32 3}
!2548 = !{i32 1, !"wchar_size", i32 2}
!2549 = !{i32 8, !"cf-protection-branch", i32 1}
!2550 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2551 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2552 = !{i32 1, !"Code Model", i32 2}
!2553 = !{i32 1, !"override-stack-alignment", i32 8}
!2554 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2555 = distinct !DISubprogram(name: "acpi_processor_driver_exit", scope: !3, file: !3, line: 292, type: !1482, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2556 = !DILocation(line: 294, column: 6, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 294, column: 6)
!2558 = !DILocation(line: 294, column: 6, scope: !2555)
!2559 = !DILocation(line: 295, column: 3, scope: !2557)
!2560 = !DILocation(line: 297, column: 6, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 297, column: 6)
!2562 = !{i8 0, i8 2}
!2563 = !DILocation(line: 297, column: 6, scope: !2555)
!2564 = !DILocation(line: 298, column: 3, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 297, column: 35)
!2566 = !DILocation(line: 300, column: 31, scope: !2565)
!2567 = !DILocation(line: 301, column: 2, scope: !2565)
!2568 = !DILocation(line: 303, column: 29, scope: !2555)
!2569 = !DILocation(line: 303, column: 2, scope: !2555)
!2570 = !DILocation(line: 304, column: 2, scope: !2555)
!2571 = !DILocation(line: 305, column: 2, scope: !2555)
!2572 = !DILocation(line: 306, column: 1, scope: !2555)
!2573 = !DISubprogram(name: "cpufreq_unregister_notifier", scope: !301, file: !301, line: 511, type: !2574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!13, !1756, !7}
!2576 = distinct !DISubprogram(name: "cpuhp_remove_state_nocalls", scope: !12, file: !12, line: 454, type: !2577, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{null, !11}
!2579 = !{!2580}
!2580 = !DILocalVariable(name: "state", arg: 1, scope: !2576, file: !12, line: 454, type: !11)
!2581 = !DILocation(line: 454, column: 64, scope: !2576)
!2582 = !DILocation(line: 456, column: 23, scope: !2576)
!2583 = !DILocation(line: 456, column: 2, scope: !2576)
!2584 = !DILocation(line: 457, column: 1, scope: !2576)
!2585 = !DISubprogram(name: "driver_unregister", scope: !295, file: !295, line: 126, type: !2586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{null, !1104}
!2588 = distinct !DISubprogram(name: "__initstub__kmod_processor__229_308_acpi_processor_driver_init6", scope: !3, file: !3, line: 308, type: !1243, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2589 = !DILocation(line: 308, column: 1, scope: !2588)
!2590 = distinct !DISubprogram(name: "acpi_processor_driver_init", scope: !3, file: !3, line: 259, type: !1243, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2591)
!2591 = !{!2592, !2593}
!2592 = !DILocalVariable(name: "result", scope: !2590, file: !3, line: 261, type: !13)
!2593 = !DILabel(scope: !2590, name: "err", file: !3, line: 287)
!2594 = !DILocation(line: 261, column: 2, scope: !2590)
!2595 = !DILocation(line: 261, column: 6, scope: !2590)
!2596 = !DILocation(line: 263, column: 6, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 263, column: 6)
!2598 = !DILocation(line: 263, column: 6, scope: !2590)
!2599 = !DILocation(line: 264, column: 3, scope: !2597)
!2600 = !DILocation(line: 266, column: 7, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 266, column: 6)
!2602 = !DILocation(line: 266, column: 6, scope: !2590)
!2603 = !DILocation(line: 268, column: 31, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 267, column: 38)
!2605 = !DILocation(line: 269, column: 3, scope: !2604)
!2606 = !DILocation(line: 270, column: 2, scope: !2604)
!2607 = !DILocation(line: 272, column: 11, scope: !2590)
!2608 = !DILocation(line: 272, column: 9, scope: !2590)
!2609 = !DILocation(line: 273, column: 6, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 273, column: 6)
!2611 = !DILocation(line: 273, column: 13, scope: !2610)
!2612 = !DILocation(line: 273, column: 6, scope: !2590)
!2613 = !DILocation(line: 274, column: 10, scope: !2610)
!2614 = !DILocation(line: 274, column: 3, scope: !2610)
!2615 = !DILocation(line: 276, column: 11, scope: !2590)
!2616 = !DILocation(line: 276, column: 9, scope: !2590)
!2617 = !DILocation(line: 279, column: 6, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 279, column: 6)
!2619 = !DILocation(line: 279, column: 13, scope: !2618)
!2620 = !DILocation(line: 279, column: 6, scope: !2590)
!2621 = !DILocation(line: 280, column: 3, scope: !2618)
!2622 = !DILocation(line: 281, column: 14, scope: !2590)
!2623 = !DILocation(line: 281, column: 12, scope: !2590)
!2624 = !DILocation(line: 282, column: 2, scope: !2590)
!2625 = !DILocation(line: 285, column: 2, scope: !2590)
!2626 = !DILocation(line: 286, column: 2, scope: !2590)
!2627 = !DILocation(line: 287, column: 1, scope: !2590)
!2628 = !DILocation(line: 288, column: 2, scope: !2590)
!2629 = !DILocation(line: 289, column: 9, scope: !2590)
!2630 = !DILocation(line: 289, column: 2, scope: !2590)
!2631 = !DILocation(line: 290, column: 1, scope: !2590)
!2632 = distinct !DISubprogram(name: "acpi_processor_notifier", scope: !3, file: !3, line: 233, type: !1762, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2633)
!2633 = !{!2634, !2635, !2636, !2637}
!2634 = !DILocalVariable(name: "nb", arg: 1, scope: !2632, file: !3, line: 233, type: !1756)
!2635 = !DILocalVariable(name: "event", arg: 2, scope: !2632, file: !3, line: 234, type: !512)
!2636 = !DILocalVariable(name: "data", arg: 3, scope: !2632, file: !3, line: 234, type: !320)
!2637 = !DILocalVariable(name: "policy", scope: !2632, file: !3, line: 236, type: !2638)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_policy", file: !301, line: 55, size: 5120, elements: !2640)
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646, !2650, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2690, !2691, !2692, !2693, !2694, !2696, !2697, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !3778, !3781, !3782, !3783, !3784}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !2639, file: !301, line: 57, baseType: !2370, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "related_cpus", scope: !2639, file: !301, line: 58, baseType: !2370, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "real_cpus", scope: !2639, file: !301, line: 59, baseType: !2370, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !2639, file: !301, line: 61, baseType: !7, size: 32, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2639, file: !301, line: 63, baseType: !7, size: 32, offset: 224)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !2639, file: !301, line: 65, baseType: !2647, size: 64, offset: 256)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !2649, line: 17, flags: DIFlagFwdDecl)
!2649 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1429a43eaf99e9312dde348d6bc82f22")
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "cpuinfo", scope: !2639, file: !301, line: 66, baseType: !2651, size: 96, offset: 320)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_cpuinfo", file: !301, line: 47, size: 96, elements: !2652)
!2652 = !{!2653, !2654, !2655}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !2651, file: !301, line: 48, baseType: !7, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !2651, file: !301, line: 49, baseType: !7, size: 32, offset: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !2651, file: !301, line: 52, baseType: !7, size: 32, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2639, file: !301, line: 68, baseType: !7, size: 32, offset: 416)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2639, file: !301, line: 69, baseType: !7, size: 32, offset: 448)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !2639, file: !301, line: 70, baseType: !7, size: 32, offset: 480)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_freq", scope: !2639, file: !301, line: 72, baseType: !7, size: 32, offset: 512)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2639, file: !301, line: 74, baseType: !7, size: 32, offset: 544)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "last_policy", scope: !2639, file: !301, line: 75, baseType: !7, size: 32, offset: 576)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !2639, file: !301, line: 76, baseType: !2663, size: 64, offset: 640)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_governor", file: !301, line: 577, size: 832, elements: !2665)
!2665 = !{!2666, !2668, !2672, !2676, !2677, !2678, !2679, !2683, !2687, !2688, !2689}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2664, file: !301, line: 578, baseType: !2667, size: 128)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 128, elements: !1511)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2664, file: !301, line: 579, baseType: !2669, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!13, !2638}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2664, file: !301, line: 580, baseType: !2673, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{null, !2638}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2664, file: !301, line: 581, baseType: !2669, size: 64, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2664, file: !301, line: 582, baseType: !2673, size: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2664, file: !301, line: 583, baseType: !2673, size: 64, offset: 384)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "show_setspeed", scope: !2664, file: !301, line: 584, baseType: !2680, size: 64, offset: 448)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!494, !2638, !462}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "store_setspeed", scope: !2664, file: !301, line: 586, baseType: !2684, size: 64, offset: 512)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!13, !2638, !7}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2664, file: !301, line: 588, baseType: !381, size: 128, offset: 576)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2664, file: !301, line: 589, baseType: !1110, size: 64, offset: 704)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2664, file: !301, line: 590, baseType: !422, size: 8, offset: 768)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !2639, file: !301, line: 77, baseType: !320, size: 64, offset: 704)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "last_governor", scope: !2639, file: !301, line: 78, baseType: !2667, size: 128, offset: 768)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !2639, file: !301, line: 80, baseType: !781, size: 256, offset: 896)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "constraints", scope: !2639, file: !301, line: 83, baseType: !1768, size: 1408, offset: 1152)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_req", scope: !2639, file: !301, line: 84, baseType: !2695, size: 64, offset: 2560)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_req", scope: !2639, file: !301, line: 85, baseType: !2695, size: 64, offset: 2624)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table", scope: !2639, file: !301, line: 87, baseType: !2698, size: 64, offset: 2688)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_frequency_table", file: !301, line: 690, size: 96, elements: !2700)
!2700 = !{!2701, !2702, !2703}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2699, file: !301, line: 691, baseType: !7, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2699, file: !301, line: 692, baseType: !7, size: 32, offset: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2699, file: !301, line: 693, baseType: !7, size: 32, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table_sorted", scope: !2639, file: !301, line: 88, baseType: !300, size: 32, offset: 2752)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "policy_list", scope: !2639, file: !301, line: 90, baseType: !381, size: 128, offset: 2816)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2639, file: !301, line: 91, baseType: !373, size: 512, offset: 2944)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_unregister", scope: !2639, file: !301, line: 92, baseType: !1130, size: 256, offset: 3456)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !2639, file: !301, line: 102, baseType: !642, size: 320, offset: 3712)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_possible", scope: !2639, file: !301, line: 112, baseType: !357, size: 8, offset: 4032)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_enabled", scope: !2639, file: !301, line: 113, baseType: !357, size: 8, offset: 4040)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "strict_target", scope: !2639, file: !301, line: 119, baseType: !357, size: 8, offset: 4048)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "efficiencies_available", scope: !2639, file: !301, line: 126, baseType: !357, size: 8, offset: 4056)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "transition_delay_us", scope: !2639, file: !301, line: 133, baseType: !7, size: 32, offset: 4064)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "dvfs_possible_from_any_cpu", scope: !2639, file: !301, line: 142, baseType: !357, size: 8, offset: 4096)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "boost_enabled", scope: !2639, file: !301, line: 145, baseType: !357, size: 8, offset: 4104)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "cached_target_freq", scope: !2639, file: !301, line: 148, baseType: !7, size: 32, offset: 4128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "cached_resolved_idx", scope: !2639, file: !301, line: 149, baseType: !7, size: 32, offset: 4160)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "transition_ongoing", scope: !2639, file: !301, line: 152, baseType: !357, size: 8, offset: 4192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "transition_lock", scope: !2639, file: !301, line: 153, baseType: !394, size: 32, offset: 4224)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "transition_wait", scope: !2639, file: !301, line: 154, baseType: !1692, size: 192, offset: 4288)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "transition_task", scope: !2639, file: !301, line: 155, baseType: !2722, size: 64, offset: 4480)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !953, line: 746, size: 58368, elements: !2724)
!2724 = !{!2725, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2810, !2821, !2841, !2845, !2848, !2879, !2880, !2881, !2882, !2886, !2888, !2889, !2890, !2891, !2892, !2893, !2904, !2905, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !3004, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3040, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3075, !3081, !3086, !3087, !3088, !3091, !3092, !3095, !3102, !3107, !3110, !3113, !3116, !3120, !3123, !3126, !3132, !3133, !3134, !3140, !3141, !3142, !3143, !3144, !3147, !3148, !3149, !3158, !3166, !3167, !3168, !3169, !3170, !3175, !3176, !3177, !3180, !3181, !3184, !3187, !3190, !3193, !3196, !3197, !3282, !3293, !3294, !3295, !3296, !3302, !3307, !3308, !3309, !3312, !3313, !3316, !3319, !3320, !3323, !3324, !3325, !3328, !3329, !3330, !3331, !3332, !3333, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3365, !3368, !3434, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3446, !3518, !3520, !3521, !3522, !3523, !3524, !3525, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3555, !3556, !3557}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2723, file: !953, line: 752, baseType: !2726, size: 192)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2727, line: 56, size: 192, elements: !2728)
!2727 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2728 = !{!2729, !2730, !2731, !2732}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2726, file: !2727, line: 57, baseType: !512, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2726, file: !2727, line: 58, baseType: !512, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2726, file: !2727, line: 59, baseType: !326, size: 32, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2726, file: !2727, line: 61, baseType: !326, size: 32, offset: 160)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2723, file: !953, line: 754, baseType: !7, size: 32, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2723, file: !953, line: 767, baseType: !320, size: 64, offset: 256)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2723, file: !953, line: 768, baseType: !1022, size: 32, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2723, file: !953, line: 770, baseType: !7, size: 32, offset: 352)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2723, file: !953, line: 771, baseType: !7, size: 32, offset: 384)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2723, file: !953, line: 774, baseType: !13, size: 32, offset: 416)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2723, file: !953, line: 775, baseType: !2740, size: 128, offset: 448)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2741, line: 58, size: 128, elements: !2742)
!2741 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2742 = !{!2743, !2749, !2754, !2755}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2740, file: !2741, line: 59, baseType: !2744, size: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !2745, line: 60, size: 64, elements: !2746)
!2745 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!2746 = !{!2747}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2744, file: !2745, line: 61, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, scope: !2740, file: !2741, line: 60, baseType: !2750, size: 32, offset: 64)
!2750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2740, file: !2741, line: 60, size: 32, elements: !2751)
!2751 = !{!2752, !2753}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2750, file: !2741, line: 61, baseType: !7, size: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2750, file: !2741, line: 62, baseType: !414, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2740, file: !2741, line: 65, baseType: !430, size: 16, offset: 96)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2740, file: !2741, line: 65, baseType: !430, size: 16, offset: 112)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2723, file: !953, line: 776, baseType: !7, size: 32, offset: 576)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2723, file: !953, line: 777, baseType: !512, size: 64, offset: 640)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2723, file: !953, line: 778, baseType: !2722, size: 64, offset: 704)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2723, file: !953, line: 787, baseType: !13, size: 32, offset: 768)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2723, file: !953, line: 788, baseType: !13, size: 32, offset: 800)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2723, file: !953, line: 790, baseType: !13, size: 32, offset: 832)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2723, file: !953, line: 792, baseType: !13, size: 32, offset: 864)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2723, file: !953, line: 793, baseType: !13, size: 32, offset: 896)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2723, file: !953, line: 794, baseType: !13, size: 32, offset: 928)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2723, file: !953, line: 795, baseType: !7, size: 32, offset: 960)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2723, file: !953, line: 797, baseType: !2767, size: 2048, offset: 1024)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !953, line: 551, size: 2048, elements: !2768)
!2768 = !{!2769, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2789, !2792, !2793, !2794}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2767, file: !953, line: 553, baseType: !2770, size: 128)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !953, line: 411, size: 128, elements: !2771)
!2771 = !{!2772, !2773}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2770, file: !953, line: 412, baseType: !512, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2770, file: !953, line: 413, baseType: !326, size: 32, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2767, file: !953, line: 554, baseType: !820, size: 192, align: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2767, file: !953, line: 555, baseType: !625, size: 64, offset: 320)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2767, file: !953, line: 556, baseType: !625, size: 64, offset: 384)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2767, file: !953, line: 558, baseType: !381, size: 128, offset: 448)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2767, file: !953, line: 559, baseType: !7, size: 32, offset: 576)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2767, file: !953, line: 561, baseType: !625, size: 64, offset: 640)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2767, file: !953, line: 562, baseType: !625, size: 64, offset: 704)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2767, file: !953, line: 563, baseType: !625, size: 64, offset: 768)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2767, file: !953, line: 564, baseType: !625, size: 64, offset: 832)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2767, file: !953, line: 565, baseType: !637, size: 64, offset: 896)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2767, file: !953, line: 566, baseType: !625, size: 64, offset: 960)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2767, file: !953, line: 568, baseType: !625, size: 64, offset: 1024)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2767, file: !953, line: 571, baseType: !13, size: 32, offset: 1088)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2767, file: !953, line: 572, baseType: !2788, size: 64, offset: 1152)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2767, file: !953, line: 574, baseType: !2790, size: 64, offset: 1216)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !953, line: 49, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2767, file: !953, line: 576, baseType: !2790, size: 64, offset: 1280)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2767, file: !953, line: 578, baseType: !512, size: 64, offset: 1344)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2767, file: !953, line: 588, baseType: !2795, size: 512, align: 512, offset: 1536)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !953, line: 497, size: 512, align: 512, elements: !2796)
!2796 = !{!2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2795, file: !953, line: 498, baseType: !625, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2795, file: !953, line: 499, baseType: !625, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2795, file: !953, line: 500, baseType: !625, size: 64, offset: 128)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2795, file: !953, line: 501, baseType: !326, size: 32, offset: 192)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2795, file: !953, line: 502, baseType: !326, size: 32, offset: 224)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2795, file: !953, line: 503, baseType: !512, size: 64, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2795, file: !953, line: 504, baseType: !512, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2795, file: !953, line: 505, baseType: !512, size: 64, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2795, file: !953, line: 506, baseType: !2806, size: 64, align: 64, offset: 448)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !953, line: 445, size: 64, align: 64, elements: !2807)
!2807 = !{!2808, !2809}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2806, file: !953, line: 446, baseType: !7, size: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2806, file: !953, line: 447, baseType: !7, size: 32, offset: 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2723, file: !953, line: 798, baseType: !2811, size: 384, offset: 3072)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !953, line: 592, size: 384, elements: !2812)
!2812 = !{!2813, !2814, !2815, !2816, !2817, !2818, !2819}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2811, file: !953, line: 593, baseType: !381, size: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2811, file: !953, line: 594, baseType: !512, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2811, file: !953, line: 595, baseType: !512, size: 64, offset: 192)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2811, file: !953, line: 596, baseType: !7, size: 32, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2811, file: !953, line: 597, baseType: !432, size: 16, offset: 288)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2811, file: !953, line: 598, baseType: !432, size: 16, offset: 304)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2811, file: !953, line: 600, baseType: !2820, size: 64, offset: 320)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2723, file: !953, line: 799, baseType: !2822, size: 1792, offset: 3456)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !953, line: 610, size: 1792, elements: !2823)
!2823 = !{!2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2822, file: !953, line: 611, baseType: !820, size: 192, align: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2822, file: !953, line: 618, baseType: !625, size: 64, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2822, file: !953, line: 619, baseType: !625, size: 64, offset: 256)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2822, file: !953, line: 620, baseType: !625, size: 64, offset: 320)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2822, file: !953, line: 621, baseType: !625, size: 64, offset: 384)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2822, file: !953, line: 622, baseType: !625, size: 64, offset: 448)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2822, file: !953, line: 629, baseType: !637, size: 64, offset: 512)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2822, file: !953, line: 630, baseType: !625, size: 64, offset: 576)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2822, file: !953, line: 631, baseType: !7, size: 32, offset: 640)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2822, file: !953, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2822, file: !953, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2822, file: !953, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2822, file: !953, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2822, file: !953, line: 662, baseType: !1619, size: 512, offset: 704)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2822, file: !953, line: 671, baseType: !1619, size: 512, offset: 1216)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2822, file: !953, line: 679, baseType: !2840, size: 64, offset: 1728)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2723, file: !953, line: 800, baseType: !2842, size: 64, offset: 5248)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2844)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !953, line: 800, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2723, file: !953, line: 809, baseType: !2846, size: 64, offset: 5312)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !953, line: 70, flags: DIFlagFwdDecl)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2723, file: !953, line: 825, baseType: !2849, size: 2048, align: 512, offset: 5632)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !953, line: 509, size: 2048, align: 512, elements: !2850)
!2850 = !{!2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2849, file: !953, line: 511, baseType: !625, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2849, file: !953, line: 512, baseType: !625, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2849, file: !953, line: 513, baseType: !625, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2849, file: !953, line: 514, baseType: !625, size: 64, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2849, file: !953, line: 515, baseType: !625, size: 64, offset: 256)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2849, file: !953, line: 516, baseType: !625, size: 64, offset: 320)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2849, file: !953, line: 518, baseType: !625, size: 64, offset: 384)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2849, file: !953, line: 519, baseType: !625, size: 64, offset: 448)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2849, file: !953, line: 520, baseType: !637, size: 64, offset: 512)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2849, file: !953, line: 522, baseType: !625, size: 64, offset: 576)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2849, file: !953, line: 523, baseType: !625, size: 64, offset: 640)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2849, file: !953, line: 524, baseType: !637, size: 64, offset: 704)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2849, file: !953, line: 526, baseType: !637, size: 64, offset: 768)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2849, file: !953, line: 527, baseType: !625, size: 64, offset: 832)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2849, file: !953, line: 529, baseType: !625, size: 64, offset: 896)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2849, file: !953, line: 530, baseType: !625, size: 64, offset: 960)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2849, file: !953, line: 531, baseType: !625, size: 64, offset: 1024)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2849, file: !953, line: 532, baseType: !625, size: 64, offset: 1088)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2849, file: !953, line: 533, baseType: !625, size: 64, offset: 1152)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2849, file: !953, line: 535, baseType: !625, size: 64, offset: 1216)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2849, file: !953, line: 536, baseType: !625, size: 64, offset: 1280)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2849, file: !953, line: 537, baseType: !625, size: 64, offset: 1344)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2849, file: !953, line: 538, baseType: !625, size: 64, offset: 1408)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2849, file: !953, line: 539, baseType: !625, size: 64, offset: 1472)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2849, file: !953, line: 540, baseType: !625, size: 64, offset: 1536)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2849, file: !953, line: 541, baseType: !625, size: 64, offset: 1600)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2849, file: !953, line: 542, baseType: !625, size: 64, offset: 1664)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2849, file: !953, line: 543, baseType: !625, size: 64, offset: 1728)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2723, file: !953, line: 833, baseType: !7, size: 32, offset: 7680)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2723, file: !953, line: 836, baseType: !7, size: 32, offset: 7712)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2723, file: !953, line: 837, baseType: !13, size: 32, offset: 7744)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2723, file: !953, line: 838, baseType: !2883, size: 64, offset: 7808)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2885)
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2371, line: 19, baseType: !2373)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2723, file: !953, line: 839, baseType: !2887, size: 64, offset: 7872)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2723, file: !953, line: 840, baseType: !2885, size: 64, offset: 7936)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2723, file: !953, line: 841, baseType: !320, size: 64, offset: 8000)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2723, file: !953, line: 843, baseType: !432, size: 16, offset: 8064)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2723, file: !953, line: 845, baseType: !432, size: 16, offset: 8080)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2723, file: !953, line: 848, baseType: !13, size: 32, offset: 8096)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2723, file: !953, line: 849, baseType: !2894, size: 32, offset: 8128)
!2894 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !953, line: 718, size: 32, elements: !2895)
!2895 = !{!2896, !2903}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2894, file: !953, line: 724, baseType: !2897, size: 32)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !953, line: 719, size: 32, elements: !2898)
!2898 = !{!2899, !2900, !2901, !2902}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2897, file: !953, line: 720, baseType: !422, size: 8)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2897, file: !953, line: 721, baseType: !422, size: 8, offset: 8)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2897, file: !953, line: 722, baseType: !422, size: 8, offset: 16)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2897, file: !953, line: 723, baseType: !422, size: 8, offset: 24)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2894, file: !953, line: 725, baseType: !326, size: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2723, file: !953, line: 850, baseType: !381, size: 128, offset: 8192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2723, file: !953, line: 851, baseType: !2906, size: 64, offset: 8320)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !953, line: 60, flags: DIFlagFwdDecl)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2723, file: !953, line: 855, baseType: !512, size: 64, offset: 8384)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2723, file: !953, line: 856, baseType: !422, size: 8, offset: 8448)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2723, file: !953, line: 857, baseType: !422, size: 8, offset: 8456)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2723, file: !953, line: 858, baseType: !13, size: 32, offset: 8480)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2723, file: !953, line: 859, baseType: !381, size: 128, offset: 8512)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2723, file: !953, line: 860, baseType: !13, size: 32, offset: 8640)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2723, file: !953, line: 861, baseType: !381, size: 128, offset: 8704)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2723, file: !953, line: 873, baseType: !2916, size: 256, offset: 8832)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !953, line: 376, size: 256, elements: !2917)
!2917 = !{!2918, !2919, !2920, !2921}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2916, file: !953, line: 381, baseType: !512, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2916, file: !953, line: 384, baseType: !627, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2916, file: !953, line: 389, baseType: !627, size: 64, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2916, file: !953, line: 392, baseType: !627, size: 64, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2723, file: !953, line: 875, baseType: !381, size: 128, offset: 9088)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2723, file: !953, line: 877, baseType: !1788, size: 320, offset: 9216)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2723, file: !953, line: 878, baseType: !820, size: 192, align: 64, offset: 9536)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2723, file: !953, line: 881, baseType: !577, size: 64, offset: 9728)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2723, file: !953, line: 882, baseType: !577, size: 64, offset: 9792)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2723, file: !953, line: 884, baseType: !13, size: 32, offset: 9856)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2723, file: !953, line: 885, baseType: !13, size: 32, offset: 9888)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2723, file: !953, line: 886, baseType: !13, size: 32, offset: 9920)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2723, file: !953, line: 888, baseType: !13, size: 32, offset: 9952)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2723, file: !953, line: 890, baseType: !512, size: 64, offset: 9984)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2723, file: !953, line: 893, baseType: !7, size: 32, offset: 10048)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2723, file: !953, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2723, file: !953, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2723, file: !953, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2723, file: !953, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2723, file: !953, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2723, file: !953, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2723, file: !953, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2723, file: !953, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2723, file: !953, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2723, file: !953, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2723, file: !953, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2723, file: !953, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2723, file: !953, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2723, file: !953, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2723, file: !953, line: 969, baseType: !512, size: 64, offset: 10176)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2723, file: !953, line: 971, baseType: !2949, size: 448, offset: 10240)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !307, line: 25, size: 448, elements: !2950)
!2950 = !{!2951, !2952, !2957}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2949, file: !307, line: 26, baseType: !512, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2949, file: !307, line: 27, baseType: !2953, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!498, !2956}
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, scope: !2949, file: !307, line: 28, baseType: !2958, size: 320, offset: 128)
!2958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2949, file: !307, line: 28, size: 320, elements: !2959)
!2959 = !{!2960, !2969, !2994}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2958, file: !307, line: 37, baseType: !2961, size: 320)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2958, file: !307, line: 30, size: 320, elements: !2962)
!2962 = !{!2963, !2964, !2965, !2966, !2967, !2968}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2961, file: !307, line: 31, baseType: !2465, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2961, file: !307, line: 32, baseType: !326, size: 32, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2961, file: !307, line: 33, baseType: !326, size: 32, offset: 96)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2961, file: !307, line: 34, baseType: !326, size: 32, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2961, file: !307, line: 35, baseType: !625, size: 64, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2961, file: !307, line: 36, baseType: !2465, size: 64, offset: 256)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2958, file: !307, line: 47, baseType: !2970, size: 192)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2958, file: !307, line: 39, size: 192, elements: !2971)
!2971 = !{!2972, !2973, !2974, !2993}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2970, file: !307, line: 40, baseType: !1664, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2970, file: !307, line: 41, baseType: !306, size: 32, offset: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, scope: !2970, file: !307, line: 42, baseType: !2975, size: 64, offset: 64)
!2975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2970, file: !307, line: 42, size: 64, elements: !2976)
!2976 = !{!2977, !2985}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2975, file: !307, line: 43, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2980, line: 7, size: 128, elements: !2981)
!2980 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2981 = !{!2982, !2984}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2979, file: !2980, line: 8, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !496, line: 93, baseType: !550)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2979, file: !2980, line: 9, baseType: !550, size: 64, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2975, file: !307, line: 44, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2988, line: 7, size: 64, elements: !2989)
!2988 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2989 = !{!2990, !2992}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2987, file: !2988, line: 8, baseType: !2991, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2988, line: 5, baseType: !698)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2987, file: !2988, line: 9, baseType: !698, size: 32, offset: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2970, file: !307, line: 46, baseType: !625, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2958, file: !307, line: 55, baseType: !2995, size: 256)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2958, file: !307, line: 49, size: 256, elements: !2996)
!2996 = !{!2997, !3000, !3001, !3002, !3003}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2995, file: !307, line: 50, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !307, line: 14, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2995, file: !307, line: 51, baseType: !13, size: 32, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2995, file: !307, line: 52, baseType: !13, size: 32, offset: 96)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2995, file: !307, line: 53, baseType: !512, size: 64, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2995, file: !307, line: 54, baseType: !512, size: 64, offset: 192)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2723, file: !953, line: 973, baseType: !3005, size: 32, offset: 10688)
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !358, line: 27, baseType: !3006)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !496, line: 28, baseType: !13)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2723, file: !953, line: 974, baseType: !3005, size: 32, offset: 10720)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2723, file: !953, line: 978, baseType: !512, size: 64, offset: 10752)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2723, file: !953, line: 987, baseType: !2722, size: 64, offset: 10816)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2723, file: !953, line: 990, baseType: !2722, size: 64, offset: 10880)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2723, file: !953, line: 995, baseType: !381, size: 128, offset: 10944)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2723, file: !953, line: 996, baseType: !381, size: 128, offset: 11072)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2723, file: !953, line: 997, baseType: !2722, size: 64, offset: 11200)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2723, file: !953, line: 1005, baseType: !381, size: 128, offset: 11264)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2723, file: !953, line: 1006, baseType: !381, size: 128, offset: 11392)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2723, file: !953, line: 1009, baseType: !3017, size: 64, offset: 11520)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !3019, line: 59, size: 768, elements: !3020)
!3019 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!3020 = !{!3021, !3022, !3023, !3024, !3029, !3030, !3031, !3032}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3018, file: !3019, line: 61, baseType: !1022, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3018, file: !3019, line: 62, baseType: !7, size: 32, offset: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3018, file: !3019, line: 63, baseType: !394, size: 32, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3018, file: !3019, line: 65, baseType: !3025, size: 256, offset: 128)
!3025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3026, size: 256, elements: !700)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !358, line: 194, size: 64, elements: !3027)
!3027 = !{!3028}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3026, file: !358, line: 195, baseType: !1378, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !3018, file: !3019, line: 66, baseType: !3026, size: 64, offset: 384)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !3018, file: !3019, line: 68, baseType: !1692, size: 192, offset: 448)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3018, file: !3019, line: 69, baseType: !568, size: 128, align: 64, offset: 640)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !3018, file: !3019, line: 70, baseType: !3033, offset: 768)
!3033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3034, elements: !794)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !3019, line: 54, size: 128, elements: !3035)
!3035 = !{!3036, !3037}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3034, file: !3019, line: 55, baseType: !13, size: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3034, file: !3019, line: 56, baseType: !3038, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !3019, line: 56, flags: DIFlagFwdDecl)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2723, file: !953, line: 1010, baseType: !3041, size: 512, offset: 11584)
!3041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1375, size: 512, elements: !700)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2723, file: !953, line: 1011, baseType: !381, size: 128, offset: 12096)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2723, file: !953, line: 1012, baseType: !381, size: 128, offset: 12224)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2723, file: !953, line: 1014, baseType: !1129, size: 64, offset: 12352)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2723, file: !953, line: 1017, baseType: !1271, size: 64, offset: 12416)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2723, file: !953, line: 1020, baseType: !1271, size: 64, offset: 12480)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2723, file: !953, line: 1023, baseType: !320, size: 64, offset: 12544)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2723, file: !953, line: 1025, baseType: !625, size: 64, offset: 12608)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2723, file: !953, line: 1026, baseType: !625, size: 64, offset: 12672)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2723, file: !953, line: 1031, baseType: !625, size: 64, offset: 12736)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2723, file: !953, line: 1032, baseType: !3052, size: 192, offset: 12800)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !953, line: 324, size: 192, elements: !3053)
!3053 = !{!3054, !3055, !3056}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3052, file: !953, line: 326, baseType: !625, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3052, file: !953, line: 327, baseType: !625, size: 64, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3052, file: !953, line: 328, baseType: !653, size: 32, offset: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2723, file: !953, line: 1041, baseType: !512, size: 64, offset: 12992)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2723, file: !953, line: 1042, baseType: !512, size: 64, offset: 13056)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2723, file: !953, line: 1045, baseType: !625, size: 64, offset: 13120)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2723, file: !953, line: 1048, baseType: !625, size: 64, offset: 13184)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2723, file: !953, line: 1051, baseType: !512, size: 64, offset: 13248)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2723, file: !953, line: 1052, baseType: !512, size: 64, offset: 13312)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2723, file: !953, line: 1055, baseType: !3064, size: 640, offset: 13376)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3065, line: 132, size: 640, elements: !3066)
!3065 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3066 = !{!3067, !3073, !3074}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3064, file: !3065, line: 133, baseType: !3068, size: 576)
!3068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3069, size: 576, elements: !463)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3065, line: 117, size: 192, elements: !3070)
!3070 = !{!3071, !3072}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3069, file: !3065, line: 118, baseType: !625, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3069, file: !3065, line: 119, baseType: !1673, size: 128, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3064, file: !3065, line: 134, baseType: !7, size: 32, offset: 576)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3064, file: !3065, line: 135, baseType: !7, size: 32, offset: 608)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2723, file: !953, line: 1058, baseType: !3076, size: 448, offset: 14016)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3065, line: 144, size: 448, elements: !3077)
!3077 = !{!3078, !3079, !3080}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3076, file: !3065, line: 145, baseType: !568, size: 128, align: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3076, file: !3065, line: 146, baseType: !719, size: 256, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3076, file: !3065, line: 147, baseType: !7, size: 32, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2723, file: !953, line: 1064, baseType: !3082, size: 64, offset: 14464)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3084)
!3084 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !3085, line: 11, flags: DIFlagFwdDecl)
!3085 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9ecec28201063d5e3b04c190bc92649")
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2723, file: !953, line: 1067, baseType: !3082, size: 64, offset: 14528)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2723, file: !953, line: 1070, baseType: !3082, size: 64, offset: 14592)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2723, file: !953, line: 1074, baseType: !3089, size: 64, offset: 14656)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !953, line: 1074, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2723, file: !953, line: 1084, baseType: !2667, size: 128, offset: 14720)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2723, file: !953, line: 1086, baseType: !3093, size: 64, offset: 14848)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !953, line: 55, flags: DIFlagFwdDecl)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2723, file: !953, line: 1089, baseType: !3096, size: 64, offset: 14912)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3097, line: 12, size: 64, elements: !3098)
!3097 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3098 = !{!3099}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3096, file: !3097, line: 13, baseType: !3100, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3097, line: 8, flags: DIFlagFwdDecl)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2723, file: !953, line: 1090, baseType: !3103, size: 128, offset: 14976)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3104, line: 13, size: 128, elements: !3105)
!3104 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3105 = !{!3106}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3103, file: !3104, line: 14, baseType: !381, size: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2723, file: !953, line: 1097, baseType: !3108, size: 64, offset: 15104)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !953, line: 50, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2723, file: !953, line: 1100, baseType: !3111, size: 64, offset: 15168)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !953, line: 1100, flags: DIFlagFwdDecl)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2723, file: !953, line: 1103, baseType: !3114, size: 64, offset: 15232)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !953, line: 53, flags: DIFlagFwdDecl)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2723, file: !953, line: 1107, baseType: !3117, size: 64, offset: 15296)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3119, line: 35, flags: DIFlagFwdDecl)
!3119 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2723, file: !953, line: 1110, baseType: !3121, size: 64, offset: 15360)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3065, line: 236, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2723, file: !953, line: 1111, baseType: !3124, size: 64, offset: 15424)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !953, line: 67, flags: DIFlagFwdDecl)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2723, file: !953, line: 1112, baseType: !3127, size: 64, offset: 15488)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3128, line: 25, baseType: !3129)
!3128 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3128, line: 23, size: 64, elements: !3130)
!3130 = !{!3131}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3129, file: !3128, line: 24, baseType: !2376, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2723, file: !953, line: 1113, baseType: !3127, size: 64, offset: 15552)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2723, file: !953, line: 1115, baseType: !3127, size: 64, offset: 15616)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2723, file: !953, line: 1116, baseType: !3135, size: 192, offset: 15680)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3136, line: 32, size: 192, elements: !3137)
!3136 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3137 = !{!3138, !3139}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3135, file: !3136, line: 33, baseType: !381, size: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3135, file: !3136, line: 34, baseType: !3127, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2723, file: !953, line: 1117, baseType: !512, size: 64, offset: 15872)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2723, file: !953, line: 1118, baseType: !509, size: 64, offset: 15936)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2723, file: !953, line: 1119, baseType: !7, size: 32, offset: 16000)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2723, file: !953, line: 1121, baseType: !571, size: 64, offset: 16064)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2723, file: !953, line: 1125, baseType: !3145, size: 64, offset: 16128)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !953, line: 43, flags: DIFlagFwdDecl)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2723, file: !953, line: 1127, baseType: !889, size: 32, offset: 16192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2723, file: !953, line: 1128, baseType: !7, size: 32, offset: 16224)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2723, file: !953, line: 1130, baseType: !3150, size: 128, offset: 16256)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3151, line: 37, size: 128, elements: !3152)
!3151 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3152 = !{!3153, !3154, !3155}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3150, file: !3151, line: 38, baseType: !13, size: 32)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3150, file: !3151, line: 39, baseType: !414, size: 32, offset: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3150, file: !3151, line: 40, baseType: !3156, size: 64, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3151, line: 24, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2723, file: !953, line: 1131, baseType: !3159, size: 256, offset: 16384)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3160, line: 12, size: 256, elements: !3161)
!3160 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3161 = !{!3162, !3163, !3164, !3165}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3159, file: !3160, line: 13, baseType: !462, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3159, file: !3160, line: 14, baseType: !512, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3159, file: !3160, line: 15, baseType: !512, size: 64, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3159, file: !3160, line: 16, baseType: !357, size: 8, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2723, file: !953, line: 1134, baseType: !625, size: 64, offset: 16640)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2723, file: !953, line: 1135, baseType: !625, size: 64, offset: 16704)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2723, file: !953, line: 1138, baseType: !394, size: 32, offset: 16768)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2723, file: !953, line: 1141, baseType: !653, size: 32, offset: 16800)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2723, file: !953, line: 1143, baseType: !3171, size: 64, offset: 16832)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !953, line: 735, size: 64, elements: !3172)
!3172 = !{!3173}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3171, file: !953, line: 736, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2723, file: !953, line: 1147, baseType: !1676, size: 128, offset: 16896)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2723, file: !953, line: 1149, baseType: !2722, size: 64, offset: 17024)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2723, file: !953, line: 1151, baseType: !3178, size: 64, offset: 17088)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !953, line: 1151, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2723, file: !953, line: 1188, baseType: !320, size: 64, offset: 17152)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2723, file: !953, line: 1191, baseType: !3182, size: 64, offset: 17216)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !953, line: 44, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2723, file: !953, line: 1194, baseType: !3185, size: 64, offset: 17280)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !953, line: 45, flags: DIFlagFwdDecl)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2723, file: !953, line: 1197, baseType: !3188, size: 64, offset: 17344)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !953, line: 61, flags: DIFlagFwdDecl)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2723, file: !953, line: 1199, baseType: !3191, size: 64, offset: 17408)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !953, line: 52, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2723, file: !953, line: 1202, baseType: !3194, size: 64, offset: 17472)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !953, line: 48, flags: DIFlagFwdDecl)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2723, file: !953, line: 1205, baseType: !512, size: 64, offset: 17536)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2723, file: !953, line: 1206, baseType: !3198, size: 64, offset: 17600)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3136, line: 14, baseType: !3200)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3136, line: 12, size: 384, elements: !3201)
!3201 = !{!3202}
!3202 = !DIDerivedType(tag: DW_TAG_member, scope: !3200, file: !3136, line: 13, baseType: !3203, size: 384)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3200, file: !3136, line: 13, size: 384, elements: !3204)
!3204 = !{!3205, !3206, !3207, !3208}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3203, file: !3136, line: 13, baseType: !13, size: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3203, file: !3136, line: 13, baseType: !13, size: 32, offset: 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3203, file: !3136, line: 13, baseType: !13, size: 32, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3203, file: !3136, line: 13, baseType: !3209, size: 256, offset: 128)
!3209 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3210, line: 37, size: 256, elements: !3211)
!3210 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3211 = !{!3212, !3217, !3230, !3236, !3245, !3271, !3276}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3209, file: !3210, line: 42, baseType: !3213, size: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3209, file: !3210, line: 39, size: 64, elements: !3214)
!3214 = !{!3215, !3216}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3213, file: !3210, line: 40, baseType: !3006, size: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3213, file: !3210, line: 41, baseType: !894, size: 32, offset: 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3209, file: !3210, line: 50, baseType: !3218, size: 192)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3209, file: !3210, line: 45, size: 192, elements: !3219)
!3219 = !{!3220, !3222, !3223, !3229}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3218, file: !3210, line: 46, baseType: !3221, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !496, line: 95, baseType: !13)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3218, file: !3210, line: 47, baseType: !13, size: 32, offset: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3218, file: !3210, line: 48, baseType: !3224, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3210, line: 11, baseType: !3225)
!3225 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3210, line: 8, size: 64, elements: !3226)
!3226 = !{!3227, !3228}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3225, file: !3210, line: 9, baseType: !13, size: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3225, file: !3210, line: 10, baseType: !320, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3218, file: !3210, line: 49, baseType: !13, size: 32, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3209, file: !3210, line: 57, baseType: !3231, size: 128)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3209, file: !3210, line: 53, size: 128, elements: !3232)
!3232 = !{!3233, !3234, !3235}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3231, file: !3210, line: 54, baseType: !3006, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3231, file: !3210, line: 55, baseType: !894, size: 32, offset: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3231, file: !3210, line: 56, baseType: !3224, size: 64, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3209, file: !3210, line: 66, baseType: !3237, size: 256)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3209, file: !3210, line: 60, size: 256, elements: !3238)
!3238 = !{!3239, !3240, !3241, !3242, !3244}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3237, file: !3210, line: 61, baseType: !3006, size: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3237, file: !3210, line: 62, baseType: !894, size: 32, offset: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3237, file: !3210, line: 63, baseType: !13, size: 32, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3237, file: !3210, line: 64, baseType: !3243, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !496, line: 94, baseType: !497)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3237, file: !3210, line: 65, baseType: !3243, size: 64, offset: 192)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3209, file: !3210, line: 105, baseType: !3246, size: 256)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3209, file: !3210, line: 69, size: 256, elements: !3247)
!3247 = !{!3248, !3249}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3246, file: !3210, line: 70, baseType: !320, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, scope: !3246, file: !3210, line: 79, baseType: !3250, size: 192, offset: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3246, file: !3210, line: 79, size: 192, elements: !3251)
!3251 = !{!3252, !3253, !3254, !3260, !3265}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3250, file: !3210, line: 81, baseType: !13, size: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3250, file: !3210, line: 86, baseType: !757, size: 16)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3250, file: !3210, line: 92, baseType: !3255, size: 192)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3250, file: !3210, line: 88, size: 192, elements: !3256)
!3256 = !{!3257, !3258, !3259}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3255, file: !3210, line: 89, baseType: !2050, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3255, file: !3210, line: 90, baseType: !320, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3255, file: !3210, line: 91, baseType: !320, size: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3250, file: !3210, line: 97, baseType: !3261, size: 96)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3250, file: !3210, line: 94, size: 96, elements: !3262)
!3262 = !{!3263, !3264}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3261, file: !3210, line: 95, baseType: !2050, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3261, file: !3210, line: 96, baseType: !328, size: 32, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3250, file: !3210, line: 103, baseType: !3266, size: 128)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3250, file: !3210, line: 99, size: 128, elements: !3267)
!3267 = !{!3268, !3269, !3270}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3266, file: !3210, line: 100, baseType: !512, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3266, file: !3210, line: 101, baseType: !328, size: 32, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3266, file: !3210, line: 102, baseType: !328, size: 32, offset: 96)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3209, file: !3210, line: 111, baseType: !3272, size: 128)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3209, file: !3210, line: 108, size: 128, elements: !3273)
!3273 = !{!3274, !3275}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3272, file: !3210, line: 109, baseType: !498, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3272, file: !3210, line: 110, baseType: !13, size: 32, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3209, file: !3210, line: 118, baseType: !3277, size: 128)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3209, file: !3210, line: 114, size: 128, elements: !3278)
!3278 = !{!3279, !3280, !3281}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3277, file: !3210, line: 115, baseType: !320, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3277, file: !3210, line: 116, baseType: !13, size: 32, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3277, file: !3210, line: 117, baseType: !7, size: 32, offset: 96)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2723, file: !953, line: 1208, baseType: !3283, size: 448, offset: 17664)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3284, line: 12, size: 448, elements: !3285)
!3284 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291, !3292}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3283, file: !3284, line: 15, baseType: !625, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3283, file: !3284, line: 17, baseType: !625, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3283, file: !3284, line: 19, baseType: !625, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3283, file: !3284, line: 21, baseType: !625, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3283, file: !3284, line: 29, baseType: !625, size: 64, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3283, file: !3284, line: 35, baseType: !625, size: 64, offset: 320)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3283, file: !3284, line: 44, baseType: !625, size: 64, offset: 384)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2723, file: !953, line: 1215, baseType: !625, size: 64, offset: 18112)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2723, file: !953, line: 1217, baseType: !625, size: 64, offset: 18176)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2723, file: !953, line: 1219, baseType: !625, size: 64, offset: 18240)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2723, file: !953, line: 1223, baseType: !3297, size: 64, offset: 18304)
!3297 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3298, line: 99, baseType: !3299)
!3298 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3298, line: 99, size: 64, elements: !3300)
!3300 = !{!3301}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3299, file: !3298, line: 99, baseType: !2376, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2723, file: !953, line: 1225, baseType: !3303, size: 32, offset: 18368)
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !668, line: 275, baseType: !3304)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !668, line: 275, size: 32, elements: !3305)
!3305 = !{!3306}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3304, file: !668, line: 275, baseType: !667, size: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2723, file: !953, line: 1226, baseType: !13, size: 32, offset: 18400)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2723, file: !953, line: 1227, baseType: !13, size: 32, offset: 18432)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2723, file: !953, line: 1231, baseType: !3310, size: 64, offset: 18496)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !953, line: 1231, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2723, file: !953, line: 1233, baseType: !381, size: 128, offset: 18560)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2723, file: !953, line: 1240, baseType: !3314, size: 64, offset: 18688)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !953, line: 62, flags: DIFlagFwdDecl)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2723, file: !953, line: 1242, baseType: !3317, size: 64, offset: 18752)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !953, line: 1242, flags: DIFlagFwdDecl)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2723, file: !953, line: 1244, baseType: !381, size: 128, offset: 18816)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2723, file: !953, line: 1245, baseType: !3321, size: 64, offset: 18944)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !953, line: 51, flags: DIFlagFwdDecl)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2723, file: !953, line: 1246, baseType: !719, size: 256, offset: 19008)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2723, file: !953, line: 1247, baseType: !7, size: 32, offset: 19264)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2723, file: !953, line: 1250, baseType: !3326, size: 64, offset: 19328)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !953, line: 57, flags: DIFlagFwdDecl)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2723, file: !953, line: 1251, baseType: !719, size: 256, offset: 19392)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2723, file: !953, line: 1252, baseType: !381, size: 128, offset: 19648)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2723, file: !953, line: 1259, baseType: !841, size: 64, offset: 19776)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2723, file: !953, line: 1260, baseType: !757, size: 16, offset: 19840)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2723, file: !953, line: 1261, baseType: !757, size: 16, offset: 19856)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2723, file: !953, line: 1314, baseType: !3334, size: 64, offset: 19904)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3336, line: 62, size: 256, align: 256, elements: !3337)
!3336 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3337 = !{!3338, !3339, !3340, !3341, !3342, !3343, !3344}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3335, file: !3336, line: 75, baseType: !328, size: 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3335, file: !3336, line: 90, baseType: !328, size: 32, offset: 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3335, file: !3336, line: 112, baseType: !626, size: 64, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3335, file: !3336, line: 132, baseType: !328, size: 32, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3335, file: !3336, line: 140, baseType: !328, size: 32, offset: 160)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3335, file: !3336, line: 149, baseType: !328, size: 32, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3335, file: !3336, line: 154, baseType: !3345, offset: 224)
!3345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, elements: !794)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2723, file: !953, line: 1315, baseType: !326, size: 32, offset: 19968)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2723, file: !953, line: 1316, baseType: !326, size: 32, offset: 20000)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2723, file: !953, line: 1321, baseType: !512, size: 64, offset: 20032)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2723, file: !953, line: 1325, baseType: !13, size: 32, offset: 20096)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2723, file: !953, line: 1326, baseType: !13, size: 32, offset: 20128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2723, file: !953, line: 1327, baseType: !13, size: 32, offset: 20160)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2723, file: !953, line: 1328, baseType: !13, size: 32, offset: 20192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2723, file: !953, line: 1329, baseType: !568, size: 128, align: 64, offset: 20224)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2723, file: !953, line: 1332, baseType: !3355, size: 128, offset: 20352)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3356, line: 51, size: 128, elements: !3357)
!3356 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3357 = !{!3358, !3363, !3364}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3355, file: !3356, line: 60, baseType: !3359, size: 64)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3360, line: 7, size: 64, elements: !3361)
!3360 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3361 = !{!3362}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3359, file: !3360, line: 12, baseType: !2373, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3355, file: !3356, line: 63, baseType: !357, size: 8, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3355, file: !3356, line: 70, baseType: !357, size: 8, offset: 72)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2723, file: !953, line: 1335, baseType: !3366, size: 64, offset: 20480)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !953, line: 59, flags: DIFlagFwdDecl)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2723, file: !953, line: 1337, baseType: !3369, size: 128, offset: 20544)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3356, line: 39, size: 128, elements: !3370)
!3370 = !{!3371, !3432, !3433}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3369, file: !3356, line: 40, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !540, line: 74, size: 512, align: 128, elements: !3374)
!3374 = !{!3375, !3376, !3426, !3431}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3373, file: !540, line: 75, baseType: !512, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, scope: !3373, file: !540, line: 83, baseType: !3377, size: 320, offset: 64)
!3377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3373, file: !540, line: 83, size: 320, elements: !3378)
!3378 = !{!3379, !3400, !3414, !3418, !3425}
!3379 = !DIDerivedType(tag: DW_TAG_member, scope: !3377, file: !540, line: 84, baseType: !3380, size: 320)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3377, file: !540, line: 84, size: 320, elements: !3381)
!3381 = !{!3382, !3393, !3394, !3399}
!3382 = !DIDerivedType(tag: DW_TAG_member, scope: !3380, file: !540, line: 90, baseType: !3383, size: 128)
!3383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3380, file: !540, line: 90, size: 128, elements: !3384)
!3384 = !{!3385, !3386, !3391, !3392}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3383, file: !540, line: 91, baseType: !381, size: 128)
!3386 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !540, line: 94, baseType: !3387, size: 128)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3383, file: !540, line: 94, size: 128, elements: !3388)
!3388 = !{!3389, !3390}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3387, file: !540, line: 96, baseType: !320, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3387, file: !540, line: 98, baseType: !7, size: 32, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !3383, file: !540, line: 102, baseType: !381, size: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !3383, file: !540, line: 103, baseType: !381, size: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3380, file: !540, line: 106, baseType: !538, size: 64, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_member, scope: !3380, file: !540, line: 107, baseType: !3395, size: 64, offset: 192)
!3395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3380, file: !540, line: 107, size: 64, elements: !3396)
!3396 = !{!3397, !3398}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3395, file: !540, line: 108, baseType: !512, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3395, file: !540, line: 109, baseType: !512, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3380, file: !540, line: 117, baseType: !512, size: 64, offset: 256)
!3400 = !DIDerivedType(tag: DW_TAG_member, scope: !3377, file: !540, line: 119, baseType: !3401, size: 320)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3377, file: !540, line: 119, size: 320, elements: !3402)
!3402 = !{!3403, !3404, !3407, !3408, !3409}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3401, file: !540, line: 124, baseType: !512, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3401, file: !540, line: 125, baseType: !3405, size: 64, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !540, line: 125, flags: DIFlagFwdDecl)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3401, file: !540, line: 126, baseType: !512, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3401, file: !540, line: 127, baseType: !512, size: 64, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_member, scope: !3401, file: !540, line: 128, baseType: !3410, size: 64, offset: 256)
!3410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3401, file: !540, line: 128, size: 64, elements: !3411)
!3411 = !{!3412, !3413}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3410, file: !540, line: 133, baseType: !512, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3410, file: !540, line: 138, baseType: !631, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3377, file: !540, line: 141, baseType: !3415, size: 64)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3377, file: !540, line: 141, size: 64, elements: !3416)
!3416 = !{!3417}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3415, file: !540, line: 142, baseType: !512, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, scope: !3377, file: !540, line: 144, baseType: !3419, size: 128)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3377, file: !540, line: 144, size: 128, elements: !3420)
!3420 = !{!3421, !3424}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3419, file: !540, line: 146, baseType: !3422, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !540, line: 146, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3419, file: !540, line: 147, baseType: !320, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3377, file: !540, line: 161, baseType: !568, size: 128, align: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, scope: !3373, file: !540, line: 164, baseType: !3427, size: 32, offset: 384)
!3427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3373, file: !540, line: 164, size: 32, elements: !3428)
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3427, file: !540, line: 169, baseType: !414, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3427, file: !540, line: 177, baseType: !7, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3373, file: !540, line: 181, baseType: !414, size: 32, offset: 416)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3369, file: !3356, line: 42, baseType: !328, size: 32, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3369, file: !3356, line: 43, baseType: !328, size: 32, offset: 96)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2723, file: !953, line: 1340, baseType: !3435, size: 64, offset: 20672)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !953, line: 69, flags: DIFlagFwdDecl)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2723, file: !953, line: 1351, baseType: !13, size: 32, offset: 20736)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2723, file: !953, line: 1352, baseType: !13, size: 32, offset: 20768)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2723, file: !953, line: 1354, baseType: !512, size: 64, offset: 20800)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2723, file: !953, line: 1364, baseType: !625, size: 64, offset: 20864)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2723, file: !953, line: 1365, baseType: !625, size: 64, offset: 20928)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2723, file: !953, line: 1412, baseType: !512, size: 64, offset: 20992)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2723, file: !953, line: 1453, baseType: !3444, size: 64, offset: 21056)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !953, line: 1453, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2723, file: !953, line: 1457, baseType: !3447, size: 64, offset: 21120)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !313, line: 61, size: 576, elements: !3449)
!3449 = !{!3450, !3451, !3470, !3473, !3474, !3507, !3517}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3448, file: !313, line: 62, baseType: !312, size: 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, scope: !3448, file: !313, line: 64, baseType: !3452, size: 192, offset: 64)
!3452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3448, file: !313, line: 64, size: 192, elements: !3453)
!3453 = !{!3454, !3465}
!3454 = !DIDerivedType(tag: DW_TAG_member, scope: !3452, file: !313, line: 65, baseType: !3455, size: 192)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3452, file: !313, line: 65, size: 192, elements: !3456)
!3456 = !{!3457, !3464}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3455, file: !313, line: 66, baseType: !3458, size: 128)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3459, line: 50, size: 128, elements: !3460)
!3459 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3460 = !{!3461, !3462, !3463}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3458, file: !3459, line: 52, baseType: !512, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3458, file: !3459, line: 54, baseType: !7, size: 32, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3458, file: !3459, line: 55, baseType: !7, size: 32, offset: 96)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3455, file: !313, line: 67, baseType: !512, size: 64, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, scope: !3452, file: !313, line: 70, baseType: !3466, size: 192)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3452, file: !313, line: 70, size: 192, elements: !3467)
!3467 = !{!3468, !3469}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3466, file: !313, line: 71, baseType: !568, size: 128, align: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3466, file: !313, line: 72, baseType: !512, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3448, file: !313, line: 76, baseType: !3471, size: 64, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !313, line: 76, flags: DIFlagFwdDecl)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3448, file: !313, line: 77, baseType: !512, size: 64, offset: 320)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3448, file: !313, line: 79, baseType: !3475, size: 64, offset: 384)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3459, line: 25, size: 256, elements: !3477)
!3477 = !{!3478, !3484, !3488}
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !3476, file: !3459, line: 26, baseType: !3479, size: 128)
!3479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3476, file: !3459, line: 26, size: 128, elements: !3480)
!3480 = !{!3481, !3483}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3479, file: !3459, line: 27, baseType: !3482, size: 128)
!3482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 128, elements: !1511)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3479, file: !3459, line: 28, baseType: !3482, size: 128)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3476, file: !3459, line: 31, baseType: !3485, size: 64, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3487)
!3487 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3459, line: 23, flags: DIFlagFwdDecl)
!3488 = !DIDerivedType(tag: DW_TAG_member, scope: !3476, file: !3459, line: 33, baseType: !3489, size: 64, offset: 192)
!3489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3476, file: !3459, line: 33, size: 64, elements: !3490)
!3490 = !{!3491, !3497, !3502}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3489, file: !3459, line: 38, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3489, file: !3459, line: 34, size: 64, elements: !3493)
!3493 = !{!3494, !3495, !3496}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3492, file: !3459, line: 35, baseType: !698, size: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3492, file: !3459, line: 36, baseType: !422, size: 8, offset: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3492, file: !3459, line: 37, baseType: !422, size: 8, offset: 40)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3489, file: !3459, line: 42, baseType: !3498, size: 16)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3489, file: !3459, line: 39, size: 16, elements: !3499)
!3499 = !{!3500, !3501}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3498, file: !3459, line: 40, baseType: !422, size: 8)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3498, file: !3459, line: 41, baseType: !422, size: 8, offset: 8)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3489, file: !3459, line: 46, baseType: !3503, size: 16)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3489, file: !3459, line: 43, size: 16, elements: !3504)
!3504 = !{!3505, !3506}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3503, file: !3459, line: 44, baseType: !422, size: 8)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3503, file: !3459, line: 45, baseType: !422, size: 8, offset: 8)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3448, file: !313, line: 81, baseType: !3508, size: 64, offset: 448)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !313, line: 85, size: 384, elements: !3510)
!3510 = !{!3511, !3512, !3513, !3514, !3515, !3516}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3509, file: !313, line: 86, baseType: !3471, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3509, file: !313, line: 87, baseType: !512, size: 64, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3509, file: !313, line: 88, baseType: !512, size: 64, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3509, file: !313, line: 89, baseType: !512, size: 64, offset: 192)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3509, file: !313, line: 90, baseType: !357, size: 8, offset: 256)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3509, file: !313, line: 92, baseType: !3508, size: 64, offset: 320)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3448, file: !313, line: 82, baseType: !7, size: 32, offset: 512)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2723, file: !953, line: 1463, baseType: !3519, offset: 21184)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !953, line: 739, elements: !598)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2723, file: !953, line: 1470, baseType: !568, size: 128, align: 64, offset: 21184)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2723, file: !953, line: 1471, baseType: !1022, size: 32, offset: 21312)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2723, file: !953, line: 1472, baseType: !13, size: 32, offset: 21344)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2723, file: !953, line: 1474, baseType: !2722, size: 64, offset: 21376)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2723, file: !953, line: 1475, baseType: !1371, size: 320, offset: 21440)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2723, file: !953, line: 1478, baseType: !3526, size: 64, offset: 21760)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3528, line: 49, size: 512, elements: !3529)
!3528 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3529 = !{!3530, !3531, !3532, !3533, !3534, !3536, !3537, !3538, !3540}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3527, file: !3528, line: 50, baseType: !3526, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3527, file: !3528, line: 51, baseType: !320, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3527, file: !3528, line: 52, baseType: !512, size: 64, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3527, file: !3528, line: 53, baseType: !512, size: 64, offset: 192)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3527, file: !3528, line: 54, baseType: !3535, size: 64, offset: 256)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3527, file: !3528, line: 56, baseType: !7, size: 32, offset: 320)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3527, file: !3528, line: 58, baseType: !7, size: 32, offset: 352)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3527, file: !3528, line: 59, baseType: !3539, size: 64, offset: 384)
!3539 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !358, line: 159, baseType: !625)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3527, file: !3528, line: 60, baseType: !366, size: 64, offset: 448)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2723, file: !953, line: 1482, baseType: !1022, size: 32, offset: 21824)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2723, file: !953, line: 1489, baseType: !320, size: 64, offset: 21888)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2723, file: !953, line: 1504, baseType: !320, size: 64, offset: 21952)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2723, file: !953, line: 1505, baseType: !626, size: 64, offset: 22016)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2723, file: !953, line: 1506, baseType: !625, size: 64, offset: 22080)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2723, file: !953, line: 1507, baseType: !626, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2723, file: !953, line: 1508, baseType: !626, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2723, file: !953, line: 1509, baseType: !626, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2723, file: !953, line: 1510, baseType: !568, size: 128, align: 64, offset: 22208)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2723, file: !953, line: 1511, baseType: !13, size: 32, offset: 22336)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2723, file: !953, line: 1515, baseType: !3552, size: 64, offset: 22400)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !2745, line: 56, size: 64, elements: !3553)
!3553 = !{!3554}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3552, file: !2745, line: 57, baseType: !2748, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2723, file: !953, line: 1518, baseType: !3552, size: 64, offset: 22464)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2723, file: !953, line: 1528, baseType: !568, size: 128, align: 64, offset: 22528)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2723, file: !953, line: 1552, baseType: !3558, size: 35328, offset: 23040)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3559, line: 430, size: 35328, elements: !3560)
!3559 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3560 = !{!3561, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3590, !3591, !3592, !3593, !3594, !3595, !3598, !3599, !3600, !3601}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3558, file: !3559, line: 432, baseType: !3562, size: 192)
!3562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3563, size: 192, elements: !463)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3564, line: 16, size: 64, elements: !3565)
!3564 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3563, file: !3564, line: 17, baseType: !430, size: 16)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3563, file: !3564, line: 18, baseType: !430, size: 16, offset: 16)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3563, file: !3564, line: 19, baseType: !430, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3563, file: !3564, line: 19, baseType: !430, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3563, file: !3564, line: 19, baseType: !430, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3563, file: !3564, line: 19, baseType: !430, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3563, file: !3564, line: 19, baseType: !430, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3563, file: !3564, line: 20, baseType: !430, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3563, file: !3564, line: 20, baseType: !430, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3563, file: !3564, line: 20, baseType: !430, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3563, file: !3564, line: 20, baseType: !430, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3563, file: !3564, line: 20, baseType: !430, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3563, file: !3564, line: 20, baseType: !430, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3558, file: !3559, line: 436, baseType: !512, size: 64, offset: 192)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3558, file: !3559, line: 440, baseType: !432, size: 16, offset: 256)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3558, file: !3559, line: 441, baseType: !432, size: 16, offset: 272)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3558, file: !3559, line: 442, baseType: !432, size: 16, offset: 288)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3558, file: !3559, line: 443, baseType: !432, size: 16, offset: 304)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3558, file: !3559, line: 447, baseType: !512, size: 64, offset: 320)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3558, file: !3559, line: 448, baseType: !512, size: 64, offset: 384)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3558, file: !3559, line: 459, baseType: !3587, size: 256, offset: 448)
!3587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3588, size: 256, elements: !700)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3559, line: 428, flags: DIFlagFwdDecl)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3558, file: !3559, line: 461, baseType: !512, size: 64, offset: 704)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3558, file: !3559, line: 463, baseType: !512, size: 64, offset: 768)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3558, file: !3559, line: 465, baseType: !512, size: 64, offset: 832)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3558, file: !3559, line: 466, baseType: !512, size: 64, offset: 896)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3558, file: !3559, line: 467, baseType: !512, size: 64, offset: 960)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3558, file: !3559, line: 473, baseType: !3596, size: 64, offset: 1024)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3559, line: 10, flags: DIFlagFwdDecl)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3558, file: !3559, line: 480, baseType: !512, size: 64, offset: 1088)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3558, file: !3559, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3558, file: !3559, line: 491, baseType: !326, size: 32, offset: 1184)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3558, file: !3559, line: 501, baseType: !3602, size: 33792, offset: 1536)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3603, line: 448, size: 33792, elements: !3604)
!3603 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3604 = !{!3605, !3606, !3607, !3769, !3770, !3776, !3777}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3602, file: !3603, line: 461, baseType: !7, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3602, file: !3603, line: 468, baseType: !512, size: 64, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3602, file: !3603, line: 476, baseType: !3608, size: 64, offset: 128)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3603, line: 356, size: 33280, align: 512, elements: !3610)
!3610 = !{!3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3609, file: !3603, line: 358, baseType: !7, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3609, file: !3603, line: 361, baseType: !7, size: 32, offset: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3609, file: !3603, line: 364, baseType: !625, size: 64, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3609, file: !3603, line: 367, baseType: !625, size: 64, offset: 128)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3609, file: !3603, line: 370, baseType: !625, size: 64, offset: 192)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3609, file: !3603, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3609, file: !3603, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3609, file: !3603, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3609, file: !3603, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3609, file: !3603, line: 397, baseType: !3621, size: 32768, offset: 512)
!3621 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3603, line: 348, size: 32768, elements: !3622)
!3622 = !{!3623, !3636, !3673, !3750, !3765}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3621, file: !3603, line: 349, baseType: !3624, size: 896)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3603, line: 12, size: 896, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3635}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3624, file: !3603, line: 13, baseType: !326, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3624, file: !3603, line: 14, baseType: !326, size: 32, offset: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3624, file: !3603, line: 15, baseType: !326, size: 32, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3624, file: !3603, line: 16, baseType: !326, size: 32, offset: 96)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3624, file: !3603, line: 17, baseType: !326, size: 32, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3624, file: !3603, line: 18, baseType: !326, size: 32, offset: 160)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3624, file: !3603, line: 19, baseType: !326, size: 32, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3624, file: !3603, line: 22, baseType: !3634, size: 640, offset: 224)
!3634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 640, elements: !2072)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3624, file: !3603, line: 25, baseType: !326, size: 32, offset: 864)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3621, file: !3603, line: 350, baseType: !3637, size: 4096, align: 128)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3603, line: 34, size: 4096, align: 128, elements: !3638)
!3638 = !{!3639, !3640, !3641, !3642, !3643, !3658, !3659, !3660, !3662, !3664, !3668}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3637, file: !3603, line: 35, baseType: !430, size: 16)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3637, file: !3603, line: 36, baseType: !430, size: 16, offset: 16)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3637, file: !3603, line: 37, baseType: !430, size: 16, offset: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3637, file: !3603, line: 38, baseType: !430, size: 16, offset: 48)
!3643 = !DIDerivedType(tag: DW_TAG_member, scope: !3637, file: !3603, line: 39, baseType: !3644, size: 128, offset: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3637, file: !3603, line: 39, size: 128, elements: !3645)
!3645 = !{!3646, !3651}
!3646 = !DIDerivedType(tag: DW_TAG_member, scope: !3644, file: !3603, line: 40, baseType: !3647, size: 128)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3644, file: !3603, line: 40, size: 128, elements: !3648)
!3648 = !{!3649, !3650}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3647, file: !3603, line: 41, baseType: !625, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3647, file: !3603, line: 42, baseType: !625, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, scope: !3644, file: !3603, line: 44, baseType: !3652, size: 128)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3644, file: !3603, line: 44, size: 128, elements: !3653)
!3653 = !{!3654, !3655, !3656, !3657}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3652, file: !3603, line: 45, baseType: !326, size: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3652, file: !3603, line: 46, baseType: !326, size: 32, offset: 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3652, file: !3603, line: 47, baseType: !326, size: 32, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3652, file: !3603, line: 48, baseType: !326, size: 32, offset: 96)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3637, file: !3603, line: 51, baseType: !326, size: 32, offset: 192)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3637, file: !3603, line: 52, baseType: !326, size: 32, offset: 224)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3637, file: !3603, line: 55, baseType: !3661, size: 1024, offset: 256)
!3661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 1024, elements: !1496)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3637, file: !3603, line: 58, baseType: !3663, size: 2048, offset: 1280)
!3663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 2048, elements: !467)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3637, file: !3603, line: 60, baseType: !3665, size: 384, offset: 3328)
!3665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 384, elements: !3666)
!3666 = !{!3667}
!3667 = !DISubrange(count: 12)
!3668 = !DIDerivedType(tag: DW_TAG_member, scope: !3637, file: !3603, line: 62, baseType: !3669, size: 384, offset: 3712)
!3669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3637, file: !3603, line: 62, size: 384, elements: !3670)
!3670 = !{!3671, !3672}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3669, file: !3603, line: 63, baseType: !3665, size: 384)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3669, file: !3603, line: 64, baseType: !3665, size: 384)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3621, file: !3603, line: 351, baseType: !3674, size: 1088)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3603, line: 79, size: 1088, elements: !3675)
!3675 = !{!3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3749}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3674, file: !3603, line: 80, baseType: !326, size: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3674, file: !3603, line: 81, baseType: !326, size: 32, offset: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3674, file: !3603, line: 82, baseType: !326, size: 32, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3674, file: !3603, line: 83, baseType: !326, size: 32, offset: 96)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3674, file: !3603, line: 84, baseType: !326, size: 32, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3674, file: !3603, line: 85, baseType: !326, size: 32, offset: 160)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3674, file: !3603, line: 86, baseType: !326, size: 32, offset: 192)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3674, file: !3603, line: 88, baseType: !3634, size: 640, offset: 224)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3674, file: !3603, line: 89, baseType: !422, size: 8, offset: 864)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3674, file: !3603, line: 90, baseType: !422, size: 8, offset: 872)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3674, file: !3603, line: 91, baseType: !422, size: 8, offset: 880)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3674, file: !3603, line: 92, baseType: !422, size: 8, offset: 888)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3674, file: !3603, line: 93, baseType: !422, size: 8, offset: 896)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3674, file: !3603, line: 94, baseType: !422, size: 8, offset: 904)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3674, file: !3603, line: 95, baseType: !3691, size: 64, offset: 960)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3693, line: 11, size: 128, elements: !3694)
!3693 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3694 = !{!3695, !3696}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3692, file: !3693, line: 12, baseType: !498, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3692, file: !3693, line: 13, baseType: !3697, size: 64, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3699, line: 103, size: 1344, elements: !3700)
!3699 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3700 = !{!3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3729, !3730, !3731}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3698, file: !3699, line: 109, baseType: !512, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3698, file: !3699, line: 110, baseType: !512, size: 64, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3698, file: !3699, line: 111, baseType: !512, size: 64, offset: 128)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3698, file: !3699, line: 112, baseType: !512, size: 64, offset: 192)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3698, file: !3699, line: 113, baseType: !512, size: 64, offset: 256)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3698, file: !3699, line: 114, baseType: !512, size: 64, offset: 320)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3698, file: !3699, line: 117, baseType: !512, size: 64, offset: 384)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3698, file: !3699, line: 118, baseType: !512, size: 64, offset: 448)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3698, file: !3699, line: 119, baseType: !512, size: 64, offset: 512)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3698, file: !3699, line: 120, baseType: !512, size: 64, offset: 576)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3698, file: !3699, line: 121, baseType: !512, size: 64, offset: 640)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3698, file: !3699, line: 122, baseType: !512, size: 64, offset: 704)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3698, file: !3699, line: 123, baseType: !512, size: 64, offset: 768)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3698, file: !3699, line: 124, baseType: !512, size: 64, offset: 832)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3698, file: !3699, line: 125, baseType: !512, size: 64, offset: 896)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3698, file: !3699, line: 139, baseType: !512, size: 64, offset: 960)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3698, file: !3699, line: 142, baseType: !512, size: 64, offset: 1024)
!3718 = !DIDerivedType(tag: DW_TAG_member, scope: !3698, file: !3699, line: 144, baseType: !3719, size: 64, offset: 1088)
!3719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3698, file: !3699, line: 144, size: 64, elements: !3720)
!3720 = !{!3721, !3722, !3723}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3719, file: !3699, line: 146, baseType: !430, size: 16)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3719, file: !3699, line: 148, baseType: !625, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3719, file: !3699, line: 150, baseType: !3724, size: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3699, line: 59, size: 64, elements: !3725)
!3725 = !{!3726, !3727, !3728}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3724, file: !3699, line: 61, baseType: !625, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3724, file: !3699, line: 63, baseType: !625, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3724, file: !3699, line: 65, baseType: !625, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3698, file: !3699, line: 153, baseType: !512, size: 64, offset: 1152)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3698, file: !3699, line: 154, baseType: !512, size: 64, offset: 1216)
!3731 = !DIDerivedType(tag: DW_TAG_member, scope: !3698, file: !3699, line: 156, baseType: !3732, size: 64, offset: 1280)
!3732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3698, file: !3699, line: 156, size: 64, elements: !3733)
!3733 = !{!3734, !3735, !3736}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3732, file: !3699, line: 158, baseType: !430, size: 16)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3732, file: !3699, line: 160, baseType: !625, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3732, file: !3699, line: 162, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3699, line: 69, size: 64, elements: !3738)
!3738 = !{!3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3737, file: !3699, line: 71, baseType: !625, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3737, file: !3699, line: 73, baseType: !625, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3737, file: !3699, line: 75, baseType: !625, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3737, file: !3699, line: 77, baseType: !625, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3737, file: !3699, line: 80, baseType: !625, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3737, file: !3699, line: 83, baseType: !625, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3737, file: !3699, line: 86, baseType: !625, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3737, file: !3699, line: 88, baseType: !625, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3737, file: !3699, line: 93, baseType: !625, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3737, file: !3699, line: 100, baseType: !625, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3674, file: !3603, line: 96, baseType: !326, size: 32, offset: 1024)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3621, file: !3603, line: 352, baseType: !3751, size: 4608, align: 512)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3603, line: 333, size: 4608, align: 512, elements: !3752)
!3752 = !{!3753, !3754, !3763}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3751, file: !3603, line: 334, baseType: !3637, size: 4096, align: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3751, file: !3603, line: 335, baseType: !3755, size: 512, offset: 4096)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3603, line: 312, size: 512, elements: !3756)
!3756 = !{!3757, !3758, !3759}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3755, file: !3603, line: 313, baseType: !625, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3755, file: !3603, line: 314, baseType: !625, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3755, file: !3603, line: 315, baseType: !3760, size: 384, offset: 128)
!3760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 384, elements: !3761)
!3761 = !{!3762}
!3762 = !DISubrange(count: 6)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3751, file: !3603, line: 336, baseType: !3764, offset: 4608)
!3764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, elements: !794)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3621, file: !3603, line: 353, baseType: !3766, size: 32768)
!3766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 32768, elements: !3767)
!3767 = !{!3768}
!3768 = !DISubrange(count: 4096)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3602, file: !3603, line: 484, baseType: !3608, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3602, file: !3603, line: 491, baseType: !3771, size: 128, offset: 256)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3603, line: 404, size: 128, elements: !3772)
!3772 = !{!3773, !3774, !3775}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3771, file: !3603, line: 424, baseType: !625, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3771, file: !3603, line: 432, baseType: !7, size: 32, offset: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3771, file: !3603, line: 440, baseType: !7, size: 32, offset: 96)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3602, file: !3603, line: 498, baseType: !3771, size: 128, offset: 384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3602, file: !3603, line: 508, baseType: !3609, size: 33280, align: 512, offset: 512)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2639, file: !301, line: 158, baseType: !3779, size: 64, offset: 4544)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_stats", file: !301, line: 158, flags: DIFlagFwdDecl)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2639, file: !301, line: 161, baseType: !320, size: 64, offset: 4608)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2639, file: !301, line: 164, baseType: !2436, size: 64, offset: 4672)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "nb_min", scope: !2639, file: !301, line: 166, baseType: !1757, size: 192, offset: 4736)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "nb_max", scope: !2639, file: !301, line: 167, baseType: !1757, size: 192, offset: 4928)
!3785 = !DILocation(line: 233, column: 59, scope: !2632)
!3786 = !DILocation(line: 234, column: 22, scope: !2632)
!3787 = !DILocation(line: 234, column: 35, scope: !2632)
!3788 = !DILocation(line: 236, column: 2, scope: !2632)
!3789 = !DILocation(line: 236, column: 25, scope: !2632)
!3790 = !DILocation(line: 236, column: 34, scope: !2632)
!3791 = !DILocation(line: 238, column: 6, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 238, column: 6)
!3793 = !DILocation(line: 238, column: 12, scope: !3792)
!3794 = !DILocation(line: 238, column: 6, scope: !2632)
!3795 = !DILocation(line: 239, column: 29, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3792, file: !3, line: 238, column: 38)
!3797 = !DILocation(line: 239, column: 3, scope: !3796)
!3798 = !DILocation(line: 240, column: 27, scope: !3796)
!3799 = !DILocation(line: 240, column: 3, scope: !3796)
!3800 = !DILocation(line: 241, column: 2, scope: !3796)
!3801 = !DILocation(line: 241, column: 13, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3792, file: !3, line: 241, column: 13)
!3803 = !DILocation(line: 241, column: 19, scope: !3802)
!3804 = !DILocation(line: 241, column: 13, scope: !3792)
!3805 = !DILocation(line: 242, column: 27, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3802, file: !3, line: 241, column: 45)
!3807 = !DILocation(line: 242, column: 3, scope: !3806)
!3808 = !DILocation(line: 243, column: 29, scope: !3806)
!3809 = !DILocation(line: 243, column: 3, scope: !3806)
!3810 = !DILocation(line: 244, column: 2, scope: !3806)
!3811 = !DILocation(line: 247, column: 1, scope: !2632)
!3812 = !DILocation(line: 246, column: 2, scope: !2632)
!3813 = !DISubprogram(name: "acpi_thermal_cpufreq_init", scope: !2274, file: !2274, line: 450, type: !2674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3814 = !DISubprogram(name: "acpi_processor_ppc_init", scope: !2274, file: !2274, line: 318, type: !2674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3815 = !DISubprogram(name: "acpi_processor_ppc_exit", scope: !2274, file: !2274, line: 319, type: !2674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3816 = !DISubprogram(name: "acpi_thermal_cpufreq_exit", scope: !2274, file: !2274, line: 451, type: !2674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3817 = !DISubprogram(name: "__cpuhp_remove_state", scope: !12, file: !12, line: 434, type: !3818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !11, !357}
!3820 = distinct !DISubprogram(name: "acpi_processor_start", scope: !3, file: !3, line: 193, type: !1065, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3821)
!3821 = !{!3822, !3823, !3824, !3826, !3828}
!3822 = !DILocalVariable(name: "dev", arg: 1, scope: !3820, file: !3, line: 193, type: !1033)
!3823 = !DILocalVariable(name: "device", scope: !3820, file: !3, line: 195, type: !321)
!3824 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3825, file: !3, line: 195, type: !339)
!3825 = distinct !DILexicalBlock(scope: !3820, file: !3, line: 195, column: 31)
!3826 = !DILocalVariable(name: "__mptr", scope: !3827, file: !3, line: 195, type: !320)
!3827 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 195, column: 31)
!3828 = !DILocalVariable(name: "ret", scope: !3820, file: !3, line: 196, type: !13)
!3829 = !DILocation(line: 193, column: 48, scope: !3820)
!3830 = !DILocation(line: 195, column: 2, scope: !3820)
!3831 = !DILocation(line: 195, column: 22, scope: !3820)
!3832 = !DILocation(line: 195, column: 31, scope: !3825)
!3833 = !DILocation(line: 195, column: 31, scope: !3827)
!3834 = !DILocation(line: 195, column: 31, scope: !3820)
!3835 = !DILocation(line: 196, column: 2, scope: !3820)
!3836 = !DILocation(line: 196, column: 6, scope: !3820)
!3837 = !DILocation(line: 198, column: 7, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3820, file: !3, line: 198, column: 6)
!3839 = !DILocation(line: 198, column: 6, scope: !3820)
!3840 = !DILocation(line: 199, column: 3, scope: !3838)
!3841 = !DILocation(line: 202, column: 2, scope: !3820)
!3842 = !DILocation(line: 203, column: 31, scope: !3820)
!3843 = !DILocation(line: 203, column: 8, scope: !3820)
!3844 = !DILocation(line: 203, column: 6, scope: !3820)
!3845 = !DILocation(line: 204, column: 2, scope: !3820)
!3846 = !DILocation(line: 205, column: 9, scope: !3820)
!3847 = !DILocation(line: 205, column: 2, scope: !3820)
!3848 = !DILocation(line: 206, column: 1, scope: !3820)
!3849 = distinct !DISubprogram(name: "acpi_processor_stop", scope: !3, file: !3, line: 208, type: !1065, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3850)
!3850 = !{!3851, !3852, !3853, !3855, !3857}
!3851 = !DILocalVariable(name: "dev", arg: 1, scope: !3849, file: !3, line: 208, type: !1033)
!3852 = !DILocalVariable(name: "device", scope: !3849, file: !3, line: 210, type: !321)
!3853 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3854, file: !3, line: 210, type: !339)
!3854 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 210, column: 31)
!3855 = !DILocalVariable(name: "__mptr", scope: !3856, file: !3, line: 210, type: !320)
!3856 = distinct !DILexicalBlock(scope: !3854, file: !3, line: 210, column: 31)
!3857 = !DILocalVariable(name: "pr", scope: !3849, file: !3, line: 211, type: !2272)
!3858 = !DILocation(line: 208, column: 47, scope: !3849)
!3859 = !DILocation(line: 210, column: 2, scope: !3849)
!3860 = !DILocation(line: 210, column: 22, scope: !3849)
!3861 = !DILocation(line: 210, column: 31, scope: !3854)
!3862 = !DILocation(line: 210, column: 31, scope: !3856)
!3863 = !DILocation(line: 210, column: 31, scope: !3849)
!3864 = !DILocation(line: 211, column: 2, scope: !3849)
!3865 = !DILocation(line: 211, column: 25, scope: !3849)
!3866 = !DILocation(line: 213, column: 7, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 213, column: 6)
!3868 = !DILocation(line: 213, column: 6, scope: !3849)
!3869 = !DILocation(line: 214, column: 3, scope: !3867)
!3870 = !DILocation(line: 216, column: 29, scope: !3849)
!3871 = !DILocation(line: 216, column: 37, scope: !3849)
!3872 = !DILocation(line: 216, column: 2, scope: !3849)
!3873 = !DILocation(line: 219, column: 24, scope: !3849)
!3874 = !DILocation(line: 219, column: 7, scope: !3849)
!3875 = !DILocation(line: 219, column: 5, scope: !3849)
!3876 = !DILocation(line: 220, column: 7, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 220, column: 6)
!3878 = !DILocation(line: 220, column: 6, scope: !3849)
!3879 = !DILocation(line: 221, column: 3, scope: !3877)
!3880 = !DILocation(line: 222, column: 28, scope: !3849)
!3881 = !DILocation(line: 222, column: 2, scope: !3849)
!3882 = !DILocation(line: 224, column: 27, scope: !3849)
!3883 = !DILocation(line: 224, column: 2, scope: !3849)
!3884 = !DILocation(line: 226, column: 30, scope: !3849)
!3885 = !DILocation(line: 226, column: 34, scope: !3849)
!3886 = !DILocation(line: 226, column: 2, scope: !3849)
!3887 = !DILocation(line: 228, column: 2, scope: !3849)
!3888 = !DILocation(line: 229, column: 1, scope: !3849)
!3889 = !DISubprogram(name: "is_acpi_device_node", scope: !323, file: !323, line: 410, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3890 = !DISubprogram(name: "cpu_hotplug_disable", scope: !3891, file: !3891, line: 139, type: !1482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3891 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!3892 = distinct !DISubprogram(name: "__acpi_processor_start", scope: !3, file: !3, line: 155, type: !2241, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3893)
!3893 = !{!3894, !3895, !3896, !3898, !3899}
!3894 = !DILocalVariable(name: "device", arg: 1, scope: !3892, file: !3, line: 155, type: !321)
!3895 = !DILocalVariable(name: "pr", scope: !3892, file: !3, line: 157, type: !2272)
!3896 = !DILocalVariable(name: "status", scope: !3892, file: !3, line: 158, type: !3897)
!3897 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !333, line: 421, baseType: !326)
!3898 = !DILocalVariable(name: "result", scope: !3892, file: !3, line: 159, type: !13)
!3899 = !DILabel(scope: !3892, name: "err_power_exit", file: !3, line: 188)
!3900 = !DILocation(line: 155, column: 55, scope: !3892)
!3901 = !DILocation(line: 157, column: 2, scope: !3892)
!3902 = !DILocation(line: 157, column: 25, scope: !3892)
!3903 = !DILocation(line: 157, column: 47, scope: !3892)
!3904 = !DILocation(line: 157, column: 30, scope: !3892)
!3905 = !DILocation(line: 158, column: 2, scope: !3892)
!3906 = !DILocation(line: 158, column: 14, scope: !3892)
!3907 = !DILocation(line: 159, column: 2, scope: !3892)
!3908 = !DILocation(line: 159, column: 6, scope: !3892)
!3909 = !DILocation(line: 161, column: 7, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 161, column: 6)
!3911 = !DILocation(line: 161, column: 6, scope: !3892)
!3912 = !DILocation(line: 162, column: 3, scope: !3910)
!3913 = !DILocation(line: 164, column: 6, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 164, column: 6)
!3915 = !DILocation(line: 164, column: 10, scope: !3914)
!3916 = !DILocation(line: 164, column: 16, scope: !3914)
!3917 = !DILocation(line: 164, column: 6, scope: !3892)
!3918 = !DILocation(line: 165, column: 3, scope: !3914)
!3919 = !DILocation(line: 167, column: 37, scope: !3892)
!3920 = !DILocation(line: 167, column: 11, scope: !3892)
!3921 = !DILocation(line: 167, column: 9, scope: !3892)
!3922 = !DILocation(line: 168, column: 6, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 168, column: 6)
!3924 = !DILocation(line: 168, column: 13, scope: !3923)
!3925 = !DILocation(line: 168, column: 6, scope: !3892)
!3926 = !DILocation(line: 169, column: 3, scope: !3923)
!3927 = !DILocation(line: 171, column: 7, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 171, column: 6)
!3929 = !DILocation(line: 171, column: 28, scope: !3928)
!3930 = !DILocation(line: 171, column: 31, scope: !3928)
!3931 = !DILocation(line: 171, column: 52, scope: !3928)
!3932 = !DILocation(line: 171, column: 6, scope: !3892)
!3933 = !DILocation(line: 172, column: 29, scope: !3928)
!3934 = !DILocation(line: 172, column: 3, scope: !3928)
!3935 = !DILocation(line: 174, column: 21, scope: !3892)
!3936 = !DILocation(line: 174, column: 2, scope: !3892)
!3937 = !DILocation(line: 176, column: 39, scope: !3892)
!3938 = !DILocation(line: 176, column: 43, scope: !3892)
!3939 = !DILocation(line: 176, column: 11, scope: !3892)
!3940 = !DILocation(line: 176, column: 9, scope: !3892)
!3941 = !DILocation(line: 177, column: 6, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 177, column: 6)
!3943 = !DILocation(line: 177, column: 6, scope: !3892)
!3944 = !DILocation(line: 178, column: 3, scope: !3942)
!3945 = !DILocation(line: 180, column: 39, scope: !3892)
!3946 = !DILocation(line: 180, column: 47, scope: !3892)
!3947 = !DILocation(line: 181, column: 34, scope: !3892)
!3948 = !DILocation(line: 180, column: 11, scope: !3892)
!3949 = !DILocation(line: 180, column: 9, scope: !3892)
!3950 = !DILocation(line: 182, column: 6, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 182, column: 6)
!3952 = !DILocation(line: 182, column: 6, scope: !3892)
!3953 = !DILocation(line: 183, column: 3, scope: !3951)
!3954 = !DILocation(line: 185, column: 9, scope: !3892)
!3955 = !DILocation(line: 186, column: 30, scope: !3892)
!3956 = !DILocation(line: 186, column: 34, scope: !3892)
!3957 = !DILocation(line: 186, column: 2, scope: !3892)
!3958 = !DILocation(line: 188, column: 1, scope: !3892)
!3959 = !DILocation(line: 189, column: 28, scope: !3892)
!3960 = !DILocation(line: 189, column: 2, scope: !3892)
!3961 = !DILocation(line: 190, column: 9, scope: !3892)
!3962 = !DILocation(line: 190, column: 2, scope: !3892)
!3963 = !DILocation(line: 191, column: 1, scope: !3892)
!3964 = !DISubprogram(name: "cpu_hotplug_enable", scope: !3891, file: !3891, line: 140, type: !1482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3965 = distinct !DISubprogram(name: "acpi_driver_data", scope: !323, file: !323, line: 456, type: !3966, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3968)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!320, !321}
!3968 = !{!3969}
!3969 = !DILocalVariable(name: "d", arg: 1, scope: !3965, file: !323, line: 456, type: !321)
!3970 = !DILocation(line: 456, column: 58, scope: !3965)
!3971 = !DILocation(line: 458, column: 9, scope: !3965)
!3972 = !DILocation(line: 458, column: 12, scope: !3965)
!3973 = !DILocation(line: 458, column: 2, scope: !3965)
!3974 = !DISubprogram(name: "acpi_cppc_processor_probe", scope: !2274, file: !2274, line: 361, type: !2408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3975 = !DISubprogram(name: "cpuidle_get_driver", scope: !3976, file: !3976, line: 185, type: !3977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3976 = !DIFile(filename: "./include/linux/cpuidle.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4e37910f6e1ee8771b4e96ef73e2ef7")
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!3979}
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver", file: !3976, line: 152, size: 8704, elements: !3981)
!3981 = !{!3982, !3983, !3984, !3985, !4041, !4042, !4043, !4045}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3980, file: !3976, line: 153, baseType: !377, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3980, file: !3976, line: 154, baseType: !1110, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "bctimer", scope: !3980, file: !3976, line: 157, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !3980, file: !3976, line: 159, baseType: !3986, size: 8320, offset: 192)
!3986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3987, size: 8320, elements: !2517)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state", file: !3976, line: 49, size: 832, elements: !3988)
!3988 = !{!3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !4036, !4040}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3987, file: !3976, line: 50, baseType: !2667, size: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3987, file: !3976, line: 51, baseType: !1495, size: 256, offset: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency_ns", scope: !3987, file: !3976, line: 53, baseType: !637, size: 64, offset: 384)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency_ns", scope: !3987, file: !3976, line: 54, baseType: !637, size: 64, offset: 448)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3987, file: !3976, line: 55, baseType: !7, size: 32, offset: 512)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency", scope: !3987, file: !3976, line: 56, baseType: !7, size: 32, offset: 544)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "power_usage", scope: !3987, file: !3976, line: 57, baseType: !13, size: 32, offset: 576)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency", scope: !3987, file: !3976, line: 58, baseType: !7, size: 32, offset: 608)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "enter", scope: !3987, file: !3976, line: 60, baseType: !3998, size: 64, offset: 640)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!13, !4001, !3979, !13}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device", file: !3976, line: 93, size: 6400, elements: !4003)
!4003 = !{!4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4025, !4029, !4032, !4035}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4002, file: !3976, line: 94, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4002, file: !3976, line: 95, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "poll_time_limit", scope: !4002, file: !3976, line: 96, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4002, file: !3976, line: 97, baseType: !7, size: 32, offset: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "next_hrtimer", scope: !4002, file: !3976, line: 98, baseType: !1599, size: 64, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "last_state_idx", scope: !4002, file: !3976, line: 100, baseType: !13, size: 32, offset: 128)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "last_residency_ns", scope: !4002, file: !3976, line: 101, baseType: !625, size: 64, offset: 192)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "poll_limit_ns", scope: !4002, file: !3976, line: 102, baseType: !625, size: 64, offset: 256)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "forced_idle_latency_limit_ns", scope: !4002, file: !3976, line: 103, baseType: !625, size: 64, offset: 320)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "states_usage", scope: !4002, file: !3976, line: 104, baseType: !4014, size: 5120, offset: 384)
!4014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4015, size: 5120, elements: !2517)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_usage", file: !3976, line: 36, size: 512, elements: !4016)
!4016 = !{!4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4015, file: !3976, line: 37, baseType: !627, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4015, file: !3976, line: 38, baseType: !627, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4015, file: !3976, line: 39, baseType: !625, size: 64, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !4015, file: !3976, line: 40, baseType: !627, size: 64, offset: 192)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "below", scope: !4015, file: !3976, line: 41, baseType: !627, size: 64, offset: 256)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !4015, file: !3976, line: 42, baseType: !627, size: 64, offset: 320)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_usage", scope: !4015, file: !3976, line: 44, baseType: !627, size: 64, offset: 384)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_time", scope: !4015, file: !3976, line: 45, baseType: !627, size: 64, offset: 448)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "kobjs", scope: !4002, file: !3976, line: 105, baseType: !4026, size: 640, offset: 5504)
!4026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4027, size: 640, elements: !2517)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_kobj", file: !3976, line: 90, flags: DIFlagFwdDecl)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_driver", scope: !4002, file: !3976, line: 106, baseType: !4030, size: 64, offset: 6144)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver_kobj", file: !3976, line: 91, flags: DIFlagFwdDecl)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_dev", scope: !4002, file: !3976, line: 107, baseType: !4033, size: 64, offset: 6208)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device_kobj", file: !3976, line: 89, flags: DIFlagFwdDecl)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4002, file: !3976, line: 108, baseType: !381, size: 128, offset: 6272)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "enter_dead", scope: !3987, file: !3976, line: 64, baseType: !4037, size: 64, offset: 704)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!13, !4001, !13}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "enter_s2idle", scope: !3987, file: !3976, line: 74, baseType: !3998, size: 64, offset: 768)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !3980, file: !3976, line: 160, baseType: !13, size: 32, offset: 8512)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "safe_state_index", scope: !3980, file: !3976, line: 161, baseType: !13, size: 32, offset: 8544)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3980, file: !3976, line: 164, baseType: !4044, size: 64, offset: 8576)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !3980, file: !3976, line: 167, baseType: !377, size: 64, offset: 8640)
!4046 = !DISubprogram(name: "acpi_processor_power_init", scope: !2274, file: !2274, line: 417, type: !2408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4047 = distinct !DISubprogram(name: "acpi_pss_perf_init", scope: !3, file: !3, line: 142, type: !4048, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4050)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !2272}
!4050 = !{!4051}
!4051 = !DILocalVariable(name: "pr", arg: 1, scope: !4047, file: !3, line: 142, type: !2272)
!4052 = !DILocation(line: 142, column: 55, scope: !4047)
!4053 = !DILocation(line: 144, column: 33, scope: !4047)
!4054 = !DILocation(line: 144, column: 2, scope: !4047)
!4055 = !DILocation(line: 146, column: 37, scope: !4047)
!4056 = !DILocation(line: 146, column: 2, scope: !4047)
!4057 = !DILocation(line: 148, column: 6, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 148, column: 6)
!4059 = !DILocation(line: 148, column: 10, scope: !4058)
!4060 = !DILocation(line: 148, column: 16, scope: !4058)
!4061 = !DILocation(line: 148, column: 6, scope: !4047)
!4062 = !DILocation(line: 149, column: 3, scope: !4058)
!4063 = !DILocation(line: 149, column: 7, scope: !4058)
!4064 = !DILocation(line: 149, column: 19, scope: !4058)
!4065 = !DILocation(line: 150, column: 1, scope: !4047)
!4066 = !DISubprogram(name: "acpi_processor_thermal_init", scope: !2274, file: !2274, line: 444, type: !4067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!13, !2272, !321}
!4069 = !DISubprogram(name: "acpi_install_notify_handler", scope: !4070, file: !4070, line: 634, type: !4071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4070 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!3897, !332, !326, !4073, !320}
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !333, line: 1061, baseType: !4074)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{null, !332, !326, !320}
!4077 = distinct !DISubprogram(name: "acpi_processor_notify", scope: !3, file: !3, line: 53, type: !4075, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4078)
!4078 = !{!4079, !4080, !4081, !4082, !4083, !4084}
!4079 = !DILocalVariable(name: "handle", arg: 1, scope: !4077, file: !3, line: 53, type: !332)
!4080 = !DILocalVariable(name: "event", arg: 2, scope: !4077, file: !3, line: 53, type: !326)
!4081 = !DILocalVariable(name: "data", arg: 3, scope: !4077, file: !3, line: 53, type: !320)
!4082 = !DILocalVariable(name: "device", scope: !4077, file: !3, line: 55, type: !321)
!4083 = !DILocalVariable(name: "pr", scope: !4077, file: !3, line: 56, type: !2272)
!4084 = !DILocalVariable(name: "saved", scope: !4077, file: !3, line: 57, type: !13)
!4085 = !DILocation(line: 53, column: 47, scope: !4077)
!4086 = !DILocation(line: 53, column: 59, scope: !4077)
!4087 = !DILocation(line: 53, column: 72, scope: !4077)
!4088 = !DILocation(line: 55, column: 2, scope: !4077)
!4089 = !DILocation(line: 55, column: 22, scope: !4077)
!4090 = !DILocation(line: 55, column: 31, scope: !4077)
!4091 = !DILocation(line: 56, column: 2, scope: !4077)
!4092 = !DILocation(line: 56, column: 25, scope: !4077)
!4093 = !DILocation(line: 57, column: 2, scope: !4077)
!4094 = !DILocation(line: 57, column: 6, scope: !4077)
!4095 = !DILocation(line: 59, column: 6, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4077, file: !3, line: 59, column: 6)
!4097 = !DILocation(line: 59, column: 14, scope: !4096)
!4098 = !DILocation(line: 59, column: 24, scope: !4096)
!4099 = !DILocation(line: 59, column: 21, scope: !4096)
!4100 = !DILocation(line: 59, column: 6, scope: !4077)
!4101 = !DILocation(line: 60, column: 3, scope: !4096)
!4102 = !DILocation(line: 62, column: 24, scope: !4077)
!4103 = !DILocation(line: 62, column: 7, scope: !4077)
!4104 = !DILocation(line: 62, column: 5, scope: !4077)
!4105 = !DILocation(line: 63, column: 7, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4077, file: !3, line: 63, column: 6)
!4107 = !DILocation(line: 63, column: 6, scope: !4077)
!4108 = !DILocation(line: 64, column: 3, scope: !4106)
!4109 = !DILocation(line: 66, column: 10, scope: !4077)
!4110 = !DILocation(line: 66, column: 2, scope: !4077)
!4111 = !DILocation(line: 68, column: 11, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4077, file: !3, line: 66, column: 17)
!4113 = !DILocation(line: 68, column: 15, scope: !4112)
!4114 = !DILocation(line: 68, column: 9, scope: !4112)
!4115 = !DILocation(line: 69, column: 34, scope: !4112)
!4116 = !DILocation(line: 69, column: 3, scope: !4112)
!4117 = !DILocation(line: 70, column: 7, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 70, column: 7)
!4119 = !DILocation(line: 70, column: 16, scope: !4118)
!4120 = !DILocation(line: 70, column: 20, scope: !4118)
!4121 = !DILocation(line: 70, column: 13, scope: !4118)
!4122 = !DILocation(line: 70, column: 7, scope: !4112)
!4123 = !DILocation(line: 71, column: 4, scope: !4118)
!4124 = !DILocation(line: 72, column: 35, scope: !4112)
!4125 = !DILocation(line: 72, column: 43, scope: !4112)
!4126 = !DILocation(line: 72, column: 47, scope: !4112)
!4127 = !DILocation(line: 73, column: 19, scope: !4112)
!4128 = !DILocation(line: 73, column: 27, scope: !4112)
!4129 = !DILocation(line: 73, column: 9, scope: !4112)
!4130 = !DILocation(line: 73, column: 33, scope: !4112)
!4131 = !DILocation(line: 74, column: 9, scope: !4112)
!4132 = !DILocation(line: 74, column: 13, scope: !4112)
!4133 = !DILocation(line: 72, column: 3, scope: !4112)
!4134 = !DILocation(line: 75, column: 3, scope: !4112)
!4135 = !DILocation(line: 77, column: 42, scope: !4112)
!4136 = !DILocation(line: 77, column: 3, scope: !4112)
!4137 = !DILocation(line: 78, column: 35, scope: !4112)
!4138 = !DILocation(line: 78, column: 43, scope: !4112)
!4139 = !DILocation(line: 78, column: 47, scope: !4112)
!4140 = !DILocation(line: 79, column: 19, scope: !4112)
!4141 = !DILocation(line: 79, column: 27, scope: !4112)
!4142 = !DILocation(line: 79, column: 9, scope: !4112)
!4143 = !DILocation(line: 79, column: 33, scope: !4112)
!4144 = !DILocation(line: 78, column: 3, scope: !4112)
!4145 = !DILocation(line: 80, column: 3, scope: !4112)
!4146 = !DILocation(line: 82, column: 37, scope: !4112)
!4147 = !DILocation(line: 82, column: 3, scope: !4112)
!4148 = !DILocation(line: 83, column: 35, scope: !4112)
!4149 = !DILocation(line: 83, column: 43, scope: !4112)
!4150 = !DILocation(line: 83, column: 47, scope: !4112)
!4151 = !DILocation(line: 84, column: 19, scope: !4112)
!4152 = !DILocation(line: 84, column: 27, scope: !4112)
!4153 = !DILocation(line: 84, column: 9, scope: !4112)
!4154 = !DILocation(line: 84, column: 33, scope: !4112)
!4155 = !DILocation(line: 83, column: 3, scope: !4112)
!4156 = !DILocation(line: 85, column: 3, scope: !4112)
!4157 = !DILocation(line: 87, column: 3, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4159, file: !3, line: 87, column: 3)
!4159 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 87, column: 3)
!4160 = !DILocation(line: 87, column: 3, scope: !4159)
!4161 = !DILocation(line: 88, column: 3, scope: !4112)
!4162 = !DILocation(line: 91, column: 2, scope: !4077)
!4163 = !DILocation(line: 92, column: 1, scope: !4077)
!4164 = !DISubprogram(name: "acpi_processor_thermal_exit", scope: !2274, file: !2274, line: 446, type: !4165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{null, !2272, !321}
!4167 = !DISubprogram(name: "acpi_processor_power_exit", scope: !2274, file: !2274, line: 418, type: !2408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4168 = !DISubprogram(name: "acpi_processor_ppc_has_changed", scope: !2274, file: !2274, line: 320, type: !4169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{null, !2272, !13}
!4171 = !DISubprogram(name: "acpi_processor_get_throttling_info", scope: !2274, file: !2274, line: 380, type: !2408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4172 = !DISubprogram(name: "acpi_bus_generate_netlink_event", scope: !323, file: !323, line: 513, type: !4173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!13, !377, !377, !422, !13}
!4175 = distinct !DISubprogram(name: "dev_name", scope: !213, file: !213, line: 858, type: !4176, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4178)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!377, !368}
!4178 = !{!4179}
!4179 = !DILocalVariable(name: "dev", arg: 1, scope: !4175, file: !213, line: 858, type: !368)
!4180 = !DILocation(line: 858, column: 57, scope: !4175)
!4181 = !DILocation(line: 861, column: 6, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4175, file: !213, line: 861, column: 6)
!4183 = !DILocation(line: 861, column: 11, scope: !4182)
!4184 = !DILocation(line: 861, column: 6, scope: !4175)
!4185 = !DILocation(line: 862, column: 10, scope: !4182)
!4186 = !DILocation(line: 862, column: 15, scope: !4182)
!4187 = !DILocation(line: 862, column: 3, scope: !4182)
!4188 = !DILocation(line: 864, column: 23, scope: !4175)
!4189 = !DILocation(line: 864, column: 28, scope: !4175)
!4190 = !DILocation(line: 864, column: 9, scope: !4175)
!4191 = !DILocation(line: 864, column: 2, scope: !4175)
!4192 = !DILocation(line: 865, column: 1, scope: !4175)
!4193 = !DISubprogram(name: "acpi_processor_power_state_has_changed", scope: !2274, file: !2274, line: 419, type: !2408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4194 = !DISubprogram(name: "acpi_processor_tstate_has_changed", scope: !2274, file: !2274, line: 379, type: !2408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4195 = distinct !DISubprogram(name: "kobject_name", scope: !374, file: !374, line: 87, type: !450, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4196)
!4196 = !{!4197}
!4197 = !DILocalVariable(name: "kobj", arg: 1, scope: !4195, file: !374, line: 87, type: !445)
!4198 = !DILocation(line: 87, column: 62, scope: !4195)
!4199 = !DILocation(line: 89, column: 9, scope: !4195)
!4200 = !DILocation(line: 89, column: 15, scope: !4195)
!4201 = !DILocation(line: 89, column: 2, scope: !4195)
!4202 = !DISubprogram(name: "acpi_remove_notify_handler", scope: !4070, file: !4070, line: 640, type: !4203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!3897, !332, !326, !4073}
!4205 = !DISubprogram(name: "acpi_cppc_processor_exit", scope: !2274, file: !2274, line: 362, type: !4048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4206 = !DISubprogram(name: "cpufreq_register_notifier", scope: !301, file: !301, line: 510, type: !2574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4207 = !DISubprogram(name: "acpi_processor_ignore_ppc_init", scope: !2274, file: !2274, line: 317, type: !1482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4208 = !DISubprogram(name: "driver_register", scope: !295, file: !295, line: 125, type: !4209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!13, !1104}
!4211 = distinct !DISubprogram(name: "cpuhp_setup_state_nocalls", scope: !12, file: !12, line: 323, type: !4212, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4217)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!13, !11, !377, !4214, !4214}
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!13, !7}
!4217 = !{!4218, !4219, !4220, !4221}
!4218 = !DILocalVariable(name: "state", arg: 1, scope: !4211, file: !12, line: 323, type: !11)
!4219 = !DILocalVariable(name: "name", arg: 2, scope: !4211, file: !12, line: 324, type: !377)
!4220 = !DILocalVariable(name: "startup", arg: 3, scope: !4211, file: !12, line: 325, type: !4214)
!4221 = !DILocalVariable(name: "teardown", arg: 4, scope: !4211, file: !12, line: 326, type: !4214)
!4222 = !DILocation(line: 323, column: 62, scope: !4211)
!4223 = !DILocation(line: 324, column: 22, scope: !4211)
!4224 = !DILocation(line: 325, column: 16, scope: !4211)
!4225 = !DILocation(line: 326, column: 16, scope: !4211)
!4226 = !DILocation(line: 328, column: 29, scope: !4211)
!4227 = !DILocation(line: 328, column: 36, scope: !4211)
!4228 = !DILocation(line: 328, column: 49, scope: !4211)
!4229 = !DILocation(line: 328, column: 58, scope: !4211)
!4230 = !DILocation(line: 328, column: 9, scope: !4211)
!4231 = !DILocation(line: 328, column: 2, scope: !4211)
!4232 = distinct !DISubprogram(name: "acpi_soft_cpu_online", scope: !3, file: !3, line: 96, type: !4215, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4233)
!4233 = !{!4234, !4235, !4236, !4239, !4241, !4242, !4245, !4247}
!4234 = !DILocalVariable(name: "cpu", arg: 1, scope: !4232, file: !3, line: 96, type: !7)
!4235 = !DILocalVariable(name: "pr", scope: !4232, file: !3, line: 98, type: !2272)
!4236 = !DILocalVariable(name: "__vpp_verify", scope: !4237, file: !3, line: 98, type: !366)
!4237 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 98, column: 30)
!4238 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 98, column: 30)
!4239 = !DILocalVariable(name: "__ptr", scope: !4240, file: !3, line: 98, type: !512)
!4240 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 98, column: 30)
!4241 = !DILocalVariable(name: "device", scope: !4232, file: !3, line: 99, type: !321)
!4242 = !DILocalVariable(name: "ret", scope: !4243, file: !3, line: 113, type: !13)
!4243 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 112, column: 35)
!4244 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 112, column: 6)
!4245 = !DILocalVariable(name: "__ret_warn_on", scope: !4246, file: !3, line: 119, type: !13)
!4246 = distinct !DILexicalBlock(scope: !4243, file: !3, line: 119, column: 3)
!4247 = !DILocalVariable(name: "__flags", scope: !4248, file: !3, line: 119, type: !13)
!4248 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 119, column: 3)
!4249 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 119, column: 3)
!4250 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 119, column: 3)
!4251 = !DILocation(line: 96, column: 46, scope: !4232)
!4252 = !DILocation(line: 98, column: 2, scope: !4232)
!4253 = !DILocation(line: 98, column: 25, scope: !4232)
!4254 = !DILocation(line: 98, column: 30, scope: !4238)
!4255 = !DILocation(line: 98, column: 30, scope: !4237)
!4256 = !DILocation(line: 98, column: 30, scope: !4240)
!4257 = !DILocation(line: 98, column: 30, scope: !4232)
!4258 = !DILocation(line: 99, column: 2, scope: !4232)
!4259 = !DILocation(line: 99, column: 22, scope: !4232)
!4260 = !DILocation(line: 101, column: 7, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 101, column: 6)
!4262 = !DILocation(line: 101, column: 6, scope: !4232)
!4263 = !DILocation(line: 102, column: 3, scope: !4261)
!4264 = !DILocation(line: 104, column: 31, scope: !4232)
!4265 = !DILocation(line: 104, column: 35, scope: !4232)
!4266 = !DILocation(line: 104, column: 11, scope: !4232)
!4267 = !DILocation(line: 104, column: 9, scope: !4232)
!4268 = !DILocation(line: 105, column: 7, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 105, column: 6)
!4270 = !DILocation(line: 105, column: 6, scope: !4232)
!4271 = !DILocation(line: 106, column: 3, scope: !4269)
!4272 = !DILocation(line: 112, column: 6, scope: !4244)
!4273 = !DILocation(line: 112, column: 10, scope: !4244)
!4274 = !DILocation(line: 112, column: 16, scope: !4244)
!4275 = !DILocation(line: 112, column: 6, scope: !4232)
!4276 = !DILocation(line: 113, column: 3, scope: !4243)
!4277 = !DILocation(line: 113, column: 7, scope: !4243)
!4278 = !DILocation(line: 115, column: 3, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4243, file: !3, line: 115, column: 3)
!4280 = !DILocation(line: 115, column: 3, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 115, column: 3)
!4282 = !DILocation(line: 117, column: 3, scope: !4243)
!4283 = !DILocation(line: 117, column: 7, scope: !4243)
!4284 = !DILocation(line: 117, column: 31, scope: !4243)
!4285 = !DILocation(line: 118, column: 32, scope: !4243)
!4286 = !DILocation(line: 118, column: 9, scope: !4243)
!4287 = !DILocation(line: 118, column: 7, scope: !4243)
!4288 = !DILocation(line: 119, column: 3, scope: !4246)
!4289 = !DILocation(line: 119, column: 3, scope: !4250)
!4290 = !DILocation(line: 119, column: 3, scope: !4249)
!4291 = !DILocation(line: 119, column: 3, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 119, column: 3)
!4293 = !DILocation(line: 119, column: 3, scope: !4248)
!4294 = !DILocation(line: 119, column: 3, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 119, column: 3)
!4296 = !DILocation(line: 119, column: 3, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 119, column: 3)
!4298 = !{i64 2153955198, i64 2153955227, i64 2153955273, i64 2153955331, i64 2153955385, i64 2153955439, i64 2153955494, i64 2153955525, i64 2153955833, i64 2153955839, i64 2153955886, i64 2153955909, i64 2153955935}
!4299 = !DILocation(line: 119, column: 3, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 119, column: 3)
!4301 = !DILocation(line: 119, column: 3, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 119, column: 3)
!4303 = !DILocation(line: 119, column: 3, scope: !4243)
!4304 = !DILocation(line: 120, column: 2, scope: !4244)
!4305 = !DILocation(line: 120, column: 2, scope: !4243)
!4306 = !DILocation(line: 122, column: 34, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 120, column: 9)
!4308 = !DILocation(line: 122, column: 3, scope: !4307)
!4309 = !DILocation(line: 123, column: 26, scope: !4307)
!4310 = !DILocation(line: 123, column: 3, scope: !4307)
!4311 = !DILocation(line: 124, column: 36, scope: !4307)
!4312 = !DILocation(line: 124, column: 3, scope: !4307)
!4313 = !DILocation(line: 125, column: 37, scope: !4307)
!4314 = !DILocation(line: 125, column: 3, scope: !4307)
!4315 = !DILocation(line: 127, column: 2, scope: !4232)
!4316 = !DILocation(line: 128, column: 1, scope: !4232)
!4317 = distinct !DISubprogram(name: "acpi_soft_cpu_dead", scope: !3, file: !3, line: 130, type: !4215, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4318)
!4318 = !{!4319, !4320, !4321, !4324}
!4319 = !DILocalVariable(name: "cpu", arg: 1, scope: !4317, file: !3, line: 130, type: !7)
!4320 = !DILocalVariable(name: "pr", scope: !4317, file: !3, line: 132, type: !2272)
!4321 = !DILocalVariable(name: "__vpp_verify", scope: !4322, file: !3, line: 132, type: !366)
!4322 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 132, column: 30)
!4323 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 132, column: 30)
!4324 = !DILocalVariable(name: "__ptr", scope: !4325, file: !3, line: 132, type: !512)
!4325 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 132, column: 30)
!4326 = !DILocation(line: 130, column: 44, scope: !4317)
!4327 = !DILocation(line: 132, column: 2, scope: !4317)
!4328 = !DILocation(line: 132, column: 25, scope: !4317)
!4329 = !DILocation(line: 132, column: 30, scope: !4323)
!4330 = !DILocation(line: 132, column: 30, scope: !4322)
!4331 = !DILocation(line: 132, column: 30, scope: !4325)
!4332 = !DILocation(line: 132, column: 30, scope: !4317)
!4333 = !DILocation(line: 134, column: 7, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 134, column: 6)
!4335 = !DILocation(line: 134, column: 10, scope: !4334)
!4336 = !DILocation(line: 134, column: 34, scope: !4334)
!4337 = !DILocation(line: 134, column: 38, scope: !4334)
!4338 = !DILocation(line: 134, column: 14, scope: !4334)
!4339 = !DILocation(line: 134, column: 6, scope: !4317)
!4340 = !DILocation(line: 135, column: 3, scope: !4334)
!4341 = !DILocation(line: 137, column: 35, scope: !4317)
!4342 = !DILocation(line: 137, column: 2, scope: !4317)
!4343 = !DILocation(line: 138, column: 2, scope: !4317)
!4344 = !DILocation(line: 139, column: 1, scope: !4317)
!4345 = !DISubprogram(name: "acpi_processor_throttling_init", scope: !2274, file: !2274, line: 390, type: !1482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4346 = !DISubprogram(name: "__cpuhp_setup_state", scope: !12, file: !12, line: 263, type: !4347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!13, !11, !377, !357, !4214, !4214, !357}
!4349 = !DISubprogram(name: "acpi_fetch_acpi_dev", scope: !323, file: !323, line: 813, type: !4350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!321, !332}
!4352 = !DISubprogram(name: "_printk", scope: !4353, file: !4353, line: 153, type: !4354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4353 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!13, !377, null}
!4356 = !DISubprogram(name: "__warn_printk", scope: !1289, file: !1289, line: 93, type: !4357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{null, !377, null}
!4359 = !DISubprogram(name: "acpi_processor_hotplug", scope: !2274, file: !2274, line: 420, type: !2408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4360 = !DISubprogram(name: "acpi_processor_reevaluate_tstate", scope: !2274, file: !2274, line: 387, type: !4361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{null, !2272, !357}
